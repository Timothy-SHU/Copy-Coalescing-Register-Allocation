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
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
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

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_mask_flood_fill(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_flood_fill_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @mode_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, float noundef 0.000000e+00, float noundef 1.000000e+00) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_flood_fill_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %9 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.3) #5
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.5) #5
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %7, ptr noundef %11, ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %17 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.SculptSession, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = tail call i32 @BKE_pbvh_type(ptr noundef %20) #5
  %22 = icmp eq i32 %21, 1
  call void @BKE_pbvh_search_gather(ptr noundef %20, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.13) #5
  %23 = load i32, ptr %4, align 4, !tbaa !66
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %223

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
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18, i32 0, i32 1
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %61 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19, i32 0, i32 1
  %62 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %63 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %64 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %65 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %66 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %67 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %68 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %69 = fsub float 1.000000e+00, %16
  br label %70

70:                                               ; preds = %25, %218
  %71 = phi i64 [ 0, %25 ], [ %219, %218 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #5
  %72 = load ptr, ptr %3, align 8, !tbaa !67
  %73 = getelementptr inbounds ptr, ptr %72, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !67
  %75 = call ptr @sculpt_undo_push_node(ptr noundef %8, ptr noundef %74, i32 noundef 2) #5
  %76 = load ptr, ptr %3, align 8, !tbaa !67
  %77 = getelementptr inbounds ptr, ptr %76, i64 %71
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  call void @pbvh_vertex_iter_init(ptr noundef %20, ptr noundef %78, ptr noundef nonnull %5, i32 noundef 1) #5
  store i32 0, ptr %26, align 4, !tbaa !68
  store i32 0, ptr %5, align 8, !tbaa !72
  %79 = load i32, ptr %27, align 8, !tbaa !73
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %210

81:                                               ; preds = %70, %205
  %82 = phi i32 [ %207, %205 ], [ 0, %70 ]
  %83 = load ptr, ptr %28, align 8, !tbaa !74
  %84 = icmp eq ptr %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %29, align 4, !tbaa !75
  store i32 %86, ptr %30, align 4, !tbaa !76
  store i32 %86, ptr %31, align 8, !tbaa !77
  %87 = load ptr, ptr %32, align 8, !tbaa !78
  %88 = sext i32 %82 to i64
  %89 = getelementptr inbounds i32, ptr %87, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !66
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %83, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !67
  store ptr %93, ptr %33, align 8, !tbaa !79
  %94 = load ptr, ptr %34, align 8, !tbaa !80
  %95 = getelementptr inbounds ptr, ptr %94, i64 %91
  %96 = load ptr, ptr %95, align 8, !tbaa !67
  store ptr %96, ptr %35, align 8, !tbaa !81
  br label %99

97:                                               ; preds = %81
  %98 = load i32, ptr %36, align 8, !tbaa !82
  store i32 %98, ptr %37, align 4, !tbaa !76
  store i32 1, ptr %38, align 8, !tbaa !77
  br label %99

99:                                               ; preds = %97, %85
  store i32 0, ptr %39, align 8, !tbaa !83
  %100 = load i32, ptr %40, align 8, !tbaa !77
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %205

102:                                              ; preds = %99, %200
  store i32 0, ptr %41, align 4, !tbaa !84
  %103 = load i32, ptr %42, align 4, !tbaa !76
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %200

105:                                              ; preds = %102, %193
  %106 = phi i32 [ %195, %193 ], [ 0, %102 ]
  %107 = load ptr, ptr %43, align 8, !tbaa !79
  %108 = icmp eq ptr %107, null
  br i1 %108, label %144, label %109

109:                                              ; preds = %105
  store ptr %107, ptr %45, align 8, !tbaa !85
  %110 = load ptr, ptr %44, align 8, !tbaa !86
  %111 = getelementptr inbounds %struct.CCGKey, ptr %110, i64 0, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !87
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %107, i64 %113
  store ptr %114, ptr %46, align 8, !tbaa !89
  %115 = getelementptr inbounds %struct.CCGKey, ptr %110, i64 0, i32 9
  %116 = load i32, ptr %115, align 4, !tbaa !90
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.CCGKey, ptr %110, i64 0, i32 6
  %120 = load i32, ptr %119, align 4, !tbaa !91
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %107, i64 %121
  br label %123

123:                                              ; preds = %109, %118
  %124 = phi ptr [ %122, %118 ], [ null, %109 ]
  store ptr %124, ptr %47, align 8, !tbaa !92
  %125 = getelementptr inbounds %struct.CCGKey, ptr %110, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !93
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %107, i64 %127
  store ptr %128, ptr %43, align 8, !tbaa !79
  %129 = load ptr, ptr %48, align 8, !tbaa !81
  %130 = icmp eq ptr %129, null
  br i1 %130, label %185, label %131

131:                                              ; preds = %123
  %132 = load i32, ptr %39, align 8, !tbaa !83
  %133 = load i32, ptr %49, align 4, !tbaa !75
  %134 = mul nsw i32 %133, %132
  %135 = add nsw i32 %134, %106
  %136 = ashr i32 %135, 5
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %129, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !66
  %140 = and i32 %135, 31
  %141 = shl nuw i32 1, %140
  %142 = and i32 %141, %139
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %185, label %193

144:                                              ; preds = %105
  %145 = load ptr, ptr %50, align 8, !tbaa !94
  %146 = icmp eq ptr %145, null
  br i1 %146, label %164, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %51, align 8, !tbaa !95
  %149 = sext i32 %106 to i64
  %150 = getelementptr inbounds i32, ptr %148, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !66
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.MVert, ptr %145, i64 %152
  store ptr %153, ptr %52, align 8, !tbaa !96
  %154 = getelementptr inbounds %struct.MVert, ptr %145, i64 %152, i32 2
  %155 = load i8, ptr %154, align 2, !tbaa !97
  %156 = and i8 %155, 16
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %193

158:                                              ; preds = %147
  store ptr %153, ptr %53, align 8, !tbaa !85
  %159 = getelementptr inbounds %struct.MVert, ptr %145, i64 %152, i32 1
  store ptr %159, ptr %54, align 8, !tbaa !99
  %160 = load ptr, ptr %55, align 8, !tbaa !100
  %161 = icmp eq ptr %160, null
  br i1 %161, label %185, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds float, ptr %160, i64 %152
  store ptr %163, ptr %56, align 8, !tbaa !92
  br label %185

164:                                              ; preds = %144
  %165 = load ptr, ptr %57, align 8, !tbaa !101
  %166 = icmp eq ptr %165, null
  %167 = load ptr, ptr %61, align 8
  %168 = select i1 %166, ptr %167, ptr %165
  %169 = select i1 %166, ptr %62, ptr %59
  %170 = select i1 %166, ptr %60, ptr %58
  %171 = getelementptr inbounds %struct._gh_Entry, ptr %168, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !102
  store ptr %172, ptr %169, align 8, !tbaa !104
  call void @BLI_ghashIterator_step(ptr noundef nonnull %170) #5
  %173 = load ptr, ptr %63, align 8, !tbaa !104
  %174 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 3
  %175 = load i8, ptr %174, align 1, !tbaa !105
  %176 = and i8 %175, 2
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %164
  %179 = getelementptr inbounds %struct.BMVert, ptr %173, i64 0, i32 2
  store ptr %179, ptr %64, align 8, !tbaa !85
  %180 = getelementptr inbounds %struct.BMVert, ptr %173, i64 0, i32 3
  store ptr %180, ptr %65, align 8, !tbaa !89
  %181 = load ptr, ptr %173, align 8, !tbaa !107
  %182 = load i32, ptr %66, align 8, !tbaa !109
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %181, i64 %183
  store ptr %184, ptr %67, align 8, !tbaa !92
  br label %185

185:                                              ; preds = %178, %162, %158, %123, %131
  %186 = load ptr, ptr %68, align 8, !tbaa !92
  switch i32 %14, label %193 [
    i32 0, label %191
    i32 1, label %187
    i32 2, label %188
  ]

187:                                              ; preds = %185
  br label %191

188:                                              ; preds = %185
  %189 = load float, ptr %186, align 4, !tbaa !110
  %190 = fsub float 1.000000e+00, %189
  br label %191

191:                                              ; preds = %185, %187, %188
  %192 = phi float [ %190, %188 ], [ %69, %187 ], [ %16, %185 ]
  store float %192, ptr %186, align 4, !tbaa !110
  br label %193

193:                                              ; preds = %191, %185, %164, %147, %131
  %194 = load i32, ptr %41, align 4, !tbaa !84
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %41, align 4, !tbaa !84
  %196 = load i32, ptr %26, align 4, !tbaa !68
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %26, align 4, !tbaa !68
  %198 = load i32, ptr %42, align 4, !tbaa !76
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %105, label %200, !llvm.loop !111

200:                                              ; preds = %193, %102
  %201 = load i32, ptr %39, align 8, !tbaa !83
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %39, align 8, !tbaa !83
  %203 = load i32, ptr %40, align 8, !tbaa !77
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %102, label %205, !llvm.loop !114

205:                                              ; preds = %200, %99
  %206 = load i32, ptr %5, align 8, !tbaa !72
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %5, align 8, !tbaa !72
  %208 = load i32, ptr %27, align 8, !tbaa !73
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %81, label %210, !llvm.loop !115

210:                                              ; preds = %205, %70
  %211 = load ptr, ptr %3, align 8, !tbaa !67
  %212 = getelementptr inbounds ptr, ptr %211, i64 %71
  %213 = load ptr, ptr %212, align 8, !tbaa !67
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %213) #5
  br i1 %22, label %214, label %218

