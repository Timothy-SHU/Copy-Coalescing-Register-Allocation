; ModuleID = 'blender/source/blender/modifiers/intern/MOD_weightvg_util.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_weightvg_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MappingInfoModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"WeightVG Modifier, TEX mode, v_co\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"WeightVG Modifier, TEX mode, tex_co\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @weightvg_do_map(i32 noundef %0, ptr nocapture noundef %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i16 %2, 1
  %7 = icmp eq ptr %3, null
  %8 = and i1 %6, %7
  br i1 %8, label %49, label %9

9:                                                ; preds = %5
  switch i16 %2, label %49 [
    i16 9, label %10
    i16 8, label %10
    i16 7, label %10
    i16 4, label %10
    i16 3, label %10
    i16 2, label %10
    i16 1, label %10
  ]

10:                                               ; preds = %9, %9, %9, %9, %9, %9, %9
  %11 = icmp ne ptr %3, null
  %12 = and i1 %6, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @curvemapping_initialize(ptr noundef nonnull %3) #5
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %14
  %17 = zext nneg i32 %0 to i64
  br label %18

18:                                               ; preds = %16, %45
  %19 = phi i64 [ 0, %16 ], [ %47, %45 ]
  %20 = getelementptr inbounds float, ptr %1, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !34
  switch i16 %2, label %45 [
    i16 1, label %22
    i16 2, label %24
    i16 3, label %26
    i16 4, label %32
    i16 7, label %34
    i16 8, label %39
    i16 9, label %42
  ]

22:                                               ; preds = %18
  %23 = tail call float @curvemapping_evaluateF(ptr noundef %3, i32 noundef 0, float noundef %21) #5
  br label %45

24:                                               ; preds = %18
  %25 = fmul float %21, %21
  br label %45

26:                                               ; preds = %18
  %27 = fmul float %21, 3.000000e+00
  %28 = fmul float %21, -2.000000e+00
  %29 = fmul float %21, %28
  %30 = fmul float %21, %29
  %31 = tail call float @llvm.fmuladd.f32(float %27, float %21, float %30)
  br label %45

32:                                               ; preds = %18
  %33 = tail call float @sqrtf(float noundef %21) #5
  br label %45

34:                                               ; preds = %18
  %35 = fneg float %21
  %36 = fmul float %21, %35
  %37 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float %36)
  %38 = tail call float @sqrtf(float noundef %37) #5
  br label %45

39:                                               ; preds = %18
  %40 = tail call float @BLI_rng_get_float(ptr noundef %4) #5
  %41 = fmul float %21, %40
  br label %45

42:                                               ; preds = %18
  %43 = fcmp oge float %21, 5.000000e-01
  %44 = select i1 %43, float 1.000000e+00, float 0.000000e+00
  br label %45

45:                                               ; preds = %18, %42, %39, %34, %32, %26, %24, %22
  %46 = phi float [ %21, %18 ], [ %44, %42 ], [ %41, %39 ], [ %38, %34 ], [ %33, %32 ], [ %31, %26 ], [ %25, %24 ], [ %23, %22 ]
  store float %46, ptr %20, align 4, !tbaa !34
  %47 = add nuw nsw i64 %19, 1
  %48 = icmp eq i64 %47, %17
  br i1 %48, label %49, label %18, !llvm.loop !38

49:                                               ; preds = %45, %14, %5, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @weightvg_do_mask(i32 noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 {
  %15 = alloca %struct.MappingInfoModifierData, align 8
  %16 = alloca %struct.TexResult, align 8
  %17 = alloca [3 x float], align 4
  %18 = fcmp oeq float %6, 0.000000e+00
  br i1 %18, label %172, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %9, null
  br i1 %20, label %123, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %15) #5
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = tail call i32 %23(ptr noundef %5) #5
  %25 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 1
  store ptr %9, ptr %25, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 2
  store ptr %12, ptr %26, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 3
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %13, i64 noundef 64) #5
  %29 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 5
  store i32 %11, ptr %29, align 4, !tbaa !50
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %31 = sext i32 %24 to i64
  %32 = mul nsw i64 %31, 12
  %33 = call ptr %30(i64 noundef %32, ptr noundef nonnull @.str) #5
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 77
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  call void %35(ptr noundef %5, ptr noundef %33) #5
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %37 = call ptr %36(i64 noundef %32, ptr noundef nonnull @.str.1) #5
  call void @get_texture_coords(ptr noundef nonnull %15, ptr noundef %4, ptr noundef %5, ptr noundef %33, ptr noundef %37, i32 noundef %0) #5
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %38(ptr noundef %33) #5
  call void @modifier_init_texture(ptr noundef %8, ptr noundef nonnull %9) #5
  %39 = icmp sgt i32 %0, 0
  br i1 %39, label %40, label %121

