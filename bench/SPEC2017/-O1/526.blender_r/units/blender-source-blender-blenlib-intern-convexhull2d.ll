; ModuleID = 'blender/source/blender/blenlib/intern/convexhull2d.c'
source_filename = "blender/source/blender/blenlib/intern/convexhull2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PointRef = type { ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_convexhull_2d = private unnamed_addr constant [18 x i8] c"BLI_convexhull_2d\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_convexhull_aabb_fit_points_2d = private unnamed_addr constant [34 x i8] c"BLI_convexhull_aabb_fit_points_2d\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_convexhull_2d_sorted(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i64 [ 1, %6 ], [ %14, %13 ]
  %10 = getelementptr inbounds [2 x float], ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fcmp une float %11, %4
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %18, label %8, !llvm.loop !38

16:                                               ; preds = %8
  %17 = trunc i64 %9 to i32
  br label %18

18:                                               ; preds = %16, %13, %3
  %19 = phi i32 [ 1, %3 ], [ %17, %16 ], [ %1, %13 ]
  %20 = add nsw i32 %19, -1
  %21 = add nsw i32 %1, -1
  %22 = icmp eq i32 %19, %1
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  store i32 0, ptr %2, align 4, !tbaa !41
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [2 x float], ptr %0, i64 %24, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fcmp une float %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %20, ptr %31, align 4, !tbaa !41
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i32 [ 2, %30 ], [ 1, %23 ]
  %34 = zext nneg i32 %33 to i64
  br label %224

35:                                               ; preds = %18
  %36 = sext i32 %21 to i64
  %37 = getelementptr inbounds [2 x float], ptr %0, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = add i32 %1, -2
  %40 = icmp sgt i32 %1, 1
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = zext i32 %39 to i64
  br label %43

43:                                               ; preds = %41, %48
  %44 = phi i64 [ %42, %41 ], [ %49, %48 ]
  %45 = getelementptr inbounds [2 x float], ptr %0, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fcmp une float %46, %38
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = add nsw i64 %44, -1
  %50 = icmp sgt i64 %44, 0
  br i1 %50, label %43, label %53, !llvm.loop !43

51:                                               ; preds = %43
  %52 = trunc i64 %44 to i32
  br label %53

53:                                               ; preds = %51, %48, %35
  %54 = phi i32 [ %39, %35 ], [ %52, %51 ], [ -1, %48 ]
  %55 = add nsw i32 %54, 1
  store i32 0, ptr %2, align 4, !tbaa !41
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x float], ptr %0, i64 %56
  %58 = getelementptr inbounds float, ptr %0, i64 1
  %59 = getelementptr inbounds float, ptr %57, i64 1
  %60 = sext i32 %54 to i64
  %61 = sext i32 %54 to i64
  br label %62

62:                                               ; preds = %122, %53
  %63 = phi i32 [ %89, %122 ], [ %20, %53 ]
  %64 = phi i32 [ %124, %122 ], [ 0, %53 ]
  %65 = sext i32 %63 to i64
  br label %66

66:                                               ; preds = %62, %69
  %67 = phi i64 [ %65, %62 ], [ %70, %69 ]
  %68 = icmp sgt i64 %67, %60
  br i1 %68, label %127, label %69

69:                                               ; preds = %66
  %70 = add nsw i64 %67, 1
  %71 = getelementptr inbounds [2 x float], ptr %0, i64 %70
  %72 = load float, ptr %57, align 4, !tbaa !34
  %73 = fsub float %72, %4
  %74 = getelementptr inbounds float, ptr %71, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = load float, ptr %58, align 4, !tbaa !34
  %77 = fsub float %75, %76
  %78 = load float, ptr %71, align 4, !tbaa !34
  %79 = fsub float %78, %4
  %80 = load float, ptr %59, align 4, !tbaa !34
  %81 = fsub float %80, %76
  %82 = fneg float %79
  %83 = fmul float %81, %82
  %84 = tail call float @llvm.fmuladd.f32(float %73, float %77, float %83)
  %85 = fcmp oge float %84, 0.000000e+00
  %86 = icmp slt i64 %67, %61
  %87 = and i1 %86, %85
  br i1 %87, label %66, label %88, !llvm.loop !44