214:                                              ; preds = %210
  %215 = load ptr, ptr %3, align 8, !tbaa !67
  %216 = getelementptr inbounds ptr, ptr %215, i64 %71
  %217 = load ptr, ptr %216, align 8, !tbaa !67
  call void @BKE_pbvh_node_mark_normals_update(ptr noundef %217) #5
  br label %218

218:                                              ; preds = %214, %210
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #5
  %219 = add nuw nsw i64 %71, 1
  %220 = load i32, ptr %4, align 4, !tbaa !66
  %221 = sext i32 %220 to i64
  %222 = icmp slt i64 %219, %221
  br i1 %222, label %70, label %223, !llvm.loop !116

223:                                              ; preds = %218, %2
  br i1 %22, label %224, label %225

224:                                              ; preds = %223
  call void @multires_mark_as_modified(ptr noundef %8, i32 noundef 1) #5
  br label %225

225:                                              ; preds = %224, %223
  call void @sculpt_undo_push_end() #5
  %226 = load ptr, ptr %3, align 8, !tbaa !67
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %229(ptr noundef nonnull %226) #5
  br label %230

230:                                              ; preds = %228, %225
  call void @ED_region_tag_redraw(ptr noundef %6) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 4
}

declare i32 @sculpt_mode_poll(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_sculpt_mask_box_select(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BoundBox, align 4
  %7 = alloca %struct.bglMats, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PBVHVertexIter, align 8
  %13 = load ptr, ptr %1, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %7) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %7, i8 0, i64 272, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  %18 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  %22 = getelementptr inbounds %struct.Paint, ptr %17, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !140
  %24 = and i32 %23, 7
  %25 = icmp eq i8 %3, 0
  %26 = select i1 %25, float 0.000000e+00, float 1.000000e+00
  %27 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !142
  call void @view3d_get_transformation(ptr noundef %19, ptr noundef %28, ptr noundef %21, ptr noundef nonnull %7) #5
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %2) #5
  call void @negate_m4(ptr noundef nonnull %8) #5
  call void @BKE_sculpt_update_mesh_elements(ptr noundef %13, ptr noundef %17, ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %29 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.SculptSession, ptr %30, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = call i32 @BKE_pbvh_type(ptr noundef %32) #5
  %34 = icmp eq i32 %33, 1
  call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.8) #5
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
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 1
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 2
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 4
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 2
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 3
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 1
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 7
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 8
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 24
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 26
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 27
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 10
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 13
  %61 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 14
  %62 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 16
  %63 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 22
  %64 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 24
  %65 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 25
  %66 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 17
  %67 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 27
  %68 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 18, i32 0, i32 1
  %69 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 18
  %70 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 23
  %71 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 19
  %72 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 19, i32 0, i32 1
  %73 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 23
  %74 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 23
  %75 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 24
  %76 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 26
  %77 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 21
  %78 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 27
  %79 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 24
  %80 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 27
  br label %81