40:                                               ; preds = %21
  %41 = icmp eq ptr %1, null
  %42 = icmp ne i32 %10, 1
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 6
  %45 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 4
  %46 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 1
  %47 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %48 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 1
  %49 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  %50 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 1
  %51 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 3
  %52 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 2
  %53 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 1
  %54 = zext nneg i32 %0 to i64
  br label %55

55:                                               ; preds = %40, %110
  %56 = phi i64 [ 0, %40 ], [ %119, %110 ]
  %57 = trunc i64 %56 to i32
  br i1 %41, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds i32, ptr %1, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !53
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi i32 [ %60, %58 ], [ %57, %55 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #5
  store ptr null, ptr %44, align 8, !tbaa !54
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x float], ptr %37, i64 %63
  call void @BKE_texture_get_value(ptr noundef %8, ptr noundef nonnull %9, ptr noundef %64, ptr noundef nonnull %16, i8 noundef zeroext %43) #5
  switch i32 %10, label %105 [
    i32 1, label %65
    i32 2, label %70
    i32 3, label %75
    i32 4, label %80
    i32 5, label %85
    i32 6, label %90
    i32 7, label %95
    i32 8, label %100
  ]

65:                                               ; preds = %61
  %66 = getelementptr inbounds float, ptr %3, i64 %56
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = load float, ptr %16, align 8, !tbaa !56
  %69 = fmul float %67, %68
  br label %110

70:                                               ; preds = %61
  %71 = getelementptr inbounds float, ptr %3, i64 %56
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = load float, ptr %53, align 4, !tbaa !57
  %74 = fmul float %72, %73
  br label %110

75:                                               ; preds = %61
  %76 = getelementptr inbounds float, ptr %3, i64 %56
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = load float, ptr %52, align 8, !tbaa !58
  %79 = fmul float %77, %78
  br label %110

80:                                               ; preds = %61
  %81 = getelementptr inbounds float, ptr %3, i64 %56
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = load float, ptr %51, align 4, !tbaa !59
  %84 = fmul float %82, %83
  br label %110

85:                                               ; preds = %61
  call void @rgb_to_hsv_v(ptr noundef nonnull %50, ptr noundef nonnull %17) #5
  %86 = getelementptr inbounds float, ptr %3, i64 %56
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = load float, ptr %17, align 4, !tbaa !34
  %89 = fmul float %87, %88
  br label %110

90:                                               ; preds = %61
  call void @rgb_to_hsv_v(ptr noundef nonnull %48, ptr noundef nonnull %17) #5
  %91 = getelementptr inbounds float, ptr %3, i64 %56
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = load float, ptr %49, align 4, !tbaa !34
  %94 = fmul float %92, %93
  br label %110

95:                                               ; preds = %61
  call void @rgb_to_hsv_v(ptr noundef nonnull %46, ptr noundef nonnull %17) #5
  %96 = getelementptr inbounds float, ptr %3, i64 %56
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = load float, ptr %47, align 4, !tbaa !34
  %99 = fmul float %97, %98
  br label %110

100:                                              ; preds = %61
  %101 = getelementptr inbounds float, ptr %3, i64 %56
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = load float, ptr %45, align 8, !tbaa !60
  %104 = fmul float %102, %103
  br label %110

105:                                              ; preds = %61
  %106 = getelementptr inbounds float, ptr %3, i64 %56
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = load float, ptr %16, align 8, !tbaa !56
  %109 = fmul float %107, %108
  br label %110

110:                                              ; preds = %105, %100, %95, %90, %85, %80, %75, %70, %65
  %111 = phi float [ %108, %105 ], [ %103, %100 ], [ %98, %95 ], [ %93, %90 ], [ %88, %85 ], [ %83, %80 ], [ %78, %75 ], [ %73, %70 ], [ %68, %65 ]
  %112 = phi float [ %109, %105 ], [ %104, %100 ], [ %99, %95 ], [ %94, %90 ], [ %89, %85 ], [ %84, %80 ], [ %79, %75 ], [ %74, %70 ], [ %69, %65 ]
  %113 = getelementptr inbounds float, ptr %2, i64 %56
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = fneg float %111
  %116 = call float @llvm.fmuladd.f32(float %115, float %6, float 1.000000e+00)
  %117 = fmul float %114, %116
  %118 = call float @llvm.fmuladd.f32(float %112, float %6, float %117)
  store float %118, ptr %113, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #5
  %119 = add nuw nsw i64 %56, 1
  %120 = icmp eq i64 %119, %54
  br i1 %120, label %121, label %55, !llvm.loop !61