88:                                               ; preds = %69
  %89 = trunc i64 %70 to i32
  %90 = icmp sgt i32 %64, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %88
  %92 = zext nneg i32 %64 to i64
  br label %93

93:                                               ; preds = %91, %117
  %94 = phi i64 [ %92, %91 ], [ %118, %117 ]
  %95 = getelementptr i32, ptr %2, i64 %94
  %96 = getelementptr i32, ptr %95, i64 -1
  %97 = load i32, ptr %96, align 4, !tbaa !41
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x float], ptr %0, i64 %98
  %100 = load i32, ptr %95, align 4, !tbaa !41
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x float], ptr %0, i64 %101
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = load float, ptr %99, align 4, !tbaa !34
  %105 = fsub float %103, %104
  %106 = getelementptr inbounds float, ptr %99, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = fsub float %75, %107
  %109 = fsub float %78, %104
  %110 = getelementptr inbounds float, ptr %102, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fsub float %111, %107
  %113 = fneg float %109
  %114 = fmul float %112, %113
  %115 = tail call float @llvm.fmuladd.f32(float %105, float %108, float %114)
  %116 = fcmp ogt float %115, 0.000000e+00
  br i1 %116, label %120, label %117

117:                                              ; preds = %93
  %118 = add nsw i64 %94, -1
  %119 = icmp sgt i64 %94, 1
  br i1 %119, label %93, label %122, !llvm.loop !45

120:                                              ; preds = %93
  %121 = trunc i64 %94 to i32
  br label %122

122:                                              ; preds = %120, %117, %88
  %123 = phi i32 [ %64, %88 ], [ %121, %120 ], [ 0, %117 ]
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %2, i64 %125
  store i32 %89, ptr %126, align 4, !tbaa !41
  br label %62, !llvm.loop !44

127:                                              ; preds = %66
  %128 = icmp eq i32 %21, %55
  br i1 %128, label %133, label %129

129:                                              ; preds = %127
  %130 = add nsw i32 %64, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, ptr %2, i64 %131
  store i32 %21, ptr %132, align 4, !tbaa !41
  br label %133

133:                                              ; preds = %129, %127
  %134 = phi i32 [ %130, %129 ], [ %64, %127 ]
  %135 = sext i32 %20 to i64
  %136 = getelementptr inbounds [2 x float], ptr %0, i64 %135
  %137 = getelementptr inbounds float, ptr %37, i64 1
  %138 = getelementptr inbounds float, ptr %136, i64 1
  %139 = sext i32 %19 to i64
  %140 = sext i32 %19 to i64
  %141 = sext i32 %134 to i64
  br label %142

142:                                              ; preds = %215, %133
  %143 = phi i32 [ %169, %215 ], [ %55, %133 ]
  %144 = phi i32 [ %216, %215 ], [ %134, %133 ]
  %145 = sext i32 %143 to i64
  br label %146

146:                                              ; preds = %142, %149
  %147 = phi i64 [ %145, %142 ], [ %150, %149 ]
  %148 = icmp slt i64 %147, %139
  br i1 %148, label %219, label %149

149:                                              ; preds = %146
  %150 = add nsw i64 %147, -1
  %151 = getelementptr inbounds [2 x float], ptr %0, i64 %150
  %152 = load float, ptr %136, align 4, !tbaa !34
  %153 = fsub float %152, %38
  %154 = getelementptr inbounds float, ptr %151, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !34
  %156 = load float, ptr %137, align 4, !tbaa !34
  %157 = fsub float %155, %156
  %158 = load float, ptr %151, align 4, !tbaa !34
  %159 = fsub float %158, %38
  %160 = load float, ptr %138, align 4, !tbaa !34
  %161 = fsub float %160, %156
  %162 = fneg float %159
  %163 = fmul float %161, %162
  %164 = tail call float @llvm.fmuladd.f32(float %153, float %157, float %163)
  %165 = fcmp oge float %164, 0.000000e+00
  %166 = icmp sgt i64 %147, %140
  %167 = and i1 %166, %165
  br i1 %167, label %146, label %168, !llvm.loop !46