81:                                               ; preds = %5, %288
  %82 = phi i32 [ 0, %5 ], [ %289, %288 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = and i32 %82, %24
  %86 = icmp ne i32 %85, 0
  %87 = icmp ne i32 %82, 3
  %88 = or i1 %35, %87
  %89 = and i1 %86, %88
  br i1 %89, label %90, label %288

90:                                               ; preds = %84
  br i1 %36, label %91, label %92

91:                                               ; preds = %90
  switch i32 %82, label %92 [
    i32 5, label %288
    i32 3, label %288
  ]

92:                                               ; preds = %91, %90, %81
  %93 = and i32 %82, 1
  %94 = icmp eq i32 %93, 0
  %95 = and i32 %82, 2
  %96 = icmp eq i32 %95, 0
  %97 = and i32 %82, 4
  %98 = icmp eq i32 %97, 0
  br label %99

99:                                               ; preds = %92, %99
  %100 = phi i64 [ 0, %92 ], [ %119, %99 ]
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 %100
  %102 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 %100
  %103 = load float, ptr %102, align 16, !tbaa !110
  %104 = fneg float %103
  %105 = select i1 %94, float %103, float %104
  store float %105, ptr %101, align 16, !tbaa !110
  %106 = getelementptr inbounds float, ptr %102, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !110
  %108 = fneg float %107
  %109 = select i1 %96, float %107, float %108
  %110 = getelementptr inbounds float, ptr %101, i64 1
  store float %109, ptr %110, align 4, !tbaa !110
  %111 = getelementptr inbounds float, ptr %102, i64 2
  %112 = load float, ptr %111, align 8, !tbaa !110
  %113 = fneg float %112
  %114 = select i1 %98, float %112, float %113
  %115 = getelementptr inbounds float, ptr %101, i64 2
  store float %114, ptr %115, align 8, !tbaa !110
  %116 = getelementptr inbounds float, ptr %102, i64 3
  %117 = load float, ptr %116, align 4, !tbaa !110
  %118 = getelementptr inbounds float, ptr %101, i64 3
  store float %117, ptr %118, align 4, !tbaa !110
  %119 = add nuw nsw i64 %100, 1
  %120 = icmp eq i64 %119, 4
  br i1 %120, label %121, label %99, !llvm.loop !143

121:                                              ; preds = %99
  call void @BKE_pbvh_search_gather(ptr noundef %32, ptr noundef nonnull @BKE_pbvh_node_planes_contain_AABB, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #5
  %122 = load i32, ptr %11, align 4, !tbaa !66
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %283

124:                                              ; preds = %121, %278
  %125 = phi i64 [ %279, %278 ], [ 0, %121 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %12) #5
  %126 = load ptr, ptr %10, align 8, !tbaa !67
  %127 = getelementptr inbounds ptr, ptr %126, i64 %125
  %128 = load ptr, ptr %127, align 8, !tbaa !67
  call void @pbvh_vertex_iter_init(ptr noundef %32, ptr noundef %128, ptr noundef nonnull %12, i32 noundef 1) #5
  store i32 0, ptr %37, align 4, !tbaa !68
  store i32 0, ptr %12, align 8, !tbaa !72
  %129 = load i32, ptr %38, align 8, !tbaa !73
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %278

131:                                              ; preds = %124, %272
  %132 = phi i8 [ %273, %272 ], [ 0, %124 ]
  %133 = phi i32 [ %275, %272 ], [ 0, %124 ]
  %134 = load ptr, ptr %39, align 8, !tbaa !74
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %40, align 4, !tbaa !75
  store i32 %137, ptr %41, align 4, !tbaa !76
  store i32 %137, ptr %42, align 8, !tbaa !77
  %138 = load ptr, ptr %43, align 8, !tbaa !78
  %139 = sext i32 %133 to i64
  %140 = getelementptr inbounds i32, ptr %138, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !66
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %134, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !67
  store ptr %144, ptr %44, align 8, !tbaa !79
  %145 = load ptr, ptr %45, align 8, !tbaa !80
  %146 = getelementptr inbounds ptr, ptr %145, i64 %142
  %147 = load ptr, ptr %146, align 8, !tbaa !67
  store ptr %147, ptr %46, align 8, !tbaa !81
  br label %150

148:                                              ; preds = %131
  %149 = load i32, ptr %47, align 8, !tbaa !82
  store i32 %149, ptr %48, align 4, !tbaa !76
  store i32 1, ptr %49, align 8, !tbaa !77
  br label %150

150:                                              ; preds = %148, %136
  store i32 0, ptr %50, align 8, !tbaa !83
  %151 = load i32, ptr %51, align 8, !tbaa !77
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %272

153:                                              ; preds = %150, %266
  %154 = phi i8 [ %267, %266 ], [ %132, %150 ]
  store i32 0, ptr %52, align 4, !tbaa !84
  %155 = load i32, ptr %53, align 4, !tbaa !76
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %266

157:                                              ; preds = %153, %258
  %158 = phi i32 [ %261, %258 ], [ 0, %153 ]
  %159 = phi i8 [ %259, %258 ], [ %154, %153 ]
  %160 = load ptr, ptr %54, align 8, !tbaa !79
  %161 = icmp eq ptr %160, null
  br i1 %161, label %197, label %162

162:                                              ; preds = %157
  store ptr %160, ptr %56, align 8, !tbaa !85
  %163 = load ptr, ptr %55, align 8, !tbaa !86
  %164 = getelementptr inbounds %struct.CCGKey, ptr %163, i64 0, i32 5
  %165 = load i32, ptr %164, align 4, !tbaa !87
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %160, i64 %166
  store ptr %167, ptr %57, align 8, !tbaa !89
  %168 = getelementptr inbounds %struct.CCGKey, ptr %163, i64 0, i32 9
  %169 = load i32, ptr %168, align 4, !tbaa !90
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.CCGKey, ptr %163, i64 0, i32 6
  %173 = load i32, ptr %172, align 4, !tbaa !91
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %160, i64 %174
  br label %176

176:                                              ; preds = %162, %171
  %177 = phi ptr [ %175, %171 ], [ null, %162 ]
  store ptr %177, ptr %58, align 8, !tbaa !92
  %178 = getelementptr inbounds %struct.CCGKey, ptr %163, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !93
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %160, i64 %180
  store ptr %181, ptr %54, align 8, !tbaa !79
  %182 = load ptr, ptr %59, align 8, !tbaa !81
  %183 = icmp eq ptr %182, null
  br i1 %183, label %238, label %184

184:                                              ; preds = %176
  %185 = load i32, ptr %50, align 8, !tbaa !83
  %186 = load i32, ptr %60, align 4, !tbaa !75
  %187 = mul nsw i32 %186, %185
  %188 = add nsw i32 %187, %158
  %189 = ashr i32 %188, 5
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, ptr %182, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !66
  %193 = and i32 %188, 31
  %194 = shl nuw i32 1, %193
  %195 = and i32 %194, %192
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %238, label %258

197:                                              ; preds = %157
  %198 = load ptr, ptr %61, align 8, !tbaa !94
  %199 = icmp eq ptr %198, null
  br i1 %199, label %217, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %62, align 8, !tbaa !95
  %202 = sext i32 %158 to i64
  %203 = getelementptr inbounds i32, ptr %201, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !66
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.MVert, ptr %198, i64 %205
  store ptr %206, ptr %63, align 8, !tbaa !96
  %207 = getelementptr inbounds %struct.MVert, ptr %198, i64 %205, i32 2
  %208 = load i8, ptr %207, align 2, !tbaa !97
  %209 = and i8 %208, 16
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %258

211:                                              ; preds = %200
  store ptr %206, ptr %64, align 8, !tbaa !85
  %212 = getelementptr inbounds %struct.MVert, ptr %198, i64 %205, i32 1
  store ptr %212, ptr %65, align 8, !tbaa !99
  %213 = load ptr, ptr %66, align 8, !tbaa !100
  %214 = icmp eq ptr %213, null
  br i1 %214, label %238, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds float, ptr %213, i64 %205
  store ptr %216, ptr %67, align 8, !tbaa !92
  br label %238

217:                                              ; preds = %197
  %218 = load ptr, ptr %68, align 8, !tbaa !101
  %219 = icmp eq ptr %218, null
  %220 = load ptr, ptr %72, align 8
  %221 = select i1 %219, ptr %220, ptr %218
  %222 = select i1 %219, ptr %73, ptr %70
  %223 = select i1 %219, ptr %71, ptr %69
  %224 = getelementptr inbounds %struct._gh_Entry, ptr %221, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !102
  store ptr %225, ptr %222, align 8, !tbaa !104
  call void @BLI_ghashIterator_step(ptr noundef nonnull %223) #5
  %226 = load ptr, ptr %74, align 8, !tbaa !104
  %227 = getelementptr inbounds %struct.BMHeader, ptr %226, i64 0, i32 3
  %228 = load i8, ptr %227, align 1, !tbaa !105
  %229 = and i8 %228, 2
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %258

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 2
  store ptr %232, ptr %75, align 8, !tbaa !85
  %233 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 3
  store ptr %233, ptr %76, align 8, !tbaa !89
  %234 = load ptr, ptr %226, align 8, !tbaa !107
  %235 = load i32, ptr %77, align 8, !tbaa !109
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %234, i64 %236
  store ptr %237, ptr %78, align 8, !tbaa !92
  br label %238

238:                                              ; preds = %231, %215, %211, %176, %184
  %239 = load ptr, ptr %79, align 8, !tbaa !85
  %240 = call zeroext i8 @isect_point_planes_v3(ptr noundef nonnull %9, i32 noundef 4, ptr noundef %239) #5
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %258, label %242

242:                                              ; preds = %238
  %243 = icmp eq i8 %159, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %242
  %245 = load ptr, ptr %10, align 8, !tbaa !67
  %246 = getelementptr inbounds ptr, ptr %245, i64 %125
  %247 = load ptr, ptr %246, align 8, !tbaa !67
  %248 = call ptr @sculpt_undo_push_node(ptr noundef %21, ptr noundef %247, i32 noundef 2) #5
  %249 = load ptr, ptr %10, align 8, !tbaa !67
  %250 = getelementptr inbounds ptr, ptr %249, i64 %125
  %251 = load ptr, ptr %250, align 8, !tbaa !67
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %251) #5
  br i1 %34, label %252, label %256

252:                                              ; preds = %244
  %253 = load ptr, ptr %10, align 8, !tbaa !67
  %254 = getelementptr inbounds ptr, ptr %253, i64 %125
  %255 = load ptr, ptr %254, align 8, !tbaa !67
  call void @BKE_pbvh_node_mark_normals_update(ptr noundef %255) #5
  br label %256

256:                                              ; preds = %244, %252, %242
  %257 = load ptr, ptr %80, align 8, !tbaa !92
  store float %26, ptr %257, align 4, !tbaa !110
  br label %258

258:                                              ; preds = %238, %256, %217, %200, %184
  %259 = phi i8 [ %159, %184 ], [ 1, %256 ], [ %159, %238 ], [ %159, %200 ], [ %159, %217 ]
  %260 = load i32, ptr %52, align 4, !tbaa !84
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr %52, align 4, !tbaa !84
  %262 = load i32, ptr %37, align 4, !tbaa !68
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %37, align 4, !tbaa !68
  %264 = load i32, ptr %53, align 4, !tbaa !76
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %157, label %266, !llvm.loop !144

266:                                              ; preds = %258, %153
  %267 = phi i8 [ %154, %153 ], [ %259, %258 ]
  %268 = load i32, ptr %50, align 8, !tbaa !83
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %50, align 8, !tbaa !83
  %270 = load i32, ptr %51, align 8, !tbaa !77
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %153, label %272, !llvm.loop !145

272:                                              ; preds = %266, %150
  %273 = phi i8 [ %132, %150 ], [ %267, %266 ]
  %274 = load i32, ptr %12, align 8, !tbaa !72
  %275 = add nsw i32 %274, 1
  store i32 %275, ptr %12, align 8, !tbaa !72
  %276 = load i32, ptr %38, align 8, !tbaa !73
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %131, label %278, !llvm.loop !146

278:                                              ; preds = %272, %124
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %12) #5
  %279 = add nuw nsw i64 %125, 1
  %280 = load i32, ptr %11, align 4, !tbaa !66
  %281 = sext i32 %280 to i64
  %282 = icmp slt i64 %279, %281
  br i1 %282, label %124, label %283, !llvm.loop !147

