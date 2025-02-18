; ModuleID = 'x264_src/common/pixel.c'
source_filename = "x264_src/common/pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i64 @x264_pixel_ssd_wxh(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %3 to i64
  %10 = zext i32 %2 to i64
  %11 = zext i32 %4 to i64
  %12 = or i64 %10, %8
  %13 = or i64 %12, %9
  %14 = or i64 %13, %11
  %15 = and i64 %14, 15
  %16 = icmp ne i64 %15, 0
  %17 = icmp sgt i32 %6, 15
  br i1 %17, label %18, label %81

18:                                               ; preds = %7
  %19 = add nsw i32 %6, -15
  %20 = add nsw i32 %5, -15
  %21 = icmp slt i32 %5, 16
  %22 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 1
  %23 = add nsw i32 %5, -7
  %24 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 1, i64 2
  %25 = sext i32 %2 to i64
  %26 = sext i32 %4 to i64
  %27 = sext i32 %19 to i64
  %28 = sext i32 %4 to i64
  %29 = sext i32 %2 to i64
  %30 = or i1 %16, %21
  br label %31

31:                                               ; preds = %18, %75
  %32 = phi i64 [ 0, %18 ], [ %77, %75 ]
  %33 = phi i64 [ 0, %18 ], [ %76, %75 ]
  br i1 %30, label %53, label %34

34:                                               ; preds = %31
  %35 = mul nsw i64 %32, %25
  %36 = getelementptr inbounds i8, ptr %1, i64 %35
  %37 = mul nsw i64 %32, %26
  %38 = getelementptr inbounds i8, ptr %3, i64 %37
  br label %39

39:                                               ; preds = %34, %39
  %40 = phi i64 [ 0, %34 ], [ %48, %39 ]
  %41 = phi i64 [ %33, %34 ], [ %47, %39 ]
  %42 = load ptr, ptr %22, align 8, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %36, i64 %40
  %44 = getelementptr inbounds i8, ptr %38, i64 %40
  %45 = tail call i32 %42(ptr noundef %43, i32 noundef %2, ptr noundef %44, i32 noundef %4) #9
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %41, %46
  %48 = add nuw i64 %40, 16
  %49 = trunc i64 %48 to i32
  %50 = icmp sgt i32 %20, %49
  br i1 %50, label %39, label %51, !llvm.loop !38

51:                                               ; preds = %39
  %52 = trunc i64 %48 to i32
  br label %53

53:                                               ; preds = %51, %31
  %54 = phi i32 [ 0, %31 ], [ %52, %51 ]
  %55 = phi i64 [ %33, %31 ], [ %47, %51 ]
  %56 = icmp slt i32 %54, %23
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = mul nsw i64 %32, %29
  %59 = getelementptr inbounds i8, ptr %1, i64 %58
  %60 = mul nsw i64 %32, %28
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  %62 = zext i32 %54 to i64
  br label %63

63:                                               ; preds = %57, %63
  %64 = phi i64 [ %62, %57 ], [ %72, %63 ]
  %65 = phi i64 [ %55, %57 ], [ %71, %63 ]
  %66 = load ptr, ptr %24, align 8, !tbaa !34
  %67 = getelementptr inbounds i8, ptr %59, i64 %64
  %68 = getelementptr inbounds i8, ptr %61, i64 %64
  %69 = tail call i32 %66(ptr noundef %67, i32 noundef %2, ptr noundef %68, i32 noundef %4) #9
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %65, %70
  %72 = add nuw i64 %64, 8
  %73 = trunc i64 %72 to i32
  %74 = icmp sgt i32 %23, %73
  br i1 %74, label %63, label %75, !llvm.loop !41

75:                                               ; preds = %63, %53
  %76 = phi i64 [ %55, %53 ], [ %71, %63 ]
  %77 = add nuw nsw i64 %32, 16
  %78 = icmp slt i64 %77, %27
  br i1 %78, label %31, label %79, !llvm.loop !42

79:                                               ; preds = %75
  %80 = trunc i64 %77 to i32
  br label %81

81:                                               ; preds = %79, %7
  %82 = phi i32 [ 0, %7 ], [ %80, %79 ]
  %83 = phi i64 [ 0, %7 ], [ %76, %79 ]
  %84 = add nsw i32 %6, -7
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = add nsw i32 %5, -7
  %88 = icmp sgt i32 %5, 7
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %0, i64 0, i32 1, i64 3
  %91 = mul nsw i32 %82, %2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %1, i64 %92
  %94 = mul nsw i32 %82, %4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %3, i64 %95
  br label %97

97:                                               ; preds = %89, %97
  %98 = phi i64 [ 0, %89 ], [ %106, %97 ]
  %99 = phi i64 [ %83, %89 ], [ %105, %97 ]
  %100 = load ptr, ptr %90, align 8, !tbaa !34
  %101 = getelementptr inbounds i8, ptr %93, i64 %98
  %102 = getelementptr inbounds i8, ptr %96, i64 %98
  %103 = tail call i32 %100(ptr noundef %101, i32 noundef %2, ptr noundef %102, i32 noundef %4) #9
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %99, %104
  %106 = add nuw i64 %98, 8
  %107 = trunc i64 %106 to i32
  %108 = icmp sgt i32 %87, %107
  br i1 %108, label %97, label %109, !llvm.loop !43

109:                                              ; preds = %97, %86, %81
  %110 = phi i64 [ %83, %81 ], [ %83, %86 ], [ %105, %97 ]
  %111 = and i32 %5, 7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %151, label %113

113:                                              ; preds = %109
  %114 = and i32 %6, -8
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %113
  %117 = and i32 %5, -8
  %118 = icmp slt i32 %117, %5
  %119 = sext i32 %117 to i64
  %120 = sext i32 %2 to i64
  %121 = sext i32 %4 to i64
  %122 = zext nneg i32 %114 to i64
  %123 = sext i32 %5 to i64
  br label %124

124:                                              ; preds = %116, %132
  %125 = phi i64 [ 0, %116 ], [ %134, %132 ]
  %126 = phi i64 [ %110, %116 ], [ %133, %132 ]
  br i1 %118, label %127, label %132

127:                                              ; preds = %124
  %128 = mul nsw i64 %125, %120
  %129 = mul nsw i64 %125, %121
  %130 = getelementptr i8, ptr %1, i64 %128
  %131 = getelementptr i8, ptr %3, i64 %129
  br label %136

132:                                              ; preds = %136, %124
  %133 = phi i64 [ %126, %124 ], [ %148, %136 ]
  %134 = add nuw nsw i64 %125, 1
  %135 = icmp eq i64 %134, %122
  br i1 %135, label %151, label %124, !llvm.loop !44

136:                                              ; preds = %127, %136
  %137 = phi i64 [ %119, %127 ], [ %149, %136 ]
  %138 = phi i64 [ %126, %127 ], [ %148, %136 ]
  %139 = getelementptr i8, ptr %130, i64 %137
  %140 = load i8, ptr %139, align 1, !tbaa !45
  %141 = zext i8 %140 to i32
  %142 = getelementptr i8, ptr %131, i64 %137
  %143 = load i8, ptr %142, align 1, !tbaa !45
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %141, %144
  %146 = mul nsw i32 %145, %145
  %147 = zext nneg i32 %146 to i64
  %148 = add nsw i64 %138, %147
  %149 = add nsw i64 %137, 1
  %150 = icmp eq i64 %149, %123
  br i1 %150, label %132, label %136, !llvm.loop !46

151:                                              ; preds = %132, %113, %109
  %152 = phi i64 [ %110, %109 ], [ %110, %113 ], [ %133, %132 ]
  %153 = and i32 %6, 7
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %192, label %155

155:                                              ; preds = %151
  %156 = and i32 %6, -8
  %157 = icmp slt i32 %156, %6
  br i1 %157, label %158, label %192

158:                                              ; preds = %155
  %159 = icmp sgt i32 %5, 0
  %160 = sext i32 %156 to i64
  %161 = sext i32 %2 to i64
  %162 = sext i32 %4 to i64
  %163 = sext i32 %6 to i64
  %164 = zext nneg i32 %5 to i64
  br label %165

165:                                              ; preds = %158, %173
  %166 = phi i64 [ %160, %158 ], [ %175, %173 ]
  %167 = phi i64 [ %152, %158 ], [ %174, %173 ]
  br i1 %159, label %168, label %173

168:                                              ; preds = %165
  %169 = mul nsw i64 %166, %161
  %170 = mul nsw i64 %166, %162
  %171 = getelementptr i8, ptr %1, i64 %169
  %172 = getelementptr i8, ptr %3, i64 %170
  br label %177

173:                                              ; preds = %177, %165
  %174 = phi i64 [ %167, %165 ], [ %189, %177 ]
  %175 = add nsw i64 %166, 1
  %176 = icmp eq i64 %175, %163
  br i1 %176, label %192, label %165, !llvm.loop !47

177:                                              ; preds = %168, %177
  %178 = phi i64 [ 0, %168 ], [ %190, %177 ]
  %179 = phi i64 [ %167, %168 ], [ %189, %177 ]
  %180 = getelementptr i8, ptr %171, i64 %178
  %181 = load i8, ptr %180, align 1, !tbaa !45
  %182 = zext i8 %181 to i32
  %183 = getelementptr i8, ptr %172, i64 %178
  %184 = load i8, ptr %183, align 1, !tbaa !45
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %182, %185
  %187 = mul nsw i32 %186, %186
  %188 = zext nneg i32 %187 to i64
  %189 = add nsw i64 %179, %188
  %190 = add nuw nsw i64 %178, 1
  %191 = icmp eq i64 %190, %164
  br i1 %191, label %173, label %177, !llvm.loop !48

