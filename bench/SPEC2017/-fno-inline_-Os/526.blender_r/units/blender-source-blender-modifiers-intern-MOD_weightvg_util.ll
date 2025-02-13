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

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @weightvg_do_mask(i32 noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 {
  %15 = alloca %struct.MappingInfoModifierData, align 8
  %16 = alloca %struct.TexResult, align 8
  %17 = alloca [3 x float], align 4
  %18 = fcmp oeq float %6, 0.000000e+00
  br i1 %18, label %169, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %9, null
  br i1 %20, label %120, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %15) #6
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = tail call i32 %23(ptr noundef %5) #5
  %25 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 1
  store ptr %9, ptr %25, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 2
  store ptr %12, ptr %26, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 3
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %13, i64 noundef 64) #5
  %29 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %15, i64 0, i32 5
  store i32 %11, ptr %29, align 4, !tbaa !49
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %31 = sext i32 %24 to i64
  %32 = mul nsw i64 %31, 12
  %33 = call ptr %30(i64 noundef %32, ptr noundef nonnull @.str) #5
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 77
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  call void %35(ptr noundef %5, ptr noundef %33) #5
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %37 = call ptr %36(i64 noundef %32, ptr noundef nonnull @.str.1) #5
  call void @get_texture_coords(ptr noundef nonnull %15, ptr noundef %4, ptr noundef %5, ptr noundef %33, ptr noundef %37, i32 noundef %0) #5
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %38(ptr noundef %33) #5
  call void @modifier_init_texture(ptr noundef %8, ptr noundef nonnull %9) #5
  %39 = icmp sgt i32 %0, 0
  br i1 %39, label %40, label %118

40:                                               ; preds = %21
  %41 = icmp eq ptr %1, null
  %42 = icmp ne i32 %10, 1
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 6
  %45 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 4
  %46 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 1
  %47 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %48 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  %49 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 3
  %50 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 2
  %51 = zext nneg i32 %0 to i64
  br label %52

52:                                               ; preds = %40, %107
  %53 = phi i64 [ 0, %40 ], [ %116, %107 ]
  %54 = trunc i64 %53 to i32
  br i1 %41, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds i32, ptr %1, i64 %53
  %57 = load i32, ptr %56, align 4, !tbaa !52
  br label %58

58:                                               ; preds = %52, %55
  %59 = phi i32 [ %57, %55 ], [ %54, %52 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #6
  store ptr null, ptr %44, align 8, !tbaa !53
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x float], ptr %37, i64 %60
  call void @BKE_texture_get_value(ptr noundef %8, ptr noundef nonnull %9, ptr noundef %61, ptr noundef nonnull %16, i8 noundef zeroext %43) #5
  switch i32 %10, label %102 [
    i32 1, label %62
    i32 2, label %67
    i32 3, label %72
    i32 4, label %77
    i32 5, label %82
    i32 6, label %87
    i32 7, label %92
    i32 8, label %97
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds float, ptr %3, i64 %53
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = load float, ptr %16, align 8, !tbaa !55
  %66 = fmul float %64, %65
  br label %107

67:                                               ; preds = %58
  %68 = getelementptr inbounds float, ptr %3, i64 %53
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = load float, ptr %46, align 4, !tbaa !56
  %71 = fmul float %69, %70
  br label %107

72:                                               ; preds = %58
  %73 = getelementptr inbounds float, ptr %3, i64 %53
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = load float, ptr %50, align 8, !tbaa !57
  %76 = fmul float %74, %75
  br label %107

77:                                               ; preds = %58
  %78 = getelementptr inbounds float, ptr %3, i64 %53
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = load float, ptr %49, align 4, !tbaa !58
  %81 = fmul float %79, %80
  br label %107

82:                                               ; preds = %58
  call void @rgb_to_hsv_v(ptr noundef nonnull %46, ptr noundef nonnull %17) #5
  %83 = getelementptr inbounds float, ptr %3, i64 %53
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = load float, ptr %17, align 4, !tbaa !34
  %86 = fmul float %84, %85
  br label %107

87:                                               ; preds = %58
  call void @rgb_to_hsv_v(ptr noundef nonnull %46, ptr noundef nonnull %17) #5
  %88 = getelementptr inbounds float, ptr %3, i64 %53
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = load float, ptr %48, align 4, !tbaa !34
  %91 = fmul float %89, %90
  br label %107

92:                                               ; preds = %58
  call void @rgb_to_hsv_v(ptr noundef nonnull %46, ptr noundef nonnull %17) #5
  %93 = getelementptr inbounds float, ptr %3, i64 %53
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = load float, ptr %47, align 4, !tbaa !34
  %96 = fmul float %94, %95
  br label %107

97:                                               ; preds = %58
  %98 = getelementptr inbounds float, ptr %3, i64 %53
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = load float, ptr %45, align 8, !tbaa !59
  %101 = fmul float %99, %100
  br label %107

102:                                              ; preds = %58
  %103 = getelementptr inbounds float, ptr %3, i64 %53
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = load float, ptr %16, align 8, !tbaa !55
  %106 = fmul float %104, %105
  br label %107

107:                                              ; preds = %102, %97, %92, %87, %82, %77, %72, %67, %62
  %108 = phi float [ %105, %102 ], [ %100, %97 ], [ %95, %92 ], [ %90, %87 ], [ %85, %82 ], [ %80, %77 ], [ %75, %72 ], [ %70, %67 ], [ %65, %62 ]
  %109 = phi float [ %106, %102 ], [ %101, %97 ], [ %96, %92 ], [ %91, %87 ], [ %86, %82 ], [ %81, %77 ], [ %76, %72 ], [ %71, %67 ], [ %66, %62 ]
  %110 = getelementptr inbounds float, ptr %2, i64 %53
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fneg float %108
  %113 = call float @llvm.fmuladd.f32(float %112, float %6, float 1.000000e+00)
  %114 = fmul float %111, %113
  %115 = call float @llvm.fmuladd.f32(float %109, float %6, float %114)
  store float %115, ptr %110, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #6
  %116 = add nuw nsw i64 %53, 1
  %117 = icmp eq i64 %116, %51
  br i1 %117, label %118, label %52, !llvm.loop !60

118:                                              ; preds = %107, %21
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %119(ptr noundef %37) #5
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %15) #6
  br label %169

