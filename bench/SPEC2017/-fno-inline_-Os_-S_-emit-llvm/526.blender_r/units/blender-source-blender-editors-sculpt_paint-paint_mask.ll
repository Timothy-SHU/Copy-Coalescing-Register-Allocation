; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_mask.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PBVHVertexIter = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, %struct.GSetIterator, %struct.GSetIterator, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.LassoMaskData = type { ptr, [4 x [4 x float]], ptr, i32, %struct.rcti, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"Mask Flood Fill\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"PAINT_OT_mask_flood_fill\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Fill the whole mask with a given value, or invert its values\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.14, i32 0, ptr @.str.6, ptr @.str.15 }, %struct.EnumPropertyItem { i32 1, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.18 }, %struct.EnumPropertyItem { i32 2, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.21 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.7 = private unnamed_addr constant [86 x i8] c"Mask level to use when mode is 'Value'; zero means no masking and one is fully masked\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Mask box fill\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"Mask Lasso Gesture\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"PAINT_OT_mask_lasso_gesture\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Add mask within the lasso as you move the pointer\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Mask flood fill\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"Set mask to the level specified by the 'value' property\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"VALUE_INVERSE\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Value Inverted\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"Set mask to the level specified by the inverted 'value' property\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"INVERT\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Invert the mask\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.paint_mask_gesture_lasso_exec = private unnamed_addr constant [30 x i8] c"paint_mask_gesture_lasso_exec\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Mask lasso fill\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_mask_flood_fill(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_flood_fill_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @mode_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !18
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_flood_fill_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %9 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #8
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.3) #8
  %15 = load ptr, ptr %12, align 8, !tbaa !28
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.5) #8
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %7, ptr noundef %11, ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %17 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !30
  %19 = getelementptr inbounds %struct.SculptSession, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = tail call i32 @BKE_pbvh_type(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 1
  call void @BKE_pbvh_search_gather(ptr noundef %20, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.13) #8
  %23 = load i32, ptr %4, align 4, !tbaa !37
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %197

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  br label %52

52:                                               ; preds = %25, %192
  %53 = phi i64 [ 0, %25 ], [ %193, %192 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #9
  %54 = load ptr, ptr %3, align 8, !tbaa !38
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = call ptr @sculpt_undo_push_node(ptr noundef %8, ptr noundef %56, i32 noundef 2) #8
  %58 = load ptr, ptr %3, align 8, !tbaa !38
  %59 = getelementptr inbounds ptr, ptr %58, i64 %53
  %60 = load ptr, ptr %59, align 8, !tbaa !38
  call void @pbvh_vertex_iter_init(ptr noundef %20, ptr noundef %60, ptr noundef nonnull %5, i32 noundef 1) #8
  store i32 0, ptr %26, align 4, !tbaa !39
  store i32 0, ptr %5, align 8, !tbaa !43
  %61 = load i32, ptr %27, align 8, !tbaa !44
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %184

63:                                               ; preds = %52, %179
  %64 = phi i32 [ %180, %179 ], [ %61, %52 ]
  %65 = phi i32 [ %182, %179 ], [ 0, %52 ]
  %66 = load ptr, ptr %28, align 8, !tbaa !45
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, ptr %36, align 8, !tbaa !46
  store i32 %69, ptr %30, align 4, !tbaa !47
  store i32 1, ptr %31, align 8, !tbaa !48
  store i32 0, ptr %37, align 8, !tbaa !49
  br label %83

70:                                               ; preds = %63
  %71 = load i32, ptr %29, align 4, !tbaa !50
  store i32 %71, ptr %30, align 4, !tbaa !47
  store i32 %71, ptr %31, align 8, !tbaa !48
  %72 = load ptr, ptr %32, align 8, !tbaa !51
  %73 = sext i32 %65 to i64
  %74 = getelementptr inbounds i32, ptr %72, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !37
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %66, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  store ptr %78, ptr %33, align 8, !tbaa !52
  %79 = load ptr, ptr %34, align 8, !tbaa !53
  %80 = getelementptr inbounds ptr, ptr %79, i64 %76
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  store ptr %81, ptr %35, align 8, !tbaa !54
  store i32 0, ptr %37, align 8, !tbaa !49
  %82 = icmp sgt i32 %71, 0
  br i1 %82, label %83, label %179

83:                                               ; preds = %68, %70
  %84 = phi i32 [ %71, %70 ], [ 1, %68 ]
  %85 = phi i32 [ %71, %70 ], [ %69, %68 ]
  br label %86

86:                                               ; preds = %83, %170
  %87 = phi i32 [ %171, %170 ], [ %84, %83 ]
  %88 = phi i32 [ %174, %170 ], [ 0, %83 ]
  %89 = phi i32 [ %173, %170 ], [ %85, %83 ]
  store i32 0, ptr %38, align 4, !tbaa !55
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %170

91:                                               ; preds = %86, %160
  %92 = phi i32 [ %162, %160 ], [ 0, %86 ]
  %93 = load ptr, ptr %33, align 8, !tbaa !52
  %94 = icmp eq ptr %93, null
  br i1 %94, label %121, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %39, align 8, !tbaa !56
  store ptr %93, ptr %40, align 8, !tbaa !57
  %97 = call fastcc ptr @CCG_elem_no(ptr noundef %96, ptr noundef nonnull %93) #10
  store ptr %97, ptr %41, align 8, !tbaa !58
  %98 = getelementptr inbounds %struct.CCGKey, ptr %96, i64 0, i32 9
  %99 = load i32, ptr %98, align 4, !tbaa !59
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %96, ptr noundef nonnull %93) #10
  br label %103

103:                                              ; preds = %95, %101
  %104 = phi ptr [ %102, %101 ], [ null, %95 ]
  store ptr %104, ptr %42, align 8, !tbaa !61
  %105 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %96, ptr noundef nonnull %93) #10
  store ptr %105, ptr %33, align 8, !tbaa !52
  %106 = load ptr, ptr %35, align 8, !tbaa !54
  %107 = icmp eq ptr %106, null
  br i1 %107, label %158, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %37, align 8, !tbaa !49
  %110 = load i32, ptr %29, align 4, !tbaa !50
  %111 = mul nsw i32 %110, %109
  %112 = add nsw i32 %111, %92
  %113 = ashr i32 %112, 5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %106, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !37
  %117 = and i32 %112, 31
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %158, label %160

121:                                              ; preds = %91
  %122 = load ptr, ptr %43, align 8, !tbaa !62
  %123 = icmp eq ptr %122, null
  br i1 %123, label %143, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %44, align 8, !tbaa !63
  %126 = sext i32 %92 to i64
  %127 = getelementptr inbounds i32, ptr %125, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !37
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.MVert, ptr %122, i64 %129
  store ptr %130, ptr %45, align 8, !tbaa !64
  %131 = getelementptr inbounds %struct.MVert, ptr %122, i64 %129, i32 2
  %132 = load i8, ptr %131, align 2, !tbaa !65
  %133 = and i8 %132, 16
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %124
  store ptr %130, ptr %40, align 8, !tbaa !57
  %136 = getelementptr inbounds %struct.MVert, ptr %122, i64 %129, i32 1
  store ptr %136, ptr %46, align 8, !tbaa !67
  %137 = load ptr, ptr %47, align 8, !tbaa !68
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load ptr, ptr %42, align 8, !tbaa !61
  br label %158