121:                                              ; preds = %110, %21
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %122(ptr noundef %37) #5
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %15) #5
  br label %172

123:                                              ; preds = %19
  %124 = tail call i32 @defgroup_name_index(ptr noundef %4, ptr noundef %7) #5
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %157, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 50
  %128 = load ptr, ptr %127, align 8, !tbaa !62
  %129 = tail call ptr %128(ptr noundef %5, i32 noundef 2) #5
  %130 = icmp ne ptr %129, null
  %131 = icmp sgt i32 %0, 0
  %132 = and i1 %130, %131
  br i1 %132, label %133, label %172

133:                                              ; preds = %126
  %134 = icmp eq ptr %1, null
  %135 = zext i32 %0 to i64
  br label %136

136:                                              ; preds = %133, %142
  %137 = phi i64 [ 0, %133 ], [ %155, %142 ]
  %138 = trunc i64 %137 to i32
  br i1 %134, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds i32, ptr %1, i64 %137
  %141 = load i32, ptr %140, align 4, !tbaa !53
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi i32 [ %141, %139 ], [ %138, %136 ]
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.MDeformVert, ptr %129, i64 %144
  %146 = tail call float @defvert_find_weight(ptr noundef nonnull %145, i32 noundef %124) #5
  %147 = fmul float %146, %6
  %148 = getelementptr inbounds float, ptr %3, i64 %137
  %149 = load float, ptr %148, align 4, !tbaa !34
  %150 = getelementptr inbounds float, ptr %2, i64 %137
  %151 = load float, ptr %150, align 4, !tbaa !34
  %152 = fsub float 1.000000e+00, %147
  %153 = fmul float %151, %152
  %154 = tail call float @llvm.fmuladd.f32(float %149, float %147, float %153)
  store float %154, ptr %150, align 4, !tbaa !34
  %155 = add nuw nsw i64 %137, 1
  %156 = icmp eq i64 %155, %135
  br i1 %156, label %172, label %136, !llvm.loop !63

157:                                              ; preds = %123
  %158 = fsub float 1.000000e+00, %6
  %159 = icmp sgt i32 %0, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %157
  %161 = zext nneg i32 %0 to i64
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i64 [ 0, %160 ], [ %170, %162 ]
  %164 = getelementptr inbounds float, ptr %3, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !34
  %166 = getelementptr inbounds float, ptr %2, i64 %163
  %167 = load float, ptr %166, align 4, !tbaa !34
  %168 = fmul float %158, %167
  %169 = tail call float @llvm.fmuladd.f32(float %165, float %6, float %168)
  store float %169, ptr %166, align 4, !tbaa !34
  %170 = add nuw nsw i64 %163, 1
  %171 = icmp eq i64 %170, %161
  br i1 %171, label %172, label %162, !llvm.loop !64

172:                                              ; preds = %142, %162, %157, %126, %121, %14
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @get_texture_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @modifier_init_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_texture_get_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @weightvg_update_vg(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6, float noundef %7, i8 noundef zeroext %8, float noundef %9) local_unnamed_addr #0 {
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %10
  %13 = icmp eq ptr %4, null
  %14 = icmp eq ptr %2, null
  %15 = icmp ne i8 %8, 0
  %16 = icmp ne i8 %6, 0
  %17 = zext nneg i32 %3 to i64
  br label %18

18:                                               ; preds = %12, %54
  %19 = phi i64 [ 0, %12 ], [ %55, %54 ]
  %20 = getelementptr inbounds float, ptr %5, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = trunc i64 %19 to i32
  br i1 %13, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i32, ptr %4, i64 %19
  %25 = load i32, ptr %24, align 4, !tbaa !53
  br label %26

