; ModuleID = 'blender/source/blender/imbuf/intern/imageprocess.c'
source_filename = "blender/source/blender/imbuf/intern/imageprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"processor apply threaded handles\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_convert_rgba_to_abgr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %3, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = mul nsw i32 %11, %9
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %7, %14
  %15 = phi i32 [ %17, %14 ], [ %12, %7 ]
  %16 = phi ptr [ %20, %14 ], [ %3, %7 ]
  %17 = add nsw i32 %15, -1
  %18 = load <4 x i8>, ptr %16, align 1, !tbaa !46
  %19 = shufflevector <4 x i8> %18, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %19, ptr %16, align 1, !tbaa !46
  %20 = getelementptr inbounds i8, ptr %16, i64 4
  %21 = icmp ugt i32 %15, 1
  br i1 %21, label %14, label %22, !llvm.loop !47

22:                                               ; preds = %14
  %23 = load ptr, ptr %4, align 8, !tbaa !43
  br label %24

24:                                               ; preds = %7, %22, %1
  %25 = phi ptr [ %5, %1 ], [ %23, %22 ], [ %5, %7 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !45
  %32 = mul nsw i32 %31, %29
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27, %34
  %35 = phi ptr [ %40, %34 ], [ %5, %27 ]
  %36 = phi i32 [ %37, %34 ], [ %32, %27 ]
  %37 = add nsw i32 %36, -1
  %38 = load <4 x float>, ptr %35, align 4, !tbaa !49
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %39, ptr %35, align 4, !tbaa !49
  %40 = getelementptr inbounds float, ptr %35, i64 4
  %41 = icmp ugt i32 %36, 1
  br i1 %41, label %34, label %42, !llvm.loop !50

42:                                               ; preds = %34, %27, %24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bicubic_interpolation_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !45
  br i1 %6, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  tail call void @BLI_bicubic_interpolation_fl(ptr noundef %13, ptr noundef nonnull %2, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #10
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @BLI_bicubic_interpolation_char(ptr noundef %16, ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #10
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: optsize
declare void @BLI_bicubic_interpolation_fl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_bicubic_interpolation_char(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bicubic_interpolation(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !51
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %10
  call fastcc void @pixel_from_buffer(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %5) #12
  %19 = load ptr, ptr %7, align 8, !tbaa !51
  %20 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void @bicubic_interpolation_color(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %20, float noundef %2, float noundef %3) #12
  br label %21

21:                                               ; preds = %6, %14, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @pixel_from_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 !PGOFuncName !52 {
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = mul nsw i32 %7, %4
  %9 = add i32 %8, %3
  %10 = shl i32 %9, 2
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  store ptr %16, ptr %1, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %14, %5
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = sext i32 %10 to i64
  %23 = getelementptr inbounds float, ptr %19, i64 %22
  store ptr %23, ptr %2, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bilinear_interpolation_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !45
  br i1 %6, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  tail call void @BLI_bilinear_interpolation_fl(ptr noundef %13, ptr noundef nonnull %2, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #10
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @BLI_bilinear_interpolation_char(ptr noundef %16, ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #10
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: optsize
declare void @BLI_bilinear_interpolation_fl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_bilinear_interpolation_char(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bilinear_interpolation_color_wrap(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, float noundef %3, float noundef %4) local_unnamed_addr #5 {
  %6 = fpext float %3 to double
  %7 = tail call double @llvm.floor.f64(double %6)
  %8 = fptosi double %7 to i32
  %9 = tail call double @llvm.ceil.f64(double %6)
  %10 = fptosi double %9 to i32
  %11 = fpext float %4 to double
  %12 = tail call double @llvm.floor.f64(double %11)
  %13 = fptosi double %12 to i32
  %14 = tail call double @llvm.ceil.f64(double %11)
  %15 = fptosi double %14 to i32
  %16 = icmp slt i32 %10, 0
  br i1 %16, label %230, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = icmp sle i32 %19, %8
  %21 = icmp slt i32 %15, 0
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %230, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !45
  %26 = icmp sgt i32 %25, %13
  br i1 %26, label %27, label %230

27:                                               ; preds = %23
  %28 = icmp slt i32 %8, 0
  %29 = select i1 %28, i32 %19, i32 0
  %30 = add nsw i32 %29, %8
  %31 = icmp slt i32 %13, 0
  %32 = select i1 %31, i32 %25, i32 0
  %33 = add nsw i32 %32, %13
  %34 = icmp sgt i32 %19, %10
  %35 = select i1 %34, i32 0, i32 %19
  %36 = sub nsw i32 %10, %35
  %37 = icmp sgt i32 %25, %15
  %38 = select i1 %37, i32 0, i32 %25
  %39 = sub nsw i32 %15, %38
  %40 = tail call float @llvm.floor.f32(float %3)
  %41 = fsub float %3, %40
  %42 = tail call float @llvm.floor.f32(float %4)
  %43 = fsub float %4, %42
  %44 = fmul float %41, %43
  %45 = fsub float 1.000000e+00, %41
  %46 = fmul float %45, %43
  %47 = fsub float 1.000000e+00, %43
  %48 = fmul float %41, %47
  %49 = fmul float %45, %47
  %50 = icmp eq ptr %2, null
  br i1 %50, label %139, label %51

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = shl i32 %19, 2
  %55 = mul i32 %54, %33
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %53, i64 %56
  %58 = shl nsw i32 %30, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %57, i64 %59
  %61 = mul i32 %54, %39
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %53, i64 %62
  %64 = getelementptr inbounds float, ptr %63, i64 %59
  %65 = shl nsw i32 %36, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %57, i64 %66
  %68 = getelementptr inbounds float, ptr %63, i64 %66
  %69 = load float, ptr %60, align 4, !tbaa !49
  %70 = load float, ptr %67, align 4, !tbaa !49
  %71 = fmul float %48, %70
  %72 = tail call float @llvm.fmuladd.f32(float %49, float %69, float %71)
  %73 = load float, ptr %64, align 4, !tbaa !49
  %74 = tail call float @llvm.fmuladd.f32(float %46, float %73, float %72)
  %75 = load float, ptr %68, align 4, !tbaa !49
  %76 = tail call float @llvm.fmuladd.f32(float %44, float %75, float %74)
  store float %76, ptr %2, align 4, !tbaa !49
  %77 = getelementptr inbounds float, ptr %60, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !49
  %79 = getelementptr inbounds float, ptr %67, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !49
  %81 = fmul float %48, %80
  %82 = tail call float @llvm.fmuladd.f32(float %49, float %78, float %81)
  %83 = getelementptr inbounds float, ptr %64, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !49
  %85 = tail call float @llvm.fmuladd.f32(float %46, float %84, float %82)
  %86 = getelementptr inbounds float, ptr %68, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !49
  %88 = tail call float @llvm.fmuladd.f32(float %44, float %87, float %85)
  %89 = getelementptr inbounds float, ptr %2, i64 1
  store float %88, ptr %89, align 4, !tbaa !49
  %90 = getelementptr inbounds float, ptr %60, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !49
  %92 = getelementptr inbounds float, ptr %67, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !49
  %94 = fmul float %48, %93
  %95 = tail call float @llvm.fmuladd.f32(float %49, float %91, float %94)
  %96 = getelementptr inbounds float, ptr %64, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !49
  %98 = tail call float @llvm.fmuladd.f32(float %46, float %97, float %95)
  %99 = getelementptr inbounds float, ptr %68, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !49
  %101 = tail call float @llvm.fmuladd.f32(float %44, float %100, float %98)
  %102 = getelementptr inbounds float, ptr %2, i64 2
  store float %101, ptr %102, align 4, !tbaa !49
  %103 = getelementptr inbounds float, ptr %60, i64 3
  %104 = load float, ptr %103, align 4, !tbaa !49
  %105 = getelementptr inbounds float, ptr %67, i64 3
  %106 = load float, ptr %105, align 4, !tbaa !49
  %107 = fmul float %48, %106
  %108 = tail call float @llvm.fmuladd.f32(float %49, float %104, float %107)
  %109 = getelementptr inbounds float, ptr %64, i64 3
  %110 = load float, ptr %109, align 4, !tbaa !49
  %111 = tail call float @llvm.fmuladd.f32(float %46, float %110, float %108)
  %112 = getelementptr inbounds float, ptr %68, i64 3
  %113 = load float, ptr %112, align 4, !tbaa !49
  %114 = tail call float @llvm.fmuladd.f32(float %44, float %113, float %111)
  %115 = getelementptr inbounds float, ptr %2, i64 3
  store float %114, ptr %115, align 4, !tbaa !49
  %116 = fcmp olt float %76, 0.000000e+00
  br i1 %116, label %119, label %117

117:                                              ; preds = %51
  %118 = fcmp ogt float %76, 1.000000e+00
  br i1 %118, label %119, label %121

119:                                              ; preds = %117, %51
  %120 = phi float [ 0.000000e+00, %51 ], [ 1.000000e+00, %117 ]
  store float %120, ptr %2, align 4, !tbaa !49
  br label %121

121:                                              ; preds = %119, %117
  %122 = fcmp olt float %88, 0.000000e+00
  br i1 %122, label %125, label %123

123:                                              ; preds = %121
  %124 = fcmp ogt float %88, 1.000000e+00
  br i1 %124, label %125, label %127

125:                                              ; preds = %123, %121
  %126 = phi float [ 0.000000e+00, %121 ], [ 1.000000e+00, %123 ]
  store float %126, ptr %89, align 4, !tbaa !49
  br label %127

127:                                              ; preds = %125, %123
  %128 = fcmp olt float %101, 0.000000e+00
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = fcmp ogt float %101, 1.000000e+00
  br i1 %130, label %131, label %133

131:                                              ; preds = %129, %127
  %132 = phi float [ 0.000000e+00, %127 ], [ 1.000000e+00, %129 ]
  store float %132, ptr %102, align 4, !tbaa !49
  br label %133

133:                                              ; preds = %131, %129
  %134 = fcmp olt float %114, 0.000000e+00
  br i1 %134, label %137, label %135

135:                                              ; preds = %133
  %136 = fcmp ogt float %114, 1.000000e+00
  br i1 %136, label %137, label %139

137:                                              ; preds = %135, %133
  %138 = phi float [ 0.000000e+00, %133 ], [ 1.000000e+00, %135 ]
  store float %138, ptr %115, align 4, !tbaa !49
  br label %139

139:                                              ; preds = %137, %135, %27
  %140 = icmp eq ptr %1, null
  br i1 %140, label %230, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = shl i32 %19, 2
  %145 = mul i32 %144, %33
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %143, i64 %146
  %148 = shl nsw i32 %30, 2
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %147, i64 %149
  %151 = mul i32 %144, %39
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %143, i64 %152
  %154 = getelementptr inbounds i8, ptr %153, i64 %149
  %155 = shl nsw i32 %36, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %147, i64 %156
  %158 = getelementptr inbounds i8, ptr %153, i64 %156
  %159 = load i8, ptr %150, align 1, !tbaa !46
  %160 = uitofp i8 %159 to float
  %161 = load i8, ptr %157, align 1, !tbaa !46
  %162 = uitofp i8 %161 to float
  %163 = fmul float %48, %162
  %164 = tail call float @llvm.fmuladd.f32(float %49, float %160, float %163)
  %165 = load i8, ptr %154, align 1, !tbaa !46
  %166 = uitofp i8 %165 to float
  %167 = tail call float @llvm.fmuladd.f32(float %46, float %166, float %164)
  %168 = load i8, ptr %158, align 1, !tbaa !46
  %169 = uitofp i8 %168 to float
  %170 = tail call float @llvm.fmuladd.f32(float %44, float %169, float %167)
  %171 = fadd float %170, 5.000000e-01
  %172 = fptoui float %171 to i8
  store i8 %172, ptr %1, align 1, !tbaa !46
  %173 = getelementptr inbounds i8, ptr %150, i64 1
  %174 = load i8, ptr %173, align 1, !tbaa !46
  %175 = uitofp i8 %174 to float
  %176 = getelementptr inbounds i8, ptr %157, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !46
  %178 = uitofp i8 %177 to float
  %179 = fmul float %48, %178
  %180 = tail call float @llvm.fmuladd.f32(float %49, float %175, float %179)
  %181 = getelementptr inbounds i8, ptr %154, i64 1
  %182 = load i8, ptr %181, align 1, !tbaa !46
  %183 = uitofp i8 %182 to float
  %184 = tail call float @llvm.fmuladd.f32(float %46, float %183, float %180)
  %185 = getelementptr inbounds i8, ptr %158, i64 1
  %186 = load i8, ptr %185, align 1, !tbaa !46
  %187 = uitofp i8 %186 to float
  %188 = tail call float @llvm.fmuladd.f32(float %44, float %187, float %184)
  %189 = fadd float %188, 5.000000e-01
  %190 = fptoui float %189 to i8
  %191 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %190, ptr %191, align 1, !tbaa !46
  %192 = getelementptr inbounds i8, ptr %150, i64 2
  %193 = load i8, ptr %192, align 1, !tbaa !46
  %194 = uitofp i8 %193 to float
  %195 = getelementptr inbounds i8, ptr %157, i64 2
  %196 = load i8, ptr %195, align 1, !tbaa !46
  %197 = uitofp i8 %196 to float
  %198 = fmul float %48, %197
  %199 = tail call float @llvm.fmuladd.f32(float %49, float %194, float %198)
  %200 = getelementptr inbounds i8, ptr %154, i64 2
  %201 = load i8, ptr %200, align 1, !tbaa !46
  %202 = uitofp i8 %201 to float
  %203 = tail call float @llvm.fmuladd.f32(float %46, float %202, float %199)
  %204 = getelementptr inbounds i8, ptr %158, i64 2
  %205 = load i8, ptr %204, align 1, !tbaa !46
  %206 = uitofp i8 %205 to float
  %207 = tail call float @llvm.fmuladd.f32(float %44, float %206, float %203)
  %208 = fadd float %207, 5.000000e-01
  %209 = fptoui float %208 to i8
  %210 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %209, ptr %210, align 1, !tbaa !46
  %211 = getelementptr inbounds i8, ptr %150, i64 3
  %212 = load i8, ptr %211, align 1, !tbaa !46
  %213 = uitofp i8 %212 to float
  %214 = getelementptr inbounds i8, ptr %157, i64 3
  %215 = load i8, ptr %214, align 1, !tbaa !46
  %216 = uitofp i8 %215 to float
  %217 = fmul float %48, %216
  %218 = tail call float @llvm.fmuladd.f32(float %49, float %213, float %217)
  %219 = getelementptr inbounds i8, ptr %154, i64 3
  %220 = load i8, ptr %219, align 1, !tbaa !46
  %221 = uitofp i8 %220 to float
  %222 = tail call float @llvm.fmuladd.f32(float %46, float %221, float %218)
  %223 = getelementptr inbounds i8, ptr %158, i64 3
  %224 = load i8, ptr %223, align 1, !tbaa !46
  %225 = uitofp i8 %224 to float
  %226 = tail call float @llvm.fmuladd.f32(float %44, float %225, float %222)
  %227 = fadd float %226, 5.000000e-01
  %228 = fptoui float %227 to i8
  %229 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %228, ptr %229, align 1, !tbaa !46
  br label %230

230:                                              ; preds = %139, %141, %5, %17, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bilinear_interpolation(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !51
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %10
  call fastcc void @pixel_from_buffer(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %5) #12
  %19 = load ptr, ptr %7, align 8, !tbaa !51
  %20 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void @bilinear_interpolation_color(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %20, float noundef %2, float noundef %3) #12
  br label %21

21:                                               ; preds = %6, %14, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @nearest_interpolation_color(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, float noundef %3, float noundef %4) local_unnamed_addr #5 {
  %6 = fptosi float %3 to i32
  %7 = fptosi float %4 to i32
  %8 = icmp slt i32 %6, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp sle i32 %11, %6
  %13 = icmp slt i32 %7, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = icmp sgt i32 %17, %7
  br i1 %18, label %25, label %19

19:                                               ; preds = %15, %9, %5
  %20 = icmp eq ptr %1, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  store i32 0, ptr %1, align 1
  br label %22

22:                                               ; preds = %21, %19
  %23 = icmp eq ptr %2, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %68

25:                                               ; preds = %15
  %26 = shl nsw i32 %6, 2
  %27 = zext nneg i32 %26 to i64
  %28 = icmp eq ptr %1, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = shl i32 %7, 2
  %33 = mul i32 %32, %11
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  %36 = getelementptr inbounds i8, ptr %35, i64 %27
  %37 = load i8, ptr %36, align 1, !tbaa !46
  store i8 %37, ptr %1, align 1, !tbaa !46
  %38 = getelementptr inbounds i8, ptr %36, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !46
  %40 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %39, ptr %40, align 1, !tbaa !46
  %41 = getelementptr inbounds i8, ptr %36, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !46
  %43 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %42, ptr %43, align 1, !tbaa !46
  %44 = getelementptr inbounds i8, ptr %36, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !46
  %46 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !46
  br label %47

47:                                               ; preds = %29, %25
  %48 = icmp eq ptr %2, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = load i32, ptr %10, align 8, !tbaa !44
  %53 = shl i32 %7, 2
  %54 = mul i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %51, i64 %55
  %57 = getelementptr inbounds float, ptr %56, i64 %27
  %58 = load float, ptr %57, align 4, !tbaa !49
  store float %58, ptr %2, align 4, !tbaa !49
  %59 = getelementptr inbounds float, ptr %57, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !49
  %61 = getelementptr inbounds float, ptr %2, i64 1
  store float %60, ptr %61, align 4, !tbaa !49
  %62 = getelementptr inbounds float, ptr %57, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !49
  %64 = getelementptr inbounds float, ptr %2, i64 2
  store float %63, ptr %64, align 4, !tbaa !49
  %65 = getelementptr inbounds float, ptr %57, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !49
  %67 = getelementptr inbounds float, ptr %2, i64 3
  store float %66, ptr %67, align 4, !tbaa !49
  br label %68

68:                                               ; preds = %49, %47, %22, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nearest_interpolation(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !51
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %10
  call fastcc void @pixel_from_buffer(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %5) #12
  %19 = load ptr, ptr %7, align 8, !tbaa !51
  %20 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void @nearest_interpolation_color(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %20, float noundef %2, float noundef %3) #12
  br label %21

21:                                               ; preds = %6, %14, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_processor_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = tail call ptr @BLI_task_scheduler_get() #10
  %7 = add nsw i32 %0, 63
  %8 = sdiv i32 %7, 64
  %9 = tail call ptr @BLI_task_pool_create(ptr noundef %6, ptr noundef %4) #10
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %11 = mul nsw i32 %8, %1
  %12 = sext i32 %11 to i64
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str) #10
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %5
  %16 = add nsw i32 %8, -1
  %17 = sext i32 %1 to i64
  %18 = sext i32 %16 to i64
  %19 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %20 = zext nneg i32 %19 to i64
  br label %21

21:                                               ; preds = %15, %21
  %22 = phi i64 [ 0, %15 ], [ %30, %21 ]
  %23 = phi i32 [ 0, %15 ], [ %29, %21 ]
  %24 = mul nsw i64 %22, %17
  %25 = getelementptr inbounds i8, ptr %13, i64 %24
  %26 = icmp slt i64 %22, %18
  %27 = sub nsw i32 %0, %23
  %28 = select i1 %26, i32 64, i32 %27
  tail call void %3(ptr noundef %25, i32 noundef %23, i32 noundef %28, ptr noundef %2) #10
  tail call void @BLI_task_pool_push(ptr noundef %9, ptr noundef nonnull @processor_apply_func, ptr noundef %25, i8 noundef zeroext 0, i32 noundef 0) #10
  %29 = add nuw nsw i32 %23, 64
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %20
  br i1 %31, label %32, label %21, !llvm.loop !53

32:                                               ; preds = %21, %5
  tail call void @BLI_task_pool_work_and_wait(ptr noundef %9) #10
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %33(ptr noundef %13) #10
  tail call void @BLI_task_pool_free(ptr noundef %9) #10
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_get() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @processor_apply_func(ptr noundef %0, ptr noundef %1, i32 %2) #2 !PGOFuncName !54 {
  %4 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #10
  tail call void %4(ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_alpha_under_color_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = mul nsw i32 %2, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = getelementptr inbounds float, ptr %3, i64 2
  br label %10

10:                                               ; preds = %7, %31
  %11 = phi i32 [ %5, %7 ], [ %13, %31 ]
  %12 = phi ptr [ %0, %7 ], [ %32, %31 ]
  %13 = add nsw i32 %11, -1
  %14 = getelementptr inbounds float, ptr %12, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %3) #12
  br label %31

18:                                               ; preds = %10
  %19 = fsub float 1.000000e+00, %15
  %20 = load float, ptr %3, align 4, !tbaa !49
  %21 = load float, ptr %12, align 4, !tbaa !49
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %21)
  store float %22, ptr %12, align 4, !tbaa !49
  %23 = load float, ptr %8, align 4, !tbaa !49
  %24 = getelementptr inbounds float, ptr %12, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = tail call float @llvm.fmuladd.f32(float %19, float %23, float %25)
  store float %26, ptr %24, align 4, !tbaa !49
  %27 = load float, ptr %9, align 4, !tbaa !49
  %28 = getelementptr inbounds float, ptr %12, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !49
  %30 = tail call float @llvm.fmuladd.f32(float %19, float %27, float %29)
  store float %30, ptr %28, align 4, !tbaa !49
  br label %31

31:                                               ; preds = %18, %17
  store float 1.000000e+00, ptr %14, align 4, !tbaa !49
  %32 = getelementptr inbounds float, ptr %12, i64 4
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %34, label %10, !llvm.loop !55

34:                                               ; preds = %31, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !56 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_alpha_under_color_byte(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = mul nsw i32 %2, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = getelementptr inbounds float, ptr %3, i64 2
  br label %10

10:                                               ; preds = %7, %53
  %11 = phi i32 [ %5, %7 ], [ %13, %53 ]
  %12 = phi ptr [ %0, %7 ], [ %54, %53 ]
  %13 = add nsw i32 %11, -1
  %14 = getelementptr inbounds i8, ptr %12, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !46
  switch i8 %15, label %28 [
    i8 -1, label %53
    i8 0, label %16
  ]

16:                                               ; preds = %10
  %17 = load float, ptr %3, align 4, !tbaa !49
  %18 = fmul float %17, 2.550000e+02
  %19 = fptoui float %18 to i8
  store i8 %19, ptr %12, align 1, !tbaa !46
  %20 = load float, ptr %8, align 4, !tbaa !49
  %21 = fmul float %20, 2.550000e+02
  %22 = fptoui float %21 to i8
  %23 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %22, ptr %23, align 1, !tbaa !46
  %24 = load float, ptr %9, align 4, !tbaa !49
  %25 = fmul float %24, 2.550000e+02
  %26 = fptoui float %25 to i8
  %27 = getelementptr inbounds i8, ptr %12, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !46
  br label %53

28:                                               ; preds = %10
  %29 = uitofp i8 %15 to double
  %30 = fdiv double %29, 2.550000e+02
  %31 = fptrunc double %30 to float
  %32 = fsub float 1.000000e+00, %31
  %33 = load i8, ptr %12, align 1, !tbaa !46
  %34 = uitofp i8 %33 to float
  %35 = load float, ptr %3, align 4, !tbaa !49
  %36 = fmul float %32, %35
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %31, float %36)
  %38 = fptoui float %37 to i8
  store i8 %38, ptr %12, align 1, !tbaa !46
  %39 = getelementptr inbounds i8, ptr %12, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !46
  %41 = uitofp i8 %40 to float
  %42 = load float, ptr %8, align 4, !tbaa !49
  %43 = fmul float %32, %42
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %31, float %43)
  %45 = fptoui float %44 to i8
  store i8 %45, ptr %39, align 1, !tbaa !46
  %46 = getelementptr inbounds i8, ptr %12, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !46
  %48 = uitofp i8 %47 to float
  %49 = load float, ptr %9, align 4, !tbaa !49
  %50 = fmul float %32, %49
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %31, float %50)
  %52 = fptoui float %51 to i8
  store i8 %52, ptr %46, align 1, !tbaa !46
  br label %53

53:                                               ; preds = %10, %16, %28
  store i8 -1, ptr %14, align 1, !tbaa !46
  %54 = getelementptr inbounds i8, ptr %12, i64 4
  %55 = icmp eq i32 %13, 0
  br i1 %55, label %56, label %10, !llvm.loop !57

56:                                               ; preds = %53, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !36, i64 48}
!44 = !{!35, !39, i64 16}
!45 = !{!35, !39, i64 20}
!46 = !{!37, !37, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!40, !40, i64 0}
!50 = distinct !{!50, !48}
!51 = !{!36, !36, i64 0}
!52 = !{!"imageprocess.c:pixel_from_buffer"}
!53 = distinct !{!53, !48}
!54 = !{!"imageprocess.c:processor_apply_func"}
!55 = distinct !{!55, !48}
!56 = !{!"imageprocess.c:copy_v3_v3"}
!57 = distinct !{!57, !48}
