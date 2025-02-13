; ModuleID = 'blender/source/blender/blenlib/intern/convexhull2d.c'
source_filename = "blender/source/blender/blenlib/intern/convexhull2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PointRef = type { ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_convexhull_2d = private unnamed_addr constant [18 x i8] c"BLI_convexhull_2d\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_convexhull_aabb_fit_points_2d = private unnamed_addr constant [34 x i8] c"BLI_convexhull_aabb_fit_points_2d\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_convexhull_2d_sorted(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i64 [ 1, %6 ], [ %14, %13 ]
  %10 = getelementptr inbounds [2 x float], ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fcmp une float %11, %4
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !38

16:                                               ; preds = %13
  %17 = add nsw i32 %1, -1
  br label %30

18:                                               ; preds = %8
  %19 = trunc i64 %9 to i32
  %20 = add nsw i32 %19, -1
  %21 = add nsw i32 %1, -1
  %22 = icmp eq i32 %19, %1
  br i1 %22, label %30, label %43

23:                                               ; preds = %3
  %24 = icmp eq i32 %1, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %1, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x float], ptr %0, i64 %27
  %29 = add i32 %1, -2
  br label %60

30:                                               ; preds = %23, %16, %18
  %31 = phi i32 [ %17, %16 ], [ %20, %18 ], [ 0, %23 ]
  store i32 0, ptr %2, align 4, !tbaa !40
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x float], ptr %0, i64 %32, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fcmp une float %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %31, ptr %39, align 4, !tbaa !40
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i32 [ 2, %38 ], [ 1, %30 ]
  %42 = zext nneg i32 %41 to i64
  br label %185

43:                                               ; preds = %18
  %44 = sext i32 %21 to i64
  %45 = getelementptr inbounds [2 x float], ptr %0, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = add nsw i32 %1, -2
  br i1 %5, label %48, label %60

48:                                               ; preds = %43
  %49 = zext nneg i32 %47 to i64
  br label %50

50:                                               ; preds = %48, %55
  %51 = phi i64 [ %49, %48 ], [ %56, %55 ]
  %52 = getelementptr inbounds [2 x float], ptr %0, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fcmp une float %53, %46
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = add nsw i64 %51, -1
  %57 = icmp sgt i64 %51, 0
  br i1 %57, label %50, label %60, !llvm.loop !42

58:                                               ; preds = %50
  %59 = trunc i64 %51 to i32
  br label %60

60:                                               ; preds = %55, %58, %25, %43
  %61 = phi ptr [ %45, %43 ], [ %28, %25 ], [ %45, %58 ], [ %45, %55 ]
  %62 = phi i64 [ %9, %43 ], [ 1, %25 ], [ %9, %58 ], [ %9, %55 ]
  %63 = phi i32 [ %20, %43 ], [ 0, %25 ], [ %20, %58 ], [ %20, %55 ]
  %64 = phi i32 [ %21, %43 ], [ %26, %25 ], [ %21, %58 ], [ %21, %55 ]
  %65 = phi i32 [ %47, %43 ], [ %29, %25 ], [ %59, %58 ], [ -1, %55 ]
  %66 = add nsw i32 %65, 1
  store i32 0, ptr %2, align 4, !tbaa !40
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x float], ptr %0, i64 %67
  %69 = sext i32 %65 to i64
  br label %70

70:                                               ; preds = %106, %60
  %71 = phi i32 [ %85, %106 ], [ %63, %60 ]
  %72 = phi i32 [ %108, %106 ], [ 0, %60 ]
  %73 = sext i32 %71 to i64
  br label %74

74:                                               ; preds = %70, %77
  %75 = phi i64 [ %73, %70 ], [ %78, %77 ]
  %76 = icmp sgt i64 %75, %69
  br i1 %76, label %111, label %77