141:                                              ; preds = %135
  %142 = getelementptr inbounds float, ptr %137, i64 %129
  store ptr %142, ptr %42, align 8, !tbaa !61
  br label %158

143:                                              ; preds = %121
  %144 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %48) #10, !range !69
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %145, ptr %48, ptr %49
  %147 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %146) #10
  store ptr %147, ptr %50, align 8, !tbaa !70
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %146) #10
  %148 = load ptr, ptr %50, align 8, !tbaa !70
  %149 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %148) #10
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 2
  store ptr %152, ptr %40, align 8, !tbaa !57
  %153 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 3
  store ptr %153, ptr %41, align 8, !tbaa !58
  %154 = load ptr, ptr %148, align 8, !tbaa !71
  %155 = load i32, ptr %51, align 8, !tbaa !74
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %154, i64 %156
  store ptr %157, ptr %42, align 8, !tbaa !61
  br label %158

158:                                              ; preds = %139, %151, %141, %103, %108
  %159 = phi ptr [ %140, %139 ], [ %157, %151 ], [ %142, %141 ], [ %104, %103 ], [ %104, %108 ]
  call fastcc void @mask_flood_fill_set_elem(ptr noundef %159, i32 noundef %14, float noundef %16) #10
  br label %160

160:                                              ; preds = %143, %124, %108, %158
  %161 = load i32, ptr %38, align 4, !tbaa !55
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %38, align 4, !tbaa !55
  %163 = load i32, ptr %26, align 4, !tbaa !39
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %26, align 4, !tbaa !39
  %165 = load i32, ptr %30, align 4, !tbaa !47
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %91, label %167, !llvm.loop !75

167:                                              ; preds = %160
  %168 = load i32, ptr %37, align 8, !tbaa !49
  %169 = load i32, ptr %31, align 8, !tbaa !48
  br label %170

170:                                              ; preds = %167, %86
  %171 = phi i32 [ %169, %167 ], [ %87, %86 ]
  %172 = phi i32 [ %168, %167 ], [ %88, %86 ]
  %173 = phi i32 [ %165, %167 ], [ %89, %86 ]
  %174 = add nsw i32 %172, 1
  store i32 %174, ptr %37, align 8, !tbaa !49
  %175 = icmp slt i32 %174, %171
  br i1 %175, label %86, label %176, !llvm.loop !77

176:                                              ; preds = %170
  %177 = load i32, ptr %5, align 8, !tbaa !43
  %178 = load i32, ptr %27, align 8, !tbaa !44
  br label %179

179:                                              ; preds = %176, %70
  %180 = phi i32 [ %178, %176 ], [ %64, %70 ]
  %181 = phi i32 [ %177, %176 ], [ %65, %70 ]
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %5, align 8, !tbaa !43
  %183 = icmp slt i32 %182, %180
  br i1 %183, label %63, label %184, !llvm.loop !78

184:                                              ; preds = %179, %52
  %185 = load ptr, ptr %3, align 8, !tbaa !38
  %186 = getelementptr inbounds ptr, ptr %185, i64 %53
  %187 = load ptr, ptr %186, align 8, !tbaa !38
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %187) #8
  br i1 %22, label %188, label %192

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 8, !tbaa !38
  %190 = getelementptr inbounds ptr, ptr %189, i64 %53
  %191 = load ptr, ptr %190, align 8, !tbaa !38
  call void @BKE_pbvh_node_mark_normals_update(ptr noundef %191) #8
  br label %192

192:                                              ; preds = %188, %184
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #9
  %193 = add nuw nsw i64 %53, 1
  %194 = load i32, ptr %4, align 4, !tbaa !37
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %52, label %197, !llvm.loop !79

197:                                              ; preds = %192, %2
  br i1 %22, label %198, label %199

198:                                              ; preds = %197
  call void @multires_mark_as_modified(ptr noundef %8, i32 noundef 1) #8
  br label %199

199:                                              ; preds = %198, %197
  call void @sculpt_undo_push_end() #8
  %200 = load ptr, ptr %3, align 8, !tbaa !38
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %203(ptr noundef nonnull %200) #8
  br label %204

204:                                              ; preds = %202, %199
  call void @ED_region_tag_redraw(ptr noundef %6) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: optsize