192:                                              ; preds = %173, %155, %151
  %193 = phi i64 [ %152, %151 ], [ %152, %155 ], [ %174, %173 ]
  ret i64 %193
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local float @x264_pixel_ssim_wxh(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = ashr i32 %5, 2
  %10 = ashr i32 %6, 2
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %37

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

27:                                               ; preds = %12, %71
  %28 = phi i64 [ 1, %12 ], [ %73, %71 ]
  %29 = phi ptr [ %16, %12 ], [ %44, %71 ]
  %30 = phi ptr [ %7, %12 ], [ %43, %71 ]
  %31 = phi float [ 0.000000e+00, %12 ], [ %72, %71 ]
  %32 = phi i32 [ 0, %12 ], [ %42, %71 ]
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = sext i32 %32 to i64
  br label %45

37:                                               ; preds = %71, %8
  %38 = phi float [ 0.000000e+00, %8 ], [ %72, %71 ]
  ret float %38

39:                                               ; preds = %52
  %40 = trunc i64 %53 to i32
  br label %41

41:                                               ; preds = %39, %27
  %42 = phi i32 [ %32, %27 ], [ %40, %39 ]
  %43 = phi ptr [ %30, %27 ], [ %47, %39 ]
  %44 = phi ptr [ %29, %27 ], [ %48, %39 ]
  br i1 %20, label %75, label %71

45:                                               ; preds = %35, %52
  %46 = phi i64 [ %36, %35 ], [ %53, %52 ]
  %47 = phi ptr [ %29, %35 ], [ %48, %52 ]
  %48 = phi ptr [ %30, %35 ], [ %47, %52 ]
  br i1 %17, label %49, label %52

49:                                               ; preds = %45
  %50 = mul i64 %46, %23
  %51 = mul i64 %46, %24
  br label %55

52:                                               ; preds = %55, %45
  %53 = add nsw i64 %46, 1
  %54 = icmp slt i64 %46, %28
  br i1 %54, label %45, label %39, !llvm.loop !49

55:                                               ; preds = %49, %55
  %56 = phi i64 [ 0, %49 ], [ %69, %55 ]
  %57 = load ptr, ptr %18, align 8, !tbaa !50
  %58 = add i64 %56, %50
  %59 = trunc i64 %58 to i32
  %60 = shl nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %1, i64 %61
  %63 = add i64 %56, %51
  %64 = trunc i64 %63 to i32
  %65 = shl nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %3, i64 %66
  %68 = getelementptr inbounds [4 x i32], ptr %47, i64 %56
  tail call void %57(ptr noundef %62, i32 noundef %2, ptr noundef %67, i32 noundef %4, ptr noundef %68) #9
  %69 = add nuw nsw i64 %56, 2
  %70 = icmp slt i64 %69, %22
  br i1 %70, label %55, label %52, !llvm.loop !52

71:                                               ; preds = %75, %41
  %72 = phi float [ %31, %41 ], [ %86, %75 ]
  %73 = add nuw nsw i64 %28, 1
  %74 = icmp eq i64 %73, %26
  br i1 %74, label %37, label %27, !llvm.loop !53

75:                                               ; preds = %41, %75
  %76 = phi i64 [ %87, %75 ], [ 0, %41 ]
  %77 = phi float [ %86, %75 ], [ %31, %41 ]
  %78 = load ptr, ptr %21, align 8, !tbaa !54
  %79 = getelementptr inbounds [4 x i32], ptr %43, i64 %76
  %80 = getelementptr inbounds [4 x i32], ptr %44, i64 %76
  %81 = trunc i64 %76 to i32
  %82 = xor i32 %81, -1
  %83 = add nsw i32 %9, %82
  %84 = tail call i32 @llvm.smin.i32(i32 %83, i32 4)
  %85 = tail call float %78(ptr noundef %79, ptr noundef %80, i32 noundef %84) #9
  %86 = fadd float %77, %85
  %87 = add nuw nsw i64 %76, 4
  %88 = icmp slt i64 %87, %25
  br i1 %88, label %75, label %71, !llvm.loop !55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_pixel_init(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %1, i8 0, i64 1056, i1 false)
  store ptr @x264_pixel_sad_16x16, ptr %1, align 8, !tbaa !34
  %3 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 1
  store ptr @x264_pixel_sad_16x8, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 2
  store ptr @x264_pixel_sad_8x16, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 3
  store ptr @x264_pixel_sad_8x8, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 4
  store ptr @x264_pixel_sad_8x4, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 5
  store ptr @x264_pixel_sad_4x8, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds [7 x ptr], ptr %1, i64 0, i64 6
  store ptr @x264_pixel_sad_4x4, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10
  store ptr @x264_pixel_sad_16x16, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 1
  store ptr @x264_pixel_sad_16x8, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 2
  store ptr @x264_pixel_sad_8x16, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 3
  store ptr @x264_pixel_sad_8x8, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 4
  store ptr @x264_pixel_sad_8x4, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 5
  store ptr @x264_pixel_sad_4x8, ptr %14, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 10, i64 6
  store ptr @x264_pixel_sad_4x4, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16
  store ptr @x264_pixel_sad_x3_16x16, ptr %16, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 1
  store ptr @x264_pixel_sad_x3_16x8, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 2
  store ptr @x264_pixel_sad_x3_8x16, ptr %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 3
  store ptr @x264_pixel_sad_x3_8x8, ptr %19, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 4
  store ptr @x264_pixel_sad_x3_8x4, ptr %20, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 5
  store ptr @x264_pixel_sad_x3_4x8, ptr %21, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 16, i64 6
  store ptr @x264_pixel_sad_x3_4x4, ptr %22, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17
  store ptr @x264_pixel_sad_x4_16x16, ptr %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 1
  store ptr @x264_pixel_sad_x4_16x8, ptr %24, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 2
  store ptr @x264_pixel_sad_x4_8x16, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 3
  store ptr @x264_pixel_sad_x4_8x8, ptr %26, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 4
  store ptr @x264_pixel_sad_x4_8x4, ptr %27, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 5
  store ptr @x264_pixel_sad_x4_4x8, ptr %28, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 17, i64 6
  store ptr @x264_pixel_sad_x4_4x4, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1
  store ptr @x264_pixel_ssd_16x16, ptr %30, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 1
  store ptr @x264_pixel_ssd_16x8, ptr %31, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 2
  store ptr @x264_pixel_ssd_8x16, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 3
  store ptr @x264_pixel_ssd_8x8, ptr %33, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 4
  store ptr @x264_pixel_ssd_8x4, ptr %34, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 5
  store ptr @x264_pixel_ssd_4x8, ptr %35, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 1, i64 6
  store ptr @x264_pixel_ssd_4x4, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2
  store ptr @x264_pixel_satd_16x16, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 1
  store ptr @x264_pixel_satd_16x8, ptr %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 2
  store ptr @x264_pixel_satd_8x16, ptr %39, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 3
  store ptr @x264_pixel_satd_8x8, ptr %40, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 4
  store ptr @x264_pixel_satd_8x4, ptr %41, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 5
  store ptr @x264_pixel_satd_4x8, ptr %42, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 2, i64 6
  store ptr @x264_pixel_satd_4x4, ptr %43, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18
  store ptr @x264_pixel_satd_x3_16x16, ptr %44, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 1
  store ptr @x264_pixel_satd_x3_16x8, ptr %45, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 2
  store ptr @x264_pixel_satd_x3_8x16, ptr %46, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 3
  store ptr @x264_pixel_satd_x3_8x8, ptr %47, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 4
  store ptr @x264_pixel_satd_x3_8x4, ptr %48, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 5
  store ptr @x264_pixel_satd_x3_4x8, ptr %49, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 18, i64 6
  store ptr @x264_pixel_satd_x3_4x4, ptr %50, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19
  store ptr @x264_pixel_satd_x4_16x16, ptr %51, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 1
  store ptr @x264_pixel_satd_x4_16x8, ptr %52, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 2
  store ptr @x264_pixel_satd_x4_8x16, ptr %53, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 3
  store ptr @x264_pixel_satd_x4_8x8, ptr %54, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 4
  store ptr @x264_pixel_satd_x4_8x4, ptr %55, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 5
  store ptr @x264_pixel_satd_x4_4x8, ptr %56, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 19, i64 6
  store ptr @x264_pixel_satd_x4_4x4, ptr %57, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13
  store ptr @x264_pixel_hadamard_ac_16x16, ptr %58, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13, i64 1
  store ptr @x264_pixel_hadamard_ac_16x8, ptr %59, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13, i64 2
  store ptr @x264_pixel_hadamard_ac_8x16, ptr %60, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 13, i64 3
  store ptr @x264_pixel_hadamard_ac_8x8, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20
  store ptr @x264_pixel_ads4, ptr %62, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 1
  store ptr @x264_pixel_ads2, ptr %63, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 3
  store ptr @x264_pixel_ads1, ptr %64, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 4
  store ptr @x264_pixel_sa8d_16x16, ptr %65, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 4, i64 3
  store ptr @x264_pixel_sa8d_8x8, ptr %66, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 12
  store ptr @x264_pixel_var_16x16, ptr %67, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 12, i64 3
  store ptr @x264_pixel_var_8x8, ptr %68, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 14
  store ptr @ssim_4x4x2_core, ptr %69, align 8, !tbaa !50
  %70 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 15
  store ptr @ssim_end4, ptr %70, align 8, !tbaa !54
  %71 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 11
  store ptr @pixel_var2_8x8, ptr %71, align 8, !tbaa !56
  %72 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 5
  store ptr @x264_pixel_ads2, ptr %72, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 4
  store ptr @x264_pixel_ads2, ptr %73, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 2
  store ptr @x264_pixel_ads2, ptr %74, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.x264_pixel_function_t, ptr %1, i64 0, i32 20, i64 6
  store ptr @x264_pixel_ads1, ptr %75, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %10, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %12, label %7, !llvm.loop !57

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %9, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %13, label %18, !llvm.loop !58
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_16x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %10, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %12, label %7, !llvm.loop !59

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %9, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %13, label %18, !llvm.loop !60
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %10, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %12, label %7, !llvm.loop !61

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %9, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !62
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %10, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %12, label %7, !llvm.loop !63

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %9, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !64
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %10, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %12, label %7, !llvm.loop !65

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %9, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !66
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_4x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %10, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %12, label %7, !llvm.loop !67

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %9, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %13, label %18, !llvm.loop !68
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %10, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %12, label %7, !llvm.loop !69

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %9, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %13, label %18, !llvm.loop !70
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %11 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %12 = phi ptr [ %1, %6 ], [ %15, %13 ]
  br label %18

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %11, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 %7
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %32, label %8, !llvm.loop !57

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %11, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %12, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %13, label %18, !llvm.loop !58

32:                                               ; preds = %13
  store i32 %29, ptr %5, align 4, !tbaa !71
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i32 [ 0, %32 ], [ %42, %39 ]
  %36 = phi i32 [ 0, %32 ], [ %55, %39 ]
  %37 = phi ptr [ %0, %32 ], [ %40, %39 ]
  %38 = phi ptr [ %2, %32 ], [ %41, %39 ]
  br label %44

39:                                               ; preds = %44
  %40 = getelementptr inbounds i8, ptr %37, i64 16
  %41 = getelementptr inbounds i8, ptr %38, i64 %33
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %58, label %34, !llvm.loop !57

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %56, %44 ]
  %46 = phi i32 [ %36, %34 ], [ %55, %44 ]
  %47 = getelementptr inbounds i8, ptr %37, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nsw i32 %54, %46
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, 16
  br i1 %57, label %39, label %44, !llvm.loop !58

58:                                               ; preds = %39
  %59 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %55, ptr %59, align 4, !tbaa !71
  %60 = sext i32 %4 to i64
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i32 [ 0, %58 ], [ %69, %66 ]
  %63 = phi i32 [ 0, %58 ], [ %82, %66 ]
  %64 = phi ptr [ %0, %58 ], [ %67, %66 ]
  %65 = phi ptr [ %3, %58 ], [ %68, %66 ]
  br label %71

66:                                               ; preds = %71
  %67 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = getelementptr inbounds i8, ptr %65, i64 %60
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 16
  br i1 %70, label %85, label %61, !llvm.loop !57

71:                                               ; preds = %61, %71
  %72 = phi i64 [ 0, %61 ], [ %83, %71 ]
  %73 = phi i32 [ %63, %61 ], [ %82, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %65, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %76, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 16
  br i1 %84, label %66, label %71, !llvm.loop !58

85:                                               ; preds = %66
  %86 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %82, ptr %86, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %11 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %12 = phi ptr [ %1, %6 ], [ %15, %13 ]
  br label %18

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %11, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 %7
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %32, label %8, !llvm.loop !59

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %11, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %12, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %13, label %18, !llvm.loop !60

32:                                               ; preds = %13
  store i32 %29, ptr %5, align 4, !tbaa !71
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i32 [ 0, %32 ], [ %42, %39 ]
  %36 = phi i32 [ 0, %32 ], [ %55, %39 ]
  %37 = phi ptr [ %0, %32 ], [ %40, %39 ]
  %38 = phi ptr [ %2, %32 ], [ %41, %39 ]
  br label %44

39:                                               ; preds = %44
  %40 = getelementptr inbounds i8, ptr %37, i64 16
  %41 = getelementptr inbounds i8, ptr %38, i64 %33
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %58, label %34, !llvm.loop !59

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %56, %44 ]
  %46 = phi i32 [ %36, %34 ], [ %55, %44 ]
  %47 = getelementptr inbounds i8, ptr %37, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nsw i32 %54, %46
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, 16
  br i1 %57, label %39, label %44, !llvm.loop !60

58:                                               ; preds = %39
  %59 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %55, ptr %59, align 4, !tbaa !71
  %60 = sext i32 %4 to i64
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i32 [ 0, %58 ], [ %69, %66 ]
  %63 = phi i32 [ 0, %58 ], [ %82, %66 ]
  %64 = phi ptr [ %0, %58 ], [ %67, %66 ]
  %65 = phi ptr [ %3, %58 ], [ %68, %66 ]
  br label %71

66:                                               ; preds = %71
  %67 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = getelementptr inbounds i8, ptr %65, i64 %60
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %85, label %61, !llvm.loop !59

71:                                               ; preds = %61, %71
  %72 = phi i64 [ 0, %61 ], [ %83, %71 ]
  %73 = phi i32 [ %63, %61 ], [ %82, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %65, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %76, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 16
  br i1 %84, label %66, label %71, !llvm.loop !60

85:                                               ; preds = %66
  %86 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %82, ptr %86, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %11 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %12 = phi ptr [ %1, %6 ], [ %15, %13 ]
  br label %18

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %11, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 %7
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %32, label %8, !llvm.loop !61

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %11, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %12, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !62

32:                                               ; preds = %13
  store i32 %29, ptr %5, align 4, !tbaa !71
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i32 [ 0, %32 ], [ %42, %39 ]
  %36 = phi i32 [ 0, %32 ], [ %55, %39 ]
  %37 = phi ptr [ %0, %32 ], [ %40, %39 ]
  %38 = phi ptr [ %2, %32 ], [ %41, %39 ]
  br label %44

39:                                               ; preds = %44
  %40 = getelementptr inbounds i8, ptr %37, i64 16
  %41 = getelementptr inbounds i8, ptr %38, i64 %33
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %58, label %34, !llvm.loop !61

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %56, %44 ]
  %46 = phi i32 [ %36, %34 ], [ %55, %44 ]
  %47 = getelementptr inbounds i8, ptr %37, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nsw i32 %54, %46
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %39, label %44, !llvm.loop !62

58:                                               ; preds = %39
  %59 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %55, ptr %59, align 4, !tbaa !71
  %60 = sext i32 %4 to i64
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i32 [ 0, %58 ], [ %69, %66 ]
  %63 = phi i32 [ 0, %58 ], [ %82, %66 ]
  %64 = phi ptr [ %0, %58 ], [ %67, %66 ]
  %65 = phi ptr [ %3, %58 ], [ %68, %66 ]
  br label %71

66:                                               ; preds = %71
  %67 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = getelementptr inbounds i8, ptr %65, i64 %60
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 16
  br i1 %70, label %85, label %61, !llvm.loop !61

71:                                               ; preds = %61, %71
  %72 = phi i64 [ 0, %61 ], [ %83, %71 ]
  %73 = phi i32 [ %63, %61 ], [ %82, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %65, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %76, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %66, label %71, !llvm.loop !62

85:                                               ; preds = %66
  %86 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %82, ptr %86, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %11 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %12 = phi ptr [ %1, %6 ], [ %15, %13 ]
  br label %18

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %11, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 %7
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %32, label %8, !llvm.loop !63

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %11, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %12, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !64

32:                                               ; preds = %13
  store i32 %29, ptr %5, align 4, !tbaa !71
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i32 [ 0, %32 ], [ %42, %39 ]
  %36 = phi i32 [ 0, %32 ], [ %55, %39 ]
  %37 = phi ptr [ %0, %32 ], [ %40, %39 ]
  %38 = phi ptr [ %2, %32 ], [ %41, %39 ]
  br label %44

39:                                               ; preds = %44
  %40 = getelementptr inbounds i8, ptr %37, i64 16
  %41 = getelementptr inbounds i8, ptr %38, i64 %33
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %58, label %34, !llvm.loop !63

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %56, %44 ]
  %46 = phi i32 [ %36, %34 ], [ %55, %44 ]
  %47 = getelementptr inbounds i8, ptr %37, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nsw i32 %54, %46
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %39, label %44, !llvm.loop !64

58:                                               ; preds = %39
  %59 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %55, ptr %59, align 4, !tbaa !71
  %60 = sext i32 %4 to i64
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i32 [ 0, %58 ], [ %69, %66 ]
  %63 = phi i32 [ 0, %58 ], [ %82, %66 ]
  %64 = phi ptr [ %0, %58 ], [ %67, %66 ]
  %65 = phi ptr [ %3, %58 ], [ %68, %66 ]
  br label %71

66:                                               ; preds = %71
  %67 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = getelementptr inbounds i8, ptr %65, i64 %60
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %85, label %61, !llvm.loop !63

71:                                               ; preds = %61, %71
  %72 = phi i64 [ 0, %61 ], [ %83, %71 ]
  %73 = phi i32 [ %63, %61 ], [ %82, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %65, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %76, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %66, label %71, !llvm.loop !64

85:                                               ; preds = %66
  %86 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %82, ptr %86, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %11 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %12 = phi ptr [ %1, %6 ], [ %15, %13 ]
  br label %18

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %11, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 %7
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %32, label %8, !llvm.loop !65

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %11, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %12, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !66

32:                                               ; preds = %13
  store i32 %29, ptr %5, align 4, !tbaa !71
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i32 [ 0, %32 ], [ %42, %39 ]
  %36 = phi i32 [ 0, %32 ], [ %55, %39 ]
  %37 = phi ptr [ %0, %32 ], [ %40, %39 ]
  %38 = phi ptr [ %2, %32 ], [ %41, %39 ]
  br label %44

39:                                               ; preds = %44
  %40 = getelementptr inbounds i8, ptr %37, i64 16
  %41 = getelementptr inbounds i8, ptr %38, i64 %33
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %58, label %34, !llvm.loop !65

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %56, %44 ]
  %46 = phi i32 [ %36, %34 ], [ %55, %44 ]
  %47 = getelementptr inbounds i8, ptr %37, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nsw i32 %54, %46
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %39, label %44, !llvm.loop !66

58:                                               ; preds = %39
  %59 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %55, ptr %59, align 4, !tbaa !71
  %60 = sext i32 %4 to i64
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i32 [ 0, %58 ], [ %69, %66 ]
  %63 = phi i32 [ 0, %58 ], [ %82, %66 ]
  %64 = phi ptr [ %0, %58 ], [ %67, %66 ]
  %65 = phi ptr [ %3, %58 ], [ %68, %66 ]
  br label %71

66:                                               ; preds = %71
  %67 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = getelementptr inbounds i8, ptr %65, i64 %60
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %85, label %61, !llvm.loop !65