77:                                               ; preds = %74
  %78 = add nsw i64 %75, 1
  %79 = getelementptr inbounds [2 x float], ptr %0, i64 %78
  %80 = tail call fastcc float @is_left(ptr noundef nonnull %0, ptr noundef nonnull %68, ptr noundef nonnull %79) #14
  %81 = fcmp oge float %80, 0.000000e+00
  %82 = icmp slt i64 %75, %69
  %83 = and i1 %82, %81
  br i1 %83, label %74, label %84, !llvm.loop !43

84:                                               ; preds = %77
  %85 = trunc i64 %78 to i32
  %86 = icmp sgt i32 %72, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = zext nneg i32 %72 to i64
  br label %89

89:                                               ; preds = %87, %101
  %90 = phi i64 [ %88, %87 ], [ %102, %101 ]
  %91 = getelementptr i32, ptr %2, i64 %90
  %92 = getelementptr i32, ptr %91, i64 -1
  %93 = load i32, ptr %92, align 4, !tbaa !40
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x float], ptr %0, i64 %94
  %96 = load i32, ptr %91, align 4, !tbaa !40
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x float], ptr %0, i64 %97
  %99 = tail call fastcc float @is_left(ptr noundef nonnull %95, ptr noundef nonnull %98, ptr noundef nonnull %79) #14
  %100 = fcmp ogt float %99, 0.000000e+00
  br i1 %100, label %104, label %101

101:                                              ; preds = %89
  %102 = add nsw i64 %90, -1
  %103 = icmp sgt i64 %90, 1
  br i1 %103, label %89, label %106, !llvm.loop !44

104:                                              ; preds = %89
  %105 = trunc i64 %90 to i32
  br label %106

106:                                              ; preds = %101, %104, %84
  %107 = phi i32 [ %72, %84 ], [ %105, %104 ], [ 0, %101 ]
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %2, i64 %109
  store i32 %85, ptr %110, align 4, !tbaa !40
  br label %70, !llvm.loop !43

111:                                              ; preds = %74
  %112 = icmp eq i32 %64, %66
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  %114 = sext i32 %72 to i64
  br label %119

115:                                              ; preds = %111
  %116 = add nsw i32 %72, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %2, i64 %117
  store i32 %64, ptr %118, align 4, !tbaa !40
  br label %119

119:                                              ; preds = %113, %115
  %120 = phi i64 [ %114, %113 ], [ %117, %115 ]
  %121 = phi i32 [ %72, %113 ], [ %116, %115 ]
  %122 = sext i32 %63 to i64
  %123 = getelementptr inbounds [2 x float], ptr %0, i64 %122
  %124 = shl i64 %62, 32
  %125 = ashr exact i64 %124, 32
  br label %126

126:                                              ; preds = %176, %119
  %127 = phi i32 [ %141, %176 ], [ %66, %119 ]
  %128 = phi i32 [ %177, %176 ], [ %121, %119 ]
  %129 = sext i32 %127 to i64
  br label %130

130:                                              ; preds = %126, %133
  %131 = phi i64 [ %129, %126 ], [ %134, %133 ]
  %132 = icmp slt i64 %131, %125
  br i1 %132, label %180, label %133

133:                                              ; preds = %130
  %134 = add nsw i64 %131, -1
  %135 = getelementptr inbounds [2 x float], ptr %0, i64 %134
  %136 = tail call fastcc float @is_left(ptr noundef nonnull %61, ptr noundef nonnull %123, ptr noundef nonnull %135) #14
  %137 = fcmp oge float %136, 0.000000e+00
  %138 = icmp sgt i64 %131, %125
  %139 = and i1 %138, %137
  br i1 %139, label %130, label %140, !llvm.loop !45

140:                                              ; preds = %133
  %141 = trunc i64 %134 to i32
  %142 = icmp sgt i32 %128, %121
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = sext i32 %128 to i64
  br label %145

