; ModuleID = 'blender/source/blender/blenkernel/intern/mesh_evaluate.c'
source_filename = "blender/source/blender/blenkernel/intern/mesh_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.BKEMeshToTangent = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.SMikkTSpaceContext = type { ptr, ptr }
%struct.SMikkTSpaceInterface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.OrigSpaceLoop = type { [2 x float] }
%struct.OrigSpaceFace = type { [4 x [2 x float]] }
%struct.MDisps = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"%s: called with nothing to do\0A\00", align 1
@__func__.BKE_mesh_calc_normals_mapping_ex = private unnamed_addr constant [33 x i8] c"BKE_mesh_calc_normals_mapping_ex\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"error in %s: tessellation face indices are incorrect.  normals may look bad.\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mesh_calc_normals_poly = private unnamed_addr constant [27 x i8] c"BKE_mesh_calc_normals_poly\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tnorms\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"meshnormals\00", align 1
@__func__.BKE_mesh_normals_loop_split = private unnamed_addr constant [28 x i8] c"BKE_mesh_normals_loop_split\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"Tangent space can only be computed for tris/quads, aborting\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Mikktspace failed to generate tangents for this mesh!\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"Tangent space computation needs an UVMap, \22%s\22 not found, aborting\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"Tangent space computation needs loop normals, none found, aborting\00", align 1
@__func__.BKE_mesh_recalc_tessellation = private unnamed_addr constant [29 x i8] c"BKE_mesh_recalc_tessellation\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mesh_mpoly_to_mface = private unnamed_addr constant [24 x i8] c"BKE_mesh_mpoly_to_mface\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"mpoly converted\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"mloop converted\00", align 1
@__func__.BKE_mesh_convert_mfaces_to_mpolys_ex = private unnamed_addr constant [37 x i8] c"BKE_mesh_convert_mfaces_to_mpolys_ex\00", align 1
@__func__.BKE_mesh_calc_relative_deform = private unnamed_addr constant [30 x i8] c"BKE_mesh_calc_relative_deform\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"converted loop mdisps\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_normals_mapping(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture noundef readnone %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  tail call void @BKE_mesh_calc_normals_mapping_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr poison, i32 noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_normals_mapping_ex(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, ptr noundef readonly %9, ptr noundef writeonly %10, i8 noundef zeroext %11) local_unnamed_addr #0 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %12
  %15 = icmp eq i8 %11, 0
  %16 = icmp sgt i32 %1, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %122

18:                                               ; preds = %14
  %19 = zext i32 %1 to i64
  br label %20

20:                                               ; preds = %18, %41
  %21 = phi i64 [ 0, %18 ], [ %54, %41 ]
  %22 = getelementptr inbounds %struct.MVert, ptr %0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %22, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %25, %25
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %26)
  %28 = getelementptr inbounds float, ptr %22, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %27)
  %31 = fcmp ogt float %30, 0x38AA95A5C0000000
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = tail call float @sqrtf(float noundef %30) #16
  %34 = fdiv float 1.000000e+00, %33
  %35 = load float, ptr %22, align 4, !tbaa !34
  %36 = fmul float %35, %34
  %37 = load float, ptr %24, align 4, !tbaa !34
  %38 = fmul float %34, %37
  %39 = load float, ptr %28, align 4, !tbaa !34
  %40 = fmul float %34, %39
  br label %41

41:                                               ; preds = %32, %20
  %42 = phi float [ %40, %32 ], [ 0.000000e+00, %20 ]
  %43 = phi float [ %38, %32 ], [ 0.000000e+00, %20 ]
  %44 = phi float [ %36, %32 ], [ 0.000000e+00, %20 ]
  %45 = getelementptr inbounds %struct.MVert, ptr %0, i64 %21, i32 1
  %46 = fmul float %44, 3.276700e+04
  %47 = fptosi float %46 to i16
  store i16 %47, ptr %45, align 2, !tbaa !38
  %48 = fmul float %43, 3.276700e+04
  %49 = fptosi float %48 to i16
  %50 = getelementptr inbounds i16, ptr %45, i64 1
  store i16 %49, ptr %50, align 2, !tbaa !38
  %51 = fmul float %42, 3.276700e+04
  %52 = fptosi float %51 to i16
  %53 = getelementptr inbounds i16, ptr %45, i64 2
  store i16 %52, ptr %53, align 2, !tbaa !38
  %54 = add nuw nsw i64 %21, 1
  %55 = icmp eq i64 %54, %19
  br i1 %55, label %122, label %20, !llvm.loop !40

56:                                               ; preds = %12
  %57 = icmp eq i8 %11, 1
  %58 = icmp eq ptr %6, null
  %59 = icmp eq ptr %10, null
  %60 = and i1 %59, %57
  %61 = and i1 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_mapping_ex)
  br label %122

64:                                               ; preds = %56
  br i1 %58, label %65, label %70

65:                                               ; preds = %64
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %67 = sext i32 %5 to i64
  %68 = mul nsw i64 %67, 12
  %69 = tail call ptr %66(i64 noundef %68, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_mapping_ex) #16
  br label %70

70:                                               ; preds = %65, %64
  %71 = phi ptr [ %6, %64 ], [ %69, %65 ]
  %72 = icmp eq i8 %11, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = icmp sgt i32 %5, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %73
  %76 = zext nneg i32 %5 to i64
  br label %78

77:                                               ; preds = %70
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 poison, i32 noundef %5, ptr noundef %71, i8 noundef zeroext 0)
  br label %88

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %85, %78 ]
  %80 = phi ptr [ %3, %75 ], [ %86, %78 ]
  %81 = load i32, ptr %80, align 4, !tbaa !45
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %82
  %84 = getelementptr inbounds [3 x float], ptr %71, i64 %79
  tail call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %80, ptr noundef %83, ptr noundef %0, ptr noundef %84)
  %85 = add nuw nsw i64 %79, 1
  %86 = getelementptr inbounds %struct.MPoly, ptr %80, i64 1
  %87 = icmp eq i64 %85, %76
  br i1 %87, label %88, label %78, !llvm.loop !48

88:                                               ; preds = %78, %73, %77
  %89 = icmp ne ptr %9, null
  %90 = icmp ne ptr %10, null
  %91 = and i1 %89, %90
  %92 = icmp sgt i32 %8, 0
  %93 = and i1 %92, %91
  br i1 %93, label %94, label %118

94:                                               ; preds = %88
  %95 = zext i32 %8 to i64
  br label %96

96:                                               ; preds = %94, %114
  %97 = phi i64 [ 0, %94 ], [ %115, %114 ]
  %98 = phi ptr [ %9, %94 ], [ %116, %114 ]
  %99 = load i32, ptr %98, align 4, !tbaa !49
  %100 = icmp slt i32 %99, %5
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = getelementptr inbounds [3 x float], ptr %10, i64 %97
  %103 = sext i32 %99 to i64
  %104 = getelementptr inbounds [3 x float], ptr %71, i64 %103
  %105 = load float, ptr %104, align 4, !tbaa !34
  store float %105, ptr %102, align 4, !tbaa !34
  %106 = getelementptr inbounds float, ptr %104, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = getelementptr inbounds float, ptr %102, i64 1
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = getelementptr inbounds float, ptr %104, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = getelementptr inbounds float, ptr %102, i64 2
  store float %110, ptr %111, align 4, !tbaa !34
  br label %114

112:                                              ; preds = %96
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_mapping_ex)
  br label %114

114:                                              ; preds = %101, %112
  %115 = add nuw nsw i64 %97, 1
  %116 = getelementptr inbounds i32, ptr %98, i64 1
  %117 = icmp eq i64 %115, %95
  br i1 %117, label %118, label %96, !llvm.loop !50

118:                                              ; preds = %114, %88
  %119 = icmp eq ptr %71, %6
  br i1 %119, label %122, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %121(ptr noundef %71) #16
  br label %122

122:                                              ; preds = %41, %118, %120, %14, %62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_normals_poly(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 %4, i32 noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = icmp eq i8 %7, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %13, label %126

13:                                               ; preds = %11
  %14 = zext nneg i32 %5 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %22, %15 ]
  %17 = getelementptr inbounds %struct.MPoly, ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !45
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %19
  %21 = getelementptr inbounds [3 x float], ptr %6, i64 %16
  tail call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %17, ptr noundef %20, ptr noundef %0, ptr noundef %21)
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %14
  br i1 %23, label %126, label %15, !llvm.loop !51

24:                                               ; preds = %8
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %26 = sext i32 %1 to i64
  %27 = mul nsw i64 %26, 12
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_poly) #16
  %29 = icmp eq ptr %6, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = icmp sgt i32 %5, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = zext nneg i32 %5 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %41, %34 ]
  %36 = phi ptr [ %3, %32 ], [ %42, %34 ]
  %37 = load i32, ptr %36, align 4, !tbaa !45
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %38
  %40 = getelementptr inbounds [3 x float], ptr %6, i64 %35
  tail call fastcc void @mesh_calc_normals_poly_accum(ptr noundef nonnull %36, ptr noundef %39, ptr noundef %0, ptr noundef nonnull %40, ptr noundef %28)
  %41 = add nuw nsw i64 %35, 1
  %42 = getelementptr inbounds %struct.MPoly, ptr %36, i64 1
  %43 = icmp eq i64 %41, %33
  br i1 %43, label %56, label %34, !llvm.loop !52

44:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %45 = icmp sgt i32 %5, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %44, %46
  %47 = phi i32 [ %52, %46 ], [ 0, %44 ]
  %48 = phi ptr [ %53, %46 ], [ %3, %44 ]
  %49 = load i32, ptr %48, align 4, !tbaa !45
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %50
  call fastcc void @mesh_calc_normals_poly_accum(ptr noundef nonnull %48, ptr noundef %51, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %28)
  %52 = add nuw nsw i32 %47, 1
  %53 = getelementptr inbounds %struct.MPoly, ptr %48, i64 1
  %54 = icmp eq i32 %52, %5
  br i1 %54, label %55, label %46, !llvm.loop !53

55:                                               ; preds = %46, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %56

56:                                               ; preds = %34, %30, %55
  %57 = icmp sgt i32 %1, 0
  br i1 %57, label %58, label %124

58:                                               ; preds = %56
  %59 = zext nneg i32 %1 to i64
  br label %60

60:                                               ; preds = %58, %109
  %61 = phi i64 [ 0, %58 ], [ %122, %109 ]
  %62 = getelementptr inbounds [3 x float], ptr %28, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %62, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = fmul float %65, %65
  %67 = tail call float @llvm.fmuladd.f32(float %63, float %63, float %66)
  %68 = getelementptr inbounds float, ptr %62, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %67)
  %71 = fcmp ogt float %70, 0x38AA95A5C0000000
  br i1 %71, label %72, label %81

72:                                               ; preds = %60
  %73 = tail call float @sqrtf(float noundef %70) #16
  %74 = fdiv float 1.000000e+00, %73
  %75 = load float, ptr %62, align 4, !tbaa !34
  %76 = fmul float %75, %74
  store float %76, ptr %62, align 4, !tbaa !34
  %77 = load float, ptr %64, align 4, !tbaa !34
  %78 = fmul float %74, %77
  store float %78, ptr %64, align 4, !tbaa !34
  %79 = load float, ptr %68, align 4, !tbaa !34
  %80 = fmul float %74, %79
  br label %82

81:                                               ; preds = %60
  store float 0.000000e+00, ptr %62, align 4, !tbaa !34
  store float 0.000000e+00, ptr %64, align 4, !tbaa !34
  br label %82

82:                                               ; preds = %72, %81
  %83 = phi float [ 0.000000e+00, %81 ], [ %80, %72 ]
  %84 = phi float [ 0.000000e+00, %81 ], [ %73, %72 ]
  store float %83, ptr %68, align 4, !tbaa !34
  %85 = fcmp oeq float %84, 0.000000e+00
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.MVert, ptr %0, i64 %61
  %88 = load float, ptr %87, align 4, !tbaa !34
  %89 = getelementptr inbounds float, ptr %87, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = fmul float %90, %90
  %92 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %91)
  %93 = getelementptr inbounds float, ptr %87, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = tail call float @llvm.fmuladd.f32(float %94, float %94, float %92)
  %96 = fcmp ogt float %95, 0x38AA95A5C0000000
  br i1 %96, label %97, label %106

97:                                               ; preds = %86
  %98 = tail call float @sqrtf(float noundef %95) #16
  %99 = fdiv float 1.000000e+00, %98
  %100 = load float, ptr %87, align 4, !tbaa !34
  %101 = fmul float %100, %99
  store float %101, ptr %62, align 4, !tbaa !34
  %102 = load float, ptr %89, align 4, !tbaa !34
  %103 = fmul float %99, %102
  store float %103, ptr %64, align 4, !tbaa !34
  %104 = load float, ptr %93, align 4, !tbaa !34
  %105 = fmul float %99, %104
  br label %107

106:                                              ; preds = %86
  store float 0.000000e+00, ptr %62, align 4, !tbaa !34
  store float 0.000000e+00, ptr %64, align 4, !tbaa !34
  br label %107

107:                                              ; preds = %97, %106
  %108 = phi float [ 0.000000e+00, %106 ], [ %105, %97 ]
  store float %108, ptr %68, align 4, !tbaa !34
  br label %109

109:                                              ; preds = %107, %82
  %110 = getelementptr inbounds %struct.MVert, ptr %0, i64 %61, i32 1
  %111 = load float, ptr %62, align 4, !tbaa !34
  %112 = fmul float %111, 3.276700e+04
  %113 = fptosi float %112 to i16
  store i16 %113, ptr %110, align 2, !tbaa !38
  %114 = load float, ptr %64, align 4, !tbaa !34
  %115 = fmul float %114, 3.276700e+04
  %116 = fptosi float %115 to i16
  %117 = getelementptr inbounds i16, ptr %110, i64 1
  store i16 %116, ptr %117, align 2, !tbaa !38
  %118 = load float, ptr %68, align 4, !tbaa !34
  %119 = fmul float %118, 3.276700e+04
  %120 = fptosi float %119 to i16
  %121 = getelementptr inbounds i16, ptr %110, i64 2
  store i16 %120, ptr %121, align 2, !tbaa !38
  %122 = add nuw nsw i64 %61, 1
  %123 = icmp eq i64 %122, %59
  br i1 %123, label %124, label %60, !llvm.loop !54

124:                                              ; preds = %109, %56
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %125(ptr noundef %28) #16
  br label %126

126:                                              ; preds = %15, %11, %124
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_poly_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !55
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %77

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr %struct.MLoop, ptr %1, i64 %9
  %11 = getelementptr %struct.MLoop, ptr %10, i64 -1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %2, i64 %13
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  %17 = zext nneg i32 %6 to i64
  br label %18

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %53, %18 ]
  %20 = phi float [ 0.000000e+00, %8 ], [ %52, %18 ]
  %21 = phi float [ 0.000000e+00, %8 ], [ %45, %18 ]
  %22 = phi float [ 0.000000e+00, %8 ], [ %38, %18 ]
  %23 = phi ptr [ %14, %8 ], [ %27, %18 ]
  %24 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %19
  %25 = load i32, ptr %24, align 4, !tbaa !56
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %2, i64 %26
  %28 = getelementptr inbounds float, ptr %23, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %27, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %23, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %27, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fadd float %34, %36
  %38 = tail call float @llvm.fmuladd.f32(float %32, float %37, float %22)
  store float %38, ptr %3, align 4, !tbaa !34
  %39 = load float, ptr %33, align 4, !tbaa !34
  %40 = load float, ptr %35, align 4, !tbaa !34
  %41 = fsub float %39, %40
  %42 = load float, ptr %23, align 4, !tbaa !34
  %43 = load float, ptr %27, align 4, !tbaa !34
  %44 = fadd float %42, %43
  %45 = tail call float @llvm.fmuladd.f32(float %41, float %44, float %21)
  store float %45, ptr %15, align 4, !tbaa !34
  %46 = load float, ptr %23, align 4, !tbaa !34
  %47 = load float, ptr %27, align 4, !tbaa !34
  %48 = fsub float %46, %47
  %49 = load float, ptr %28, align 4, !tbaa !34
  %50 = load float, ptr %30, align 4, !tbaa !34
  %51 = fadd float %49, %50
  %52 = tail call float @llvm.fmuladd.f32(float %48, float %51, float %20)
  store float %52, ptr %16, align 4, !tbaa !34
  %53 = add nuw nsw i64 %19, 1
  %54 = icmp eq i64 %53, %17
  br i1 %54, label %55, label %18, !llvm.loop !58

55:                                               ; preds = %18
  %56 = load float, ptr %3, align 4, !tbaa !34
  %57 = load float, ptr %15, align 4, !tbaa !34
  %58 = fmul float %57, %57
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %58)
  %60 = load float, ptr %16, align 4, !tbaa !34
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %59)
  %62 = fcmp ogt float %61, 0x38AA95A5C0000000
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = tail call float @sqrtf(float noundef %61) #16
  %65 = fdiv float 1.000000e+00, %64
  %66 = load float, ptr %3, align 4, !tbaa !34
  %67 = fmul float %66, %65
  store float %67, ptr %3, align 4, !tbaa !34
  %68 = load float, ptr %15, align 4, !tbaa !34
  %69 = fmul float %65, %68
  store float %69, ptr %15, align 4, !tbaa !34
  %70 = load float, ptr %16, align 4, !tbaa !34
  %71 = fmul float %65, %70
  %72 = fcmp oeq float %64, 0.000000e+00
  %73 = select i1 %72, float 1.000000e+00, float %71
  br label %75

74:                                               ; preds = %55
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi float [ 1.000000e+00, %74 ], [ %73, %63 ]
  store float %76, ptr %16, align 4, !tbaa !34
  br label %111

77:                                               ; preds = %4
  switch i32 %6, label %108 [
    i32 3, label %78
    i32 4, label %91
  ]

78:                                               ; preds = %77
  %79 = load i32, ptr %1, align 4, !tbaa !56
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MVert, ptr %2, i64 %80
  %82 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %83 = load i32, ptr %82, align 4, !tbaa !56
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.MVert, ptr %2, i64 %84
  %86 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %87 = load i32, ptr %86, align 4, !tbaa !56
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.MVert, ptr %2, i64 %88
  %90 = tail call float @normal_tri_v3(ptr noundef %3, ptr noundef %81, ptr noundef %85, ptr noundef %89) #16
  br label %111

91:                                               ; preds = %77
  %92 = load i32, ptr %1, align 4, !tbaa !56
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.MVert, ptr %2, i64 %93
  %95 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %96 = load i32, ptr %95, align 4, !tbaa !56
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.MVert, ptr %2, i64 %97
  %99 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %100 = load i32, ptr %99, align 4, !tbaa !56
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.MVert, ptr %2, i64 %101
  %103 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %104 = load i32, ptr %103, align 4, !tbaa !56
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.MVert, ptr %2, i64 %105
  %107 = tail call float @normal_quad_v3(ptr noundef %3, ptr noundef %94, ptr noundef %98, ptr noundef %102, ptr noundef %106) #16
  br label %111

108:                                              ; preds = %77
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %109 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %109, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %110, align 4, !tbaa !34
  br label %111

111:                                              ; preds = %78, %108, %91, %75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @mesh_calc_normals_poly_accum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !55
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 12
  %10 = alloca i8, i64 %9, align 16
  %11 = add nsw i32 %7, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !56
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  %17 = icmp sgt i32 %7, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %5
  %19 = zext i32 %14 to i64
  %20 = getelementptr inbounds %struct.MVert, ptr %2, i64 %19
  %21 = zext nneg i32 %7 to i64
  br label %22

22:                                               ; preds = %18, %82
  %23 = phi i64 [ 0, %18 ], [ %84, %82 ]
  %24 = phi i32 [ %11, %18 ], [ %85, %82 ]
  %25 = phi ptr [ %20, %18 ], [ %29, %82 ]
  %26 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %23
  %27 = load i32, ptr %26, align 4, !tbaa !56
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MVert, ptr %2, i64 %28
  %30 = getelementptr inbounds float, ptr %25, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %29, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds float, ptr %25, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %29, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fadd float %36, %38
  %40 = load float, ptr %3, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %34, float %39, float %40)
  store float %41, ptr %3, align 4, !tbaa !34
  %42 = load float, ptr %35, align 4, !tbaa !34
  %43 = load float, ptr %37, align 4, !tbaa !34
  %44 = fsub float %42, %43
  %45 = load float, ptr %25, align 4, !tbaa !34
  %46 = load float, ptr %29, align 4, !tbaa !34
  %47 = fadd float %45, %46
  %48 = load float, ptr %15, align 4, !tbaa !34
  %49 = tail call float @llvm.fmuladd.f32(float %44, float %47, float %48)
  store float %49, ptr %15, align 4, !tbaa !34
  %50 = load float, ptr %25, align 4, !tbaa !34
  %51 = load float, ptr %29, align 4, !tbaa !34
  %52 = fsub float %50, %51
  %53 = load float, ptr %30, align 4, !tbaa !34
  %54 = load float, ptr %32, align 4, !tbaa !34
  %55 = fadd float %53, %54
  %56 = load float, ptr %16, align 4, !tbaa !34
  %57 = tail call float @llvm.fmuladd.f32(float %52, float %55, float %56)
  store float %57, ptr %16, align 4, !tbaa !34
  %58 = sext i32 %24 to i64
  %59 = getelementptr inbounds [3 x float], ptr %10, i64 %58
  %60 = load float, ptr %25, align 4, !tbaa !34
  %61 = load float, ptr %29, align 4, !tbaa !34
  %62 = fsub float %60, %61
  store float %62, ptr %59, align 4, !tbaa !34
  %63 = load float, ptr %30, align 4, !tbaa !34
  %64 = load float, ptr %32, align 4, !tbaa !34
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds float, ptr %59, i64 1
  store float %65, ptr %66, align 4, !tbaa !34
  %67 = load float, ptr %35, align 4, !tbaa !34
  %68 = load float, ptr %37, align 4, !tbaa !34
  %69 = fsub float %67, %68
  %70 = getelementptr inbounds float, ptr %59, i64 2
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = fmul float %65, %65
  %72 = tail call float @llvm.fmuladd.f32(float %62, float %62, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %72)
  %74 = fcmp ogt float %73, 0x38AA95A5C0000000
  br i1 %74, label %75, label %81

75:                                               ; preds = %22
  %76 = tail call float @sqrtf(float noundef %73) #16
  %77 = fdiv float 1.000000e+00, %76
  %78 = fmul float %62, %77
  store float %78, ptr %59, align 4, !tbaa !34
  %79 = fmul float %65, %77
  store float %79, ptr %66, align 4, !tbaa !34
  %80 = fmul float %69, %77
  br label %82

81:                                               ; preds = %22
  store float 0.000000e+00, ptr %59, align 4, !tbaa !34
  store float 0.000000e+00, ptr %66, align 4, !tbaa !34
  br label %82

82:                                               ; preds = %75, %81
  %83 = phi float [ 0.000000e+00, %81 ], [ %80, %75 ]
  store float %83, ptr %70, align 4, !tbaa !34
  %84 = add nuw nsw i64 %23, 1
  %85 = trunc i64 %23 to i32
  %86 = icmp eq i64 %84, %21
  br i1 %86, label %87, label %22, !llvm.loop !59

87:                                               ; preds = %82, %5
  %88 = load float, ptr %3, align 4, !tbaa !34
  %89 = load float, ptr %15, align 4, !tbaa !34
  %90 = fmul float %89, %89
  %91 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %90)
  %92 = load float, ptr %16, align 4, !tbaa !34
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %92, float %91)
  %94 = fcmp ogt float %93, 0x38AA95A5C0000000
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = tail call float @sqrtf(float noundef %93) #16
  %97 = fdiv float 1.000000e+00, %96
  %98 = load float, ptr %3, align 4, !tbaa !34
  %99 = fmul float %98, %97
  store float %99, ptr %3, align 4, !tbaa !34
  %100 = load float, ptr %15, align 4, !tbaa !34
  %101 = fmul float %97, %100
  store float %101, ptr %15, align 4, !tbaa !34
  %102 = load float, ptr %16, align 4, !tbaa !34
  %103 = fmul float %97, %102
  %104 = fcmp oeq float %96, 0.000000e+00
  %105 = select i1 %104, float 1.000000e+00, float %103
  br label %107

106:                                              ; preds = %87
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  br label %107

107:                                              ; preds = %95, %106
  %108 = phi float [ 1.000000e+00, %106 ], [ %105, %95 ]
  store float %108, ptr %16, align 4, !tbaa !34
  %109 = icmp sgt i32 %7, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %107
  %111 = getelementptr inbounds [3 x float], ptr %10, i64 %12
  %112 = zext nneg i32 %7 to i64
  br label %113

113:                                              ; preds = %110, %136
  %114 = phi i64 [ 0, %110 ], [ %153, %136 ]
  %115 = phi ptr [ %111, %110 ], [ %116, %136 ]
  %116 = getelementptr inbounds [3 x float], ptr %10, i64 %114
  %117 = load float, ptr %116, align 4, !tbaa !34
  %118 = load float, ptr %115, align 4, !tbaa !34
  %119 = getelementptr inbounds float, ptr %116, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !34
  %121 = getelementptr inbounds float, ptr %115, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = fmul float %120, %122
  %124 = tail call float @llvm.fmuladd.f32(float %117, float %118, float %123)
  %125 = getelementptr inbounds float, ptr %116, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = getelementptr inbounds float, ptr %115, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = tail call float @llvm.fmuladd.f32(float %126, float %128, float %124)
  %130 = fneg float %129
  %131 = fcmp ult float %129, 1.000000e+00
  br i1 %131, label %132, label %136

132:                                              ; preds = %113
  %133 = fcmp ugt float %129, -1.000000e+00
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = tail call float @acosf(float noundef %130) #16
  br label %136

136:                                              ; preds = %113, %132, %134
  %137 = phi float [ %135, %134 ], [ 0x400921FB60000000, %113 ], [ 0.000000e+00, %132 ]
  %138 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %114
  %139 = load i32, ptr %138, align 4, !tbaa !56
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [3 x float], ptr %4, i64 %140
  %142 = load float, ptr %3, align 4, !tbaa !34
  %143 = load float, ptr %141, align 4, !tbaa !34
  %144 = tail call float @llvm.fmuladd.f32(float %142, float %137, float %143)
  store float %144, ptr %141, align 4, !tbaa !34
  %145 = load float, ptr %15, align 4, !tbaa !34
  %146 = getelementptr inbounds float, ptr %141, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !34
  %148 = tail call float @llvm.fmuladd.f32(float %145, float %137, float %147)
  store float %148, ptr %146, align 4, !tbaa !34
  %149 = load float, ptr %16, align 4, !tbaa !34
  %150 = getelementptr inbounds float, ptr %141, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !34
  %152 = tail call float @llvm.fmuladd.f32(float %149, float %137, float %151)
  store float %152, ptr %150, align 4, !tbaa !34
  %153 = add nuw nsw i64 %114, 1
  %154 = icmp eq i64 %153, %112
  br i1 %154, label %155, label %113, !llvm.loop !60