168:                                              ; preds = %149
  %169 = trunc i64 %150 to i32
  %170 = icmp sgt i32 %144, %134
  br i1 %170, label %171, label %202

171:                                              ; preds = %168
  %172 = sext i32 %144 to i64
  br label %173

173:                                              ; preds = %171, %197
  %174 = phi i64 [ %172, %171 ], [ %198, %197 ]
  %175 = getelementptr i32, ptr %2, i64 %174
  %176 = getelementptr i32, ptr %175, i64 -1
  %177 = load i32, ptr %176, align 4, !tbaa !41
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x float], ptr %0, i64 %178
  %180 = load i32, ptr %175, align 4, !tbaa !41
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2 x float], ptr %0, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !34
  %184 = load float, ptr %179, align 4, !tbaa !34
  %185 = fsub float %183, %184
  %186 = getelementptr inbounds float, ptr %179, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = fsub float %155, %187
  %189 = fsub float %158, %184
  %190 = getelementptr inbounds float, ptr %182, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !34
  %192 = fsub float %191, %187
  %193 = fneg float %189
  %194 = fmul float %192, %193
  %195 = tail call float @llvm.fmuladd.f32(float %185, float %188, float %194)
  %196 = fcmp ogt float %195, 0.000000e+00
  br i1 %196, label %200, label %197

197:                                              ; preds = %173
  %198 = add nsw i64 %174, -1
  %199 = icmp sgt i64 %198, %141
  br i1 %199, label %173, label %202, !llvm.loop !47

200:                                              ; preds = %173
  %201 = trunc i64 %174 to i32
  br label %202

202:                                              ; preds = %200, %197, %168
  %203 = phi i32 [ %144, %168 ], [ %201, %200 ], [ %134, %197 ]
  %204 = load i32, ptr %2, align 4, !tbaa !41
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [2 x float], ptr %0, i64 %205
  %207 = load float, ptr %206, align 4, !tbaa !34
  %208 = fcmp oeq float %158, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = getelementptr inbounds [2 x float], ptr %0, i64 %150, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !34
  %212 = getelementptr inbounds [2 x float], ptr %0, i64 %205, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !34
  %214 = fcmp oeq float %211, %213
  br i1 %214, label %228, label %215

215:                                              ; preds = %209, %202
  %216 = add nsw i32 %203, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, ptr %2, i64 %217
  store i32 %169, ptr %218, align 4, !tbaa !41
  br label %142, !llvm.loop !46

219:                                              ; preds = %146
  %220 = icmp eq i32 %20, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %219
  %222 = add nsw i32 %144, 1
  %223 = sext i32 %222 to i64
  br label %224

224:                                              ; preds = %32, %221
  %225 = phi i64 [ %223, %221 ], [ %34, %32 ]
  %226 = phi i32 [ %222, %221 ], [ %33, %32 ]
  %227 = getelementptr inbounds i32, ptr %2, i64 %225
  store i32 0, ptr %227, align 4, !tbaa !41
  br label %228

228:                                              ; preds = %209, %224, %219
  %229 = phi i32 [ %144, %219 ], [ %226, %224 ], [ %203, %209 ]
  %230 = add nsw i32 %229, 1
  ret i32 %230
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_convexhull_2d(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @__func__.BLI_convexhull_2d) #8
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %9 = tail call ptr %8(i64 noundef %6, ptr noundef nonnull @__func__.BLI_convexhull_2d) #8
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = zext nneg i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %17, %13 ]
  %15 = getelementptr inbounds [2 x float], ptr %0, i64 %14
  %16 = getelementptr inbounds %struct.PointRef, ptr %7, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !50
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %12
  br i1 %18, label %19, label %13, !llvm.loop !52