71:                                               ; preds = %61, %71
  %72 = phi i64 [ 0, %61 ], [ %83, %71 ]
  %73 = phi i32 [ %63, %61 ], [ %82, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %65, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %76, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %66, label %71, !llvm.loop !66

85:                                               ; preds = %66
  %86 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %82, ptr %86, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %11 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %12 = phi ptr [ %1, %6 ], [ %15, %13 ]
  br label %18

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %11, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 %7
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %32, label %8, !llvm.loop !67

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %11, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %12, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %13, label %18, !llvm.loop !68

32:                                               ; preds = %13
  store i32 %29, ptr %5, align 4, !tbaa !71
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i32 [ 0, %32 ], [ %42, %39 ]
  %36 = phi i32 [ 0, %32 ], [ %55, %39 ]
  %37 = phi ptr [ %0, %32 ], [ %40, %39 ]
  %38 = phi ptr [ %2, %32 ], [ %41, %39 ]
  br label %44

39:                                               ; preds = %44
  %40 = getelementptr inbounds i8, ptr %37, i64 16
  %41 = getelementptr inbounds i8, ptr %38, i64 %33
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %58, label %34, !llvm.loop !67

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %56, %44 ]
  %46 = phi i32 [ %36, %34 ], [ %55, %44 ]
  %47 = getelementptr inbounds i8, ptr %37, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nsw i32 %54, %46
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %39, label %44, !llvm.loop !68

58:                                               ; preds = %39
  %59 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %55, ptr %59, align 4, !tbaa !71
  %60 = sext i32 %4 to i64
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i32 [ 0, %58 ], [ %69, %66 ]
  %63 = phi i32 [ 0, %58 ], [ %82, %66 ]
  %64 = phi ptr [ %0, %58 ], [ %67, %66 ]
  %65 = phi ptr [ %3, %58 ], [ %68, %66 ]
  br label %71

66:                                               ; preds = %71
  %67 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = getelementptr inbounds i8, ptr %65, i64 %60
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %85, label %61, !llvm.loop !67

71:                                               ; preds = %61, %71
  %72 = phi i64 [ 0, %61 ], [ %83, %71 ]
  %73 = phi i32 [ %63, %61 ], [ %82, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %65, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %76, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %66, label %71, !llvm.loop !68

85:                                               ; preds = %66
  %86 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %82, ptr %86, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %11 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %12 = phi ptr [ %1, %6 ], [ %15, %13 ]
  br label %18

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %11, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 %7
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %32, label %8, !llvm.loop !69

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %11, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %12, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %13, label %18, !llvm.loop !70

32:                                               ; preds = %13
  store i32 %29, ptr %5, align 4, !tbaa !71
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i32 [ 0, %32 ], [ %42, %39 ]
  %36 = phi i32 [ 0, %32 ], [ %55, %39 ]
  %37 = phi ptr [ %0, %32 ], [ %40, %39 ]
  %38 = phi ptr [ %2, %32 ], [ %41, %39 ]
  br label %44

39:                                               ; preds = %44
  %40 = getelementptr inbounds i8, ptr %37, i64 16
  %41 = getelementptr inbounds i8, ptr %38, i64 %33
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %58, label %34, !llvm.loop !69

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %56, %44 ]
  %46 = phi i32 [ %36, %34 ], [ %55, %44 ]
  %47 = getelementptr inbounds i8, ptr %37, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !45
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nsw i32 %54, %46
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %39, label %44, !llvm.loop !70

58:                                               ; preds = %39
  %59 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %55, ptr %59, align 4, !tbaa !71
  %60 = sext i32 %4 to i64
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i32 [ 0, %58 ], [ %69, %66 ]
  %63 = phi i32 [ 0, %58 ], [ %82, %66 ]
  %64 = phi ptr [ %0, %58 ], [ %67, %66 ]
  %65 = phi ptr [ %3, %58 ], [ %68, %66 ]
  br label %71

66:                                               ; preds = %71
  %67 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = getelementptr inbounds i8, ptr %65, i64 %60
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %85, label %61, !llvm.loop !69

71:                                               ; preds = %61, %71
  %72 = phi i64 [ 0, %61 ], [ %83, %71 ]
  %73 = phi i32 [ %63, %61 ], [ %82, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %65, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %76, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %66, label %71, !llvm.loop !70

85:                                               ; preds = %66
  %86 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %82, ptr %86, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %14 ]
  %12 = phi ptr [ %0, %7 ], [ %15, %14 ]
  %13 = phi ptr [ %1, %7 ], [ %16, %14 ]
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %12, i64 16
  %16 = getelementptr inbounds i8, ptr %13, i64 %8
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %33, label %9, !llvm.loop !57

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %31, %19 ]
  %21 = phi i32 [ %11, %9 ], [ %30, %19 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %13, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 16
  br i1 %32, label %14, label %19, !llvm.loop !58

33:                                               ; preds = %14
  store i32 %30, ptr %6, align 4, !tbaa !71
  %34 = sext i32 %5 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i32 [ 0, %33 ], [ %43, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %56, %40 ]
  %38 = phi ptr [ %0, %33 ], [ %41, %40 ]
  %39 = phi ptr [ %2, %33 ], [ %42, %40 ]
  br label %45

40:                                               ; preds = %45
  %41 = getelementptr inbounds i8, ptr %38, i64 16
  %42 = getelementptr inbounds i8, ptr %39, i64 %34
  %43 = add nuw nsw i32 %36, 1
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %59, label %35, !llvm.loop !57

45:                                               ; preds = %35, %45
  %46 = phi i64 [ 0, %35 ], [ %57, %45 ]
  %47 = phi i32 [ %37, %35 ], [ %56, %45 ]
  %48 = getelementptr inbounds i8, ptr %38, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !45
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = add nsw i32 %55, %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 16
  br i1 %58, label %40, label %45, !llvm.loop !58

59:                                               ; preds = %40
  %60 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %56, ptr %60, align 4, !tbaa !71
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %59, %67
  %63 = phi i32 [ 0, %59 ], [ %70, %67 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %67 ]
  %65 = phi ptr [ %0, %59 ], [ %68, %67 ]
  %66 = phi ptr [ %3, %59 ], [ %69, %67 ]
  br label %72

67:                                               ; preds = %72
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = getelementptr inbounds i8, ptr %66, i64 %61
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 16
  br i1 %71, label %86, label %62, !llvm.loop !57

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %84, %72 ]
  %74 = phi i32 [ %64, %62 ], [ %83, %72 ]
  %75 = getelementptr inbounds i8, ptr %65, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %66, i64 %73
  %79 = load i8, ptr %78, align 1, !tbaa !45
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %77, %80
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true)
  %83 = add nsw i32 %82, %74
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %67, label %72, !llvm.loop !58

86:                                               ; preds = %67
  %87 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %83, ptr %87, align 4, !tbaa !71
  %88 = sext i32 %5 to i64
  br label %89

89:                                               ; preds = %86, %94
  %90 = phi i32 [ 0, %86 ], [ %97, %94 ]
  %91 = phi i32 [ 0, %86 ], [ %110, %94 ]
  %92 = phi ptr [ %0, %86 ], [ %95, %94 ]
  %93 = phi ptr [ %4, %86 ], [ %96, %94 ]
  br label %99

94:                                               ; preds = %99
  %95 = getelementptr inbounds i8, ptr %92, i64 16
  %96 = getelementptr inbounds i8, ptr %93, i64 %88
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %113, label %89, !llvm.loop !57

99:                                               ; preds = %89, %99
  %100 = phi i64 [ 0, %89 ], [ %111, %99 ]
  %101 = phi i32 [ %91, %89 ], [ %110, %99 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %93, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !45
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %104, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = add nsw i32 %109, %101
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, 16
  br i1 %112, label %94, label %99, !llvm.loop !58

113:                                              ; preds = %94
  %114 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %110, ptr %114, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %14 ]
  %12 = phi ptr [ %0, %7 ], [ %15, %14 ]
  %13 = phi ptr [ %1, %7 ], [ %16, %14 ]
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %12, i64 16
  %16 = getelementptr inbounds i8, ptr %13, i64 %8
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %33, label %9, !llvm.loop !59

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %31, %19 ]
  %21 = phi i32 [ %11, %9 ], [ %30, %19 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %13, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 16
  br i1 %32, label %14, label %19, !llvm.loop !60

33:                                               ; preds = %14
  store i32 %30, ptr %6, align 4, !tbaa !71
  %34 = sext i32 %5 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i32 [ 0, %33 ], [ %43, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %56, %40 ]
  %38 = phi ptr [ %0, %33 ], [ %41, %40 ]
  %39 = phi ptr [ %2, %33 ], [ %42, %40 ]
  br label %45

40:                                               ; preds = %45
  %41 = getelementptr inbounds i8, ptr %38, i64 16
  %42 = getelementptr inbounds i8, ptr %39, i64 %34
  %43 = add nuw nsw i32 %36, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %59, label %35, !llvm.loop !59

45:                                               ; preds = %35, %45
  %46 = phi i64 [ 0, %35 ], [ %57, %45 ]
  %47 = phi i32 [ %37, %35 ], [ %56, %45 ]
  %48 = getelementptr inbounds i8, ptr %38, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !45
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = add nsw i32 %55, %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 16
  br i1 %58, label %40, label %45, !llvm.loop !60

59:                                               ; preds = %40
  %60 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %56, ptr %60, align 4, !tbaa !71
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %59, %67
  %63 = phi i32 [ 0, %59 ], [ %70, %67 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %67 ]
  %65 = phi ptr [ %0, %59 ], [ %68, %67 ]
  %66 = phi ptr [ %3, %59 ], [ %69, %67 ]
  br label %72

67:                                               ; preds = %72
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = getelementptr inbounds i8, ptr %66, i64 %61
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %86, label %62, !llvm.loop !59

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %84, %72 ]
  %74 = phi i32 [ %64, %62 ], [ %83, %72 ]
  %75 = getelementptr inbounds i8, ptr %65, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %66, i64 %73
  %79 = load i8, ptr %78, align 1, !tbaa !45
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %77, %80
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true)
  %83 = add nsw i32 %82, %74
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %67, label %72, !llvm.loop !60

86:                                               ; preds = %67
  %87 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %83, ptr %87, align 4, !tbaa !71
  %88 = sext i32 %5 to i64
  br label %89

89:                                               ; preds = %86, %94
  %90 = phi i32 [ 0, %86 ], [ %97, %94 ]
  %91 = phi i32 [ 0, %86 ], [ %110, %94 ]
  %92 = phi ptr [ %0, %86 ], [ %95, %94 ]
  %93 = phi ptr [ %4, %86 ], [ %96, %94 ]
  br label %99

94:                                               ; preds = %99
  %95 = getelementptr inbounds i8, ptr %92, i64 16
  %96 = getelementptr inbounds i8, ptr %93, i64 %88
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %113, label %89, !llvm.loop !59

99:                                               ; preds = %89, %99
  %100 = phi i64 [ 0, %89 ], [ %111, %99 ]
  %101 = phi i32 [ %91, %89 ], [ %110, %99 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %93, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !45
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %104, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = add nsw i32 %109, %101
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, 16
  br i1 %112, label %94, label %99, !llvm.loop !60

113:                                              ; preds = %94
  %114 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %110, ptr %114, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %14 ]
  %12 = phi ptr [ %0, %7 ], [ %15, %14 ]
  %13 = phi ptr [ %1, %7 ], [ %16, %14 ]
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %12, i64 16
  %16 = getelementptr inbounds i8, ptr %13, i64 %8
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %33, label %9, !llvm.loop !61

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %31, %19 ]
  %21 = phi i32 [ %11, %9 ], [ %30, %19 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %13, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %14, label %19, !llvm.loop !62

33:                                               ; preds = %14
  store i32 %30, ptr %6, align 4, !tbaa !71
  %34 = sext i32 %5 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i32 [ 0, %33 ], [ %43, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %56, %40 ]
  %38 = phi ptr [ %0, %33 ], [ %41, %40 ]
  %39 = phi ptr [ %2, %33 ], [ %42, %40 ]
  br label %45

40:                                               ; preds = %45
  %41 = getelementptr inbounds i8, ptr %38, i64 16
  %42 = getelementptr inbounds i8, ptr %39, i64 %34
  %43 = add nuw nsw i32 %36, 1
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %59, label %35, !llvm.loop !61

45:                                               ; preds = %35, %45
  %46 = phi i64 [ 0, %35 ], [ %57, %45 ]
  %47 = phi i32 [ %37, %35 ], [ %56, %45 ]
  %48 = getelementptr inbounds i8, ptr %38, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !45
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = add nsw i32 %55, %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %40, label %45, !llvm.loop !62

59:                                               ; preds = %40
  %60 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %56, ptr %60, align 4, !tbaa !71
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %59, %67
  %63 = phi i32 [ 0, %59 ], [ %70, %67 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %67 ]
  %65 = phi ptr [ %0, %59 ], [ %68, %67 ]
  %66 = phi ptr [ %3, %59 ], [ %69, %67 ]
  br label %72

67:                                               ; preds = %72
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = getelementptr inbounds i8, ptr %66, i64 %61
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 16
  br i1 %71, label %86, label %62, !llvm.loop !61

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %84, %72 ]
  %74 = phi i32 [ %64, %62 ], [ %83, %72 ]
  %75 = getelementptr inbounds i8, ptr %65, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %66, i64 %73
  %79 = load i8, ptr %78, align 1, !tbaa !45
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %77, %80
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true)
  %83 = add nsw i32 %82, %74
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, 8
  br i1 %85, label %67, label %72, !llvm.loop !62

86:                                               ; preds = %67
  %87 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %83, ptr %87, align 4, !tbaa !71
  %88 = sext i32 %5 to i64
  br label %89

89:                                               ; preds = %86, %94
  %90 = phi i32 [ 0, %86 ], [ %97, %94 ]
  %91 = phi i32 [ 0, %86 ], [ %110, %94 ]
  %92 = phi ptr [ %0, %86 ], [ %95, %94 ]
  %93 = phi ptr [ %4, %86 ], [ %96, %94 ]
  br label %99

94:                                               ; preds = %99
  %95 = getelementptr inbounds i8, ptr %92, i64 16
  %96 = getelementptr inbounds i8, ptr %93, i64 %88
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %113, label %89, !llvm.loop !61