155:                                              ; preds = %136, %107
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_normals(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !68
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %3, i32 noundef %5, ptr noundef %7, ptr noundef %9, i32 poison, i32 noundef %11, ptr noundef null, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_normals_tessface(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %7 = sext i32 %1 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.2) #16
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %13 = sext i32 %3 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.3) #16
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi ptr [ %15, %11 ], [ %4, %5 ]
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = zext nneg i32 %3 to i64
  br label %25

21:                                               ; preds = %52, %16
  %22 = icmp sgt i32 %1, 0
  br i1 %22, label %23, label %133

23:                                               ; preds = %21
  %24 = zext nneg i32 %1 to i64
  br label %69

25:                                               ; preds = %19, %52
  %26 = phi i64 [ 0, %19 ], [ %67, %52 ]
  %27 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26
  %28 = getelementptr inbounds [3 x float], ptr %17, i64 %26
  %29 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !69
  %31 = icmp eq i32 %30, 0
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds [3 x float], ptr %9, i64 %32
  %34 = select i1 %31, ptr null, ptr %33
  %35 = getelementptr inbounds %struct.MVert, ptr %0, i64 %32
  %36 = select i1 %31, ptr null, ptr %35
  %37 = load i32, ptr %27, align 4, !tbaa !71
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MVert, ptr %0, i64 %38
  %40 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !72
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.MVert, ptr %0, i64 %42
  %44 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !73
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MVert, ptr %0, i64 %46
  br i1 %31, label %50, label %48

48:                                               ; preds = %25
  %49 = tail call float @normal_quad_v3(ptr noundef %28, ptr noundef %39, ptr noundef %43, ptr noundef %47, ptr noundef nonnull %35) #16
  br label %52

50:                                               ; preds = %25
  %51 = tail call float @normal_tri_v3(ptr noundef %28, ptr noundef %39, ptr noundef %43, ptr noundef %47) #16
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, ptr %27, align 4, !tbaa !71
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %9, i64 %54
  %56 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !72
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float], ptr %9, i64 %58
  %60 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !73
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [3 x float], ptr %9, i64 %62
  %64 = getelementptr inbounds %struct.MVert, ptr %0, i64 %54
  %65 = getelementptr inbounds %struct.MVert, ptr %0, i64 %58
  %66 = getelementptr inbounds %struct.MVert, ptr %0, i64 %62
  tail call void @accumulate_vertex_normals(ptr noundef %55, ptr noundef %59, ptr noundef %63, ptr noundef %34, ptr noundef %28, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %36) #16
  %67 = add nuw nsw i64 %26, 1
  %68 = icmp eq i64 %67, %20
  br i1 %68, label %21, label %25, !llvm.loop !74

69:                                               ; preds = %23, %118
  %70 = phi i64 [ 0, %23 ], [ %131, %118 ]
  %71 = getelementptr inbounds [3 x float], ptr %9, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %71, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = fmul float %74, %74
  %76 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %75)
  %77 = getelementptr inbounds float, ptr %71, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %76)
  %80 = fcmp ogt float %79, 0x38AA95A5C0000000
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = tail call float @sqrtf(float noundef %79) #16
  %83 = fdiv float 1.000000e+00, %82
  %84 = load float, ptr %71, align 4, !tbaa !34
  %85 = fmul float %84, %83
  store float %85, ptr %71, align 4, !tbaa !34
  %86 = load float, ptr %73, align 4, !tbaa !34
  %87 = fmul float %83, %86
  store float %87, ptr %73, align 4, !tbaa !34
  %88 = load float, ptr %77, align 4, !tbaa !34
  %89 = fmul float %83, %88
  br label %91

90:                                               ; preds = %69
  store float 0.000000e+00, ptr %71, align 4, !tbaa !34
  store float 0.000000e+00, ptr %73, align 4, !tbaa !34
  br label %91

91:                                               ; preds = %81, %90
  %92 = phi float [ 0.000000e+00, %90 ], [ %89, %81 ]
  %93 = phi float [ 0.000000e+00, %90 ], [ %82, %81 ]
  store float %92, ptr %77, align 4, !tbaa !34
  %94 = fcmp oeq float %93, 0.000000e+00
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.MVert, ptr %0, i64 %70
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = getelementptr inbounds float, ptr %96, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = fmul float %99, %99
  %101 = tail call float @llvm.fmuladd.f32(float %97, float %97, float %100)
  %102 = getelementptr inbounds float, ptr %96, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = tail call float @llvm.fmuladd.f32(float %103, float %103, float %101)
  %105 = fcmp ogt float %104, 0x38AA95A5C0000000
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = tail call float @sqrtf(float noundef %104) #16
  %108 = fdiv float 1.000000e+00, %107
  %109 = load float, ptr %96, align 4, !tbaa !34
  %110 = fmul float %109, %108
  store float %110, ptr %71, align 4, !tbaa !34
  %111 = load float, ptr %98, align 4, !tbaa !34
  %112 = fmul float %108, %111
  store float %112, ptr %73, align 4, !tbaa !34
  %113 = load float, ptr %102, align 4, !tbaa !34
  %114 = fmul float %108, %113
  br label %116

115:                                              ; preds = %95
  store float 0.000000e+00, ptr %71, align 4, !tbaa !34
  store float 0.000000e+00, ptr %73, align 4, !tbaa !34
  br label %116

116:                                              ; preds = %106, %115
  %117 = phi float [ 0.000000e+00, %115 ], [ %114, %106 ]
  store float %117, ptr %77, align 4, !tbaa !34
  br label %118

118:                                              ; preds = %116, %91
  %119 = getelementptr inbounds %struct.MVert, ptr %0, i64 %70, i32 1
  %120 = load float, ptr %71, align 4, !tbaa !34
  %121 = fmul float %120, 3.276700e+04
  %122 = fptosi float %121 to i16
  store i16 %122, ptr %119, align 2, !tbaa !38
  %123 = load float, ptr %73, align 4, !tbaa !34
  %124 = fmul float %123, 3.276700e+04
  %125 = fptosi float %124 to i16
  %126 = getelementptr inbounds i16, ptr %119, i64 1
  store i16 %125, ptr %126, align 2, !tbaa !38
  %127 = load float, ptr %77, align 4, !tbaa !34
  %128 = fmul float %127, 3.276700e+04
  %129 = fptosi float %128 to i16
  %130 = getelementptr inbounds i16, ptr %119, i64 2
  store i16 %129, ptr %130, align 2, !tbaa !38
  %131 = add nuw nsw i64 %70, 1
  %132 = icmp eq i64 %131, %24
  br i1 %132, label %133, label %69, !llvm.loop !75

133:                                              ; preds = %118, %21
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %134(ptr noundef %9) #16
  %135 = icmp eq ptr %17, %4
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %137(ptr noundef %17) #16
  br label %138

138:                                              ; preds = %136, %133
  ret void
}

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @accumulate_vertex_normals(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_normals_loop_split(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, i32 noundef %9, float noundef %10) local_unnamed_addr #0 {
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %13 = sext i32 %3 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @__func__.BKE_mesh_normals_loop_split) #16
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %17 = sext i32 %6 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @__func__.BKE_mesh_normals_loop_split) #16
  %20 = fcmp olt float %10, 0x400921FB60000000
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = tail call float @cosf(float noundef %10) #16
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi float [ %22, %21 ], [ %10, %11 ]
  %25 = icmp sgt i32 %9, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = zext nneg i32 %9 to i64
  br label %32

28:                                               ; preds = %129, %23
  %29 = icmp sgt i32 %9, 0
  br i1 %29, label %30, label %405

30:                                               ; preds = %28
  %31 = zext nneg i32 %9 to i64
  br label %133

32:                                               ; preds = %26, %129
  %33 = phi i64 [ 0, %26 ], [ %131, %129 ]
  %34 = phi ptr [ %7, %26 ], [ %130, %129 ]
  %35 = getelementptr inbounds %struct.MPoly, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !55
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %129

38:                                               ; preds = %32
  %39 = load i32, ptr %34, align 4, !tbaa !45
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %41
  %43 = getelementptr inbounds %struct.MPoly, ptr %34, i64 0, i32 3
  %44 = getelementptr inbounds [3 x float], ptr %8, i64 %33
  %45 = getelementptr inbounds float, ptr %44, i64 1
  %46 = getelementptr inbounds float, ptr %44, i64 2
  %47 = getelementptr inbounds %struct.MPoly, ptr %34, i64 0, i32 3
  %48 = sext i32 %40 to i64
  %49 = trunc i64 %33 to i32
  br label %50

50:                                               ; preds = %38, %125
  %51 = phi i64 [ %41, %38 ], [ %127, %125 ]
  %52 = phi ptr [ %42, %38 ], [ %126, %125 ]
  %53 = getelementptr inbounds %struct.MLoop, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !76
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], ptr %15, i64 %55
  %57 = getelementptr inbounds i32, ptr %19, i64 %51
  store i32 %49, ptr %57, align 4, !tbaa !49
  %58 = getelementptr inbounds [3 x float], ptr %5, i64 %51
  %59 = load i32, ptr %52, align 4, !tbaa !56
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MVert, ptr %0, i64 %60, i32 1
  %62 = load i16, ptr %61, align 2, !tbaa !38
  %63 = sitofp i16 %62 to float
  %64 = fmul float %63, 0x3F00002000000000
  store float %64, ptr %58, align 4, !tbaa !34
  %65 = getelementptr inbounds i16, ptr %61, i64 1
  %66 = load i16, ptr %65, align 2, !tbaa !38
  %67 = sitofp i16 %66 to float
  %68 = fmul float %67, 0x3F00002000000000
  %69 = getelementptr inbounds float, ptr %58, i64 1
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = getelementptr inbounds i16, ptr %61, i64 2
  %71 = load i16, ptr %70, align 2, !tbaa !38
  %72 = sitofp i16 %71 to float
  %73 = fmul float %72, 0x3F00002000000000
  %74 = getelementptr inbounds float, ptr %58, i64 2
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = load i32, ptr %56, align 4, !tbaa !49
  %76 = getelementptr inbounds i32, ptr %56, i64 1
  %77 = load i32, ptr %76, align 4, !tbaa !49
  %78 = or i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %50
  %81 = trunc i64 %51 to i32
  store i32 %81, ptr %56, align 4, !tbaa !49
  %82 = load i8, ptr %47, align 2, !tbaa !77
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %84, i32 -1, i32 -2147483648
  br label %123

86:                                               ; preds = %50
  switch i32 %77, label %123 [
    i32 -2147483648, label %87
    i32 -1, label %125
  ]

87:                                               ; preds = %86
  %88 = load i8, ptr %43, align 2, !tbaa !77
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %123, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %53, align 4, !tbaa !76
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %93, i32 4
  %95 = load i16, ptr %94, align 2, !tbaa !78
  %96 = and i16 %95, 512
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %91
  %99 = sext i32 %75 to i64
  %100 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !56
  %102 = icmp eq i32 %59, %101
  br i1 %102, label %123, label %103

103:                                              ; preds = %98
  br i1 %20, label %104, label %121

104:                                              ; preds = %103
  %105 = getelementptr inbounds i32, ptr %19, i64 %99
  %106 = load i32, ptr %105, align 4, !tbaa !49
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x float], ptr %8, i64 %107
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = load float, ptr %44, align 4, !tbaa !34
  %111 = getelementptr inbounds float, ptr %108, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !34
  %113 = load float, ptr %45, align 4, !tbaa !34
  %114 = fmul float %112, %113
  %115 = tail call float @llvm.fmuladd.f32(float %109, float %110, float %114)
  %116 = getelementptr inbounds float, ptr %108, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !34
  %118 = load float, ptr %46, align 4, !tbaa !34
  %119 = tail call float @llvm.fmuladd.f32(float %117, float %118, float %115)
  %120 = fcmp olt float %119, %24
  br i1 %120, label %123, label %121

121:                                              ; preds = %104, %103
  %122 = trunc i64 %51 to i32
  br label %123

123:                                              ; preds = %86, %87, %91, %98, %104, %121, %80
  %124 = phi i32 [ %85, %80 ], [ %122, %121 ], [ -1, %104 ], [ -1, %98 ], [ -1, %91 ], [ -1, %87 ], [ -1, %86 ]
  store i32 %124, ptr %76, align 4, !tbaa !49
  br label %125

125:                                              ; preds = %123, %86
  %126 = getelementptr inbounds %struct.MLoop, ptr %52, i64 1
  %127 = add nsw i64 %51, 1
  %128 = icmp slt i64 %127, %48
  br i1 %128, label %50, label %129, !llvm.loop !80

129:                                              ; preds = %125, %32
  %130 = getelementptr inbounds %struct.MPoly, ptr %34, i64 1
  %131 = add nuw nsw i64 %33, 1
  %132 = icmp eq i64 %131, %27
  br i1 %132, label %28, label %32, !llvm.loop !81

133:                                              ; preds = %30, %399
  %134 = phi i64 [ 0, %30 ], [ %403, %399 ]
  %135 = phi ptr [ %7, %30 ], [ %402, %399 ]
  %136 = phi ptr [ null, %30 ], [ %401, %399 ]
  %137 = phi ptr [ null, %30 ], [ %400, %399 ]
  %138 = load i32, ptr %135, align 4, !tbaa !45
  %139 = getelementptr inbounds %struct.MPoly, ptr %135, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !55
  %141 = add nsw i32 %140, %138
  %142 = icmp sgt i32 %140, 0
  br i1 %142, label %143, label %399

143:                                              ; preds = %133
  %144 = sext i32 %138 to i64
  %145 = getelementptr inbounds [3 x float], ptr %5, i64 %144
  %146 = add nsw i32 %141, -1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %147
  %149 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %144
  %150 = getelementptr inbounds [3 x float], ptr %8, i64 %134
  %151 = getelementptr inbounds float, ptr %150, i64 1
  %152 = getelementptr inbounds float, ptr %150, i64 2
  %153 = trunc i64 %134 to i32
  br label %154

154:                                              ; preds = %143, %392
  %155 = phi ptr [ %136, %143 ], [ %394, %392 ]
  %156 = phi ptr [ %137, %143 ], [ %393, %392 ]
  %157 = phi ptr [ %149, %143 ], [ %395, %392 ]
  %158 = phi ptr [ %148, %143 ], [ %157, %392 ]
  %159 = phi ptr [ %145, %143 ], [ %397, %392 ]
  %160 = phi i32 [ %138, %143 ], [ %396, %392 ]
  %161 = phi i32 [ %146, %143 ], [ %160, %392 ]
  %162 = getelementptr inbounds %struct.MLoop, ptr %157, i64 0, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !76
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.MLoop, ptr %158, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !76
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [2 x i32], ptr %15, i64 %167
  %169 = getelementptr inbounds [2 x i32], ptr %15, i64 %164, i64 1
  %170 = load i32, ptr %169, align 4, !tbaa !49
  switch i32 %170, label %392 [
    i32 -2147483648, label %171
    i32 -1, label %171
  ]

171:                                              ; preds = %154, %154
  %172 = getelementptr inbounds i32, ptr %168, i64 1
  %173 = load i32, ptr %172, align 4, !tbaa !49
  switch i32 %173, label %180 [
    i32 -2147483648, label %174
    i32 -1, label %174
  ]

174:                                              ; preds = %171, %171
  %175 = load float, ptr %150, align 4, !tbaa !34
  store float %175, ptr %159, align 4, !tbaa !34
  %176 = load float, ptr %151, align 4, !tbaa !34
  %177 = getelementptr inbounds float, ptr %159, i64 1
  store float %176, ptr %177, align 4, !tbaa !34
  %178 = load float, ptr %152, align 4, !tbaa !34
  %179 = getelementptr inbounds float, ptr %159, i64 2
  store float %178, ptr %179, align 4, !tbaa !34
  br label %392

180:                                              ; preds = %171
  %181 = load i32, ptr %157, align 4, !tbaa !56
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.MVert, ptr %0, i64 %182
  %184 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %164
  %185 = load i32, ptr %184, align 4, !tbaa !82
  %186 = icmp eq i32 %185, %181
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %164, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !83
  br label %190

190:                                              ; preds = %180, %187
  %191 = phi i32 [ %189, %187 ], [ %185, %180 ]
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.MVert, ptr %0, i64 %192
  %194 = load float, ptr %193, align 4, !tbaa !34
  %195 = load float, ptr %183, align 4, !tbaa !34
  %196 = fsub float %194, %195
  %197 = getelementptr inbounds float, ptr %193, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !34
  %199 = getelementptr inbounds float, ptr %183, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !34
  %201 = fsub float %198, %200
  %202 = getelementptr inbounds float, ptr %193, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !34
  %204 = getelementptr inbounds float, ptr %183, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !34
  %206 = fsub float %203, %205
  %207 = fmul float %201, %201
  %208 = call float @llvm.fmuladd.f32(float %196, float %196, float %207)
  %209 = call float @llvm.fmuladd.f32(float %206, float %206, float %208)
  %210 = fcmp ogt float %209, 0x38AA95A5C0000000
  br i1 %210, label %211, label %217

211:                                              ; preds = %190
  %212 = call float @sqrtf(float noundef %209) #16
  %213 = fdiv float 1.000000e+00, %212
  %214 = fmul float %196, %213
  %215 = fmul float %201, %213
  %216 = fmul float %206, %213
  br label %217

217:                                              ; preds = %190, %211
  %218 = phi float [ 0.000000e+00, %190 ], [ %216, %211 ]
  %219 = phi float [ 0.000000e+00, %190 ], [ %215, %211 ]
  %220 = phi float [ 0.000000e+00, %190 ], [ %214, %211 ]
  br label %221

221:                                              ; preds = %217, %337
  %222 = phi float [ %272, %337 ], [ %218, %217 ]
  %223 = phi float [ %270, %337 ], [ %219, %217 ]
  %224 = phi float [ %271, %337 ], [ %220, %217 ]
  %225 = phi float [ %286, %337 ], [ 0.000000e+00, %217 ]
  %226 = phi float [ %289, %337 ], [ 0.000000e+00, %217 ]
  %227 = phi float [ %292, %337 ], [ 0.000000e+00, %217 ]
  %228 = phi ptr [ %345, %337 ], [ %168, %217 ]
  %229 = phi ptr [ %341, %337 ], [ %158, %217 ]
  %230 = phi i32 [ %338, %337 ], [ %161, %217 ]
  %231 = phi i32 [ %339, %337 ], [ %160, %217 ]
  %232 = phi i32 [ %312, %337 ], [ %153, %217 ]
  %233 = phi ptr [ %300, %337 ], [ %156, %217 ]
  %234 = phi ptr [ %299, %337 ], [ %155, %217 ]
  %235 = getelementptr inbounds %struct.MLoop, ptr %229, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !76
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !82
  %240 = icmp eq i32 %239, %181
  br i1 %240, label %241, label %244

241:                                              ; preds = %221
  %242 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %237, i32 1
  %243 = load i32, ptr %242, align 4, !tbaa !83
  br label %244

244:                                              ; preds = %221, %241
  %245 = phi i32 [ %243, %241 ], [ %239, %221 ]
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.MVert, ptr %0, i64 %246
  %248 = load float, ptr %247, align 4, !tbaa !34
  %249 = load float, ptr %183, align 4, !tbaa !34
  %250 = fsub float %248, %249
  %251 = getelementptr inbounds float, ptr %247, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !34
  %253 = load float, ptr %199, align 4, !tbaa !34
  %254 = fsub float %252, %253
  %255 = getelementptr inbounds float, ptr %247, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !34
  %257 = load float, ptr %204, align 4, !tbaa !34
  %258 = fsub float %256, %257
  %259 = fmul float %254, %254
  %260 = call float @llvm.fmuladd.f32(float %250, float %250, float %259)
  %261 = call float @llvm.fmuladd.f32(float %258, float %258, float %260)
  %262 = fcmp ogt float %261, 0x38AA95A5C0000000
  br i1 %262, label %263, label %269

263:                                              ; preds = %244
  %264 = call float @sqrtf(float noundef %261) #16
  %265 = fdiv float 1.000000e+00, %264
  %266 = fmul float %250, %265
  %267 = fmul float %254, %265
  %268 = fmul float %258, %265
  br label %269

269:                                              ; preds = %244, %263
  %270 = phi float [ %267, %263 ], [ 0.000000e+00, %244 ]
  %271 = phi float [ %266, %263 ], [ 0.000000e+00, %244 ]
  %272 = phi float [ %268, %263 ], [ 0.000000e+00, %244 ]
  %273 = fmul float %223, %270
  %274 = call float @llvm.fmuladd.f32(float %271, float %224, float %273)
  %275 = call float @llvm.fmuladd.f32(float %272, float %222, float %274)
  %276 = fcmp ugt float %275, -1.000000e+00
  br i1 %276, label %277, label %281

277:                                              ; preds = %269
  %278 = fcmp ult float %275, 1.000000e+00
  br i1 %278, label %279, label %281

279:                                              ; preds = %277
  %280 = call float @acosf(float noundef %275) #16
  br label %281

281:                                              ; preds = %269, %277, %279
  %282 = phi float [ %280, %279 ], [ 0x400921FB60000000, %269 ], [ 0.000000e+00, %277 ]
  %283 = sext i32 %232 to i64
  %284 = getelementptr inbounds [3 x float], ptr %8, i64 %283
  %285 = load float, ptr %284, align 4, !tbaa !34
  %286 = call float @llvm.fmuladd.f32(float %285, float %282, float %225)
  %287 = getelementptr inbounds float, ptr %284, i64 1
  %288 = load float, ptr %287, align 4, !tbaa !34
  %289 = call float @llvm.fmuladd.f32(float %288, float %282, float %226)
  %290 = getelementptr inbounds float, ptr %284, i64 2
  %291 = load float, ptr %290, align 4, !tbaa !34
  %292 = call float @llvm.fmuladd.f32(float %291, float %282, float %227)
  %293 = icmp eq ptr %233, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %281
  %295 = load ptr, ptr %233, align 8, !tbaa !84
  br label %298

296:                                              ; preds = %281
  %297 = alloca [16 x i8], align 16
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi ptr [ %233, %294 ], [ %297, %296 ]
  %300 = phi ptr [ %295, %294 ], [ null, %296 ]
  store ptr %234, ptr %299, align 8, !tbaa !84
  %301 = sext i32 %231 to i64
  %302 = getelementptr inbounds [3 x float], ptr %5, i64 %301
  %303 = getelementptr inbounds %struct.LinkNode, ptr %299, i64 0, i32 1
  store ptr %302, ptr %303, align 8, !tbaa !86
  %304 = getelementptr inbounds i32, ptr %228, i64 1
  %305 = load i32, ptr %304, align 4, !tbaa !49
  switch i32 %305, label %306 [
    i32 -2147483648, label %346
    i32 -1, label %346
  ]

306:                                              ; preds = %298
  %307 = load i32, ptr %228, align 4, !tbaa !49
  %308 = icmp eq i32 %307, %230
  %309 = select i1 %308, i32 %305, i32 %307
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %19, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !49
  %313 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %310
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %314
  %316 = load i32, ptr %229, align 4, !tbaa !56
  %317 = load i32, ptr %313, align 4, !tbaa !56
  %318 = icmp eq i32 %316, %317
  %319 = icmp eq i32 %316, %181
  %320 = xor i1 %319, %318
  %321 = load i32, ptr %315, align 4, !tbaa !45
  br i1 %320, label %330, label %322

322:                                              ; preds = %306
  %323 = add nsw i32 %309, -1
  %324 = icmp sgt i32 %309, %321
  br i1 %324, label %337, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %314, i32 1
  %327 = load i32, ptr %326, align 4, !tbaa !55
  %328 = add i32 %321, -1
  %329 = add i32 %328, %327
  br label %337

330:                                              ; preds = %306
  %331 = add nsw i32 %309, 1
  %332 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %314, i32 1
  %333 = load i32, ptr %332, align 4, !tbaa !55
  %334 = add nsw i32 %333, %321
  %335 = icmp slt i32 %331, %334
  %336 = select i1 %335, i32 %331, i32 %321
  br label %337

337:                                              ; preds = %322, %325, %330
  %338 = phi i32 [ %329, %325 ], [ %323, %322 ], [ %336, %330 ]
  %339 = phi i32 [ %309, %325 ], [ %309, %322 ], [ %336, %330 ]
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %340
  %342 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %340, i32 1
  %343 = load i32, ptr %342, align 4, !tbaa !76
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds [2 x i32], ptr %15, i64 %344
  br label %221, !llvm.loop !87

346:                                              ; preds = %298, %298
  %347 = fmul float %289, %289
  %348 = call float @llvm.fmuladd.f32(float %286, float %286, float %347)
  %349 = call float @llvm.fmuladd.f32(float %292, float %292, float %348)
  %350 = fcmp ogt float %349, 0x38AA95A5C0000000
  br i1 %350, label %351, label %357

351:                                              ; preds = %346
  %352 = call float @sqrtf(float noundef %349) #16
  %353 = fdiv float 1.000000e+00, %352
  %354 = fmul float %286, %353
  %355 = fmul float %289, %353
  %356 = fmul float %292, %353
  br label %357

357:                                              ; preds = %346, %351
  %358 = phi float [ %354, %351 ], [ 0.000000e+00, %346 ]
  %359 = phi float [ %355, %351 ], [ 0.000000e+00, %346 ]
  %360 = phi float [ %356, %351 ], [ 0.000000e+00, %346 ]
  %361 = phi float [ %352, %351 ], [ 0.000000e+00, %346 ]
  %362 = fcmp une float %361, 0.000000e+00
  br i1 %362, label %363, label %379

363:                                              ; preds = %357, %376
  %364 = phi ptr [ %372, %376 ], [ %300, %357 ]
  %365 = phi ptr [ %373, %376 ], [ %299, %357 ]
  %366 = icmp eq ptr %365, null
  br i1 %366, label %371, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %365, align 8, !tbaa !84
  store ptr %364, ptr %365, align 8, !tbaa !84
  %369 = getelementptr inbounds %struct.LinkNode, ptr %365, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !86
  br label %371

371:                                              ; preds = %363, %367
  %372 = phi ptr [ %365, %367 ], [ %364, %363 ]
  %373 = phi ptr [ %368, %367 ], [ null, %363 ]
  %374 = phi ptr [ %370, %367 ], [ null, %363 ]
  %375 = icmp eq ptr %374, null
  br i1 %375, label %392, label %376