19:                                               ; preds = %13, %3
  tail call void @qsort(ptr noundef %7, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @pointref_cmp_yx) #8
  %20 = icmp sgt i32 %1, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %19
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %29, %23 ]
  %25 = getelementptr inbounds [2 x float], ptr %9, i64 %24
  %26 = getelementptr inbounds %struct.PointRef, ptr %7, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = load i64, ptr %27, align 4
  store i64 %28, ptr %25, align 4
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %23, !llvm.loop !53

31:                                               ; preds = %23, %19
  %32 = tail call i32 @BLI_convexhull_2d_sorted(ptr noundef %9, i32 noundef %1, ptr noundef %2)
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = ptrtoint ptr %0 to i64
  %36 = zext nneg i32 %32 to i64
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i64 [ 0, %34 ], [ %49, %37 ]
  %39 = getelementptr inbounds i32, ptr %2, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !41
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.PointRef, ptr %7, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %35
  %46 = lshr exact i64 %45, 3
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds i32, ptr %9, i64 %38
  store i32 %47, ptr %48, align 4, !tbaa !41
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %49, %36
  br i1 %50, label %51, label %37, !llvm.loop !54

51:                                               ; preds = %37, %31
  %52 = sext i32 %32 to i64
  %53 = shl nsw i64 %52, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %9, i64 %53, i1 false)
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %54(ptr noundef %7) #8
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %55(ptr noundef %9) #8
  ret i32 %32
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @pointref_cmp_yx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds float, ptr %3, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load ptr, ptr %1, align 8, !tbaa !50
  %7 = getelementptr inbounds float, ptr %6, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp ogt float %5, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = fcmp olt float %5, %8
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = load float, ptr %6, align 4, !tbaa !34
  %15 = fcmp ogt float %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = fcmp olt float %13, %14
  %18 = sext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %12, %10, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %10 ], [ 1, %12 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local float @BLI_convexhull_aabb_fit_hull_2d(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %81, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %4, %72
  %9 = phi i64 [ 0, %4 ], [ %76, %72 ]
  %10 = phi i32 [ %5, %4 ], [ %77, %72 ]
  %11 = phi float [ 0x47EFFFFFE0000000, %4 ], [ %75, %72 ]
  %12 = phi float [ undef, %4 ], [ %74, %72 ]
  %13 = phi float [ undef, %4 ], [ %73, %72 ]
  %14 = getelementptr inbounds [2 x float], ptr %0, i64 %9
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds [2 x float], ptr %0, i64 %15
  %17 = load float, ptr %14, align 4, !tbaa !34
  %18 = load float, ptr %16, align 4, !tbaa !34
  %19 = fsub float %17, %18
  %20 = getelementptr inbounds float, ptr %14, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %16, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %21, %23
  %25 = fmul float %24, %24
  %26 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %25)
  %27 = fcmp ogt float %26, 0x38AA95A5C0000000
  br i1 %27, label %28, label %33

28:                                               ; preds = %8
  %29 = tail call float @sqrtf(float noundef %26) #8
  %30 = fdiv float 1.000000e+00, %29
  %31 = fmul float %19, %30
  %32 = fmul float %24, %30
  br label %33

33:                                               ; preds = %8, %28
  %34 = phi float [ %31, %28 ], [ 0.000000e+00, %8 ]
  %35 = phi float [ %32, %28 ], [ 0.000000e+00, %8 ]
  %36 = phi float [ %29, %28 ], [ 0.000000e+00, %8 ]
  %37 = fcmp une float %36, 0.000000e+00
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = fneg float %34
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ %66, %40 ], [ 0, %38 ]
  %42 = phi float [ %59, %40 ], [ 0xC7EFFFFFE0000000, %38 ]
  %43 = phi float [ %61, %40 ], [ 0xC7EFFFFFE0000000, %38 ]
  %44 = phi float [ %55, %40 ], [ 0x47EFFFFFE0000000, %38 ]
  %45 = phi float [ %57, %40 ], [ 0x47EFFFFFE0000000, %38 ]
  %46 = getelementptr inbounds [2 x float], ptr %0, i64 %41
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %46, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fmul float %35, %49
  %51 = tail call float @llvm.fmuladd.f32(float %34, float %47, float %50)
  %52 = fmul float %49, %39
  %53 = tail call float @llvm.fmuladd.f32(float %35, float %47, float %52)
  %54 = fcmp olt float %44, %51
  %55 = select i1 %54, float %44, float %51
  %56 = fcmp olt float %45, %53
  %57 = select i1 %56, float %45, float %53
  %58 = fcmp ogt float %42, %51
  %59 = select i1 %58, float %42, float %51
  %60 = fcmp ogt float %43, %53
  %61 = select i1 %60, float %43, float %53
  %62 = fsub float %59, %55
  %63 = fsub float %61, %57
  %64 = fmul float %62, %63
  %65 = fcmp ule float %64, %11
  %66 = add nuw nsw i64 %41, 1
  %67 = icmp ult i64 %66, %6
  %68 = and i1 %65, %67
  br i1 %68, label %40, label %69, !llvm.loop !55