120:                                              ; preds = %19
  %121 = tail call i32 @defgroup_name_index(ptr noundef %4, ptr noundef %7) #5
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %154, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 50
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = tail call ptr %125(ptr noundef %5, i32 noundef 2) #5
  %127 = icmp ne ptr %126, null
  %128 = icmp sgt i32 %0, 0
  %129 = and i1 %127, %128
  br i1 %129, label %130, label %169

130:                                              ; preds = %123
  %131 = icmp eq ptr %1, null
  %132 = zext nneg i32 %0 to i64
  br label %133

133:                                              ; preds = %130, %139
  %134 = phi i64 [ 0, %130 ], [ %152, %139 ]
  %135 = trunc i64 %134 to i32
  br i1 %131, label %139, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds i32, ptr %1, i64 %134
  %138 = load i32, ptr %137, align 4, !tbaa !52
  br label %139

139:                                              ; preds = %133, %136
  %140 = phi i32 [ %138, %136 ], [ %135, %133 ]
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.MDeformVert, ptr %126, i64 %141
  %143 = tail call float @defvert_find_weight(ptr noundef nonnull %142, i32 noundef %121) #5
  %144 = fmul float %143, %6
  %145 = getelementptr inbounds float, ptr %3, i64 %134
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = getelementptr inbounds float, ptr %2, i64 %134
  %148 = load float, ptr %147, align 4, !tbaa !34
  %149 = fsub float 1.000000e+00, %144
  %150 = fmul float %148, %149
  %151 = tail call float @llvm.fmuladd.f32(float %146, float %144, float %150)
  store float %151, ptr %147, align 4, !tbaa !34
  %152 = add nuw nsw i64 %134, 1
  %153 = icmp eq i64 %152, %132
  br i1 %153, label %169, label %133, !llvm.loop !62

154:                                              ; preds = %120
  %155 = fsub float 1.000000e+00, %6
  %156 = icmp sgt i32 %0, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = zext nneg i32 %0 to i64
  br label %159

159:                                              ; preds = %157, %159
  %160 = phi i64 [ 0, %157 ], [ %167, %159 ]
  %161 = getelementptr inbounds float, ptr %3, i64 %160
  %162 = load float, ptr %161, align 4, !tbaa !34
  %163 = getelementptr inbounds float, ptr %2, i64 %160
  %164 = load float, ptr %163, align 4, !tbaa !34
  %165 = fmul float %155, %164
  %166 = tail call float @llvm.fmuladd.f32(float %162, float %6, float %165)
  store float %166, ptr %163, align 4, !tbaa !34
  %167 = add nuw nsw i64 %160, 1
  %168 = icmp eq i64 %167, %158
  br i1 %168, label %169, label %159, !llvm.loop !63