declare i32 @sculpt_mode_poll(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_sculpt_mask_box_select(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BoundBox, align 4
  %7 = alloca %struct.bglMats, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PBVHVertexIter, align 8
  %13 = load ptr, ptr %1, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %7, i8 0, i64 272, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %18 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  %22 = getelementptr inbounds %struct.Paint, ptr %17, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !103
  %24 = and i32 %23, 7
  %25 = icmp eq i8 %3, 0
  %26 = select i1 %25, float 0.000000e+00, float 1.000000e+00
  %27 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  call void @view3d_get_transformation(ptr noundef %19, ptr noundef %28, ptr noundef %21, ptr noundef nonnull %7) #8
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %2) #8
  call void @negate_m4(ptr noundef nonnull %8) #8
  call void @BKE_sculpt_update_mesh_elements(ptr noundef %13, ptr noundef %17, ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %29 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !30
  %31 = getelementptr inbounds %struct.SculptSession, ptr %30, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = call i32 @BKE_pbvh_type(ptr noundef %32) #8
  %34 = icmp eq i32 %33, 1
  call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.8) #8
  %35 = icmp ne i32 %24, 5
  %36 = icmp eq i32 %24, 6
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 5
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 12
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 6
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 13
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 1
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 2
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 11
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 7
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 9
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 10
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 15
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 4
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 3
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 8
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 24
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 26
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 27
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 14
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 16
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 22
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 25
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 17
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 18
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 19
  %61 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 23
  %62 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 21
  br label %63

63:                                               ; preds = %5, %248
  %64 = phi i32 [ 0, %5 ], [ %249, %248 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = and i32 %64, %24
  %68 = icmp ne i32 %67, 0
  %69 = icmp ne i32 %64, 3
  %70 = or i1 %35, %69
  %71 = and i1 %68, %70
  br i1 %71, label %72, label %248

72:                                               ; preds = %66
  br i1 %36, label %73, label %74

73:                                               ; preds = %72
  switch i32 %64, label %74 [
    i32 5, label %248
    i32 3, label %248
  ]

74:                                               ; preds = %73, %72, %63
  %75 = trunc i32 %64 to i8
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ 0, %74 ], [ %80, %76 ]
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 %77
  %79 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 %77
  call fastcc void @flip_plane(ptr noundef nonnull %78, ptr noundef nonnull %79, i8 noundef zeroext %75) #10
  %80 = add nuw nsw i64 %77, 1
  %81 = icmp eq i64 %80, 4
  br i1 %81, label %82, label %76, !llvm.loop !106

82:                                               ; preds = %76
  call void @BKE_pbvh_search_gather(ptr noundef %32, ptr noundef nonnull @BKE_pbvh_node_planes_contain_AABB, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %83 = load i32, ptr %11, align 4, !tbaa !37
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %243

85:                                               ; preds = %82, %238
  %86 = phi i64 [ %239, %238 ], [ 0, %82 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %12) #9
  %87 = load ptr, ptr %10, align 8, !tbaa !38
  %88 = getelementptr inbounds ptr, ptr %87, i64 %86
  %89 = load ptr, ptr %88, align 8, !tbaa !38
  call void @pbvh_vertex_iter_init(ptr noundef %32, ptr noundef %89, ptr noundef nonnull %12, i32 noundef 1) #8
  store i32 0, ptr %37, align 4, !tbaa !39
  store i32 0, ptr %12, align 8, !tbaa !43
  %90 = load i32, ptr %38, align 8, !tbaa !44
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %238

92:                                               ; preds = %85, %232
  %93 = phi i32 [ %233, %232 ], [ %90, %85 ]
  %94 = phi i8 [ %235, %232 ], [ 0, %85 ]
  %95 = phi i32 [ %236, %232 ], [ 0, %85 ]
  %96 = load ptr, ptr %39, align 8, !tbaa !45
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, ptr %47, align 8, !tbaa !46
  store i32 %99, ptr %41, align 4, !tbaa !47
  store i32 1, ptr %42, align 8, !tbaa !48
  store i32 0, ptr %48, align 8, !tbaa !49
  br label %113

100:                                              ; preds = %92
  %101 = load i32, ptr %40, align 4, !tbaa !50
  store i32 %101, ptr %41, align 4, !tbaa !47
  store i32 %101, ptr %42, align 8, !tbaa !48
  %102 = load ptr, ptr %43, align 8, !tbaa !51
  %103 = sext i32 %95 to i64
  %104 = getelementptr inbounds i32, ptr %102, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !37
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %96, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !38
  store ptr %108, ptr %44, align 8, !tbaa !52
  %109 = load ptr, ptr %45, align 8, !tbaa !53
  %110 = getelementptr inbounds ptr, ptr %109, i64 %106
  %111 = load ptr, ptr %110, align 8, !tbaa !38
  store ptr %111, ptr %46, align 8, !tbaa !54
  store i32 0, ptr %48, align 8, !tbaa !49
  %112 = icmp sgt i32 %101, 0
  br i1 %112, label %113, label %232

113:                                              ; preds = %98, %100
  %114 = phi i32 [ %101, %100 ], [ 1, %98 ]
  %115 = phi i32 [ %101, %100 ], [ %99, %98 ]
  br label %116

116:                                              ; preds = %113, %222
  %117 = phi i32 [ %223, %222 ], [ %114, %113 ]
  %118 = phi i32 [ %227, %222 ], [ 0, %113 ]
  %119 = phi i32 [ %225, %222 ], [ %115, %113 ]
  %120 = phi i8 [ %226, %222 ], [ %94, %113 ]
  store i32 0, ptr %49, align 4, !tbaa !55
  %121 = icmp sgt i32 %119, 0
  br i1 %121, label %122, label %222

122:                                              ; preds = %116, %211
  %123 = phi i32 [ %214, %211 ], [ 0, %116 ]
  %124 = phi i8 [ %212, %211 ], [ %120, %116 ]
  %125 = load ptr, ptr %44, align 8, !tbaa !52
  %126 = icmp eq ptr %125, null
  br i1 %126, label %153, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %50, align 8, !tbaa !56
  store ptr %125, ptr %51, align 8, !tbaa !57
  %129 = call fastcc ptr @CCG_elem_no(ptr noundef %128, ptr noundef nonnull %125) #10
  store ptr %129, ptr %52, align 8, !tbaa !58
  %130 = getelementptr inbounds %struct.CCGKey, ptr %128, i64 0, i32 9
  %131 = load i32, ptr %130, align 4, !tbaa !59
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %128, ptr noundef nonnull %125) #10
  br label %135

135:                                              ; preds = %127, %133
  %136 = phi ptr [ %134, %133 ], [ null, %127 ]
  store ptr %136, ptr %53, align 8, !tbaa !61
  %137 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %128, ptr noundef nonnull %125) #10
  store ptr %137, ptr %44, align 8, !tbaa !52
  %138 = load ptr, ptr %46, align 8, !tbaa !54
  %139 = icmp eq ptr %138, null
  br i1 %139, label %191, label %140

140:                                              ; preds = %135
  %141 = load i32, ptr %48, align 8, !tbaa !49
  %142 = load i32, ptr %40, align 4, !tbaa !50
  %143 = mul nsw i32 %142, %141
  %144 = add nsw i32 %143, %123
  %145 = ashr i32 %144, 5
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %138, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !37
  %149 = and i32 %144, 31
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %148
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %191, label %211

153:                                              ; preds = %122
  %154 = load ptr, ptr %54, align 8, !tbaa !62
  %155 = icmp eq ptr %154, null
  br i1 %155, label %173, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %55, align 8, !tbaa !63
  %158 = sext i32 %123 to i64
  %159 = getelementptr inbounds i32, ptr %157, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !37
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.MVert, ptr %154, i64 %161
  store ptr %162, ptr %56, align 8, !tbaa !64
  %163 = getelementptr inbounds %struct.MVert, ptr %154, i64 %161, i32 2
  %164 = load i8, ptr %163, align 2, !tbaa !65
  %165 = and i8 %164, 16
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %211

167:                                              ; preds = %156
  store ptr %162, ptr %51, align 8, !tbaa !57
  %168 = getelementptr inbounds %struct.MVert, ptr %154, i64 %161, i32 1
  store ptr %168, ptr %57, align 8, !tbaa !67
  %169 = load ptr, ptr %58, align 8, !tbaa !68
  %170 = icmp eq ptr %169, null
  br i1 %170, label %191, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds float, ptr %169, i64 %161
  br label %188

173:                                              ; preds = %153
  %174 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %59) #10, !range !69
  %175 = icmp eq i8 %174, 0
  %176 = select i1 %175, ptr %59, ptr %60
  %177 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %176) #10
  store ptr %177, ptr %61, align 8, !tbaa !70
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %176) #10
  %178 = load ptr, ptr %61, align 8, !tbaa !70
  %179 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %178) #10
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %211

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 2
  store ptr %182, ptr %51, align 8, !tbaa !57
  %183 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 3
  store ptr %183, ptr %52, align 8, !tbaa !58
  %184 = load ptr, ptr %178, align 8, !tbaa !71
  %185 = load i32, ptr %62, align 8, !tbaa !74
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %184, i64 %186
  br label %188

188:                                              ; preds = %171, %181
  %189 = phi ptr [ %187, %181 ], [ %172, %171 ]
  %190 = phi ptr [ %182, %181 ], [ %162, %171 ]
  store ptr %189, ptr %53, align 8, !tbaa !61
  br label %191

191:                                              ; preds = %188, %167, %135, %140
  %192 = phi ptr [ %162, %167 ], [ %125, %135 ], [ %125, %140 ], [ %190, %188 ]
  %193 = call fastcc zeroext i8 @is_effected(ptr noundef nonnull %9, ptr noundef nonnull %192) #10
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %211, label %195