283:                                              ; preds = %278, %121
  %284 = load ptr, ptr %10, align 8, !tbaa !67
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %287(ptr noundef nonnull %284) #5
  br label %288

288:                                              ; preds = %283, %286, %91, %91, %84
  %289 = add nuw nsw i32 %82, 1
  %290 = icmp eq i32 %82, %24
  br i1 %290, label %291, label %81, !llvm.loop !148

291:                                              ; preds = %288
  br i1 %34, label %292, label %293

292:                                              ; preds = %291
  call void @multires_mark_as_modified(ptr noundef %21, i32 noundef 1) #5
  br label %293

293:                                              ; preds = %292, %291
  call void @sculpt_undo_push_end() #5
  call void @ED_region_tag_redraw(ptr noundef %19) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %21) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #5
  ret i32 4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @negate_m4(ptr noundef) local_unnamed_addr #1

declare void @BKE_sculpt_update_mesh_elements(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @BKE_pbvh_type(ptr noundef) local_unnamed_addr #1

declare void @sculpt_undo_push_begin(ptr noundef) local_unnamed_addr #1

declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_pbvh_node_planes_contain_AABB(ptr noundef, ptr noundef) #1

declare void @pbvh_vertex_iter_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @sculpt_undo_push_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_pbvh_node_mark_redraw(ptr noundef) local_unnamed_addr #1

declare void @BKE_pbvh_node_mark_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @multires_mark_as_modified(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sculpt_undo_push_end() local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_mask_lasso_gesture(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !149
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_mask_gesture_lasso_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_property(ptr noundef %10, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 0) #5
  tail call void @RNA_def_property_struct_runtime(ptr noundef %11, ptr noundef nonnull @RNA_OperatorMousePath) #5
  %12 = load ptr, ptr %9, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @mode_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %14 = load ptr, ptr %9, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.5, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, float noundef 0.000000e+00, float noundef 1.000000e+00) #5
  ret void
}

declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @paint_mask_gesture_lasso_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca %struct.BoundBox, align 4
  %9 = alloca %struct.bglMats, align 8
  %10 = alloca %struct.ViewContext, align 8
  %11 = alloca %struct.LassoMaskData, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.PBVHVertexIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %15 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %385, label %17

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %9) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %9, i8 0, i64 272, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %11) #5
  %18 = call ptr @CTX_data_scene(ptr noundef %0) #5
  %19 = call ptr @CTX_data_tool_settings(ptr noundef %0) #5
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.Paint, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !140
  %24 = and i32 %23, 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = call i32 @RNA_enum_get(ptr noundef %26, ptr noundef nonnull @.str.3) #5
  %28 = load ptr, ptr %25, align 8, !tbaa !57
  %29 = call float @RNA_float_get(ptr noundef %28, ptr noundef nonnull @.str.5) #5
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %10) #5
  %30 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  %32 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !142
  %34 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  call void @view3d_get_transformation(ptr noundef %31, ptr noundef %33, ptr noundef %35, ptr noundef nonnull %9) #5
  store ptr %10, ptr %11, align 8, !tbaa !151
  %36 = load ptr, ptr %34, align 8, !tbaa !139
  %37 = load ptr, ptr %32, align 8, !tbaa !142
  %38 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 1
  call void @ED_view3d_ob_project_mat_get(ptr noundef %37, ptr noundef %36, ptr noundef nonnull %38) #5
  %39 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 4
  %40 = load i32, ptr %5, align 4, !tbaa !66
  call void @BLI_lasso_boundbox(ptr noundef nonnull %39, ptr noundef nonnull %15, i32 noundef %40) #5
  %41 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 4, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !153
  %43 = load i32, ptr %39, align 4, !tbaa !154
  %44 = sub nsw i32 %42, %43
  %45 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 3
  store i32 %44, ptr %45, align 8, !tbaa !155
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 4, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !156
  %49 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 4, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !157
  %51 = sub nsw i32 %48, %50
  %52 = mul nsw i32 %51, %44
  %53 = ashr i32 %52, 5
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = call ptr %46(i64 noundef %56, ptr noundef nonnull @__func__.paint_mask_gesture_lasso_exec) #5
  %58 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !158
  %59 = load i32, ptr %39, align 4, !tbaa !154
  %60 = load i32, ptr %49, align 4, !tbaa !157
  %61 = load i32, ptr %41, align 8, !tbaa !153
  %62 = load i32, ptr %47, align 8, !tbaa !156
  %63 = load i32, ptr %5, align 4, !tbaa !66
  call void @fill_poly_v2i_n(i32 noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef %62, ptr noundef nonnull %15, i32 noundef %63, ptr noundef nonnull @mask_lasso_px_cb, ptr noundef nonnull %11) #5
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %39) #5
  call void @negate_m4(ptr noundef nonnull %6) #5
  call void @BKE_sculpt_update_mesh_elements(ptr noundef %18, ptr noundef %21, ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %64 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = getelementptr inbounds %struct.SculptSession, ptr %65, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !64
  %68 = call i32 @BKE_pbvh_type(ptr noundef %67) #5
  %69 = icmp eq i32 %68, 1
  call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.22) #5
  %70 = icmp ne i32 %24, 5
  %71 = icmp eq i32 %24, 6
  %72 = getelementptr inbounds %struct.LassoMaskData, ptr %11, i64 0, i32 5
  %73 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 5
  %74 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 12
  %75 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 6
  %76 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 13
  %77 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 1
  %78 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 2
  %79 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 11
  %80 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 7
  %81 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 9
  %82 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 10
  %83 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 15
  %84 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 1
  %85 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 2
  %86 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 4
  %87 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 2
  %88 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 3
  %89 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 1
  %90 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 7
  %91 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 8
  %92 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 24
  %93 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 26
  %94 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 27
  %95 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 10
  %96 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 13
  %97 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 14
  %98 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 16
  %99 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 22
  %100 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 24
  %101 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 25
  %102 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 17
  %103 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 27
  %104 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 18, i32 0, i32 1
  %105 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 18
  %106 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 23
  %107 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 19
  %108 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 19, i32 0, i32 1
  %109 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 23
  %110 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 23
  %111 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 24
  %112 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 26
  %113 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 21
  %114 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 27
  %115 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 24
  %116 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %117 = getelementptr inbounds %struct.PBVHVertexIter, ptr %14, i64 0, i32 27
  %118 = fsub float 1.000000e+00, %29
  br label %119