99:                                               ; preds = %89, %99
  %100 = phi i64 [ 0, %89 ], [ %111, %99 ]
  %101 = phi i32 [ %91, %89 ], [ %110, %99 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %93, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !45
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %104, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = add nsw i32 %109, %101
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %94, label %99, !llvm.loop !62

113:                                              ; preds = %94
  %114 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %110, ptr %114, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %14 ]
  %12 = phi ptr [ %0, %7 ], [ %15, %14 ]
  %13 = phi ptr [ %1, %7 ], [ %16, %14 ]
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %12, i64 16
  %16 = getelementptr inbounds i8, ptr %13, i64 %8
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %33, label %9, !llvm.loop !63

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %31, %19 ]
  %21 = phi i32 [ %11, %9 ], [ %30, %19 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %13, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %14, label %19, !llvm.loop !64

33:                                               ; preds = %14
  store i32 %30, ptr %6, align 4, !tbaa !71
  %34 = sext i32 %5 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i32 [ 0, %33 ], [ %43, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %56, %40 ]
  %38 = phi ptr [ %0, %33 ], [ %41, %40 ]
  %39 = phi ptr [ %2, %33 ], [ %42, %40 ]
  br label %45

40:                                               ; preds = %45
  %41 = getelementptr inbounds i8, ptr %38, i64 16
  %42 = getelementptr inbounds i8, ptr %39, i64 %34
  %43 = add nuw nsw i32 %36, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %59, label %35, !llvm.loop !63

45:                                               ; preds = %35, %45
  %46 = phi i64 [ 0, %35 ], [ %57, %45 ]
  %47 = phi i32 [ %37, %35 ], [ %56, %45 ]
  %48 = getelementptr inbounds i8, ptr %38, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !45
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = add nsw i32 %55, %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %40, label %45, !llvm.loop !64

59:                                               ; preds = %40
  %60 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %56, ptr %60, align 4, !tbaa !71
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %59, %67
  %63 = phi i32 [ 0, %59 ], [ %70, %67 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %67 ]
  %65 = phi ptr [ %0, %59 ], [ %68, %67 ]
  %66 = phi ptr [ %3, %59 ], [ %69, %67 ]
  br label %72

67:                                               ; preds = %72
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = getelementptr inbounds i8, ptr %66, i64 %61
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %86, label %62, !llvm.loop !63

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %84, %72 ]
  %74 = phi i32 [ %64, %62 ], [ %83, %72 ]
  %75 = getelementptr inbounds i8, ptr %65, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %66, i64 %73
  %79 = load i8, ptr %78, align 1, !tbaa !45
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %77, %80
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true)
  %83 = add nsw i32 %82, %74
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, 8
  br i1 %85, label %67, label %72, !llvm.loop !64

86:                                               ; preds = %67
  %87 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %83, ptr %87, align 4, !tbaa !71
  %88 = sext i32 %5 to i64
  br label %89

89:                                               ; preds = %86, %94
  %90 = phi i32 [ 0, %86 ], [ %97, %94 ]
  %91 = phi i32 [ 0, %86 ], [ %110, %94 ]
  %92 = phi ptr [ %0, %86 ], [ %95, %94 ]
  %93 = phi ptr [ %4, %86 ], [ %96, %94 ]
  br label %99

94:                                               ; preds = %99
  %95 = getelementptr inbounds i8, ptr %92, i64 16
  %96 = getelementptr inbounds i8, ptr %93, i64 %88
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %113, label %89, !llvm.loop !63

99:                                               ; preds = %89, %99
  %100 = phi i64 [ 0, %89 ], [ %111, %99 ]
  %101 = phi i32 [ %91, %89 ], [ %110, %99 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %93, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !45
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %104, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = add nsw i32 %109, %101
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %94, label %99, !llvm.loop !64

113:                                              ; preds = %94
  %114 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %110, ptr %114, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %14 ]
  %12 = phi ptr [ %0, %7 ], [ %15, %14 ]
  %13 = phi ptr [ %1, %7 ], [ %16, %14 ]
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %12, i64 16
  %16 = getelementptr inbounds i8, ptr %13, i64 %8
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %33, label %9, !llvm.loop !65

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %31, %19 ]
  %21 = phi i32 [ %11, %9 ], [ %30, %19 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %13, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %14, label %19, !llvm.loop !66

33:                                               ; preds = %14
  store i32 %30, ptr %6, align 4, !tbaa !71
  %34 = sext i32 %5 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i32 [ 0, %33 ], [ %43, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %56, %40 ]
  %38 = phi ptr [ %0, %33 ], [ %41, %40 ]
  %39 = phi ptr [ %2, %33 ], [ %42, %40 ]
  br label %45

40:                                               ; preds = %45
  %41 = getelementptr inbounds i8, ptr %38, i64 16
  %42 = getelementptr inbounds i8, ptr %39, i64 %34
  %43 = add nuw nsw i32 %36, 1
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %59, label %35, !llvm.loop !65

45:                                               ; preds = %35, %45
  %46 = phi i64 [ 0, %35 ], [ %57, %45 ]
  %47 = phi i32 [ %37, %35 ], [ %56, %45 ]
  %48 = getelementptr inbounds i8, ptr %38, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !45
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = add nsw i32 %55, %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %40, label %45, !llvm.loop !66

59:                                               ; preds = %40
  %60 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %56, ptr %60, align 4, !tbaa !71
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %59, %67
  %63 = phi i32 [ 0, %59 ], [ %70, %67 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %67 ]
  %65 = phi ptr [ %0, %59 ], [ %68, %67 ]
  %66 = phi ptr [ %3, %59 ], [ %69, %67 ]
  br label %72

67:                                               ; preds = %72
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = getelementptr inbounds i8, ptr %66, i64 %61
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %86, label %62, !llvm.loop !65

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %84, %72 ]
  %74 = phi i32 [ %64, %62 ], [ %83, %72 ]
  %75 = getelementptr inbounds i8, ptr %65, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %66, i64 %73
  %79 = load i8, ptr %78, align 1, !tbaa !45
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %77, %80
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true)
  %83 = add nsw i32 %82, %74
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, 8
  br i1 %85, label %67, label %72, !llvm.loop !66

86:                                               ; preds = %67
  %87 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %83, ptr %87, align 4, !tbaa !71
  %88 = sext i32 %5 to i64
  br label %89

89:                                               ; preds = %86, %94
  %90 = phi i32 [ 0, %86 ], [ %97, %94 ]
  %91 = phi i32 [ 0, %86 ], [ %110, %94 ]
  %92 = phi ptr [ %0, %86 ], [ %95, %94 ]
  %93 = phi ptr [ %4, %86 ], [ %96, %94 ]
  br label %99

94:                                               ; preds = %99
  %95 = getelementptr inbounds i8, ptr %92, i64 16
  %96 = getelementptr inbounds i8, ptr %93, i64 %88
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %113, label %89, !llvm.loop !65

99:                                               ; preds = %89, %99
  %100 = phi i64 [ 0, %89 ], [ %111, %99 ]
  %101 = phi i32 [ %91, %89 ], [ %110, %99 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %93, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !45
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %104, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = add nsw i32 %109, %101
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %94, label %99, !llvm.loop !66

113:                                              ; preds = %94
  %114 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %110, ptr %114, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %14 ]
  %12 = phi ptr [ %0, %7 ], [ %15, %14 ]
  %13 = phi ptr [ %1, %7 ], [ %16, %14 ]
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %12, i64 16
  %16 = getelementptr inbounds i8, ptr %13, i64 %8
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %33, label %9, !llvm.loop !67

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %31, %19 ]
  %21 = phi i32 [ %11, %9 ], [ %30, %19 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %13, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %14, label %19, !llvm.loop !68

33:                                               ; preds = %14
  store i32 %30, ptr %6, align 4, !tbaa !71
  %34 = sext i32 %5 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i32 [ 0, %33 ], [ %43, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %56, %40 ]
  %38 = phi ptr [ %0, %33 ], [ %41, %40 ]
  %39 = phi ptr [ %2, %33 ], [ %42, %40 ]
  br label %45

40:                                               ; preds = %45
  %41 = getelementptr inbounds i8, ptr %38, i64 16
  %42 = getelementptr inbounds i8, ptr %39, i64 %34
  %43 = add nuw nsw i32 %36, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %59, label %35, !llvm.loop !67

45:                                               ; preds = %35, %45
  %46 = phi i64 [ 0, %35 ], [ %57, %45 ]
  %47 = phi i32 [ %37, %35 ], [ %56, %45 ]
  %48 = getelementptr inbounds i8, ptr %38, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !45
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = add nsw i32 %55, %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %40, label %45, !llvm.loop !68

59:                                               ; preds = %40
  %60 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %56, ptr %60, align 4, !tbaa !71
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %59, %67
  %63 = phi i32 [ 0, %59 ], [ %70, %67 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %67 ]
  %65 = phi ptr [ %0, %59 ], [ %68, %67 ]
  %66 = phi ptr [ %3, %59 ], [ %69, %67 ]
  br label %72

67:                                               ; preds = %72
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = getelementptr inbounds i8, ptr %66, i64 %61
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %86, label %62, !llvm.loop !67

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %84, %72 ]
  %74 = phi i32 [ %64, %62 ], [ %83, %72 ]
  %75 = getelementptr inbounds i8, ptr %65, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %66, i64 %73
  %79 = load i8, ptr %78, align 1, !tbaa !45
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %77, %80
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true)
  %83 = add nsw i32 %82, %74
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %67, label %72, !llvm.loop !68

86:                                               ; preds = %67
  %87 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %83, ptr %87, align 4, !tbaa !71
  %88 = sext i32 %5 to i64
  br label %89

89:                                               ; preds = %86, %94
  %90 = phi i32 [ 0, %86 ], [ %97, %94 ]
  %91 = phi i32 [ 0, %86 ], [ %110, %94 ]
  %92 = phi ptr [ %0, %86 ], [ %95, %94 ]
  %93 = phi ptr [ %4, %86 ], [ %96, %94 ]
  br label %99

94:                                               ; preds = %99
  %95 = getelementptr inbounds i8, ptr %92, i64 16
  %96 = getelementptr inbounds i8, ptr %93, i64 %88
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %113, label %89, !llvm.loop !67

99:                                               ; preds = %89, %99
  %100 = phi i64 [ 0, %89 ], [ %111, %99 ]
  %101 = phi i32 [ %91, %89 ], [ %110, %99 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %93, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !45
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %104, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = add nsw i32 %109, %101
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, 4
  br i1 %112, label %94, label %99, !llvm.loop !68

113:                                              ; preds = %94
  %114 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %110, ptr %114, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %14 ]
  %12 = phi ptr [ %0, %7 ], [ %15, %14 ]
  %13 = phi ptr [ %1, %7 ], [ %16, %14 ]
  br label %19

14:                                               ; preds = %19
  %15 = getelementptr inbounds i8, ptr %12, i64 16
  %16 = getelementptr inbounds i8, ptr %13, i64 %8
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %33, label %9, !llvm.loop !69

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %31, %19 ]
  %21 = phi i32 [ %11, %9 ], [ %30, %19 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %13, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %14, label %19, !llvm.loop !70

33:                                               ; preds = %14
  store i32 %30, ptr %6, align 4, !tbaa !71
  %34 = sext i32 %5 to i64
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i32 [ 0, %33 ], [ %43, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %56, %40 ]
  %38 = phi ptr [ %0, %33 ], [ %41, %40 ]
  %39 = phi ptr [ %2, %33 ], [ %42, %40 ]
  br label %45

40:                                               ; preds = %45
  %41 = getelementptr inbounds i8, ptr %38, i64 16
  %42 = getelementptr inbounds i8, ptr %39, i64 %34
  %43 = add nuw nsw i32 %36, 1
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %59, label %35, !llvm.loop !69

45:                                               ; preds = %35, %45
  %46 = phi i64 [ 0, %35 ], [ %57, %45 ]
  %47 = phi i32 [ %37, %35 ], [ %56, %45 ]
  %48 = getelementptr inbounds i8, ptr %38, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !45
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = add nsw i32 %55, %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %40, label %45, !llvm.loop !70

59:                                               ; preds = %40
  %60 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %56, ptr %60, align 4, !tbaa !71
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %59, %67
  %63 = phi i32 [ 0, %59 ], [ %70, %67 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %67 ]
  %65 = phi ptr [ %0, %59 ], [ %68, %67 ]
  %66 = phi ptr [ %3, %59 ], [ %69, %67 ]
  br label %72

67:                                               ; preds = %72
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = getelementptr inbounds i8, ptr %66, i64 %61
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %86, label %62, !llvm.loop !69

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %84, %72 ]
  %74 = phi i32 [ %64, %62 ], [ %83, %72 ]
  %75 = getelementptr inbounds i8, ptr %65, i64 %73
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, ptr %66, i64 %73
  %79 = load i8, ptr %78, align 1, !tbaa !45
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %77, %80
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true)
  %83 = add nsw i32 %82, %74
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %67, label %72, !llvm.loop !70

86:                                               ; preds = %67
  %87 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %83, ptr %87, align 4, !tbaa !71
  %88 = sext i32 %5 to i64
  br label %89

89:                                               ; preds = %86, %94
  %90 = phi i32 [ 0, %86 ], [ %97, %94 ]
  %91 = phi i32 [ 0, %86 ], [ %110, %94 ]
  %92 = phi ptr [ %0, %86 ], [ %95, %94 ]
  %93 = phi ptr [ %4, %86 ], [ %96, %94 ]
  br label %99

94:                                               ; preds = %99
  %95 = getelementptr inbounds i8, ptr %92, i64 16
  %96 = getelementptr inbounds i8, ptr %93, i64 %88
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %113, label %89, !llvm.loop !69