195:                                              ; preds = %191
  %196 = icmp eq i8 %124, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %195
  %198 = load ptr, ptr %10, align 8, !tbaa !38
  %199 = getelementptr inbounds ptr, ptr %198, i64 %86
  %200 = load ptr, ptr %199, align 8, !tbaa !38
  %201 = call ptr @sculpt_undo_push_node(ptr noundef %21, ptr noundef %200, i32 noundef 2) #8
  %202 = load ptr, ptr %10, align 8, !tbaa !38
  %203 = getelementptr inbounds ptr, ptr %202, i64 %86
  %204 = load ptr, ptr %203, align 8, !tbaa !38
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %204) #8
  br i1 %34, label %205, label %209

205:                                              ; preds = %197
  %206 = load ptr, ptr %10, align 8, !tbaa !38
  %207 = getelementptr inbounds ptr, ptr %206, i64 %86
  %208 = load ptr, ptr %207, align 8, !tbaa !38
  call void @BKE_pbvh_node_mark_normals_update(ptr noundef %208) #8
  br label %209

209:                                              ; preds = %197, %205, %195
  %210 = load ptr, ptr %53, align 8, !tbaa !61
  call fastcc void @mask_flood_fill_set_elem(ptr noundef %210, i32 noundef 0, float noundef %26) #10
  br label %211

211:                                              ; preds = %191, %209, %173, %156, %140
  %212 = phi i8 [ %124, %140 ], [ 1, %209 ], [ %124, %191 ], [ %124, %156 ], [ %124, %173 ]
  %213 = load i32, ptr %49, align 4, !tbaa !55
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %49, align 4, !tbaa !55
  %215 = load i32, ptr %37, align 4, !tbaa !39
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %37, align 4, !tbaa !39
  %217 = load i32, ptr %41, align 4, !tbaa !47
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %122, label %219, !llvm.loop !107

219:                                              ; preds = %211
  %220 = load i32, ptr %48, align 8, !tbaa !49
  %221 = load i32, ptr %42, align 8, !tbaa !48
  br label %222

222:                                              ; preds = %219, %116
  %223 = phi i32 [ %117, %116 ], [ %221, %219 ]
  %224 = phi i32 [ %118, %116 ], [ %220, %219 ]
  %225 = phi i32 [ %119, %116 ], [ %217, %219 ]
  %226 = phi i8 [ %120, %116 ], [ %212, %219 ]
  %227 = add nsw i32 %224, 1
  store i32 %227, ptr %48, align 8, !tbaa !49
  %228 = icmp slt i32 %227, %223
  br i1 %228, label %116, label %229, !llvm.loop !108

229:                                              ; preds = %222
  %230 = load i32, ptr %12, align 8, !tbaa !43
  %231 = load i32, ptr %38, align 8, !tbaa !44
  br label %232

232:                                              ; preds = %229, %100
  %233 = phi i32 [ %93, %100 ], [ %231, %229 ]
  %234 = phi i32 [ %95, %100 ], [ %230, %229 ]
  %235 = phi i8 [ %94, %100 ], [ %226, %229 ]
  %236 = add nsw i32 %234, 1
  store i32 %236, ptr %12, align 8, !tbaa !43
  %237 = icmp slt i32 %236, %233
  br i1 %237, label %92, label %238, !llvm.loop !109

238:                                              ; preds = %232, %85
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %12) #9
  %239 = add nuw nsw i64 %86, 1
  %240 = load i32, ptr %11, align 4, !tbaa !37
  %241 = sext i32 %240 to i64
  %242 = icmp slt i64 %239, %241
  br i1 %242, label %85, label %243, !llvm.loop !110

243:                                              ; preds = %238, %82
  %244 = load ptr, ptr %10, align 8, !tbaa !38
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %243
  %247 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %247(ptr noundef nonnull %244) #8
  br label %248

248:                                              ; preds = %243, %246, %73, %73, %66
  %249 = add nuw nsw i32 %64, 1
  %250 = icmp eq i32 %64, %24
  br i1 %250, label %251, label %63, !llvm.loop !111

251:                                              ; preds = %248
  br i1 %34, label %252, label %253

252:                                              ; preds = %251
  call void @multires_mark_as_modified(ptr noundef %21, i32 noundef 1) #8
  br label %253