26:                                               ; preds = %18, %23
  %27 = phi i32 [ %25, %23 ], [ %22, %18 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %28
  br i1 %14, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %2, i64 %19
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  br label %35

33:                                               ; preds = %26
  %34 = tail call ptr @defvert_find_index(ptr noundef %29, i32 noundef %1) #5
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %32, %30 ], [ %34, %33 ]
  %37 = fcmp olt float %21, 0.000000e+00
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = fcmp ogt float %21, 1.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %35, %38, %40
  %42 = phi float [ 1.000000e+00, %40 ], [ %21, %38 ], [ 0.000000e+00, %35 ]
  %43 = icmp eq ptr %36, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = fcmp olt float %42, %9
  %46 = select i1 %15, i1 %45, i1 false
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void @defvert_remove_group(ptr noundef %29, ptr noundef nonnull %36) #5
  br label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MDeformWeight, ptr %36, i64 0, i32 1
  store float %42, ptr %49, align 4, !tbaa !65
  br label %54

50:                                               ; preds = %41
  %51 = fcmp ogt float %42, %7
  %52 = select i1 %16, i1 %51, i1 false
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @defvert_add_index_notest(ptr noundef %29, i32 noundef %1, float noundef %42) #5
  br label %54

54:                                               ; preds = %50, %53, %47, %48
  %55 = add nuw nsw i64 %19, 1
  %56 = icmp eq i64 %55, %17
  br i1 %56, label %57, label %18, !llvm.loop !67

57:                                               ; preds = %54, %10
  ret void
}

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @defvert_add_index_notest(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!41 = !{!42, !44, i64 1104}
!42 = !{!"DerivedMesh", !43, i64 0, !43, i64 200, !43, i64 400, !43, i64 600, !43, i64 800, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !44, i64 1032, !44, i64 1040, !45, i64 1048, !35, i64 1052, !45, i64 1056, !45, i64 1060, !44, i64 1064, !36, i64 1072, !44, i64 1080, !44, i64 1088, !44, i64 1096, !44, i64 1104, !44, i64 1112, !44, i64 1120, !44, i64 1128, !44, i64 1136, !44, i64 1144, !44, i64 1152, !44, i64 1160, !44, i64 1168, !44, i64 1176, !44, i64 1184, !44, i64 1192, !44, i64 1200, !44, i64 1208, !44, i64 1216, !44, i64 1224, !44, i64 1232, !44, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !44, i64 1304, !44, i64 1312, !44, i64 1320, !44, i64 1328, !44, i64 1336, !44, i64 1344, !44, i64 1352, !44, i64 1360, !44, i64 1368, !44, i64 1376, !44, i64 1384, !44, i64 1392, !44, i64 1400, !44, i64 1408, !44, i64 1416, !44, i64 1424, !44, i64 1432, !44, i64 1440, !44, i64 1448, !44, i64 1456, !44, i64 1464, !44, i64 1472, !44, i64 1480, !44, i64 1488, !44, i64 1496, !44, i64 1504, !44, i64 1512, !44, i64 1520, !44, i64 1528, !44, i64 1536, !44, i64 1544, !44, i64 1552, !44, i64 1560, !44, i64 1568, !44, i64 1576, !44, i64 1584, !44, i64 1592, !44, i64 1600, !44, i64 1608, !44, i64 1616, !44, i64 1624, !44, i64 1632, !44, i64 1640, !44, i64 1648, !44, i64 1656, !44, i64 1664, !44, i64 1672, !44, i64 1680}
!43 = !{!"CustomData", !44, i64 0, !36, i64 8, !45, i64 172, !45, i64 176, !45, i64 180, !44, i64 184, !44, i64 192}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"int", !36, i64 0}
!46 = !{!47, !44, i64 112}
!47 = !{!"MappingInfoModifierData", !48, i64 0, !44, i64 112, !44, i64 120, !36, i64 128, !45, i64 192, !45, i64 196}
!48 = !{!"ModifierData", !44, i64 0, !44, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !36, i64 32, !44, i64 96, !44, i64 104}
!49 = !{!47, !44, i64 120}
!50 = !{!47, !45, i64 196}
!51 = !{!44, !44, i64 0}
!52 = !{!42, !44, i64 1536}
!53 = !{!45, !45, i64 0}
!54 = !{!55, !44, i64 24}
!55 = !{!"TexResult", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !45, i64 20, !44, i64 24}
!56 = !{!55, !35, i64 0}
!57 = !{!55, !35, i64 4}
!58 = !{!55, !35, i64 8}
!59 = !{!55, !35, i64 12}
!60 = !{!55, !35, i64 16}
!61 = distinct !{!61, !39, !40}
!62 = !{!42, !44, i64 1320}
!63 = distinct !{!63, !39, !40}
!64 = distinct !{!64, !39, !40}
!65 = !{!66, !35, i64 4}
!66 = !{!"MDeformWeight", !45, i64 0, !35, i64 4}
!67 = distinct !{!67, !39, !40}