145:                                              ; preds = %143, %157
  %146 = phi i64 [ %144, %143 ], [ %158, %157 ]
  %147 = getelementptr i32, ptr %2, i64 %146
  %148 = getelementptr i32, ptr %147, i64 -1
  %149 = load i32, ptr %148, align 4, !tbaa !40
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x float], ptr %0, i64 %150
  %152 = load i32, ptr %147, align 4, !tbaa !40
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [2 x float], ptr %0, i64 %153
  %155 = tail call fastcc float @is_left(ptr noundef nonnull %151, ptr noundef nonnull %154, ptr noundef nonnull %135) #14
  %156 = fcmp ogt float %155, 0.000000e+00
  br i1 %156, label %160, label %157

157:                                              ; preds = %145
  %158 = add nsw i64 %146, -1
  %159 = icmp sgt i64 %158, %120
  br i1 %159, label %145, label %162, !llvm.loop !46

160:                                              ; preds = %145
  %161 = trunc i64 %146 to i32
  br label %162

162:                                              ; preds = %157, %160, %140
  %163 = phi i32 [ %128, %140 ], [ %161, %160 ], [ %121, %157 ]
  %164 = load float, ptr %135, align 4, !tbaa !34
  %165 = load i32, ptr %2, align 4, !tbaa !40
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [2 x float], ptr %0, i64 %166
  %168 = load float, ptr %167, align 4, !tbaa !34
  %169 = fcmp oeq float %164, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = getelementptr inbounds [2 x float], ptr %0, i64 %134, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !34
  %173 = getelementptr inbounds [2 x float], ptr %0, i64 %166, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !34
  %175 = fcmp oeq float %172, %174
  br i1 %175, label %189, label %176

176:                                              ; preds = %170, %162
  %177 = add nsw i32 %163, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %2, i64 %178
  store i32 %141, ptr %179, align 4, !tbaa !40
  br label %126, !llvm.loop !45

180:                                              ; preds = %130
  %181 = icmp eq i32 %63, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %180
  %183 = add nsw i32 %128, 1
  %184 = sext i32 %183 to i64
  br label %185

185:                                              ; preds = %40, %182
  %186 = phi i64 [ %184, %182 ], [ %42, %40 ]
  %187 = phi i32 [ %183, %182 ], [ %41, %40 ]
  %188 = getelementptr inbounds i32, ptr %2, i64 %186
  store i32 0, ptr %188, align 4, !tbaa !40
  br label %189

189:                                              ; preds = %170, %185, %180
  %190 = phi i32 [ %128, %180 ], [ %187, %185 ], [ %163, %170 ]
  %191 = add nsw i32 %190, 1
  ret i32 %191
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @is_left(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !47 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %15, %10
  %17 = fneg float %13
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %18)
  ret float %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_convexhull_2d(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @__func__.BLI_convexhull_2d) #15
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %9 = tail call ptr %8(i64 noundef %6, ptr noundef nonnull @__func__.BLI_convexhull_2d) #15
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @qsort(ptr noundef %7, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @pointref_cmp_yx) #15
  br label %48

12:                                               ; preds = %3
  %13 = zext nneg i32 %1 to i64
  %14 = add nuw nsw i64 %13, 1
  %15 = and i64 %14, 4294967294
  %16 = add nsw i64 %13, -1
  %17 = insertelement <2 x i64> poison, i64 %16, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %33, %12
  %20 = phi i64 [ 0, %12 ], [ %34, %33 ]
  %21 = phi <2 x i64> [ <i64 0, i64 1>, %12 ], [ %35, %33 ]
  %22 = icmp ule <2 x i64> %21, %18
  %23 = extractelement <2 x i1> %22, i64 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.PointRef, ptr %7, i64 %20
  %26 = getelementptr inbounds [2 x float], ptr %0, i64 %20
  store ptr %26, ptr %25, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %24, %19
  %28 = extractelement <2 x i1> %22, i64 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = or disjoint i64 %20, 1
  %31 = getelementptr inbounds %struct.PointRef, ptr %7, i64 %30
  %32 = getelementptr inbounds [2 x float], ptr %0, i64 %30
  store ptr %32, ptr %31, align 8, !tbaa !50
  br label %33

