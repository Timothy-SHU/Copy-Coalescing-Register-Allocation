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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_convert_rgba_to_abgr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %3, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = mul nsw i32 %11, %9
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7, %14
  %15 = phi i32 [ %17, %14 ], [ %12, %7 ]
  %16 = phi ptr [ %25, %14 ], [ %3, %7 ]
  %17 = add nsw i32 %15, -1
  %18 = load i8, ptr %16, align 1, !tbaa !46
  %19 = getelementptr inbounds i8, ptr %16, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !46
  store i8 %20, ptr %16, align 1, !tbaa !46
  store i8 %18, ptr %19, align 1, !tbaa !46
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = getelementptr inbounds i8, ptr %16, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !46
  store i8 %24, ptr %21, align 1, !tbaa !46
  store i8 %22, ptr %23, align 1, !tbaa !46
  %25 = getelementptr inbounds i8, ptr %16, i64 4
  %26 = icmp sgt i32 %15, 1
  br i1 %26, label %14, label %27, !llvm.loop !47

27:                                               ; preds = %14, %7, %1
  %28 = load ptr, ptr %4, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !45
  %35 = mul nsw i32 %34, %32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30, %37
  %38 = phi ptr [ %48, %37 ], [ %5, %30 ]
  %39 = phi i32 [ %40, %37 ], [ %35, %30 ]
  %40 = add nsw i32 %39, -1
  %41 = load float, ptr %38, align 4, !tbaa !50
  %42 = getelementptr inbounds float, ptr %38, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !50
  store float %43, ptr %38, align 4, !tbaa !50
  store float %41, ptr %42, align 4, !tbaa !50
  %44 = getelementptr inbounds float, ptr %38, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !50
  %46 = getelementptr inbounds float, ptr %38, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !50
  store float %47, ptr %44, align 4, !tbaa !50
  store float %45, ptr %46, align 4, !tbaa !50
  %48 = getelementptr inbounds float, ptr %38, i64 4
  %49 = icmp sgt i32 %39, 1
  br i1 %49, label %37, label %50, !llvm.loop !51