99:                                               ; preds = %89, %99
  %100 = phi i64 [ 0, %89 ], [ %111, %99 ]
  %101 = phi i32 [ %91, %89 ], [ %110, %99 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %93, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !45
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %104, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = add nsw i32 %109, %101
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, 4
  br i1 %112, label %94, label %99, !llvm.loop !70

113:                                              ; preds = %94
  %114 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %110, ptr %114, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %8, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %12, label %7, !llvm.loop !73

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %8, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %27, %27
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %13, label %18, !llvm.loop !74
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_16x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %8, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %12, label %7, !llvm.loop !75

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %8, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %27, %27
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %13, label %18, !llvm.loop !76
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %8, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %12, label %7, !llvm.loop !77

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %8, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %27, %27
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !78
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %8, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %12, label %7, !llvm.loop !79

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %8, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %27, %27
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !80
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %8, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %12, label %7, !llvm.loop !81

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %8, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %27, %27
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %13, label %18, !llvm.loop !82
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_4x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %8, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %12, label %7, !llvm.loop !83

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %8, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %27, %27
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %13, label %18, !llvm.loop !84
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %10 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %11 = phi ptr [ %2, %4 ], [ %15, %13 ]
  br label %18

12:                                               ; preds = %13
  ret i32 %29

13:                                               ; preds = %18
  %14 = getelementptr inbounds i8, ptr %8, i64 %5
  %15 = getelementptr inbounds i8, ptr %11, i64 %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %12, label %7, !llvm.loop !85

18:                                               ; preds = %7, %18
  %19 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %20 = phi i32 [ %10, %7 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %8, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %11, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %27, %27
  %29 = add nsw i32 %28, %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %13, label %18, !llvm.loop !86
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3), !range !87
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3), !range !87
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef %1, ptr noundef nonnull %14, i32 noundef %3), !range !87
  %16 = getelementptr inbounds i8, ptr %13, i64 %7
  %17 = getelementptr inbounds i8, ptr %14, i64 %10
  %18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %17, i32 noundef %3), !range !87
  %19 = shl nsw i32 %1, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = shl nsw i32 %3, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %2, i64 %23
  %25 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %21, i32 noundef %1, ptr noundef %24, i32 noundef %3), !range !87
  %26 = mul nsw i32 %1, 12
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = mul nsw i32 %3, 12
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  %32 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %28, i32 noundef %1, ptr noundef %31, i32 noundef %3), !range !87
  %33 = getelementptr inbounds i8, ptr %13, i64 %20
  %34 = getelementptr inbounds i8, ptr %14, i64 %23
  %35 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %33, i32 noundef %1, ptr noundef nonnull %34, i32 noundef %3), !range !87
  %36 = getelementptr inbounds i8, ptr %13, i64 %27
  %37 = getelementptr inbounds i8, ptr %14, i64 %30
  %38 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %36, i32 noundef %1, ptr noundef nonnull %37, i32 noundef %3), !range !87
  %39 = add nuw nsw i32 %12, %5
  %40 = add nuw nsw i32 %39, %15
  %41 = add nuw nsw i32 %40, %18
  %42 = add nuw nsw i32 %41, %25
  %43 = add nuw nsw i32 %42, %32
  %44 = add nuw nsw i32 %43, %35
  %45 = add nuw nsw i32 %44, %38
  ret i32 %45
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_16x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3), !range !87
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3), !range !87
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef %1, ptr noundef nonnull %14, i32 noundef %3), !range !87
  %16 = getelementptr inbounds i8, ptr %13, i64 %7
  %17 = getelementptr inbounds i8, ptr %14, i64 %10
  %18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %17, i32 noundef %3), !range !87
  %19 = add nuw nsw i32 %12, %5
  %20 = add nuw nsw i32 %19, %15
  %21 = add nuw nsw i32 %20, %18
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_8x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3), !range !87
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3), !range !87
  %13 = shl nsw i32 %1, 3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = shl nsw i32 %3, 3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  %19 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %15, i32 noundef %1, ptr noundef %18, i32 noundef %3), !range !87
  %20 = mul nsw i32 %1, 12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = mul nsw i32 %3, 12
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %2, i64 %24
  %26 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %22, i32 noundef %1, ptr noundef %25, i32 noundef %3), !range !87
  %27 = add nuw nsw i32 %12, %5
  %28 = add nuw nsw i32 %27, %19
  %29 = add nuw nsw i32 %28, %26
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3), !range !87
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3), !range !87
  %13 = add nuw nsw i32 %12, %5
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_8x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = alloca [4 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %86, %8 ]
  %10 = phi ptr [ %0, %4 ], [ %87, %8 ]
  %11 = phi ptr [ %2, %4 ], [ %88, %8 ]
  %12 = load i8, ptr %10, align 1, !tbaa !45
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr %11, align 1, !tbaa !45
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %13, %15
  %17 = getelementptr inbounds i8, ptr %10, i64 4
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %11, i64 4
  %21 = load i8, ptr %20, align 1, !tbaa !45
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %19, %22
  %24 = shl nsw i32 %23, 16
  %25 = add nsw i32 %24, %16
  %26 = getelementptr inbounds i8, ptr %10, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !45
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, ptr %11, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !45
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 %28, %31
  %33 = getelementptr inbounds i8, ptr %10, i64 5
  %34 = load i8, ptr %33, align 1, !tbaa !45
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %11, i64 5
  %37 = load i8, ptr %36, align 1, !tbaa !45
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %35, %38
  %40 = shl nsw i32 %39, 16
  %41 = add nsw i32 %40, %32
  %42 = getelementptr inbounds i8, ptr %10, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !45
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %11, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !45
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %44, %47
  %49 = getelementptr inbounds i8, ptr %10, i64 6
  %50 = load i8, ptr %49, align 1, !tbaa !45
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds i8, ptr %11, i64 6
  %53 = load i8, ptr %52, align 1, !tbaa !45
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %51, %54
  %56 = shl nsw i32 %55, 16
  %57 = add nsw i32 %56, %48
  %58 = getelementptr inbounds i8, ptr %10, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !45
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds i8, ptr %11, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !45
  %63 = zext i8 %62 to i32
  %64 = sub nsw i32 %60, %63
  %65 = getelementptr inbounds i8, ptr %10, i64 7
  %66 = load i8, ptr %65, align 1, !tbaa !45
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds i8, ptr %11, i64 7
  %69 = load i8, ptr %68, align 1, !tbaa !45
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %67, %70
  %72 = shl nsw i32 %71, 16
  %73 = add nsw i32 %72, %64
  %74 = add nsw i32 %41, %25
  %75 = sub nsw i32 %25, %41
  %76 = add nsw i32 %73, %57
  %77 = sub nsw i32 %57, %73
  %78 = add nsw i32 %76, %74
  %79 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %9
  store i32 %78, ptr %79, align 16, !tbaa !71
  %80 = sub nsw i32 %74, %76
  %81 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 2
  store i32 %80, ptr %81, align 8, !tbaa !71
  %82 = add nsw i32 %77, %75
  %83 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 1
  store i32 %82, ptr %83, align 4, !tbaa !71
  %84 = sub nsw i32 %75, %77
  %85 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 3
  store i32 %84, ptr %85, align 4, !tbaa !71
  %86 = add nuw nsw i64 %9, 1
  %87 = getelementptr inbounds i8, ptr %10, i64 %6
  %88 = getelementptr inbounds i8, ptr %11, i64 %7
  %89 = icmp eq i64 %86, 4
  br i1 %89, label %95, label %8, !llvm.loop !88

90:                                               ; preds = %95
  %91 = and i32 %137, 65535
  %92 = lshr i32 %137, 16
  %93 = add nuw nsw i32 %91, %92
  %94 = lshr i32 %93, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %94