376:                                              ; preds = %371
  store float %358, ptr %374, align 4, !tbaa !34
  %377 = getelementptr inbounds float, ptr %374, i64 1
  store float %359, ptr %377, align 4, !tbaa !34
  %378 = getelementptr inbounds float, ptr %374, i64 2
  store float %360, ptr %378, align 4, !tbaa !34
  br label %363, !llvm.loop !88

379:                                              ; preds = %357, %387
  %380 = phi ptr [ %388, %387 ], [ %300, %357 ]
  %381 = phi ptr [ %389, %387 ], [ %299, %357 ]
  %382 = icmp eq ptr %381, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load ptr, ptr %381, align 8, !tbaa !84
  store ptr %380, ptr %381, align 8, !tbaa !84
  %385 = getelementptr inbounds %struct.LinkNode, ptr %381, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !86
  br label %387

387:                                              ; preds = %379, %383
  %388 = phi ptr [ %381, %383 ], [ %380, %379 ]
  %389 = phi ptr [ %384, %383 ], [ null, %379 ]
  %390 = phi ptr [ %386, %383 ], [ null, %379 ]
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %379, !llvm.loop !89

392:                                              ; preds = %387, %371, %154, %174
  %393 = phi ptr [ %156, %154 ], [ %156, %174 ], [ %372, %371 ], [ %388, %387 ]
  %394 = phi ptr [ %155, %154 ], [ %155, %174 ], [ %373, %371 ], [ %389, %387 ]
  %395 = getelementptr inbounds %struct.MLoop, ptr %157, i64 1
  %396 = add nsw i32 %160, 1
  %397 = getelementptr inbounds [3 x float], ptr %159, i64 1
  %398 = icmp slt i32 %396, %141
  br i1 %398, label %154, label %399, !llvm.loop !90

399:                                              ; preds = %392, %133
  %400 = phi ptr [ %137, %133 ], [ %393, %392 ]
  %401 = phi ptr [ %136, %133 ], [ %394, %392 ]
  %402 = getelementptr inbounds %struct.MPoly, ptr %135, i64 1
  %403 = add nuw nsw i64 %134, 1
  %404 = icmp eq i64 %403, %31
  br i1 %404, label %405, label %133, !llvm.loop !91

405:                                              ; preds = %399, %28
  %406 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %406(ptr noundef %15) #16
  %407 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %407(ptr noundef %19) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_loop_tangents_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.BKEMeshToTangent, align 8
  %12 = alloca %struct.SMikkTSpaceContext, align 8
  %13 = alloca %struct.SMikkTSpaceInterface, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i64 56, i1 false)
  %14 = icmp sgt i32 %8, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10, %21
  %16 = phi i32 [ %23, %21 ], [ 0, %10 ]
  %17 = phi ptr [ %22, %21 ], [ %7, %10 ]
  %18 = getelementptr inbounds %struct.MPoly, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !55
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %40, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.MPoly, ptr %17, i64 1
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %25, label %15, !llvm.loop !92

25:                                               ; preds = %21, %10
  store ptr %7, ptr %11, align 8, !tbaa !93
  %26 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 2
  store ptr %0, ptr %27, align 8, !tbaa !96
  %28 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 3
  store ptr %5, ptr %28, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 4
  store ptr %4, ptr %29, align 8, !tbaa !98
  %30 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 5
  store ptr %3, ptr %30, align 8, !tbaa !99
  %31 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 6
  store i32 %8, ptr %31, align 8, !tbaa !100
  %32 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %12, i64 0, i32 1
  store ptr %11, ptr %32, align 8, !tbaa !101
  store ptr %13, ptr %12, align 8, !tbaa !103
  store ptr @get_num_faces, ptr %13, align 8, !tbaa !104
  %33 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 1
  store ptr @get_num_verts_of_face, ptr %33, align 8, !tbaa !106
  %34 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 2
  store ptr @get_position, ptr %34, align 8, !tbaa !107
  %35 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 4
  store ptr @get_texture_coordinate, ptr %35, align 8, !tbaa !108
  %36 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 3
  store ptr @get_normal, ptr %36, align 8, !tbaa !109
  %37 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 5
  store ptr @set_tspace, ptr %37, align 8, !tbaa !110
  %38 = call i32 @genTangSpaceDefault(ptr noundef nonnull %12) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %15, %25
  %41 = phi ptr [ @.str.5, %25 ], [ @.str.4, %15 ]
  call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull %41) #16
  br label %42

42:                                               ; preds = %40, %25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #16
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @get_num_faces(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !100
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @get_num_verts_of_face(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MPoly, ptr %5, i64 %6, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !55
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @get_position(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = add nsw i32 %10, %3
  %12 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.MLoop, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MVert, ptr %13, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !34
  store float %21, ptr %1, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %20, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %1, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %20, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %1, i64 2
  store float %26, ptr %27, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @get_texture_coordinate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = load ptr, ptr %6, align 8, !tbaa !93
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = add nsw i32 %12, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.MLoopUV, ptr %8, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !34
  store float %16, ptr %1, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %15, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @get_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = load ptr, ptr %6, align 8, !tbaa !93
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = add nsw i32 %12, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x float], ptr %8, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !34
  store float %16, ptr %1, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %15, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %15, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @set_tspace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) #9 {
  %6 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = load ptr, ptr %7, align 8, !tbaa !93
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %struct.MPoly, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !45
  %14 = add nsw i32 %13, %4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x float], ptr %9, i64 %15
  %17 = load float, ptr %1, align 4, !tbaa !34
  store float %17, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %16, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %16, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %16, i64 3
  store float %2, ptr %24, align 4, !tbaa !34
  ret void
}

declare i32 @genTangSpaceDefault(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_loop_tangents(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BKEMeshToTangent, align 8
  %6 = alloca %struct.SMikkTSpaceContext, align 8
  %7 = alloca %struct.SMikkTSpaceInterface, align 8
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br i1 %8, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %9, i32 noundef 16, ptr noundef nonnull %1) #16
  br label %14

12:                                               ; preds = %4
  %13 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 16) #16
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %1) #16
  br label %61

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %20 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %19, i32 noundef 8) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.7) #16
  br label %61

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !66
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %31 = load i32, ptr %30, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %23, %39
  %34 = phi i32 [ %41, %39 ], [ 0, %23 ]
  %35 = phi ptr [ %40, %39 ], [ %29, %23 ]
  %36 = getelementptr inbounds %struct.MPoly, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !55
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %58, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.MPoly, ptr %35, i64 1
  %41 = add nuw nsw i32 %34, 1
  %42 = icmp eq i32 %41, %31
  br i1 %42, label %43, label %33, !llvm.loop !92

43:                                               ; preds = %39, %23
  store ptr %29, ptr %5, align 8, !tbaa !93
  %44 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %5, i64 0, i32 1
  store ptr %27, ptr %44, align 8, !tbaa !95
  %45 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %5, i64 0, i32 2
  store ptr %25, ptr %45, align 8, !tbaa !96
  %46 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %5, i64 0, i32 3
  store ptr %15, ptr %46, align 8, !tbaa !97
  %47 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %5, i64 0, i32 4
  store ptr %20, ptr %47, align 8, !tbaa !98
  %48 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %5, i64 0, i32 5
  store ptr %2, ptr %48, align 8, !tbaa !99
  %49 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %5, i64 0, i32 6
  store i32 %31, ptr %49, align 8, !tbaa !100
  %50 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %6, i64 0, i32 1
  store ptr %5, ptr %50, align 8, !tbaa !101
  store ptr %7, ptr %6, align 8, !tbaa !103
  store ptr @get_num_faces, ptr %7, align 8, !tbaa !104
  %51 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 1
  store ptr @get_num_verts_of_face, ptr %51, align 8, !tbaa !106
  %52 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 2
  store ptr @get_position, ptr %52, align 8, !tbaa !107
  %53 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 4
  store ptr @get_texture_coordinate, ptr %53, align 8, !tbaa !108
  %54 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 3
  store ptr @get_normal, ptr %54, align 8, !tbaa !109
  %55 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 5
  store ptr @set_tspace, ptr %55, align 8, !tbaa !110
  %56 = call i32 @genTangSpaceDefault(ptr noundef nonnull %6) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %33, %43
  %59 = phi ptr [ @.str.5, %43 ], [ @.str.4, %33 ]
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull %59) #16
  br label %60

60:                                               ; preds = %58, %43
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  br label %61

61:                                               ; preds = %60, %22, %17
  ret void
}

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_poly_normal_coords(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !55
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %77

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr %struct.MLoop, ptr %1, i64 %9
  %11 = getelementptr %struct.MLoop, ptr %10, i64 -1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [3 x float], ptr %2, i64 %13
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  %17 = zext nneg i32 %6 to i64
  br label %18

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %53, %18 ]
  %20 = phi float [ 0.000000e+00, %8 ], [ %52, %18 ]
  %21 = phi float [ 0.000000e+00, %8 ], [ %45, %18 ]
  %22 = phi float [ 0.000000e+00, %8 ], [ %38, %18 ]
  %23 = phi ptr [ %14, %8 ], [ %27, %18 ]
  %24 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %19
  %25 = load i32, ptr %24, align 4, !tbaa !56
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [3 x float], ptr %2, i64 %26
  %28 = getelementptr inbounds float, ptr %23, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %27, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %23, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %27, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fadd float %34, %36
  %38 = tail call float @llvm.fmuladd.f32(float %32, float %37, float %22)
  store float %38, ptr %3, align 4, !tbaa !34
  %39 = load float, ptr %33, align 4, !tbaa !34
  %40 = load float, ptr %35, align 4, !tbaa !34
  %41 = fsub float %39, %40
  %42 = load float, ptr %23, align 4, !tbaa !34
  %43 = load float, ptr %27, align 4, !tbaa !34
  %44 = fadd float %42, %43
  %45 = tail call float @llvm.fmuladd.f32(float %41, float %44, float %21)
  store float %45, ptr %15, align 4, !tbaa !34
  %46 = load float, ptr %23, align 4, !tbaa !34
  %47 = load float, ptr %27, align 4, !tbaa !34
  %48 = fsub float %46, %47
  %49 = load float, ptr %28, align 4, !tbaa !34
  %50 = load float, ptr %30, align 4, !tbaa !34
  %51 = fadd float %49, %50
  %52 = tail call float @llvm.fmuladd.f32(float %48, float %51, float %20)
  store float %52, ptr %16, align 4, !tbaa !34
  %53 = add nuw nsw i64 %19, 1
  %54 = icmp eq i64 %53, %17
  br i1 %54, label %55, label %18, !llvm.loop !111

55:                                               ; preds = %18
  %56 = load float, ptr %3, align 4, !tbaa !34
  %57 = load float, ptr %15, align 4, !tbaa !34
  %58 = fmul float %57, %57
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %58)
  %60 = load float, ptr %16, align 4, !tbaa !34
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %59)
  %62 = fcmp ogt float %61, 0x38AA95A5C0000000
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = tail call float @sqrtf(float noundef %61) #16
  %65 = fdiv float 1.000000e+00, %64
  %66 = load float, ptr %3, align 4, !tbaa !34
  %67 = fmul float %66, %65
  store float %67, ptr %3, align 4, !tbaa !34
  %68 = load float, ptr %15, align 4, !tbaa !34
  %69 = fmul float %65, %68
  store float %69, ptr %15, align 4, !tbaa !34
  %70 = load float, ptr %16, align 4, !tbaa !34
  %71 = fmul float %65, %70
  %72 = fcmp oeq float %64, 0.000000e+00
  %73 = select i1 %72, float 1.000000e+00, float %71
  br label %75

74:                                               ; preds = %55
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi float [ 1.000000e+00, %74 ], [ %73, %63 ]
  store float %76, ptr %16, align 4, !tbaa !34
  br label %111

77:                                               ; preds = %4
  switch i32 %6, label %108 [
    i32 3, label %78
    i32 4, label %91
  ]

78:                                               ; preds = %77
  %79 = load i32, ptr %1, align 4, !tbaa !56
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [3 x float], ptr %2, i64 %80
  %82 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %83 = load i32, ptr %82, align 4, !tbaa !56
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [3 x float], ptr %2, i64 %84
  %86 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %87 = load i32, ptr %86, align 4, !tbaa !56
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [3 x float], ptr %2, i64 %88
  %90 = tail call float @normal_tri_v3(ptr noundef %3, ptr noundef %81, ptr noundef %85, ptr noundef %89) #16
  br label %111

91:                                               ; preds = %77
  %92 = load i32, ptr %1, align 4, !tbaa !56
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [3 x float], ptr %2, i64 %93
  %95 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %96 = load i32, ptr %95, align 4, !tbaa !56
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [3 x float], ptr %2, i64 %97
  %99 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %100 = load i32, ptr %99, align 4, !tbaa !56
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [3 x float], ptr %2, i64 %101
  %103 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %104 = load i32, ptr %103, align 4, !tbaa !56
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [3 x float], ptr %2, i64 %105
  %107 = tail call float @normal_quad_v3(ptr noundef %3, ptr noundef %94, ptr noundef %98, ptr noundef %102, ptr noundef %106) #16
  br label %111

108:                                              ; preds = %77
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %109 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %109, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %110, align 4, !tbaa !34
  br label %111

111:                                              ; preds = %78, %108, %91, %75
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_poly_center(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !55
  switch i32 %6, label %35 [
    i32 3, label %7
    i32 4, label %19
  ]

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 4, !tbaa !56
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.MVert, ptr %2, i64 %9
  %11 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %2, i64 %13
  %15 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %2, i64 %17
  tail call void @cent_tri_v3(ptr noundef %3, ptr noundef %10, ptr noundef %14, ptr noundef %18) #16
  br label %65

19:                                               ; preds = %4
  %20 = load i32, ptr %1, align 4, !tbaa !56
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %2, i64 %21
  %23 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !56
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %2, i64 %25
  %27 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %2, i64 %29
  %31 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %32 = load i32, ptr %31, align 4, !tbaa !56
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %2, i64 %33
  tail call void @cent_quad_v3(ptr noundef %3, ptr noundef %22, ptr noundef %26, ptr noundef %30, ptr noundef %34) #16
  br label %65

35:                                               ; preds = %4
  %36 = sitofp i32 %6 to float
  %37 = fdiv float 1.000000e+00, %36
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %39, align 4, !tbaa !34
  %40 = icmp sgt i32 %6, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load float, ptr %3, align 4, !tbaa !34
  %43 = load float, ptr %38, align 4, !tbaa !34
  %44 = load float, ptr %39, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %41, %45
  %46 = phi float [ %44, %41 ], [ %62, %45 ]
  %47 = phi float [ %43, %41 ], [ %59, %45 ]
  %48 = phi float [ %42, %41 ], [ %56, %45 ]
  %49 = phi i32 [ 0, %41 ], [ %63, %45 ]
  %50 = phi ptr [ %1, %41 ], [ %51, %45 ]
  %51 = getelementptr inbounds %struct.MLoop, ptr %50, i64 1
  %52 = load i32, ptr %50, align 4, !tbaa !56
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.MVert, ptr %2, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %37, float %48)
  store float %56, ptr %3, align 4, !tbaa !34
  %57 = getelementptr inbounds float, ptr %54, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %37, float %47)
  store float %59, ptr %38, align 4, !tbaa !34
  %60 = getelementptr inbounds float, ptr %54, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %37, float %46)
  store float %62, ptr %39, align 4, !tbaa !34
  %63 = add nuw nsw i32 %49, 1
  %64 = icmp eq i32 %63, %6
  br i1 %64, label %65, label %45, !llvm.loop !112

65:                                               ; preds = %45, %35, %19, %7
  ret void
}

declare void @cent_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cent_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local float @BKE_mesh_calc_poly_area(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  switch i32 %5, label %36 [
    i32 3, label %6
    i32 4, label %19
  ]

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4, !tbaa !56
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.MVert, ptr %2, i64 %8
  %10 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !56
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %2, i64 %16
  %18 = tail call float @area_tri_v3(ptr noundef %9, ptr noundef %13, ptr noundef %17) #16
  br label %62

19:                                               ; preds = %3
  %20 = load i32, ptr %1, align 4, !tbaa !56
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %2, i64 %21
  %23 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !56
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %2, i64 %25
  %27 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %2, i64 %29
  %31 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %32 = load i32, ptr %31, align 4, !tbaa !56
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %2, i64 %33
  %35 = tail call float @area_quad_v3(ptr noundef %22, ptr noundef %26, ptr noundef %30, ptr noundef %34) #16
  br label %62

36:                                               ; preds = %3
  %37 = sext i32 %5 to i64
  %38 = mul nsw i64 %37, 12
  %39 = alloca i8, i64 %38, align 16
  %40 = icmp sgt i32 %5, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = zext nneg i32 %5 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %57, %43 ]
  %45 = phi ptr [ %1, %41 ], [ %58, %43 ]
  %46 = getelementptr inbounds [3 x float], ptr %39, i64 %44
  %47 = load i32, ptr %45, align 4, !tbaa !56
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.MVert, ptr %2, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !34
  store float %50, ptr %46, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds float, ptr %46, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %49, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds float, ptr %46, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = add nuw nsw i64 %44, 1
  %58 = getelementptr inbounds %struct.MLoop, ptr %45, i64 1
  %59 = icmp eq i64 %57, %42
  br i1 %59, label %60, label %43, !llvm.loop !113

60:                                               ; preds = %43, %36
  %61 = call float @area_poly_v3(ptr noundef nonnull %39, i32 noundef %5) #16
  br label %62

62:                                               ; preds = %60, %19, %6
  %63 = phi float [ %18, %6 ], [ %35, %19 ], [ %61, %60 ]
  ret float %63
}

declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @area_poly_v3(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_poly_angles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !55
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %8 to i64
  %11 = getelementptr %struct.MLoop, ptr %1, i64 %10
  %12 = getelementptr %struct.MLoop, ptr %11, i64 -2
  %13 = load i32, ptr %12, align 4, !tbaa !56
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.MVert, ptr %2, i64 %14
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MVert, ptr %2, i64 %19
  %21 = load float, ptr %15, align 4, !tbaa !34
  %22 = load float, ptr %20, align 4, !tbaa !34
  %23 = fsub float %21, %22
  store float %23, ptr %5, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %15, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %20, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %5, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %15, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %20, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds float, ptr %5, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fmul float %28, %28
  %37 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %36)
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %37)
  %39 = fcmp ogt float %38, 0x38AA95A5C0000000
  br i1 %39, label %40, label %49

40:                                               ; preds = %4
  %41 = tail call float @sqrtf(float noundef %38) #16
  %42 = fdiv float 1.000000e+00, %41
  %43 = load float, ptr %5, align 4, !tbaa !34
  %44 = fmul float %43, %42
  store float %44, ptr %5, align 4, !tbaa !34
  %45 = load float, ptr %29, align 4, !tbaa !34
  %46 = fmul float %42, %45
  store float %46, ptr %29, align 4, !tbaa !34
  %47 = load float, ptr %35, align 4, !tbaa !34
  %48 = fmul float %42, %47
  br label %50

49:                                               ; preds = %4
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %40, %49
  %51 = phi float [ 0.000000e+00, %49 ], [ %48, %40 ]
  store float %51, ptr %35, align 4, !tbaa !34
  %52 = load i32, ptr %7, align 4, !tbaa !55
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %108

54:                                               ; preds = %50
  %55 = getelementptr inbounds float, ptr %6, i64 1
  %56 = getelementptr inbounds float, ptr %6, i64 2
  br label %57

57:                                               ; preds = %54, %96
  %58 = phi i64 [ 0, %54 ], [ %103, %96 ]
  %59 = phi i32 [ %9, %54 ], [ %107, %96 ]
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !56
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.MVert, ptr %2, i64 %63
  %65 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %58
  %66 = load i32, ptr %65, align 4, !tbaa !56
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %2, i64 %67
  %69 = load float, ptr %64, align 4, !tbaa !34
  %70 = load float, ptr %68, align 4, !tbaa !34
  %71 = fsub float %69, %70
  store float %71, ptr %6, align 4, !tbaa !34
  %72 = getelementptr inbounds float, ptr %64, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %68, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fsub float %73, %75
  store float %76, ptr %55, align 4, !tbaa !34
  %77 = getelementptr inbounds float, ptr %64, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = getelementptr inbounds float, ptr %68, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = fsub float %78, %80
  store float %81, ptr %56, align 4, !tbaa !34
  %82 = fmul float %76, %76
  %83 = call float @llvm.fmuladd.f32(float %71, float %71, float %82)
  %84 = call float @llvm.fmuladd.f32(float %81, float %81, float %83)
  %85 = fcmp ogt float %84, 0x38AA95A5C0000000
  br i1 %85, label %86, label %95

86:                                               ; preds = %57
  %87 = call float @sqrtf(float noundef %84) #16
  %88 = fdiv float 1.000000e+00, %87
  %89 = load float, ptr %6, align 4, !tbaa !34
  %90 = fmul float %89, %88
  store float %90, ptr %6, align 4, !tbaa !34
  %91 = load float, ptr %55, align 4, !tbaa !34
  %92 = fmul float %88, %91
  store float %92, ptr %55, align 4, !tbaa !34
  %93 = load float, ptr %56, align 4, !tbaa !34
  %94 = fmul float %88, %93
  br label %96

95:                                               ; preds = %57
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  store float 0.000000e+00, ptr %55, align 4, !tbaa !34
  br label %96

96:                                               ; preds = %86, %95
  %97 = phi float [ 0.000000e+00, %95 ], [ %94, %86 ]
  store float %97, ptr %56, align 4, !tbaa !34
  %98 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %99 = getelementptr inbounds float, ptr %3, i64 %60
  store float %98, ptr %99, align 4, !tbaa !34
  %100 = load float, ptr %6, align 4, !tbaa !34
  store float %100, ptr %5, align 4, !tbaa !34
  %101 = load float, ptr %55, align 4, !tbaa !34
  store float %101, ptr %29, align 4, !tbaa !34
  %102 = load float, ptr %56, align 4, !tbaa !34
  store float %102, ptr %35, align 4, !tbaa !34
  %103 = add nuw nsw i64 %58, 1
  %104 = load i32, ptr %7, align 4, !tbaa !55
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %103, %105
  %107 = trunc i64 %58 to i32
  br i1 %106, label %57, label %108, !llvm.loop !114

108:                                              ; preds = %96, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_poly_edgehash_insert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  %9 = getelementptr %struct.MLoop, ptr %2, i64 %8
  %10 = getelementptr %struct.MLoop, ptr %9, i64 -1
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %15, %11 ], [ %5, %7 ]
  %13 = phi ptr [ %19, %11 ], [ %2, %7 ]
  %14 = phi ptr [ %13, %11 ], [ %10, %7 ]
  %15 = add nsw i32 %12, -1
  %16 = load i32, ptr %14, align 4, !tbaa !56
  %17 = load i32, ptr %13, align 4, !tbaa !56
  %18 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %0, i32 noundef %16, i32 noundef %17, ptr noundef null) #16
  %19 = getelementptr inbounds %struct.MLoop, ptr %13, i64 1
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %11, !llvm.loop !115

21:                                               ; preds = %11, %3
  ret void
}

declare zeroext i8 @BLI_edgehash_reinsert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_poly_edgebitmap_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %10, %7 ], [ %5, %3 ]
  %9 = phi ptr [ %20, %7 ], [ %2, %3 ]
  %10 = add nsw i32 %8, -1
  %11 = getelementptr inbounds %struct.MLoop, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !76
  %13 = and i32 %12, 31
  %14 = shl nuw i32 1, %13
  %15 = lshr i32 %12, 5
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = or i32 %14, %18
  store i32 %19, ptr %17, align 4, !tbaa !49
  %20 = getelementptr inbounds %struct.MLoop, ptr %9, i64 1
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %22, label %7, !llvm.loop !116

22:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_mesh_center_median(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !65
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = load float, ptr %5, align 4, !tbaa !34
  %13 = load float, ptr %6, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi float [ %13, %8 ], [ %28, %14 ]
  %16 = phi float [ %12, %8 ], [ %25, %14 ]
  %17 = phi float [ %11, %8 ], [ %22, %14 ]
  %18 = phi ptr [ %10, %8 ], [ %29, %14 ]
  %19 = phi i32 [ %4, %8 ], [ %20, %14 ]
  %20 = add nsw i32 %19, -1
  %21 = load float, ptr %18, align 4, !tbaa !34
  %22 = fadd float %21, %17
  store float %22, ptr %1, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %18, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fadd float %24, %16
  store float %25, ptr %5, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %18, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fadd float %27, %15
  store float %28, ptr %6, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.MVert, ptr %18, i64 1
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %31, label %14, !llvm.loop !117

31:                                               ; preds = %14
  %32 = sitofp i32 %4 to float
  %33 = fdiv float 1.000000e+00, %32
  %34 = load float, ptr %1, align 4, !tbaa !34
  %35 = fmul float %33, %34
  store float %35, ptr %1, align 4, !tbaa !34
  %36 = load float, ptr %5, align 4, !tbaa !34
  %37 = fmul float %33, %36
  store float %37, ptr %5, align 4, !tbaa !34
  %38 = load float, ptr %6, align 4, !tbaa !34
  %39 = fmul float %33, %38
  store float %39, ptr %6, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %2, %31
  %41 = icmp ne i32 %4, 0
  %42 = zext i1 %41 to i8
  ret i8 %42
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_mesh_center_bounds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !34
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !34
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !34
  %9 = call zeroext i8 @BKE_mesh_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i8 [ 1, %11 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret i8 %13
}

declare zeroext i8 @BKE_mesh_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_mesh_center_centroid(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %9 = load i32, ptr %8, align 8, !tbaa !68
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %11, align 4, !tbaa !34
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %104, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = getelementptr inbounds float, ptr %3, i64 2
  %20 = getelementptr inbounds float, ptr %4, i64 1
  %21 = getelementptr inbounds float, ptr %4, i64 2
  %22 = getelementptr inbounds float, ptr %5, i64 1
  %23 = getelementptr inbounds float, ptr %5, i64 2
  %24 = getelementptr inbounds float, ptr %7, i64 1
  %25 = getelementptr inbounds float, ptr %7, i64 2
  br label %26

26:                                               ; preds = %13, %86
  %27 = phi float [ 0.000000e+00, %13 ], [ %101, %86 ]
  %28 = phi ptr [ %15, %13 ], [ %102, %86 ]
  %29 = phi i32 [ %9, %13 ], [ %30, %86 ]
  %30 = add nsw i32 %29, -1
  %31 = load ptr, ptr %16, align 8, !tbaa !66
  %32 = load i32, ptr %28, align 4, !tbaa !45
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MLoop, ptr %31, i64 %33
  %35 = load ptr, ptr %17, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %28, ptr noundef %34, ptr noundef %35, ptr noundef nonnull %6)
  %36 = load i32, ptr %34, align 4, !tbaa !56
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %35, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !34
  store float %39, ptr %3, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %38, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  store float %41, ptr %18, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %38, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  store float %43, ptr %19, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.MLoop, ptr %34, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !56
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MVert, ptr %35, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !34
  store float %48, ptr %4, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %47, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !34
  store float %50, ptr %20, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %47, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  store float %52, ptr %21, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !55
  %55 = icmp sgt i32 %54, 2
  br i1 %55, label %56, label %86

56:                                               ; preds = %26, %56
  %57 = phi i64 [ %82, %56 ], [ 2, %26 ]
  %58 = phi float [ %72, %56 ], [ 0.000000e+00, %26 ]
  %59 = phi float [ %74, %56 ], [ 0.000000e+00, %26 ]
  %60 = phi float [ %76, %56 ], [ 0.000000e+00, %26 ]
  %61 = phi float [ %78, %56 ], [ 0.000000e+00, %26 ]
  %62 = getelementptr inbounds %struct.MLoop, ptr %34, i64 %57
  %63 = load i32, ptr %62, align 4, !tbaa !56
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.MVert, ptr %35, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !34
  store float %66, ptr %5, align 4, !tbaa !34
  %67 = getelementptr inbounds float, ptr %65, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  store float %68, ptr %22, align 4, !tbaa !34
  %69 = getelementptr inbounds float, ptr %65, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !34
  store float %70, ptr %23, align 4, !tbaa !34
  %71 = call float @area_tri_signed_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %72 = fadd float %58, %71
  call void @cent_tri_v3(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %73 = load float, ptr %7, align 4, !tbaa !34
  %74 = call float @llvm.fmuladd.f32(float %73, float %71, float %59)
  %75 = load float, ptr %24, align 4, !tbaa !34
  %76 = call float @llvm.fmuladd.f32(float %75, float %71, float %60)
  %77 = load float, ptr %25, align 4, !tbaa !34
  %78 = call float @llvm.fmuladd.f32(float %77, float %71, float %61)
  %79 = load float, ptr %5, align 4, !tbaa !34
  store float %79, ptr %4, align 4, !tbaa !34
  %80 = load float, ptr %22, align 4, !tbaa !34
  store float %80, ptr %20, align 4, !tbaa !34
  %81 = load float, ptr %23, align 4, !tbaa !34
  store float %81, ptr %21, align 4, !tbaa !34
  %82 = add nuw nsw i64 %57, 1
  %83 = load i32, ptr %53, align 4, !tbaa !55
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %56, label %86, !llvm.loop !118

86:                                               ; preds = %56, %26
  %87 = phi float [ 0.000000e+00, %26 ], [ %78, %56 ]
  %88 = phi float [ 0.000000e+00, %26 ], [ %76, %56 ]
  %89 = phi float [ 0.000000e+00, %26 ], [ %74, %56 ]
  %90 = phi float [ 0.000000e+00, %26 ], [ %72, %56 ]
  %91 = fdiv float 1.000000e+00, %90
  %92 = fmul float %89, %91
  %93 = fmul float %88, %91
  %94 = fmul float %87, %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  %95 = load float, ptr %1, align 4, !tbaa !34
  %96 = call float @llvm.fmuladd.f32(float %92, float %90, float %95)
  store float %96, ptr %1, align 4, !tbaa !34
  %97 = load float, ptr %10, align 4, !tbaa !34
  %98 = call float @llvm.fmuladd.f32(float %93, float %90, float %97)
  store float %98, ptr %10, align 4, !tbaa !34
  %99 = load float, ptr %11, align 4, !tbaa !34
  %100 = call float @llvm.fmuladd.f32(float %94, float %90, float %99)
  store float %100, ptr %11, align 4, !tbaa !34
  %101 = fadd float %27, %90
  %102 = getelementptr inbounds %struct.MPoly, ptr %28, i64 1
  %103 = icmp eq i32 %30, 0
  br i1 %103, label %104, label %26, !llvm.loop !119

104:                                              ; preds = %86, %2
  %105 = phi float [ 0.000000e+00, %2 ], [ %101, %86 ]
  %106 = load i32, ptr %8, align 8, !tbaa !68
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = fdiv float 1.000000e+00, %105
  %110 = load float, ptr %1, align 4, !tbaa !34
  %111 = fmul float %109, %110
  store float %111, ptr %1, align 4, !tbaa !34
  %112 = load float, ptr %10, align 4, !tbaa !34
  %113 = fmul float %109, %112
  store float %113, ptr %10, align 4, !tbaa !34
  %114 = load float, ptr %11, align 4, !tbaa !34
  %115 = fmul float %109, %114
  store float %115, ptr %11, align 4, !tbaa !34
  br label %116

116:                                              ; preds = %108, %104
  %117 = load float, ptr %1, align 4, !tbaa !34
  %118 = call float @llvm.fabs.f32(float %117)
  %119 = fcmp ueq float %118, 0x7FF0000000000000
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load float, ptr %10, align 4, !tbaa !34
  %122 = call float @llvm.fabs.f32(float %121)
  %123 = fcmp ueq float %122, 0x7FF0000000000000
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load float, ptr %11, align 4, !tbaa !34
  %126 = call float @llvm.fabs.f32(float %125)
  %127 = fcmp ueq float %126, 0x7FF0000000000000
  br i1 %127, label %128, label %158

128:                                              ; preds = %120, %116, %124
  %129 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %130 = load i32, ptr %129, align 8, !tbaa !65
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %11, align 4, !tbaa !34
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %134 = load ptr, ptr %133, align 8, !tbaa !61
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi float [ 0.000000e+00, %132 ], [ %149, %135 ]
  %137 = phi float [ 0.000000e+00, %132 ], [ %146, %135 ]
  %138 = phi float [ 0.000000e+00, %132 ], [ %143, %135 ]
  %139 = phi ptr [ %134, %132 ], [ %150, %135 ]
  %140 = phi i32 [ %130, %132 ], [ %141, %135 ]
  %141 = add nsw i32 %140, -1
  %142 = load float, ptr %139, align 4, !tbaa !34
  %143 = fadd float %138, %142
  store float %143, ptr %1, align 4, !tbaa !34
  %144 = getelementptr inbounds float, ptr %139, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !34
  %146 = fadd float %137, %145
  store float %146, ptr %10, align 4, !tbaa !34
  %147 = getelementptr inbounds float, ptr %139, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !34
  %149 = fadd float %136, %148
  store float %149, ptr %11, align 4, !tbaa !34
  %150 = getelementptr inbounds %struct.MVert, ptr %139, i64 1
  %151 = icmp eq i32 %141, 0
  br i1 %151, label %152, label %135, !llvm.loop !117

152:                                              ; preds = %135
  %153 = sitofp i32 %130 to float
  %154 = fdiv float 1.000000e+00, %153
  %155 = fmul float %154, %143
  store float %155, ptr %1, align 4, !tbaa !34
  %156 = fmul float %154, %146
  store float %156, ptr %10, align 4, !tbaa !34
  %157 = fmul float %154, %149
  store float %157, ptr %11, align 4, !tbaa !34
  br label %158

158:                                              ; preds = %124, %152, %128
  %159 = phi i32 [ %130, %128 ], [ 1, %152 ], [ %106, %124 ]
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i8
  ret i8 %161
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_volume(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = icmp eq ptr %4, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp ne ptr %5, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %12, %10
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %240, label %17

17:                                               ; preds = %15
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !34
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %103

21:                                               ; preds = %17
  %22 = zext nneg i32 %3 to i64
  br label %23

23:                                               ; preds = %21, %99
  %24 = phi i64 [ 0, %21 ], [ %101, %99 ]
  %25 = phi float [ 0.000000e+00, %21 ], [ %100, %99 ]
  %26 = getelementptr inbounds %struct.MFace, ptr %2, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !71
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MVert, ptr %0, i64 %28
  %30 = getelementptr inbounds %struct.MFace, ptr %2, i64 %24, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !72
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.MVert, ptr %0, i64 %32
  %34 = getelementptr inbounds %struct.MFace, ptr %2, i64 %24, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !73
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.MVert, ptr %0, i64 %36
  %38 = getelementptr inbounds %struct.MFace, ptr %2, i64 %24, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !69
  %40 = tail call float @area_tri_v3(ptr noundef %29, ptr noundef %33, ptr noundef %37) #16
  %41 = load float, ptr %29, align 4, !tbaa !34
  %42 = load float, ptr %7, align 4, !tbaa !34
  %43 = tail call float @llvm.fmuladd.f32(float %41, float %40, float %42)
  store float %43, ptr %7, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %29, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = load float, ptr %18, align 4, !tbaa !34
  %47 = tail call float @llvm.fmuladd.f32(float %45, float %40, float %46)
  store float %47, ptr %18, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %29, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = load float, ptr %19, align 4, !tbaa !34
  %51 = tail call float @llvm.fmuladd.f32(float %49, float %40, float %50)
  store float %51, ptr %19, align 4, !tbaa !34
  %52 = load float, ptr %33, align 4, !tbaa !34
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %40, float %43)
  store float %53, ptr %7, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %33, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %40, float %47)
  store float %56, ptr %18, align 4, !tbaa !34
  %57 = getelementptr inbounds float, ptr %33, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %40, float %51)
  store float %59, ptr %19, align 4, !tbaa !34
  %60 = load float, ptr %37, align 4, !tbaa !34
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %40, float %53)
  store float %61, ptr %7, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %37, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %40, float %56)
  store float %64, ptr %18, align 4, !tbaa !34
  %65 = getelementptr inbounds float, ptr %37, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %40, float %59)
  store float %67, ptr %19, align 4, !tbaa !34
  %68 = fadd float %25, %40
  %69 = load i32, ptr %38, align 4, !tbaa !69
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %99, label %71

71:                                               ; preds = %23
  %72 = zext i32 %39 to i64
  %73 = getelementptr inbounds %struct.MVert, ptr %0, i64 %72
  %74 = tail call float @area_tri_v3(ptr noundef nonnull %37, ptr noundef %73, ptr noundef nonnull %29) #16
  %75 = load float, ptr %37, align 4, !tbaa !34
  %76 = load float, ptr %7, align 4, !tbaa !34
  %77 = tail call float @llvm.fmuladd.f32(float %75, float %74, float %76)
  store float %77, ptr %7, align 4, !tbaa !34
  %78 = load float, ptr %62, align 4, !tbaa !34
  %79 = load float, ptr %18, align 4, !tbaa !34
  %80 = tail call float @llvm.fmuladd.f32(float %78, float %74, float %79)
  store float %80, ptr %18, align 4, !tbaa !34
  %81 = load float, ptr %65, align 4, !tbaa !34
  %82 = load float, ptr %19, align 4, !tbaa !34
  %83 = tail call float @llvm.fmuladd.f32(float %81, float %74, float %82)
  store float %83, ptr %19, align 4, !tbaa !34
  %84 = load float, ptr %73, align 4, !tbaa !34
  %85 = tail call float @llvm.fmuladd.f32(float %84, float %74, float %77)
  store float %85, ptr %7, align 4, !tbaa !34
  %86 = getelementptr inbounds float, ptr %73, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %74, float %80)
  store float %88, ptr %18, align 4, !tbaa !34
  %89 = getelementptr inbounds float, ptr %73, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %74, float %83)
  store float %91, ptr %19, align 4, !tbaa !34
  %92 = load float, ptr %29, align 4, !tbaa !34
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %74, float %85)
  store float %93, ptr %7, align 4, !tbaa !34
  %94 = load float, ptr %44, align 4, !tbaa !34
  %95 = tail call float @llvm.fmuladd.f32(float %94, float %74, float %88)
  store float %95, ptr %18, align 4, !tbaa !34
  %96 = load float, ptr %48, align 4, !tbaa !34
  %97 = tail call float @llvm.fmuladd.f32(float %96, float %74, float %91)
  store float %97, ptr %19, align 4, !tbaa !34
  %98 = fadd float %68, %74
  br label %99

99:                                               ; preds = %71, %23
  %100 = phi float [ %98, %71 ], [ %68, %23 ]
  %101 = add nuw nsw i64 %24, 1
  %102 = icmp eq i64 %101, %22
  br i1 %102, label %103, label %23, !llvm.loop !120

103:                                              ; preds = %99, %17
  %104 = phi float [ 0.000000e+00, %17 ], [ %100, %99 ]
  %105 = fcmp oeq float %104, 0.000000e+00
  br i1 %105, label %240, label %106

106:                                              ; preds = %103
  %107 = fmul float %104, 3.000000e+00
  %108 = fdiv float 1.000000e+00, %107
  %109 = load float, ptr %7, align 4, !tbaa !34
  %110 = fmul float %108, %109
  store float %110, ptr %7, align 4, !tbaa !34
  %111 = load float, ptr %18, align 4, !tbaa !34
  %112 = fmul float %108, %111
  store float %112, ptr %18, align 4, !tbaa !34
  %113 = load float, ptr %19, align 4, !tbaa !34
  %114 = fmul float %108, %113
  store float %114, ptr %19, align 4, !tbaa !34
  %115 = icmp sgt i32 %3, 0
  br i1 %115, label %116, label %223

116:                                              ; preds = %106
  %117 = getelementptr inbounds float, ptr %5, i64 1
  %118 = getelementptr inbounds float, ptr %5, i64 2
  %119 = getelementptr inbounds float, ptr %5, i64 1
  %120 = getelementptr inbounds float, ptr %5, i64 2
  %121 = zext nneg i32 %3 to i64
  br label %122

122:                                              ; preds = %116, %219
  %123 = phi i64 [ 0, %116 ], [ %221, %219 ]
  %124 = phi float [ 0.000000e+00, %116 ], [ %220, %219 ]
  %125 = getelementptr inbounds %struct.MFace, ptr %2, i64 %123
  %126 = load i32, ptr %125, align 4, !tbaa !71
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MVert, ptr %0, i64 %127
  %129 = getelementptr inbounds %struct.MFace, ptr %2, i64 %123, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !72
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.MVert, ptr %0, i64 %131
  %133 = getelementptr inbounds %struct.MFace, ptr %2, i64 %123, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !73
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.MVert, ptr %0, i64 %135
  %137 = getelementptr inbounds %struct.MFace, ptr %2, i64 %123, i32 3
  %138 = load i32, ptr %137, align 4, !tbaa !69
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.MVert, ptr %0, i64 %139
  %141 = call float @volume_tetrahedron_signed_v3(ptr noundef nonnull %7, ptr noundef %128, ptr noundef %132, ptr noundef %136) #16
  %142 = select i1 %8, float -0.000000e+00, float %141
  %143 = fadd float %124, %142
  br i1 %11, label %144, label %178

144:                                              ; preds = %122
  %145 = load float, ptr %7, align 4, !tbaa !34
  %146 = load float, ptr %5, align 4, !tbaa !34
  %147 = call float @llvm.fmuladd.f32(float %145, float %141, float %146)
  store float %147, ptr %5, align 4, !tbaa !34
  %148 = load float, ptr %18, align 4, !tbaa !34
  %149 = load float, ptr %117, align 4, !tbaa !34
  %150 = call float @llvm.fmuladd.f32(float %148, float %141, float %149)
  store float %150, ptr %117, align 4, !tbaa !34
  %151 = load float, ptr %19, align 4, !tbaa !34
  %152 = load float, ptr %118, align 4, !tbaa !34
  %153 = call float @llvm.fmuladd.f32(float %151, float %141, float %152)
  store float %153, ptr %118, align 4, !tbaa !34
  %154 = load float, ptr %128, align 4, !tbaa !34
  %155 = call float @llvm.fmuladd.f32(float %154, float %141, float %147)
  store float %155, ptr %5, align 4, !tbaa !34
  %156 = getelementptr inbounds float, ptr %128, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !34
  %158 = call float @llvm.fmuladd.f32(float %157, float %141, float %150)
  store float %158, ptr %117, align 4, !tbaa !34
  %159 = getelementptr inbounds float, ptr %128, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !34
  %161 = call float @llvm.fmuladd.f32(float %160, float %141, float %153)
  store float %161, ptr %118, align 4, !tbaa !34
  %162 = load float, ptr %132, align 4, !tbaa !34
  %163 = call float @llvm.fmuladd.f32(float %162, float %141, float %155)
  store float %163, ptr %5, align 4, !tbaa !34
  %164 = getelementptr inbounds float, ptr %132, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !34
  %166 = call float @llvm.fmuladd.f32(float %165, float %141, float %158)
  store float %166, ptr %117, align 4, !tbaa !34
  %167 = getelementptr inbounds float, ptr %132, i64 2
  %168 = load float, ptr %167, align 4, !tbaa !34
  %169 = call float @llvm.fmuladd.f32(float %168, float %141, float %161)
  store float %169, ptr %118, align 4, !tbaa !34
  %170 = load float, ptr %136, align 4, !tbaa !34
  %171 = call float @llvm.fmuladd.f32(float %170, float %141, float %163)
  store float %171, ptr %5, align 4, !tbaa !34
  %172 = getelementptr inbounds float, ptr %136, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !34
  %174 = call float @llvm.fmuladd.f32(float %173, float %141, float %166)
  store float %174, ptr %117, align 4, !tbaa !34
  %175 = getelementptr inbounds float, ptr %136, i64 2
  %176 = load float, ptr %175, align 4, !tbaa !34
  %177 = call float @llvm.fmuladd.f32(float %176, float %141, float %169)
  store float %177, ptr %118, align 4, !tbaa !34
  br label %178

178:                                              ; preds = %144, %122
  %179 = load i32, ptr %137, align 4, !tbaa !69
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %219, label %181

181:                                              ; preds = %178
  %182 = call float @volume_tetrahedron_signed_v3(ptr noundef nonnull %7, ptr noundef %136, ptr noundef %140, ptr noundef %128) #16
  %183 = fadd float %143, %182
  %184 = select i1 %8, float %124, float %183
  br i1 %11, label %185, label %219

185:                                              ; preds = %181
  %186 = load float, ptr %7, align 4, !tbaa !34
  %187 = load float, ptr %5, align 4, !tbaa !34
  %188 = call float @llvm.fmuladd.f32(float %186, float %182, float %187)
  store float %188, ptr %5, align 4, !tbaa !34
  %189 = load float, ptr %18, align 4, !tbaa !34
  %190 = load float, ptr %119, align 4, !tbaa !34
  %191 = call float @llvm.fmuladd.f32(float %189, float %182, float %190)
  store float %191, ptr %119, align 4, !tbaa !34
  %192 = load float, ptr %19, align 4, !tbaa !34
  %193 = load float, ptr %120, align 4, !tbaa !34
  %194 = call float @llvm.fmuladd.f32(float %192, float %182, float %193)
  store float %194, ptr %120, align 4, !tbaa !34
  %195 = load float, ptr %136, align 4, !tbaa !34
  %196 = call float @llvm.fmuladd.f32(float %195, float %182, float %188)
  store float %196, ptr %5, align 4, !tbaa !34
  %197 = getelementptr inbounds float, ptr %136, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !34
  %199 = call float @llvm.fmuladd.f32(float %198, float %182, float %191)
  store float %199, ptr %119, align 4, !tbaa !34
  %200 = getelementptr inbounds float, ptr %136, i64 2
  %201 = load float, ptr %200, align 4, !tbaa !34
  %202 = call float @llvm.fmuladd.f32(float %201, float %182, float %194)
  store float %202, ptr %120, align 4, !tbaa !34
  %203 = load float, ptr %140, align 4, !tbaa !34
  %204 = call float @llvm.fmuladd.f32(float %203, float %182, float %196)
  store float %204, ptr %5, align 4, !tbaa !34
  %205 = getelementptr inbounds float, ptr %140, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !34
  %207 = call float @llvm.fmuladd.f32(float %206, float %182, float %199)
  store float %207, ptr %119, align 4, !tbaa !34
  %208 = getelementptr inbounds float, ptr %140, i64 2
  %209 = load float, ptr %208, align 4, !tbaa !34
  %210 = call float @llvm.fmuladd.f32(float %209, float %182, float %202)
  store float %210, ptr %120, align 4, !tbaa !34
  %211 = load float, ptr %128, align 4, !tbaa !34
  %212 = call float @llvm.fmuladd.f32(float %211, float %182, float %204)
  store float %212, ptr %5, align 4, !tbaa !34
  %213 = getelementptr inbounds float, ptr %128, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !34
  %215 = call float @llvm.fmuladd.f32(float %214, float %182, float %207)
  store float %215, ptr %119, align 4, !tbaa !34
  %216 = getelementptr inbounds float, ptr %128, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !34
  %218 = call float @llvm.fmuladd.f32(float %217, float %182, float %210)
  store float %218, ptr %120, align 4, !tbaa !34
  br label %219

219:                                              ; preds = %181, %185, %178
  %220 = phi float [ %184, %185 ], [ %184, %181 ], [ %143, %178 ]
  %221 = add nuw nsw i64 %123, 1
  %222 = icmp eq i64 %221, %121
  br i1 %222, label %223, label %122, !llvm.loop !121

223:                                              ; preds = %219, %106
  %224 = phi float [ 0.000000e+00, %106 ], [ %220, %219 ]
  br i1 %8, label %227, label %225

225:                                              ; preds = %223
  %226 = call float @llvm.fabs.f32(float %224)
  store float %226, ptr %4, align 4, !tbaa !34
  br label %227

227:                                              ; preds = %225, %223
  %228 = fcmp une float %224, 0.000000e+00
  %229 = select i1 %11, i1 %228, i1 false
  br i1 %229, label %230, label %240

230:                                              ; preds = %227
  %231 = fdiv float 2.500000e-01, %224
  %232 = load float, ptr %5, align 4, !tbaa !34
  %233 = fmul float %231, %232
  store float %233, ptr %5, align 4, !tbaa !34
  %234 = getelementptr inbounds float, ptr %5, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !34
  %236 = fmul float %231, %235
  store float %236, ptr %234, align 4, !tbaa !34
  %237 = getelementptr inbounds float, ptr %5, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !34
  %239 = fmul float %231, %238
  store float %239, ptr %237, align 4, !tbaa !34
  br label %240

240:                                              ; preds = %103, %227, %230, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  ret void
}

declare float @volume_tetrahedron_signed_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_loops_to_mface_corners(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11) local_unnamed_addr #0 {
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = icmp sgt i32 %6, 0
  %16 = zext nneg i32 %6 to i64
  br label %22

17:                                               ; preds = %52, %12
  %18 = icmp sgt i32 %8, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %17
  %20 = icmp sgt i32 %6, 0
  %21 = zext nneg i32 %6 to i64
  br label %55

22:                                               ; preds = %14, %52
  %23 = phi i32 [ 0, %14 ], [ %53, %52 ]
  %24 = tail call ptr @CustomData_get_n(ptr noundef %0, i32 noundef 5, i32 noundef %4, i32 noundef %23) #16
  %25 = tail call ptr @CustomData_get_n(ptr noundef %2, i32 noundef 15, i32 noundef %5, i32 noundef %23) #16
  %26 = load ptr, ptr %25, align 8, !tbaa !122
  %27 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !124
  %28 = getelementptr inbounds %struct.MTexPoly, ptr %25, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !126
  %30 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 2
  store i8 %29, ptr %30, align 8, !tbaa !127
  %31 = getelementptr inbounds %struct.MTexPoly, ptr %25, i64 0, i32 2
  %32 = load i8, ptr %31, align 1, !tbaa !128
  %33 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 3
  store i8 %32, ptr %33, align 1, !tbaa !129
  %34 = getelementptr inbounds %struct.MTexPoly, ptr %25, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !130
  %36 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 4
  store i16 %35, ptr %36, align 2, !tbaa !131
  %37 = getelementptr inbounds %struct.MTexPoly, ptr %25, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !132
  %39 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 5
  store i16 %38, ptr %39, align 4, !tbaa !133
  br i1 %15, label %40, label %52

40:                                               ; preds = %22, %40
  %41 = phi i64 [ %50, %40 ], [ 0, %22 ]
  %42 = getelementptr inbounds i32, ptr %3, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !49
  %44 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 16, i32 noundef %43, i32 noundef %23) #16
  %45 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %41
  %46 = load float, ptr %44, align 4, !tbaa !34
  store float %46, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %44, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %45, i64 1
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = add nuw nsw i64 %41, 1
  %51 = icmp eq i64 %50, %16
  br i1 %51, label %52, label %40, !llvm.loop !134

52:                                               ; preds = %40, %22
  %53 = add nuw nsw i32 %23, 1
  %54 = icmp eq i32 %53, %7
  br i1 %54, label %17, label %22, !llvm.loop !135

55:                                               ; preds = %19, %76
  %56 = phi i32 [ 0, %19 ], [ %77, %76 ]
  %57 = tail call ptr @CustomData_get_n(ptr noundef %0, i32 noundef 6, i32 noundef %4, i32 noundef %56) #16
  br i1 %20, label %58, label %76

58:                                               ; preds = %55, %58
  %59 = phi i64 [ %74, %58 ], [ 0, %55 ]
  %60 = getelementptr inbounds i32, ptr %3, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !49
  %62 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 17, i32 noundef %61, i32 noundef %56) #16
  %63 = getelementptr inbounds %struct.MCol, ptr %57, i64 %59
  %64 = load i8, ptr %62, align 1, !tbaa !136
  %65 = getelementptr inbounds %struct.MCol, ptr %57, i64 %59, i32 3
  store i8 %64, ptr %65, align 1, !tbaa !138
  %66 = getelementptr inbounds %struct.MLoopCol, ptr %62, i64 0, i32 1
  %67 = load i8, ptr %66, align 1, !tbaa !140
  %68 = getelementptr inbounds %struct.MCol, ptr %57, i64 %59, i32 2
  store i8 %67, ptr %68, align 1, !tbaa !141
  %69 = getelementptr inbounds %struct.MLoopCol, ptr %62, i64 0, i32 2
  %70 = load i8, ptr %69, align 1, !tbaa !142
  %71 = getelementptr inbounds %struct.MCol, ptr %57, i64 %59, i32 1
  store i8 %70, ptr %71, align 1, !tbaa !143
  %72 = getelementptr inbounds %struct.MLoopCol, ptr %62, i64 0, i32 3
  %73 = load i8, ptr %72, align 1, !tbaa !144
  store i8 %73, ptr %63, align 1, !tbaa !145
  %74 = add nuw nsw i64 %59, 1
  %75 = icmp eq i64 %74, %21
  br i1 %75, label %76, label %58, !llvm.loop !146

76:                                               ; preds = %58, %55
  %77 = add nuw nsw i32 %56, 1
  %78 = icmp eq i32 %77, %8
  br i1 %78, label %79, label %55, !llvm.loop !147

79:                                               ; preds = %76, %17
  %80 = icmp eq i8 %9, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %79
  %82 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 20) #16
  %83 = icmp sgt i32 %6, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = zext nneg i32 %6 to i64
  br label %86