119:                                              ; preds = %17, %375
  %120 = phi i32 [ 0, %17 ], [ %376, %375 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = and i32 %120, %24
  %124 = icmp ne i32 %123, 0
  %125 = icmp ne i32 %120, 3
  %126 = or i1 %70, %125
  %127 = and i1 %124, %126
  br i1 %127, label %128, label %375

128:                                              ; preds = %122
  br i1 %71, label %129, label %130

129:                                              ; preds = %128
  switch i32 %120, label %130 [
    i32 5, label %375
    i32 3, label %375
  ]

130:                                              ; preds = %129, %128, %119
  %131 = and i32 %120, 1
  %132 = icmp eq i32 %131, 0
  %133 = and i32 %120, 2
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %120, 4
  %136 = icmp eq i32 %135, 0
  br label %137

137:                                              ; preds = %130, %137
  %138 = phi i64 [ 0, %130 ], [ %157, %137 ]
  %139 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 %138
  %140 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 %138
  %141 = load float, ptr %140, align 16, !tbaa !110
  %142 = fneg float %141
  %143 = select i1 %132, float %141, float %142
  store float %143, ptr %139, align 16, !tbaa !110
  %144 = getelementptr inbounds float, ptr %140, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !110
  %146 = fneg float %145
  %147 = select i1 %134, float %145, float %146
  %148 = getelementptr inbounds float, ptr %139, i64 1
  store float %147, ptr %148, align 4, !tbaa !110
  %149 = getelementptr inbounds float, ptr %140, i64 2
  %150 = load float, ptr %149, align 8, !tbaa !110
  %151 = fneg float %150
  %152 = select i1 %136, float %150, float %151
  %153 = getelementptr inbounds float, ptr %139, i64 2
  store float %152, ptr %153, align 8, !tbaa !110
  %154 = getelementptr inbounds float, ptr %140, i64 3
  %155 = load float, ptr %154, align 4, !tbaa !110
  %156 = getelementptr inbounds float, ptr %139, i64 3
  store float %155, ptr %156, align 4, !tbaa !110
  %157 = add nuw nsw i64 %138, 1
  %158 = icmp eq i64 %157, 4
  br i1 %158, label %159, label %137, !llvm.loop !159

159:                                              ; preds = %137
  store i32 %120, ptr %72, align 4, !tbaa !160
  call void @BKE_pbvh_search_gather(ptr noundef %67, ptr noundef nonnull @BKE_pbvh_node_planes_contain_AABB, ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %13) #5
  %160 = load i32, ptr %13, align 4, !tbaa !66
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %370

162:                                              ; preds = %159, %365
  %163 = phi i64 [ %366, %365 ], [ 0, %159 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %14) #5
  %164 = load ptr, ptr %12, align 8, !tbaa !67
  %165 = getelementptr inbounds ptr, ptr %164, i64 %163
  %166 = load ptr, ptr %165, align 8, !tbaa !67
  call void @pbvh_vertex_iter_init(ptr noundef %67, ptr noundef %166, ptr noundef nonnull %14, i32 noundef 1) #5
  store i32 0, ptr %73, align 4, !tbaa !68
  store i32 0, ptr %14, align 8, !tbaa !72
  %167 = load i32, ptr %74, align 8, !tbaa !73
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %365

169:                                              ; preds = %162, %359
  %170 = phi i8 [ %360, %359 ], [ 0, %162 ]
  %171 = phi i32 [ %362, %359 ], [ 0, %162 ]
  %172 = load ptr, ptr %75, align 8, !tbaa !74
  %173 = icmp eq ptr %172, null
  br i1 %173, label %186, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %76, align 4, !tbaa !75
  store i32 %175, ptr %77, align 4, !tbaa !76
  store i32 %175, ptr %78, align 8, !tbaa !77
  %176 = load ptr, ptr %79, align 8, !tbaa !78
  %177 = sext i32 %171 to i64
  %178 = getelementptr inbounds i32, ptr %176, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !66
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %172, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !67
  store ptr %182, ptr %80, align 8, !tbaa !79
  %183 = load ptr, ptr %81, align 8, !tbaa !80
  %184 = getelementptr inbounds ptr, ptr %183, i64 %180
  %185 = load ptr, ptr %184, align 8, !tbaa !67
  store ptr %185, ptr %82, align 8, !tbaa !81
  br label %188

186:                                              ; preds = %169
  %187 = load i32, ptr %83, align 8, !tbaa !82
  store i32 %187, ptr %84, align 4, !tbaa !76
  store i32 1, ptr %85, align 8, !tbaa !77
  br label %188

188:                                              ; preds = %186, %174
  store i32 0, ptr %86, align 8, !tbaa !83
  %189 = load i32, ptr %87, align 8, !tbaa !77
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %359

191:                                              ; preds = %188, %353
  %192 = phi i8 [ %354, %353 ], [ %170, %188 ]
  store i32 0, ptr %88, align 4, !tbaa !84
  %193 = load i32, ptr %89, align 4, !tbaa !76
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %353

195:                                              ; preds = %191, %345
  %196 = phi i32 [ %348, %345 ], [ 0, %191 ]
  %197 = phi i8 [ %346, %345 ], [ %192, %191 ]
  %198 = load ptr, ptr %90, align 8, !tbaa !79
  %199 = icmp eq ptr %198, null
  br i1 %199, label %235, label %200

200:                                              ; preds = %195
  store ptr %198, ptr %92, align 8, !tbaa !85
  %201 = load ptr, ptr %91, align 8, !tbaa !86
  %202 = getelementptr inbounds %struct.CCGKey, ptr %201, i64 0, i32 5
  %203 = load i32, ptr %202, align 4, !tbaa !87
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %198, i64 %204
  store ptr %205, ptr %93, align 8, !tbaa !89
  %206 = getelementptr inbounds %struct.CCGKey, ptr %201, i64 0, i32 9
  %207 = load i32, ptr %206, align 4, !tbaa !90
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %200
  %210 = getelementptr inbounds %struct.CCGKey, ptr %201, i64 0, i32 6
  %211 = load i32, ptr %210, align 4, !tbaa !91
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %198, i64 %212
  br label %214

214:                                              ; preds = %200, %209
  %215 = phi ptr [ %213, %209 ], [ null, %200 ]
  store ptr %215, ptr %94, align 8, !tbaa !92
  %216 = getelementptr inbounds %struct.CCGKey, ptr %201, i64 0, i32 1
  %217 = load i32, ptr %216, align 4, !tbaa !93
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %198, i64 %218
  store ptr %219, ptr %90, align 8, !tbaa !79
  %220 = load ptr, ptr %95, align 8, !tbaa !81
  %221 = icmp eq ptr %220, null
  br i1 %221, label %276, label %222

222:                                              ; preds = %214
  %223 = load i32, ptr %86, align 8, !tbaa !83
  %224 = load i32, ptr %96, align 4, !tbaa !75
  %225 = mul nsw i32 %224, %223
  %226 = add nsw i32 %225, %196
  %227 = ashr i32 %226, 5
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, ptr %220, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !66
  %231 = and i32 %226, 31
  %232 = shl nuw i32 1, %231
  %233 = and i32 %232, %230
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %276, label %345

235:                                              ; preds = %195
  %236 = load ptr, ptr %97, align 8, !tbaa !94
  %237 = icmp eq ptr %236, null
  br i1 %237, label %255, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %98, align 8, !tbaa !95
  %240 = sext i32 %196 to i64
  %241 = getelementptr inbounds i32, ptr %239, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !66
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.MVert, ptr %236, i64 %243
  store ptr %244, ptr %99, align 8, !tbaa !96
  %245 = getelementptr inbounds %struct.MVert, ptr %236, i64 %243, i32 2
  %246 = load i8, ptr %245, align 2, !tbaa !97
  %247 = and i8 %246, 16
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %345

249:                                              ; preds = %238
  store ptr %244, ptr %100, align 8, !tbaa !85
  %250 = getelementptr inbounds %struct.MVert, ptr %236, i64 %243, i32 1
  store ptr %250, ptr %101, align 8, !tbaa !99
  %251 = load ptr, ptr %102, align 8, !tbaa !100
  %252 = icmp eq ptr %251, null
  br i1 %252, label %276, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds float, ptr %251, i64 %243
  store ptr %254, ptr %103, align 8, !tbaa !92
  br label %276

255:                                              ; preds = %235
  %256 = load ptr, ptr %104, align 8, !tbaa !101
  %257 = icmp eq ptr %256, null
  %258 = load ptr, ptr %108, align 8
  %259 = select i1 %257, ptr %258, ptr %256
  %260 = select i1 %257, ptr %109, ptr %106
  %261 = select i1 %257, ptr %107, ptr %105
  %262 = getelementptr inbounds %struct._gh_Entry, ptr %259, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !102
  store ptr %263, ptr %260, align 8, !tbaa !104
  call void @BLI_ghashIterator_step(ptr noundef nonnull %261) #5
  %264 = load ptr, ptr %110, align 8, !tbaa !104
  %265 = getelementptr inbounds %struct.BMHeader, ptr %264, i64 0, i32 3
  %266 = load i8, ptr %265, align 1, !tbaa !105
  %267 = and i8 %266, 2
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %345

269:                                              ; preds = %255
  %270 = getelementptr inbounds %struct.BMVert, ptr %264, i64 0, i32 2
  store ptr %270, ptr %111, align 8, !tbaa !85
  %271 = getelementptr inbounds %struct.BMVert, ptr %264, i64 0, i32 3
  store ptr %271, ptr %112, align 8, !tbaa !89
  %272 = load ptr, ptr %264, align 8, !tbaa !107
  %273 = load i32, ptr %113, align 8, !tbaa !109
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, ptr %272, i64 %274
  store ptr %275, ptr %114, align 8, !tbaa !92
  br label %276

276:                                              ; preds = %269, %253, %249, %214, %222
  %277 = load ptr, ptr %115, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #5
  %278 = load i32, ptr %72, align 4, !tbaa !160
  %279 = trunc i32 %278 to i8
  call void @flip_v3_v3(ptr noundef nonnull %4, ptr noundef %277, i8 noundef zeroext %279) #5
  %280 = load ptr, ptr %11, align 8, !tbaa !151
  %281 = getelementptr inbounds %struct.ViewContext, ptr %280, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !138
  call void @ED_view3d_project_float_v2_m4(ptr noundef %282, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %38) #5
  %283 = load float, ptr %3, align 4, !tbaa !110
  %284 = fptosi float %283 to i16
  %285 = sext i16 %284 to i32
  %286 = load i32, ptr %39, align 4, !tbaa !154
  %287 = icmp sgt i32 %286, %285
  br i1 %287, label %320, label %288

288:                                              ; preds = %276
  %289 = load float, ptr %116, align 4, !tbaa !110
  %290 = fptosi float %289 to i16
  %291 = sext i16 %290 to i32
  %292 = load i32, ptr %49, align 4, !tbaa !157
  %293 = icmp sle i32 %292, %291
  %294 = load i32, ptr %41, align 8
  %295 = icmp sgt i32 %294, %285
  %296 = select i1 %293, i1 %295, i1 false
  %297 = load i32, ptr %47, align 8
  %298 = icmp sgt i32 %297, %291
  %299 = select i1 %296, i1 %298, i1 false
  br i1 %299, label %300, label %320

300:                                              ; preds = %288
  %301 = trunc i32 %286 to i16
  %302 = sub i16 %284, %301
  %303 = trunc i32 %292 to i16
  %304 = sub i16 %290, %303
  %305 = load ptr, ptr %58, align 8, !tbaa !158
  %306 = sext i16 %304 to i32
  %307 = load i32, ptr %45, align 8, !tbaa !155
  %308 = mul nsw i32 %307, %306
  %309 = sext i16 %302 to i32
  %310 = add nsw i32 %308, %309
  %311 = ashr i32 %310, 5
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, ptr %305, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !66
  %315 = and i32 %310, 31
  %316 = shl nuw i32 1, %315
  %317 = and i32 %316, %314
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i8
  br label %320

320:                                              ; preds = %276, %288, %300
  %321 = phi i8 [ %319, %300 ], [ 0, %288 ], [ 0, %276 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %345, label %323

323:                                              ; preds = %320
  %324 = icmp eq i8 %197, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %323
  %326 = load ptr, ptr %12, align 8, !tbaa !67
  %327 = getelementptr inbounds ptr, ptr %326, i64 %163
  %328 = load ptr, ptr %327, align 8, !tbaa !67
  %329 = call ptr @sculpt_undo_push_node(ptr noundef %36, ptr noundef %328, i32 noundef 2) #5
  %330 = load ptr, ptr %12, align 8, !tbaa !67
  %331 = getelementptr inbounds ptr, ptr %330, i64 %163
  %332 = load ptr, ptr %331, align 8, !tbaa !67
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %332) #5
  br i1 %69, label %333, label %337

333:                                              ; preds = %325
  %334 = load ptr, ptr %12, align 8, !tbaa !67
  %335 = getelementptr inbounds ptr, ptr %334, i64 %163
  %336 = load ptr, ptr %335, align 8, !tbaa !67
  call void @BKE_pbvh_node_mark_normals_update(ptr noundef %336) #5
  br label %337

337:                                              ; preds = %325, %333, %323
  %338 = load ptr, ptr %117, align 8, !tbaa !92
  switch i32 %27, label %345 [
    i32 0, label %343
    i32 1, label %339
    i32 2, label %340
  ]

339:                                              ; preds = %337
  br label %343

340:                                              ; preds = %337
  %341 = load float, ptr %338, align 4, !tbaa !110
  %342 = fsub float 1.000000e+00, %341
  br label %343

343:                                              ; preds = %337, %339, %340
  %344 = phi float [ %342, %340 ], [ %118, %339 ], [ %29, %337 ]
  store float %344, ptr %338, align 4, !tbaa !110
  br label %345

345:                                              ; preds = %343, %337, %320, %255, %238, %222
  %346 = phi i8 [ %197, %222 ], [ %197, %320 ], [ %197, %238 ], [ %197, %255 ], [ 1, %337 ], [ 1, %343 ]
  %347 = load i32, ptr %88, align 4, !tbaa !84
  %348 = add nsw i32 %347, 1
  store i32 %348, ptr %88, align 4, !tbaa !84
  %349 = load i32, ptr %73, align 4, !tbaa !68
  %350 = add nsw i32 %349, 1
  store i32 %350, ptr %73, align 4, !tbaa !68
  %351 = load i32, ptr %89, align 4, !tbaa !76
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %195, label %353, !llvm.loop !161

353:                                              ; preds = %345, %191
  %354 = phi i8 [ %192, %191 ], [ %346, %345 ]
  %355 = load i32, ptr %86, align 8, !tbaa !83
  %356 = add nsw i32 %355, 1
  store i32 %356, ptr %86, align 8, !tbaa !83
  %357 = load i32, ptr %87, align 8, !tbaa !77
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %191, label %359, !llvm.loop !162

359:                                              ; preds = %353, %188
  %360 = phi i8 [ %170, %188 ], [ %354, %353 ]
  %361 = load i32, ptr %14, align 8, !tbaa !72
  %362 = add nsw i32 %361, 1
  store i32 %362, ptr %14, align 8, !tbaa !72
  %363 = load i32, ptr %74, align 8, !tbaa !73
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %169, label %365, !llvm.loop !163

365:                                              ; preds = %359, %162
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %14) #5
  %366 = add nuw nsw i64 %163, 1
  %367 = load i32, ptr %13, align 4, !tbaa !66
  %368 = sext i32 %367 to i64
  %369 = icmp slt i64 %366, %368
  br i1 %369, label %162, label %370, !llvm.loop !164