169:                                              ; preds = %139, %159, %154, %123, %118, %14
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @get_texture_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifier_init_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_texture_get_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %25 = load i32, ptr %24, align 4, !tbaa !52
  br label %26

26:                                               ; preds = %18, %23
  %27 = phi i32 [ %25, %23 ], [ %22, %18 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %28
  br i1 %14, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %2, i64 %19
  %32 = load ptr, ptr %31, align 8, !tbaa !50
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
  store float %42, ptr %49, align 4, !tbaa !64
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
  br i1 %56, label %57, label %18, !llvm.loop !66

57:                                               ; preds = %54, %10
  ret void
}

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_add_index_notest(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }

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
!40 = !{!41, !43, i64 1104}
!41 = !{!"DerivedMesh", !42, i64 0, !42, i64 200, !42, i64 400, !42, i64 600, !42, i64 800, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !43, i64 1032, !43, i64 1040, !44, i64 1048, !35, i64 1052, !44, i64 1056, !44, i64 1060, !43, i64 1064, !36, i64 1072, !43, i64 1080, !43, i64 1088, !43, i64 1096, !43, i64 1104, !43, i64 1112, !43, i64 1120, !43, i64 1128, !43, i64 1136, !43, i64 1144, !43, i64 1152, !43, i64 1160, !43, i64 1168, !43, i64 1176, !43, i64 1184, !43, i64 1192, !43, i64 1200, !43, i64 1208, !43, i64 1216, !43, i64 1224, !43, i64 1232, !43, i64 1240, !43, i64 1248, !43, i64 1256, !43, i64 1264, !43, i64 1272, !43, i64 1280, !43, i64 1288, !43, i64 1296, !43, i64 1304, !43, i64 1312, !43, i64 1320, !43, i64 1328, !43, i64 1336, !43, i64 1344, !43, i64 1352, !43, i64 1360, !43, i64 1368, !43, i64 1376, !43, i64 1384, !43, i64 1392, !43, i64 1400, !43, i64 1408, !43, i64 1416, !43, i64 1424, !43, i64 1432, !43, i64 1440, !43, i64 1448, !43, i64 1456, !43, i64 1464, !43, i64 1472, !43, i64 1480, !43, i64 1488, !43, i64 1496, !43, i64 1504, !43, i64 1512, !43, i64 1520, !43, i64 1528, !43, i64 1536, !43, i64 1544, !43, i64 1552, !43, i64 1560, !43, i64 1568, !43, i64 1576, !43, i64 1584, !43, i64 1592, !43, i64 1600, !43, i64 1608, !43, i64 1616, !43, i64 1624, !43, i64 1632, !43, i64 1640, !43, i64 1648, !43, i64 1656, !43, i64 1664, !43, i64 1672, !43, i64 1680}
!42 = !{!"CustomData", !43, i64 0, !36, i64 8, !44, i64 172, !44, i64 176, !44, i64 180, !43, i64 184, !43, i64 192}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!"int", !36, i64 0}
!45 = !{!46, !43, i64 112}
!46 = !{!"MappingInfoModifierData", !47, i64 0, !43, i64 112, !43, i64 120, !36, i64 128, !44, i64 192, !44, i64 196}
!47 = !{!"ModifierData", !43, i64 0, !43, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !36, i64 32, !43, i64 96, !43, i64 104}
!48 = !{!46, !43, i64 120}
!49 = !{!46, !44, i64 196}
!50 = !{!43, !43, i64 0}
!51 = !{!41, !43, i64 1536}
!52 = !{!44, !44, i64 0}
!53 = !{!54, !43, i64 24}
!54 = !{!"TexResult", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !44, i64 20, !43, i64 24}
!55 = !{!54, !35, i64 0}
!56 = !{!54, !35, i64 4}
!57 = !{!54, !35, i64 8}
!58 = !{!54, !35, i64 12}
!59 = !{!54, !35, i64 16}
!60 = distinct !{!60, !39}
!61 = !{!41, !43, i64 1320}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39}
!64 = !{!65, !35, i64 4}
!65 = !{!"MDeformWeight", !44, i64 0, !35, i64 4}
!66 = distinct !{!66, !39}