86:                                               ; preds = %84, %86
  %87 = phi i64 [ 0, %84 ], [ %102, %86 ]
  %88 = getelementptr inbounds i32, ptr %3, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !49
  %90 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %89, i32 noundef 32) #16
  %91 = getelementptr inbounds %struct.MCol, ptr %82, i64 %87
  %92 = load i8, ptr %90, align 1, !tbaa !136
  %93 = getelementptr inbounds %struct.MCol, ptr %82, i64 %87, i32 3
  store i8 %92, ptr %93, align 1, !tbaa !138
  %94 = getelementptr inbounds %struct.MLoopCol, ptr %90, i64 0, i32 1
  %95 = load i8, ptr %94, align 1, !tbaa !140
  %96 = getelementptr inbounds %struct.MCol, ptr %82, i64 %87, i32 2
  store i8 %95, ptr %96, align 1, !tbaa !141
  %97 = getelementptr inbounds %struct.MLoopCol, ptr %90, i64 0, i32 2
  %98 = load i8, ptr %97, align 1, !tbaa !142
  %99 = getelementptr inbounds %struct.MCol, ptr %82, i64 %87, i32 1
  store i8 %98, ptr %99, align 1, !tbaa !143
  %100 = getelementptr inbounds %struct.MLoopCol, ptr %90, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !144
  store i8 %101, ptr %91, align 1, !tbaa !145
  %102 = add nuw nsw i64 %87, 1
  %103 = icmp eq i64 %102, %85
  br i1 %103, label %104, label %86, !llvm.loop !148

104:                                              ; preds = %86, %81, %79
  %105 = icmp eq i8 %10, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %104
  %107 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 13) #16
  %108 = icmp sgt i32 %6, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = zext nneg i32 %6 to i64
  br label %111

111:                                              ; preds = %109, %111
  %112 = phi i64 [ 0, %109 ], [ %121, %111 ]
  %113 = getelementptr inbounds i32, ptr %3, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !49
  %115 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %114, i32 noundef 31) #16
  %116 = getelementptr inbounds [4 x [2 x float]], ptr %107, i64 0, i64 %112
  %117 = load float, ptr %115, align 4, !tbaa !34
  store float %117, ptr %116, align 4, !tbaa !34
  %118 = getelementptr inbounds float, ptr %115, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !34
  %120 = getelementptr inbounds float, ptr %116, i64 1
  store float %119, ptr %120, align 4, !tbaa !34
  %121 = add nuw nsw i64 %112, 1
  %122 = icmp eq i64 %121, %110
  br i1 %122, label %123, label %111, !llvm.loop !149

123:                                              ; preds = %111, %106, %104
  %124 = icmp eq i8 %11, 0
  br i1 %124, label %151, label %125

125:                                              ; preds = %123
  %126 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 40) #16
  %127 = icmp sgt i32 %6, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %125
  %129 = zext nneg i32 %6 to i64
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i64 [ 0, %128 ], [ %149, %130 ]
  %132 = getelementptr inbounds [3 x i16], ptr %126, i64 %131
  %133 = getelementptr inbounds i32, ptr %3, i64 %131
  %134 = load i32, ptr %133, align 4, !tbaa !49
  %135 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %134, i32 noundef 8) #16
  %136 = load float, ptr %135, align 4, !tbaa !34
  %137 = fmul float %136, 3.276700e+04
  %138 = fptosi float %137 to i16
  store i16 %138, ptr %132, align 2, !tbaa !38
  %139 = getelementptr inbounds float, ptr %135, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !34
  %141 = fmul float %140, 3.276700e+04
  %142 = fptosi float %141 to i16
  %143 = getelementptr inbounds i16, ptr %132, i64 1
  store i16 %142, ptr %143, align 2, !tbaa !38
  %144 = getelementptr inbounds float, ptr %135, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !34
  %146 = fmul float %145, 3.276700e+04
  %147 = fptosi float %146 to i16
  %148 = getelementptr inbounds i16, ptr %132, i64 2
  store i16 %147, ptr %148, align 2, !tbaa !38
  %149 = add nuw nsw i64 %131, 1
  %150 = icmp eq i64 %149, %129
  br i1 %150, label %151, label %130, !llvm.loop !150

151:                                              ; preds = %130, %125, %123
  ret void
}

declare ptr @CustomData_get_n(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_loops_to_tessdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 15) #16
  %9 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 17) #16
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 32) #16
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 31) #16
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 8) #16
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = icmp sgt i32 %6, 0
  %16 = icmp eq ptr %3, null
  %17 = zext nneg i32 %6 to i64
  br label %24

18:                                               ; preds = %76, %7
  %19 = icmp sgt i32 %9, 0
  br i1 %19, label %20, label %120

20:                                               ; preds = %18
  %21 = icmp sgt i32 %6, 0
  %22 = icmp eq ptr %3, null
  %23 = zext nneg i32 %6 to i64
  br label %79

24:                                               ; preds = %14, %76
  %25 = phi i32 [ 0, %14 ], [ %77, %76 ]
  %26 = tail call ptr @CustomData_get_layer_n(ptr noundef %0, i32 noundef 5, i32 noundef %25) #16
  %27 = tail call ptr @CustomData_get_layer_n(ptr noundef %2, i32 noundef 15, i32 noundef %25) #16
  %28 = tail call ptr @CustomData_get_layer_n(ptr noundef %1, i32 noundef 16, i32 noundef %25) #16
  br i1 %15, label %29, label %76

29:                                               ; preds = %24, %70
  %30 = phi i64 [ %73, %70 ], [ 0, %24 ]
  %31 = phi ptr [ %71, %70 ], [ %4, %24 ]
  %32 = phi ptr [ %72, %70 ], [ %5, %24 ]
  %33 = phi ptr [ %74, %70 ], [ %26, %24 ]
  %34 = load i32, ptr %31, align 4, !tbaa !49
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !124
  %39 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35, i32 1
  %40 = load i8, ptr %39, align 8, !tbaa !126
  %41 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 2
  store i8 %40, ptr %41, align 8, !tbaa !127
  %42 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35, i32 2
  %43 = load i8, ptr %42, align 1, !tbaa !128
  %44 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 3
  store i8 %43, ptr %44, align 1, !tbaa !129
  %45 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !130
  %47 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 4
  store i16 %46, ptr %47, align 2, !tbaa !131
  %48 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35, i32 4
  %49 = load i16, ptr %48, align 4, !tbaa !132
  %50 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 5
  store i16 %49, ptr %50, align 4, !tbaa !133
  %51 = getelementptr inbounds %struct.MFace, ptr %3, i64 %30, i32 3
  %52 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 3
  %53 = select i1 %16, ptr %52, ptr %51
  %54 = load i32, ptr %53, align 4, !tbaa !49
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i64 3, i64 4
  br label %57

57:                                               ; preds = %29, %57
  %58 = phi i64 [ %56, %29 ], [ %59, %57 ]
  %59 = add nsw i64 %58, -1
  %60 = getelementptr inbounds [4 x [2 x float]], ptr %33, i64 0, i64 %59
  %61 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !49
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.MLoopUV, ptr %28, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !34
  store float %65, ptr %60, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %64, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %60, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = icmp eq i64 %59, 0
  br i1 %69, label %70, label %57, !llvm.loop !151

70:                                               ; preds = %57
  %71 = getelementptr inbounds i32, ptr %31, i64 1
  %72 = getelementptr inbounds [4 x i32], ptr %32, i64 1
  %73 = add nuw nsw i64 %30, 1
  %74 = getelementptr inbounds %struct.MTFace, ptr %33, i64 1
  %75 = icmp eq i64 %73, %17
  br i1 %75, label %76, label %29, !llvm.loop !152

76:                                               ; preds = %70, %24
  %77 = add nuw nsw i32 %25, 1
  %78 = icmp eq i32 %77, %8
  br i1 %78, label %18, label %24, !llvm.loop !153

79:                                               ; preds = %20, %117
  %80 = phi i32 [ 0, %20 ], [ %118, %117 ]
  %81 = tail call ptr @CustomData_get_layer_n(ptr noundef %0, i32 noundef 6, i32 noundef %80) #16
  %82 = tail call ptr @CustomData_get_layer_n(ptr noundef %1, i32 noundef 17, i32 noundef %80) #16
  br i1 %21, label %83, label %117

83:                                               ; preds = %79, %112
  %84 = phi i64 [ %114, %112 ], [ 0, %79 ]
  %85 = phi ptr [ %113, %112 ], [ %5, %79 ]
  %86 = phi ptr [ %115, %112 ], [ %81, %79 ]
  %87 = getelementptr inbounds %struct.MFace, ptr %3, i64 %84, i32 3
  %88 = getelementptr inbounds [4 x i32], ptr %85, i64 0, i64 3
  %89 = select i1 %22, ptr %88, ptr %87
  %90 = load i32, ptr %89, align 4, !tbaa !49
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i64 3, i64 4
  br label %93

93:                                               ; preds = %83, %93
  %94 = phi i64 [ %92, %83 ], [ %95, %93 ]
  %95 = add nsw i64 %94, -1
  %96 = getelementptr inbounds [4 x i32], ptr %85, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !49
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.MLoopCol, ptr %82, i64 %98
  %100 = getelementptr inbounds [4 x %struct.MCol], ptr %86, i64 0, i64 %95
  %101 = load i8, ptr %99, align 1, !tbaa !136
  %102 = getelementptr inbounds [4 x %struct.MCol], ptr %86, i64 0, i64 %95, i32 3
  store i8 %101, ptr %102, align 1, !tbaa !138
  %103 = getelementptr inbounds %struct.MLoopCol, ptr %82, i64 %98, i32 1
  %104 = load i8, ptr %103, align 1, !tbaa !140
  %105 = getelementptr inbounds [4 x %struct.MCol], ptr %86, i64 0, i64 %95, i32 2
  store i8 %104, ptr %105, align 1, !tbaa !141
  %106 = getelementptr inbounds %struct.MLoopCol, ptr %82, i64 %98, i32 2
  %107 = load i8, ptr %106, align 1, !tbaa !142
  %108 = getelementptr inbounds [4 x %struct.MCol], ptr %86, i64 0, i64 %95, i32 1
  store i8 %107, ptr %108, align 1, !tbaa !143
  %109 = getelementptr inbounds %struct.MLoopCol, ptr %82, i64 %98, i32 3
  %110 = load i8, ptr %109, align 1, !tbaa !144
  store i8 %110, ptr %100, align 1, !tbaa !145
  %111 = icmp eq i64 %95, 0
  br i1 %111, label %112, label %93, !llvm.loop !154

112:                                              ; preds = %93
  %113 = getelementptr inbounds [4 x i32], ptr %85, i64 1
  %114 = add nuw nsw i64 %84, 1
  %115 = getelementptr inbounds [4 x %struct.MCol], ptr %86, i64 1
  %116 = icmp eq i64 %114, %23
  br i1 %116, label %117, label %83, !llvm.loop !155

117:                                              ; preds = %112, %79
  %118 = add nuw nsw i32 %80, 1
  %119 = icmp eq i32 %118, %9
  br i1 %119, label %120, label %79, !llvm.loop !156

120:                                              ; preds = %117, %18
  %121 = icmp eq i8 %10, 0
  br i1 %121, label %163, label %122

122:                                              ; preds = %120
  %123 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 20) #16
  %124 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 32) #16
  %125 = icmp sgt i32 %6, 0
  br i1 %125, label %126, label %163

126:                                              ; preds = %122
  %127 = icmp eq ptr %3, null
  %128 = zext nneg i32 %6 to i64
  br label %129

129:                                              ; preds = %126, %158
  %130 = phi i64 [ 0, %126 ], [ %160, %158 ]
  %131 = phi ptr [ %5, %126 ], [ %159, %158 ]
  %132 = phi ptr [ %123, %126 ], [ %161, %158 ]
  %133 = getelementptr inbounds %struct.MFace, ptr %3, i64 %130, i32 3
  %134 = getelementptr inbounds [4 x i32], ptr %131, i64 0, i64 3
  %135 = select i1 %127, ptr %134, ptr %133
  %136 = load i32, ptr %135, align 4, !tbaa !49
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i64 3, i64 4
  br label %139

139:                                              ; preds = %129, %139
  %140 = phi i64 [ %138, %129 ], [ %141, %139 ]
  %141 = add nsw i64 %140, -1
  %142 = getelementptr inbounds [4 x i32], ptr %131, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !49
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.MLoopCol, ptr %124, i64 %144
  %146 = getelementptr inbounds [4 x %struct.MCol], ptr %132, i64 0, i64 %141
  %147 = load i8, ptr %145, align 1, !tbaa !136
  %148 = getelementptr inbounds [4 x %struct.MCol], ptr %132, i64 0, i64 %141, i32 3
  store i8 %147, ptr %148, align 1, !tbaa !138
  %149 = getelementptr inbounds %struct.MLoopCol, ptr %124, i64 %144, i32 1
  %150 = load i8, ptr %149, align 1, !tbaa !140
  %151 = getelementptr inbounds [4 x %struct.MCol], ptr %132, i64 0, i64 %141, i32 2
  store i8 %150, ptr %151, align 1, !tbaa !141
  %152 = getelementptr inbounds %struct.MLoopCol, ptr %124, i64 %144, i32 2
  %153 = load i8, ptr %152, align 1, !tbaa !142
  %154 = getelementptr inbounds [4 x %struct.MCol], ptr %132, i64 0, i64 %141, i32 1
  store i8 %153, ptr %154, align 1, !tbaa !143
  %155 = getelementptr inbounds %struct.MLoopCol, ptr %124, i64 %144, i32 3
  %156 = load i8, ptr %155, align 1, !tbaa !144
  store i8 %156, ptr %146, align 1, !tbaa !145
  %157 = icmp eq i64 %141, 0
  br i1 %157, label %158, label %139, !llvm.loop !157

158:                                              ; preds = %139
  %159 = getelementptr inbounds [4 x i32], ptr %131, i64 1
  %160 = add nuw nsw i64 %130, 1
  %161 = getelementptr inbounds [4 x %struct.MCol], ptr %132, i64 1
  %162 = icmp eq i64 %160, %128
  br i1 %162, label %163, label %129, !llvm.loop !158

163:                                              ; preds = %158, %122, %120
  %164 = icmp eq i8 %11, 0
  br i1 %164, label %200, label %165

165:                                              ; preds = %163
  %166 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 13) #16
  %167 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 31) #16
  %168 = icmp sgt i32 %6, 0
  br i1 %168, label %169, label %200

169:                                              ; preds = %165
  %170 = icmp eq ptr %3, null
  %171 = zext nneg i32 %6 to i64
  br label %172

172:                                              ; preds = %169, %195
  %173 = phi i64 [ 0, %169 ], [ %197, %195 ]
  %174 = phi ptr [ %166, %169 ], [ %198, %195 ]
  %175 = phi ptr [ %5, %169 ], [ %196, %195 ]
  %176 = getelementptr inbounds %struct.MFace, ptr %3, i64 %173, i32 3
  %177 = getelementptr inbounds [4 x i32], ptr %175, i64 0, i64 3
  %178 = select i1 %170, ptr %177, ptr %176
  %179 = load i32, ptr %178, align 4, !tbaa !49
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i64 3, i64 4
  br label %182

182:                                              ; preds = %172, %182
  %183 = phi i64 [ %181, %172 ], [ %184, %182 ]
  %184 = add nsw i64 %183, -1
  %185 = getelementptr inbounds [4 x [2 x float]], ptr %174, i64 0, i64 %184
  %186 = getelementptr inbounds [4 x i32], ptr %175, i64 0, i64 %184
  %187 = load i32, ptr %186, align 4, !tbaa !49
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %167, i64 %188
  %190 = load float, ptr %189, align 4, !tbaa !34
  store float %190, ptr %185, align 4, !tbaa !34
  %191 = getelementptr inbounds float, ptr %189, i64 1
  %192 = load float, ptr %191, align 4, !tbaa !34
  %193 = getelementptr inbounds float, ptr %185, i64 1
  store float %192, ptr %193, align 4, !tbaa !34
  %194 = icmp eq i64 %184, 0
  br i1 %194, label %195, label %182, !llvm.loop !159

195:                                              ; preds = %182
  %196 = getelementptr inbounds [4 x i32], ptr %175, i64 1
  %197 = add nuw nsw i64 %173, 1
  %198 = getelementptr inbounds %struct.OrigSpaceFace, ptr %174, i64 1
  %199 = icmp eq i64 %197, %171
  br i1 %199, label %200, label %172, !llvm.loop !160

200:                                              ; preds = %195, %165, %163
  %201 = icmp eq i8 %12, 0
  br i1 %201, label %246, label %202

202:                                              ; preds = %200
  %203 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 40) #16
  %204 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 8) #16
  %205 = icmp sgt i32 %6, 0
  br i1 %205, label %206, label %246

206:                                              ; preds = %202
  %207 = icmp eq ptr %3, null
  %208 = zext nneg i32 %6 to i64
  br label %209

209:                                              ; preds = %206, %241
  %210 = phi i64 [ 0, %206 ], [ %243, %241 ]
  %211 = phi ptr [ %203, %206 ], [ %244, %241 ]
  %212 = phi ptr [ %5, %206 ], [ %242, %241 ]
  %213 = getelementptr inbounds %struct.MFace, ptr %3, i64 %210, i32 3
  %214 = getelementptr inbounds [4 x i32], ptr %212, i64 0, i64 3
  %215 = select i1 %207, ptr %214, ptr %213
  %216 = load i32, ptr %215, align 4, !tbaa !49
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %217, i64 3, i64 4
  br label %219

219:                                              ; preds = %209, %219
  %220 = phi i64 [ %218, %209 ], [ %221, %219 ]
  %221 = add nsw i64 %220, -1
  %222 = getelementptr inbounds [4 x [3 x i16]], ptr %211, i64 0, i64 %221
  %223 = getelementptr inbounds [4 x i32], ptr %212, i64 0, i64 %221
  %224 = load i32, ptr %223, align 4, !tbaa !49
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [3 x float], ptr %204, i64 %225
  %227 = load float, ptr %226, align 4, !tbaa !34
  %228 = fmul float %227, 3.276700e+04
  %229 = fptosi float %228 to i16
  store i16 %229, ptr %222, align 2, !tbaa !38
  %230 = getelementptr inbounds float, ptr %226, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !34
  %232 = fmul float %231, 3.276700e+04
  %233 = fptosi float %232 to i16
  %234 = getelementptr inbounds i16, ptr %222, i64 1
  store i16 %233, ptr %234, align 2, !tbaa !38
  %235 = getelementptr inbounds float, ptr %226, i64 2
  %236 = load float, ptr %235, align 4, !tbaa !34
  %237 = fmul float %236, 3.276700e+04
  %238 = fptosi float %237 to i16
  %239 = getelementptr inbounds i16, ptr %222, i64 2
  store i16 %238, ptr %239, align 2, !tbaa !38
  %240 = icmp eq i64 %221, 0
  br i1 %240, label %241, label %219, !llvm.loop !161

241:                                              ; preds = %219
  %242 = getelementptr inbounds [4 x i32], ptr %212, i64 1
  %243 = add nuw nsw i64 %210, 1
  %244 = getelementptr inbounds [4 x [3 x i16]], ptr %211, i64 1
  %245 = icmp eq i64 %243, %208
  br i1 %245, label %246, label %209, !llvm.loop !162