253:                                              ; preds = %252, %251
  call void @sculpt_undo_push_end() #8
  call void @ED_region_tag_redraw(ptr noundef %19) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #9
  ret i32 4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @negate_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_sculpt_update_mesh_elements(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_pbvh_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sculpt_undo_push_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @flip_plane(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = zext i8 %2 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = load float, ptr %1, align 4, !tbaa !112
  %8 = fneg float %7
  %9 = select i1 %6, float %7, float %8
  store float %9, ptr %0, align 4, !tbaa !112
  %10 = and i32 %4, 2
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !112
  %14 = fneg float %13
  %15 = select i1 %11, float %13, float %14
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !112
  %21 = fneg float %20
  %22 = select i1 %18, float %20, float %21
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !112
  %26 = getelementptr inbounds float, ptr %0, i64 3
  store float %25, ptr %26, align 4, !tbaa !112
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_pbvh_node_planes_contain_AABB(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @pbvh_vertex_iter_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !113
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !114
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #10, !range !69
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #10
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #0 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !115
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_effected(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 @isect_point_planes_v3(ptr noundef %0, i32 noundef 4, ptr noundef %1) #8
  ret i8 %3
}

; Function Attrs: optsize
declare ptr @sculpt_undo_push_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mask_flood_fill_set_elem(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #4 {
  switch i32 %1, label %11 [
    i32 0, label %9
    i32 1, label %4
    i32 2, label %6
  ]

4:                                                ; preds = %3
  %5 = fsub float 1.000000e+00, %2
  br label %9

6:                                                ; preds = %3
  %7 = load float, ptr %0, align 4, !tbaa !112
  %8 = fsub float 1.000000e+00, %7
  br label %9

9:                                                ; preds = %3, %4, %6
  %10 = phi float [ %8, %6 ], [ %5, %4 ], [ %2, %3 ]
  store float %10, ptr %0, align 4, !tbaa !112
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @multires_mark_as_modified(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sculpt_undo_push_end() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_mask_lasso_gesture(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_mask_gesture_lasso_exec, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = tail call ptr @RNA_def_property(ptr noundef %10, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 0) #8
  tail call void @RNA_def_property_struct_runtime(ptr noundef %11, ptr noundef nonnull @RNA_OperatorMousePath) #8
  %12 = load ptr, ptr %9, align 8, !tbaa !18
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @mode_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %14 = load ptr, ptr %9, align 8, !tbaa !18
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.5, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paint_mask_gesture_lasso_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca %struct.BoundBox, align 4
  %7 = alloca %struct.bglMats, align 8
  %8 = alloca %struct.ViewContext, align 8
  %9 = alloca %struct.LassoMaskData, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PBVHVertexIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %13 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %292, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %7, i8 0, i64 272, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %9) #9
  %16 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %17 = call ptr @CTX_data_tool_settings(ptr noundef %0) #8
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.Paint, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !103
  %22 = and i32 %21, 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = call i32 @RNA_enum_get(ptr noundef %24, ptr noundef nonnull @.str.3) #8
  %26 = load ptr, ptr %23, align 8, !tbaa !28
  %27 = call float @RNA_float_get(ptr noundef %26, ptr noundef nonnull @.str.5) #8
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %8) #8
  %28 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  call void @view3d_get_transformation(ptr noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef nonnull %7) #8
  store ptr %8, ptr %9, align 8, !tbaa !118
  %34 = load ptr, ptr %32, align 8, !tbaa !102
  %35 = load ptr, ptr %30, align 8, !tbaa !105
  %36 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 1
  call void @ED_view3d_ob_project_mat_get(ptr noundef %35, ptr noundef %34, ptr noundef nonnull %36) #8
  %37 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 4
  %38 = load i32, ptr %3, align 4, !tbaa !37
  call void @BLI_lasso_boundbox(ptr noundef nonnull %37, ptr noundef nonnull %13, i32 noundef %38) #8
  %39 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 4, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !120
  %41 = load i32, ptr %37, align 4, !tbaa !121
  %42 = sub nsw i32 %40, %41
  %43 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 3
  store i32 %42, ptr %43, align 8, !tbaa !122
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 4, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !123
  %47 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 4, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !124
  %49 = sub nsw i32 %46, %48
  %50 = mul nsw i32 %49, %42
  %51 = ashr i32 %50, 5
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 2
  %55 = call ptr %44(i64 noundef %54, ptr noundef nonnull @__func__.paint_mask_gesture_lasso_exec) #8
  %56 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !125
  %57 = load i32, ptr %37, align 4, !tbaa !121
  %58 = load i32, ptr %47, align 4, !tbaa !124
  %59 = load i32, ptr %39, align 8, !tbaa !120
  %60 = load i32, ptr %45, align 8, !tbaa !123
  %61 = load i32, ptr %3, align 4, !tbaa !37
  call void @fill_poly_v2i_n(i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, ptr noundef nonnull %13, i32 noundef %61, ptr noundef nonnull @mask_lasso_px_cb, ptr noundef nonnull %9) #8
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %37) #8
  call void @negate_m4(ptr noundef nonnull %4) #8
  call void @BKE_sculpt_update_mesh_elements(ptr noundef %16, ptr noundef %19, ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %62 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct.SculptSession, ptr %63, i64 0, i32 15
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = call i32 @BKE_pbvh_type(ptr noundef %65) #8
  %67 = icmp eq i32 %66, 1
  call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.22) #8
  %68 = icmp ne i32 %22, 5
  %69 = icmp eq i32 %22, 6
  %70 = getelementptr inbounds %struct.LassoMaskData, ptr %9, i64 0, i32 5
  %71 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 5
  %72 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 12
  %73 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 6
  %74 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 13
  %75 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 1
  %76 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 2
  %77 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 11
  %78 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 7
  %79 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 9
  %80 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 10
  %81 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 15
  %82 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 4
  %83 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 3
  %84 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 8
  %85 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 24
  %86 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 26
  %87 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 27
  %88 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 14
  %89 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 16
  %90 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 22
  %91 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 25
  %92 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 17
  %93 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 18
  %94 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 19
  %95 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 23
  %96 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 21
  br label %97

97:                                               ; preds = %15, %282
  %98 = phi i32 [ 0, %15 ], [ %283, %282 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = and i32 %98, %22
  %102 = icmp ne i32 %101, 0
  %103 = icmp ne i32 %98, 3
  %104 = or i1 %68, %103
  %105 = and i1 %102, %104
  br i1 %105, label %106, label %282

106:                                              ; preds = %100
  br i1 %69, label %107, label %108

107:                                              ; preds = %106
  switch i32 %98, label %108 [
    i32 5, label %282
    i32 3, label %282
  ]

108:                                              ; preds = %107, %106, %97
  %109 = trunc i32 %98 to i8
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ 0, %108 ], [ %114, %110 ]
  %112 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %111
  %113 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 %111
  call fastcc void @flip_plane(ptr noundef nonnull %112, ptr noundef nonnull %113, i8 noundef zeroext %109) #10
  %114 = add nuw nsw i64 %111, 1
  %115 = icmp eq i64 %114, 4
  br i1 %115, label %116, label %110, !llvm.loop !126

116:                                              ; preds = %110
  store i32 %98, ptr %70, align 4, !tbaa !127
  call void @BKE_pbvh_search_gather(ptr noundef %65, ptr noundef nonnull @BKE_pbvh_node_planes_contain_AABB, ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %117 = load i32, ptr %11, align 4, !tbaa !37
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %277

119:                                              ; preds = %116, %272
  %120 = phi i64 [ %273, %272 ], [ 0, %116 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %12) #9
  %121 = load ptr, ptr %10, align 8, !tbaa !38
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  %123 = load ptr, ptr %122, align 8, !tbaa !38
  call void @pbvh_vertex_iter_init(ptr noundef %65, ptr noundef %123, ptr noundef nonnull %12, i32 noundef 1) #8
  store i32 0, ptr %71, align 4, !tbaa !39
  store i32 0, ptr %12, align 8, !tbaa !43
  %124 = load i32, ptr %72, align 8, !tbaa !44
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %272

126:                                              ; preds = %119, %266
  %127 = phi i32 [ %267, %266 ], [ %124, %119 ]
  %128 = phi i8 [ %269, %266 ], [ 0, %119 ]
  %129 = phi i32 [ %270, %266 ], [ 0, %119 ]
  %130 = load ptr, ptr %73, align 8, !tbaa !45
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, ptr %81, align 8, !tbaa !46
  store i32 %133, ptr %75, align 4, !tbaa !47
  store i32 1, ptr %76, align 8, !tbaa !48
  store i32 0, ptr %82, align 8, !tbaa !49
  br label %147

134:                                              ; preds = %126
  %135 = load i32, ptr %74, align 4, !tbaa !50
  store i32 %135, ptr %75, align 4, !tbaa !47
  store i32 %135, ptr %76, align 8, !tbaa !48
  %136 = load ptr, ptr %77, align 8, !tbaa !51
  %137 = sext i32 %129 to i64
  %138 = getelementptr inbounds i32, ptr %136, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !37
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %130, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !38
  store ptr %142, ptr %78, align 8, !tbaa !52
  %143 = load ptr, ptr %79, align 8, !tbaa !53
  %144 = getelementptr inbounds ptr, ptr %143, i64 %140
  %145 = load ptr, ptr %144, align 8, !tbaa !38
  store ptr %145, ptr %80, align 8, !tbaa !54
  store i32 0, ptr %82, align 8, !tbaa !49
  %146 = icmp sgt i32 %135, 0
  br i1 %146, label %147, label %266

147:                                              ; preds = %132, %134
  %148 = phi i32 [ %135, %134 ], [ 1, %132 ]
  %149 = phi i32 [ %135, %134 ], [ %133, %132 ]
  br label %150

150:                                              ; preds = %147, %256
  %151 = phi i32 [ %257, %256 ], [ %148, %147 ]
  %152 = phi i32 [ %261, %256 ], [ 0, %147 ]
  %153 = phi i32 [ %259, %256 ], [ %149, %147 ]
  %154 = phi i8 [ %260, %256 ], [ %128, %147 ]
  store i32 0, ptr %83, align 4, !tbaa !55
  %155 = icmp sgt i32 %153, 0
  br i1 %155, label %156, label %256

156:                                              ; preds = %150, %245
  %157 = phi i32 [ %248, %245 ], [ 0, %150 ]
  %158 = phi i8 [ %246, %245 ], [ %154, %150 ]
  %159 = load ptr, ptr %78, align 8, !tbaa !52
  %160 = icmp eq ptr %159, null
  br i1 %160, label %187, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %84, align 8, !tbaa !56
  store ptr %159, ptr %85, align 8, !tbaa !57
  %163 = call fastcc ptr @CCG_elem_no(ptr noundef %162, ptr noundef nonnull %159) #10
  store ptr %163, ptr %86, align 8, !tbaa !58
  %164 = getelementptr inbounds %struct.CCGKey, ptr %162, i64 0, i32 9
  %165 = load i32, ptr %164, align 4, !tbaa !59
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %161
  %168 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %162, ptr noundef nonnull %159) #10
  br label %169

169:                                              ; preds = %161, %167
  %170 = phi ptr [ %168, %167 ], [ null, %161 ]
  store ptr %170, ptr %87, align 8, !tbaa !61
  %171 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %162, ptr noundef nonnull %159) #10
  store ptr %171, ptr %78, align 8, !tbaa !52
  %172 = load ptr, ptr %80, align 8, !tbaa !54
  %173 = icmp eq ptr %172, null
  br i1 %173, label %225, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %82, align 8, !tbaa !49
  %176 = load i32, ptr %74, align 4, !tbaa !50
  %177 = mul nsw i32 %176, %175
  %178 = add nsw i32 %177, %157
  %179 = ashr i32 %178, 5
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, ptr %172, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !37
  %183 = and i32 %178, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %225, label %245

187:                                              ; preds = %156
  %188 = load ptr, ptr %88, align 8, !tbaa !62
  %189 = icmp eq ptr %188, null
  br i1 %189, label %207, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %89, align 8, !tbaa !63
  %192 = sext i32 %157 to i64
  %193 = getelementptr inbounds i32, ptr %191, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !37
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.MVert, ptr %188, i64 %195
  store ptr %196, ptr %90, align 8, !tbaa !64
  %197 = getelementptr inbounds %struct.MVert, ptr %188, i64 %195, i32 2
  %198 = load i8, ptr %197, align 2, !tbaa !65
  %199 = and i8 %198, 16
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %245

201:                                              ; preds = %190
  store ptr %196, ptr %85, align 8, !tbaa !57
  %202 = getelementptr inbounds %struct.MVert, ptr %188, i64 %195, i32 1
  store ptr %202, ptr %91, align 8, !tbaa !67
  %203 = load ptr, ptr %92, align 8, !tbaa !68
  %204 = icmp eq ptr %203, null
  br i1 %204, label %225, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds float, ptr %203, i64 %195
  br label %222

207:                                              ; preds = %187
  %208 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %93) #10, !range !69
  %209 = icmp eq i8 %208, 0
  %210 = select i1 %209, ptr %93, ptr %94
  %211 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %210) #10
  store ptr %211, ptr %95, align 8, !tbaa !70
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %210) #10
  %212 = load ptr, ptr %95, align 8, !tbaa !70
  %213 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %212) #10
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %245