33:                                               ; preds = %29, %27
  %34 = add i64 %20, 2
  %35 = add <2 x i64> %21, <i64 2, i64 2>
  %36 = icmp eq i64 %34, %15
  br i1 %36, label %37, label %19, !llvm.loop !52

37:                                               ; preds = %33
  tail call void @qsort(ptr noundef nonnull %7, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @pointref_cmp_yx) #15
  br i1 %10, label %38, label %48

38:                                               ; preds = %37
  %39 = zext nneg i32 %1 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %46, %40 ]
  %42 = getelementptr inbounds [2 x float], ptr %9, i64 %41
  %43 = getelementptr inbounds %struct.PointRef, ptr %7, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %42, align 4
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %39
  br i1 %47, label %48, label %40, !llvm.loop !55

48:                                               ; preds = %40, %11, %37
  %49 = tail call i32 @BLI_convexhull_2d_sorted(ptr noundef %9, i32 noundef %1, ptr noundef %2) #14
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = ptrtoint ptr %0 to i64
  %53 = zext nneg i32 %49 to i64
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ 0, %51 ], [ %66, %54 ]
  %56 = getelementptr inbounds i32, ptr %2, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !40
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.PointRef, ptr %7, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !50
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %61, %52
  %63 = lshr exact i64 %62, 3
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds i32, ptr %9, i64 %55
  store i32 %64, ptr %65, align 4, !tbaa !40
  %66 = add nuw nsw i64 %55, 1
  %67 = icmp eq i64 %66, %53
  br i1 %67, label %68, label %54, !llvm.loop !56