246:                                              ; preds = %241, %202, %200
  ret void
}

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_mesh_recalc_tessellation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = shl nsw i32 %6, 1
  %12 = sub nsw i32 %5, %11
  %13 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 25) #16
  %14 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 26) #16
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %16 = sext i32 %12 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #16
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %20 = mul nsw i64 %16, 20
  %21 = tail call ptr %19(i64 noundef %20, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #16
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %23 = shl nsw i64 %16, 4
  %24 = tail call ptr %22(i64 noundef %23, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #16
  %25 = icmp sgt i32 %6, 0
  br i1 %25, label %26, label %254

26:                                               ; preds = %8
  %27 = getelementptr inbounds float, ptr %9, i64 1
  %28 = getelementptr inbounds float, ptr %9, i64 2
  br label %29

29:                                               ; preds = %26, %248
  %30 = phi ptr [ %13, %26 ], [ %252, %248 ]
  %31 = phi ptr [ null, %26 ], [ %250, %248 ]
  %32 = phi i32 [ 0, %26 ], [ %251, %248 ]
  %33 = phi i32 [ 0, %26 ], [ %249, %248 ]
  %34 = load i32, ptr %30, align 4, !tbaa !45
  %35 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !55
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %248, label %38

38:                                               ; preds = %29
  switch i32 %36, label %103 [
    i32 3, label %39
    i32 4, label %69
  ]

39:                                               ; preds = %38
  %40 = sext i32 %33 to i64
  %41 = getelementptr inbounds i32, ptr %18, i64 %40
  store i32 %32, ptr %41, align 4, !tbaa !49
  %42 = getelementptr inbounds %struct.MFace, ptr %21, i64 %40
  %43 = getelementptr inbounds [4 x i32], ptr %24, i64 %40
  %44 = add i32 %34, 1
  %45 = add i32 %34, 2
  %46 = zext i32 %34 to i64
  %47 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !56
  store i32 %48, ptr %42, align 4, !tbaa !71
  %49 = zext i32 %44 to i64
  %50 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !56
  %52 = getelementptr inbounds %struct.MFace, ptr %21, i64 %40, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !72
  %53 = zext i32 %45 to i64
  %54 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !56
  %56 = getelementptr inbounds %struct.MFace, ptr %21, i64 %40, i32 2
  store i32 %55, ptr %56, align 4, !tbaa !73
  %57 = getelementptr inbounds %struct.MFace, ptr %21, i64 %40, i32 3
  store i32 0, ptr %57, align 4, !tbaa !69
  store i32 %34, ptr %43, align 4, !tbaa !49
  %58 = getelementptr inbounds i32, ptr %43, i64 1
  store i32 %44, ptr %58, align 4, !tbaa !49
  %59 = getelementptr inbounds i32, ptr %43, i64 2
  store i32 %45, ptr %59, align 4, !tbaa !49
  %60 = getelementptr inbounds i32, ptr %43, i64 3
  store i32 0, ptr %60, align 4, !tbaa !49
  %61 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 2
  %62 = load i16, ptr %61, align 4, !tbaa !163
  %63 = getelementptr inbounds %struct.MFace, ptr %21, i64 %40, i32 4
  store i16 %62, ptr %63, align 4, !tbaa !164
  %64 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 3
  %65 = load i8, ptr %64, align 2, !tbaa !77
  %66 = getelementptr inbounds %struct.MFace, ptr %21, i64 %40, i32 6
  store i8 %65, ptr %66, align 1, !tbaa !165
  %67 = getelementptr inbounds %struct.MFace, ptr %21, i64 %40, i32 5
  store i8 0, ptr %67, align 2, !tbaa !166
  %68 = add nsw i32 %33, 1
  br label %248

69:                                               ; preds = %38
  %70 = sext i32 %33 to i64
  %71 = getelementptr inbounds i32, ptr %18, i64 %70
  store i32 %32, ptr %71, align 4, !tbaa !49
  %72 = getelementptr inbounds %struct.MFace, ptr %21, i64 %70
  %73 = getelementptr inbounds [4 x i32], ptr %24, i64 %70
  %74 = add i32 %34, 1
  %75 = add i32 %34, 2
  %76 = add i32 %34, 3
  %77 = zext i32 %34 to i64
  %78 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !56
  store i32 %79, ptr %72, align 4, !tbaa !71
  %80 = zext i32 %74 to i64
  %81 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !56
  %83 = getelementptr inbounds %struct.MFace, ptr %21, i64 %70, i32 1
  store i32 %82, ptr %83, align 4, !tbaa !72
  %84 = zext i32 %75 to i64
  %85 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !56
  %87 = getelementptr inbounds %struct.MFace, ptr %21, i64 %70, i32 2
  store i32 %86, ptr %87, align 4, !tbaa !73
  %88 = zext i32 %76 to i64
  %89 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !56
  %91 = getelementptr inbounds %struct.MFace, ptr %21, i64 %70, i32 3
  store i32 %90, ptr %91, align 4, !tbaa !69
  store i32 %34, ptr %73, align 4, !tbaa !49
  %92 = getelementptr inbounds i32, ptr %73, i64 1
  store i32 %74, ptr %92, align 4, !tbaa !49
  %93 = getelementptr inbounds i32, ptr %73, i64 2
  store i32 %75, ptr %93, align 4, !tbaa !49
  %94 = getelementptr inbounds i32, ptr %73, i64 3
  store i32 %76, ptr %94, align 4, !tbaa !49
  %95 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 2
  %96 = load i16, ptr %95, align 4, !tbaa !163
  %97 = getelementptr inbounds %struct.MFace, ptr %21, i64 %70, i32 4
  store i16 %96, ptr %97, align 4, !tbaa !164
  %98 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 3
  %99 = load i8, ptr %98, align 2, !tbaa !77
  %100 = getelementptr inbounds %struct.MFace, ptr %21, i64 %70, i32 6
  store i8 %99, ptr %100, align 1, !tbaa !165
  %101 = getelementptr inbounds %struct.MFace, ptr %21, i64 %70, i32 5
  store i8 1, ptr %101, align 2, !tbaa !166
  %102 = add nsw i32 %33, 1
  br label %248

103:                                              ; preds = %38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #16
  %104 = add i32 %36, -2
  %105 = icmp eq ptr %31, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #16
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi ptr [ %107, %106 ], [ %31, %103 ]
  %110 = zext i32 %104 to i64
  %111 = mul nuw nsw i64 %110, 12
  %112 = call ptr @BLI_memarena_alloc(ptr noundef %109, i64 noundef %111) #16
  %113 = zext i32 %36 to i64
  %114 = shl nuw nsw i64 %113, 3
  %115 = call ptr @BLI_memarena_alloc(ptr noundef %109, i64 noundef %114) #16
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %27, align 4, !tbaa !34
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  %116 = zext i32 %34 to i64
  %117 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %116
  %118 = add i32 %36, -1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.MLoop, ptr %117, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !56
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.MVert, ptr %3, i64 %122
  %124 = load float, ptr %9, align 4, !tbaa !34
  %125 = load float, ptr %27, align 4, !tbaa !34
  %126 = load float, ptr %28, align 4, !tbaa !34
  %127 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br label %128

128:                                              ; preds = %108, %128
  %129 = phi ptr [ %117, %108 ], [ %158, %128 ]
  %130 = phi ptr [ %123, %108 ], [ %137, %128 ]
  %131 = phi i32 [ 0, %108 ], [ %157, %128 ]
  %132 = phi float [ %124, %108 ], [ %148, %128 ]
  %133 = phi float [ %125, %108 ], [ %153, %128 ]
  %134 = phi float [ %126, %108 ], [ %156, %128 ]
  %135 = load i32, ptr %129, align 4, !tbaa !56
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.MVert, ptr %3, i64 %136
  %138 = getelementptr inbounds float, ptr %130, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !34
  %140 = getelementptr inbounds float, ptr %137, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = fsub float %139, %141
  %143 = getelementptr inbounds float, ptr %130, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !34
  %145 = getelementptr inbounds float, ptr %137, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = fadd float %144, %146
  %148 = call float @llvm.fmuladd.f32(float %142, float %147, float %132)
  %149 = fsub float %144, %146
  %150 = load float, ptr %130, align 4, !tbaa !34
  %151 = load float, ptr %137, align 4, !tbaa !34
  %152 = fadd float %150, %151
  %153 = call float @llvm.fmuladd.f32(float %149, float %152, float %133)
  %154 = fsub float %150, %151
  %155 = fadd float %139, %141
  %156 = call float @llvm.fmuladd.f32(float %154, float %155, float %134)
  %157 = add nuw i32 %131, 1
  %158 = getelementptr inbounds %struct.MLoop, ptr %129, i64 1
  %159 = icmp eq i32 %157, %127
  br i1 %159, label %160, label %128, !llvm.loop !167

160:                                              ; preds = %128
  store float %148, ptr %9, align 4, !tbaa !34
  store float %153, ptr %27, align 4, !tbaa !34
  store float %156, ptr %28, align 4, !tbaa !34
  %161 = fmul float %153, %153
  %162 = call float @llvm.fmuladd.f32(float %148, float %148, float %161)
  %163 = call float @llvm.fmuladd.f32(float %156, float %156, float %162)
  %164 = fcmp ogt float %163, 0x38AA95A5C0000000
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = call float @sqrtf(float noundef %163) #16
  %167 = fdiv float 1.000000e+00, %166
  %168 = load float, ptr %9, align 4, !tbaa !34
  %169 = fmul float %168, %167
  store float %169, ptr %9, align 4, !tbaa !34
  %170 = load float, ptr %27, align 4, !tbaa !34
  %171 = fmul float %167, %170
  store float %171, ptr %27, align 4, !tbaa !34
  %172 = load float, ptr %28, align 4, !tbaa !34
  %173 = fmul float %167, %172
  br label %175

174:                                              ; preds = %160
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %27, align 4, !tbaa !34
  br label %175

175:                                              ; preds = %165, %174
  %176 = phi float [ 0.000000e+00, %174 ], [ %173, %165 ]
  %177 = phi float [ 0.000000e+00, %174 ], [ %166, %165 ]
  %178 = fcmp oeq float %177, 0.000000e+00
  %179 = select i1 %178, float 1.000000e+00, float %176
  store float %179, ptr %28, align 4, !tbaa !34
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  %180 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  %181 = zext i32 %180 to i64
  br label %182

182:                                              ; preds = %175, %182
  %183 = phi i64 [ 0, %175 ], [ %189, %182 ]
  %184 = phi ptr [ %117, %175 ], [ %190, %182 ]
  %185 = getelementptr inbounds [2 x float], ptr %115, i64 %183
  %186 = load i32, ptr %184, align 4, !tbaa !56
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.MVert, ptr %3, i64 %187
  call void @mul_v2_m3v3(ptr noundef %185, ptr noundef nonnull %10, ptr noundef %188) #16
  %189 = add nuw nsw i64 %183, 1
  %190 = getelementptr inbounds %struct.MLoop, ptr %184, i64 1
  %191 = icmp eq i64 %189, %181
  br i1 %191, label %192, label %182, !llvm.loop !168

192:                                              ; preds = %182
  call void @BLI_polyfill_calc_arena(ptr noundef %115, i32 noundef %36, i32 noundef -1, ptr noundef %112, ptr noundef %109) #16
  %193 = icmp eq i32 %104, 0
  br i1 %193, label %246, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 2
  %196 = load i16, ptr %195, align 4, !tbaa !163
  %197 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 3
  %198 = load i8, ptr %197, align 2, !tbaa !77
  %199 = sext i32 %33 to i64
  %200 = zext i32 %104 to i64
  br label %201

201:                                              ; preds = %194, %201
  %202 = phi i64 [ 0, %194 ], [ %242, %201 ]
  %203 = phi i64 [ %199, %194 ], [ %241, %201 ]
  %204 = getelementptr inbounds [3 x i32], ptr %112, i64 %202
  %205 = getelementptr inbounds [4 x i32], ptr %24, i64 %203
  %206 = getelementptr inbounds i32, ptr %18, i64 %203
  store i32 %32, ptr %206, align 4, !tbaa !49
  %207 = getelementptr inbounds %struct.MFace, ptr %21, i64 %203
  %208 = load i32, ptr %204, align 4, !tbaa !49
  %209 = add i32 %208, %34
  %210 = getelementptr inbounds i32, ptr %204, i64 1
  %211 = load i32, ptr %210, align 4, !tbaa !49
  %212 = add i32 %211, %34
  %213 = getelementptr inbounds i32, ptr %204, i64 2
  %214 = load i32, ptr %213, align 4, !tbaa !49
  %215 = add i32 %214, %34
  %216 = call i32 @llvm.umax.i32(i32 %209, i32 %212)
  %217 = call i32 @llvm.umin.i32(i32 %209, i32 %212)
  %218 = call i32 @llvm.umin.i32(i32 %216, i32 %215)
  %219 = call i32 @llvm.umax.i32(i32 %216, i32 %215)
  %220 = icmp ult i32 %215, %217
  %221 = select i1 %220, i32 %217, i32 %218
  %222 = select i1 %220, i32 %218, i32 %217
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !56
  store i32 %225, ptr %207, align 4, !tbaa !71
  %226 = zext i32 %221 to i64
  %227 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !56
  %229 = getelementptr inbounds %struct.MFace, ptr %21, i64 %203, i32 1
  store i32 %228, ptr %229, align 4, !tbaa !72
  %230 = zext i32 %219 to i64
  %231 = getelementptr inbounds %struct.MLoop, ptr %14, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !56
  %233 = getelementptr inbounds %struct.MFace, ptr %21, i64 %203, i32 2
  store i32 %232, ptr %233, align 4, !tbaa !73
  %234 = getelementptr inbounds %struct.MFace, ptr %21, i64 %203, i32 3
  store i32 0, ptr %234, align 4, !tbaa !69
  store i32 %222, ptr %205, align 4, !tbaa !49
  %235 = getelementptr inbounds i32, ptr %205, i64 1
  store i32 %221, ptr %235, align 4, !tbaa !49
  %236 = getelementptr inbounds i32, ptr %205, i64 2
  store i32 %219, ptr %236, align 4, !tbaa !49
  %237 = getelementptr inbounds i32, ptr %205, i64 3
  store i32 0, ptr %237, align 4, !tbaa !49
  %238 = getelementptr inbounds %struct.MFace, ptr %21, i64 %203, i32 4
  store i16 %196, ptr %238, align 4, !tbaa !164
  %239 = getelementptr inbounds %struct.MFace, ptr %21, i64 %203, i32 6
  store i8 %198, ptr %239, align 1, !tbaa !165
  %240 = getelementptr inbounds %struct.MFace, ptr %21, i64 %203, i32 5
  store i8 0, ptr %240, align 2, !tbaa !166
  %241 = add nsw i64 %203, 1
  %242 = add nuw nsw i64 %202, 1
  %243 = icmp eq i64 %242, %200
  br i1 %243, label %244, label %201, !llvm.loop !169

244:                                              ; preds = %201
  %245 = trunc i64 %241 to i32
  br label %246

246:                                              ; preds = %244, %192
  %247 = phi i32 [ %33, %192 ], [ %245, %244 ]
  call void @BLI_memarena_clear(ptr noundef %109) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %248

248:                                              ; preds = %39, %246, %69, %29
  %249 = phi i32 [ %33, %29 ], [ %68, %39 ], [ %102, %69 ], [ %247, %246 ]
  %250 = phi ptr [ %31, %29 ], [ %31, %39 ], [ %31, %69 ], [ %109, %246 ]
  %251 = add nuw nsw i32 %32, 1
  %252 = getelementptr inbounds %struct.MPoly, ptr %30, i64 1
  %253 = icmp eq i32 %251, %6
  br i1 %253, label %254, label %29, !llvm.loop !170

254:                                              ; preds = %248, %8
  %255 = phi i32 [ 0, %8 ], [ %249, %248 ]
  %256 = phi ptr [ null, %8 ], [ %250, %248 ]
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  call void @BLI_memarena_free(ptr noundef nonnull %256) #16
  br label %259

259:                                              ; preds = %258, %254
  call void @CustomData_free(ptr noundef %0, i32 noundef %4) #16
  %260 = icmp eq i32 %12, %255
  br i1 %260, label %269, label %261

261:                                              ; preds = %259
  %262 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !43
  %263 = sext i32 %255 to i64
  %264 = mul nsw i64 %263, 20
  %265 = call ptr %262(ptr noundef %21, i64 noundef %264, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #16
  %266 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !43
  %267 = shl nsw i64 %263, 2
  %268 = call ptr %266(ptr noundef %18, i64 noundef %267, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #16
  br label %269

269:                                              ; preds = %261, %259
  %270 = phi ptr [ %268, %261 ], [ %18, %259 ]
  %271 = phi ptr [ %265, %261 ], [ %21, %259 ]
  %272 = call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef %271, i32 noundef %255) #16
  %273 = call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 7, i32 noundef 0, ptr noundef %270, i32 noundef %255) #16
  call void @CustomData_from_bmeshpoly(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %255) #16
  %274 = icmp eq i8 %7, 0
  br i1 %274, label %300, label %275

275:                                              ; preds = %269
  %276 = call zeroext i8 @CustomData_has_layer(ptr noundef %2, i32 noundef 8) #16
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %300, label %278

278:                                              ; preds = %275
  %279 = call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 8) #16
  %280 = call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %255) #16
  %281 = icmp sgt i32 %255, 0
  br i1 %281, label %282, label %300

282:                                              ; preds = %278
  %283 = zext nneg i32 %255 to i64
  br label %284

284:                                              ; preds = %282, %284
  %285 = phi i64 [ 0, %282 ], [ %298, %284 ]
  %286 = getelementptr inbounds [3 x float], ptr %280, i64 %285
  %287 = getelementptr inbounds i32, ptr %270, i64 %285
  %288 = load i32, ptr %287, align 4, !tbaa !49
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [3 x float], ptr %279, i64 %289
  %291 = load float, ptr %290, align 4, !tbaa !34
  store float %291, ptr %286, align 4, !tbaa !34
  %292 = getelementptr inbounds float, ptr %290, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !34
  %294 = getelementptr inbounds float, ptr %286, i64 1
  store float %293, ptr %294, align 4, !tbaa !34
  %295 = getelementptr inbounds float, ptr %290, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !34
  %297 = getelementptr inbounds float, ptr %286, i64 2
  store float %296, ptr %297, align 4, !tbaa !34
  %298 = add nuw nsw i64 %285, 1
  %299 = icmp eq i64 %298, %283
  br i1 %299, label %300, label %284, !llvm.loop !171

300:                                              ; preds = %284, %278, %275, %269
  call void @BKE_mesh_loops_to_tessdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %270, ptr noundef %24, i32 noundef %255)
  %301 = icmp sgt i32 %255, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %300, %310
  %303 = phi ptr [ %312, %310 ], [ %271, %300 ]
  %304 = phi i32 [ %311, %310 ], [ 0, %300 ]
  %305 = getelementptr inbounds %struct.MFace, ptr %303, i64 0, i32 5
  %306 = load i8, ptr %305, align 2, !tbaa !166
  %307 = icmp eq i8 %306, 1
  br i1 %307, label %308, label %310

308:                                              ; preds = %302
  %309 = call i32 @test_index_face(ptr noundef %303, ptr noundef %0, i32 noundef %304, i32 noundef 4) #16
  store i8 0, ptr %305, align 2, !tbaa !166
  br label %310

310:                                              ; preds = %302, %308
  %311 = add nuw nsw i32 %304, 1
  %312 = getelementptr inbounds %struct.MFace, ptr %303, i64 1
  %313 = icmp eq i32 %311, %255
  br i1 %313, label %314, label %302, !llvm.loop !172

314:                                              ; preds = %310, %300
  %315 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %315(ptr noundef %24) #16
  ret i32 %255
}

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_polyfill_calc_arena(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #4

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #4

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_mesh_mpoly_to_mface(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %8 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 15) #16
  %9 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 17) #16
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 32) #16
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 31) #16
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 8) #16
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %14 = sext i32 %5 to i64
  %15 = mul nsw i64 %14, 20
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @__func__.BKE_mesh_mpoly_to_mface) #16
  %17 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 25) #16
  %18 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 26) #16
  %19 = icmp sgt i32 %5, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %6, %49
  %21 = phi i32 [ %51, %49 ], [ 0, %6 ]
  %22 = phi i32 [ %50, %49 ], [ 0, %6 ]
  %23 = phi ptr [ %52, %49 ], [ %17, %6 ]
  %24 = getelementptr inbounds %struct.MPoly, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !55
  %26 = add i32 %25, -3
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load i32, ptr %23, align 4, !tbaa !45
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30
  %32 = getelementptr inbounds %struct.MPoly, ptr %23, i64 0, i32 2
  %33 = load i16, ptr %32, align 4, !tbaa !163
  %34 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 4
  store i16 %33, ptr %34, align 4, !tbaa !164
  %35 = getelementptr inbounds %struct.MPoly, ptr %23, i64 0, i32 3
  %36 = load i8, ptr %35, align 2, !tbaa !77
  %37 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 6
  store i8 %36, ptr %37, align 1, !tbaa !165
  store i32 %29, ptr %31, align 4, !tbaa !71
  %38 = add i32 %29, 1
  %39 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 1
  store i32 %38, ptr %39, align 4, !tbaa !72
  %40 = add i32 %29, 2
  %41 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 2
  store i32 %40, ptr %41, align 4, !tbaa !73
  %42 = icmp eq i32 %25, 4
  %43 = add i32 %29, 3
  %44 = select i1 %42, i32 %43, i32 0
  %45 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 3
  store i32 %44, ptr %45, align 4, !tbaa !69
  %46 = trunc i32 %25 to i8
  %47 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 5
  store i8 %46, ptr %47, align 2, !tbaa !166
  %48 = add nsw i32 %22, 1
  br label %49

49:                                               ; preds = %20, %28
  %50 = phi i32 [ %48, %28 ], [ %22, %20 ]
  %51 = add nuw nsw i32 %21, 1
  %52 = getelementptr inbounds %struct.MPoly, ptr %23, i64 1
  %53 = icmp eq i32 %51, %5
  br i1 %53, label %54, label %20, !llvm.loop !173

54:                                               ; preds = %49, %6
  %55 = phi i32 [ 0, %6 ], [ %50, %49 ]
  tail call void @CustomData_free(ptr noundef %0, i32 noundef %3) #16
  %56 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef %16, i32 noundef %55) #16
  tail call void @CustomData_from_bmeshpoly(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %55) #16
  %57 = icmp sgt i32 %5, 0
  br i1 %57, label %58, label %116

58:                                               ; preds = %54
  %59 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1
  %60 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 2
  %61 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3
  %62 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1
  %63 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 2
  %64 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3
  br label %65

65:                                               ; preds = %58, %111
  %66 = phi i32 [ 0, %58 ], [ %113, %111 ]
  %67 = phi i32 [ 0, %58 ], [ %112, %111 ]
  %68 = phi ptr [ %17, %58 ], [ %114, %111 ]
  %69 = getelementptr inbounds %struct.MPoly, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !55
  %71 = add i32 %70, -3
  %72 = icmp ult i32 %71, 2
  br i1 %72, label %73, label %111

73:                                               ; preds = %65
  %74 = sext i32 %67 to i64
  %75 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74
  %76 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74, i32 5
  %77 = load i8, ptr %76, align 2, !tbaa !166
  %78 = icmp eq i8 %77, 3
  %79 = load i32, ptr %75, align 4, !tbaa !71
  store i32 %79, ptr %7, align 16, !tbaa !49
  %80 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !72
  %82 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74, i32 2
  br i1 %78, label %83, label %85

83:                                               ; preds = %73
  store i32 %81, ptr %62, align 4, !tbaa !49
  %84 = load i32, ptr %82, align 4, !tbaa !73
  store i32 %84, ptr %63, align 8, !tbaa !49
  store i32 0, ptr %64, align 4, !tbaa !49
  br label %92

85:                                               ; preds = %73
  store i32 %81, ptr %59, align 4, !tbaa !49
  %86 = load i32, ptr %82, align 4, !tbaa !73
  store i32 %86, ptr %60, align 8, !tbaa !49
  %87 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !69
  store i32 %88, ptr %61, align 4, !tbaa !49
  %89 = zext i32 %79 to i64
  %90 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !56
  store i32 %91, ptr %75, align 4, !tbaa !71
  br label %92

92:                                               ; preds = %85, %83
  %93 = phi i32 [ %81, %85 ], [ %79, %83 ]
  %94 = phi ptr [ %80, %85 ], [ %75, %83 ]
  %95 = phi i32 [ %86, %85 ], [ %81, %83 ]
  %96 = phi ptr [ %82, %85 ], [ %80, %83 ]
  %97 = phi i32 [ %88, %85 ], [ %84, %83 ]
  %98 = phi ptr [ %87, %85 ], [ %82, %83 ]
  %99 = phi i32 [ 4, %85 ], [ 3, %83 ]
  %100 = zext i32 %93 to i64
  %101 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !56
  store i32 %102, ptr %94, align 4, !tbaa !49
  %103 = zext i32 %95 to i64
  %104 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !56
  store i32 %105, ptr %96, align 4, !tbaa !49
  %106 = zext i32 %97 to i64
  %107 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !56
  store i32 %108, ptr %98, align 4, !tbaa !49
  call void @BKE_mesh_loops_to_mface_corners(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %67, i32 noundef %66, i32 noundef %99, i32 noundef %8, i32 noundef %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i8 noundef zeroext %12)
  %109 = tail call i32 @test_index_face(ptr noundef nonnull %75, ptr noundef %0, i32 noundef %67, i32 noundef %99) #16
  store i8 0, ptr %76, align 2, !tbaa !166
  %110 = add nsw i32 %67, 1
  br label %111

111:                                              ; preds = %65, %92
  %112 = phi i32 [ %110, %92 ], [ %67, %65 ]
  %113 = add nuw nsw i32 %66, 1
  %114 = getelementptr inbounds %struct.MPoly, ptr %68, i64 1
  %115 = icmp eq i32 %113, %5
  br i1 %115, label %116, label %65, !llvm.loop !174

116:                                              ; preds = %111, %54
  %117 = phi i32 [ 0, %54 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !175
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !176
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 4, !tbaa !177
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  tail call void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %18)
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, ptr nocapture noundef writeonly %13) local_unnamed_addr #0 {
  tail call void @CustomData_free(ptr noundef %2, i32 noundef %6) #16
  tail call void @CustomData_free(ptr noundef %3, i32 noundef %7) #16
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %16 = sext i32 %5 to i64
  %17 = mul nsw i64 %16, 12
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.8) #16
  %19 = tail call ptr @CustomData_add_layer(ptr noundef %3, i32 noundef 25, i32 noundef 0, ptr noundef %18, i32 noundef %5) #16
  %20 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 5) #16
  %21 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 6) #16
  %22 = icmp sgt i32 %5, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %14, %23
  %24 = phi ptr [ %33, %23 ], [ %9, %14 ]
  %25 = phi i32 [ %31, %23 ], [ 0, %14 ]
  %26 = phi i32 [ %32, %23 ], [ 0, %14 ]
  %27 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 3, i32 4
  %31 = add nuw nsw i32 %30, %25
  %32 = add nuw nsw i32 %26, 1
  %33 = getelementptr inbounds %struct.MFace, ptr %24, i64 1
  %34 = icmp eq i32 %32, %5
  br i1 %34, label %35, label %23, !llvm.loop !180

35:                                               ; preds = %23, %14
  %36 = phi i32 [ 0, %14 ], [ %31, %23 ]
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %38 = zext nneg i32 %36 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.9) #16
  %41 = tail call ptr @CustomData_add_layer(ptr noundef %2, i32 noundef 26, i32 noundef 0, ptr noundef %40, i32 noundef %36) #16
  tail call void @CustomData_to_bmeshpoly(ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %36, i32 noundef %5) #16
  %42 = icmp eq ptr %0, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  tail call void @CustomData_external_read(ptr noundef %1, ptr noundef nonnull %0, i64 noundef 524288, i32 noundef %5) #16
  br label %44

44:                                               ; preds = %43, %35
  %45 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.BKE_mesh_convert_mfaces_to_mpolys_ex, i32 noundef %4) #16
  %46 = icmp sgt i32 %4, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = zext nneg i32 %4 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ 0, %47 ], [ %59, %49 ]
  %51 = phi ptr [ %8, %47 ], [ %60, %49 ]
  %52 = load i32, ptr %51, align 4, !tbaa !82
  %53 = getelementptr inbounds %struct.MEdge, ptr %51, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !83
  %55 = inttoptr i64 %50 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %45, i32 noundef %52, i32 noundef %54, ptr noundef %55) #16
  %56 = getelementptr inbounds %struct.MEdge, ptr %51, i64 0, i32 4
  %57 = load i16, ptr %56, align 2, !tbaa !78
  %58 = and i16 %57, -9
  store i16 %58, ptr %56, align 2, !tbaa !78
  %59 = add nuw nsw i64 %50, 1
  %60 = getelementptr inbounds %struct.MEdge, ptr %51, i64 1
  %61 = icmp eq i64 %59, %48
  br i1 %61, label %62, label %49, !llvm.loop !181

62:                                               ; preds = %49, %44
  %63 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 7) #16
  %64 = icmp sgt i32 %5, 0
  br i1 %64, label %65, label %342

65:                                               ; preds = %62
  %66 = icmp sgt i32 %20, 0
  %67 = icmp sgt i32 %21, 0
  %68 = icmp ne ptr %0, null
  %69 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 6
  %70 = zext nneg i32 %5 to i64
  br label %71

71:                                               ; preds = %65, %336
  %72 = phi i64 [ 0, %65 ], [ %338, %336 ]
  %73 = phi ptr [ %63, %65 ], [ %337, %336 ]
  %74 = phi ptr [ %9, %65 ], [ %339, %336 ]
  %75 = phi i32 [ 0, %65 ], [ %126, %336 ]
  %76 = phi ptr [ %40, %65 ], [ %125, %336 ]
  %77 = phi ptr [ %18, %65 ], [ %340, %336 ]
  store i32 %75, ptr %77, align 4, !tbaa !45
  %78 = getelementptr inbounds %struct.MFace, ptr %74, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !69
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 3, i32 4
  %82 = getelementptr inbounds %struct.MPoly, ptr %77, i64 0, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !55
  %83 = getelementptr inbounds %struct.MFace, ptr %74, i64 0, i32 4
  %84 = load i16, ptr %83, align 4, !tbaa !164
  %85 = getelementptr inbounds %struct.MPoly, ptr %77, i64 0, i32 2
  store i16 %84, ptr %85, align 4, !tbaa !163
  %86 = getelementptr inbounds %struct.MFace, ptr %74, i64 0, i32 6
  %87 = load i8, ptr %86, align 1, !tbaa !165
  %88 = getelementptr inbounds %struct.MPoly, ptr %77, i64 0, i32 3
  store i8 %87, ptr %88, align 2, !tbaa !77
  %89 = load i32, ptr %74, align 4, !tbaa !71
  store i32 %89, ptr %76, align 4, !tbaa !56
  %90 = getelementptr inbounds %struct.MFace, ptr %74, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !72
  %92 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %89, i32 noundef %91) #16
  %93 = ptrtoint ptr %92 to i64
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.MLoop, ptr %76, i64 0, i32 1
  store i32 %94, ptr %95, align 4, !tbaa !76
  %96 = getelementptr inbounds %struct.MLoop, ptr %76, i64 1
  %97 = load i32, ptr %90, align 4, !tbaa !72
  store i32 %97, ptr %96, align 4, !tbaa !56
  %98 = getelementptr inbounds %struct.MFace, ptr %74, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !73
  %100 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %97, i32 noundef %99) #16
  %101 = ptrtoint ptr %100 to i64
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.MLoop, ptr %76, i64 1, i32 1
  store i32 %102, ptr %103, align 4, !tbaa !76
  %104 = getelementptr inbounds %struct.MLoop, ptr %76, i64 2
  %105 = load i32, ptr %78, align 4, !tbaa !69
  %106 = icmp eq i32 %105, 0
  %107 = load i32, ptr %98, align 4, !tbaa !73
  store i32 %107, ptr %104, align 4, !tbaa !56
  br i1 %106, label %115, label %108

108:                                              ; preds = %71
  %109 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %107, i32 noundef %105) #16
  %110 = ptrtoint ptr %109 to i64
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.MLoop, ptr %76, i64 2, i32 1
  store i32 %111, ptr %112, align 4, !tbaa !76
  %113 = getelementptr inbounds %struct.MLoop, ptr %76, i64 3
  %114 = load i32, ptr %78, align 4, !tbaa !69
  store i32 %114, ptr %113, align 4, !tbaa !56
  br label %115

115:                                              ; preds = %71, %108
  %116 = phi i32 [ %114, %108 ], [ %107, %71 ]
  %117 = phi i64 [ 3, %108 ], [ 2, %71 ]
  %118 = phi i64 [ 4, %108 ], [ 3, %71 ]
  %119 = phi i32 [ 4, %108 ], [ 3, %71 ]
  %120 = load i32, ptr %74, align 4, !tbaa !71
  %121 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %116, i32 noundef %120) #16
  %122 = ptrtoint ptr %121 to i64
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct.MLoop, ptr %76, i64 %117, i32 1
  store i32 %123, ptr %124, align 4, !tbaa !76
  %125 = getelementptr inbounds %struct.MLoop, ptr %76, i64 %118
  %126 = add nuw nsw i32 %75, %119
  %127 = load i32, ptr %77, align 4, !tbaa !45
  br i1 %66, label %128, label %132

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.MFace, ptr %9, i64 %72, i32 3
  %130 = trunc i64 %72 to i32
  %131 = trunc i64 %72 to i32
  br label %136

132:                                              ; preds = %180, %115
  br i1 %67, label %133, label %239

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.MFace, ptr %9, i64 %72, i32 3
  %135 = trunc i64 %72 to i32
  br label %183