95:                                               ; preds = %8, %95
  %96 = phi i64 [ %138, %95 ], [ 0, %8 ]
  %97 = phi i32 [ %137, %95 ], [ 0, %8 ]
  %98 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %96
  %99 = load i32, ptr %98, align 4, !tbaa !71
  %100 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %96
  %101 = load i32, ptr %100, align 4, !tbaa !71
  %102 = add i32 %101, %99
  %103 = sub i32 %99, %101
  %104 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 2, i64 %96
  %105 = load i32, ptr %104, align 4, !tbaa !71
  %106 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 3, i64 %96
  %107 = load i32, ptr %106, align 4, !tbaa !71
  %108 = add i32 %107, %105
  %109 = sub i32 %105, %107
  %110 = add nsw i32 %108, %102
  %111 = sub nsw i32 %102, %108
  %112 = add nsw i32 %109, %103
  %113 = sub nsw i32 %103, %109
  %114 = lshr i32 %110, 15
  %115 = and i32 %114, 65537
  %116 = mul nuw i32 %115, 65535
  %117 = add i32 %116, %110
  %118 = xor i32 %117, %116
  %119 = lshr i32 %112, 15
  %120 = and i32 %119, 65537
  %121 = mul nuw i32 %120, 65535
  %122 = add i32 %121, %112
  %123 = xor i32 %122, %121
  %124 = lshr i32 %111, 15
  %125 = and i32 %124, 65537
  %126 = mul nuw i32 %125, 65535
  %127 = add i32 %126, %111
  %128 = xor i32 %127, %126
  %129 = lshr i32 %113, 15
  %130 = and i32 %129, 65537
  %131 = mul nuw i32 %130, 65535
  %132 = add i32 %131, %113
  %133 = xor i32 %132, %131
  %134 = add i32 %123, %97
  %135 = add i32 %134, %118
  %136 = add i32 %135, %128
  %137 = add i32 %136, %133
  %138 = add nuw nsw i64 %96, 1
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %90, label %95, !llvm.loop !89
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_4x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3), !range !90
  %6 = shl nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %8, i32 noundef %1, ptr noundef %11, i32 noundef %3), !range !90
  %13 = add nsw i32 %12, %5
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_satd_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = alloca [4 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
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
  store i32 %46, ptr %47, align 8, !tbaa !71
  %48 = sub nsw i32 %27, %45
  %49 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 %9, i64 1
  store i32 %48, ptr %49, align 4, !tbaa !71
  %50 = add nuw nsw i64 %9, 1
  %51 = getelementptr inbounds i8, ptr %10, i64 %6
  %52 = getelementptr inbounds i8, ptr %11, i64 %7
  %53 = icmp eq i64 %50, 4
  br i1 %53, label %56, label %8, !llvm.loop !91

54:                                               ; preds = %56
  %55 = ashr i32 %101, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 %55

56:                                               ; preds = %8, %56
  %57 = phi i64 [ %102, %56 ], [ 0, %8 ]
  %58 = phi i32 [ %101, %56 ], [ 0, %8 ]
  %59 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %57
  %60 = load i32, ptr %59, align 4, !tbaa !71
  %61 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 1, i64 %57
  %62 = load i32, ptr %61, align 4, !tbaa !71
  %63 = add i32 %62, %60
  %64 = sub i32 %60, %62
  %65 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 2, i64 %57
  %66 = load i32, ptr %65, align 4, !tbaa !71
  %67 = getelementptr inbounds [4 x [2 x i32]], ptr %5, i64 0, i64 3, i64 %57
  %68 = load i32, ptr %67, align 4, !tbaa !71
  %69 = add i32 %68, %66
  %70 = sub i32 %66, %68
  %71 = add nsw i32 %69, %63
  %72 = sub nsw i32 %63, %69
  %73 = add nsw i32 %70, %64
  %74 = sub nsw i32 %64, %70
  %75 = lshr i32 %71, 15
  %76 = and i32 %75, 65537
  %77 = mul nuw i32 %76, 65535
  %78 = add i32 %77, %71
  %79 = xor i32 %78, %77
  %80 = lshr i32 %73, 15
  %81 = and i32 %80, 65537
  %82 = mul nuw i32 %81, 65535
  %83 = add i32 %82, %73
  %84 = xor i32 %83, %82
  %85 = add i32 %79, %84
  %86 = lshr i32 %72, 15
  %87 = and i32 %86, 65537
  %88 = mul nuw i32 %87, 65535
  %89 = add i32 %88, %72
  %90 = xor i32 %89, %88
  %91 = add i32 %85, %90
  %92 = lshr i32 %74, 15
  %93 = and i32 %92, 65537
  %94 = mul nuw i32 %93, 65535
  %95 = add i32 %94, %74
  %96 = xor i32 %95, %94
  %97 = add i32 %91, %96
  %98 = and i32 %97, 65535
  %99 = lshr i32 %97, 16
  %100 = add i32 %99, %58
  %101 = add i32 %100, %98
  %102 = add nuw nsw i64 %57, 1
  %103 = icmp eq i64 %57, 0
  br i1 %103, label %56, label %54, !llvm.loop !92
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4), !range !93
  store i32 %7, ptr %5, align 4, !tbaa !71
  %8 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4), !range !93
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !71
  %10 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4), !range !93
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4), !range !87
  %8 = getelementptr inbounds i8, ptr %0, i64 64
  %9 = shl nsw i32 %4, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %11, i32 noundef %4), !range !87
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  %15 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef 16, ptr noundef nonnull %14, i32 noundef %4), !range !87
  %16 = getelementptr inbounds i8, ptr %0, i64 72
  %17 = getelementptr inbounds i8, ptr %14, i64 %10
  %18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %16, i32 noundef 16, ptr noundef nonnull %17, i32 noundef %4), !range !87
  %19 = add nuw nsw i32 %12, %7
  %20 = add nuw nsw i32 %19, %15
  %21 = add nuw nsw i32 %20, %18
  store i32 %21, ptr %5, align 4, !tbaa !71
  %22 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4), !range !87
  %23 = getelementptr inbounds i8, ptr %2, i64 %10
  %24 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %23, i32 noundef %4), !range !87
  %25 = getelementptr inbounds i8, ptr %2, i64 8
  %26 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef 16, ptr noundef nonnull %25, i32 noundef %4), !range !87
  %27 = getelementptr inbounds i8, ptr %25, i64 %10
  %28 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %16, i32 noundef 16, ptr noundef nonnull %27, i32 noundef %4), !range !87
  %29 = add nuw nsw i32 %24, %22
  %30 = add nuw nsw i32 %29, %26
  %31 = add nuw nsw i32 %30, %28
  %32 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %31, ptr %32, align 4, !tbaa !71
  %33 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4), !range !87
  %34 = getelementptr inbounds i8, ptr %3, i64 %10
  %35 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %34, i32 noundef %4), !range !87
  %36 = getelementptr inbounds i8, ptr %3, i64 8
  %37 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef 16, ptr noundef nonnull %36, i32 noundef %4), !range !87
  %38 = getelementptr inbounds i8, ptr %36, i64 %10
  %39 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %16, i32 noundef 16, ptr noundef nonnull %38, i32 noundef %4), !range !87
  %40 = add nuw nsw i32 %35, %33
  %41 = add nuw nsw i32 %40, %37
  %42 = add nuw nsw i32 %41, %39
  %43 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %42, ptr %43, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4), !range !87
  %8 = getelementptr inbounds i8, ptr %0, i64 64
  %9 = shl nsw i32 %4, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %11, i32 noundef %4), !range !87
  %13 = getelementptr inbounds i8, ptr %0, i64 128
  %14 = shl nsw i32 %4, 3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef 16, ptr noundef %16, i32 noundef %4), !range !87
  %18 = getelementptr inbounds i8, ptr %0, i64 192
  %19 = mul nsw i32 %4, 12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %18, i32 noundef 16, ptr noundef %21, i32 noundef %4), !range !87
  %23 = add nuw nsw i32 %12, %7
  %24 = add nuw nsw i32 %23, %17
  %25 = add nuw nsw i32 %24, %22
  store i32 %25, ptr %5, align 4, !tbaa !71
  %26 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4), !range !87
  %27 = getelementptr inbounds i8, ptr %2, i64 %10
  %28 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %27, i32 noundef %4), !range !87
  %29 = getelementptr inbounds i8, ptr %2, i64 %15
  %30 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef 16, ptr noundef %29, i32 noundef %4), !range !87
  %31 = getelementptr inbounds i8, ptr %2, i64 %20
  %32 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %18, i32 noundef 16, ptr noundef %31, i32 noundef %4), !range !87
  %33 = add nuw nsw i32 %28, %26
  %34 = add nuw nsw i32 %33, %30
  %35 = add nuw nsw i32 %34, %32
  %36 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %35, ptr %36, align 4, !tbaa !71
  %37 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4), !range !87
  %38 = getelementptr inbounds i8, ptr %3, i64 %10
  %39 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %38, i32 noundef %4), !range !87
  %40 = getelementptr inbounds i8, ptr %3, i64 %15
  %41 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %13, i32 noundef 16, ptr noundef %40, i32 noundef %4), !range !87
  %42 = getelementptr inbounds i8, ptr %3, i64 %20
  %43 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %18, i32 noundef 16, ptr noundef %42, i32 noundef %4), !range !87
  %44 = add nuw nsw i32 %39, %37
  %45 = add nuw nsw i32 %44, %41
  %46 = add nuw nsw i32 %45, %43
  %47 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %46, ptr %47, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4), !range !87
  %8 = getelementptr inbounds i8, ptr %0, i64 64
  %9 = shl nsw i32 %4, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %11, i32 noundef %4), !range !87
  %13 = add nuw nsw i32 %12, %7
  store i32 %13, ptr %5, align 4, !tbaa !71
  %14 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4), !range !87
  %15 = getelementptr inbounds i8, ptr %2, i64 %10
  %16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %15, i32 noundef %4), !range !87
  %17 = add nuw nsw i32 %16, %14
  %18 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !71
  %19 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4), !range !87
  %20 = getelementptr inbounds i8, ptr %3, i64 %10
  %21 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %20, i32 noundef %4), !range !87
  %22 = add nuw nsw i32 %21, %19
  %23 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %22, ptr %23, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4), !range !87
  store i32 %7, ptr %5, align 4, !tbaa !71
  %8 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4), !range !87
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !71
  %10 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4), !range !87
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4), !range !90
  %8 = getelementptr inbounds i8, ptr %0, i64 64
  %9 = shl nsw i32 %4, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %11, i32 noundef %4), !range !90
  %13 = add nsw i32 %12, %7
  store i32 %13, ptr %5, align 4, !tbaa !71
  %14 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4), !range !90
  %15 = getelementptr inbounds i8, ptr %2, i64 %10
  %16 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %15, i32 noundef %4), !range !90
  %17 = add nsw i32 %16, %14
  %18 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !71
  %19 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4), !range !90
  %20 = getelementptr inbounds i8, ptr %3, i64 %10
  %21 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %20, i32 noundef %4), !range !90
  %22 = add nsw i32 %21, %19
  %23 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %22, ptr %23, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x3_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %4), !range !90
  store i32 %7, ptr %5, align 4, !tbaa !71
  %8 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %4), !range !90
  %9 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !71
  %10 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %4), !range !90
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %10, ptr %11, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5), !range !93
  store i32 %8, ptr %6, align 4, !tbaa !71
  %9 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5), !range !93
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !71
  %11 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5), !range !93
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !71
  %13 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5), !range !93
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_16x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5), !range !87
  %9 = getelementptr inbounds i8, ptr %0, i64 64
  %10 = shl nsw i32 %5, 2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %12, i32 noundef %5), !range !87
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = getelementptr inbounds i8, ptr %1, i64 8
  %16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef nonnull %15, i32 noundef %5), !range !87
  %17 = getelementptr inbounds i8, ptr %0, i64 72
  %18 = getelementptr inbounds i8, ptr %15, i64 %11
  %19 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %17, i32 noundef 16, ptr noundef nonnull %18, i32 noundef %5), !range !87
  %20 = add nuw nsw i32 %13, %8
  %21 = add nuw nsw i32 %20, %16
  %22 = add nuw nsw i32 %21, %19
  store i32 %22, ptr %6, align 4, !tbaa !71
  %23 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5), !range !87
  %24 = getelementptr inbounds i8, ptr %2, i64 %11
  %25 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %24, i32 noundef %5), !range !87
  %26 = getelementptr inbounds i8, ptr %2, i64 8
  %27 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef nonnull %26, i32 noundef %5), !range !87
  %28 = getelementptr inbounds i8, ptr %26, i64 %11
  %29 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %17, i32 noundef 16, ptr noundef nonnull %28, i32 noundef %5), !range !87
  %30 = add nuw nsw i32 %25, %23
  %31 = add nuw nsw i32 %30, %27
  %32 = add nuw nsw i32 %31, %29
  %33 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %32, ptr %33, align 4, !tbaa !71
  %34 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5), !range !87
  %35 = getelementptr inbounds i8, ptr %3, i64 %11
  %36 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %35, i32 noundef %5), !range !87
  %37 = getelementptr inbounds i8, ptr %3, i64 8
  %38 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef nonnull %37, i32 noundef %5), !range !87
  %39 = getelementptr inbounds i8, ptr %37, i64 %11
  %40 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %17, i32 noundef 16, ptr noundef nonnull %39, i32 noundef %5), !range !87
  %41 = add nuw nsw i32 %36, %34
  %42 = add nuw nsw i32 %41, %38
  %43 = add nuw nsw i32 %42, %40
  %44 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %43, ptr %44, align 4, !tbaa !71
  %45 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5), !range !87
  %46 = getelementptr inbounds i8, ptr %4, i64 %11
  %47 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %46, i32 noundef %5), !range !87
  %48 = getelementptr inbounds i8, ptr %4, i64 8
  %49 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef nonnull %48, i32 noundef %5), !range !87
  %50 = getelementptr inbounds i8, ptr %48, i64 %11
  %51 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %17, i32 noundef 16, ptr noundef nonnull %50, i32 noundef %5), !range !87
  %52 = add nuw nsw i32 %47, %45
  %53 = add nuw nsw i32 %52, %49
  %54 = add nuw nsw i32 %53, %51
  %55 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %54, ptr %55, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_8x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5), !range !87
  %9 = getelementptr inbounds i8, ptr %0, i64 64
  %10 = shl nsw i32 %5, 2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %12, i32 noundef %5), !range !87
  %14 = getelementptr inbounds i8, ptr %0, i64 128
  %15 = shl nsw i32 %5, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %1, i64 %16
  %18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef %17, i32 noundef %5), !range !87
  %19 = getelementptr inbounds i8, ptr %0, i64 192
  %20 = mul nsw i32 %5, 12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %19, i32 noundef 16, ptr noundef %22, i32 noundef %5), !range !87
  %24 = add nuw nsw i32 %13, %8
  %25 = add nuw nsw i32 %24, %18
  %26 = add nuw nsw i32 %25, %23
  store i32 %26, ptr %6, align 4, !tbaa !71
  %27 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5), !range !87
  %28 = getelementptr inbounds i8, ptr %2, i64 %11
  %29 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %28, i32 noundef %5), !range !87
  %30 = getelementptr inbounds i8, ptr %2, i64 %16
  %31 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef %30, i32 noundef %5), !range !87
  %32 = getelementptr inbounds i8, ptr %2, i64 %21
  %33 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %19, i32 noundef 16, ptr noundef %32, i32 noundef %5), !range !87
  %34 = add nuw nsw i32 %29, %27
  %35 = add nuw nsw i32 %34, %31
  %36 = add nuw nsw i32 %35, %33
  %37 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !71
  %38 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5), !range !87
  %39 = getelementptr inbounds i8, ptr %3, i64 %11
  %40 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %39, i32 noundef %5), !range !87
  %41 = getelementptr inbounds i8, ptr %3, i64 %16
  %42 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef %41, i32 noundef %5), !range !87
  %43 = getelementptr inbounds i8, ptr %3, i64 %21
  %44 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %19, i32 noundef 16, ptr noundef %43, i32 noundef %5), !range !87
  %45 = add nuw nsw i32 %40, %38
  %46 = add nuw nsw i32 %45, %42
  %47 = add nuw nsw i32 %46, %44
  %48 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %47, ptr %48, align 4, !tbaa !71
  %49 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5), !range !87
  %50 = getelementptr inbounds i8, ptr %4, i64 %11
  %51 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %50, i32 noundef %5), !range !87
  %52 = getelementptr inbounds i8, ptr %4, i64 %16
  %53 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %14, i32 noundef 16, ptr noundef %52, i32 noundef %5), !range !87
  %54 = getelementptr inbounds i8, ptr %4, i64 %21
  %55 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %19, i32 noundef 16, ptr noundef %54, i32 noundef %5), !range !87
  %56 = add nuw nsw i32 %51, %49
  %57 = add nuw nsw i32 %56, %53
  %58 = add nuw nsw i32 %57, %55
  %59 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %58, ptr %59, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5), !range !87
  %9 = getelementptr inbounds i8, ptr %0, i64 64
  %10 = shl nsw i32 %5, 2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %12, i32 noundef %5), !range !87
  %14 = add nuw nsw i32 %13, %8
  store i32 %14, ptr %6, align 4, !tbaa !71
  %15 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5), !range !87
  %16 = getelementptr inbounds i8, ptr %2, i64 %11
  %17 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %16, i32 noundef %5), !range !87
  %18 = add nuw nsw i32 %17, %15
  %19 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %18, ptr %19, align 4, !tbaa !71
  %20 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5), !range !87
  %21 = getelementptr inbounds i8, ptr %3, i64 %11
  %22 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %21, i32 noundef %5), !range !87
  %23 = add nuw nsw i32 %22, %20
  %24 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %23, ptr %24, align 4, !tbaa !71
  %25 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5), !range !87
  %26 = getelementptr inbounds i8, ptr %4, i64 %11
  %27 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %26, i32 noundef %5), !range !87
  %28 = add nuw nsw i32 %27, %25
  %29 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %28, ptr %29, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_8x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5), !range !87
  store i32 %8, ptr %6, align 4, !tbaa !71
  %9 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5), !range !87
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !71
  %11 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5), !range !87
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !71
  %13 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5), !range !87
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_4x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5), !range !90
  %9 = getelementptr inbounds i8, ptr %0, i64 64
  %10 = shl nsw i32 %5, 2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %12, i32 noundef %5), !range !90
  %14 = add nsw i32 %13, %8
  store i32 %14, ptr %6, align 4, !tbaa !71
  %15 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5), !range !90
  %16 = getelementptr inbounds i8, ptr %2, i64 %11
  %17 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %16, i32 noundef %5), !range !90
  %18 = add nsw i32 %17, %15
  %19 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %18, ptr %19, align 4, !tbaa !71
  %20 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5), !range !90
  %21 = getelementptr inbounds i8, ptr %3, i64 %11
  %22 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %21, i32 noundef %5), !range !90
  %23 = add nsw i32 %22, %20
  %24 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %23, ptr %24, align 4, !tbaa !71
  %25 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5), !range !90
  %26 = getelementptr inbounds i8, ptr %4, i64 %11
  %27 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %26, i32 noundef %5), !range !90
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %28, ptr %29, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_satd_x4_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) #5 {
  %8 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %1, i32 noundef %5), !range !90
  store i32 %8, ptr %6, align 4, !tbaa !71
  %9 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %5), !range !90
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !71
  %11 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %3, i32 noundef %5), !range !90
  %12 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !71
  %13 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %0, i32 noundef 16, ptr noundef %4, i32 noundef %5), !range !90
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 %13, ptr %14, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1), !range !94
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %4, i32 noundef %1), !range !94
  %6 = add i64 %5, %3
  %7 = shl nsw i32 %1, 3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %9, i32 noundef %1), !range !94
  %11 = add i64 %6, %10
  %12 = getelementptr inbounds i8, ptr %9, i64 8
  %13 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %12, i32 noundef %1), !range !94
  %14 = add i64 %11, %13
  %15 = lshr i64 %14, 2
  %16 = and i64 %15, 4611686014132420608
  %17 = lshr i64 %14, 1
  %18 = and i64 %17, 2147483647
  %19 = or disjoint i64 %16, %18
  ret i64 %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_16x8(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1), !range !94
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %4, i32 noundef %1), !range !94
  %6 = add i64 %5, %3
  %7 = lshr i64 %6, 2
  %8 = and i64 %7, 4611686014132420608
  %9 = lshr i64 %6, 1
  %10 = and i64 %9, 2147483647
  %11 = or disjoint i64 %8, %10
  ret i64 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_8x16(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1), !range !94
  %4 = shl nsw i32 %1, 3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %6, i32 noundef %1), !range !94
  %8 = add i64 %7, %3
  %9 = lshr i64 %8, 2
  %10 = and i64 %9, 4611686014132420608
  %11 = lshr i64 %8, 1
  %12 = and i64 %11, 2147483647
  %13 = or disjoint i64 %10, %12
  ret i64 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_hadamard_ac_8x8(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %0, i32 noundef %1), !range !94
  %4 = lshr i64 %3, 2
  %5 = and i64 %4, 4611686014132420608
  %6 = lshr i64 %3, 1
  %7 = and i64 %6, 2147483647
  %8 = or disjoint i64 %5, %7
  ret i64 %8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #5 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 4, !tbaa !71
  %11 = getelementptr inbounds i32, ptr %0, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !71
  %13 = getelementptr inbounds i32, ptr %0, i64 2
  %14 = load i32, ptr %13, align 4, !tbaa !71
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 3
  %17 = load i32, ptr %16, align 4, !tbaa !71
  %18 = add nsw i32 %2, 8
  %19 = sext i32 %18 to i64
  %20 = zext nneg i32 %5 to i64
  br label %23

21:                                               ; preds = %59, %7
  %22 = phi i32 [ 0, %7 ], [ %60, %59 ]
  ret i32 %22

23:                                               ; preds = %9, %59
  %24 = phi i64 [ 0, %9 ], [ %61, %59 ]
  %25 = phi ptr [ %1, %9 ], [ %62, %59 ]
  %26 = phi i32 [ 0, %9 ], [ %60, %59 ]
  %27 = load i16, ptr %25, align 2, !tbaa !95
  %28 = zext i16 %27 to i32
  %29 = sub nsw i32 %10, %28
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = getelementptr inbounds i16, ptr %25, i64 8
  %32 = load i16, ptr %31, align 2, !tbaa !95
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %12, %33
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = add nuw nsw i32 %35, %30
  %37 = getelementptr inbounds i16, ptr %25, i64 %15
  %38 = load i16, ptr %37, align 2, !tbaa !95
  %39 = zext i16 %38 to i32
  %40 = sub nsw i32 %14, %39
  %41 = tail call i32 @llvm.abs.i32(i32 %40, i1 true)
  %42 = add nuw nsw i32 %36, %41
  %43 = getelementptr inbounds i16, ptr %25, i64 %19
  %44 = load i16, ptr %43, align 2, !tbaa !95
  %45 = zext i16 %44 to i32
  %46 = sub nsw i32 %17, %45
  %47 = tail call i32 @llvm.abs.i32(i32 %46, i1 true)
  %48 = getelementptr inbounds i16, ptr %3, i64 %24
  %49 = load i16, ptr %48, align 2, !tbaa !95
  %50 = zext i16 %49 to i32
  %51 = add nuw i32 %42, %50
  %52 = add nuw i32 %51, %47
  %53 = icmp slt i32 %52, %6
  br i1 %53, label %54, label %59

54:                                               ; preds = %23
  %55 = trunc i64 %24 to i16
  %56 = add nsw i32 %26, 1
  %57 = sext i32 %26 to i64
  %58 = getelementptr inbounds i16, ptr %4, i64 %57
  store i16 %55, ptr %58, align 2, !tbaa !95
  br label %59

