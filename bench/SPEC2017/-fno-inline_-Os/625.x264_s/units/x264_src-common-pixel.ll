; ModuleID = 'x264_src/common/pixel.c'
source_filename = "x264_src/common/pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @x264_pixel_ssd_wxh(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %6, 15
  br i1 %8, label %9, label %77

9:                                                ; preds = %7
  %10 = zext i32 %2 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = or i64 %10, %11
  %13 = ptrtoint ptr %3 to i64
  %14 = or i64 %12, %13
  %15 = zext i32 %4 to i64
  %16 = or i64 %14, %15
  %17 = and i64 %16, 15
  %18 = icmp ne i64 %17, 0
  %19 = add nsw i32 %6, -15
  %20 = add nsw i32 %5, -15
  %21 = icmp slt i32 %5, 16
  %22 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 1
  %23 = add nsw i32 %5, -7
  %24 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 1, i64 2
  %25 = sext i32 %2 to i64
  %26 = sext i32 %4 to i64
  %27 = zext nneg i32 %19 to i64
  %28 = or i1 %18, %21
  br label %29

29:                                               ; preds = %9, %71
  %30 = phi i64 [ 0, %9 ], [ %73, %71 ]
  %31 = phi i64 [ 0, %9 ], [ %72, %71 ]
  br i1 %28, label %49, label %32

32:                                               ; preds = %29
  %33 = mul nsw i64 %30, %25
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  %35 = mul nsw i64 %30, %26
  %36 = getelementptr inbounds i8, ptr %3, i64 %35
  br label %37

37:                                               ; preds = %32, %37
  %38 = phi i64 [ 0, %32 ], [ %46, %37 ]
  %39 = phi i64 [ %31, %32 ], [ %45, %37 ]
  %40 = load ptr, ptr %22, align 8, !tbaa !35
  %41 = getelementptr inbounds i8, ptr %34, i64 %38
  %42 = getelementptr inbounds i8, ptr %36, i64 %38
  %43 = tail call i32 %40(ptr noundef %41, i32 noundef %2, ptr noundef %42, i32 noundef %4) #10
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %39, %44
  %46 = add nuw i64 %38, 16
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 %20, %47
  br i1 %48, label %37, label %49, !llvm.loop !39

49:                                               ; preds = %37, %29
  %50 = phi i32 [ 0, %29 ], [ %47, %37 ]
  %51 = phi i64 [ %31, %29 ], [ %45, %37 ]
  %52 = icmp slt i32 %50, %23
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = mul nsw i64 %30, %25
  %55 = getelementptr inbounds i8, ptr %1, i64 %54
  %56 = mul nsw i64 %30, %26
  %57 = getelementptr inbounds i8, ptr %3, i64 %56
  %58 = zext i32 %50 to i64
  br label %59

59:                                               ; preds = %53, %59
  %60 = phi i64 [ %58, %53 ], [ %68, %59 ]
  %61 = phi i64 [ %51, %53 ], [ %67, %59 ]
  %62 = load ptr, ptr %24, align 8, !tbaa !35
  %63 = getelementptr inbounds i8, ptr %55, i64 %60
  %64 = getelementptr inbounds i8, ptr %57, i64 %60
  %65 = tail call i32 %62(ptr noundef %63, i32 noundef %2, ptr noundef %64, i32 noundef %4) #10
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %61, %66
  %68 = add nuw i64 %60, 8
  %69 = trunc i64 %68 to i32
  %70 = icmp sgt i32 %23, %69
  br i1 %70, label %59, label %71, !llvm.loop !41

71:                                               ; preds = %59, %49
  %72 = phi i64 [ %51, %49 ], [ %67, %59 ]
  %73 = add nuw nsw i64 %30, 16
  %74 = icmp ult i64 %73, %27
  br i1 %74, label %29, label %75, !llvm.loop !42

75:                                               ; preds = %71
  %76 = trunc i64 %73 to i32
  br label %77

77:                                               ; preds = %75, %7
  %78 = phi i32 [ 0, %7 ], [ %76, %75 ]
  %79 = phi i64 [ 0, %7 ], [ %72, %75 ]
  %80 = add nsw i32 %6, -7
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %77
  %83 = add nsw i32 %5, -7
  %84 = icmp sgt i32 %5, 7
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 1, i64 3
  %87 = mul nsw i32 %78, %2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %1, i64 %88
  %90 = mul nsw i32 %78, %4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %3, i64 %91
  br label %93

93:                                               ; preds = %85, %93
  %94 = phi i64 [ 0, %85 ], [ %102, %93 ]
  %95 = phi i64 [ %79, %85 ], [ %101, %93 ]
  %96 = load ptr, ptr %86, align 8, !tbaa !35
  %97 = getelementptr inbounds i8, ptr %89, i64 %94
  %98 = getelementptr inbounds i8, ptr %92, i64 %94
  %99 = tail call i32 %96(ptr noundef %97, i32 noundef %2, ptr noundef %98, i32 noundef %4) #10
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %95, %100
  %102 = add nuw i64 %94, 8
  %103 = trunc i64 %102 to i32
  %104 = icmp sgt i32 %83, %103
  br i1 %104, label %93, label %105, !llvm.loop !43

105:                                              ; preds = %93, %82, %77
  %106 = phi i64 [ %79, %77 ], [ %79, %82 ], [ %101, %93 ]
  %107 = and i32 %5, 7
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %147, label %109

109:                                              ; preds = %105
  %110 = and i32 %6, -8
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %109
  %113 = and i32 %5, -8
  %114 = icmp slt i32 %113, %5
  %115 = sext i32 %113 to i64
  %116 = sext i32 %2 to i64
  %117 = sext i32 %4 to i64
  %118 = zext nneg i32 %110 to i64
  %119 = sext i32 %5 to i64
  br label %120

120:                                              ; preds = %112, %128
  %121 = phi i64 [ 0, %112 ], [ %130, %128 ]
  %122 = phi i64 [ %106, %112 ], [ %129, %128 ]
  br i1 %114, label %123, label %128

123:                                              ; preds = %120
  %124 = mul nsw i64 %121, %116
  %125 = mul nsw i64 %121, %117
  %126 = getelementptr i8, ptr %1, i64 %124
  %127 = getelementptr i8, ptr %3, i64 %125
  br label %132

128:                                              ; preds = %132, %120
  %129 = phi i64 [ %122, %120 ], [ %144, %132 ]
  %130 = add nuw nsw i64 %121, 1
  %131 = icmp eq i64 %130, %118
  br i1 %131, label %147, label %120, !llvm.loop !44

132:                                              ; preds = %123, %132
  %133 = phi i64 [ %115, %123 ], [ %145, %132 ]
  %134 = phi i64 [ %122, %123 ], [ %144, %132 ]
  %135 = getelementptr i8, ptr %126, i64 %133
  %136 = load i8, ptr %135, align 1, !tbaa !45
  %137 = zext i8 %136 to i32
  %138 = getelementptr i8, ptr %127, i64 %133
  %139 = load i8, ptr %138, align 1, !tbaa !45
  %140 = zext i8 %139 to i32
  %141 = sub nsw i32 %137, %140
  %142 = mul nsw i32 %141, %141
  %143 = zext nneg i32 %142 to i64
  %144 = add nsw i64 %134, %143
  %145 = add nsw i64 %133, 1
  %146 = icmp eq i64 %145, %119
  br i1 %146, label %128, label %132, !llvm.loop !46

147:                                              ; preds = %128, %109, %105
  %148 = phi i64 [ %106, %105 ], [ %106, %109 ], [ %129, %128 ]
  %149 = and i32 %6, 7
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %188, label %151

151:                                              ; preds = %147
  %152 = and i32 %6, -8
  %153 = icmp slt i32 %152, %6
  br i1 %153, label %154, label %188

154:                                              ; preds = %151
  %155 = icmp sgt i32 %5, 0
  %156 = sext i32 %152 to i64
  %157 = sext i32 %2 to i64
  %158 = sext i32 %4 to i64
  %159 = sext i32 %6 to i64
  %160 = zext nneg i32 %5 to i64
  br label %161

161:                                              ; preds = %154, %169
  %162 = phi i64 [ %156, %154 ], [ %171, %169 ]
  %163 = phi i64 [ %148, %154 ], [ %170, %169 ]
  br i1 %155, label %164, label %169

164:                                              ; preds = %161
  %165 = mul nsw i64 %162, %157
  %166 = mul nsw i64 %162, %158
  %167 = getelementptr i8, ptr %1, i64 %165
  %168 = getelementptr i8, ptr %3, i64 %166
  br label %173

169:                                              ; preds = %173, %161
  %170 = phi i64 [ %163, %161 ], [ %185, %173 ]
  %171 = add nsw i64 %162, 1
  %172 = icmp eq i64 %171, %159
  br i1 %172, label %188, label %161, !llvm.loop !47

173:                                              ; preds = %164, %173
  %174 = phi i64 [ 0, %164 ], [ %186, %173 ]
  %175 = phi i64 [ %163, %164 ], [ %185, %173 ]
  %176 = getelementptr i8, ptr %167, i64 %174
  %177 = load i8, ptr %176, align 1, !tbaa !45
  %178 = zext i8 %177 to i32
  %179 = getelementptr i8, ptr %168, i64 %174
  %180 = load i8, ptr %179, align 1, !tbaa !45
  %181 = zext i8 %180 to i32
  %182 = sub nsw i32 %178, %181
  %183 = mul nsw i32 %182, %182
  %184 = zext nneg i32 %183 to i64
  %185 = add nsw i64 %175, %184
  %186 = add nuw nsw i64 %174, 1
  %187 = icmp eq i64 %186, %160
  br i1 %187, label %169, label %173, !llvm.loop !48

188:                                              ; preds = %169, %151, %147
  %189 = phi i64 [ %148, %147 ], [ %148, %151 ], [ %170, %169 ]
  ret i64 %189
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @x264_pixel_ssim_wxh(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = ashr i32 %5, 2
  %10 = ashr i32 %6, 2
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = sdiv i32 %5, 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i32], ptr %7, i64 %14
  %16 = getelementptr inbounds [4 x i32], ptr %15, i64 3
  %17 = icmp sgt i32 %9, 0
  %18 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 14
  %19 = add nsw i32 %9, -1
  %20 = icmp sgt i32 %9, 1
  %21 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 15
  %22 = sext i32 %9 to i64
  %23 = zext i32 %2 to i64
  %24 = zext i32 %4 to i64
  %25 = sext i32 %19 to i64
  %26 = zext nneg i32 %10 to i64
  br label %27