215:                                              ; preds = %207
  %216 = getelementptr inbounds %struct.BMVert, ptr %212, i64 0, i32 2
  store ptr %216, ptr %85, align 8, !tbaa !57
  %217 = getelementptr inbounds %struct.BMVert, ptr %212, i64 0, i32 3
  store ptr %217, ptr %86, align 8, !tbaa !58
  %218 = load ptr, ptr %212, align 8, !tbaa !71
  %219 = load i32, ptr %96, align 8, !tbaa !74
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %218, i64 %220
  br label %222

222:                                              ; preds = %205, %215
  %223 = phi ptr [ %221, %215 ], [ %206, %205 ]
  %224 = phi ptr [ %216, %215 ], [ %196, %205 ]
  store ptr %223, ptr %87, align 8, !tbaa !61
  br label %225

225:                                              ; preds = %222, %201, %169, %174
  %226 = phi ptr [ %196, %201 ], [ %159, %169 ], [ %159, %174 ], [ %224, %222 ]
  %227 = call fastcc zeroext i8 @is_effected_lasso(ptr noundef nonnull %9, ptr noundef nonnull %226) #10, !range !69
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %245, label %229

229:                                              ; preds = %225
  %230 = icmp eq i8 %158, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %229
  %232 = load ptr, ptr %10, align 8, !tbaa !38
  %233 = getelementptr inbounds ptr, ptr %232, i64 %120
  %234 = load ptr, ptr %233, align 8, !tbaa !38
  %235 = call ptr @sculpt_undo_push_node(ptr noundef %34, ptr noundef %234, i32 noundef 2) #8
  %236 = load ptr, ptr %10, align 8, !tbaa !38
  %237 = getelementptr inbounds ptr, ptr %236, i64 %120
  %238 = load ptr, ptr %237, align 8, !tbaa !38
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %238) #8
  br i1 %67, label %239, label %243

239:                                              ; preds = %231
  %240 = load ptr, ptr %10, align 8, !tbaa !38
  %241 = getelementptr inbounds ptr, ptr %240, i64 %120
  %242 = load ptr, ptr %241, align 8, !tbaa !38
  call void @BKE_pbvh_node_mark_normals_update(ptr noundef %242) #8
  br label %243

243:                                              ; preds = %231, %239, %229
  %244 = load ptr, ptr %87, align 8, !tbaa !61
  call fastcc void @mask_flood_fill_set_elem(ptr noundef %244, i32 noundef %25, float noundef %27) #10
  br label %245

245:                                              ; preds = %225, %243, %207, %190, %174
  %246 = phi i8 [ %158, %174 ], [ 1, %243 ], [ %158, %225 ], [ %158, %190 ], [ %158, %207 ]
  %247 = load i32, ptr %83, align 4, !tbaa !55
  %248 = add nsw i32 %247, 1
  store i32 %248, ptr %83, align 4, !tbaa !55
  %249 = load i32, ptr %71, align 4, !tbaa !39
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %71, align 4, !tbaa !39
  %251 = load i32, ptr %75, align 4, !tbaa !47
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %156, label %253, !llvm.loop !128

253:                                              ; preds = %245
  %254 = load i32, ptr %82, align 8, !tbaa !49
  %255 = load i32, ptr %76, align 8, !tbaa !48
  br label %256

256:                                              ; preds = %253, %150
  %257 = phi i32 [ %151, %150 ], [ %255, %253 ]
  %258 = phi i32 [ %152, %150 ], [ %254, %253 ]
  %259 = phi i32 [ %153, %150 ], [ %251, %253 ]
  %260 = phi i8 [ %154, %150 ], [ %246, %253 ]
  %261 = add nsw i32 %258, 1
  store i32 %261, ptr %82, align 8, !tbaa !49
  %262 = icmp slt i32 %261, %257
  br i1 %262, label %150, label %263, !llvm.loop !129