59:                                               ; preds = %54, %23
  %60 = phi i32 [ %56, %54 ], [ %26, %23 ]
  %61 = add nuw nsw i64 %24, 1
  %62 = getelementptr inbounds i16, ptr %25, i64 1
  %63 = icmp eq i64 %61, %20
  br i1 %63, label %21, label %23, !llvm.loop !97
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #5 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 4, !tbaa !71
  %11 = getelementptr inbounds i32, ptr %0, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !71
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
  %21 = load i16, ptr %19, align 2, !tbaa !95
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %10, %22
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = getelementptr inbounds i16, ptr %19, i64 %13
  %26 = load i16, ptr %25, align 2, !tbaa !95
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %12, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = getelementptr inbounds i16, ptr %3, i64 %18
  %31 = load i16, ptr %30, align 2, !tbaa !95
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
  store i16 %37, ptr %40, align 2, !tbaa !95
  br label %41

41:                                               ; preds = %36, %17
  %42 = phi i32 [ %38, %36 ], [ %20, %17 ]
  %43 = add nuw nsw i64 %18, 1
  %44 = getelementptr inbounds i16, ptr %19, i64 1
  %45 = icmp eq i64 %43, %14
  br i1 %45, label %15, label %17, !llvm.loop !98
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #5 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 4, !tbaa !71
  %11 = zext nneg i32 %5 to i64
  br label %14

12:                                               ; preds = %32, %7
  %13 = phi i32 [ 0, %7 ], [ %33, %32 ]
  ret i32 %13

14:                                               ; preds = %9, %32
  %15 = phi i64 [ 0, %9 ], [ %34, %32 ]
  %16 = phi ptr [ %1, %9 ], [ %35, %32 ]
  %17 = phi i32 [ 0, %9 ], [ %33, %32 ]
  %18 = load i16, ptr %16, align 2, !tbaa !95
  %19 = zext i16 %18 to i32
  %20 = sub nsw i32 %10, %19
  %21 = tail call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = getelementptr inbounds i16, ptr %3, i64 %15
  %23 = load i16, ptr %22, align 2, !tbaa !95
  %24 = zext i16 %23 to i32
  %25 = add nuw nsw i32 %21, %24
  %26 = icmp slt i32 %25, %6
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = trunc i64 %15 to i16
  %29 = add nsw i32 %17, 1
  %30 = sext i32 %17 to i64
  %31 = getelementptr inbounds i16, ptr %4, i64 %30
  store i16 %28, ptr %31, align 2, !tbaa !95
  br label %32

32:                                               ; preds = %27, %14
  %33 = phi i32 [ %29, %27 ], [ %17, %14 ]
  %34 = add nuw nsw i64 %15, 1
  %35 = getelementptr inbounds i16, ptr %16, i64 1
  %36 = icmp eq i64 %34, %11
  br i1 %36, label %12, label %14, !llvm.loop !99
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sa8d_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call fastcc i32 @sa8d_8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = tail call fastcc i32 @sa8d_8x8(ptr noundef nonnull %6, i32 noundef %1, ptr noundef nonnull %7, i32 noundef %3)
  %9 = shl nsw i32 %1, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = shl nsw i32 %3, 3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  %15 = tail call fastcc i32 @sa8d_8x8(ptr noundef %11, i32 noundef %1, ptr noundef %14, i32 noundef %3)
  %16 = getelementptr inbounds i8, ptr %6, i64 %10
  %17 = getelementptr inbounds i8, ptr %7, i64 %13
  %18 = tail call fastcc i32 @sa8d_8x8(ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %17, i32 noundef %3)
  %19 = add i32 %5, 2
  %20 = add i32 %19, %8
  %21 = add i32 %20, %15
  %22 = add i32 %21, %18
  %23 = ashr i32 %22, 2
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sa8d_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call fastcc i32 @sa8d_8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = add nsw i32 %5, 2
  %7 = ashr i32 %6, 2
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_var_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %2, %14
  %5 = phi i32 [ 0, %2 ], [ %16, %14 ]
  %6 = phi i32 [ 0, %2 ], [ %27, %14 ]
  %7 = phi i32 [ 0, %2 ], [ %25, %14 ]
  %8 = phi ptr [ %0, %2 ], [ %15, %14 ]
  br label %18

9:                                                ; preds = %14
  %10 = zext i32 %25 to i64
  %11 = zext i32 %27 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  ret i64 %13

14:                                               ; preds = %18
  %15 = getelementptr inbounds i8, ptr %8, i64 %3
  %16 = add nuw nsw i32 %5, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %9, label %4, !llvm.loop !100