27:                                               ; preds = %12, %69
  %28 = phi i64 [ 1, %12 ], [ %71, %69 ]
  %29 = phi ptr [ %16, %12 ], [ %42, %69 ]
  %30 = phi ptr [ %7, %12 ], [ %41, %69 ]
  %31 = phi float [ 0.000000e+00, %12 ], [ %70, %69 ]
  %32 = phi i32 [ 0, %12 ], [ %40, %69 ]
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %39, label %43

35:                                               ; preds = %69, %8
  %36 = phi float [ 0.000000e+00, %8 ], [ %70, %69 ]
  ret float %36

37:                                               ; preds = %50
  %38 = trunc i64 %51 to i32
  br label %39

39:                                               ; preds = %37, %27
  %40 = phi i32 [ %32, %27 ], [ %38, %37 ]
  %41 = phi ptr [ %30, %27 ], [ %45, %37 ]
  %42 = phi ptr [ %29, %27 ], [ %46, %37 ]
  br i1 %20, label %73, label %69

43:                                               ; preds = %27, %50
  %44 = phi i64 [ %51, %50 ], [ %33, %27 ]
  %45 = phi ptr [ %46, %50 ], [ %29, %27 ]
  %46 = phi ptr [ %45, %50 ], [ %30, %27 ]
  br i1 %17, label %47, label %50

47:                                               ; preds = %43
  %48 = mul i64 %44, %23
  %49 = mul i64 %44, %24
  br label %53

50:                                               ; preds = %53, %43
  %51 = add nsw i64 %44, 1
  %52 = icmp slt i64 %44, %28
  br i1 %52, label %43, label %37, !llvm.loop !49

53:                                               ; preds = %47, %53
  %54 = phi i64 [ 0, %47 ], [ %67, %53 ]
  %55 = load ptr, ptr %18, align 8, !tbaa !50
  %56 = add i64 %54, %48
  %57 = trunc i64 %56 to i32
  %58 = shl nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %1, i64 %59
  %61 = add i64 %54, %49
  %62 = trunc i64 %61 to i32
  %63 = shl nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %3, i64 %64
  %66 = getelementptr inbounds [4 x i32], ptr %45, i64 %54
  tail call void %55(ptr noundef %60, i32 noundef %2, ptr noundef %65, i32 noundef %4, ptr noundef %66) #10
  %67 = add nuw nsw i64 %54, 2
  %68 = icmp slt i64 %67, %22
  br i1 %68, label %53, label %50, !llvm.loop !52

69:                                               ; preds = %73, %39
  %70 = phi float [ %31, %39 ], [ %84, %73 ]
  %71 = add nuw nsw i64 %28, 1
  %72 = icmp eq i64 %71, %26
  br i1 %72, label %35, label %27, !llvm.loop !53

73:                                               ; preds = %39, %73
  %74 = phi i64 [ %85, %73 ], [ 0, %39 ]
  %75 = phi float [ %84, %73 ], [ %31, %39 ]
  %76 = load ptr, ptr %21, align 8, !tbaa !54
  %77 = getelementptr inbounds [4 x i32], ptr %41, i64 %74
  %78 = getelementptr inbounds [4 x i32], ptr %42, i64 %74
  %79 = trunc i64 %74 to i32
  %80 = xor i32 %79, -1
  %81 = add nsw i32 %9, %80
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 4)
  %83 = tail call float %76(ptr noundef %77, ptr noundef %78, i32 noundef %82) #10
  %84 = fadd float %75, %83
  %85 = add nuw nsw i64 %74, 4
  %86 = icmp slt i64 %85, %25
  br i1 %86, label %73, label %69, !llvm.loop !55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_pixel_init(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds i8, ptr %1, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %3, i8 0, i64 888, i1 false)
  store ptr @x264_pixel_sad_16x16, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 1
  store ptr @x264_pixel_sad_16x8, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 2
  store ptr @x264_pixel_sad_8x16, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 3
  store ptr @x264_pixel_sad_8x8, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 4
  store ptr @x264_pixel_sad_8x4, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 5
  store ptr @x264_pixel_sad_4x8, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 6
  store ptr @x264_pixel_sad_4x4, ptr %9, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10
  store ptr @x264_pixel_sad_16x16, ptr %10, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 1
  store ptr @x264_pixel_sad_16x8, ptr %11, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 2
  store ptr @x264_pixel_sad_8x16, ptr %12, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 3
  store ptr @x264_pixel_sad_8x8, ptr %13, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 4
  store ptr @x264_pixel_sad_8x4, ptr %14, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 5
  store ptr @x264_pixel_sad_4x8, ptr %15, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 6
  store ptr @x264_pixel_sad_4x4, ptr %16, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16
  store ptr @x264_pixel_sad_x3_16x16, ptr %17, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 1
  store ptr @x264_pixel_sad_x3_16x8, ptr %18, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 2
  store ptr @x264_pixel_sad_x3_8x16, ptr %19, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 3
  store ptr @x264_pixel_sad_x3_8x8, ptr %20, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 4
  store ptr @x264_pixel_sad_x3_8x4, ptr %21, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 5
  store ptr @x264_pixel_sad_x3_4x8, ptr %22, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 6
  store ptr @x264_pixel_sad_x3_4x4, ptr %23, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17
  store ptr @x264_pixel_sad_x4_16x16, ptr %24, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 1
  store ptr @x264_pixel_sad_x4_16x8, ptr %25, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 2
  store ptr @x264_pixel_sad_x4_8x16, ptr %26, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 3
  store ptr @x264_pixel_sad_x4_8x8, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 4
  store ptr @x264_pixel_sad_x4_8x4, ptr %28, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 5
  store ptr @x264_pixel_sad_x4_4x8, ptr %29, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 6
  store ptr @x264_pixel_sad_x4_4x4, ptr %30, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1
  store ptr @x264_pixel_ssd_16x16, ptr %31, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 1
  store ptr @x264_pixel_ssd_16x8, ptr %32, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 2
  store ptr @x264_pixel_ssd_8x16, ptr %33, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 3
  store ptr @x264_pixel_ssd_8x8, ptr %34, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 4
  store ptr @x264_pixel_ssd_8x4, ptr %35, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 5
  store ptr @x264_pixel_ssd_4x8, ptr %36, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 6
  store ptr @x264_pixel_ssd_4x4, ptr %37, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2
  store ptr @x264_pixel_satd_16x16, ptr %38, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 1
  store ptr @x264_pixel_satd_16x8, ptr %39, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 2
  store ptr @x264_pixel_satd_8x16, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 3
  store ptr @x264_pixel_satd_8x8, ptr %41, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 4
  store ptr @x264_pixel_satd_8x4, ptr %42, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 5
  store ptr @x264_pixel_satd_4x8, ptr %43, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 6
  store ptr @x264_pixel_satd_4x4, ptr %44, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18
  store ptr @x264_pixel_satd_x3_16x16, ptr %45, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 1
  store ptr @x264_pixel_satd_x3_16x8, ptr %46, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 2
  store ptr @x264_pixel_satd_x3_8x16, ptr %47, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 3
  store ptr @x264_pixel_satd_x3_8x8, ptr %48, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 4
  store ptr @x264_pixel_satd_x3_8x4, ptr %49, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 5
  store ptr @x264_pixel_satd_x3_4x8, ptr %50, align 8, !tbaa !35
  %51 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 6
  store ptr @x264_pixel_satd_x3_4x4, ptr %51, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19
  store ptr @x264_pixel_satd_x4_16x16, ptr %52, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 1
  store ptr @x264_pixel_satd_x4_16x8, ptr %53, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 2
  store ptr @x264_pixel_satd_x4_8x16, ptr %54, align 8, !tbaa !35
  %55 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 3
  store ptr @x264_pixel_satd_x4_8x8, ptr %55, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 4
  store ptr @x264_pixel_satd_x4_8x4, ptr %56, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 5
  store ptr @x264_pixel_satd_x4_4x8, ptr %57, align 8, !tbaa !35
  %58 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 6
  store ptr @x264_pixel_satd_x4_4x4, ptr %58, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13
  store ptr @x264_pixel_hadamard_ac_16x16, ptr %59, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13, i64 1
  store ptr @x264_pixel_hadamard_ac_16x8, ptr %60, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13, i64 2
  store ptr @x264_pixel_hadamard_ac_8x16, ptr %61, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13, i64 3
  store ptr @x264_pixel_hadamard_ac_8x8, ptr %62, align 8, !tbaa !35
  %63 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20
  store ptr @x264_pixel_ads4, ptr %63, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 1
  store ptr @x264_pixel_ads2, ptr %64, align 8, !tbaa !35
  %65 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 3
  store ptr @x264_pixel_ads1, ptr %65, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 4
  store ptr @x264_pixel_sa8d_16x16, ptr %66, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 4, i64 3
  store ptr @x264_pixel_sa8d_8x8, ptr %67, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 12
  store ptr @x264_pixel_var_16x16, ptr %68, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 12, i64 3
  store ptr @x264_pixel_var_8x8, ptr %69, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 14
  store ptr @ssim_4x4x2_core, ptr %70, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 15
  store ptr @ssim_end4, ptr %71, align 8, !tbaa !54
  %72 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 11
  store ptr @pixel_var2_8x8, ptr %72, align 8, !tbaa !56
  %73 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 5
  store ptr @x264_pixel_ads2, ptr %73, align 8, !tbaa !35
  %74 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 4
  store ptr @x264_pixel_ads2, ptr %74, align 8, !tbaa !35
  %75 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 2
  store ptr @x264_pixel_ads2, ptr %75, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 6
  store ptr @x264_pixel_ads1, ptr %76, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !57 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %10 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %9, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %10, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %22, i1 true)
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 16
  br i1 %26, label %27, label %13, !llvm.loop !58

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %10, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %8, 1
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %7, !llvm.loop !61

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_16x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !62 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %10 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %9, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %10, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %22, i1 true)
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 16
  br i1 %26, label %27, label %13, !llvm.loop !63

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %10, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %8, 1
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %7, !llvm.loop !64

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !65 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %10 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %9, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %10, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %22, i1 true)
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %13, !llvm.loop !66

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %10, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %8, 1
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %7, !llvm.loop !67

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !68 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %10 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %9, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %10, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %22, i1 true)
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %13, !llvm.loop !69

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %10, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %8, 1
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %7, !llvm.loop !70

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !71 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %10 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %9, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %10, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %22, i1 true)
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %13, !llvm.loop !72

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %10, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %8, 1
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %7, !llvm.loop !73

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_4x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !74 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ 0, %4 ], [ %23, %7 ]
  %9 = phi i32 [ 0, %4 ], [ %20, %7 ]
  %10 = phi ptr [ %0, %4 ], [ %21, %7 ]
  %11 = phi ptr [ %2, %4 ], [ %22, %7 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %9, i64 0
  %13 = load <4 x i8>, ptr %10, align 1, !tbaa !45
  %14 = zext <4 x i8> %13 to <4 x i32>
  %15 = load <4 x i8>, ptr %11, align 1, !tbaa !45
  %16 = zext <4 x i8> %15 to <4 x i32>
  %17 = sub nsw <4 x i32> %14, %16
  %18 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %17, i1 true)
  %19 = add <4 x i32> %18, %12
  %20 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %21 = getelementptr inbounds i8, ptr %10, i64 %5
  %22 = getelementptr inbounds i8, ptr %11, i64 %6
  %23 = add nuw nsw i32 %8, 1
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %7, !llvm.loop !75