370:                                              ; preds = %365, %159
  %371 = load ptr, ptr %12, align 8, !tbaa !67
  %372 = icmp eq ptr %371, null
  br i1 %372, label %375, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %374(ptr noundef nonnull %371) #5
  br label %375

375:                                              ; preds = %370, %373, %129, %129, %122
  %376 = add nuw nsw i32 %120, 1
  %377 = icmp eq i32 %120, %24
  br i1 %377, label %378, label %119, !llvm.loop !165

378:                                              ; preds = %375
  br i1 %69, label %379, label %380

379:                                              ; preds = %378
  call void @multires_mark_as_modified(ptr noundef %36, i32 noundef 1) #5
  br label %380

380:                                              ; preds = %379, %378
  call void @sculpt_undo_push_end() #5
  %381 = load ptr, ptr %30, align 8, !tbaa !138
  call void @ED_region_tag_redraw(ptr noundef %381) #5
  %382 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %382(ptr noundef nonnull %15) #5
  %383 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  %384 = load ptr, ptr %58, align 8, !tbaa !158
  call void %383(ptr noundef %384) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %36) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  br label %385

385:                                              ; preds = %2, %380
  %386 = phi i32 [ 4, %380 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 %386
}

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @isect_point_planes_v3(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fill_poly_v2i_n(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mask_lasso_px_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.LassoMaskData, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !155
  %6 = mul nsw i32 %5, %1
  %7 = add nsw i32 %6, %0
  %8 = and i32 %7, 31
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.LassoMaskData, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = ashr i32 %7, 5
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !66
  %16 = or i32 %9, %15
  store i32 %16, ptr %14, align 4, !tbaa !66
  ret void
}

declare void @flip_v3_v3(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 16}
!49 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !50, i64 32, !50, i64 36, !50, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !50, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !51, i64 64, !54, i64 168, !50, i64 336, !50, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !50, i64 352, !50, i64 356, !50, i64 360, !50, i64 364, !50, i64 368, !50, i64 372, !50, i64 376, !50, i64 380, !50, i64 384, !50, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !53, i64 448, !53, i64 452, !53, i64 456, !53, i64 460, !41, i64 464, !41, i64 466, !53, i64 468, !50, i64 472, !50, i64 476, !55, i64 480, !56, i64 608}
!50 = !{!"float", !37, i64 0}
!51 = !{!"ImagePaintSettings", !52, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !53, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !50, i64 100}
!52 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !53, i64 28, !53, i64 32, !53, i64 36}
!53 = !{!"int", !37, i64 0}
!54 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !50, i64 128, !50, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !36, i64 152, !36, i64 160}
!55 = !{!"UnifiedPaintSettings", !53, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !37, i64 16, !37, i64 28, !53, i64 40, !37, i64 44, !50, i64 52, !53, i64 56, !53, i64 60, !37, i64 64, !37, i64 65, !50, i64 72, !37, i64 76, !53, i64 84, !50, i64 88, !37, i64 92, !37, i64 100, !53, i64 108, !36, i64 112, !50, i64 120, !53, i64 124}
!56 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !37, i64 20, !37, i64 21, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36}
!57 = !{!58, !36, i64 112}
!58 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!59 = !{!60, !36, i64 128}
!60 = !{!"Object", !61, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !62, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !53, i64 432, !53, i64 436, !36, i64 440, !36, i64 448, !53, i64 456, !53, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !53, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !50, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !53, i64 1144, !53, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !63, i64 1304, !63, i64 1312, !53, i64 1320, !53, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!61 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!62 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!63 = !{!"long", !37, i64 0}
!64 = !{!65, !36, i64 104}
!65 = !{!"SculptSession", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !53, i64 32, !53, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !53, i64 80, !53, i64 84, !37, i64 88, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 113, !36, i64 120, !36, i64 128, !36, i64 136, !37, i64 144, !53, i64 148, !36, i64 152, !53, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 204, !37, i64 216, !53, i64 228}
!66 = !{!53, !53, i64 0}
!67 = !{!36, !36, i64 0}
!68 = !{!69, !53, i64 20}
!69 = !{!"PBVHVertexIter", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !53, i64 72, !53, i64 76, !36, i64 80, !53, i64 88, !36, i64 96, !36, i64 104, !70, i64 112, !70, i64 136, !36, i64 160, !53, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216}
!70 = !{!"GSetIterator", !71, i64 0}
!71 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !53, i64 16}
!72 = !{!69, !53, i64 0}
!73 = !{!69, !53, i64 72}
!74 = !{!69, !36, i64 24}
!75 = !{!69, !53, i64 76}
!76 = !{!69, !53, i64 4}
!77 = !{!69, !53, i64 8}
!78 = !{!69, !36, i64 64}
!79 = !{!69, !36, i64 32}
!80 = !{!69, !36, i64 48}
!81 = !{!69, !36, i64 56}
!82 = !{!69, !53, i64 88}
!83 = !{!69, !53, i64 16}
!84 = !{!69, !53, i64 12}
!85 = !{!69, !36, i64 192}
!86 = !{!69, !36, i64 40}
!87 = !{!88, !53, i64 20}
!88 = !{!"CCGKey", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36}
!89 = !{!69, !36, i64 208}
!90 = !{!88, !53, i64 36}
!91 = !{!88, !53, i64 24}
!92 = !{!69, !36, i64 216}
!93 = !{!88, !53, i64 4}
!94 = !{!69, !36, i64 80}
!95 = !{!69, !36, i64 96}
!96 = !{!69, !36, i64 176}
!97 = !{!98, !37, i64 18}
!98 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!99 = !{!69, !36, i64 200}
!100 = !{!69, !36, i64 104}
!101 = !{!71, !36, i64 8}
!102 = !{!103, !36, i64 8}
!103 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!104 = !{!69, !36, i64 184}
!105 = !{!106, !37, i64 13}
!106 = !{!"BMHeader", !36, i64 0, !53, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!107 = !{!108, !36, i64 0}
!108 = !{!"BMVert", !106, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!109 = !{!69, !53, i64 168}
!110 = !{!50, !50, i64 0}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = distinct !{!114, !112, !113}
!115 = distinct !{!115, !112, !113}
!116 = distinct !{!116, !112, !113}
!117 = !{!118, !36, i64 0}
!118 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!119 = !{!120, !36, i64 264}
!120 = !{!"Scene", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !121, i64 280, !130, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !131, i64 4400, !132, i64 4416, !135, i64 4600, !36, i64 4608, !136, i64 4616, !36, i64 4640, !63, i64 4648, !63, i64 4656, !123, i64 4664, !124, i64 4824, !137, i64 4888, !36, i64 4952}
!121 = !{!"RenderData", !122, i64 0, !36, i64 248, !36, i64 256, !125, i64 264, !126, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !50, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !127, i64 544, !127, i64 560, !128, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !53, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !50, i64 660, !50, i64 664, !41, i64 668, !41, i64 670, !50, i64 672, !50, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !50, i64 2528, !50, i64 2532, !41, i64 2536, !41, i64 2538, !50, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !50, i64 2560, !50, i64 2564, !36, i64 2568, !53, i64 2576, !50, i64 2580, !37, i64 2584, !129, i64 2616, !53, i64 3976, !53, i64 3980}
!122 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !50, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !123, i64 24, !124, i64 184}
!123 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!124 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!125 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!126 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !50, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!127 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!128 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!129 = !{!"BakeData", !122, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !50, i64 1280, !50, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!130 = !{!"AudioData", !53, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !50, i64 24, !50, i64 28}
!131 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!132 = !{!"GameData", !131, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !133, i64 40, !41, i64 64, !41, i64 66, !50, i64 68, !134, i64 72, !50, i64 128, !50, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!133 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !50, i64 8, !50, i64 12, !36, i64 16}
!134 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !53, i64 40, !50, i64 44, !50, i64 48, !41, i64 52, !41, i64 54}
!135 = !{!"UnitSettings", !50, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!136 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!137 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!138 = !{!118, !36, i64 24}
!139 = !{!118, !36, i64 8}
!140 = !{!141, !53, i64 36}
!141 = !{!"Sculpt", !52, i64 0, !53, i64 40, !37, i64 44, !50, i64 56, !53, i64 60, !50, i64 64, !50, i64 68, !36, i64 72, !36, i64 80}
!142 = !{!118, !36, i64 40}
!143 = distinct !{!143, !112, !113}
!144 = distinct !{!144, !112, !113}
!145 = distinct !{!145, !112, !113}
!146 = distinct !{!146, !112, !113}
!147 = distinct !{!147, !112, !113}
!148 = distinct !{!148, !112, !113}
!149 = !{!35, !36, i64 48}
!150 = !{!35, !36, i64 64}
!151 = !{!152, !36, i64 0}
!152 = !{!"LassoMaskData", !36, i64 0, !37, i64 8, !36, i64 72, !53, i64 80, !128, i64 84, !53, i64 100}
!153 = !{!152, !53, i64 88}
!154 = !{!152, !53, i64 84}
!155 = !{!152, !53, i64 80}
!156 = !{!152, !53, i64 96}
!157 = !{!152, !53, i64 92}
!158 = !{!152, !36, i64 72}
!159 = distinct !{!159, !112, !113}
!160 = !{!152, !53, i64 100}
!161 = distinct !{!161, !112, !113}
!162 = distinct !{!162, !112, !113}
!163 = distinct !{!163, !112, !113}
!164 = distinct !{!164, !112, !113}
!165 = distinct !{!165, !112, !113}