136:                                              ; preds = %128, %180
  %137 = phi i32 [ 0, %128 ], [ %181, %180 ]
  %138 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 5, i32 noundef %130, i32 noundef %137) #16
  %139 = tail call ptr @CustomData_get_n(ptr noundef %3, i32 noundef 15, i32 noundef %131, i32 noundef %137) #16
  %140 = getelementptr inbounds %struct.MTFace, ptr %138, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !124
  store ptr %141, ptr %139, align 8, !tbaa !122
  %142 = getelementptr inbounds %struct.MTFace, ptr %138, i64 0, i32 2
  %143 = load i8, ptr %142, align 8, !tbaa !127
  %144 = getelementptr inbounds %struct.MTexPoly, ptr %139, i64 0, i32 1
  store i8 %143, ptr %144, align 8, !tbaa !126
  %145 = getelementptr inbounds %struct.MTFace, ptr %138, i64 0, i32 3
  %146 = load i8, ptr %145, align 1, !tbaa !129
  %147 = getelementptr inbounds %struct.MTexPoly, ptr %139, i64 0, i32 2
  store i8 %146, ptr %147, align 1, !tbaa !128
  %148 = getelementptr inbounds %struct.MTFace, ptr %138, i64 0, i32 4
  %149 = load i16, ptr %148, align 2, !tbaa !131
  %150 = getelementptr inbounds %struct.MTexPoly, ptr %139, i64 0, i32 3
  store i16 %149, ptr %150, align 2, !tbaa !130
  %151 = getelementptr inbounds %struct.MTFace, ptr %138, i64 0, i32 5
  %152 = load i16, ptr %151, align 4, !tbaa !133
  %153 = getelementptr inbounds %struct.MTexPoly, ptr %139, i64 0, i32 4
  store i16 %152, ptr %153, align 4, !tbaa !132
  %154 = tail call ptr @CustomData_get_n(ptr noundef %2, i32 noundef 16, i32 noundef %127, i32 noundef %137) #16
  %155 = load float, ptr %138, align 4, !tbaa !34
  store float %155, ptr %154, align 4, !tbaa !34
  %156 = getelementptr inbounds float, ptr %138, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !34
  %158 = getelementptr inbounds float, ptr %154, i64 1
  store float %157, ptr %158, align 4, !tbaa !34
  %159 = getelementptr inbounds %struct.MLoopUV, ptr %154, i64 1
  %160 = getelementptr inbounds [4 x [2 x float]], ptr %138, i64 0, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !34
  store float %161, ptr %159, align 4, !tbaa !34
  %162 = getelementptr inbounds [4 x [2 x float]], ptr %138, i64 0, i64 1, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !34
  %164 = getelementptr inbounds %struct.MLoopUV, ptr %154, i64 1, i32 0, i64 1
  store float %163, ptr %164, align 4, !tbaa !34
  %165 = getelementptr inbounds %struct.MLoopUV, ptr %154, i64 2
  %166 = getelementptr inbounds [4 x [2 x float]], ptr %138, i64 0, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !34
  store float %167, ptr %165, align 4, !tbaa !34
  %168 = getelementptr inbounds [4 x [2 x float]], ptr %138, i64 0, i64 2, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !34
  %170 = getelementptr inbounds %struct.MLoopUV, ptr %154, i64 2, i32 0, i64 1
  store float %169, ptr %170, align 4, !tbaa !34
  %171 = load i32, ptr %129, align 4, !tbaa !69
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %136
  %174 = getelementptr inbounds %struct.MLoopUV, ptr %154, i64 3
  %175 = getelementptr inbounds [4 x [2 x float]], ptr %138, i64 0, i64 3
  %176 = load float, ptr %175, align 4, !tbaa !34
  store float %176, ptr %174, align 4, !tbaa !34
  %177 = getelementptr inbounds [4 x [2 x float]], ptr %138, i64 0, i64 3, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !34
  %179 = getelementptr inbounds %struct.MLoopUV, ptr %154, i64 3, i32 0, i64 1
  store float %178, ptr %179, align 4, !tbaa !34
  br label %180

180:                                              ; preds = %173, %136
  %181 = add nuw nsw i32 %137, 1
  %182 = icmp eq i32 %181, %20
  br i1 %182, label %132, label %136, !llvm.loop !182

183:                                              ; preds = %133, %236
  %184 = phi i32 [ 0, %133 ], [ %237, %236 ]
  %185 = tail call ptr @CustomData_get_n(ptr noundef %2, i32 noundef 17, i32 noundef %127, i32 noundef %184) #16
  %186 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 6, i32 noundef %135, i32 noundef %184) #16
  %187 = getelementptr inbounds %struct.MCol, ptr %186, i64 0, i32 3
  %188 = load i8, ptr %187, align 1, !tbaa !138
  store i8 %188, ptr %185, align 1, !tbaa !136
  %189 = getelementptr inbounds %struct.MCol, ptr %186, i64 0, i32 2
  %190 = load i8, ptr %189, align 1, !tbaa !141
  %191 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 0, i32 1
  store i8 %190, ptr %191, align 1, !tbaa !140
  %192 = getelementptr inbounds %struct.MCol, ptr %186, i64 0, i32 1
  %193 = load i8, ptr %192, align 1, !tbaa !143
  %194 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 0, i32 2
  store i8 %193, ptr %194, align 1, !tbaa !142
  %195 = load i8, ptr %186, align 1, !tbaa !145
  %196 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 0, i32 3
  store i8 %195, ptr %196, align 1, !tbaa !144
  %197 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 1
  %198 = getelementptr inbounds %struct.MCol, ptr %186, i64 1
  %199 = getelementptr inbounds %struct.MCol, ptr %186, i64 1, i32 3
  %200 = load i8, ptr %199, align 1, !tbaa !138
  store i8 %200, ptr %197, align 1, !tbaa !136
  %201 = getelementptr inbounds %struct.MCol, ptr %186, i64 1, i32 2
  %202 = load i8, ptr %201, align 1, !tbaa !141
  %203 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 1, i32 1
  store i8 %202, ptr %203, align 1, !tbaa !140
  %204 = getelementptr inbounds %struct.MCol, ptr %186, i64 1, i32 1
  %205 = load i8, ptr %204, align 1, !tbaa !143
  %206 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 1, i32 2
  store i8 %205, ptr %206, align 1, !tbaa !142
  %207 = load i8, ptr %198, align 1, !tbaa !145
  %208 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 1, i32 3
  store i8 %207, ptr %208, align 1, !tbaa !144
  %209 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 2
  %210 = getelementptr inbounds %struct.MCol, ptr %186, i64 2
  %211 = getelementptr inbounds %struct.MCol, ptr %186, i64 2, i32 3
  %212 = load i8, ptr %211, align 1, !tbaa !138
  store i8 %212, ptr %209, align 1, !tbaa !136
  %213 = getelementptr inbounds %struct.MCol, ptr %186, i64 2, i32 2
  %214 = load i8, ptr %213, align 1, !tbaa !141
  %215 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 2, i32 1
  store i8 %214, ptr %215, align 1, !tbaa !140
  %216 = getelementptr inbounds %struct.MCol, ptr %186, i64 2, i32 1
  %217 = load i8, ptr %216, align 1, !tbaa !143
  %218 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 2, i32 2
  store i8 %217, ptr %218, align 1, !tbaa !142
  %219 = load i8, ptr %210, align 1, !tbaa !145
  %220 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 2, i32 3
  store i8 %219, ptr %220, align 1, !tbaa !144
  %221 = load i32, ptr %134, align 4, !tbaa !69
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %183
  %224 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 3
  %225 = getelementptr inbounds %struct.MCol, ptr %186, i64 3
  %226 = getelementptr inbounds %struct.MCol, ptr %186, i64 3, i32 3
  %227 = load i8, ptr %226, align 1, !tbaa !138
  store i8 %227, ptr %224, align 1, !tbaa !136
  %228 = getelementptr inbounds %struct.MCol, ptr %186, i64 3, i32 2
  %229 = load i8, ptr %228, align 1, !tbaa !141
  %230 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 3, i32 1
  store i8 %229, ptr %230, align 1, !tbaa !140
  %231 = getelementptr inbounds %struct.MCol, ptr %186, i64 3, i32 1
  %232 = load i8, ptr %231, align 1, !tbaa !143
  %233 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 3, i32 2
  store i8 %232, ptr %233, align 1, !tbaa !142
  %234 = load i8, ptr %225, align 1, !tbaa !145
  %235 = getelementptr inbounds %struct.MLoopCol, ptr %185, i64 3, i32 3
  store i8 %234, ptr %235, align 1, !tbaa !144
  br label %236

236:                                              ; preds = %223, %183
  %237 = add nuw nsw i32 %184, 1
  %238 = icmp eq i32 %237, %21
  br i1 %238, label %239, label %183, !llvm.loop !183

239:                                              ; preds = %236, %132
  %240 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 40) #16
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %271, label %242

242:                                              ; preds = %239
  %243 = tail call ptr @CustomData_get(ptr noundef %2, i32 noundef %127, i32 noundef 8) #16
  %244 = trunc i64 %72 to i32
  %245 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %244, i32 noundef 40) #16
  %246 = getelementptr inbounds %struct.MFace, ptr %9, i64 %72, i32 3
  %247 = load i32, ptr %246, align 4, !tbaa !69
  %248 = icmp eq i32 %247, 0
  %249 = select i1 %248, i32 3, i32 4
  br label %250

250:                                              ; preds = %242, %250
  %251 = phi i32 [ 0, %242 ], [ %267, %250 ]
  %252 = phi ptr [ %243, %242 ], [ %268, %250 ]
  %253 = phi ptr [ %245, %242 ], [ %269, %250 ]
  %254 = load i16, ptr %253, align 2, !tbaa !38
  %255 = sitofp i16 %254 to float
  %256 = fmul float %255, 0x3F00002000000000
  store float %256, ptr %252, align 4, !tbaa !34
  %257 = getelementptr inbounds i16, ptr %253, i64 1
  %258 = load i16, ptr %257, align 2, !tbaa !38
  %259 = sitofp i16 %258 to float
  %260 = fmul float %259, 0x3F00002000000000
  %261 = getelementptr inbounds float, ptr %252, i64 1
  store float %260, ptr %261, align 4, !tbaa !34
  %262 = getelementptr inbounds i16, ptr %253, i64 2
  %263 = load i16, ptr %262, align 2, !tbaa !38
  %264 = sitofp i16 %263 to float
  %265 = fmul float %264, 0x3F00002000000000
  %266 = getelementptr inbounds float, ptr %252, i64 2
  store float %265, ptr %266, align 4, !tbaa !34
  %267 = add nuw nsw i32 %251, 1
  %268 = getelementptr inbounds [3 x float], ptr %252, i64 1
  %269 = getelementptr inbounds [3 x i16], ptr %253, i64 1
  %270 = icmp eq i32 %267, %249
  br i1 %270, label %271, label %250, !llvm.loop !184

271:                                              ; preds = %250, %239
  %272 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 19) #16
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %331, label %274

274:                                              ; preds = %271
  %275 = tail call ptr @CustomData_get(ptr noundef %2, i32 noundef %127, i32 noundef 19) #16
  %276 = trunc i64 %72 to i32
  %277 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %276, i32 noundef 19) #16
  %278 = getelementptr inbounds %struct.MDisps, ptr %277, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !185
  %280 = getelementptr inbounds %struct.MFace, ptr %9, i64 %72, i32 3
  %281 = load i32, ptr %280, align 4, !tbaa !69
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %282, i32 3, i32 4
  %284 = tail call zeroext i8 @CustomData_external_test(ptr noundef %1, i32 noundef 19) #16
  %285 = icmp ne i8 %284, 0
  %286 = and i1 %68, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %274
  %288 = load ptr, ptr %69, align 8, !tbaa !187
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  tail call void @CustomData_external_add(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %36, ptr noundef nonnull %288) #16
  br label %291

291:                                              ; preds = %290, %287, %274
  %292 = tail call i32 @multires_mdisp_corners(ptr noundef %277) #16
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %331, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %277, align 8, !tbaa !188
  %296 = sdiv i32 %295, %292
  %297 = sitofp i32 %296 to float
  %298 = tail call float @sqrtf(float noundef %297) #16
  %299 = fptosi float %298 to i32
  %300 = mul nsw i32 %299, %299
  %301 = zext nneg i32 %300 to i64
  %302 = mul nuw nsw i64 %301, 12
  %303 = sitofp i32 %299 to float
  %304 = fadd float %303, -1.000000e+00
  br label %305

305:                                              ; preds = %294, %326
  %306 = phi i32 [ 0, %294 ], [ %327, %326 ]
  %307 = phi ptr [ %279, %294 ], [ %328, %326 ]
  %308 = phi ptr [ %275, %294 ], [ %329, %326 ]
  store i32 %300, ptr %308, align 8, !tbaa !188
  %309 = tail call float @logf(float noundef %304) #16
  %310 = fdiv float %309, 0x3FE62E4300000000
  %311 = fptosi float %310 to i32
  %312 = add nsw i32 %311, 1
  %313 = getelementptr inbounds %struct.MDisps, ptr %308, i64 0, i32 1
  store i32 %312, ptr %313, align 4, !tbaa !189
  %314 = getelementptr inbounds %struct.MDisps, ptr %308, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !185
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %305
  %318 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %318(ptr noundef nonnull %315) #16
  br label %319

319:                                              ; preds = %317, %305
  %320 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %321 = tail call ptr %320(i64 noundef %302, ptr noundef nonnull @.str.10) #16
  store ptr %321, ptr %314, align 8, !tbaa !185
  %322 = load ptr, ptr %278, align 8, !tbaa !185
  %323 = icmp eq ptr %322, null
  br i1 %323, label %325, label %324

324:                                              ; preds = %319
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %321, ptr align 4 %307, i64 %302, i1 false)
  br label %326

325:                                              ; preds = %319
  tail call void @llvm.memset.p0.i64(ptr align 4 %321, i8 0, i64 %302, i1 false)
  br label %326

326:                                              ; preds = %325, %324
  %327 = add nuw nsw i32 %306, 1
  %328 = getelementptr inbounds [3 x float], ptr %307, i64 %301
  %329 = getelementptr inbounds %struct.MDisps, ptr %308, i64 1
  %330 = icmp eq i32 %327, %283
  br i1 %330, label %331, label %305, !llvm.loop !190

331:                                              ; preds = %326, %271, %291
  %332 = icmp eq ptr %73, null
  br i1 %332, label %336, label %333

333:                                              ; preds = %331
  %334 = trunc i64 %72 to i32
  store i32 %334, ptr %73, align 4, !tbaa !49
  %335 = getelementptr inbounds i32, ptr %73, i64 1
  br label %336

336:                                              ; preds = %331, %333
  %337 = phi ptr [ %335, %333 ], [ null, %331 ]
  %338 = add nuw nsw i64 %72, 1
  %339 = getelementptr inbounds %struct.MFace, ptr %74, i64 1
  %340 = getelementptr inbounds %struct.MPoly, ptr %77, i64 1
  %341 = icmp eq i64 %338, %70
  br i1 %341, label %342, label %71, !llvm.loop !191

342:                                              ; preds = %336, %62
  tail call void @BLI_edgehash_free(ptr noundef %45, ptr noundef null) #16
  store i32 %5, ptr %11, align 4, !tbaa !49
  store i32 %36, ptr %10, align 4, !tbaa !49
  store ptr %18, ptr %13, align 8, !tbaa !43
  store ptr %40, ptr %12, align 8, !tbaa !43
  ret void
}

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_do_versions_convert_mfaces_to_mpolys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !175
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !176
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 4, !tbaa !177
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  tail call void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %18)
  tail call void @CustomData_bmesh_do_versions_update_active_layers(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #16
  ret void
}

declare void @CustomData_bmesh_do_versions_update_active_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @CustomData_to_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @CustomData_external_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_verts_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #12 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = zext nneg i32 %3 to i64
  br label %14

10:                                               ; preds = %39, %6
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %10
  %13 = zext nneg i32 %5 to i64
  br label %42

14:                                               ; preds = %8, %39
  %15 = phi i64 [ 0, %8 ], [ %40, %39 ]
  %16 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !82
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MVert, ptr %0, i64 %18, i32 2
  %20 = load i8, ptr %19, align 2, !tbaa !192
  %21 = and i8 %20, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !83
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %0, i64 %26, i32 2
  %28 = load i8, ptr %27, align 2, !tbaa !192
  %29 = and i8 %28, 16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23, %14
  %32 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !78
  %34 = or i16 %33, 16
  store i16 %34, ptr %32, align 2, !tbaa !78
  br label %39

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !78
  %38 = and i16 %37, -17
  store i16 %38, ptr %36, align 2, !tbaa !78
  br label %39

39:                                               ; preds = %35, %31
  %40 = add nuw nsw i64 %15, 1
  %41 = icmp eq i64 %40, %9
  br i1 %41, label %10, label %14, !llvm.loop !194

42:                                               ; preds = %12, %71
  %43 = phi i64 [ 0, %12 ], [ %72, %71 ]
  %44 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %43, i32 3
  %45 = load i8, ptr %44, align 2, !tbaa !77
  %46 = and i8 %45, -17
  store i8 %46, ptr %44, align 2, !tbaa !77
  %47 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %43, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !55
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %43
  %52 = load i32, ptr %51, align 4, !tbaa !45
  %53 = sext i32 %52 to i64
  %54 = zext nneg i32 %48 to i64
  %55 = getelementptr %struct.MLoop, ptr %1, i64 %53
  br label %56

56:                                               ; preds = %50, %68
  %57 = phi i64 [ 0, %50 ], [ %69, %68 ]
  %58 = getelementptr %struct.MLoop, ptr %55, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !56
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MVert, ptr %0, i64 %60, i32 2
  %62 = load i8, ptr %61, align 2, !tbaa !192
  %63 = and i8 %62, 16
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load i8, ptr %44, align 2, !tbaa !77
  %67 = or i8 %66, 16
  store i8 %67, ptr %44, align 2, !tbaa !77
  br label %68

68:                                               ; preds = %56, %65
  %69 = add nuw nsw i64 %57, 1
  %70 = icmp eq i64 %69, %54
  br i1 %70, label %71, label %56, !llvm.loop !195

71:                                               ; preds = %68, %42
  %72 = add nuw nsw i64 %43, 1
  %73 = icmp eq i64 %72, %13
  br i1 %73, label %74, label %42, !llvm.loop !196

74:                                               ; preds = %71, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %9 = load i32, ptr %8, align 4, !tbaa !175
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = icmp sgt i32 %9, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = zext nneg i32 %9 to i64
  br label %21

17:                                               ; preds = %46, %1
  %18 = icmp sgt i32 %13, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %17
  %20 = zext nneg i32 %13 to i64
  br label %49

21:                                               ; preds = %46, %15
  %22 = phi i64 [ 0, %15 ], [ %47, %46 ]
  %23 = getelementptr inbounds %struct.MEdge, ptr %7, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !82
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %3, i64 %25, i32 2
  %27 = load i8, ptr %26, align 2, !tbaa !192
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.MEdge, ptr %7, i64 %22, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !83
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %3, i64 %33, i32 2
  %35 = load i8, ptr %34, align 2, !tbaa !192
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30, %21
  %39 = getelementptr inbounds %struct.MEdge, ptr %7, i64 %22, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !78
  %41 = or i16 %40, 16
  store i16 %41, ptr %39, align 2, !tbaa !78
  br label %46

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.MEdge, ptr %7, i64 %22, i32 4
  %44 = load i16, ptr %43, align 2, !tbaa !78
  %45 = and i16 %44, -17
  store i16 %45, ptr %43, align 2, !tbaa !78
  br label %46

46:                                               ; preds = %42, %38
  %47 = add nuw nsw i64 %22, 1
  %48 = icmp eq i64 %47, %16
  br i1 %48, label %17, label %21, !llvm.loop !194

49:                                               ; preds = %78, %19
  %50 = phi i64 [ 0, %19 ], [ %79, %78 ]
  %51 = getelementptr inbounds %struct.MPoly, ptr %11, i64 %50, i32 3
  %52 = load i8, ptr %51, align 2, !tbaa !77
  %53 = and i8 %52, -17
  store i8 %53, ptr %51, align 2, !tbaa !77
  %54 = getelementptr inbounds %struct.MPoly, ptr %11, i64 %50, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !55
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.MPoly, ptr %11, i64 %50
  %59 = load i32, ptr %58, align 4, !tbaa !45
  %60 = sext i32 %59 to i64
  %61 = zext nneg i32 %55 to i64
  %62 = getelementptr %struct.MLoop, ptr %5, i64 %60
  br label %63

63:                                               ; preds = %75, %57
  %64 = phi i64 [ 0, %57 ], [ %76, %75 ]
  %65 = getelementptr %struct.MLoop, ptr %62, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !56
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %3, i64 %67, i32 2
  %69 = load i8, ptr %68, align 2, !tbaa !192
  %70 = and i8 %69, 16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load i8, ptr %51, align 2, !tbaa !77
  %74 = or i8 %73, 16
  store i8 %74, ptr %51, align 2, !tbaa !77
  br label %75

75:                                               ; preds = %72, %63
  %76 = add nuw nsw i64 %64, 1
  %77 = icmp eq i64 %76, %61
  br i1 %77, label %78, label %63, !llvm.loop !195

78:                                               ; preds = %75, %49
  %79 = add nuw nsw i64 %50, 1
  %80 = icmp eq i64 %79, %20
  br i1 %80, label %81, label %49, !llvm.loop !196

81:                                               ; preds = %78, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_polys_ex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #10 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %6, %41
  %9 = phi i32 [ %11, %41 ], [ %5, %6 ]
  %10 = phi ptr [ %42, %41 ], [ %4, %6 ]
  %11 = add nsw i32 %9, -1
  %12 = getelementptr inbounds %struct.MPoly, ptr %10, i64 0, i32 3
  %13 = load i8, ptr %12, align 2, !tbaa !77
  %14 = and i8 %13, 16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.MPoly, ptr %10, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !55
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %10, align 4, !tbaa !45
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i32 [ %27, %24 ], [ %18, %20 ]
  %26 = phi ptr [ %39, %24 ], [ %23, %20 ]
  %27 = add nsw i32 %25, -1
  %28 = load i32, ptr %26, align 4, !tbaa !56
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %0, i64 %29, i32 2
  %31 = load i8, ptr %30, align 2, !tbaa !192
  %32 = or i8 %31, 16
  store i8 %32, ptr %30, align 2, !tbaa !192
  %33 = getelementptr inbounds %struct.MLoop, ptr %26, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !76
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %35, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !78
  %38 = or i16 %37, 16
  store i16 %38, ptr %36, align 2, !tbaa !78
  %39 = getelementptr inbounds %struct.MLoop, ptr %26, i64 1
  %40 = icmp eq i32 %27, 0
  br i1 %40, label %41, label %24, !llvm.loop !197

41:                                               ; preds = %24, %16, %8
  %42 = getelementptr inbounds %struct.MPoly, ptr %10, i64 1
  %43 = icmp eq i32 %11, 0
  br i1 %43, label %44, label %8, !llvm.loop !198

44:                                               ; preds = %41, %77
  %45 = phi i32 [ %47, %77 ], [ %5, %41 ]
  %46 = phi ptr [ %78, %77 ], [ %4, %41 ]
  %47 = add nsw i32 %45, -1
  %48 = getelementptr inbounds %struct.MPoly, ptr %46, i64 0, i32 3
  %49 = load i8, ptr %48, align 2, !tbaa !77
  %50 = and i8 %49, 16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.MPoly, ptr %46, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !55
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %46, align 4, !tbaa !45
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %58
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi i32 [ %63, %60 ], [ %54, %56 ]
  %62 = phi ptr [ %75, %60 ], [ %59, %56 ]
  %63 = add nsw i32 %61, -1
  %64 = load i32, ptr %62, align 4, !tbaa !56
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MVert, ptr %0, i64 %65, i32 2
  %67 = load i8, ptr %66, align 2, !tbaa !192
  %68 = and i8 %67, -17
  store i8 %68, ptr %66, align 2, !tbaa !192
  %69 = getelementptr inbounds %struct.MLoop, ptr %62, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !76
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %71, i32 4
  %73 = load i16, ptr %72, align 2, !tbaa !78
  %74 = and i16 %73, 239
  store i16 %74, ptr %72, align 2, !tbaa !78
  %75 = getelementptr inbounds %struct.MLoop, ptr %62, i64 1
  %76 = icmp eq i32 %63, 0
  br i1 %76, label %77, label %60, !llvm.loop !199

77:                                               ; preds = %60, %52, %44
  %78 = getelementptr inbounds %struct.MPoly, ptr %46, i64 1
  %79 = icmp eq i32 %47, 0
  br i1 %79, label %80, label %44, !llvm.loop !200