68:                                               ; preds = %54, %48
  %69 = sext i32 %49 to i64
  %70 = shl nsw i64 %69, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %9, i64 %70, i1 false)
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %71(ptr noundef %7) #15
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %72(ptr noundef %9) #15
  ret i32 %49
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @pointref_cmp_yx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !57 {
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define dso_local float @BLI_convexhull_aabb_fit_hull_2d(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %2
  %8 = add i32 %1, -1
  %9 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %10 = zext i32 %1 to i64
  br label %11

11:                                               ; preds = %7, %43
  %12 = phi i64 [ 0, %7 ], [ %45, %43 ]
  %13 = phi i32 [ %8, %7 ], [ %46, %43 ]
  %14 = phi float [ 0x47EFFFFFE0000000, %7 ], [ %44, %43 ]
  %15 = getelementptr inbounds [2 x float], ptr %0, i64 %12
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds [2 x float], ptr %0, i64 %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %15, ptr noundef %17) #14
  %18 = call fastcc float @normalize_v2(ptr noundef nonnull %4) #14
  %19 = fcmp une float %18, 0.000000e+00
  br i1 %19, label %20, label %43

20:                                               ; preds = %11, %20
  %21 = phi i64 [ %37, %20 ], [ 0, %11 ]
  %22 = phi float [ %31, %20 ], [ 0xC7EFFFFFE0000000, %11 ]
  %23 = phi float [ %32, %20 ], [ 0xC7EFFFFFE0000000, %11 ]
  %24 = phi float [ %28, %20 ], [ 0x47EFFFFFE0000000, %11 ]
  %25 = phi float [ %30, %20 ], [ 0x47EFFFFFE0000000, %11 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %26 = getelementptr inbounds [2 x float], ptr %0, i64 %21
  call fastcc void @mul_v2_v2_cw(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %26) #14
  %27 = load float, ptr %5, align 4, !tbaa !34
  %28 = tail call fastcc float @min_ff(float noundef %24, float noundef %27) #14
  %29 = load float, ptr %9, align 4, !tbaa !34
  %30 = tail call fastcc float @min_ff(float noundef %25, float noundef %29) #14
  %31 = tail call fastcc float @max_ff(float noundef %22, float noundef %27) #14
  %32 = tail call fastcc float @max_ff(float noundef %23, float noundef %29) #14
  %33 = fsub float %31, %28
  %34 = fsub float %32, %30
  %35 = fmul float %33, %34
  %36 = fcmp ule float %35, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp ult i64 %37, %10
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %20, label %40, !llvm.loop !58

40:                                               ; preds = %20
  %41 = fcmp olt float %35, %14
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  br label %43

43:                                               ; preds = %40, %42, %11
  %44 = phi float [ %14, %11 ], [ %35, %42 ], [ %14, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %45 = add nuw nsw i64 %12, 1
  %46 = trunc i64 %12 to i32
  %47 = icmp eq i64 %45, %10
  br i1 %47, label %48, label %11, !llvm.loop !59

48:                                               ; preds = %43
  %49 = fcmp une float %44, 0x47EFFFFFE0000000
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load float, ptr %3, align 4, !tbaa !34
  %52 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = tail call float @atan2f(float noundef %51, float noundef %53) #15
  br label %55

55:                                               ; preds = %2, %48, %50
  %56 = phi float [ %54, %50 ], [ 0.000000e+00, %48 ], [ 0.000000e+00, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret float %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !60 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !61 {
  %2 = tail call fastcc float @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #14
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2_cw(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !62 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  store float %11, ptr %0, align 4, !tbaa !34
  %12 = load float, ptr %6, align 4, !tbaa !34
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = load float, ptr %1, align 4, !tbaa !34
  %15 = fneg float %14
  %16 = load float, ptr %8, align 4, !tbaa !34
  %17 = fmul float %16, %15
  %18 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %17)
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !63 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !64 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !65 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLI_convexhull_aabb_fit_points_2d(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %4 = zext i32 %1 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = tail call ptr %3(i64 noundef %5, ptr noundef nonnull @__func__.BLI_convexhull_aabb_fit_points_2d) #15
  %7 = tail call i32 @BLI_convexhull_2d(ptr noundef %0, i32 noundef %1, ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %11 = sext i32 %7 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.BLI_convexhull_aabb_fit_points_2d) #15
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = zext nneg i32 %7 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %24, %17 ]
  %19 = getelementptr inbounds [2 x float], ptr %13, i64 %18
  %20 = getelementptr inbounds i32, ptr %6, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !40
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x float], ptr %0, i64 %22
  tail call fastcc void @copy_v2_v2(ptr noundef %19, ptr noundef %23) #14
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, %16
  br i1 %25, label %26, label %17, !llvm.loop !66

26:                                               ; preds = %17, %9
  %27 = tail call float @BLI_convexhull_aabb_fit_hull_2d(ptr noundef %13, i32 noundef %7) #14
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %28(ptr noundef %13) #15
  br label %29

29:                                               ; preds = %2, %26
  %30 = phi float [ %27, %26 ], [ 0.000000e+00, %2 ]
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %31(ptr noundef %6) #15
  ret float %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !67 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !68 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !69 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #13 !PGOFuncName !70 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !39}
!46 = distinct !{!46, !39}
!47 = !{!"convexhull2d.c:is_left"}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !36, i64 0}
!50 = !{!51, !49, i64 0}
!51 = !{!"PointRef", !49, i64 0}
!52 = distinct !{!52, !39, !53, !54}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = !{!"convexhull2d.c:pointref_cmp_yx"}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39}
!60 = !{!"convexhull2d.c:sub_v2_v2v2"}
!61 = !{!"convexhull2d.c:normalize_v2"}
!62 = !{!"convexhull2d.c:mul_v2_v2_cw"}
!63 = !{!"convexhull2d.c:min_ff"}
!64 = !{!"convexhull2d.c:max_ff"}
!65 = !{!"convexhull2d.c:copy_v2_v2"}
!66 = distinct !{!66, !39}
!67 = !{!"convexhull2d.c:normalize_v2_v2"}
!68 = !{!"convexhull2d.c:dot_v2v2"}
!69 = !{!"convexhull2d.c:mul_v2_v2fl"}
!70 = !{!"convexhull2d.c:zero_v2"}