50:                                               ; preds = %37, %30, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bicubic_interpolation_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !45
  br i1 %6, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  tail call void @BLI_bicubic_interpolation_fl(ptr noundef %13, ptr noundef nonnull %2, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #8
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @BLI_bicubic_interpolation_char(ptr noundef %16, ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #8
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare void @BLI_bicubic_interpolation_fl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLI_bicubic_interpolation_char(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bicubic_interpolation(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = mul nsw i32 %18, %5
  %20 = add i32 %19, %4
  %21 = shl i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds float, ptr %24, i64 %22
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !45
  tail call void @BLI_bicubic_interpolation_fl(ptr noundef %29, ptr noundef nonnull %27, i32 noundef %31, i32 noundef %33, i32 noundef 4, float noundef %2, float noundef %3) #8
  br label %44

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds i8, ptr %36, i64 %22
  %39 = select i1 %37, ptr null, ptr %38
  %40 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !45
  tail call void @BLI_bicubic_interpolation_char(ptr noundef %10, ptr noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef 4, float noundef %2, float noundef %3) #8
  br label %44

44:                                               ; preds = %34, %26, %6, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bilinear_interpolation_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !45
  br i1 %6, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  tail call void @BLI_bilinear_interpolation_fl(ptr noundef %13, ptr noundef nonnull %2, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #8
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @BLI_bilinear_interpolation_char(ptr noundef %16, ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef 4, float noundef %3, float noundef %4) #8
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare void @BLI_bilinear_interpolation_fl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLI_bilinear_interpolation_char(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bilinear_interpolation_color_wrap(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
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
  br i1 %16, label %232, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = icmp sle i32 %19, %8
  %21 = icmp slt i32 %15, 0
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %232, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !45
  %26 = icmp sgt i32 %25, %13
  br i1 %26, label %27, label %232

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
  br i1 %50, label %140, label %51

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
  %61 = shl i32 %19, 2
  %62 = mul i32 %61, %39
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr %53, i64 %63
  %65 = getelementptr inbounds float, ptr %64, i64 %59
  %66 = shl nsw i32 %36, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %57, i64 %67
  %69 = getelementptr inbounds float, ptr %64, i64 %67
  %70 = load float, ptr %60, align 4, !tbaa !50
  %71 = load float, ptr %68, align 4, !tbaa !50
  %72 = fmul float %48, %71
  %73 = tail call float @llvm.fmuladd.f32(float %49, float %70, float %72)
  %74 = load float, ptr %65, align 4, !tbaa !50
  %75 = tail call float @llvm.fmuladd.f32(float %46, float %74, float %73)
  %76 = load float, ptr %69, align 4, !tbaa !50
  %77 = tail call float @llvm.fmuladd.f32(float %44, float %76, float %75)
  store float %77, ptr %2, align 4, !tbaa !50
  %78 = getelementptr inbounds float, ptr %60, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !50
  %80 = getelementptr inbounds float, ptr %68, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !50
  %82 = fmul float %48, %81
  %83 = tail call float @llvm.fmuladd.f32(float %49, float %79, float %82)
  %84 = getelementptr inbounds float, ptr %65, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !50
  %86 = tail call float @llvm.fmuladd.f32(float %46, float %85, float %83)
  %87 = getelementptr inbounds float, ptr %69, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = tail call float @llvm.fmuladd.f32(float %44, float %88, float %86)
  %90 = getelementptr inbounds float, ptr %2, i64 1
  store float %89, ptr %90, align 4, !tbaa !50
  %91 = getelementptr inbounds float, ptr %60, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !50
  %93 = getelementptr inbounds float, ptr %68, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !50
  %95 = fmul float %48, %94
  %96 = tail call float @llvm.fmuladd.f32(float %49, float %92, float %95)
  %97 = getelementptr inbounds float, ptr %65, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !50
  %99 = tail call float @llvm.fmuladd.f32(float %46, float %98, float %96)
  %100 = getelementptr inbounds float, ptr %69, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !50
  %102 = tail call float @llvm.fmuladd.f32(float %44, float %101, float %99)
  %103 = getelementptr inbounds float, ptr %2, i64 2
  store float %102, ptr %103, align 4, !tbaa !50
  %104 = getelementptr inbounds float, ptr %60, i64 3
  %105 = load float, ptr %104, align 4, !tbaa !50
  %106 = getelementptr inbounds float, ptr %68, i64 3
  %107 = load float, ptr %106, align 4, !tbaa !50
  %108 = fmul float %48, %107
  %109 = tail call float @llvm.fmuladd.f32(float %49, float %105, float %108)
  %110 = getelementptr inbounds float, ptr %65, i64 3
  %111 = load float, ptr %110, align 4, !tbaa !50
  %112 = tail call float @llvm.fmuladd.f32(float %46, float %111, float %109)
  %113 = getelementptr inbounds float, ptr %69, i64 3
  %114 = load float, ptr %113, align 4, !tbaa !50
  %115 = tail call float @llvm.fmuladd.f32(float %44, float %114, float %112)
  %116 = getelementptr inbounds float, ptr %2, i64 3
  store float %115, ptr %116, align 4, !tbaa !50
  %117 = fcmp olt float %77, 0.000000e+00
  br i1 %117, label %120, label %118

118:                                              ; preds = %51
  %119 = fcmp ogt float %77, 1.000000e+00
  br i1 %119, label %120, label %122

120:                                              ; preds = %118, %51
  %121 = phi float [ 0.000000e+00, %51 ], [ 1.000000e+00, %118 ]
  store float %121, ptr %2, align 4, !tbaa !50
  br label %122

122:                                              ; preds = %120, %118
  %123 = fcmp olt float %89, 0.000000e+00
  br i1 %123, label %126, label %124

124:                                              ; preds = %122
  %125 = fcmp ogt float %89, 1.000000e+00
  br i1 %125, label %126, label %128

126:                                              ; preds = %124, %122
  %127 = phi float [ 0.000000e+00, %122 ], [ 1.000000e+00, %124 ]
  store float %127, ptr %90, align 4, !tbaa !50
  br label %128

128:                                              ; preds = %126, %124
  %129 = fcmp olt float %102, 0.000000e+00
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = fcmp ogt float %102, 1.000000e+00
  br i1 %131, label %132, label %134

132:                                              ; preds = %130, %128
  %133 = phi float [ 0.000000e+00, %128 ], [ 1.000000e+00, %130 ]
  store float %133, ptr %103, align 4, !tbaa !50
  br label %134

134:                                              ; preds = %132, %130
  %135 = fcmp olt float %115, 0.000000e+00
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = fcmp ogt float %115, 1.000000e+00
  br i1 %137, label %138, label %140

138:                                              ; preds = %136, %134
  %139 = phi float [ 0.000000e+00, %134 ], [ 1.000000e+00, %136 ]
  store float %139, ptr %116, align 4, !tbaa !50
  br label %140

140:                                              ; preds = %138, %136, %27
  %141 = icmp eq ptr %1, null
  br i1 %141, label %232, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  %145 = shl i32 %19, 2
  %146 = mul i32 %145, %33
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %144, i64 %147
  %149 = shl nsw i32 %30, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %148, i64 %150
  %152 = shl i32 %19, 2
  %153 = mul i32 %152, %39
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %144, i64 %154
  %156 = getelementptr inbounds i8, ptr %155, i64 %150
  %157 = shl nsw i32 %36, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %148, i64 %158
  %160 = getelementptr inbounds i8, ptr %155, i64 %158
  %161 = load i8, ptr %151, align 1, !tbaa !46
  %162 = uitofp i8 %161 to float
  %163 = load i8, ptr %159, align 1, !tbaa !46
  %164 = uitofp i8 %163 to float
  %165 = fmul float %48, %164
  %166 = tail call float @llvm.fmuladd.f32(float %49, float %162, float %165)
  %167 = load i8, ptr %156, align 1, !tbaa !46
  %168 = uitofp i8 %167 to float
  %169 = tail call float @llvm.fmuladd.f32(float %46, float %168, float %166)
  %170 = load i8, ptr %160, align 1, !tbaa !46
  %171 = uitofp i8 %170 to float
  %172 = tail call float @llvm.fmuladd.f32(float %44, float %171, float %169)
  %173 = fadd float %172, 5.000000e-01
  %174 = fptoui float %173 to i8
  store i8 %174, ptr %1, align 1, !tbaa !46
  %175 = getelementptr inbounds i8, ptr %151, i64 1
  %176 = load i8, ptr %175, align 1, !tbaa !46
  %177 = uitofp i8 %176 to float
  %178 = getelementptr inbounds i8, ptr %159, i64 1
  %179 = load i8, ptr %178, align 1, !tbaa !46
  %180 = uitofp i8 %179 to float
  %181 = fmul float %48, %180
  %182 = tail call float @llvm.fmuladd.f32(float %49, float %177, float %181)
  %183 = getelementptr inbounds i8, ptr %156, i64 1
  %184 = load i8, ptr %183, align 1, !tbaa !46
  %185 = uitofp i8 %184 to float
  %186 = tail call float @llvm.fmuladd.f32(float %46, float %185, float %182)
  %187 = getelementptr inbounds i8, ptr %160, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !46
  %189 = uitofp i8 %188 to float
  %190 = tail call float @llvm.fmuladd.f32(float %44, float %189, float %186)
  %191 = fadd float %190, 5.000000e-01
  %192 = fptoui float %191 to i8
  %193 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %192, ptr %193, align 1, !tbaa !46
  %194 = getelementptr inbounds i8, ptr %151, i64 2
  %195 = load i8, ptr %194, align 1, !tbaa !46
  %196 = uitofp i8 %195 to float
  %197 = getelementptr inbounds i8, ptr %159, i64 2
  %198 = load i8, ptr %197, align 1, !tbaa !46
  %199 = uitofp i8 %198 to float
  %200 = fmul float %48, %199
  %201 = tail call float @llvm.fmuladd.f32(float %49, float %196, float %200)
  %202 = getelementptr inbounds i8, ptr %156, i64 2
  %203 = load i8, ptr %202, align 1, !tbaa !46
  %204 = uitofp i8 %203 to float
  %205 = tail call float @llvm.fmuladd.f32(float %46, float %204, float %201)
  %206 = getelementptr inbounds i8, ptr %160, i64 2
  %207 = load i8, ptr %206, align 1, !tbaa !46
  %208 = uitofp i8 %207 to float
  %209 = tail call float @llvm.fmuladd.f32(float %44, float %208, float %205)
  %210 = fadd float %209, 5.000000e-01
  %211 = fptoui float %210 to i8
  %212 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %211, ptr %212, align 1, !tbaa !46
  %213 = getelementptr inbounds i8, ptr %151, i64 3
  %214 = load i8, ptr %213, align 1, !tbaa !46
  %215 = uitofp i8 %214 to float
  %216 = getelementptr inbounds i8, ptr %159, i64 3
  %217 = load i8, ptr %216, align 1, !tbaa !46
  %218 = uitofp i8 %217 to float
  %219 = fmul float %48, %218
  %220 = tail call float @llvm.fmuladd.f32(float %49, float %215, float %219)
  %221 = getelementptr inbounds i8, ptr %156, i64 3
  %222 = load i8, ptr %221, align 1, !tbaa !46
  %223 = uitofp i8 %222 to float
  %224 = tail call float @llvm.fmuladd.f32(float %46, float %223, float %220)
  %225 = getelementptr inbounds i8, ptr %160, i64 3
  %226 = load i8, ptr %225, align 1, !tbaa !46
  %227 = uitofp i8 %226 to float
  %228 = tail call float @llvm.fmuladd.f32(float %44, float %227, float %224)
  %229 = fadd float %228, 5.000000e-01
  %230 = fptoui float %229 to i8
  %231 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %230, ptr %231, align 1, !tbaa !46
  br label %232

232:                                              ; preds = %140, %142, %5, %17, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local void @bilinear_interpolation(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = mul nsw i32 %18, %5
  %20 = add i32 %19, %4
  %21 = shl i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds float, ptr %24, i64 %22
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !45
  tail call void @BLI_bilinear_interpolation_fl(ptr noundef %29, ptr noundef nonnull %27, i32 noundef %31, i32 noundef %33, i32 noundef 4, float noundef %2, float noundef %3) #8
  br label %44

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds i8, ptr %36, i64 %22
  %39 = select i1 %37, ptr null, ptr %38
  %40 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !45
  tail call void @BLI_bilinear_interpolation_char(ptr noundef %10, ptr noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef 4, float noundef %2, float noundef %3) #8
  br label %44

44:                                               ; preds = %34, %26, %6, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @nearest_interpolation_color(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
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
  %58 = load float, ptr %57, align 4, !tbaa !50
  store float %58, ptr %2, align 4, !tbaa !50
  %59 = getelementptr inbounds float, ptr %57, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = getelementptr inbounds float, ptr %2, i64 1
  store float %60, ptr %61, align 4, !tbaa !50
  %62 = getelementptr inbounds float, ptr %57, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !50
  %64 = getelementptr inbounds float, ptr %2, i64 2
  store float %63, ptr %64, align 4, !tbaa !50
  %65 = getelementptr inbounds float, ptr %57, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !50
  %67 = getelementptr inbounds float, ptr %2, i64 3
  store float %66, ptr %67, align 4, !tbaa !50
  br label %68

68:                                               ; preds = %49, %47, %22, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nearest_interpolation(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %93, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %93, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = mul nsw i32 %18, %5
  %20 = add i32 %19, %4
  %21 = shl i32 %20, 2
  %22 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  %27 = select i1 %24, ptr null, ptr %26
  %28 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds float, ptr %29, i64 %25
  %32 = select i1 %30, ptr null, ptr %31
  %33 = fptosi float %2 to i32
  %34 = fptosi float %3 to i32
  %35 = icmp slt i32 %33, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !44
  %39 = icmp sle i32 %38, %33
  %40 = icmp slt i32 %34, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !45
  %45 = icmp sgt i32 %44, %34
  br i1 %45, label %52, label %46

46:                                               ; preds = %42, %36, %16
  %47 = icmp eq ptr %27, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  store i32 0, ptr %27, align 1
  br label %49

49:                                               ; preds = %48, %46
  %50 = icmp eq ptr %32, null
  br i1 %50, label %93, label %51

51:                                               ; preds = %49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  br label %93

52:                                               ; preds = %42
  %53 = shl nsw i32 %33, 2
  %54 = zext nneg i32 %53 to i64
  %55 = icmp eq ptr %27, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = shl i32 %34, 2
  %58 = mul i32 %57, %38
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %10, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 %54
  %62 = load i8, ptr %61, align 1, !tbaa !46
  store i8 %62, ptr %27, align 1, !tbaa !46
  %63 = getelementptr inbounds i8, ptr %61, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !46
  %65 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %64, ptr %65, align 1, !tbaa !46
  %66 = getelementptr inbounds i8, ptr %61, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !46
  %68 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %67, ptr %68, align 1, !tbaa !46
  %69 = getelementptr inbounds i8, ptr %61, i64 3
  %70 = load i8, ptr %69, align 1, !tbaa !46
  %71 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %70, ptr %71, align 1, !tbaa !46
  br label %72

72:                                               ; preds = %56, %52
  %73 = icmp eq ptr %32, null
  br i1 %73, label %93, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = load i32, ptr %37, align 8, !tbaa !44
  %78 = shl i32 %34, 2
  %79 = mul i32 %78, %77
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %76, i64 %80
  %82 = getelementptr inbounds float, ptr %81, i64 %54
  %83 = load float, ptr %82, align 4, !tbaa !50
  store float %83, ptr %32, align 4, !tbaa !50
  %84 = getelementptr inbounds float, ptr %82, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !50
  %86 = getelementptr inbounds float, ptr %32, i64 1
  store float %85, ptr %86, align 4, !tbaa !50
  %87 = getelementptr inbounds float, ptr %82, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = getelementptr inbounds float, ptr %32, i64 2
  store float %88, ptr %89, align 4, !tbaa !50
  %90 = getelementptr inbounds float, ptr %82, i64 3
  %91 = load float, ptr %90, align 4, !tbaa !50
  %92 = getelementptr inbounds float, ptr %32, i64 3
  store float %91, ptr %92, align 4, !tbaa !50
  br label %93

93:                                               ; preds = %74, %72, %51, %49, %6, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_processor_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @BLI_task_scheduler_get() #8
  %7 = add nsw i32 %0, 63
  %8 = sdiv i32 %7, 64
  %9 = tail call ptr @BLI_task_pool_create(ptr noundef %6, ptr noundef %4) #8
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %11 = mul nsw i32 %8, %1
  %12 = sext i32 %11 to i64
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str) #8
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
  tail call void %3(ptr noundef %25, i32 noundef %23, i32 noundef %28, ptr noundef %2) #8
  tail call void @BLI_task_pool_push(ptr noundef %9, ptr noundef nonnull @processor_apply_func, ptr noundef %25, i8 noundef zeroext 0, i32 noundef 0) #8
  %29 = add nuw nsw i32 %23, 64
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %20
  br i1 %31, label %32, label %21, !llvm.loop !53

32:                                               ; preds = %21, %5
  tail call void @BLI_task_pool_work_and_wait(ptr noundef %9) #8
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %33(ptr noundef %13) #8
  tail call void @BLI_task_pool_free(ptr noundef %9) #8
  ret void
}

declare ptr @BLI_task_scheduler_get() local_unnamed_addr #2

declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @processor_apply_func(ptr noundef %0, ptr noundef %1, i32 %2) #1 {
  %4 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #8
  tail call void %4(ptr noundef %1) #8
  ret void
}

declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_alpha_under_color_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = mul nsw i32 %2, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = getelementptr inbounds float, ptr %3, i64 2
  %10 = getelementptr inbounds float, ptr %3, i64 1
  %11 = getelementptr inbounds float, ptr %3, i64 2
  br label %12

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %15, %38 ]
  %14 = phi ptr [ %0, %7 ], [ %39, %38 ]
  %15 = add nsw i32 %13, -1
  %16 = getelementptr inbounds float, ptr %14, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !50
  %18 = fcmp oeq float %17, 0.000000e+00
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load float, ptr %3, align 4, !tbaa !50
  store float %20, ptr %14, align 4, !tbaa !50
  %21 = load float, ptr %10, align 4, !tbaa !50
  %22 = getelementptr inbounds float, ptr %14, i64 1
  store float %21, ptr %22, align 4, !tbaa !50
  %23 = load float, ptr %11, align 4, !tbaa !50
  %24 = getelementptr inbounds float, ptr %14, i64 2
  store float %23, ptr %24, align 4, !tbaa !50
  br label %38

25:                                               ; preds = %12
  %26 = fsub float 1.000000e+00, %17
  %27 = load float, ptr %3, align 4, !tbaa !50
  %28 = load float, ptr %14, align 4, !tbaa !50
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %28)
  store float %29, ptr %14, align 4, !tbaa !50
  %30 = load float, ptr %8, align 4, !tbaa !50
  %31 = getelementptr inbounds float, ptr %14, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !50
  %33 = tail call float @llvm.fmuladd.f32(float %26, float %30, float %32)
  store float %33, ptr %31, align 4, !tbaa !50
  %34 = load float, ptr %9, align 4, !tbaa !50
  %35 = getelementptr inbounds float, ptr %14, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !50
  %37 = tail call float @llvm.fmuladd.f32(float %26, float %34, float %36)
  store float %37, ptr %35, align 4, !tbaa !50
  br label %38

38:                                               ; preds = %25, %19
  store float 1.000000e+00, ptr %16, align 4, !tbaa !50
  %39 = getelementptr inbounds float, ptr %14, i64 4
  %40 = icmp eq i32 %15, 0
  br i1 %40, label %41, label %12, !llvm.loop !54

41:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_alpha_under_color_byte(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = mul nsw i32 %2, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %58, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = getelementptr inbounds float, ptr %3, i64 2
  %10 = getelementptr inbounds float, ptr %3, i64 1
  %11 = getelementptr inbounds float, ptr %3, i64 2
  br label %12

12:                                               ; preds = %7, %55
  %13 = phi i32 [ %5, %7 ], [ %15, %55 ]
  %14 = phi ptr [ %0, %7 ], [ %56, %55 ]
  %15 = add nsw i32 %13, -1
  %16 = getelementptr inbounds i8, ptr %14, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !46
  switch i8 %17, label %30 [
    i8 -1, label %55
    i8 0, label %18
  ]

18:                                               ; preds = %12
  %19 = load float, ptr %3, align 4, !tbaa !50
  %20 = fmul float %19, 2.550000e+02
  %21 = fptoui float %20 to i8
  store i8 %21, ptr %14, align 1, !tbaa !46
  %22 = load float, ptr %8, align 4, !tbaa !50
  %23 = fmul float %22, 2.550000e+02
  %24 = fptoui float %23 to i8
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %24, ptr %25, align 1, !tbaa !46
  %26 = load float, ptr %9, align 4, !tbaa !50
  %27 = fmul float %26, 2.550000e+02
  %28 = fptoui float %27 to i8
  %29 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %28, ptr %29, align 1, !tbaa !46
  br label %55

30:                                               ; preds = %12
  %31 = uitofp i8 %17 to double
  %32 = fdiv double %31, 2.550000e+02
  %33 = fptrunc double %32 to float
  %34 = fsub float 1.000000e+00, %33
  %35 = load i8, ptr %14, align 1, !tbaa !46
  %36 = uitofp i8 %35 to float
  %37 = load float, ptr %3, align 4, !tbaa !50
  %38 = fmul float %34, %37
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %33, float %38)
  %40 = fptoui float %39 to i8
  store i8 %40, ptr %14, align 1, !tbaa !46
  %41 = getelementptr inbounds i8, ptr %14, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !46
  %43 = uitofp i8 %42 to float
  %44 = load float, ptr %10, align 4, !tbaa !50
  %45 = fmul float %34, %44
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %33, float %45)
  %47 = fptoui float %46 to i8
  store i8 %47, ptr %41, align 1, !tbaa !46
  %48 = getelementptr inbounds i8, ptr %14, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !46
  %50 = uitofp i8 %49 to float
  %51 = load float, ptr %11, align 4, !tbaa !50
  %52 = fmul float %34, %51
  %53 = tail call float @llvm.fmuladd.f32(float %50, float %33, float %52)
  %54 = fptoui float %53 to i8
  store i8 %54, ptr %48, align 1, !tbaa !46
  br label %55

55:                                               ; preds = %12, %18, %30
  store i8 -1, ptr %16, align 1, !tbaa !46
  %56 = getelementptr inbounds i8, ptr %14, i64 4
  %57 = icmp eq i32 %15, 0
  br i1 %57, label %58, label %12, !llvm.loop !55

58:                                               ; preds = %55, %4
  ret void
}

declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!40, !40, i64 0}
!51 = distinct !{!51, !48, !49}
!52 = !{!36, !36, i64 0}
!53 = distinct !{!53, !48, !49}
!54 = distinct !{!54, !48, !49}
!55 = distinct !{!55, !48, !49}