80:                                               ; preds = %77, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_polys(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %85, label %13

13:                                               ; preds = %1, %46
  %14 = phi i32 [ %16, %46 ], [ %11, %1 ]
  %15 = phi ptr [ %47, %46 ], [ %9, %1 ]
  %16 = add nsw i32 %14, -1
  %17 = getelementptr inbounds %struct.MPoly, ptr %15, i64 0, i32 3
  %18 = load i8, ptr %17, align 2, !tbaa !77
  %19 = and i8 %18, 16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.MPoly, ptr %15, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %15, align 4, !tbaa !45
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MLoop, ptr %5, i64 %27
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i32 [ %32, %29 ], [ %23, %25 ]
  %31 = phi ptr [ %44, %29 ], [ %28, %25 ]
  %32 = add nsw i32 %30, -1
  %33 = load i32, ptr %31, align 4, !tbaa !56
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MVert, ptr %3, i64 %34, i32 2
  %36 = load i8, ptr %35, align 2, !tbaa !192
  %37 = or i8 %36, 16
  store i8 %37, ptr %35, align 2, !tbaa !192
  %38 = getelementptr inbounds %struct.MLoop, ptr %31, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !76
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.MEdge, ptr %7, i64 %40, i32 4
  %42 = load i16, ptr %41, align 2, !tbaa !78
  %43 = or i16 %42, 16
  store i16 %43, ptr %41, align 2, !tbaa !78
  %44 = getelementptr inbounds %struct.MLoop, ptr %31, i64 1
  %45 = icmp eq i32 %32, 0
  br i1 %45, label %46, label %29, !llvm.loop !197

46:                                               ; preds = %29, %21, %13
  %47 = getelementptr inbounds %struct.MPoly, ptr %15, i64 1
  %48 = icmp eq i32 %16, 0
  br i1 %48, label %49, label %13, !llvm.loop !198

49:                                               ; preds = %46, %82
  %50 = phi i32 [ %52, %82 ], [ %11, %46 ]
  %51 = phi ptr [ %83, %82 ], [ %9, %46 ]
  %52 = add nsw i32 %50, -1
  %53 = getelementptr inbounds %struct.MPoly, ptr %51, i64 0, i32 3
  %54 = load i8, ptr %53, align 2, !tbaa !77
  %55 = and i8 %54, 16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.MPoly, ptr %51, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !55
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %51, align 4, !tbaa !45
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.MLoop, ptr %5, i64 %63
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i32 [ %68, %65 ], [ %59, %61 ]
  %67 = phi ptr [ %80, %65 ], [ %64, %61 ]
  %68 = add nsw i32 %66, -1
  %69 = load i32, ptr %67, align 4, !tbaa !56
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.MVert, ptr %3, i64 %70, i32 2
  %72 = load i8, ptr %71, align 2, !tbaa !192
  %73 = and i8 %72, -17
  store i8 %73, ptr %71, align 2, !tbaa !192
  %74 = getelementptr inbounds %struct.MLoop, ptr %67, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !76
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.MEdge, ptr %7, i64 %76, i32 4
  %78 = load i16, ptr %77, align 2, !tbaa !78
  %79 = and i16 %78, 239
  store i16 %79, ptr %77, align 2, !tbaa !78
  %80 = getelementptr inbounds %struct.MLoop, ptr %67, i64 1
  %81 = icmp eq i32 %68, 0
  br i1 %81, label %82, label %65, !llvm.loop !199

82:                                               ; preds = %65, %57, %49
  %83 = getelementptr inbounds %struct.MPoly, ptr %51, i64 1
  %84 = icmp eq i32 %52, 0
  br i1 %84, label %85, label %49, !llvm.loop !200

85:                                               ; preds = %82, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_polys_ex(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #13 {
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %11, %7
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %20, label %22

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %14, %11 ], [ %1, %7 ]
  %13 = phi ptr [ %18, %11 ], [ %0, %7 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.MVert, ptr %13, i64 0, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !192
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 2, !tbaa !192
  %18 = getelementptr inbounds %struct.MVert, ptr %13, i64 1
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %9, label %11, !llvm.loop !201

20:                                               ; preds = %22, %9
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %67, label %31

22:                                               ; preds = %9, %22
  %23 = phi i32 [ %25, %22 ], [ %4, %9 ]
  %24 = phi ptr [ %29, %22 ], [ %3, %9 ]
  %25 = add nsw i32 %23, -1
  %26 = getelementptr inbounds %struct.MEdge, ptr %24, i64 0, i32 4
  %27 = load i16, ptr %26, align 2, !tbaa !78
  %28 = and i16 %27, -2
  store i16 %28, ptr %26, align 2, !tbaa !78
  %29 = getelementptr inbounds %struct.MEdge, ptr %24, i64 1
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %20, label %22, !llvm.loop !202

31:                                               ; preds = %20, %64
  %32 = phi i32 [ %34, %64 ], [ %6, %20 ]
  %33 = phi ptr [ %65, %64 ], [ %5, %20 ]
  %34 = add nsw i32 %32, -1
  %35 = getelementptr inbounds %struct.MPoly, ptr %33, i64 0, i32 3
  %36 = load i8, ptr %35, align 2, !tbaa !77
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.MPoly, ptr %33, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !55
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %33, align 4, !tbaa !45
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %45
  br label %47

47:                                               ; preds = %43, %47
  %48 = phi i32 [ %50, %47 ], [ %41, %43 ]
  %49 = phi ptr [ %62, %47 ], [ %46, %43 ]
  %50 = add nsw i32 %48, -1
  %51 = load i32, ptr %49, align 4, !tbaa !56
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.MVert, ptr %0, i64 %52, i32 2
  %54 = load i8, ptr %53, align 2, !tbaa !192
  %55 = or i8 %54, 1
  store i8 %55, ptr %53, align 2, !tbaa !192
  %56 = getelementptr inbounds %struct.MLoop, ptr %49, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !76
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %58, i32 4
  %60 = load i16, ptr %59, align 2, !tbaa !78
  %61 = or i16 %60, 1
  store i16 %61, ptr %59, align 2, !tbaa !78
  %62 = getelementptr inbounds %struct.MLoop, ptr %49, i64 1
  %63 = icmp eq i32 %50, 0
  br i1 %63, label %64, label %47, !llvm.loop !203

64:                                               ; preds = %47, %39, %31
  %65 = getelementptr inbounds %struct.MPoly, ptr %33, i64 1
  %66 = icmp eq i32 %34, 0
  br i1 %66, label %67, label %31, !llvm.loop !204

67:                                               ; preds = %64, %20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_polys(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 4, !tbaa !175
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %19, %1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %28, label %30

19:                                               ; preds = %1, %19
  %20 = phi i32 [ %22, %19 ], [ %5, %1 ]
  %21 = phi ptr [ %26, %19 ], [ %3, %1 ]
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds %struct.MVert, ptr %21, i64 0, i32 2
  %24 = load i8, ptr %23, align 2, !tbaa !192
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 2, !tbaa !192
  %26 = getelementptr inbounds %struct.MVert, ptr %21, i64 1
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %17, label %19, !llvm.loop !201

28:                                               ; preds = %30, %17
  %29 = icmp eq i32 %15, 0
  br i1 %29, label %75, label %39

30:                                               ; preds = %17, %30
  %31 = phi i32 [ %33, %30 ], [ %11, %17 ]
  %32 = phi ptr [ %37, %30 ], [ %9, %17 ]
  %33 = add nsw i32 %31, -1
  %34 = getelementptr inbounds %struct.MEdge, ptr %32, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !78
  %36 = and i16 %35, -2
  store i16 %36, ptr %34, align 2, !tbaa !78
  %37 = getelementptr inbounds %struct.MEdge, ptr %32, i64 1
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %28, label %30, !llvm.loop !202

39:                                               ; preds = %28, %72
  %40 = phi i32 [ %42, %72 ], [ %15, %28 ]
  %41 = phi ptr [ %73, %72 ], [ %13, %28 ]
  %42 = add nsw i32 %40, -1
  %43 = getelementptr inbounds %struct.MPoly, ptr %41, i64 0, i32 3
  %44 = load i8, ptr %43, align 2, !tbaa !77
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.MPoly, ptr %41, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !55
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %41, align 4, !tbaa !45
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %53
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i32 [ %58, %55 ], [ %49, %51 ]
  %57 = phi ptr [ %70, %55 ], [ %54, %51 ]
  %58 = add nsw i32 %56, -1
  %59 = load i32, ptr %57, align 4, !tbaa !56
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MVert, ptr %3, i64 %60, i32 2
  %62 = load i8, ptr %61, align 2, !tbaa !192
  %63 = or i8 %62, 1
  store i8 %63, ptr %61, align 2, !tbaa !192
  %64 = getelementptr inbounds %struct.MLoop, ptr %57, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !76
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MEdge, ptr %9, i64 %66, i32 4
  %68 = load i16, ptr %67, align 2, !tbaa !78
  %69 = or i16 %68, 1
  store i16 %69, ptr %67, align 2, !tbaa !78
  %70 = getelementptr inbounds %struct.MLoop, ptr %57, i64 1
  %71 = icmp eq i32 %58, 0
  br i1 %71, label %72, label %55, !llvm.loop !203

72:                                               ; preds = %55, %47, %39
  %73 = getelementptr inbounds %struct.MPoly, ptr %41, i64 1
  %74 = icmp eq i32 %42, 0
  br i1 %74, label %75, label %39, !llvm.loop !204

75:                                               ; preds = %72, %28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_verts_ex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6) local_unnamed_addr #13 {
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %40, %7
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %81, label %43

11:                                               ; preds = %7, %40
  %12 = phi i32 [ %14, %40 ], [ %4, %7 ]
  %13 = phi ptr [ %41, %40 ], [ %3, %7 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.MEdge, ptr %13, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !78
  %17 = and i16 %16, 16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = load i32, ptr %13, align 4, !tbaa !82
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %0, i64 %21, i32 2
  %23 = load i8, ptr %22, align 2, !tbaa !192
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.MEdge, ptr %13, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !83
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %0, i64 %29, i32 2
  %31 = load i8, ptr %30, align 2, !tbaa !192
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = or i16 %16, 1
  br label %38

36:                                               ; preds = %26, %19
  %37 = and i16 %16, -18
  br label %38

38:                                               ; preds = %34, %36
  %39 = phi i16 [ %37, %36 ], [ %35, %34 ]
  store i16 %39, ptr %15, align 2, !tbaa !78
  br label %40

40:                                               ; preds = %38, %11
  %41 = getelementptr inbounds %struct.MEdge, ptr %13, i64 1
  %42 = icmp eq i32 %14, 0
  br i1 %42, label %9, label %11, !llvm.loop !205

43:                                               ; preds = %9, %78
  %44 = phi i32 [ %46, %78 ], [ %6, %9 ]
  %45 = phi ptr [ %79, %78 ], [ %5, %9 ]
  %46 = add nsw i32 %44, -1
  %47 = getelementptr inbounds %struct.MPoly, ptr %45, i64 0, i32 3
  %48 = load i8, ptr %47, align 2, !tbaa !77
  %49 = and i8 %48, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.MPoly, ptr %45, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !55
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %45, align 4, !tbaa !45
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %57
  br label %63

59:                                               ; preds = %63
  %60 = getelementptr inbounds %struct.MLoop, ptr %65, i64 1
  %61 = add nsw i32 %64, -1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63, !llvm.loop !206

63:                                               ; preds = %55, %59
  %64 = phi i32 [ %61, %59 ], [ %53, %55 ]
  %65 = phi ptr [ %60, %59 ], [ %58, %55 ]
  %66 = load i32, ptr %65, align 4, !tbaa !56
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %0, i64 %67, i32 2
  %69 = load i8, ptr %68, align 2, !tbaa !192
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %59

72:                                               ; preds = %59, %51
  %73 = or i8 %48, 2
  br label %76

74:                                               ; preds = %63
  %75 = and i8 %48, -19
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i8 [ %75, %74 ], [ %73, %72 ]
  store i8 %77, ptr %47, align 2, !tbaa !77
  br label %78

78:                                               ; preds = %43, %76
  %79 = getelementptr inbounds %struct.MPoly, ptr %45, i64 1
  %80 = icmp eq i32 %46, 0
  br i1 %80, label %81, label %43, !llvm.loop !207

81:                                               ; preds = %78, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 4, !tbaa !175
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  br label %18

16:                                               ; preds = %47, %1
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %88, label %50

18:                                               ; preds = %13, %47
  %19 = phi i32 [ %21, %47 ], [ %7, %13 ]
  %20 = phi ptr [ %48, %47 ], [ %15, %13 ]
  %21 = add nsw i32 %19, -1
  %22 = getelementptr inbounds %struct.MEdge, ptr %20, i64 0, i32 4
  %23 = load i16, ptr %22, align 2, !tbaa !78
  %24 = and i16 %23, 16
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = load i32, ptr %20, align 4, !tbaa !82
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MVert, ptr %3, i64 %28, i32 2
  %30 = load i8, ptr %29, align 2, !tbaa !192
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.MEdge, ptr %20, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !83
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.MVert, ptr %3, i64 %36, i32 2
  %38 = load i8, ptr %37, align 2, !tbaa !192
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = or i16 %23, 1
  br label %45

43:                                               ; preds = %33, %26
  %44 = and i16 %23, -18
  br label %45

45:                                               ; preds = %41, %43
  %46 = phi i16 [ %44, %43 ], [ %42, %41 ]
  store i16 %46, ptr %22, align 2, !tbaa !78
  br label %47

47:                                               ; preds = %45, %18
  %48 = getelementptr inbounds %struct.MEdge, ptr %20, i64 1
  %49 = icmp eq i32 %21, 0
  br i1 %49, label %16, label %18, !llvm.loop !205

50:                                               ; preds = %16, %85
  %51 = phi i32 [ %53, %85 ], [ %11, %16 ]
  %52 = phi ptr [ %86, %85 ], [ %9, %16 ]
  %53 = add nsw i32 %51, -1
  %54 = getelementptr inbounds %struct.MPoly, ptr %52, i64 0, i32 3
  %55 = load i8, ptr %54, align 2, !tbaa !77
  %56 = and i8 %55, 16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.MPoly, ptr %52, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !55
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %52, align 4, !tbaa !45
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.MLoop, ptr %5, i64 %64
  br label %70

66:                                               ; preds = %70
  %67 = getelementptr inbounds %struct.MLoop, ptr %72, i64 1
  %68 = add nsw i32 %71, -1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70, !llvm.loop !206

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %68, %66 ], [ %60, %62 ]
  %72 = phi ptr [ %67, %66 ], [ %65, %62 ]
  %73 = load i32, ptr %72, align 4, !tbaa !56
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.MVert, ptr %3, i64 %74, i32 2
  %76 = load i8, ptr %75, align 2, !tbaa !192
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %66

79:                                               ; preds = %66, %58
  %80 = or i8 %55, 2
  br label %83

81:                                               ; preds = %70
  %82 = and i8 %55, -19
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i8 [ %82, %81 ], [ %80, %79 ]
  store i8 %84, ptr %54, align 2, !tbaa !77
  br label %85

85:                                               ; preds = %83, %50
  %86 = getelementptr inbounds %struct.MPoly, ptr %52, i64 1
  %87 = icmp eq i32 %53, 0
  br i1 %87, label %88, label %50, !llvm.loop !207

88:                                               ; preds = %85, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_relative_deform(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %11 = sext i32 %3 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.BKE_mesh_calc_relative_deform) #16
  %14 = mul nsw i64 %11, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %14, i1 false)
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %9, i64 1
  %18 = getelementptr inbounds float, ptr %9, i64 2
  br label %23

19:                                               ; preds = %78, %8
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %19
  %22 = zext nneg i32 %3 to i64
  br label %82

23:                                               ; preds = %16, %78
  %24 = phi ptr [ %0, %16 ], [ %80, %78 ]
  %25 = phi i32 [ 0, %16 ], [ %79, %78 ]
  %26 = load i32, ptr %24, align 4, !tbaa !45
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %27
  %29 = getelementptr inbounds %struct.MPoly, ptr %24, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !55
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %23, %32
  %33 = phi i64 [ %44, %32 ], [ 0, %23 ]
  %34 = phi i32 [ %75, %32 ], [ %30, %23 ]
  %35 = trunc i64 %33 to i32
  %36 = add i32 %35, -1
  %37 = add nsw i32 %36, %34
  %38 = srem i32 %37, %34
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.MLoop, ptr %28, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !56
  %42 = getelementptr inbounds %struct.MLoop, ptr %28, i64 %33
  %43 = load i32, ptr %42, align 4, !tbaa !56
  %44 = add nuw nsw i64 %33, 1
  %45 = trunc i64 %44 to i32
  %46 = srem i32 %45, %34
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds %struct.MLoop, ptr %28, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %50 = zext i32 %43 to i64
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 %50
  %52 = zext i32 %41 to i64
  %53 = getelementptr inbounds [3 x float], ptr %6, i64 %52
  %54 = getelementptr inbounds [3 x float], ptr %6, i64 %50
  %55 = zext i32 %49 to i64
  %56 = getelementptr inbounds [3 x float], ptr %6, i64 %55
  %57 = getelementptr inbounds [3 x float], ptr %4, i64 %52
  %58 = getelementptr inbounds [3 x float], ptr %4, i64 %50
  %59 = getelementptr inbounds [3 x float], ptr %4, i64 %55
  call void @transform_point_by_tri_v3(ptr noundef nonnull %9, ptr noundef %51, ptr noundef %53, ptr noundef %54, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59) #16
  %60 = getelementptr inbounds [3 x float], ptr %7, i64 %50
  %61 = load float, ptr %9, align 4, !tbaa !34
  %62 = load float, ptr %60, align 4, !tbaa !34
  %63 = fadd float %61, %62
  store float %63, ptr %60, align 4, !tbaa !34
  %64 = load float, ptr %17, align 4, !tbaa !34
  %65 = getelementptr inbounds float, ptr %60, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = fadd float %64, %66
  store float %67, ptr %65, align 4, !tbaa !34
  %68 = load float, ptr %18, align 4, !tbaa !34
  %69 = getelementptr inbounds float, ptr %60, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fadd float %68, %70
  store float %71, ptr %69, align 4, !tbaa !34
  %72 = getelementptr inbounds i32, ptr %13, i64 %50
  %73 = load i32, ptr %72, align 4, !tbaa !49
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %72, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  %75 = load i32, ptr %29, align 4, !tbaa !55
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %44, %76
  br i1 %77, label %32, label %78, !llvm.loop !208

78:                                               ; preds = %32, %23
  %79 = add nuw nsw i32 %25, 1
  %80 = getelementptr inbounds %struct.MPoly, ptr %24, i64 1
  %81 = icmp eq i32 %79, %1
  br i1 %81, label %19, label %23, !llvm.loop !209

82:                                               ; preds = %21, %106
  %83 = phi i64 [ 0, %21 ], [ %108, %106 ]
  %84 = getelementptr inbounds i32, ptr %13, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !49
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds [3 x float], ptr %7, i64 %83
  %88 = getelementptr inbounds float, ptr %87, i64 1
  %89 = getelementptr inbounds float, ptr %87, i64 2
  br i1 %86, label %99, label %90

90:                                               ; preds = %82
  %91 = sitofp i32 %85 to float
  %92 = fdiv float 1.000000e+00, %91
  %93 = load float, ptr %87, align 4, !tbaa !34
  %94 = fmul float %92, %93
  store float %94, ptr %87, align 4, !tbaa !34
  %95 = load float, ptr %88, align 4, !tbaa !34
  %96 = fmul float %92, %95
  store float %96, ptr %88, align 4, !tbaa !34
  %97 = load float, ptr %89, align 4, !tbaa !34
  %98 = fmul float %92, %97
  br label %106

99:                                               ; preds = %82
  %100 = getelementptr inbounds [3 x float], ptr %6, i64 %83
  %101 = load float, ptr %100, align 4, !tbaa !34
  store float %101, ptr %87, align 4, !tbaa !34
  %102 = getelementptr inbounds float, ptr %100, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !34
  store float %103, ptr %88, align 4, !tbaa !34
  %104 = getelementptr inbounds float, ptr %100, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !34
  br label %106

106:                                              ; preds = %90, %99
  %107 = phi float [ %98, %90 ], [ %105, %99 ]
  store float %107, ptr %89, align 4, !tbaa !34
  %108 = add nuw nsw i64 %83, 1
  %109 = icmp eq i64 %108, %22
  br i1 %109, label %110, label %82, !llvm.loop !210

110:                                              ; preds = %106, %19
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %111(ptr noundef %13) #16
  ret void
}

declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #5

declare float @area_tri_signed_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @CustomData_external_test(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @CustomData_external_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @multires_mdisp_corners(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"MPoly", !47, i64 0, !47, i64 4, !39, i64 8, !36, i64 10, !36, i64 11}
!47 = !{!"int", !36, i64 0}
!48 = distinct !{!48, !41, !42}
!49 = !{!47, !47, i64 0}
!50 = distinct !{!50, !41, !42}
!51 = distinct !{!51, !41, !42}
!52 = distinct !{!52, !41, !42}
!53 = distinct !{!53, !41, !42}
!54 = distinct !{!54, !41, !42}
!55 = !{!46, !47, i64 4}
!56 = !{!57, !47, i64 0}
!57 = !{!"MLoop", !47, i64 0, !47, i64 4}
!58 = distinct !{!58, !41, !42}
!59 = distinct !{!59, !41, !42}
!60 = distinct !{!60, !41, !42}
!61 = !{!62, !44, i64 232}
!62 = !{!"Mesh", !63, i64 0, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192, !44, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !64, i64 280, !64, i64 480, !64, i64 680, !64, i64 880, !64, i64 1080, !47, i64 1280, !47, i64 1284, !47, i64 1288, !47, i64 1292, !47, i64 1296, !47, i64 1300, !47, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !47, i64 1344, !39, i64 1348, !39, i64 1350, !35, i64 1352, !47, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !39, i64 1366, !44, i64 1368}
!63 = !{!"ID", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !36, i64 32, !39, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !44, i64 112}
!64 = !{!"CustomData", !44, i64 0, !36, i64 8, !47, i64 172, !47, i64 176, !47, i64 180, !44, i64 184, !44, i64 192}
!65 = !{!62, !47, i64 1280}
!66 = !{!62, !44, i64 184}
!67 = !{!62, !44, i64 168}
!68 = !{!62, !47, i64 1296}
!69 = !{!70, !47, i64 12}
!70 = !{!"MFace", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !39, i64 16, !36, i64 18, !36, i64 19}
!71 = !{!70, !47, i64 0}
!72 = !{!70, !47, i64 4}
!73 = !{!70, !47, i64 8}
!74 = distinct !{!74, !41, !42}
!75 = distinct !{!75, !41, !42}
!76 = !{!57, !47, i64 4}
!77 = !{!46, !36, i64 10}
!78 = !{!79, !39, i64 10}
!79 = !{!"MEdge", !47, i64 0, !47, i64 4, !36, i64 8, !36, i64 9, !39, i64 10}
!80 = distinct !{!80, !41, !42}
!81 = distinct !{!81, !41, !42}
!82 = !{!79, !47, i64 0}
!83 = !{!79, !47, i64 4}
!84 = !{!85, !44, i64 0}
!85 = !{!"LinkNode", !44, i64 0, !44, i64 8}
!86 = !{!85, !44, i64 8}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !41, !42}
!89 = distinct !{!89, !41, !42}
!90 = distinct !{!90, !41, !42}
!91 = distinct !{!91, !41, !42}
!92 = distinct !{!92, !41, !42}
!93 = !{!94, !44, i64 0}
!94 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !47, i64 48}
!95 = !{!94, !44, i64 8}
!96 = !{!94, !44, i64 16}
!97 = !{!94, !44, i64 24}
!98 = !{!94, !44, i64 32}
!99 = !{!94, !44, i64 40}
!100 = !{!94, !47, i64 48}
!101 = !{!102, !44, i64 8}
!102 = !{!"SMikkTSpaceContext", !44, i64 0, !44, i64 8}
!103 = !{!102, !44, i64 0}
!104 = !{!105, !44, i64 0}
!105 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!106 = !{!105, !44, i64 8}
!107 = !{!105, !44, i64 16}
!108 = !{!105, !44, i64 32}
!109 = !{!105, !44, i64 24}
!110 = !{!105, !44, i64 40}
!111 = distinct !{!111, !41, !42}
!112 = distinct !{!112, !41, !42}
!113 = distinct !{!113, !41, !42}
!114 = distinct !{!114, !41, !42}
!115 = distinct !{!115, !41, !42}
!116 = distinct !{!116, !41, !42}
!117 = distinct !{!117, !41, !42}
!118 = distinct !{!118, !41, !42}
!119 = distinct !{!119, !41, !42}
!120 = distinct !{!120, !41, !42}
!121 = distinct !{!121, !41, !42}
!122 = !{!123, !44, i64 0}
!123 = !{!"MTexPoly", !44, i64 0, !36, i64 8, !36, i64 9, !39, i64 10, !39, i64 12, !39, i64 14}
!124 = !{!125, !44, i64 32}
!125 = !{!"MTFace", !36, i64 0, !44, i64 32, !36, i64 40, !36, i64 41, !39, i64 42, !39, i64 44, !39, i64 46}
!126 = !{!123, !36, i64 8}
!127 = !{!125, !36, i64 40}
!128 = !{!123, !36, i64 9}
!129 = !{!125, !36, i64 41}
!130 = !{!123, !39, i64 10}
!131 = !{!125, !39, i64 42}
!132 = !{!123, !39, i64 12}
!133 = !{!125, !39, i64 44}
!134 = distinct !{!134, !41, !42}
!135 = distinct !{!135, !41, !42}
!136 = !{!137, !36, i64 0}
!137 = !{!"MLoopCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!138 = !{!139, !36, i64 3}
!139 = !{!"MCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!140 = !{!137, !36, i64 1}
!141 = !{!139, !36, i64 2}
!142 = !{!137, !36, i64 2}
!143 = !{!139, !36, i64 1}
!144 = !{!137, !36, i64 3}
!145 = !{!139, !36, i64 0}
!146 = distinct !{!146, !41, !42}
!147 = distinct !{!147, !41, !42}
!148 = distinct !{!148, !41, !42}
!149 = distinct !{!149, !41, !42}
!150 = distinct !{!150, !41, !42}
!151 = distinct !{!151, !41, !42}
!152 = distinct !{!152, !41, !42}
!153 = distinct !{!153, !41, !42}
!154 = distinct !{!154, !41, !42}
!155 = distinct !{!155, !41, !42}
!156 = distinct !{!156, !41, !42}
!157 = distinct !{!157, !41, !42}
!158 = distinct !{!158, !41, !42}
!159 = distinct !{!159, !41, !42}
!160 = distinct !{!160, !41, !42}
!161 = distinct !{!161, !41, !42}
!162 = distinct !{!162, !41, !42}
!163 = !{!46, !39, i64 8}
!164 = !{!70, !39, i64 16}
!165 = !{!70, !36, i64 19}
!166 = !{!70, !36, i64 18}
!167 = distinct !{!167, !41, !42}
!168 = distinct !{!168, !41, !42}
!169 = distinct !{!169, !41, !42}
!170 = distinct !{!170, !41, !42}
!171 = distinct !{!171, !41, !42}
!172 = distinct !{!172, !41, !42}
!173 = distinct !{!173, !41, !42}
!174 = distinct !{!174, !41, !42}
!175 = !{!62, !47, i64 1284}
!176 = !{!62, !47, i64 1288}
!177 = !{!62, !47, i64 1300}
!178 = !{!62, !44, i64 240}
!179 = !{!62, !44, i64 208}
!180 = distinct !{!180, !41, !42}
!181 = distinct !{!181, !41, !42}
!182 = distinct !{!182, !41, !42}
!183 = distinct !{!183, !41, !42}
!184 = distinct !{!184, !41, !42}
!185 = !{!186, !44, i64 8}
!186 = !{!"MDisps", !47, i64 0, !47, i64 4, !44, i64 8, !44, i64 16}
!187 = !{!64, !44, i64 192}
!188 = !{!186, !47, i64 0}
!189 = !{!186, !47, i64 4}
!190 = distinct !{!190, !41, !42}
!191 = distinct !{!191, !41, !42}
!192 = !{!193, !36, i64 18}
!193 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!194 = distinct !{!194, !41, !42}
!195 = distinct !{!195, !41, !42}
!196 = distinct !{!196, !41, !42}
!197 = distinct !{!197, !41, !42}
!198 = distinct !{!198, !41, !42}
!199 = distinct !{!199, !41, !42}
!200 = distinct !{!200, !41, !42}
!201 = distinct !{!201, !41, !42}
!202 = distinct !{!202, !41, !42}
!203 = distinct !{!203, !41, !42}
!204 = distinct !{!204, !41, !42}
!205 = distinct !{!205, !41, !42}
!206 = distinct !{!206, !41, !42}
!207 = distinct !{!207, !41, !42}
!208 = distinct !{!208, !41, !42}
!209 = distinct !{!209, !41, !42}
!210 = distinct !{!210, !41, !42}