25:                                               ; preds = %7
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !76 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ 0, %4 ], [ %23, %7 ]
  %9 = phi i32 [ 0, %4 ], [ %20, %7 ]
  %10 = phi ptr [ %0, %4 ], [ %21, %7 ]
  %11 = phi ptr [ %2, %4 ], [ %22, %7 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %9, i64 0
  %13 = load <4 x i8>, ptr %10, align 1, !tbaa !45
  %14 = zext <4 x i8> %13 to <4 x i32>
  %15 = load <4 x i8>, ptr %11, align 1, !tbaa !45
  %16 = zext <4 x i8> %15 to <4 x i32>
  %17 = sub nsw <4 x i32> %14, %16
  %18 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %17, i1 true)
  %19 = add <4 x i32> %18, %12
  %20 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %21 = getelementptr inbounds i8, ptr %10, i64 %5
  %22 = getelementptr inbounds i8, ptr %11, i64 %6
  %23 = add nuw nsw i32 %8, 1
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %7, !llvm.loop !77

25:                                               ; preds = %7
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !78 {
  %7 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !81 {
  %7 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !82 {
  %7 = tail call i32 @x264_pixel_sad_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_sad_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_sad_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !83 {
  %7 = tail call i32 @x264_pixel_sad_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_sad_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_sad_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !84 {
  %7 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !85 {
  %7 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !86 {
  %7 = tail call i32 @x264_pixel_sad_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_sad_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_sad_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !87 {
  %8 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !88 {
  %8 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !89 {
  %8 = tail call i32 @x264_pixel_sad_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_sad_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_sad_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_sad_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !90 {
  %8 = tail call i32 @x264_pixel_sad_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_sad_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_sad_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_sad_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !91 {
  %8 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !92 {
  %8 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !93 {
  %8 = tail call i32 @x264_pixel_sad_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_sad_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_sad_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_sad_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !94 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %10 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %10, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %8, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = mul nsw <4 x i32> %22, %22
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 16
  br i1 %26, label %27, label %13, !llvm.loop !95

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %8, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %9, 1
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %7, !llvm.loop !96

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_16x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !97 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %10 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %10, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %8, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = mul nsw <4 x i32> %22, %22
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 16
  br i1 %26, label %27, label %13, !llvm.loop !98

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %8, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %9, 1
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %7, !llvm.loop !99

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !100 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %10 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %10, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %8, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = mul nsw <4 x i32> %22, %22
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %13, !llvm.loop !101

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %8, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %9, 1
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %7, !llvm.loop !102

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !103 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %10 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %10, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %8, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = mul nsw <4 x i32> %22, %22
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %13, !llvm.loop !104

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %8, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %9, 1
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %7, !llvm.loop !105

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !106 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi ptr [ %0, %4 ], [ %29, %27 ]
  %9 = phi i32 [ 0, %4 ], [ %31, %27 ]
  %10 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %11 = phi ptr [ %2, %4 ], [ %30, %27 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %10, i64 0
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %25, %13 ]
  %15 = phi <4 x i32> [ %12, %7 ], [ %24, %13 ]
  %16 = getelementptr inbounds i8, ptr %8, i64 %14
  %17 = load <4 x i8>, ptr %16, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %18, %21
  %23 = mul nsw <4 x i32> %22, %22
  %24 = add <4 x i32> %23, %15
  %25 = add nuw i64 %14, 4
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %13, !llvm.loop !107

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %29 = getelementptr inbounds i8, ptr %8, i64 %5
  %30 = getelementptr inbounds i8, ptr %11, i64 %6
  %31 = add nuw nsw i32 %9, 1
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %7, !llvm.loop !108

33:                                               ; preds = %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_4x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !109 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %0, %4 ], [ %21, %7 ]
  %9 = phi i32 [ 0, %4 ], [ %23, %7 ]
  %10 = phi i32 [ 0, %4 ], [ %20, %7 ]
  %11 = phi ptr [ %2, %4 ], [ %22, %7 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %10, i64 0
  %13 = load <4 x i8>, ptr %8, align 1, !tbaa !45
  %14 = zext <4 x i8> %13 to <4 x i32>
  %15 = load <4 x i8>, ptr %11, align 1, !tbaa !45
  %16 = zext <4 x i8> %15 to <4 x i32>
  %17 = sub nsw <4 x i32> %14, %16
  %18 = mul nsw <4 x i32> %17, %17
  %19 = add <4 x i32> %18, %12
  %20 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %21 = getelementptr inbounds i8, ptr %8, i64 %5
  %22 = getelementptr inbounds i8, ptr %11, i64 %6
  %23 = add nuw nsw i32 %9, 1
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %7, !llvm.loop !110

25:                                               ; preds = %7
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !111 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %0, %4 ], [ %21, %7 ]
  %9 = phi i32 [ 0, %4 ], [ %23, %7 ]
  %10 = phi i32 [ 0, %4 ], [ %20, %7 ]
  %11 = phi ptr [ %2, %4 ], [ %22, %7 ]
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %10, i64 0
  %13 = load <4 x i8>, ptr %8, align 1, !tbaa !45
  %14 = zext <4 x i8> %13 to <4 x i32>
  %15 = load <4 x i8>, ptr %11, align 1, !tbaa !45
  %16 = zext <4 x i8> %15 to <4 x i32>
  %17 = sub nsw <4 x i32> %14, %16
  %18 = mul nsw <4 x i32> %17, %17
  %19 = add <4 x i32> %18, %12
  %20 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %21 = getelementptr inbounds i8, ptr %8, i64 %5
  %22 = getelementptr inbounds i8, ptr %11, i64 %6
  %23 = add nuw nsw i32 %9, 1
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %7, !llvm.loop !112

25:                                               ; preds = %7
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !113 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #11, !range !114
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3) #11, !range !114
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef %1, ptr noundef nonnull %14, i32 noundef %3) #11, !range !114
  %16 = getelementptr inbounds i8, ptr %13, i64 %7
  %17 = getelementptr inbounds i8, ptr %14, i64 %10
  %18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %17, i32 noundef %3) #11, !range !114
  %19 = shl nsw i32 %1, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = shl nsw i32 %3, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %2, i64 %23
  %25 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %21, i32 noundef %1, ptr noundef %24, i32 noundef %3) #11, !range !114
  %26 = mul nsw i32 %1, 12
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = mul nsw i32 %3, 12
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  %32 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %28, i32 noundef %1, ptr noundef %31, i32 noundef %3) #11, !range !114
  %33 = getelementptr inbounds i8, ptr %13, i64 %20
  %34 = getelementptr inbounds i8, ptr %14, i64 %23
  %35 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %33, i32 noundef %1, ptr noundef nonnull %34, i32 noundef %3) #11, !range !114
  %36 = getelementptr inbounds i8, ptr %13, i64 %27
  %37 = getelementptr inbounds i8, ptr %14, i64 %30
  %38 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %36, i32 noundef %1, ptr noundef nonnull %37, i32 noundef %3) #11, !range !114
  %39 = add nuw nsw i32 %12, %5
  %40 = add nuw nsw i32 %39, %15
  %41 = add nuw nsw i32 %40, %18
  %42 = add nuw nsw i32 %41, %25
  %43 = add nuw nsw i32 %42, %32
  %44 = add nuw nsw i32 %43, %35
  %45 = add nuw nsw i32 %44, %38
  ret i32 %45
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_16x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !115 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #11, !range !114
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3) #11, !range !114
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef %1, ptr noundef nonnull %14, i32 noundef %3) #11, !range !114
  %16 = getelementptr inbounds i8, ptr %13, i64 %7
  %17 = getelementptr inbounds i8, ptr %14, i64 %10
  %18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %17, i32 noundef %3) #11, !range !114
  %19 = add nuw nsw i32 %12, %5
  %20 = add nuw nsw i32 %19, %15
  %21 = add nuw nsw i32 %20, %18
  ret i32 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_8x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !116 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #11, !range !114
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3) #11, !range !114
  %13 = shl nsw i32 %1, 3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = shl nsw i32 %3, 3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  %19 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %15, i32 noundef %1, ptr noundef %18, i32 noundef %3) #11, !range !114
  %20 = mul nsw i32 %1, 12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = mul nsw i32 %3, 12
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %2, i64 %24
  %26 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %22, i32 noundef %1, ptr noundef %25, i32 noundef %3) #11, !range !114
  %27 = add nuw nsw i32 %12, %5
  %28 = add nuw nsw i32 %27, %19
  %29 = add nuw nsw i32 %28, %26
  ret i32 %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !117 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #11, !range !114
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3) #11, !range !114
  %13 = add nuw nsw i32 %12, %5
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_8x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !118 {
  %5 = alloca [4 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %35, %8 ]
  %10 = phi ptr [ %0, %4 ], [ %36, %8 ]
  %11 = phi ptr [ %2, %4 ], [ %37, %8 ]
  %12 = getelementptr inbounds i8, ptr %10, i64 4
  %13 = getelementptr inbounds i8, ptr %11, i64 4
  %14 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %9
  %15 = load <4 x i8>, ptr %10, align 1, !tbaa !45
  %16 = zext <4 x i8> %15 to <4 x i32>
  %17 = load <4 x i8>, ptr %11, align 1, !tbaa !45
  %18 = zext <4 x i8> %17 to <4 x i32>
  %19 = sub nsw <4 x i32> %16, %18
  %20 = load <4 x i8>, ptr %12, align 1, !tbaa !45
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = load <4 x i8>, ptr %13, align 1, !tbaa !45
  %23 = zext <4 x i8> %22 to <4 x i32>
  %24 = sub nsw <4 x i32> %21, %23
  %25 = shl nsw <4 x i32> %24, <i32 16, i32 16, i32 16, i32 16>
  %26 = add nsw <4 x i32> %25, %19
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %28 = add nsw <4 x i32> %26, %27
  %29 = sub nsw <4 x i32> %26, %27
  %30 = shufflevector <4 x i32> %28, <4 x i32> %29, <4 x i32> <i32 3, i32 6, i32 1, i32 4>
  %31 = shufflevector <4 x i32> %30, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %32 = add nsw <4 x i32> %30, %31
  %33 = sub nsw <4 x i32> %30, %31
  %34 = shufflevector <4 x i32> %32, <4 x i32> %33, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %34, ptr %14, align 16, !tbaa !79
  %35 = add nuw nsw i64 %9, 1
  %36 = getelementptr inbounds i8, ptr %10, i64 %6
  %37 = getelementptr inbounds i8, ptr %11, i64 %7
  %38 = icmp eq i64 %35, 4
  br i1 %38, label %44, label %8, !llvm.loop !119

39:                                               ; preds = %44
  %40 = and i32 %70, 65535
  %41 = lshr i32 %70, 16
  %42 = add nuw nsw i32 %40, %41
  %43 = lshr i32 %42, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret i32 %43

44:                                               ; preds = %8, %44
  %45 = phi i64 [ %71, %44 ], [ 0, %8 ]
  %46 = phi i32 [ %70, %44 ], [ 0, %8 ]
  %47 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %45
  %48 = load i32, ptr %47, align 4, !tbaa !79
  %49 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %45
  %50 = load i32, ptr %49, align 4, !tbaa !79
  %51 = add i32 %50, %48
  %52 = sub i32 %48, %50
  %53 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 2, i64 %45
  %54 = load i32, ptr %53, align 4, !tbaa !79
  %55 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 3, i64 %45
  %56 = load i32, ptr %55, align 4, !tbaa !79
  %57 = add i32 %56, %54
  %58 = sub i32 %54, %56
  %59 = add nsw i32 %57, %51
  %60 = sub nsw i32 %51, %57
  %61 = add nsw i32 %58, %52
  %62 = sub nsw i32 %52, %58
  %63 = tail call fastcc i32 @abs2(i32 noundef %59) #11
  %64 = tail call fastcc i32 @abs2(i32 noundef %61) #11
  %65 = tail call fastcc i32 @abs2(i32 noundef %60) #11
  %66 = tail call fastcc i32 @abs2(i32 noundef %62) #11
  %67 = add i32 %63, %46
  %68 = add i32 %67, %64
  %69 = add i32 %68, %65
  %70 = add i32 %69, %66
  %71 = add nuw nsw i64 %45, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %39, label %44, !llvm.loop !120
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_4x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !121 {
  %5 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #11, !range !122
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3) #11, !range !122
  %13 = add nsw i32 %12, %5
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !123 {
  %5 = alloca [4 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %50, %8 ]
  %10 = phi ptr [ %0, %4 ], [ %51, %8 ]
  %11 = phi ptr [ %2, %4 ], [ %52, %8 ]
  %12 = load i8, ptr %10, align 1, !tbaa !45
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr %11, align 1, !tbaa !45
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %13, %15
  %17 = getelementptr inbounds i8, ptr %10, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %11, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !45
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %19, %22
  %24 = add nsw i32 %23, %16
  %25 = sub nsw i32 %16, %23
  %26 = shl nsw i32 %25, 16
  %27 = add nsw i32 %24, %26
  %28 = getelementptr inbounds i8, ptr %10, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !45
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds i8, ptr %11, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !45
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = getelementptr inbounds i8, ptr %10, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !45
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %11, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !45
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %37, %40
  %42 = add nsw i32 %41, %34
  %43 = sub nsw i32 %34, %41
  %44 = shl nsw i32 %43, 16
  %45 = add nsw i32 %42, %44
  %46 = add nsw i32 %45, %27
  %47 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 %9
  store i32 %46, ptr %47, align 8, !tbaa !79
  %48 = sub nsw i32 %27, %45
  %49 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 %9, i64 1
  store i32 %48, ptr %49, align 4, !tbaa !79
  %50 = add nuw nsw i64 %9, 1
  %51 = getelementptr inbounds i8, ptr %10, i64 %6
  %52 = getelementptr inbounds i8, ptr %11, i64 %7
  %53 = icmp eq i64 %50, 4
  br i1 %53, label %56, label %8, !llvm.loop !124

54:                                               ; preds = %56
  %55 = ashr i32 %86, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  ret i32 %55

56:                                               ; preds = %8, %56
  %57 = phi i1 [ false, %56 ], [ true, %8 ]
  %58 = phi i64 [ 1, %56 ], [ 0, %8 ]
  %59 = phi i32 [ %86, %56 ], [ 0, %8 ]
  %60 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %58
  %61 = load i32, ptr %60, align 4, !tbaa !79
  %62 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 1, i64 %58
  %63 = load i32, ptr %62, align 4, !tbaa !79
  %64 = add i32 %63, %61
  %65 = sub i32 %61, %63
  %66 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 2, i64 %58
  %67 = load i32, ptr %66, align 4, !tbaa !79
  %68 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 3, i64 %58
  %69 = load i32, ptr %68, align 4, !tbaa !79
  %70 = add i32 %69, %67
  %71 = sub i32 %67, %69
  %72 = add nsw i32 %70, %64
  %73 = sub nsw i32 %64, %70
  %74 = add nsw i32 %71, %65
  %75 = sub nsw i32 %65, %71
  %76 = tail call fastcc i32 @abs2(i32 noundef %72) #11
  %77 = tail call fastcc i32 @abs2(i32 noundef %74) #11
  %78 = add i32 %77, %76
  %79 = tail call fastcc i32 @abs2(i32 noundef %73) #11
  %80 = add i32 %78, %79
  %81 = tail call fastcc i32 @abs2(i32 noundef %75) #11
  %82 = add i32 %80, %81
  %83 = and i32 %82, 65535
  %84 = lshr i32 %82, 16
  %85 = add i32 %84, %59
  %86 = add i32 %85, %83
  br i1 %57, label %56, label %54, !llvm.loop !125
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !126 {
  %7 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11, !range !127
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11, !range !127
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11, !range !127
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !128 {
  %7 = tail call i32 @x264_pixel_satd_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11, !range !129
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_satd_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11, !range !129
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_satd_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11, !range !129
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !130 {
  %7 = tail call i32 @x264_pixel_satd_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11, !range !129
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_satd_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11, !range !129
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_satd_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11, !range !129
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !131 {
  %7 = tail call i32 @x264_pixel_satd_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11, !range !132
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_satd_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11, !range !132
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_satd_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11, !range !132
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !133 {
  %7 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11, !range !114
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11, !range !114
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11, !range !114
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !134 {
  %7 = tail call i32 @x264_pixel_satd_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11, !range !135
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_satd_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11, !range !135
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_satd_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11, !range !135
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 !PGOFuncName !136 {
  %7 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4) #11, !range !122
  store i32 %7, ptr %5, align 4, !tbaa !79
  %8 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4) #11, !range !122
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !79
  %10 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11, !range !122
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !137 {
  %8 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11, !range !127
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11, !range !127
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11, !range !127
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11, !range !127
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !138 {
  %8 = tail call i32 @x264_pixel_satd_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11, !range !129
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_satd_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11, !range !129
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_satd_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11, !range !129
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_satd_16x8(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11, !range !129
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !139 {
  %8 = tail call i32 @x264_pixel_satd_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11, !range !129
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_satd_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11, !range !129
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_satd_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11, !range !129
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_satd_8x16(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11, !range !129
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !140 {
  %8 = tail call i32 @x264_pixel_satd_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11, !range !132
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_satd_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11, !range !132
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_satd_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11, !range !132
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_satd_8x8(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11, !range !132
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !141 {
  %8 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11, !range !114
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11, !range !114
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11, !range !114
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11, !range !114
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !142 {
  %8 = tail call i32 @x264_pixel_satd_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11, !range !135
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_satd_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11, !range !135
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_satd_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11, !range !135
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_satd_4x8(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11, !range !135
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 !PGOFuncName !143 {
  %8 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5) #11, !range !122
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5) #11, !range !122
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5) #11, !range !122
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !79
  %13 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5) #11, !range !122
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !79
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !144 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1) #11, !range !145
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %4, i32 noundef %1) #11, !range !145
  %6 = add i64 %5, %3
  %7 = shl nsw i32 %1, 3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %9, i32 noundef %1) #11, !range !145
  %11 = add i64 %6, %10
  %12 = getelementptr inbounds i8, ptr %9, i64 8
  %13 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %12, i32 noundef %1) #11, !range !145
  %14 = add i64 %11, %13
  %15 = lshr i64 %14, 2
  %16 = and i64 %15, 4611686014132420608
  %17 = lshr i64 %14, 1
  %18 = and i64 %17, 2147483647
  %19 = or disjoint i64 %16, %18
  ret i64 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_16x8(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !146 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1) #11, !range !145
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %4, i32 noundef %1) #11, !range !145
  %6 = add i64 %5, %3
  %7 = lshr i64 %6, 2
  %8 = and i64 %7, 4611686014132420608
  %9 = lshr i64 %6, 1
  %10 = and i64 %9, 2147483647
  %11 = or disjoint i64 %8, %10
  ret i64 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_8x16(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !147 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1) #11, !range !145
  %4 = shl nsw i32 %1, 3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %6, i32 noundef %1) #11, !range !145
  %8 = add i64 %7, %3
  %9 = lshr i64 %8, 2
  %10 = and i64 %9, 4611686014132420608
  %11 = lshr i64 %8, 1
  %12 = and i64 %11, 2147483647
  %13 = or disjoint i64 %10, %12
  ret i64 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_8x8(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !148 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1) #11, !range !145
  %4 = lshr i64 %3, 2
  %5 = and i64 %4, 4611686014132420608
  %6 = lshr i64 %3, 1
  %7 = and i64 %6, 2147483647
  %8 = or disjoint i64 %5, %7
  ret i64 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #5 !PGOFuncName !149 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = sext i32 %2 to i64
  %11 = load <4 x i32>, ptr %0, align 4, !tbaa !79
  %12 = add nsw i32 %2, 8
  %13 = sext i32 %12 to i64
  %14 = zext nneg i32 %5 to i64
  br label %17

15:                                               ; preds = %46, %7
  %16 = phi i32 [ 0, %7 ], [ %47, %46 ]
  ret i32 %16

17:                                               ; preds = %9, %46
  %18 = phi i64 [ 0, %9 ], [ %48, %46 ]
  %19 = phi ptr [ %1, %9 ], [ %49, %46 ]
  %20 = phi i32 [ 0, %9 ], [ %47, %46 ]
  %21 = load i16, ptr %19, align 2, !tbaa !150
  %22 = getelementptr inbounds i16, ptr %19, i64 8
  %23 = load i16, ptr %22, align 2, !tbaa !150
  %24 = getelementptr inbounds i16, ptr %19, i64 %10
  %25 = load i16, ptr %24, align 2, !tbaa !150
  %26 = getelementptr inbounds i16, ptr %19, i64 %13
  %27 = load i16, ptr %26, align 2, !tbaa !150
  %28 = insertelement <4 x i16> poison, i16 %21, i64 0
  %29 = insertelement <4 x i16> %28, i16 %23, i64 1
  %30 = insertelement <4 x i16> %29, i16 %25, i64 2
  %31 = insertelement <4 x i16> %30, i16 %27, i64 3
  %32 = zext <4 x i16> %31 to <4 x i32>
  %33 = sub nsw <4 x i32> %11, %32
  %34 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %33, i1 true)
  %35 = getelementptr inbounds i16, ptr %3, i64 %18
  %36 = load i16, ptr %35, align 2, !tbaa !150
  %37 = zext i16 %36 to i32
  %38 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %34)
  %39 = add i32 %38, %37
  %40 = icmp slt i32 %39, %6
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = trunc i64 %18 to i16
  %43 = add nsw i32 %20, 1
  %44 = sext i32 %20 to i64
  %45 = getelementptr inbounds i16, ptr %4, i64 %44
  store i16 %42, ptr %45, align 2, !tbaa !150
  br label %46

46:                                               ; preds = %41, %17
  %47 = phi i32 [ %43, %41 ], [ %20, %17 ]
  %48 = add nuw nsw i64 %18, 1
  %49 = getelementptr inbounds i16, ptr %19, i64 1
  %50 = icmp eq i64 %48, %14
  br i1 %50, label %15, label %17, !llvm.loop !152
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #5 !PGOFuncName !153 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 4, !tbaa !79
  %11 = getelementptr inbounds i32, ptr %0, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !79
  %13 = sext i32 %2 to i64
  %14 = zext nneg i32 %5 to i64
  br label %17

15:                                               ; preds = %41, %7
  %16 = phi i32 [ 0, %7 ], [ %42, %41 ]
  ret i32 %16

17:                                               ; preds = %9, %41
  %18 = phi i64 [ 0, %9 ], [ %43, %41 ]
  %19 = phi ptr [ %1, %9 ], [ %44, %41 ]
  %20 = phi i32 [ 0, %9 ], [ %42, %41 ]
  %21 = load i16, ptr %19, align 2, !tbaa !150
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %10, %22
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = getelementptr inbounds i16, ptr %19, i64 %13
  %26 = load i16, ptr %25, align 2, !tbaa !150
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %12, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = getelementptr inbounds i16, ptr %3, i64 %18
  %31 = load i16, ptr %30, align 2, !tbaa !150
  %32 = zext i16 %31 to i32
  %33 = add nuw i32 %24, %32
  %34 = add nuw i32 %33, %29
  %35 = icmp slt i32 %34, %6
  br i1 %35, label %36, label %41

36:                                               ; preds = %17
  %37 = trunc i64 %18 to i16
  %38 = add nsw i32 %20, 1
  %39 = sext i32 %20 to i64
  %40 = getelementptr inbounds i16, ptr %4, i64 %39
  store i16 %37, ptr %40, align 2, !tbaa !150
  br label %41

41:                                               ; preds = %36, %17
  %42 = phi i32 [ %38, %36 ], [ %20, %17 ]
  %43 = add nuw nsw i64 %18, 1
  %44 = getelementptr inbounds i16, ptr %19, i64 1
  %45 = icmp eq i64 %43, %14
  br i1 %45, label %15, label %17, !llvm.loop !154
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #5 !PGOFuncName !155 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 4, !tbaa !79
  %11 = zext nneg i32 %5 to i64
  br label %14

12:                                               ; preds = %32, %7
  %13 = phi i32 [ 0, %7 ], [ %33, %32 ]
  ret i32 %13

14:                                               ; preds = %9, %32
  %15 = phi i64 [ 0, %9 ], [ %34, %32 ]
  %16 = phi ptr [ %1, %9 ], [ %35, %32 ]
  %17 = phi i32 [ 0, %9 ], [ %33, %32 ]
  %18 = load i16, ptr %16, align 2, !tbaa !150
  %19 = zext i16 %18 to i32
  %20 = sub nsw i32 %10, %19
  %21 = tail call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = getelementptr inbounds i16, ptr %3, i64 %15
  %23 = load i16, ptr %22, align 2, !tbaa !150
  %24 = zext i16 %23 to i32
  %25 = add nuw nsw i32 %21, %24
  %26 = icmp slt i32 %25, %6
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = trunc i64 %15 to i16
  %29 = add nsw i32 %17, 1
  %30 = sext i32 %17 to i64
  %31 = getelementptr inbounds i16, ptr %4, i64 %30
  store i16 %28, ptr %31, align 2, !tbaa !150
  br label %32

32:                                               ; preds = %27, %14
  %33 = phi i32 [ %29, %27 ], [ %17, %14 ]
  %34 = add nuw nsw i64 %15, 1
  %35 = getelementptr inbounds i16, ptr %16, i64 1
  %36 = icmp eq i64 %34, %11
  br i1 %36, label %12, label %14, !llvm.loop !156
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sa8d_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !157 {
  %5 = tail call fastcc i32 @sa8d_8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #11
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = tail call fastcc i32 @sa8d_8x8(ptr noundef nonnull %6, i32 noundef %1, ptr noundef nonnull %7, i32 noundef %3) #11
  %9 = shl nsw i32 %1, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = shl nsw i32 %3, 3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  %15 = tail call fastcc i32 @sa8d_8x8(ptr noundef %11, i32 noundef %1, ptr noundef %14, i32 noundef %3) #11
  %16 = getelementptr inbounds i8, ptr %6, i64 %10
  %17 = getelementptr inbounds i8, ptr %7, i64 %13
  %18 = tail call fastcc i32 @sa8d_8x8(ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %17, i32 noundef %3) #11
  %19 = add i32 %5, 2
  %20 = add i32 %19, %8
  %21 = add i32 %20, %15
  %22 = add i32 %21, %18
  %23 = ashr i32 %22, 2
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sa8d_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 !PGOFuncName !158 {
  %5 = tail call fastcc i32 @sa8d_8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #11
  %6 = add nsw i32 %5, 2
  %7 = ashr i32 %6, 2
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_var_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !159 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %23, %2
  %5 = phi i32 [ 0, %2 ], [ %27, %23 ]
  %6 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %7 = phi i32 [ 0, %2 ], [ %25, %23 ]
  %8 = phi ptr [ %0, %2 ], [ %26, %23 ]
  %9 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %6, i64 0
  %10 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %7, i64 0
  br label %11

11:                                               ; preds = %11, %4
  %12 = phi i64 [ 0, %4 ], [ %21, %11 ]
  %13 = phi <4 x i32> [ %9, %4 ], [ %20, %11 ]
  %14 = phi <4 x i32> [ %10, %4 ], [ %18, %11 ]
  %15 = getelementptr inbounds i8, ptr %8, i64 %12
  %16 = load <4 x i8>, ptr %15, align 1, !tbaa !45
  %17 = zext <4 x i8> %16 to <4 x i32>
  %18 = add <4 x i32> %14, %17
  %19 = mul nuw nsw <4 x i32> %17, %17
  %20 = add <4 x i32> %19, %13
  %21 = add nuw i64 %12, 4
  %22 = icmp eq i64 %21, 16
  br i1 %22, label %23, label %11, !llvm.loop !160

23:                                               ; preds = %11
  %24 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %20)
  %25 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  %26 = getelementptr inbounds i8, ptr %8, i64 %3
  %27 = add nuw nsw i32 %5, 1
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %4, !llvm.loop !161

29:                                               ; preds = %23
  %30 = zext i32 %25 to i64
  %31 = zext i32 %24 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or disjoint i64 %32, %30
  ret i64 %33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_var_8x8(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !162 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %23, %2
  %5 = phi i32 [ 0, %2 ], [ %27, %23 ]
  %6 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %7 = phi i32 [ 0, %2 ], [ %25, %23 ]
  %8 = phi ptr [ %0, %2 ], [ %26, %23 ]
  %9 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %6, i64 0
  %10 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %7, i64 0
  br label %11

11:                                               ; preds = %11, %4
  %12 = phi i64 [ 0, %4 ], [ %21, %11 ]
  %13 = phi <4 x i32> [ %9, %4 ], [ %20, %11 ]
  %14 = phi <4 x i32> [ %10, %4 ], [ %18, %11 ]
  %15 = getelementptr inbounds i8, ptr %8, i64 %12
  %16 = load <4 x i8>, ptr %15, align 1, !tbaa !45
  %17 = zext <4 x i8> %16 to <4 x i32>
  %18 = add <4 x i32> %14, %17
  %19 = mul nuw nsw <4 x i32> %17, %17
  %20 = add <4 x i32> %19, %13
  %21 = add nuw i64 %12, 4
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %23, label %11, !llvm.loop !163

23:                                               ; preds = %11
  %24 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %20)
  %25 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  %26 = getelementptr inbounds i8, ptr %8, i64 %3
  %27 = add nuw nsw i32 %5, 1
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %4, !llvm.loop !164

29:                                               ; preds = %23
  %30 = zext i32 %25 to i64
  %31 = zext i32 %24 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or disjoint i64 %32, %30
  ret i64 %33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ssim_4x4x2_core(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #5 !PGOFuncName !165 {
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %46
  %9 = phi i1 [ true, %5 ], [ false, %46 ]
  %10 = phi i64 [ 0, %5 ], [ 1, %46 ]
  %11 = phi ptr [ %0, %5 ], [ %51, %46 ]
  %12 = phi ptr [ %2, %5 ], [ %52, %46 ]
  br label %14

13:                                               ; preds = %46
  ret void

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %44, %14 ]
  %16 = phi i32 [ 0, %8 ], [ %40, %14 ]
  %17 = phi i32 [ 0, %8 ], [ %41, %14 ]
  %18 = phi i32 [ 0, %8 ], [ %42, %14 ]
  %19 = phi i32 [ 0, %8 ], [ %43, %14 ]
  %20 = mul nsw i64 %15, %6
  %21 = mul nsw i64 %15, %7
  %22 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %16, i64 0
  %23 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %17, i64 0
  %24 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %18, i64 0
  %25 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %19, i64 0
  %26 = getelementptr inbounds i8, ptr %12, i64 %21
  %27 = load <4 x i8>, ptr %26, align 1, !tbaa !45
  %28 = zext <4 x i8> %27 to <4 x i32>
  %29 = getelementptr inbounds i8, ptr %11, i64 %20
  %30 = load <4 x i8>, ptr %29, align 1, !tbaa !45
  %31 = zext <4 x i8> %30 to <4 x i32>
  %32 = mul nuw nsw <4 x i32> %28, %31
  %33 = add <4 x i32> %32, %22
  %34 = mul nuw nsw <4 x i32> %31, %31
  %35 = add <4 x i32> %34, %23
  %36 = mul nuw nsw <4 x i32> %28, %28
  %37 = add <4 x i32> %35, %36
  %38 = add <4 x i32> %24, %28
  %39 = add <4 x i32> %25, %31
  %40 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %33)
  %41 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %37)
  %42 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %43 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %39)
  %44 = add nuw nsw i64 %15, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %14, !llvm.loop !166

46:                                               ; preds = %14
  %47 = getelementptr inbounds [4 x i32], ptr %4, i64 %10
  store i32 %43, ptr %47, align 4, !tbaa !79
  %48 = getelementptr inbounds [4 x i32], ptr %4, i64 %10, i64 1
  store i32 %42, ptr %48, align 4, !tbaa !79
  %49 = getelementptr inbounds [4 x i32], ptr %4, i64 %10, i64 2
  store i32 %41, ptr %49, align 4, !tbaa !79
  %50 = getelementptr inbounds [4 x i32], ptr %4, i64 %10, i64 3
  store i32 %40, ptr %50, align 4, !tbaa !79
  %51 = getelementptr inbounds i8, ptr %11, i64 4
  %52 = getelementptr inbounds i8, ptr %12, i64 4
  br i1 %9, label %8, label %13, !llvm.loop !167
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal float @ssim_end4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 !PGOFuncName !168 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = load i32, ptr %0, align 4, !tbaa !79
  %8 = load i32, ptr %1, align 4, !tbaa !79
  %9 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !79
  %11 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !79
  %13 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 2
  %14 = load i32, ptr %13, align 4, !tbaa !79
  %15 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 2
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 3
  %18 = load i32, ptr %17, align 4, !tbaa !79
  %19 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 3
  %20 = load i32, ptr %19, align 4, !tbaa !79
  br label %23

21:                                               ; preds = %23, %3
  %22 = phi float [ 0.000000e+00, %3 ], [ %64, %23 ]
  ret float %22

23:                                               ; preds = %5, %23
  %24 = phi i32 [ %20, %5 ], [ %61, %23 ]
  %25 = phi i32 [ %18, %5 ], [ %57, %23 ]
  %26 = phi i32 [ %16, %5 ], [ %54, %23 ]
  %27 = phi i32 [ %14, %5 ], [ %50, %23 ]
  %28 = phi i32 [ %12, %5 ], [ %47, %23 ]
  %29 = phi i32 [ %10, %5 ], [ %43, %23 ]
  %30 = phi i32 [ %8, %5 ], [ %40, %23 ]
  %31 = phi i32 [ %7, %5 ], [ %36, %23 ]
  %32 = phi i64 [ 0, %5 ], [ %34, %23 ]
  %33 = phi float [ 0.000000e+00, %5 ], [ %64, %23 ]
  %34 = add nuw nsw i64 %32, 1
  %35 = getelementptr inbounds [4 x i32], ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !79
  %37 = add nsw i32 %36, %31
  %38 = add nsw i32 %37, %30
  %39 = getelementptr inbounds [4 x i32], ptr %1, i64 %34
  %40 = load i32, ptr %39, align 4, !tbaa !79
  %41 = add nsw i32 %38, %40
  %42 = getelementptr inbounds [4 x i32], ptr %0, i64 %34, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !79
  %44 = add nsw i32 %43, %29
  %45 = add nsw i32 %44, %28
  %46 = getelementptr inbounds [4 x i32], ptr %1, i64 %34, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !79
  %48 = add nsw i32 %45, %47
  %49 = getelementptr inbounds [4 x i32], ptr %0, i64 %34, i64 2
  %50 = load i32, ptr %49, align 4, !tbaa !79
  %51 = add nsw i32 %50, %27
  %52 = add nsw i32 %51, %26
  %53 = getelementptr inbounds [4 x i32], ptr %1, i64 %34, i64 2
  %54 = load i32, ptr %53, align 4, !tbaa !79
  %55 = add nsw i32 %52, %54
  %56 = getelementptr inbounds [4 x i32], ptr %0, i64 %34, i64 3
  %57 = load i32, ptr %56, align 4, !tbaa !79
  %58 = add nsw i32 %57, %25
  %59 = add nsw i32 %58, %24
  %60 = getelementptr inbounds [4 x i32], ptr %1, i64 %34, i64 3
  %61 = load i32, ptr %60, align 4, !tbaa !79
  %62 = add nsw i32 %59, %61
  %63 = tail call fastcc float @ssim_end1(i32 noundef %41, i32 noundef %48, i32 noundef %55, i32 noundef %62) #11
  %64 = fadd float %33, %63
  %65 = icmp eq i64 %34, %6
  br i1 %65, label %21, label %23, !llvm.loop !169
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @pixel_var2_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #5 !PGOFuncName !170 {
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %32, %5
  %9 = phi ptr [ %0, %5 ], [ %35, %32 ]
  %10 = phi i32 [ 0, %5 ], [ %37, %32 ]
  %11 = phi i32 [ 0, %5 ], [ %33, %32 ]
  %12 = phi i32 [ 0, %5 ], [ %34, %32 ]
  %13 = phi ptr [ %2, %5 ], [ %36, %32 ]
  %14 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %11, i64 0
  %15 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %12, i64 0
  br label %16

16:                                               ; preds = %16, %8
  %17 = phi i64 [ 0, %8 ], [ %30, %16 ]
  %18 = phi <4 x i32> [ %14, %8 ], [ %29, %16 ]
  %19 = phi <4 x i32> [ %15, %8 ], [ %27, %16 ]
  %20 = getelementptr inbounds i8, ptr %9, i64 %17
  %21 = load <4 x i8>, ptr %20, align 1, !tbaa !45
  %22 = zext <4 x i8> %21 to <4 x i32>
  %23 = getelementptr inbounds i8, ptr %13, i64 %17
  %24 = load <4 x i8>, ptr %23, align 1, !tbaa !45
  %25 = zext <4 x i8> %24 to <4 x i32>
  %26 = sub nsw <4 x i32> %22, %25
  %27 = add <4 x i32> %26, %19
  %28 = mul nsw <4 x i32> %26, %26
  %29 = add <4 x i32> %28, %18
  %30 = add nuw i64 %17, 4
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %16, !llvm.loop !171

32:                                               ; preds = %16
  %33 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %29)
  %34 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %27)
  %35 = getelementptr inbounds i8, ptr %9, i64 %6
  %36 = getelementptr inbounds i8, ptr %13, i64 %7
  %37 = add nuw nsw i32 %10, 1
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %8, !llvm.loop !172

39:                                               ; preds = %32
  %40 = mul i32 %34, %34
  %41 = lshr i32 %40, 6
  %42 = sub i32 %33, %41
  store i32 %33, ptr %4, align 4, !tbaa !79
  ret i32 %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @abs2(i32 noundef %0) unnamed_addr #8 !PGOFuncName !173 {
  %2 = lshr i32 %0, 15
  %3 = and i32 %2, 65537
  %4 = mul nuw i32 %3, 65535
  %5 = add i32 %4, %0
  %6 = xor i32 %5, %4
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @pixel_hadamard_ac(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !174 {
  %3 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %4 = sext i32 %1 to i64
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %0, %2 ], [ %62, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %61, %5 ]
  %8 = and i32 %7, 3
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = shl nuw nsw i32 %7, 2
  %12 = and i32 %11, 16
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i8, ptr %6, align 1, !tbaa !45
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %6, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %19, %16
  %21 = sub nsw i32 %16, %19
  %22 = shl nsw i32 %21, 16
  %23 = or disjoint i32 %22, %20
  %24 = getelementptr inbounds i8, ptr %6, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %6, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !45
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, %26
  %31 = sub nsw i32 %26, %29
  %32 = shl nsw i32 %31, 16
  %33 = or disjoint i32 %32, %30
  %34 = add nsw i32 %33, %23
  store i32 %34, ptr %14, align 4, !tbaa !79
  %35 = sub nsw i32 %23, %33
  %36 = getelementptr inbounds i32, ptr %14, i64 4
  store i32 %35, ptr %36, align 4, !tbaa !79
  %37 = getelementptr inbounds i8, ptr %6, i64 4
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %6, i64 5
  %41 = load i8, ptr %40, align 1, !tbaa !45
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, %39
  %44 = sub nsw i32 %39, %42
  %45 = shl nsw i32 %44, 16
  %46 = or disjoint i32 %45, %43
  %47 = getelementptr inbounds i8, ptr %6, i64 6
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %6, i64 7
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %52, %49
  %54 = sub nsw i32 %49, %52
  %55 = shl nsw i32 %54, 16
  %56 = or disjoint i32 %55, %53
  %57 = add nsw i32 %56, %46
  %58 = getelementptr inbounds i32, ptr %14, i64 8
  store i32 %57, ptr %58, align 4, !tbaa !79
  %59 = sub nsw i32 %46, %56
  %60 = getelementptr inbounds i32, ptr %14, i64 12
  store i32 %59, ptr %60, align 4, !tbaa !79
  %61 = add nuw nsw i32 %7, 1
  %62 = getelementptr inbounds i8, ptr %6, i64 %4
  %63 = icmp eq i32 %61, 8
  br i1 %63, label %64, label %5, !llvm.loop !175

64:                                               ; preds = %5, %64
  %65 = phi i64 [ %95, %64 ], [ 0, %5 ]
  %66 = phi i32 [ %94, %64 ], [ 0, %5 ]
  %67 = shl nuw nsw i64 %65, 2
  %68 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %67
  %69 = load i32, ptr %68, align 16, !tbaa !79
  %70 = or disjoint i64 %67, 1
  %71 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !79
  %73 = add i32 %72, %69
  %74 = sub i32 %69, %72
  %75 = or disjoint i64 %67, 2
  %76 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %75
  %77 = load i32, ptr %76, align 8, !tbaa !79
  %78 = or disjoint i64 %67, 3
  %79 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !79
  %81 = add i32 %80, %77
  %82 = sub i32 %77, %80
  %83 = add nsw i32 %81, %73
  %84 = sub nsw i32 %73, %81
  %85 = add nsw i32 %82, %74
  %86 = sub nsw i32 %74, %82
  store i32 %83, ptr %68, align 16, !tbaa !79
  store i32 %85, ptr %71, align 4, !tbaa !79
  store i32 %84, ptr %76, align 8, !tbaa !79
  store i32 %86, ptr %79, align 4, !tbaa !79
  %87 = tail call fastcc i32 @abs2(i32 noundef %83) #11
  %88 = tail call fastcc i32 @abs2(i32 noundef %85) #11
  %89 = tail call fastcc i32 @abs2(i32 noundef %84) #11
  %90 = tail call fastcc i32 @abs2(i32 noundef %86) #11
  %91 = add i32 %87, %66
  %92 = add i32 %91, %88
  %93 = add i32 %92, %89
  %94 = add i32 %93, %90
  %95 = add nuw nsw i64 %65, 1
  %96 = icmp eq i64 %95, 8
  br i1 %96, label %121, label %64, !llvm.loop !176

97:                                               ; preds = %121
  %98 = load i32, ptr %3, align 16, !tbaa !79
  %99 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 8
  %100 = load i32, ptr %99, align 16, !tbaa !79
  %101 = add i32 %100, %98
  %102 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 16
  %103 = load i32, ptr %102, align 16, !tbaa !79
  %104 = add i32 %101, %103
  %105 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 24
  %106 = load i32, ptr %105, align 16, !tbaa !79
  %107 = add i32 %104, %106
  %108 = and i32 %107, 65535
  %109 = and i32 %94, 65535
  %110 = lshr i32 %94, 16
  %111 = add nuw nsw i32 %109, %110
  %112 = sub nsw i32 %111, %108
  %113 = and i32 %150, 65535
  %114 = lshr i32 %150, 16
  %115 = add nuw nsw i32 %113, %114
  %116 = sub nsw i32 %115, %108
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 32
  %119 = sext i32 %112 to i64
  %120 = add nsw i64 %118, %119
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  ret i64 %120

121:                                              ; preds = %64, %121
  %122 = phi i64 [ %151, %121 ], [ 0, %64 ]
  %123 = phi i32 [ %150, %121 ], [ 0, %64 ]
  %124 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %122
  %125 = load i32, ptr %124, align 4, !tbaa !79
  %126 = or disjoint i64 %122, 8
  %127 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !79
  %129 = add i32 %128, %125
  %130 = sub i32 %125, %128
  %131 = or disjoint i64 %122, 16
  %132 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !79
  %134 = or disjoint i64 %122, 24
  %135 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !79
  %137 = add i32 %136, %133
  %138 = sub i32 %133, %136
  %139 = add nsw i32 %137, %129
  %140 = sub nsw i32 %129, %137
  %141 = add nsw i32 %138, %130
  %142 = sub nsw i32 %130, %138
  %143 = tail call fastcc i32 @abs2(i32 noundef %139) #11
  %144 = tail call fastcc i32 @abs2(i32 noundef %141) #11
  %145 = tail call fastcc i32 @abs2(i32 noundef %140) #11
  %146 = tail call fastcc i32 @abs2(i32 noundef %142) #11
  %147 = add i32 %143, %123
  %148 = add i32 %147, %144
  %149 = add i32 %148, %145
  %150 = add i32 %149, %146
  %151 = add nuw nsw i64 %122, 1
  %152 = icmp eq i64 %151, 8
  br i1 %152, label %97, label %121, !llvm.loop !177
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sa8d_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !178 {
  %5 = alloca [8 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #12
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %94, %8 ]
  %10 = phi ptr [ %0, %4 ], [ %95, %8 ]
  %11 = phi ptr [ %2, %4 ], [ %96, %8 ]
  %12 = load i8, ptr %10, align 1, !tbaa !45
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr %11, align 1, !tbaa !45
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %13, %15
  %17 = getelementptr inbounds i8, ptr %10, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %11, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !45
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %19, %22
  %24 = add nsw i32 %23, %16
  %25 = sub nsw i32 %16, %23
  %26 = shl nsw i32 %25, 16
  %27 = add nsw i32 %24, %26
  %28 = getelementptr inbounds i8, ptr %10, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !45
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds i8, ptr %11, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !45
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = getelementptr inbounds i8, ptr %10, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !45
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %11, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !45
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %37, %40
  %42 = add nsw i32 %41, %34
  %43 = sub nsw i32 %34, %41
  %44 = shl nsw i32 %43, 16
  %45 = add nsw i32 %42, %44
  %46 = getelementptr inbounds i8, ptr %10, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !45
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %11, i64 4
  %50 = load i8, ptr %49, align 1, !tbaa !45
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %48, %51
  %53 = getelementptr inbounds i8, ptr %10, i64 5
  %54 = load i8, ptr %53, align 1, !tbaa !45
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds i8, ptr %11, i64 5
  %57 = load i8, ptr %56, align 1, !tbaa !45
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %55, %58
  %60 = add nsw i32 %59, %52
  %61 = sub nsw i32 %52, %59
  %62 = shl nsw i32 %61, 16
  %63 = add nsw i32 %60, %62
  %64 = getelementptr inbounds i8, ptr %10, i64 6
  %65 = load i8, ptr %64, align 1, !tbaa !45
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds i8, ptr %11, i64 6
  %68 = load i8, ptr %67, align 1, !tbaa !45
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %66, %69
  %71 = getelementptr inbounds i8, ptr %10, i64 7
  %72 = load i8, ptr %71, align 1, !tbaa !45
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds i8, ptr %11, i64 7
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 %73, %76
  %78 = add nsw i32 %77, %70
  %79 = sub nsw i32 %70, %77
  %80 = shl nsw i32 %79, 16
  %81 = add nsw i32 %78, %80
  %82 = add nsw i32 %45, %27
  %83 = sub nsw i32 %27, %45
  %84 = add nsw i32 %81, %63
  %85 = sub nsw i32 %63, %81
  %86 = add nsw i32 %84, %82
  %87 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %9
  store i32 %86, ptr %87, align 16, !tbaa !79
  %88 = sub nsw i32 %82, %84
  %89 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 2
  store i32 %88, ptr %89, align 8, !tbaa !79
  %90 = add nsw i32 %85, %83
  %91 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 1
  store i32 %90, ptr %91, align 4, !tbaa !79
  %92 = sub nsw i32 %83, %85
  %93 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 3
  store i32 %92, ptr %93, align 4, !tbaa !79
  %94 = add nuw nsw i64 %9, 1
  %95 = getelementptr inbounds i8, ptr %10, i64 %6
  %96 = getelementptr inbounds i8, ptr %11, i64 %7
  %97 = icmp eq i64 %94, 8
  br i1 %97, label %99, label %8, !llvm.loop !179

98:                                               ; preds = %99
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #12
  ret i32 %160

99:                                               ; preds = %8, %99
  %100 = phi i64 [ %161, %99 ], [ 0, %8 ]
  %101 = phi i32 [ %160, %99 ], [ 0, %8 ]
  %102 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %100
  %103 = load i32, ptr %102, align 4, !tbaa !79
  %104 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %100
  %105 = load i32, ptr %104, align 4, !tbaa !79
  %106 = add i32 %105, %103
  %107 = sub i32 %103, %105
  %108 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 2, i64 %100
  %109 = load i32, ptr %108, align 4, !tbaa !79
  %110 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 3, i64 %100
  %111 = load i32, ptr %110, align 4, !tbaa !79
  %112 = add i32 %111, %109
  %113 = sub i32 %109, %111
  %114 = add nsw i32 %112, %106
  %115 = sub nsw i32 %106, %112
  %116 = add nsw i32 %113, %107
  %117 = sub nsw i32 %107, %113
  %118 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 4, i64 %100
  %119 = load i32, ptr %118, align 4, !tbaa !79
  %120 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 5, i64 %100
  %121 = load i32, ptr %120, align 4, !tbaa !79
  %122 = add i32 %121, %119
  %123 = sub i32 %119, %121
  %124 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 6, i64 %100
  %125 = load i32, ptr %124, align 4, !tbaa !79
  %126 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 7, i64 %100
  %127 = load i32, ptr %126, align 4, !tbaa !79
  %128 = add i32 %127, %125
  %129 = sub i32 %125, %127
  %130 = add nsw i32 %128, %122
  %131 = sub nsw i32 %122, %128
  %132 = add nsw i32 %129, %123
  %133 = sub nsw i32 %123, %129
  %134 = add i32 %130, %114
  %135 = tail call fastcc i32 @abs2(i32 noundef %134) #11
  %136 = sub i32 %114, %130
  %137 = tail call fastcc i32 @abs2(i32 noundef %136) #11
  %138 = add i32 %132, %116
  %139 = tail call fastcc i32 @abs2(i32 noundef %138) #11
  %140 = sub i32 %116, %132
  %141 = tail call fastcc i32 @abs2(i32 noundef %140) #11
  %142 = add i32 %131, %115
  %143 = tail call fastcc i32 @abs2(i32 noundef %142) #11
  %144 = sub i32 %115, %131
  %145 = tail call fastcc i32 @abs2(i32 noundef %144) #11
  %146 = add i32 %133, %117
  %147 = tail call fastcc i32 @abs2(i32 noundef %146) #11
  %148 = sub i32 %117, %133
  %149 = tail call fastcc i32 @abs2(i32 noundef %148) #11
  %150 = add i32 %137, %135
  %151 = add i32 %150, %139
  %152 = add i32 %151, %141
  %153 = add i32 %152, %143
  %154 = add i32 %153, %145
  %155 = add i32 %154, %147
  %156 = add i32 %155, %149
  %157 = and i32 %156, 65535
  %158 = lshr i32 %156, 16
  %159 = add i32 %158, %101
  %160 = add i32 %159, %157
  %161 = add nuw nsw i64 %100, 1
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %98, label %99, !llvm.loop !180
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ssim_end1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !181 {
  %5 = shl nsw i32 %2, 6
  %6 = mul nsw i32 %0, %0
  %7 = mul nsw i32 %1, %1
  %8 = add nuw i32 %7, %6
  %9 = shl nsw i32 %0, 1
  %10 = mul nsw i32 %9, %1
  %11 = add nsw i32 %10, 416
  %12 = sitofp i32 %11 to float
  %13 = shl i32 %3, 7
  %14 = mul i32 %0, -2
  %15 = mul i32 %14, %1
  %16 = add i32 %15, 235963
  %17 = add i32 %16, %13
  %18 = sitofp i32 %17 to float
  %19 = fmul float %12, %18
  %20 = add nuw nsw i32 %8, 416
  %21 = sitofp i32 %20 to float
  %22 = sub i32 %5, %8
  %23 = add i32 %22, 235963
  %24 = sitofp i32 %23 to float
  %25 = fmul float %21, %24
  %26 = fdiv float %19, %25
  ret float %26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40}
!44 = distinct !{!44, !40}
!45 = !{!37, !37, i64 0}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = !{!51, !36, i64 664}
!51 = !{!"", !37, i64 0, !37, i64 56, !37, i64 112, !37, i64 168, !37, i64 224, !37, i64 256, !37, i64 312, !37, i64 368, !37, i64 424, !37, i64 480, !37, i64 536, !36, i64 592, !37, i64 600, !37, i64 632, !36, i64 664, !36, i64 672, !37, i64 680, !37, i64 736, !37, i64 792, !37, i64 848, !37, i64 904, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = !{!51, !36, i64 672}
!55 = distinct !{!55, !40}
!56 = !{!51, !36, i64 592}
!57 = !{!"pixel.c:x264_pixel_sad_16x16"}
!58 = distinct !{!58, !40, !59, !60}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = distinct !{!61, !40}
!62 = !{!"pixel.c:x264_pixel_sad_16x8"}
!63 = distinct !{!63, !40, !59, !60}
!64 = distinct !{!64, !40}
!65 = !{!"pixel.c:x264_pixel_sad_8x16"}
!66 = distinct !{!66, !40, !59, !60}
!67 = distinct !{!67, !40}
!68 = !{!"pixel.c:x264_pixel_sad_8x8"}
!69 = distinct !{!69, !40, !59, !60}
!70 = distinct !{!70, !40}
!71 = !{!"pixel.c:x264_pixel_sad_8x4"}
!72 = distinct !{!72, !40, !59, !60}
!73 = distinct !{!73, !40}
!74 = !{!"pixel.c:x264_pixel_sad_4x8"}
!75 = distinct !{!75, !40}
!76 = !{!"pixel.c:x264_pixel_sad_4x4"}
!77 = distinct !{!77, !40}
!78 = !{!"pixel.c:x264_pixel_sad_x3_16x16"}
!79 = !{!80, !80, i64 0}
!80 = !{!"int", !37, i64 0}
!81 = !{!"pixel.c:x264_pixel_sad_x3_16x8"}
!82 = !{!"pixel.c:x264_pixel_sad_x3_8x16"}
!83 = !{!"pixel.c:x264_pixel_sad_x3_8x8"}
!84 = !{!"pixel.c:x264_pixel_sad_x3_8x4"}
!85 = !{!"pixel.c:x264_pixel_sad_x3_4x8"}
!86 = !{!"pixel.c:x264_pixel_sad_x3_4x4"}
!87 = !{!"pixel.c:x264_pixel_sad_x4_16x16"}
!88 = !{!"pixel.c:x264_pixel_sad_x4_16x8"}
!89 = !{!"pixel.c:x264_pixel_sad_x4_8x16"}
!90 = !{!"pixel.c:x264_pixel_sad_x4_8x8"}
!91 = !{!"pixel.c:x264_pixel_sad_x4_8x4"}
!92 = !{!"pixel.c:x264_pixel_sad_x4_4x8"}
!93 = !{!"pixel.c:x264_pixel_sad_x4_4x4"}
!94 = !{!"pixel.c:x264_pixel_ssd_16x16"}
!95 = distinct !{!95, !40, !59, !60}
!96 = distinct !{!96, !40}
!97 = !{!"pixel.c:x264_pixel_ssd_16x8"}
!98 = distinct !{!98, !40, !59, !60}
!99 = distinct !{!99, !40}
!100 = !{!"pixel.c:x264_pixel_ssd_8x16"}
!101 = distinct !{!101, !40, !59, !60}
!102 = distinct !{!102, !40}
!103 = !{!"pixel.c:x264_pixel_ssd_8x8"}
!104 = distinct !{!104, !40, !59, !60}
!105 = distinct !{!105, !40}
!106 = !{!"pixel.c:x264_pixel_ssd_8x4"}
!107 = distinct !{!107, !40, !59, !60}
!108 = distinct !{!108, !40}
!109 = !{!"pixel.c:x264_pixel_ssd_4x8"}
!110 = distinct !{!110, !40}
!111 = !{!"pixel.c:x264_pixel_ssd_4x4"}
!112 = distinct !{!112, !40}
!113 = !{!"pixel.c:x264_pixel_satd_16x16"}
!114 = !{i32 0, i32 65536}
!115 = !{!"pixel.c:x264_pixel_satd_16x8"}
!116 = !{!"pixel.c:x264_pixel_satd_8x16"}
!117 = !{!"pixel.c:x264_pixel_satd_8x8"}
!118 = !{!"pixel.c:x264_pixel_satd_8x4"}
!119 = distinct !{!119, !40}
!120 = distinct !{!120, !40}
!121 = !{!"pixel.c:x264_pixel_satd_4x8"}
!122 = !{i32 -1073741824, i32 1073741824}
!123 = !{!"pixel.c:x264_pixel_satd_4x4"}
!124 = distinct !{!124, !40}
!125 = distinct !{!125, !40}
!126 = !{!"pixel.c:x264_pixel_satd_x3_16x16"}
!127 = !{i32 0, i32 524281}
!128 = !{!"pixel.c:x264_pixel_satd_x3_16x8"}
!129 = !{i32 0, i32 262141}
!130 = !{!"pixel.c:x264_pixel_satd_x3_8x16"}
!131 = !{!"pixel.c:x264_pixel_satd_x3_8x8"}
!132 = !{i32 0, i32 131071}
!133 = !{!"pixel.c:x264_pixel_satd_x3_8x4"}
!134 = !{!"pixel.c:x264_pixel_satd_x3_4x8"}
!135 = !{i32 -2147483648, i32 2147483647}
!136 = !{!"pixel.c:x264_pixel_satd_x3_4x4"}
!137 = !{!"pixel.c:x264_pixel_satd_x4_16x16"}
!138 = !{!"pixel.c:x264_pixel_satd_x4_16x8"}
!139 = !{!"pixel.c:x264_pixel_satd_x4_8x16"}
!140 = !{!"pixel.c:x264_pixel_satd_x4_8x8"}
!141 = !{!"pixel.c:x264_pixel_satd_x4_8x4"}
!142 = !{!"pixel.c:x264_pixel_satd_x4_4x8"}
!143 = !{!"pixel.c:x264_pixel_satd_x4_4x4"}
!144 = !{!"pixel.c:x264_pixel_hadamard_ac_16x16"}
!145 = !{i64 -65535, i64 -4294836225}
!146 = !{!"pixel.c:x264_pixel_hadamard_ac_16x8"}
!147 = !{!"pixel.c:x264_pixel_hadamard_ac_8x16"}
!148 = !{!"pixel.c:x264_pixel_hadamard_ac_8x8"}
!149 = !{!"pixel.c:x264_pixel_ads4"}
!150 = !{!151, !151, i64 0}
!151 = !{!"short", !37, i64 0}
!152 = distinct !{!152, !40}
!153 = !{!"pixel.c:x264_pixel_ads2"}
!154 = distinct !{!154, !40}
!155 = !{!"pixel.c:x264_pixel_ads1"}
!156 = distinct !{!156, !40}
!157 = !{!"pixel.c:x264_pixel_sa8d_16x16"}
!158 = !{!"pixel.c:x264_pixel_sa8d_8x8"}
!159 = !{!"pixel.c:x264_pixel_var_16x16"}
!160 = distinct !{!160, !40, !59, !60}
!161 = distinct !{!161, !40}
!162 = !{!"pixel.c:x264_pixel_var_8x8"}
!163 = distinct !{!163, !40, !59, !60}
!164 = distinct !{!164, !40}
!165 = !{!"pixel.c:ssim_4x4x2_core"}
!166 = distinct !{!166, !40}
!167 = distinct !{!167, !40}
!168 = !{!"pixel.c:ssim_end4"}
!169 = distinct !{!169, !40}
!170 = !{!"pixel.c:pixel_var2_8x8"}
!171 = distinct !{!171, !40, !59, !60}
!172 = distinct !{!172, !40}
!173 = !{!"pixel.c:abs2"}
!174 = !{!"pixel.c:pixel_hadamard_ac"}
!175 = distinct !{!175, !40}
!176 = distinct !{!176, !40}
!177 = distinct !{!177, !40}
!178 = !{!"pixel.c:sa8d_8x8"}
!179 = distinct !{!179, !40}
!180 = distinct !{!180, !40}
!181 = !{!"pixel.c:ssim_end1"}