263:                                              ; preds = %256
  %264 = load i32, ptr %12, align 8, !tbaa !43
  %265 = load i32, ptr %72, align 8, !tbaa !44
  br label %266

266:                                              ; preds = %263, %134
  %267 = phi i32 [ %127, %134 ], [ %265, %263 ]
  %268 = phi i32 [ %129, %134 ], [ %264, %263 ]
  %269 = phi i8 [ %128, %134 ], [ %260, %263 ]
  %270 = add nsw i32 %268, 1
  store i32 %270, ptr %12, align 8, !tbaa !43
  %271 = icmp slt i32 %270, %267
  br i1 %271, label %126, label %272, !llvm.loop !130

272:                                              ; preds = %266, %119
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %12) #9
  %273 = add nuw nsw i64 %120, 1
  %274 = load i32, ptr %11, align 4, !tbaa !37
  %275 = sext i32 %274 to i64
  %276 = icmp slt i64 %273, %275
  br i1 %276, label %119, label %277, !llvm.loop !131

277:                                              ; preds = %272, %116
  %278 = load ptr, ptr %10, align 8, !tbaa !38
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %281(ptr noundef nonnull %278) #8
  br label %282

282:                                              ; preds = %277, %280, %107, %107, %100
  %283 = add nuw nsw i32 %98, 1
  %284 = icmp eq i32 %98, %22
  br i1 %284, label %285, label %97, !llvm.loop !132

285:                                              ; preds = %282
  br i1 %67, label %286, label %287

286:                                              ; preds = %285
  call void @multires_mark_as_modified(ptr noundef %34, i32 noundef 1) #8
  br label %287

287:                                              ; preds = %286, %285
  call void @sculpt_undo_push_end() #8
  %288 = load ptr, ptr %28, align 8, !tbaa !101
  call void @ED_region_tag_redraw(ptr noundef %288) #8
  %289 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %289(ptr noundef nonnull %13) #8
  %290 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %291 = load ptr, ptr %56, align 8, !tbaa !125
  call void %290(ptr noundef %291) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %292