18:                                               ; preds = %4, %18
  %19 = phi i64 [ 0, %4 ], [ %28, %18 ]
  %20 = phi i32 [ %6, %4 ], [ %27, %18 ]
  %21 = phi i32 [ %7, %4 ], [ %25, %18 ]
  %22 = getelementptr inbounds i8, ptr %8, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = add i32 %21, %24
  %26 = mul nuw nsw i32 %24, %24
  %27 = add i32 %26, %20
  %28 = add nuw nsw i64 %19, 1
  %29 = icmp eq i64 %28, 16
  br i1 %29, label %14, label %18, !llvm.loop !101
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_var_8x8(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %2, %14
  %5 = phi i32 [ 0, %2 ], [ %16, %14 ]
  %6 = phi i32 [ 0, %2 ], [ %27, %14 ]
  %7 = phi i32 [ 0, %2 ], [ %25, %14 ]
  %8 = phi ptr [ %0, %2 ], [ %15, %14 ]
  br label %18

9:                                                ; preds = %14
  %10 = zext i32 %25 to i64
  %11 = zext i32 %27 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  ret i64 %13

14:                                               ; preds = %18
  %15 = getelementptr inbounds i8, ptr %8, i64 %3
  %16 = add nuw nsw i32 %5, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %9, label %4, !llvm.loop !102

18:                                               ; preds = %4, %18
  %19 = phi i64 [ 0, %4 ], [ %28, %18 ]
  %20 = phi i32 [ %6, %4 ], [ %27, %18 ]
  %21 = phi i32 [ %7, %4 ], [ %25, %18 ]
  %22 = getelementptr inbounds i8, ptr %8, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = add i32 %21, %24
  %26 = mul nuw nsw i32 %24, %24
  %27 = add i32 %26, %20
  %28 = add nuw nsw i64 %19, 1
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %14, label %18, !llvm.loop !103
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ssim_4x4x2_core(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #5 {
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %21
  %9 = phi i64 [ 0, %5 ], [ %28, %21 ]
  %10 = phi ptr [ %0, %5 ], [ %26, %21 ]
  %11 = phi ptr [ %2, %5 ], [ %27, %21 ]
  br label %13

12:                                               ; preds = %21
  ret void

13:                                               ; preds = %8, %30
  %14 = phi i64 [ 0, %8 ], [ %31, %30 ]
  %15 = phi i32 [ 0, %8 ], [ %54, %30 ]
  %16 = phi i32 [ 0, %8 ], [ %52, %30 ]
  %17 = phi i32 [ 0, %8 ], [ %48, %30 ]
  %18 = phi i32 [ 0, %8 ], [ %47, %30 ]
  %19 = mul nsw i64 %14, %6
  %20 = mul nsw i64 %14, %7
  br label %33

21:                                               ; preds = %30
  %22 = getelementptr inbounds [4 x i32], ptr %4, i64 %9
  store i32 %47, ptr %22, align 4, !tbaa !71
  %23 = getelementptr inbounds [4 x i32], ptr %4, i64 %9, i64 1
  store i32 %48, ptr %23, align 4, !tbaa !71
  %24 = getelementptr inbounds [4 x i32], ptr %4, i64 %9, i64 2
  store i32 %52, ptr %24, align 4, !tbaa !71
  %25 = getelementptr inbounds [4 x i32], ptr %4, i64 %9, i64 3
  store i32 %54, ptr %25, align 4, !tbaa !71
  %26 = getelementptr inbounds i8, ptr %10, i64 4
  %27 = getelementptr inbounds i8, ptr %11, i64 4
  %28 = add nuw nsw i64 %9, 1
  %29 = icmp eq i64 %9, 0
  br i1 %29, label %8, label %12, !llvm.loop !104

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %21, label %13, !llvm.loop !105

33:                                               ; preds = %13, %33
  %34 = phi i64 [ 0, %13 ], [ %55, %33 ]
  %35 = phi i32 [ %15, %13 ], [ %54, %33 ]
  %36 = phi i32 [ %16, %13 ], [ %52, %33 ]
  %37 = phi i32 [ %17, %13 ], [ %48, %33 ]
  %38 = phi i32 [ %18, %13 ], [ %47, %33 ]
  %39 = add nsw i64 %34, %19
  %40 = getelementptr inbounds i8, ptr %10, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !45
  %42 = zext i8 %41 to i32
  %43 = add nsw i64 %34, %20
  %44 = getelementptr inbounds i8, ptr %11, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !45
  %46 = zext i8 %45 to i32
  %47 = add i32 %38, %42
  %48 = add i32 %37, %46
  %49 = mul nuw nsw i32 %42, %42
  %50 = add i32 %49, %36
  %51 = mul nuw nsw i32 %46, %46
  %52 = add i32 %50, %51
  %53 = mul nuw nsw i32 %46, %42
  %54 = add i32 %53, %35
  %55 = add nuw nsw i64 %34, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %30, label %33, !llvm.loop !106
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal float @ssim_end4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %9

7:                                                ; preds = %9, %3
  %8 = phi float [ 0.000000e+00, %3 ], [ %79, %9 ]
  ret float %8

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %14, %9 ]
  %11 = phi float [ 0.000000e+00, %5 ], [ %79, %9 ]
  %12 = getelementptr inbounds [4 x i32], ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !71
  %14 = add nuw nsw i64 %10, 1
  %15 = getelementptr inbounds [4 x i32], ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !71
  %17 = add nsw i32 %16, %13
  %18 = getelementptr inbounds [4 x i32], ptr %1, i64 %10
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = add nsw i32 %17, %19
  %21 = getelementptr inbounds [4 x i32], ptr %1, i64 %14
  %22 = load i32, ptr %21, align 4, !tbaa !71
  %23 = add nsw i32 %20, %22
  %24 = getelementptr inbounds [4 x i32], ptr %0, i64 %10, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !71
  %26 = getelementptr inbounds [4 x i32], ptr %0, i64 %14, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !71
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds [4 x i32], ptr %1, i64 %10, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !71
  %31 = add nsw i32 %28, %30
  %32 = getelementptr inbounds [4 x i32], ptr %1, i64 %14, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !71
  %34 = add nsw i32 %31, %33
  %35 = getelementptr inbounds [4 x i32], ptr %0, i64 %10, i64 2
  %36 = load i32, ptr %35, align 4, !tbaa !71
  %37 = getelementptr inbounds [4 x i32], ptr %0, i64 %14, i64 2
  %38 = load i32, ptr %37, align 4, !tbaa !71
  %39 = add nsw i32 %38, %36
  %40 = getelementptr inbounds [4 x i32], ptr %1, i64 %10, i64 2
  %41 = load i32, ptr %40, align 4, !tbaa !71
  %42 = add nsw i32 %39, %41
  %43 = getelementptr inbounds [4 x i32], ptr %1, i64 %14, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !71
  %45 = add nsw i32 %42, %44
  %46 = getelementptr inbounds [4 x i32], ptr %0, i64 %10, i64 3
  %47 = load i32, ptr %46, align 4, !tbaa !71
  %48 = getelementptr inbounds [4 x i32], ptr %0, i64 %14, i64 3
  %49 = load i32, ptr %48, align 4, !tbaa !71
  %50 = add nsw i32 %49, %47
  %51 = getelementptr inbounds [4 x i32], ptr %1, i64 %10, i64 3
  %52 = load i32, ptr %51, align 4, !tbaa !71
  %53 = add nsw i32 %50, %52
  %54 = getelementptr inbounds [4 x i32], ptr %1, i64 %14, i64 3
  %55 = load i32, ptr %54, align 4, !tbaa !71
  %56 = add nsw i32 %53, %55
  %57 = shl nsw i32 %45, 6
  %58 = mul nsw i32 %23, %23
  %59 = mul nsw i32 %34, %34
  %60 = add nuw i32 %59, %58
  %61 = shl nsw i32 %23, 1
  %62 = mul nsw i32 %61, %34
  %63 = add nsw i32 %62, 416
  %64 = sitofp i32 %63 to float
  %65 = shl i32 %56, 7
  %66 = mul i32 %23, -2
  %67 = mul i32 %66, %34
  %68 = add i32 %67, 235963
  %69 = add i32 %68, %65
  %70 = sitofp i32 %69 to float
  %71 = fmul float %64, %70
  %72 = add nuw nsw i32 %60, 416
  %73 = sitofp i32 %72 to float
  %74 = sub i32 %57, %60
  %75 = add i32 %74, 235963
  %76 = sitofp i32 %75 to float
  %77 = fmul float %73, %76
  %78 = fdiv float %71, %77
  %79 = fadd float %11, %78
  %80 = icmp eq i64 %14, %6
  br i1 %80, label %7, label %9, !llvm.loop !107
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @pixel_var2_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #5 {
  %6 = sext i32 %1 to i64
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi ptr [ %0, %5 ], [ %19, %18 ]
  %10 = phi i32 [ 0, %5 ], [ %21, %18 ]
  %11 = phi i32 [ 0, %5 ], [ %36, %18 ]
  %12 = phi i32 [ 0, %5 ], [ %34, %18 ]
  %13 = phi ptr [ %2, %5 ], [ %20, %18 ]
  br label %23

14:                                               ; preds = %18
  %15 = mul i32 %34, %34
  %16 = lshr i32 %15, 6
  %17 = sub i32 %36, %16
  store i32 %36, ptr %4, align 4, !tbaa !71
  ret i32 %17

18:                                               ; preds = %23
  %19 = getelementptr inbounds i8, ptr %9, i64 %6
  %20 = getelementptr inbounds i8, ptr %13, i64 %7
  %21 = add nuw nsw i32 %10, 1
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %14, label %8, !llvm.loop !108

23:                                               ; preds = %8, %23
  %24 = phi i64 [ 0, %8 ], [ %37, %23 ]
  %25 = phi i32 [ %11, %8 ], [ %36, %23 ]
  %26 = phi i32 [ %12, %8 ], [ %34, %23 ]
  %27 = getelementptr inbounds i8, ptr %9, i64 %24
  %28 = load i8, ptr %27, align 1, !tbaa !45
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %13, i64 %24
  %31 = load i8, ptr %30, align 1, !tbaa !45
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %29, %32
  %34 = add i32 %33, %26
  %35 = mul nsw i32 %33, %33
  %36 = add i32 %35, %25
  %37 = add nuw nsw i64 %24, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %18, label %23, !llvm.loop !109
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @pixel_hadamard_ac(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
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
  store i32 %34, ptr %14, align 4, !tbaa !71
  %35 = sub nsw i32 %23, %33
  %36 = getelementptr inbounds i32, ptr %14, i64 4
  store i32 %35, ptr %36, align 4, !tbaa !71
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
  store i32 %57, ptr %58, align 4, !tbaa !71
  %59 = sub nsw i32 %46, %56
  %60 = getelementptr inbounds i32, ptr %14, i64 12
  store i32 %59, ptr %60, align 4, !tbaa !71
  %61 = add nuw nsw i32 %7, 1
  %62 = getelementptr inbounds i8, ptr %6, i64 %4
  %63 = icmp eq i32 %61, 8
  br i1 %63, label %64, label %5, !llvm.loop !110

64:                                               ; preds = %5, %64
  %65 = phi i64 [ %111, %64 ], [ 0, %5 ]
  %66 = phi i32 [ %110, %64 ], [ 0, %5 ]
  %67 = shl nuw nsw i64 %65, 2
  %68 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %67
  %69 = load i32, ptr %68, align 16, !tbaa !71
  %70 = or disjoint i64 %67, 1
  %71 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !71
  %73 = add i32 %72, %69
  %74 = sub i32 %69, %72
  %75 = or disjoint i64 %67, 2
  %76 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %75
  %77 = load i32, ptr %76, align 8, !tbaa !71
  %78 = or disjoint i64 %67, 3
  %79 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !71
  %81 = add i32 %80, %77
  %82 = sub i32 %77, %80
  %83 = add nsw i32 %81, %73
  %84 = sub nsw i32 %73, %81
  %85 = add nsw i32 %82, %74
  %86 = sub nsw i32 %74, %82
  store i32 %83, ptr %68, align 16, !tbaa !71
  store i32 %85, ptr %71, align 4, !tbaa !71
  store i32 %84, ptr %76, align 8, !tbaa !71
  store i32 %86, ptr %79, align 4, !tbaa !71
  %87 = lshr i32 %83, 15
  %88 = and i32 %87, 65537
  %89 = mul nuw i32 %88, 65535
  %90 = add i32 %89, %83
  %91 = xor i32 %90, %89
  %92 = lshr i32 %85, 15
  %93 = and i32 %92, 65537
  %94 = mul nuw i32 %93, 65535
  %95 = add i32 %94, %85
  %96 = xor i32 %95, %94
  %97 = lshr i32 %84, 15
  %98 = and i32 %97, 65537
  %99 = mul nuw i32 %98, 65535
  %100 = add i32 %99, %84
  %101 = xor i32 %100, %99
  %102 = lshr i32 %86, 15
  %103 = and i32 %102, 65537
  %104 = mul nuw i32 %103, 65535
  %105 = add i32 %104, %86
  %106 = xor i32 %105, %104
  %107 = add i32 %96, %66
  %108 = add i32 %107, %91
  %109 = add i32 %108, %101
  %110 = add i32 %109, %106
  %111 = add nuw nsw i64 %65, 1
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %137, label %64, !llvm.loop !111

113:                                              ; preds = %137
  %114 = load i32, ptr %3, align 16, !tbaa !71
  %115 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 8
  %116 = load i32, ptr %115, align 16, !tbaa !71
  %117 = add i32 %116, %114
  %118 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 16
  %119 = load i32, ptr %118, align 16, !tbaa !71
  %120 = add i32 %117, %119
  %121 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 24
  %122 = load i32, ptr %121, align 16, !tbaa !71
  %123 = add i32 %120, %122
  %124 = and i32 %123, 65535
  %125 = and i32 %110, 65535
  %126 = lshr i32 %110, 16
  %127 = add nuw nsw i32 %125, %126
  %128 = sub nsw i32 %127, %124
  %129 = and i32 %182, 65535
  %130 = lshr i32 %182, 16
  %131 = add nuw nsw i32 %129, %130
  %132 = sub nsw i32 %131, %124
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 32
  %135 = sext i32 %128 to i64
  %136 = add nsw i64 %134, %135
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  ret i64 %136

137:                                              ; preds = %64, %137
  %138 = phi i64 [ %183, %137 ], [ 0, %64 ]
  %139 = phi i32 [ %182, %137 ], [ 0, %64 ]
  %140 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %138
  %141 = load i32, ptr %140, align 4, !tbaa !71
  %142 = or disjoint i64 %138, 8
  %143 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !71
  %145 = add i32 %144, %141
  %146 = sub i32 %141, %144
  %147 = or disjoint i64 %138, 16
  %148 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !71
  %150 = or disjoint i64 %138, 24
  %151 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !71
  %153 = add i32 %152, %149
  %154 = sub i32 %149, %152
  %155 = add nsw i32 %153, %145
  %156 = sub nsw i32 %145, %153
  %157 = add nsw i32 %154, %146
  %158 = sub nsw i32 %146, %154
  %159 = lshr i32 %155, 15
  %160 = and i32 %159, 65537
  %161 = mul nuw i32 %160, 65535
  %162 = add i32 %161, %155
  %163 = xor i32 %162, %161
  %164 = lshr i32 %157, 15
  %165 = and i32 %164, 65537
  %166 = mul nuw i32 %165, 65535
  %167 = add i32 %166, %157
  %168 = xor i32 %167, %166
  %169 = lshr i32 %156, 15
  %170 = and i32 %169, 65537
  %171 = mul nuw i32 %170, 65535
  %172 = add i32 %171, %156
  %173 = xor i32 %172, %171
  %174 = lshr i32 %158, 15
  %175 = and i32 %174, 65537
  %176 = mul nuw i32 %175, 65535
  %177 = add i32 %176, %158
  %178 = xor i32 %177, %176
  %179 = add i32 %168, %139
  %180 = add i32 %179, %163
  %181 = add i32 %180, %173
  %182 = add i32 %181, %178
  %183 = add nuw nsw i64 %138, 1
  %184 = icmp eq i64 %183, 8
  br i1 %184, label %113, label %137, !llvm.loop !112
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sa8d_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 {
  %5 = alloca [8 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #9
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
  store i32 %86, ptr %87, align 16, !tbaa !71
  %88 = sub nsw i32 %82, %84
  %89 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 2
  store i32 %88, ptr %89, align 8, !tbaa !71
  %90 = add nsw i32 %85, %83
  %91 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 1
  store i32 %90, ptr %91, align 4, !tbaa !71
  %92 = sub nsw i32 %83, %85
  %93 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %9, i64 3
  store i32 %92, ptr %93, align 4, !tbaa !71
  %94 = add nuw nsw i64 %9, 1
  %95 = getelementptr inbounds i8, ptr %10, i64 %6
  %96 = getelementptr inbounds i8, ptr %11, i64 %7
  %97 = icmp eq i64 %94, 8
  br i1 %97, label %99, label %8, !llvm.loop !113

98:                                               ; preds = %99
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #9
  ret i32 %192

99:                                               ; preds = %8, %99
  %100 = phi i64 [ %193, %99 ], [ 0, %8 ]
  %101 = phi i32 [ %192, %99 ], [ 0, %8 ]
  %102 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %100
  %103 = load i32, ptr %102, align 4, !tbaa !71
  %104 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %100
  %105 = load i32, ptr %104, align 4, !tbaa !71
  %106 = add i32 %105, %103
  %107 = sub i32 %103, %105
  %108 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 2, i64 %100
  %109 = load i32, ptr %108, align 4, !tbaa !71
  %110 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 3, i64 %100
  %111 = load i32, ptr %110, align 4, !tbaa !71
  %112 = add i32 %111, %109
  %113 = sub i32 %109, %111
  %114 = add nsw i32 %112, %106
  %115 = sub nsw i32 %106, %112
  %116 = add nsw i32 %113, %107
  %117 = sub nsw i32 %107, %113
  %118 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 4, i64 %100
  %119 = load i32, ptr %118, align 4, !tbaa !71
  %120 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 5, i64 %100
  %121 = load i32, ptr %120, align 4, !tbaa !71
  %122 = add i32 %121, %119
  %123 = sub i32 %119, %121
  %124 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 6, i64 %100
  %125 = load i32, ptr %124, align 4, !tbaa !71
  %126 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 7, i64 %100
  %127 = load i32, ptr %126, align 4, !tbaa !71
  %128 = add i32 %127, %125
  %129 = sub i32 %125, %127
  %130 = add nsw i32 %128, %122
  %131 = sub nsw i32 %122, %128
  %132 = add nsw i32 %129, %123
  %133 = sub nsw i32 %123, %129
  %134 = add i32 %130, %114
  %135 = lshr i32 %134, 15
  %136 = and i32 %135, 65537
  %137 = mul nuw i32 %136, 65535
  %138 = add i32 %137, %134
  %139 = xor i32 %138, %137
  %140 = sub i32 %114, %130
  %141 = lshr i32 %140, 15
  %142 = and i32 %141, 65537
  %143 = mul nuw i32 %142, 65535
  %144 = add i32 %143, %140
  %145 = xor i32 %144, %143
  %146 = add i32 %132, %116
  %147 = lshr i32 %146, 15
  %148 = and i32 %147, 65537
  %149 = mul nuw i32 %148, 65535
  %150 = add i32 %149, %146
  %151 = xor i32 %150, %149
  %152 = sub i32 %116, %132
  %153 = lshr i32 %152, 15
  %154 = and i32 %153, 65537
  %155 = mul nuw i32 %154, 65535
  %156 = add i32 %155, %152
  %157 = xor i32 %156, %155
  %158 = add i32 %131, %115
  %159 = lshr i32 %158, 15
  %160 = and i32 %159, 65537
  %161 = mul nuw i32 %160, 65535
  %162 = add i32 %161, %158
  %163 = xor i32 %162, %161
  %164 = sub i32 %115, %131
  %165 = lshr i32 %164, 15
  %166 = and i32 %165, 65537
  %167 = mul nuw i32 %166, 65535
  %168 = add i32 %167, %164
  %169 = xor i32 %168, %167
  %170 = add i32 %133, %117
  %171 = lshr i32 %170, 15
  %172 = and i32 %171, 65537
  %173 = mul nuw i32 %172, 65535
  %174 = add i32 %173, %170
  %175 = xor i32 %174, %173
  %176 = sub i32 %117, %133
  %177 = lshr i32 %176, 15
  %178 = and i32 %177, 65537
  %179 = mul nuw i32 %178, 65535
  %180 = add i32 %179, %176
  %181 = xor i32 %180, %179
  %182 = add i32 %175, %181
  %183 = add i32 %182, %169
  %184 = add i32 %183, %163
  %185 = add i32 %184, %145
  %186 = add i32 %185, %139
  %187 = add i32 %186, %157
  %188 = add i32 %187, %151
  %189 = and i32 %188, 65535
  %190 = lshr i32 %188, 16
  %191 = add i32 %190, %101
  %192 = add i32 %191, %189
  %193 = add nuw nsw i64 %100, 1
  %194 = icmp eq i64 %193, 4
  br i1 %194, label %98, label %99, !llvm.loop !114
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = distinct !{!43, !39, !40}
!44 = distinct !{!44, !39, !40}
!45 = !{!36, !36, i64 0}
!46 = distinct !{!46, !39, !40}
!47 = distinct !{!47, !39, !40}
!48 = distinct !{!48, !39, !40}
!49 = distinct !{!49, !39, !40}
!50 = !{!51, !35, i64 664}
!51 = !{!"", !36, i64 0, !36, i64 56, !36, i64 112, !36, i64 168, !36, i64 224, !36, i64 256, !36, i64 312, !36, i64 368, !36, i64 424, !36, i64 480, !36, i64 536, !35, i64 592, !36, i64 600, !36, i64 632, !35, i64 664, !35, i64 672, !36, i64 680, !36, i64 736, !36, i64 792, !36, i64 848, !36, i64 904, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992, !35, i64 1000, !35, i64 1008, !35, i64 1016, !35, i64 1024, !35, i64 1032, !35, i64 1040, !35, i64 1048}
!52 = distinct !{!52, !39, !40}
!53 = distinct !{!53, !39, !40}
!54 = !{!51, !35, i64 672}
!55 = distinct !{!55, !39, !40}
!56 = !{!51, !35, i64 592}
!57 = distinct !{!57, !39, !40}
!58 = distinct !{!58, !39, !40}
!59 = distinct !{!59, !39, !40}
!60 = distinct !{!60, !39, !40}
!61 = distinct !{!61, !39, !40}
!62 = distinct !{!62, !39, !40}
!63 = distinct !{!63, !39, !40}
!64 = distinct !{!64, !39, !40}
!65 = distinct !{!65, !39, !40}
!66 = distinct !{!66, !39, !40}
!67 = distinct !{!67, !39, !40}
!68 = distinct !{!68, !39, !40}
!69 = distinct !{!69, !39, !40}
!70 = distinct !{!70, !39, !40}
!71 = !{!72, !72, i64 0}
!72 = !{!"int", !36, i64 0}
!73 = distinct !{!73, !39, !40}
!74 = distinct !{!74, !39, !40}
!75 = distinct !{!75, !39, !40}
!76 = distinct !{!76, !39, !40}
!77 = distinct !{!77, !39, !40}
!78 = distinct !{!78, !39, !40}
!79 = distinct !{!79, !39, !40}
!80 = distinct !{!80, !39, !40}
!81 = distinct !{!81, !39, !40}
!82 = distinct !{!82, !39, !40}
!83 = distinct !{!83, !39, !40}
!84 = distinct !{!84, !39, !40}
!85 = distinct !{!85, !39, !40}
!86 = distinct !{!86, !39, !40}
!87 = !{i32 0, i32 65536}
!88 = distinct !{!88, !39, !40}
!89 = distinct !{!89, !39, !40}
!90 = !{i32 -1073741824, i32 1073741824}
!91 = distinct !{!91, !39, !40}
!92 = distinct !{!92, !39, !40}
!93 = !{i32 0, i32 524281}
!94 = !{i64 -65535, i64 -4294836225}
!95 = !{!96, !96, i64 0}
!96 = !{!"short", !36, i64 0}
!97 = distinct !{!97, !39, !40}
!98 = distinct !{!98, !39, !40}
!99 = distinct !{!99, !39, !40}
!100 = distinct !{!100, !39, !40}
!101 = distinct !{!101, !39, !40}
!102 = distinct !{!102, !39, !40}
!103 = distinct !{!103, !39, !40}
!104 = distinct !{!104, !39, !40}
!105 = distinct !{!105, !39, !40}
!106 = distinct !{!106, !39, !40}
!107 = distinct !{!107, !39, !40}
!108 = distinct !{!108, !39, !40}
!109 = distinct !{!109, !39, !40}
!110 = distinct !{!110, !39, !40}
!111 = distinct !{!111, !39, !40}
!112 = distinct !{!112, !39, !40}
!113 = distinct !{!113, !39, !40}
!114 = distinct !{!114, !39, !40}