69:                                               ; preds = %40
  %70 = fcmp olt float %64, %11
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %69, %71, %33
  %73 = phi float [ %34, %71 ], [ %13, %69 ], [ %13, %33 ]
  %74 = phi float [ %35, %71 ], [ %12, %69 ], [ %12, %33 ]
  %75 = phi float [ %64, %71 ], [ %11, %69 ], [ %11, %33 ]
  %76 = add nuw nsw i64 %9, 1
  %77 = trunc i64 %9 to i32
  %78 = icmp eq i64 %76, %7
  br i1 %78, label %79, label %8, !llvm.loop !56

79:                                               ; preds = %72
  %80 = fcmp une float %75, 0x47EFFFFFE0000000
  br label %81

81:                                               ; preds = %79, %2
  %82 = phi float [ undef, %2 ], [ %73, %79 ]
  %83 = phi float [ undef, %2 ], [ %74, %79 ]
  %84 = phi i1 [ false, %2 ], [ %80, %79 ]
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = tail call float @atan2f(float noundef %82, float noundef %83) #8
  br label %87

87:                                               ; preds = %81, %85
  %88 = phi float [ %86, %85 ], [ 0.000000e+00, %81 ]
  ret float %88
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local float @BLI_convexhull_aabb_fit_points_2d(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %4 = zext i32 %1 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = tail call ptr %3(i64 noundef %5, ptr noundef nonnull @__func__.BLI_convexhull_aabb_fit_points_2d) #8
  %7 = tail call i32 @BLI_convexhull_2d(ptr noundef %0, i32 noundef %1, ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %11 = sext i32 %7 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.BLI_convexhull_aabb_fit_points_2d) #8
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = zext nneg i32 %7 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %28, %17 ]
  %19 = getelementptr inbounds [2 x float], ptr %13, i64 %18
  %20 = getelementptr inbounds i32, ptr %6, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x float], ptr %0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !34
  store float %24, ptr %19, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %23, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %19, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %30, label %17, !llvm.loop !57

30:                                               ; preds = %17, %9
  %31 = tail call float @BLI_convexhull_aabb_fit_hull_2d(ptr noundef %13, i32 noundef %7)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %32(ptr noundef %13) #8
  br label %33

33:                                               ; preds = %2, %30
  %34 = phi float [ %31, %30 ], [ 0.000000e+00, %2 ]
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %35(ptr noundef %6) #8
  ret float %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = distinct !{!43, !39, !40}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = distinct !{!46, !39, !40}
!47 = distinct !{!47, !39, !40}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !36, i64 0}
!50 = !{!51, !49, i64 0}
!51 = !{!"PointRef", !49, i64 0}
!52 = distinct !{!52, !39, !40}
!53 = distinct !{!53, !39, !40}
!54 = distinct !{!54, !39, !40}
!55 = distinct !{!55, !39, !40}
!56 = distinct !{!56, !39, !40}
!57 = distinct !{!57, !39, !40}