292:                                              ; preds = %2, %287
  %293 = phi i32 [ 4, %287 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %293
}

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !133
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @isect_point_planes_v3(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fill_poly_v2i_n(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mask_lasso_px_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.LassoMaskData, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !122
  %6 = mul nsw i32 %5, %1
  %7 = add nsw i32 %6, %0
  %8 = and i32 %7, 31
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.LassoMaskData, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = ashr i32 %7, 5
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !37
  %16 = or i32 %9, %15
  store i32 %16, ptr %14, align 4, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_effected_lasso(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !127
  %7 = trunc i32 %6 to i8
  call void @flip_v3_v3(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext %7) #8
  %8 = load ptr, ptr %0, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 1
  call void @ED_view3d_project_float_v2_m4(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %11) #8
  %12 = load float, ptr %3, align 4, !tbaa !112
  %13 = fptosi float %12 to i16
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !121
  %17 = icmp sgt i32 %16, %14
  br i1 %17, label %56, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !112
  %21 = fptosi float %20 to i16
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 4, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !124
  %25 = icmp sgt i32 %24, %22
  br i1 %25, label %56, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !120
  %29 = icmp sgt i32 %28, %14
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 4, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !123
  %33 = icmp sgt i32 %32, %22
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = trunc i32 %16 to i16
  %36 = sub i16 %13, %35
  %37 = trunc i32 %24 to i16
  %38 = sub i16 %21, %37
  %39 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !125
  %41 = sext i16 %38 to i32
  %42 = getelementptr inbounds %struct.LassoMaskData, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !122
  %44 = mul nsw i32 %43, %41
  %45 = sext i16 %36 to i32
  %46 = add nsw i32 %44, %45
  %47 = ashr i32 %46, 5
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %40, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !37
  %51 = and i32 %46, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %2, %18, %26, %30, %34
  %57 = phi i8 [ %55, %34 ], [ 0, %30 ], [ 0, %26 ], [ 0, %18 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i8 %57
}

; Function Attrs: optsize
declare void @flip_v3_v3(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !7, i64 16}
!20 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !21, i64 32, !21, i64 36, !21, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !21, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !22, i64 64, !25, i64 168, !21, i64 336, !21, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !21, i64 352, !21, i64 356, !21, i64 360, !21, i64 364, !21, i64 368, !21, i64 372, !21, i64 376, !21, i64 380, !21, i64 384, !21, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !24, i64 448, !24, i64 452, !24, i64 456, !24, i64 460, !12, i64 464, !12, i64 466, !24, i64 468, !21, i64 472, !21, i64 476, !26, i64 480, !27, i64 608}
!21 = !{!"float", !8, i64 0}
!22 = !{!"ImagePaintSettings", !23, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !24, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !21, i64 100}
!23 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !24, i64 28, !24, i64 32, !24, i64 36}
!24 = !{!"int", !8, i64 0}
!25 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !21, i64 128, !21, i64 132, !24, i64 136, !24, i64 140, !24, i64 144, !24, i64 148, !7, i64 152, !7, i64 160}
!26 = !{!"UnifiedPaintSettings", !24, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !8, i64 16, !8, i64 28, !24, i64 40, !8, i64 44, !21, i64 52, !24, i64 56, !24, i64 60, !8, i64 64, !8, i64 65, !21, i64 72, !8, i64 76, !24, i64 84, !21, i64 88, !8, i64 92, !8, i64 100, !24, i64 108, !7, i64 112, !21, i64 120, !24, i64 124}
!27 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !8, i64 20, !8, i64 21, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36}
!28 = !{!29, !7, i64 112}
!29 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!30 = !{!31, !7, i64 128}
!31 = !{!"Object", !32, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !24, i64 140, !24, i64 144, !24, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !33, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !24, i64 432, !24, i64 436, !7, i64 440, !7, i64 448, !24, i64 456, !24, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !21, i64 616, !21, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !24, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !24, i64 968, !24, i64 972, !24, i64 976, !24, i64 980, !24, i64 984, !21, i64 988, !21, i64 992, !21, i64 996, !21, i64 1000, !21, i64 1004, !21, i64 1008, !21, i64 1012, !21, i64 1016, !21, i64 1020, !21, i64 1024, !21, i64 1028, !21, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !21, i64 1048, !21, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !21, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !24, i64 1144, !24, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !21, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !34, i64 1304, !34, i64 1312, !24, i64 1320, !24, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!32 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !24, i64 100, !24, i64 104, !24, i64 108, !7, i64 112}
!33 = !{!"bAnimVizSettings", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44}
!34 = !{!"long", !8, i64 0}
!35 = !{!36, !7, i64 104}
!36 = !{!"SculptSession", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !24, i64 32, !24, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !24, i64 80, !24, i64 84, !8, i64 88, !7, i64 96, !7, i64 104, !8, i64 112, !8, i64 113, !7, i64 120, !7, i64 128, !7, i64 136, !8, i64 144, !24, i64 148, !7, i64 152, !24, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 204, !8, i64 216, !24, i64 228}
!37 = !{!24, !24, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!40, !24, i64 20}
!40 = !{!"PBVHVertexIter", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !24, i64 72, !24, i64 76, !7, i64 80, !24, i64 88, !7, i64 96, !7, i64 104, !41, i64 112, !41, i64 136, !7, i64 160, !24, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216}
!41 = !{!"GSetIterator", !42, i64 0}
!42 = !{!"GHashIterator", !7, i64 0, !7, i64 8, !24, i64 16}
!43 = !{!40, !24, i64 0}
!44 = !{!40, !24, i64 72}
!45 = !{!40, !7, i64 24}
!46 = !{!40, !24, i64 88}
!47 = !{!40, !24, i64 4}
!48 = !{!40, !24, i64 8}
!49 = !{!40, !24, i64 16}
!50 = !{!40, !24, i64 76}
!51 = !{!40, !7, i64 64}
!52 = !{!40, !7, i64 32}
!53 = !{!40, !7, i64 48}
!54 = !{!40, !7, i64 56}
!55 = !{!40, !24, i64 12}
!56 = !{!40, !7, i64 40}
!57 = !{!40, !7, i64 192}
!58 = !{!40, !7, i64 208}
!59 = !{!60, !24, i64 36}
!60 = !{!"CCGKey", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36}
!61 = !{!40, !7, i64 216}
!62 = !{!40, !7, i64 80}
!63 = !{!40, !7, i64 96}
!64 = !{!40, !7, i64 176}
!65 = !{!66, !8, i64 18}
!66 = !{!"MVert", !8, i64 0, !8, i64 12, !8, i64 18, !8, i64 19}
!67 = !{!40, !7, i64 200}
!68 = !{!40, !7, i64 104}
!69 = !{i8 0, i8 2}
!70 = !{!40, !7, i64 184}
!71 = !{!72, !7, i64 0}
!72 = !{!"BMVert", !73, i64 0, !7, i64 16, !8, i64 24, !8, i64 36, !7, i64 48}
!73 = !{!"BMHeader", !7, i64 0, !24, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!74 = !{!40, !24, i64 168}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !76}
!80 = !{!81, !7, i64 0}
!81 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!82 = !{!83, !7, i64 264}
!83 = !{!"Scene", !32, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !24, i64 232, !24, i64 236, !24, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !84, i64 280, !93, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !24, i64 4380, !10, i64 4384, !94, i64 4400, !95, i64 4416, !98, i64 4600, !7, i64 4608, !99, i64 4616, !7, i64 4640, !34, i64 4648, !34, i64 4656, !86, i64 4664, !87, i64 4824, !100, i64 4888, !7, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !7, i64 248, !7, i64 256, !88, i64 264, !89, i64 328, !24, i64 400, !24, i64 404, !24, i64 408, !21, i64 412, !24, i64 416, !24, i64 420, !24, i64 424, !24, i64 428, !12, i64 432, !12, i64 434, !21, i64 436, !21, i64 440, !21, i64 444, !21, i64 448, !21, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !24, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !24, i64 484, !24, i64 488, !12, i64 492, !12, i64 494, !24, i64 496, !24, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !24, i64 516, !24, i64 520, !24, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !90, i64 544, !90, i64 560, !91, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !21, i64 612, !21, i64 616, !21, i64 620, !21, i64 624, !24, i64 628, !21, i64 632, !21, i64 636, !21, i64 640, !21, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !21, i64 660, !21, i64 664, !12, i64 668, !12, i64 670, !21, i64 672, !21, i64 676, !8, i64 680, !24, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !24, i64 2520, !12, i64 2524, !12, i64 2526, !21, i64 2528, !21, i64 2532, !12, i64 2536, !12, i64 2538, !21, i64 2540, !12, i64 2544, !12, i64 2546, !24, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !21, i64 2560, !21, i64 2564, !7, i64 2568, !24, i64 2576, !21, i64 2580, !8, i64 2584, !92, i64 2616, !24, i64 3976, !24, i64 3980}
!85 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !21, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !24, i64 0, !24, i64 4, !8, i64 8, !8, i64 72, !21, i64 136, !21, i64 140, !7, i64 144, !7, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!88 = !{!"QuicktimeCodecSettings", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !12, i64 48, !12, i64 50, !24, i64 52, !24, i64 56, !24, i64 60}
!89 = !{!"FFMpegCodecData", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !21, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !24, i64 52, !24, i64 56, !24, i64 60, !7, i64 64}
!90 = !{!"rctf", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!91 = !{!"rcti", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!92 = !{!"BakeData", !85, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !21, i64 1280, !21, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!93 = !{!"AudioData", !24, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !24, i64 16, !12, i64 20, !12, i64 22, !21, i64 24, !21, i64 28}
!94 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!95 = !{!"GameData", !94, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !96, i64 40, !12, i64 64, !12, i64 66, !21, i64 68, !97, i64 72, !21, i64 128, !21, i64 132, !24, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !21, i64 164, !21, i64 168, !21, i64 172, !21, i64 176, !21, i64 180}
!96 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !21, i64 8, !21, i64 12, !7, i64 16}
!97 = !{!"RecastData", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !24, i64 40, !21, i64 44, !21, i64 48, !12, i64 52, !12, i64 54}
!98 = !{!"UnitSettings", !21, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!99 = !{!"PhysicsSettings", !8, i64 0, !24, i64 12, !24, i64 16, !24, i64 20}
!100 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!101 = !{!81, !7, i64 24}
!102 = !{!81, !7, i64 8}
!103 = !{!104, !24, i64 36}
!104 = !{!"Sculpt", !23, i64 0, !24, i64 40, !8, i64 44, !21, i64 56, !24, i64 60, !21, i64 64, !21, i64 68, !7, i64 72, !7, i64 80}
!105 = !{!81, !7, i64 40}
!106 = distinct !{!106, !76}
!107 = distinct !{!107, !76}
!108 = distinct !{!108, !76}
!109 = distinct !{!109, !76}
!110 = distinct !{!110, !76}
!111 = distinct !{!111, !76}
!112 = !{!21, !21, i64 0}
!113 = !{!60, !24, i64 20}
!114 = !{!60, !24, i64 24}
!115 = !{!73, !8, i64 13}
!116 = !{!6, !7, i64 48}
!117 = !{!6, !7, i64 64}
!118 = !{!119, !7, i64 0}
!119 = !{!"LassoMaskData", !7, i64 0, !8, i64 8, !7, i64 72, !24, i64 80, !91, i64 84, !24, i64 100}
!120 = !{!119, !24, i64 88}
!121 = !{!119, !24, i64 84}
!122 = !{!119, !24, i64 80}
!123 = !{!119, !24, i64 96}
!124 = !{!119, !24, i64 92}
!125 = !{!119, !7, i64 72}
!126 = distinct !{!126, !76}
!127 = !{!119, !24, i64 100}
!128 = distinct !{!128, !76}
!129 = distinct !{!129, !76}
!130 = distinct !{!130, !76}
!131 = distinct !{!131, !76}
!132 = distinct !{!132, !76}
!133 = !{!60, !24, i64 4}
!134 = !{!42, !7, i64 8}
!135 = !{!136, !7, i64 8}
!136 = !{!"_gh_Entry", !7, i64 0, !7, i64 8, !7, i64 16}
