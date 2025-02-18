; ModuleID = 'blender/source/blender/editors/space_view3d/drawmesh.c'
source_filename = "blender/source/blender/editors/space_view3d/drawmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.TextureDrawState = type { ptr, ptr, ptr, i8, i32, i32, i32, i8, [4 x i8], i8, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.drawMeshFaceSelect_userData = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.drawEMTFMapped_userData = type { ptr, i8, i8, ptr, ptr }
%struct.drawTFace_userData = type { ptr, ptr, ptr }
%struct.TexMatCallback = type { ptr, ptr, ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }
%struct.anon = type { i32, i32, i32, i32, [64 x i8] }
%struct.GPUVertexAttribs = type { [32 x %struct.anon], i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.get_tface_mesh_marked_edge_info = private unnamed_addr constant [32 x i8] c"get_tface_mesh_marked_edge_info\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@Gtexdraw = internal global %struct.TextureDrawState zeroinitializer, align 8
@__glewActiveTexture = external local_unnamed_addr global ptr, align 8
@set_draw_settings_cached.c_ma = internal unnamed_addr global ptr null, align 8
@set_draw_settings_cached.c_textured = internal unnamed_addr global i32 0, align 4
@set_draw_settings_cached.c_texface = internal global %struct.MTFace zeroinitializer, align 8
@set_draw_settings_cached.c_backculled = internal unnamed_addr global i32 0, align 4
@set_draw_settings_cached.c_badtex = internal unnamed_addr global i8 0, align 1
@set_draw_settings_cached.c_lit = internal unnamed_addr global i32 0, align 4
@set_draw_settings_cached.c_has_texface = internal unnamed_addr global i32 0, align 4
@defmaterial = external global %struct.Material, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"add_tface_color_layer\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@__const.draw_mesh_paint_light_begin.spec = private unnamed_addr constant [4 x float] [float 0x3FDE147AE0000000, float 0x3FDE147AE0000000, float 0x3FDE147AE0000000, float 0x3FDE147AE0000000], align 16

; Function Attrs: nounwind uwtable
define dso_local void @draw_mesh_face_select(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drawMeshFaceSelect_userData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %7 = load i32, ptr %6, align 4, !tbaa !40
  %8 = ashr i32 %7, 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %5(i64 noundef %11, ptr noundef nonnull @__func__.get_tface_mesh_marked_edge_info) #11
  %13 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 9
  br label %20

20:                                               ; preds = %16, %67
  %21 = phi i64 [ 0, %16 ], [ %68, %67 ]
  %22 = getelementptr inbounds %struct.MPoly, ptr %18, i64 %21, i32 3
  %23 = load i8, ptr %22, align 2, !tbaa !49
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.MPoly, ptr %18, i64 %21, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = load ptr, ptr %19, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.MPoly, ptr %18, i64 %21
  %33 = load i32, ptr %32, align 4, !tbaa !53
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MLoop, ptr %31, i64 %34
  %36 = and i8 %23, 2
  %37 = icmp eq i8 %36, 0
  br label %38

38:                                               ; preds = %30, %62
  %39 = phi ptr [ %35, %30 ], [ %64, %62 ]
  %40 = phi i32 [ 0, %30 ], [ %63, %62 ]
  %41 = getelementptr inbounds %struct.MLoop, ptr %39, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !54
  %43 = shl nsw i32 %42, 1
  %44 = and i32 %43, 30
  %45 = shl nuw nsw i32 1, %44
  %46 = ashr i32 %42, 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %12, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !56
  %50 = or i32 %45, %49
  store i32 %50, ptr %48, align 4, !tbaa !56
  br i1 %37, label %62, label %51

51:                                               ; preds = %38
  %52 = load i32, ptr %41, align 4, !tbaa !54
  %53 = shl nsw i32 %52, 1
  %54 = and i32 %53, 30
  %55 = or disjoint i32 %54, 1
  %56 = shl nuw i32 1, %55
  %57 = ashr i32 %52, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %12, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !56
  %61 = or i32 %56, %60
  store i32 %61, ptr %59, align 4, !tbaa !56
  br label %62

62:                                               ; preds = %51, %38
  %63 = add nuw nsw i32 %40, 1
  %64 = getelementptr inbounds %struct.MLoop, ptr %39, i64 1
  %65 = load i32, ptr %27, align 4, !tbaa !51
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %38, label %67, !llvm.loop !57

67:                                               ; preds = %62, %26, %20
  %68 = add nuw nsw i64 %21, 1
  %69 = load i32, ptr %13, align 8, !tbaa !47
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %20, label %72, !llvm.loop !60

72:                                               ; preds = %67, %3
  %73 = getelementptr inbounds %struct.drawMeshFaceSelect_userData, ptr %4, i64 0, i32 1
  store ptr %12, ptr %73, align 8, !tbaa !61
  tail call void @glEnable(i32 noundef 2929) #11
  tail call void @glDisable(i32 noundef 2896) #11
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 1.000000e+00) #11
  tail call void @setlinestyle(i32 noundef 1) #11
  tail call void @UI_ThemeColor(i32 noundef 41) #11
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 92
  %75 = load ptr, ptr %74, align 8, !tbaa !62
  call void %75(ptr noundef %2, ptr noundef nonnull @draw_mesh_face_select__setHiddenOpts, ptr noundef nonnull %4) #11
  call void @setlinestyle(i32 noundef 0) #11
  %76 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 36
  %77 = load i32, ptr %76, align 8, !tbaa !64
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glColor4ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 64) #11
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 89
  %82 = load ptr, ptr %81, align 8, !tbaa !65
  call void %82(ptr noundef %2, ptr noundef nonnull @draw_mesh_face_select__drawFaceOptsInv, ptr noundef null, ptr noundef null, ptr noundef %1, i32 noundef 0) #11
  call void @glDisable(i32 noundef 3042) #11
  br label %83

83:                                               ; preds = %80, %72
  call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 1.000000e+00) #11
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #11
  call void @setlinestyle(i32 noundef 1) #11
  %84 = load ptr, ptr %74, align 8, !tbaa !62
  call void %84(ptr noundef %2, ptr noundef nonnull @draw_mesh_face_select__setSelectOpts, ptr noundef nonnull %4) #11
  call void @setlinestyle(i32 noundef 0) #11
  call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 0.000000e+00) #11
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %86 = load ptr, ptr %73, align 8, !tbaa !61
  call void %85(ptr noundef %86) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @ED_view3d_polygon_offset(ptr noundef, float noundef) local_unnamed_addr #2

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @draw_mesh_face_select__setHiddenOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 36
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.drawMeshFaceSelect_userData, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = shl nsw i32 %1, 1
  %15 = ashr i32 %1, 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = and i32 %14, 30
  %20 = lshr i32 %18, %19
  %21 = and i32 %20, 1
  br label %34

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.drawMeshFaceSelect_userData, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = shl nsw i32 %1, 1
  %26 = ashr i32 %1, 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !56
  %30 = and i32 %25, 30
  %31 = or disjoint i32 %30, 1
  %32 = lshr i32 %29, %31
  %33 = and i32 %32, 1
  br label %34

34:                                               ; preds = %11, %22, %8
  %35 = phi i32 [ 1, %8 ], [ %33, %22 ], [ %21, %11 ]
  ret i32 %35
}

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @draw_mesh_face_select__drawFaceOptsInv(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !49
  %8 = and i8 %7, 18
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 2, i32 0
  ret i32 %10
}

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @draw_mesh_face_select__setSelectOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.drawMeshFaceSelect_userData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = shl nsw i32 %1, 1
  %6 = ashr i32 %1, 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = and i32 %5, 30
  %11 = or disjoint i32 %10, 1
  %12 = lshr i32 %9, %11
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @draw_mesh_textured(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x %struct.MCol], align 16
  %8 = alloca %struct.MTFace, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x i8], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca %struct.drawEMTFMapped_userData, align 8
  %18 = alloca %struct.drawTFace_userData, align 8
  %19 = alloca %struct.drawTFace_userData, align 8
  %20 = alloca %struct.TexMatCallback, align 8
  %21 = alloca [4 x float], align 16
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %26 = load i16, ptr %25, align 2, !tbaa !66
  %27 = and i16 %26, 8192
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !70
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %635, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %39 = load i16, ptr %38, align 8, !tbaa !74
  switch i16 %39, label %635 [
    i16 5, label %40
    i16 3, label %40
  ]

40:                                               ; preds = %37, %37, %29, %24, %6
  %41 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %44 = load i16, ptr %43, align 8, !tbaa !76
  %45 = and i16 %44, 4
  %46 = icmp eq i16 %45, 0
  %47 = select i1 %46, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %47) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  %48 = load ptr, ptr %41, align 8, !tbaa !75
  %49 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !77
  %51 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %52 = load i16, ptr %51, align 8, !tbaa !74
  %53 = icmp slt i16 %52, 3
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %56 = load i32, ptr %55, align 8, !tbaa !70
  %57 = and i32 %56, 12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %54, %40
  %60 = icmp eq i16 %52, 3
  br i1 %60, label %68, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %63 = load i32, ptr %62, align 8, !tbaa !70
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  %66 = icmp eq i16 %52, 5
  %67 = or i1 %66, %65
  br i1 %67, label %70, label %68

68:                                               ; preds = %61, %59
  store i32 -1, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 4), align 4, !tbaa !95
  %69 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  call void @rgba_float_to_uchar(ptr noundef nonnull %15, ptr noundef nonnull %69) #11
  br label %89

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %72 = load i16, ptr %71, align 2, !tbaa !66
  %73 = icmp sgt i16 %72, -1
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %76 = load i32, ptr %75, align 8, !tbaa !97
  %77 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  %78 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 24
  %79 = load i8, ptr %78, align 8, !tbaa !98
  %80 = icmp eq i8 %79, 0
  %81 = zext i1 %80 to i32
  %82 = tail call i32 @GPU_scene_object_lights(ptr noundef %0, ptr noundef %3, i32 noundef %76, ptr noundef nonnull %77, i32 noundef %81) #11
  br label %83

83:                                               ; preds = %70, %54, %74
  %84 = phi i32 [ %82, %74 ], [ 0, %54 ], [ 0, %70 ]
  store i32 %84, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 4), align 4, !tbaa !95
  %85 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  call void @rgba_float_to_uchar(ptr noundef nonnull %15, ptr noundef nonnull %85) #11
  %86 = load i16, ptr %51, align 8, !tbaa !74
  %87 = icmp eq i16 %86, 5
  %88 = zext i1 %87 to i32
  br label %89

89:                                               ; preds = %83, %68
  %90 = phi i32 [ 1, %68 ], [ %88, %83 ]
  store ptr %3, ptr @Gtexdraw, align 8, !tbaa !100
  %91 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 17, i32 1
  %92 = load i16, ptr %91, align 8, !tbaa !101
  %93 = and i16 %92, 256
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 17, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !104
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi ptr [ %97, %95 ], [ null, %89 ]
  store ptr %99, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !105
  %100 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %101 = load i32, ptr %100, align 8, !tbaa !70
  %102 = icmp eq i32 %101, 16
  %103 = zext i1 %102 to i8
  store i8 %103, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 9), align 1, !tbaa !106
  %104 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 17, i32 6
  %105 = load i32, ptr %104, align 4, !tbaa !107
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i8
  store i8 %107, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 10), align 2, !tbaa !108
  br i1 %106, label %111, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 17, i32 10
  %110 = load ptr, ptr %109, align 8, !tbaa !109
  br label %111

111:                                              ; preds = %108, %98
  %112 = phi ptr [ %110, %108 ], [ null, %98 ]
  store ptr %112, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 2), align 8, !tbaa !110
  store i32 %90, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 5), align 8, !tbaa !111
  br i1 %102, label %113, label %138

113:                                              ; preds = %111
  %114 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  call void %114(i32 noundef 33985) #11
  call void @glEnable(i32 noundef 3553) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 34165) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 34168) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34167) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34178, i32 noundef 34168) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 770) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 34168) #11
  %115 = load ptr, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !105
  %116 = icmp eq ptr %115, null
  br i1 %116, label %136, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  call void %118(i32 noundef 33986) #11
  %119 = load ptr, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !105
  %120 = call i32 @GPU_verify_image(ptr noundef %119, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #11
  %123 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 17, i32 11
  %124 = load float, ptr %123, align 8, !tbaa !112
  store float %124, ptr %16, align 16, !tbaa !112
  %125 = getelementptr inbounds float, ptr %16, i64 1
  %126 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 17, i32 11, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !112
  store float %127, ptr %125, align 4, !tbaa !112
  %128 = getelementptr inbounds float, ptr %16, i64 2
  %129 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 17, i32 11, i64 2
  %130 = load float, ptr %129, align 8, !tbaa !112
  store float %130, ptr %128, align 8, !tbaa !112
  %131 = getelementptr inbounds float, ptr %16, i64 3
  store float 1.000000e+00, ptr %131, align 4, !tbaa !112
  call void @glEnable(i32 noundef 3553) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 34165) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 34168) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34166) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34178, i32 noundef 5890) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 8448) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 34168) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34185, i32 noundef 5890) #11
  call void @glTexEnvfv(i32 noundef 8960, i32 noundef 8705, ptr noundef nonnull %16) #11
  %132 = load i16, ptr %91, align 8, !tbaa !101
  %133 = and i16 %132, 512
  %134 = icmp eq i16 %133, 0
  %135 = select i1 %134, i32 769, i32 768
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef %135) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #11
  br label %136

136:                                              ; preds = %122, %117, %113
  %137 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  call void %137(i32 noundef 33984) #11
  br label %138

138:                                              ; preds = %136, %111
  %139 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %0) #11
  %140 = zext i8 %139 to i32
  store i32 %140, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 6), align 4, !tbaa !113
  %141 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %142 = call ptr @RE_engines_find(ptr noundef nonnull %141) #11
  %143 = getelementptr inbounds %struct.RenderEngineType, ptr %142, i64 0, i32 4
  %144 = load i32, ptr %143, align 8, !tbaa !114
  %145 = trunc i32 %144 to i8
  %146 = lshr i8 %145, 1
  %147 = and i8 %146, 1
  store i8 %147, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 3), align 8, !tbaa !117
  %148 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %149 = load i16, ptr %148, align 2, !tbaa !66
  %150 = lshr i16 %149, 10
  %151 = trunc i16 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 7), align 8, !tbaa !118
  %153 = load i32, ptr %15, align 4
  store i32 %153, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8), align 1
  %154 = call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw), !range !119
  call void @glShadeModel(i32 noundef 7425) #11
  call void @glCullFace(i32 noundef 1029) #11
  %155 = getelementptr inbounds %struct.Mesh, ptr %48, i64 0, i32 38
  %156 = load i16, ptr %155, align 2, !tbaa !120
  %157 = lshr i16 %156, 2
  %158 = and i16 %157, 1
  %159 = zext nneg i16 %158 to i32
  call void @glLightModeli(i32 noundef 2898, i32 noundef %159) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  %160 = load i32, ptr %100, align 8, !tbaa !70
  %161 = and i32 %160, 16
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 4, i32 8
  %164 = and i32 %160, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %184, label %166

166:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #11
  %167 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 20
  %168 = load ptr, ptr %167, align 8, !tbaa !121
  store ptr %168, ptr %17, align 8, !tbaa !122
  %169 = load ptr, ptr %168, align 8, !tbaa !124
  %170 = getelementptr inbounds %struct.BMesh, ptr %169, i64 0, i32 26
  %171 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %170, i32 noundef 17) #11
  %172 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %17, i64 0, i32 1
  store i8 %171, ptr %172, align 8, !tbaa !126
  %173 = load ptr, ptr %167, align 8, !tbaa !121
  %174 = load ptr, ptr %173, align 8, !tbaa !124
  %175 = getelementptr inbounds %struct.BMesh, ptr %174, i64 0, i32 27
  %176 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %175, i32 noundef 15) #11
  %177 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %17, i64 0, i32 2
  store i8 %176, ptr %177, align 1, !tbaa !127
  %178 = call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 4) #11
  %179 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %17, i64 0, i32 3
  store ptr %178, ptr %179, align 8, !tbaa !128
  %180 = call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 5) #11
  %181 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %17, i64 0, i32 4
  store ptr %180, ptr %181, align 8, !tbaa !129
  %182 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 90
  %183 = load ptr, ptr %182, align 8, !tbaa !130
  call void %183(ptr noundef %4, ptr noundef nonnull @draw_em_tf_mapped__set_draw, ptr noundef nonnull @compareDrawOptionsEm, ptr noundef nonnull %17, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #11
  br label %419

184:                                              ; preds = %138
  %185 = and i32 %5, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %204, label %187

187:                                              ; preds = %184
  %188 = and i32 %160, 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 89
  %192 = load ptr, ptr %191, align 8, !tbaa !65
  call void %192(ptr noundef %4, ptr noundef nonnull @wpaint__setSolidDrawOptions_facemask, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %42, i32 noundef 3) #11
  br label %419

193:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #11
  %194 = call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 4) #11
  %195 = getelementptr inbounds %struct.drawTFace_userData, ptr %18, i64 0, i32 1
  store ptr %194, ptr %195, align 8, !tbaa !131
  %196 = call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 5) #11
  %197 = getelementptr inbounds %struct.drawTFace_userData, ptr %18, i64 0, i32 2
  store ptr %196, ptr %197, align 8, !tbaa !133
  store ptr %42, ptr %18, align 8, !tbaa !134
  %198 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 90
  %199 = load ptr, ptr %198, align 8, !tbaa !130
  %200 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !48
  %202 = icmp eq ptr %201, null
  %203 = select i1 %202, ptr null, ptr @draw_tface_mapped__set_draw
  call void %199(ptr noundef %4, ptr noundef %203, ptr noundef nonnull @compareDrawOptions, ptr noundef nonnull %18, i32 noundef %163) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #11
  br label %419

204:                                              ; preds = %184
  %205 = call zeroext i8 @GPU_buffer_legacy(ptr noundef %4) #11
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 87
  %209 = load ptr, ptr %208, align 8, !tbaa !135
  br i1 %23, label %211, label %210

210:                                              ; preds = %207
  call void %209(ptr noundef %4, ptr noundef nonnull @draw_mcol__set_draw_legacy, ptr noundef null, ptr noundef null, i32 noundef %163) #11
  br label %419

211:                                              ; preds = %207
  call void %209(ptr noundef %4, ptr noundef nonnull @draw_tface__set_draw_legacy, ptr noundef null, ptr noundef null, i32 noundef %163) #11
  br label %419

212:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #11
  %213 = call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 5) #11
  %214 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 33
  %215 = load ptr, ptr %214, align 8, !tbaa !136
  %216 = call ptr %215(ptr noundef %4) #11
  %217 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 52
  %218 = load ptr, ptr %217, align 8, !tbaa !137
  %219 = call ptr %218(ptr noundef %4, i32 noundef 20) #11
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  %222 = load ptr, ptr %217, align 8, !tbaa !137
  %223 = call ptr %222(ptr noundef %4, i32 noundef 6) #11
  br label %224

224:                                              ; preds = %221, %212
  %225 = phi ptr [ %219, %212 ], [ %223, %221 ]
  %226 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 2
  %227 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %226, i32 noundef 22) #11
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %224
  %230 = call ptr @CustomData_get_layer(ptr noundef nonnull %226, i32 noundef 22) #11
  br label %242

231:                                              ; preds = %224
  %232 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %233 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  %234 = load ptr, ptr %233, align 8, !tbaa !138
  %235 = call i32 %234(ptr noundef %4) #11
  %236 = sext i32 %235 to i64
  %237 = shl nsw i64 %236, 4
  %238 = call ptr %232(i64 noundef %237, ptr noundef nonnull @.str.1) #11
  %239 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 7
  %240 = load i32, ptr %239, align 8, !tbaa !139
  %241 = call ptr @CustomData_add_layer(ptr noundef nonnull %226, i32 noundef 22, i32 noundef 0, ptr noundef %238, i32 noundef %240) #11
  br label %242

242:                                              ; preds = %231, %229
  %243 = phi ptr [ %230, %229 ], [ %238, %231 ]
  %244 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  %245 = load ptr, ptr %244, align 8, !tbaa !138
  %246 = call i32 %245(ptr noundef %4) #11
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %412

248:                                              ; preds = %242
  %249 = icmp eq ptr %225, null
  %250 = icmp eq ptr %213, null
  %251 = icmp eq ptr %225, null
  br label %252

252:                                              ; preds = %248, %406
  %253 = phi i64 [ 0, %248 ], [ %407, %406 ]
  %254 = load ptr, ptr @Gtexdraw, align 8, !tbaa !100
  %255 = getelementptr inbounds %struct.MFace, ptr %216, i64 %253, i32 4
  %256 = load i16, ptr %255, align 4, !tbaa !140
  %257 = add i16 %256, 1
  %258 = call ptr @give_current_material(ptr noundef %254, i16 noundef signext %257) #11
  %259 = icmp eq ptr %258, null
  br i1 %259, label %279, label %260

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.Material, ptr %258, i64 0, i32 28
  %262 = load i32, ptr %261, align 8, !tbaa !142
  %263 = and i32 %262, 256
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %279, label %265

265:                                              ; preds = %260
  %266 = shl i64 %253, 2
  %267 = and i64 %266, 4294967292
  br i1 %249, label %271, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.MCol, ptr %243, i64 %267
  %270 = getelementptr inbounds %struct.MCol, ptr %225, i64 %267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %269, ptr noundef nonnull align 1 dereferenceable(16) %270, i64 16, i1 false)
  br label %406

271:                                              ; preds = %265, %271
  %272 = phi i64 [ %277, %271 ], [ 0, %265 ]
  %273 = add nuw nsw i64 %272, %267
  %274 = getelementptr inbounds %struct.MCol, ptr %243, i64 %273, i32 3
  store i8 -1, ptr %274, align 1, !tbaa !146
  %275 = getelementptr inbounds %struct.MCol, ptr %243, i64 %273, i32 2
  store i8 -1, ptr %275, align 1, !tbaa !148
  %276 = getelementptr inbounds %struct.MCol, ptr %243, i64 %273, i32 1
  store i8 -1, ptr %276, align 1, !tbaa !149
  %277 = add nuw nsw i64 %272, 1
  %278 = icmp eq i64 %277, 4
  br i1 %278, label %406, label %271, !llvm.loop !150

279:                                              ; preds = %260, %252
  br i1 %250, label %294, label %280

280:                                              ; preds = %279
  %281 = call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef nonnull %213, ptr noundef %258, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw), !range !119
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %280
  %284 = shl i64 %253, 2
  %285 = and i64 %284, 4294967292
  br label %286

286:                                              ; preds = %283, %286
  %287 = phi i64 [ 0, %283 ], [ %292, %286 ]
  %288 = add nuw nsw i64 %287, %285
  %289 = getelementptr inbounds %struct.MCol, ptr %243, i64 %288, i32 3
  store i8 -1, ptr %289, align 1, !tbaa !146
  %290 = getelementptr inbounds %struct.MCol, ptr %243, i64 %288, i32 2
  store i8 0, ptr %290, align 1, !tbaa !148
  %291 = getelementptr inbounds %struct.MCol, ptr %243, i64 %288, i32 1
  store i8 -1, ptr %291, align 1, !tbaa !149
  %292 = add nuw nsw i64 %287, 1
  %293 = icmp eq i64 %292, 4
  br i1 %293, label %406, label %286, !llvm.loop !151

294:                                              ; preds = %280, %279
  br i1 %259, label %314, label %295

295:                                              ; preds = %294
  %296 = getelementptr inbounds %struct.Material, ptr %258, i64 0, i32 50
  %297 = load i16, ptr %296, align 2, !tbaa !152
  %298 = and i16 %297, 2
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %314, label %300

300:                                              ; preds = %295
  %301 = shl i64 %253, 2
  %302 = and i64 %301, 4294967292
  br label %303

303:                                              ; preds = %300, %303
  %304 = phi i64 [ 0, %300 ], [ %312, %303 ]
  %305 = load i8, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8), align 1, !tbaa !153
  %306 = add nuw nsw i64 %304, %302
  %307 = getelementptr inbounds %struct.MCol, ptr %243, i64 %306, i32 3
  store i8 %305, ptr %307, align 1, !tbaa !146
  %308 = load i8, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8, i64 1), align 2, !tbaa !153
  %309 = getelementptr inbounds %struct.MCol, ptr %243, i64 %306, i32 2
  store i8 %308, ptr %309, align 1, !tbaa !148
  %310 = load i8, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8, i64 2), align 1, !tbaa !153
  %311 = getelementptr inbounds %struct.MCol, ptr %243, i64 %306, i32 1
  store i8 %310, ptr %311, align 1, !tbaa !149
  %312 = add nuw nsw i64 %304, 1
  %313 = icmp eq i64 %312, 4
  br i1 %313, label %406, label %303, !llvm.loop !154

314:                                              ; preds = %295, %294
  br i1 %251, label %318, label %315

315:                                              ; preds = %314
  %316 = shl i64 %253, 2
  %317 = and i64 %316, 4294967292
  br label %392

318:                                              ; preds = %314
  br i1 %250, label %330, label %319

319:                                              ; preds = %318
  %320 = shl i64 %253, 2
  %321 = and i64 %320, 4294967292
  br label %322

322:                                              ; preds = %319, %322
  %323 = phi i64 [ 0, %319 ], [ %328, %322 ]
  %324 = add nuw nsw i64 %323, %321
  %325 = getelementptr inbounds %struct.MCol, ptr %243, i64 %324, i32 3
  store i8 -1, ptr %325, align 1, !tbaa !146
  %326 = getelementptr inbounds %struct.MCol, ptr %243, i64 %324, i32 2
  store i8 -1, ptr %326, align 1, !tbaa !148
  %327 = getelementptr inbounds %struct.MCol, ptr %243, i64 %324, i32 1
  store i8 -1, ptr %327, align 1, !tbaa !149
  %328 = add nuw nsw i64 %323, 1
  %329 = icmp eq i64 %328, 4
  br i1 %329, label %406, label %322, !llvm.loop !155

330:                                              ; preds = %318
  br i1 %259, label %331, label %334

331:                                              ; preds = %330
  %332 = shl i64 %253, 2
  %333 = and i64 %332, 4294967292
  br label %384

334:                                              ; preds = %330
  %335 = load i32, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 6), align 4, !tbaa !113
  %336 = icmp eq i32 %335, 0
  %337 = getelementptr inbounds %struct.Material, ptr %258, i64 0, i32 4
  %338 = load float, ptr %337, align 4, !tbaa !112
  br i1 %336, label %347, label %339

339:                                              ; preds = %334
  %340 = call float @linearrgb_to_srgb(float noundef %338) #11
  %341 = getelementptr inbounds %struct.Material, ptr %258, i64 0, i32 5
  %342 = load float, ptr %341, align 4, !tbaa !112
  %343 = call float @linearrgb_to_srgb(float noundef %342) #11
  %344 = getelementptr inbounds %struct.Material, ptr %258, i64 0, i32 6
  %345 = load float, ptr %344, align 4, !tbaa !112
  %346 = call float @linearrgb_to_srgb(float noundef %345) #11
  br label %352

347:                                              ; preds = %334
  %348 = getelementptr inbounds %struct.Material, ptr %258, i64 0, i32 5
  %349 = load float, ptr %348, align 4, !tbaa !112
  %350 = getelementptr inbounds %struct.Material, ptr %258, i64 0, i32 6
  %351 = load float, ptr %350, align 4, !tbaa !112
  br label %352

352:                                              ; preds = %347, %339
  %353 = phi float [ %351, %347 ], [ %346, %339 ]
  %354 = phi float [ %349, %347 ], [ %343, %339 ]
  %355 = phi float [ %338, %347 ], [ %340, %339 ]
  %356 = fcmp ugt float %355, 0.000000e+00
  %357 = shl i64 %253, 2
  %358 = fcmp ugt float %354, 0.000000e+00
  %359 = fcmp ugt float %353, 0.000000e+00
  %360 = fcmp ogt float %355, 0x3FEFEFEFE0000000
  %361 = call float @llvm.fmuladd.f32(float %355, float 2.550000e+02, float 5.000000e-01)
  %362 = select i1 %360, float 2.550000e+02, float %361
  %363 = fcmp ogt float %354, 0x3FEFEFEFE0000000
  %364 = call float @llvm.fmuladd.f32(float %354, float 2.550000e+02, float 5.000000e-01)
  %365 = select i1 %363, float 2.550000e+02, float %364
  %366 = fcmp ogt float %353, 0x3FEFEFEFE0000000
  %367 = call float @llvm.fmuladd.f32(float %353, float 2.550000e+02, float 5.000000e-01)
  %368 = select i1 %366, float 2.550000e+02, float %367
  %369 = and i64 %357, 4294967292
  %370 = select i1 %356, float %362, float 0.000000e+00
  %371 = fptoui float %370 to i8
  %372 = select i1 %358, float %365, float 0.000000e+00
  %373 = fptoui float %372 to i8
  %374 = select i1 %359, float %368, float 0.000000e+00
  %375 = fptoui float %374 to i8
  br label %376

376:                                              ; preds = %352, %376
  %377 = phi i64 [ 0, %352 ], [ %382, %376 ]
  %378 = add nuw nsw i64 %377, %369
  %379 = getelementptr inbounds %struct.MCol, ptr %243, i64 %378, i32 3
  store i8 %371, ptr %379, align 1, !tbaa !146
  %380 = getelementptr inbounds %struct.MCol, ptr %243, i64 %378, i32 2
  store i8 %373, ptr %380, align 1, !tbaa !148
  %381 = getelementptr inbounds %struct.MCol, ptr %243, i64 %378, i32 1
  store i8 %375, ptr %381, align 1, !tbaa !149
  %382 = add nuw nsw i64 %377, 1
  %383 = icmp eq i64 %382, 4
  br i1 %383, label %406, label %376, !llvm.loop !156

384:                                              ; preds = %331, %384
  %385 = phi i64 [ 0, %331 ], [ %390, %384 ]
  %386 = add nuw nsw i64 %385, %333
  %387 = getelementptr inbounds %struct.MCol, ptr %243, i64 %386, i32 3
  store i8 -1, ptr %387, align 1, !tbaa !146
  %388 = getelementptr inbounds %struct.MCol, ptr %243, i64 %386, i32 2
  store i8 -1, ptr %388, align 1, !tbaa !148
  %389 = getelementptr inbounds %struct.MCol, ptr %243, i64 %386, i32 1
  store i8 -1, ptr %389, align 1, !tbaa !149
  %390 = add nuw nsw i64 %385, 1
  %391 = icmp eq i64 %390, 4
  br i1 %391, label %406, label %384, !llvm.loop !157

392:                                              ; preds = %315, %392
  %393 = phi i64 [ 0, %315 ], [ %404, %392 ]
  %394 = add nuw nsw i64 %393, %317
  %395 = getelementptr inbounds %struct.MCol, ptr %225, i64 %394, i32 1
  %396 = load i8, ptr %395, align 1, !tbaa !149
  %397 = getelementptr inbounds %struct.MCol, ptr %243, i64 %394, i32 1
  store i8 %396, ptr %397, align 1, !tbaa !149
  %398 = getelementptr inbounds %struct.MCol, ptr %225, i64 %394, i32 2
  %399 = load i8, ptr %398, align 1, !tbaa !148
  %400 = getelementptr inbounds %struct.MCol, ptr %243, i64 %394, i32 2
  store i8 %399, ptr %400, align 1, !tbaa !148
  %401 = getelementptr inbounds %struct.MCol, ptr %225, i64 %394, i32 3
  %402 = load i8, ptr %401, align 1, !tbaa !146
  %403 = getelementptr inbounds %struct.MCol, ptr %243, i64 %394, i32 3
  store i8 %402, ptr %403, align 1, !tbaa !146
  %404 = add nuw nsw i64 %393, 1
  %405 = icmp eq i64 %404, 4
  br i1 %405, label %406, label %392, !llvm.loop !158

406:                                              ; preds = %271, %286, %303, %392, %322, %376, %384, %268
  %407 = add nuw nsw i64 %253, 1
  %408 = load ptr, ptr %244, align 8, !tbaa !138
  %409 = call i32 %408(ptr noundef %4) #11
  %410 = sext i32 %409 to i64
  %411 = icmp slt i64 %407, %410
  br i1 %411, label %252, label %412, !llvm.loop !159

412:                                              ; preds = %406, %242
  %413 = call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 4) #11
  %414 = getelementptr inbounds %struct.drawTFace_userData, ptr %19, i64 0, i32 1
  store ptr %413, ptr %414, align 8, !tbaa !131
  %415 = call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 5) #11
  %416 = getelementptr inbounds %struct.drawTFace_userData, ptr %19, i64 0, i32 2
  store ptr %415, ptr %416, align 8, !tbaa !133
  store ptr null, ptr %19, align 8, !tbaa !134
  %417 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 87
  %418 = load ptr, ptr %417, align 8, !tbaa !135
  call void %418(ptr noundef %4, ptr noundef nonnull @draw_tface__set_draw, ptr noundef nonnull @compareDrawOptions, ptr noundef nonnull %19, i32 noundef %163) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #11
  br label %419

419:                                              ; preds = %412, %211, %210, %193, %190, %166
  %420 = call ptr @BKE_bproperty_object_get(ptr noundef %3, ptr noundef nonnull @.str) #11
  %421 = icmp eq ptr %420, null
  br i1 %421, label %609, label %422

422:                                              ; preds = %419
  %423 = load ptr, ptr %41, align 8, !tbaa !75
  %424 = getelementptr inbounds %struct.Mesh, ptr %423, i64 0, i32 7
  %425 = load ptr, ptr %424, align 8, !tbaa !48
  %426 = getelementptr inbounds %struct.Mesh, ptr %423, i64 0, i32 8
  %427 = load ptr, ptr %426, align 8, !tbaa !160
  %428 = getelementptr inbounds %struct.Mesh, ptr %423, i64 0, i32 10
  %429 = load ptr, ptr %428, align 8, !tbaa !161
  %430 = getelementptr inbounds %struct.Mesh, ptr %423, i64 0, i32 11
  %431 = load ptr, ptr %430, align 8, !tbaa !162
  %432 = call ptr @BKE_bproperty_object_get(ptr noundef %3, ptr noundef nonnull @.str) #11
  %433 = getelementptr inbounds %struct.Mesh, ptr %423, i64 0, i32 30
  %434 = load i32, ptr %433, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %435 = icmp eq ptr %431, null
  %436 = select i1 %435, ptr null, ptr %7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %437 = icmp ne ptr %427, null
  %438 = icmp ne ptr %429, null
  %439 = select i1 %437, i1 %438, i1 false
  br i1 %439, label %440, label %608

440:                                              ; preds = %422
  %441 = load i32, ptr %100, align 8, !tbaa !70
  %442 = and i32 %441, 1
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %608

444:                                              ; preds = %440
  %445 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %446 = load ptr, ptr %445, align 8, !tbaa !163
  %447 = icmp eq ptr %446, null
  br i1 %447, label %451, label %448

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.Base, ptr %446, i64 0, i32 7
  %450 = load ptr, ptr %449, align 8, !tbaa !164
  br label %451

451:                                              ; preds = %448, %444
  %452 = phi ptr [ %450, %448 ], [ null, %444 ]
  %453 = icmp eq ptr %452, %3
  br i1 %453, label %454, label %457

454:                                              ; preds = %451
  %455 = call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %3) #11
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %457, label %608

457:                                              ; preds = %454, %451
  %458 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !166
  %459 = call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %3, i64 noundef %458) #11
  %460 = icmp sgt i32 %434, 0
  br i1 %460, label %461, label %605

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.Mesh, ptr %423, i64 0, i32 5
  %463 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 1
  %464 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 2
  %465 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 3
  %466 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 4
  %467 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 5
  %468 = getelementptr inbounds %struct.Mesh, ptr %423, i64 0, i32 9
  %469 = getelementptr inbounds float, ptr %8, i64 1
  %470 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 1
  %471 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 1, i64 1
  %472 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 2
  %473 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 2, i64 1
  %474 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 3
  %475 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 3, i64 1
  %476 = getelementptr inbounds %struct.DerivedMesh, ptr %459, i64 0, i32 76
  br label %477

477:                                              ; preds = %461, %600
  %478 = phi ptr [ %425, %461 ], [ %603, %600 ]
  %479 = phi ptr [ %427, %461 ], [ %602, %600 ]
  %480 = phi i32 [ 0, %461 ], [ %601, %600 ]
  %481 = getelementptr inbounds %struct.MPoly, ptr %478, i64 0, i32 3
  %482 = load i8, ptr %481, align 2, !tbaa !49
  %483 = and i8 %482, 1
  %484 = load ptr, ptr %462, align 8, !tbaa !167
  %485 = icmp eq ptr %484, null
  br i1 %485, label %492, label %486

486:                                              ; preds = %477
  %487 = getelementptr inbounds %struct.MPoly, ptr %478, i64 0, i32 2
  %488 = load i16, ptr %487, align 4, !tbaa !168
  %489 = sext i16 %488 to i64
  %490 = getelementptr inbounds ptr, ptr %484, i64 %489
  %491 = load ptr, ptr %490, align 8, !tbaa !39
  br label %492

492:                                              ; preds = %486, %477
  %493 = phi ptr [ %491, %486 ], [ null, %477 ]
  %494 = icmp eq ptr %493, null
  br i1 %494, label %498, label %495

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.Material, ptr %493, i64 0, i32 28
  %497 = load i32, ptr %496, align 8, !tbaa !142
  br label %498

498:                                              ; preds = %495, %492
  %499 = phi i32 [ %497, %495 ], [ 256, %492 ]
  %500 = and i32 %499, 320
  %501 = icmp eq i32 %500, 64
  br i1 %501, label %502, label %600

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.MPoly, ptr %478, i64 0, i32 1
  %504 = load i32, ptr %503, align 4, !tbaa !51
  %505 = icmp sgt i32 %504, 2
  br i1 %505, label %506, label %600

506:                                              ; preds = %502
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %13) #11
  %507 = load ptr, ptr %479, align 8, !tbaa !169
  store ptr %507, ptr %463, align 8, !tbaa !171
  %508 = getelementptr inbounds %struct.MTexPoly, ptr %479, i64 0, i32 1
  %509 = load i8, ptr %508, align 8, !tbaa !173
  store i8 %509, ptr %464, align 8, !tbaa !174
  %510 = getelementptr inbounds %struct.MTexPoly, ptr %479, i64 0, i32 2
  %511 = load i8, ptr %510, align 1, !tbaa !175
  store i8 %511, ptr %465, align 1, !tbaa !176
  %512 = getelementptr inbounds %struct.MTexPoly, ptr %479, i64 0, i32 3
  %513 = load i16, ptr %512, align 2, !tbaa !177
  store i16 %513, ptr %466, align 2, !tbaa !178
  %514 = getelementptr inbounds %struct.MTexPoly, ptr %479, i64 0, i32 4
  %515 = load i16, ptr %514, align 4, !tbaa !179
  store i16 %515, ptr %467, align 4, !tbaa !180
  %516 = call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef nonnull %8, ptr noundef %493, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw), !range !119
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %518, label %599

518:                                              ; preds = %506
  %519 = load ptr, ptr %468, align 8, !tbaa !52
  %520 = load i32, ptr %478, align 4, !tbaa !53
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.MLoop, ptr %519, i64 %521
  %523 = load i32, ptr %522, align 4, !tbaa !181
  %524 = getelementptr %struct.MLoop, ptr %522, i64 1
  %525 = load i32, ptr %524, align 4, !tbaa !181
  %526 = getelementptr %struct.MLoop, ptr %522, i64 2
  %527 = load i32, ptr %526, align 4, !tbaa !181
  %528 = load i32, ptr %503, align 4, !tbaa !51
  %529 = icmp sgt i32 %528, 3
  br i1 %529, label %530, label %533

530:                                              ; preds = %518
  %531 = getelementptr %struct.MLoop, ptr %522, i64 3
  %532 = load i32, ptr %531, align 4, !tbaa !181
  br label %533

533:                                              ; preds = %530, %518
  %534 = phi i32 [ %532, %530 ], [ 0, %518 ]
  %535 = getelementptr inbounds %struct.MLoopUV, ptr %429, i64 %521
  %536 = load float, ptr %535, align 4, !tbaa !112
  store float %536, ptr %8, align 8, !tbaa !112
  %537 = getelementptr inbounds float, ptr %535, i64 1
  %538 = load float, ptr %537, align 4, !tbaa !112
  store float %538, ptr %469, align 4, !tbaa !112
  %539 = getelementptr inbounds %struct.MLoopUV, ptr %535, i64 1
  %540 = load float, ptr %539, align 4, !tbaa !112
  store float %540, ptr %470, align 8, !tbaa !112
  %541 = getelementptr inbounds %struct.MLoopUV, ptr %535, i64 1, i32 0, i64 1
  %542 = load float, ptr %541, align 4, !tbaa !112
  store float %542, ptr %471, align 4, !tbaa !112
  %543 = getelementptr inbounds %struct.MLoopUV, ptr %535, i64 2
  %544 = load float, ptr %543, align 4, !tbaa !112
  store float %544, ptr %472, align 8, !tbaa !112
  %545 = getelementptr inbounds %struct.MLoopUV, ptr %535, i64 2, i32 0, i64 1
  %546 = load float, ptr %545, align 4, !tbaa !112
  store float %546, ptr %473, align 4, !tbaa !112
  br i1 %529, label %547, label %552

547:                                              ; preds = %533
  %548 = getelementptr inbounds %struct.MLoopUV, ptr %535, i64 3
  %549 = load float, ptr %548, align 4, !tbaa !112
  store float %549, ptr %474, align 8, !tbaa !112
  %550 = getelementptr inbounds %struct.MLoopUV, ptr %535, i64 3, i32 0, i64 1
  %551 = load float, ptr %550, align 4, !tbaa !112
  store float %551, ptr %475, align 4, !tbaa !112
  br label %552

552:                                              ; preds = %547, %533
  %553 = icmp eq i32 %528, 0
  %554 = or i1 %435, %553
  br i1 %554, label %577, label %555

555:                                              ; preds = %552
  %556 = getelementptr inbounds %struct.MLoopCol, ptr %431, i64 %521
  %557 = call i32 @llvm.smin.i32(i32 %528, i32 4)
  %558 = call i32 @llvm.umax.i32(i32 %557, i32 1)
  %559 = zext i32 %558 to i64
  br label %560

560:                                              ; preds = %555, %560
  %561 = phi i64 [ 0, %555 ], [ %574, %560 ]
  %562 = phi ptr [ %556, %555 ], [ %575, %560 ]
  %563 = getelementptr inbounds [4 x %struct.MCol], ptr %7, i64 0, i64 %561
  %564 = load i8, ptr %562, align 1, !tbaa !182
  %565 = getelementptr inbounds [4 x %struct.MCol], ptr %7, i64 0, i64 %561, i32 3
  store i8 %564, ptr %565, align 1, !tbaa !146
  %566 = getelementptr inbounds %struct.MLoopCol, ptr %562, i64 0, i32 1
  %567 = load i8, ptr %566, align 1, !tbaa !184
  %568 = getelementptr inbounds [4 x %struct.MCol], ptr %7, i64 0, i64 %561, i32 2
  store i8 %567, ptr %568, align 2, !tbaa !148
  %569 = getelementptr inbounds %struct.MLoopCol, ptr %562, i64 0, i32 2
  %570 = load i8, ptr %569, align 1, !tbaa !185
  %571 = getelementptr inbounds [4 x %struct.MCol], ptr %7, i64 0, i64 %561, i32 1
  store i8 %570, ptr %571, align 1, !tbaa !149
  %572 = getelementptr inbounds %struct.MLoopCol, ptr %562, i64 0, i32 3
  %573 = load i8, ptr %572, align 1, !tbaa !186
  store i8 %573, ptr %563, align 4, !tbaa !187
  %574 = add nuw nsw i64 %561, 1
  %575 = getelementptr inbounds %struct.MLoopCol, ptr %562, i64 1
  %576 = icmp eq i64 %574, %559
  br i1 %576, label %577, label %560, !llvm.loop !188

577:                                              ; preds = %560, %552
  %578 = load ptr, ptr %476, align 8, !tbaa !189
  call void %578(ptr noundef %459, i32 noundef %523, ptr noundef nonnull %9) #11
  %579 = load ptr, ptr %476, align 8, !tbaa !189
  call void %579(ptr noundef %459, i32 noundef %525, ptr noundef nonnull %10) #11
  %580 = load ptr, ptr %476, align 8, !tbaa !189
  call void %580(ptr noundef %459, i32 noundef %527, ptr noundef nonnull %11) #11
  %581 = load i32, ptr %503, align 4, !tbaa !51
  %582 = icmp sgt i32 %581, 3
  br i1 %582, label %583, label %585

583:                                              ; preds = %577
  %584 = load ptr, ptr %476, align 8, !tbaa !189
  call void %584(ptr noundef %459, i32 noundef %534, ptr noundef nonnull %12) #11
  br label %585

585:                                              ; preds = %583, %577
  call void @BKE_bproperty_set_valstr(ptr noundef %432, ptr noundef nonnull %13) #11
  %586 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #12
  %587 = trunc i64 %586 to i32
  %588 = load ptr, ptr %479, align 8, !tbaa !169
  %589 = call zeroext i8 @BKE_image_has_ibuf(ptr noundef %588, ptr noundef null) #11
  %590 = icmp eq i8 %589, 0
  %591 = select i1 %590, i32 0, i32 %587
  %592 = icmp eq i8 %483, 0
  br i1 %592, label %593, label %595

593:                                              ; preds = %585
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %594 = call float @normal_tri_v3(ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  call void @glNormal3fv(ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  br label %595

595:                                              ; preds = %593, %585
  %596 = load i32, ptr %503, align 4, !tbaa !51
  %597 = icmp sgt i32 %596, 3
  %598 = select i1 %597, ptr %12, ptr null
  call void @GPU_render_text(ptr noundef nonnull %8, i32 noundef %499, ptr noundef nonnull %13, i32 noundef %591, ptr noundef %436, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %598, i32 noundef -1) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %600

599:                                              ; preds = %506
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %600

600:                                              ; preds = %599, %595, %502, %498
  %601 = add nuw nsw i32 %480, 1
  %602 = getelementptr inbounds %struct.MTexPoly, ptr %479, i64 1
  %603 = getelementptr inbounds %struct.MPoly, ptr %478, i64 1
  %604 = icmp eq i32 %601, %434
  br i1 %604, label %605, label %477, !llvm.loop !190

605:                                              ; preds = %600, %457
  %606 = getelementptr inbounds %struct.DerivedMesh, ptr %459, i64 0, i32 95
  %607 = load ptr, ptr %606, align 8, !tbaa !191
  call void %607(ptr noundef %459) #11
  br label %608

608:                                              ; preds = %605, %454, %440, %422
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %609

609:                                              ; preds = %608, %419
  %610 = load ptr, ptr @Gtexdraw, align 8, !tbaa !100
  %611 = getelementptr inbounds %struct.Object, ptr %610, i64 0, i32 27
  %612 = load i32, ptr %611, align 8, !tbaa !70
  %613 = and i32 %612, 16
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %623, label %615

615:                                              ; preds = %609
  %616 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  call void %616(i32 noundef 33985) #11
  call void @glDisable(i32 noundef 3553) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 768) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #11
  call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #11
  %617 = load ptr, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !105
  %618 = icmp eq ptr %617, null
  br i1 %618, label %621, label %619

619:                                              ; preds = %615
  %620 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  call void %620(i32 noundef 33986) #11
  call void @glDisable(i32 noundef 3553) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 768) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #11
  call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #11
  br label %621

621:                                              ; preds = %619, %615
  %622 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  call void %622(i32 noundef 33984) #11
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #11
  call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #11
  call void @GPU_clear_tpage(i8 noundef zeroext 1) #11
  br label %625

623:                                              ; preds = %609
  %624 = call i32 @GPU_set_tpage(ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  br label %625

625:                                              ; preds = %623, %621
  call void @glShadeModel(i32 noundef 7424) #11
  call void @glDisable(i32 noundef 2884) #11
  call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #11
  call void @glPushMatrix() #11
  call void @glLoadIdentity() #11
  %626 = call i32 @GPU_default_lights() #11
  call void @glPopMatrix() #11
  %627 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %628 = load ptr, ptr %627, align 8, !tbaa !192
  %629 = icmp eq ptr %628, %3
  %630 = and i32 %5, 2
  %631 = icmp eq i32 %630, 0
  %632 = or i1 %631, %629
  br i1 %632, label %634, label %633

633:                                              ; preds = %625
  call void @draw_mesh_face_select(ptr noundef %2, ptr noundef %42, ptr noundef %4)
  br label %634

634:                                              ; preds = %625, %633
  call void @glFrontFace(i32 noundef 2305) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  br label %692

635:                                              ; preds = %37, %32
  %636 = and i32 %34, 12
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %639, label %638

638:                                              ; preds = %635
  tail call void @draw_mesh_paint(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %692

639:                                              ; preds = %635
  %640 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %641 = load i16, ptr %640, align 8, !tbaa !76
  %642 = and i16 %641, 4
  %643 = icmp eq i16 %642, 0
  %644 = select i1 %643, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %644) #11
  %645 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %646 = load i16, ptr %645, align 8, !tbaa !74
  %647 = icmp eq i16 %646, 5
  br i1 %647, label %648, label %652

648:                                              ; preds = %639
  %649 = load i16, ptr %25, align 2, !tbaa !66
  %650 = icmp sgt i16 %649, -1
  br i1 %650, label %652, label %651

651:                                              ; preds = %648
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  br label %653

652:                                              ; preds = %648, %639
  tail call void @glEnable(i32 noundef 2896) #11
  br label %653

653:                                              ; preds = %652, %651
  %654 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %655 = load ptr, ptr %654, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #11
  store ptr %0, ptr %20, align 8, !tbaa !193
  %656 = getelementptr inbounds %struct.TexMatCallback, ptr %20, i64 0, i32 1
  store ptr %3, ptr %656, align 8, !tbaa !195
  %657 = getelementptr inbounds %struct.TexMatCallback, ptr %20, i64 0, i32 2
  store ptr %655, ptr %657, align 8, !tbaa !196
  %658 = getelementptr inbounds %struct.TexMatCallback, ptr %20, i64 0, i32 3
  store ptr %4, ptr %658, align 8, !tbaa !197
  %659 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !198
  %660 = and i32 %659, 32
  %661 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %662 = load ptr, ptr %661, align 8, !tbaa !192
  %663 = icmp eq ptr %662, %3
  %664 = and i32 %5, 2
  %665 = icmp eq i32 %664, 0
  %666 = select i1 %665, ptr null, ptr @tex_mat_set_face_mesh_cb
  %667 = select i1 %663, ptr @tex_mat_set_face_editmesh_cb, ptr %666
  %668 = load i16, ptr %645, align 8, !tbaa !74
  %669 = icmp eq i16 %668, 4
  br i1 %669, label %670, label %675

670:                                              ; preds = %653
  %671 = tail call i32 @GPU_glsl_support() #11
  %672 = icmp ne i32 %671, 0
  %673 = icmp eq i32 %660, 0
  %674 = select i1 %672, i1 %673, i1 false
  br label %675

675:                                              ; preds = %670, %653
  %676 = phi i1 [ false, %653 ], [ %674, %670 ]
  %677 = zext i1 %676 to i8
  tail call void @GPU_begin_object_materials(ptr noundef %1, ptr noundef %2, ptr noundef %0, ptr noundef %3, i8 noundef zeroext %677, ptr noundef null) #11
  %678 = icmp ne i32 %660, 0
  %679 = select i1 %676, i1 true, i1 %678
  br i1 %679, label %680, label %683

680:                                              ; preds = %675
  %681 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 94
  %682 = load ptr, ptr %681, align 8, !tbaa !200
  call void %682(ptr noundef %4, ptr noundef nonnull @tex_mat_set_material_cb, ptr noundef %667, ptr noundef nonnull %20) #11
  br label %686

683:                                              ; preds = %675
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %21) #11
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %21) #11
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 0) #11
  %684 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 94
  %685 = load ptr, ptr %684, align 8, !tbaa !200
  call void %685(ptr noundef %4, ptr noundef nonnull @tex_mat_set_texture_cb, ptr noundef %667, ptr noundef nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #11
  br label %686

686:                                              ; preds = %683, %680
  call void @GPU_end_object_materials() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #11
  call void @glDisable(i32 noundef 2903) #11
  call void @glDisable(i32 noundef 3553) #11
  call void @glDisable(i32 noundef 2896) #11
  call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #11
  call void @glFrontFace(i32 noundef 2305) #11
  call void @glMatrixMode(i32 noundef 5890) #11
  call void @glLoadIdentity() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  %687 = load ptr, ptr %661, align 8, !tbaa !192
  %688 = icmp eq ptr %687, %3
  %689 = or i1 %665, %688
  br i1 %689, label %692, label %690

690:                                              ; preds = %686
  %691 = load ptr, ptr %654, align 8, !tbaa !75
  call void @draw_mesh_face_select(ptr noundef %2, ptr noundef %691, ptr noundef %4)
  br label %692

692:                                              ; preds = %634, %638, %690, %686
  ret void
}

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_mesh_paint(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 24
  %9 = load i16, ptr %8, align 8, !tbaa !74
  %10 = icmp sgt i16 %9, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !201
  %14 = and i8 %13, 40
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr null, ptr @wpaint__setSolidDrawOptions_facemask
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !70
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  tail call void @draw_mesh_paint_weight_faces(ptr noundef %3, i8 noundef zeroext %11, ptr noundef %16, ptr noundef %7)
  br label %26

22:                                               ; preds = %5
  %23 = and i32 %18, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @draw_mesh_paint_vcolor_faces(ptr noundef %3, i8 noundef zeroext %11, ptr noundef %16, ptr noundef %7, ptr noundef %7)
  br label %26

26:                                               ; preds = %22, %25, %21
  %27 = and i32 %4, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @draw_mesh_face_select(ptr noundef %1, ptr noundef %7, ptr noundef %3)
  br label %54

30:                                               ; preds = %26
  br i1 %10, label %31, label %36

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 86
  %33 = load i16, ptr %32, align 4, !tbaa !202
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31, %30
  %37 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 28
  %38 = load i16, ptr %37, align 8, !tbaa !203
  %39 = and i16 %38, 4096
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, ptr %17, align 8, !tbaa !70
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i8 [ 1, %36 ], [ %45, %41 ]
  %48 = load i32, ptr %17, align 8, !tbaa !70
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i8
  br i1 %50, label %53, label %52

52:                                               ; preds = %46
  tail call void @set_inverted_drawing(i32 noundef 1) #11
  tail call void @draw_mesh_paint_weight_edges(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %47, i8 noundef zeroext %51, ptr noundef null, ptr noundef null)
  tail call void @set_inverted_drawing(i32 noundef 0) #11
  br label %54

53:                                               ; preds = %46
  tail call void @draw_mesh_paint_weight_edges(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %47, i8 noundef zeroext %51, ptr noundef null, ptr noundef null)
  br label %54

54:                                               ; preds = %52, %53, %31, %29
  ret void
}

declare void @glFrontFace(i32 noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @tex_mat_set_face_editmesh_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.TexMatCallback, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !204
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = tail call ptr @BM_face_at_index(ptr noundef %7, i32 noundef %1) #11
  %13 = getelementptr inbounds %struct.BMHeader, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !206
  %15 = lshr i8 %14, 1
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  br label %18

18:                                               ; preds = %2, %11
  %19 = phi i8 [ %17, %11 ], [ 1, %2 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @tex_mat_set_face_mesh_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.TexMatCallback, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MPoly, ptr %6, i64 %7, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !49
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  ret i8 %12
}

declare i32 @GPU_glsl_support() local_unnamed_addr #2

declare void @GPU_begin_object_materials(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @tex_mat_set_material_cb(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @GPU_enable_material(i32 noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glMateriali(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @tex_mat_set_texture_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.TexMatCallback, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = call zeroext i8 @ED_object_get_active_image(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8, !tbaa !39
  %17 = call i32 @GPU_verify_image(ptr noundef nonnull %13, ptr noundef %16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %18 = icmp eq i32 %17, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !208
  call void @GPU_disable_material() #11
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %7) #11
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %7) #11
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 0) #11
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #11
  call void @glEnable(i32 noundef 2903) #11
  call void @glEnable(i32 noundef 3553) #11
  %23 = load ptr, ptr %4, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.Image, ptr %23, i64 0, i32 20
  %25 = load i32, ptr %24, align 4, !tbaa !210
  call void @glBindTexture(i32 noundef 3553, i32 noundef %25) #11
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  call void @glMatrixMode(i32 noundef 5890) #11
  %26 = getelementptr inbounds %struct.TexMapping, ptr %22, i64 0, i32 9
  call void @glLoadMatrixf(ptr noundef nonnull %26) #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %2, i8 0, i64 2564, i1 false)
  store i32 5, ptr %2, align 4, !tbaa !212
  %27 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 4
  store i8 0, ptr %27, align 4, !tbaa !153
  %28 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 2
  store i32 1, ptr %28, align 4, !tbaa !214
  %29 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %2, i64 0, i32 1
  store i32 1, ptr %29, align 4, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %34

30:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %31

31:                                               ; preds = %30, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %32

32:                                               ; preds = %3, %31
  call void @glMatrixMode(i32 noundef 5890) #11
  call void @glLoadIdentity() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glDisable(i32 noundef 3553) #11
  call void @glDisable(i32 noundef 2903) #11
  %33 = call i32 @GPU_enable_material(i32 noundef %1, ptr noundef %2) #11
  br label %34

34:                                               ; preds = %19, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

declare void @GPU_end_object_materials() local_unnamed_addr #2

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_mesh_paint_weight_faces(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_mesh_paint_light_begin.spec, i64 16, i1 false)
  %8 = tail call i32 @GPU_enable_material(i32 noundef 0, ptr noundef null) #11
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4610) #11
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %5) #11
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #11
  call void @glEnable(i32 noundef 2896) #11
  call void @glEnable(i32 noundef 2903) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 89
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  call void %10(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %3, i32 noundef 3) #11
  call void @glDisable(i32 noundef 2903) #11
  call void @glDisable(i32 noundef 2896) #11
  call void @GPU_disable_material() #11
  br label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 89
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  tail call void %13(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %3, i32 noundef 3) #11
  br label %14

14:                                               ; preds = %11, %7
  ret void
}

declare i32 @GPU_enable_material(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_mesh_paint_vcolor_faces(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_mesh_paint_light_begin.spec, i64 16, i1 false)
  %9 = tail call i32 @GPU_enable_material(i32 noundef 0, ptr noundef null) #11
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4610) #11
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %6) #11
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #11
  call void @glEnable(i32 noundef 2896) #11
  call void @glEnable(i32 noundef 2903) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  br label %15

15:                                               ; preds = %10, %14
  %16 = phi i32 [ 2, %14 ], [ 3, %10 ]
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 89
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  call void %18(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %3, i32 noundef %16) #11
  br i1 %7, label %20, label %19

19:                                               ; preds = %15
  call void @glDisable(i32 noundef 2903) #11
  call void @glDisable(i32 noundef 2896) #11
  call void @GPU_disable_material() #11
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_mesh_paint_weight_edges(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 1.000000e+00) #11
  tail call void @glDepthMask(i8 noundef zeroext 0) #11
  br label %10

9:                                                ; preds = %6
  tail call void @glDisable(i32 noundef 2929) #11
  br label %10

10:                                               ; preds = %9, %8
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @glEnable(i32 noundef 3042) #11
  br label %13

13:                                               ; preds = %12, %10
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 96) #11
  tail call void @glEnable(i32 noundef 2852) #11
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #11
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  tail call void %15(ptr noundef %1, ptr noundef %4, ptr noundef %5) #11
  br i1 %7, label %17, label %16

16:                                               ; preds = %13
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 0.000000e+00) #11
  tail call void @glDepthMask(i8 noundef zeroext 1) #11
  br label %18

17:                                               ; preds = %13
  tail call void @glEnable(i32 noundef 2929) #11
  br label %18

18:                                               ; preds = %17, %16
  tail call void @glDisable(i32 noundef 2852) #11
  br i1 %11, label %20, label %19

19:                                               ; preds = %18
  tail call void @glDisable(i32 noundef 3042) #11
  br label %20

20:                                               ; preds = %19, %18
  ret void
}

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #2

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @wpaint__setSolidDrawOptions_facemask(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !49
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare void @set_inverted_drawing(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @draw_em_tf_mapped__set_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.MTFace, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !122
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !204
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = tail call ptr @BM_face_at_index(ptr noundef %5, i32 noundef %1) #11
  %11 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !206
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %16 = getelementptr inbounds %struct.BMFace, ptr %10, i64 0, i32 5
  %17 = load i16, ptr %16, align 8, !tbaa !217
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 2
  %20 = load i8, ptr %19, align 1, !tbaa !127
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8, !tbaa !124
  %24 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 27
  %25 = load ptr, ptr %10, align 8, !tbaa !219
  %26 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %24, ptr noundef %25, i32 noundef 15) #11
  %27 = load ptr, ptr %26, align 8, !tbaa !169
  %28 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !171
  %29 = getelementptr inbounds %struct.MTexPoly, ptr %26, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !173
  %31 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 2
  store i8 %30, ptr %31, align 8, !tbaa !174
  %32 = getelementptr inbounds %struct.MTexPoly, ptr %26, i64 0, i32 2
  %33 = load i8, ptr %32, align 1, !tbaa !175
  %34 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 3
  store i8 %33, ptr %34, align 1, !tbaa !176
  %35 = getelementptr inbounds %struct.MTexPoly, ptr %26, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !177
  %37 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 4
  store i16 %36, ptr %37, align 2, !tbaa !178
  %38 = getelementptr inbounds %struct.MTexPoly, ptr %26, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !179
  %40 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 5
  store i16 %39, ptr %40, align 4, !tbaa !180
  br label %41

41:                                               ; preds = %22, %15
  %42 = load i8, ptr %19, align 1, !tbaa !127
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, ptr null, ptr %3
  %45 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !126
  %47 = call i32 @draw_tface__set_draw_legacy(ptr noundef %44, i8 noundef zeroext %46, i32 noundef %18), !range !220
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %48

48:                                               ; preds = %9, %2, %41
  %49 = phi i32 [ %47, %41 ], [ 1, %2 ], [ 0, %9 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @compareDrawOptionsEm(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MFace, ptr %5, i64 %8, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !140
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %5, i64 %11, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !140
  %14 = icmp eq i16 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %20, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  %23 = sext i32 %2 to i64
  %24 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %23, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %15
  br label %28

28:                                               ; preds = %19, %7, %27
  %29 = phi i32 [ 1, %27 ], [ 0, %7 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @draw_tface_mapped__set_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.MTFace, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MPoly, ptr %6, i64 %7, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !49
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %15 = getelementptr inbounds %struct.MPoly, ptr %6, i64 %7, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !168
  %17 = icmp eq ptr %14, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7
  %20 = load ptr, ptr %19, align 8, !tbaa !169
  %21 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !171
  %22 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 2
  store i8 %23, ptr %24, align 8, !tbaa !174
  %25 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7, i32 2
  %26 = load i8, ptr %25, align 1, !tbaa !175
  %27 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 3
  store i8 %26, ptr %27, align 1, !tbaa !176
  %28 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7, i32 3
  %29 = load i16, ptr %28, align 2, !tbaa !177
  %30 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 4
  store i16 %29, ptr %30, align 2, !tbaa !178
  %31 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7, i32 4
  %32 = load i16, ptr %31, align 4, !tbaa !179
  %33 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 5
  store i16 %32, ptr %33, align 4, !tbaa !180
  br label %34

34:                                               ; preds = %18, %12
  %35 = load ptr, ptr @Gtexdraw, align 8, !tbaa !100
  %36 = add i16 %16, 1
  %37 = tail call ptr @give_current_material(ptr noundef %35, i16 noundef signext %36) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Material, ptr %37, i64 0, i32 28
  %41 = load i32, ptr %40, align 8, !tbaa !142
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34
  %45 = call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef nonnull %3, ptr noundef %37, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw), !range !119
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi i32 [ 0, %39 ], [ 1, %44 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %48

48:                                               ; preds = %2, %46
  %49 = phi i32 [ %47, %46 ], [ 0, %2 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @compareDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drawTFace_userData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MFace, ptr %5, i64 %8, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !140
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %5, i64 %11, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !140
  %14 = icmp eq i16 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.drawTFace_userData, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %20, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  %23 = sext i32 %2 to i64
  %24 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %23, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %15
  br label %28

28:                                               ; preds = %19, %7, %27
  %29 = phi i32 [ 1, %27 ], [ 0, %7 ], [ 0, %19 ]
  ret i32 %29
}

declare zeroext i8 @GPU_buffer_legacy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @draw_mcol__set_draw_legacy(ptr nocapture readnone %0, i8 noundef zeroext %1, i32 %2) #5 {
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, i32 2, i32 1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @draw_tface__set_draw_legacy(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = load ptr, ptr @Gtexdraw, align 8, !tbaa !100
  %6 = trunc i32 %2 to i16
  %7 = add i16 %6, 1
  %8 = tail call ptr @give_current_material(ptr noundef %5, i16 noundef signext %7) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !142
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %10, %3
  %16 = tail call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef %0, ptr noundef %8, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw), !range !119
  %17 = icmp ne ptr %0, null
  %18 = icmp ne i8 %16, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #11
  br label %57

21:                                               ; preds = %15
  br i1 %9, label %28, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 50
  %24 = load i16, ptr %23, align 2, !tbaa !152
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @glColor3ubv(ptr noundef nonnull getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8)) #11
  br label %57

28:                                               ; preds = %22, %21
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %28
  br i1 %17, label %31, label %32

31:                                               ; preds = %30
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  br label %57

32:                                               ; preds = %30
  br i1 %9, label %56, label %33

33:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %34 = load i32, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 6), align 4, !tbaa !113
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 4
  %37 = load float, ptr %36, align 4, !tbaa !112
  br i1 %35, label %47, label %38

38:                                               ; preds = %33
  %39 = tail call float @linearrgb_to_srgb(float noundef %37) #11
  store float %39, ptr %4, align 4, !tbaa !112
  %40 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 5
  %41 = load float, ptr %40, align 4, !tbaa !112
  %42 = tail call float @linearrgb_to_srgb(float noundef %41) #11
  %43 = getelementptr inbounds float, ptr %4, i64 1
  store float %42, ptr %43, align 4, !tbaa !112
  %44 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 6
  %45 = load float, ptr %44, align 4, !tbaa !112
  %46 = tail call float @linearrgb_to_srgb(float noundef %45) #11
  br label %53

47:                                               ; preds = %33
  store float %37, ptr %4, align 4, !tbaa !112
  %48 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 5
  %49 = load float, ptr %48, align 4, !tbaa !112
  %50 = getelementptr inbounds float, ptr %4, i64 1
  store float %49, ptr %50, align 4, !tbaa !112
  %51 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !112
  br label %53

53:                                               ; preds = %47, %38
  %54 = phi float [ %52, %47 ], [ %46, %38 ]
  %55 = getelementptr inbounds float, ptr %4, i64 2
  store float %54, ptr %55, align 4, !tbaa !112
  call void @glColor3fv(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %57

56:                                               ; preds = %32
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  br label %57

57:                                               ; preds = %28, %31, %56, %53, %10, %27, %20
  %58 = phi i32 [ 2, %20 ], [ 2, %27 ], [ 0, %10 ], [ 2, %53 ], [ 2, %56 ], [ 2, %31 ], [ 1, %28 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @draw_tface__set_draw(ptr noundef %0, i8 zeroext %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @Gtexdraw, align 8, !tbaa !100
  %5 = trunc i32 %2 to i16
  %6 = add i16 %5, 1
  %7 = tail call ptr @give_current_material(ptr noundef %4, i16 noundef signext %6) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 28
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9, %3
  %15 = icmp ne ptr %0, null
  %16 = load i8, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 9), align 1
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef %0, ptr noundef %7, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw), !range !119
  br label %21

21:                                               ; preds = %19, %14, %9
  %22 = phi i32 [ 0, %9 ], [ 1, %14 ], [ 1, %19 ]
  ret i32 %22
}

declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GPU_scene_object_lights(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GPU_verify_image(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glTexEnvfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @set_draw_settings_cached(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly byval(%struct.TextureDrawState) align 8 %3) unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = icmp ne ptr %1, null
  %7 = zext i1 %6 to i32
  %8 = load ptr, ptr %3, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !70
  %11 = icmp eq ptr %2, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %14 = load i32, ptr %13, align 4, !tbaa !221
  %15 = lshr i32 %14, 15
  %16 = and i32 %15, 2
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i32 [ 0, %4 ], [ %16, %12 ]
  %19 = icmp eq i32 %0, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 -1, ptr @set_draw_settings_cached.c_backculled, align 4, !tbaa !56
  store i32 -1, ptr @set_draw_settings_cached.c_lit, align 4, !tbaa !56
  store i32 -1, ptr @set_draw_settings_cached.c_textured, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @set_draw_settings_cached.c_texface, i8 0, i64 48, i1 false)
  store i8 0, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !153
  store i32 -1, ptr @set_draw_settings_cached.c_has_texface, align 4, !tbaa !56
  store ptr null, ptr @set_draw_settings_cached.c_ma, align 8, !tbaa !39
  br label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !111
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !95
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 7
  %31 = load i8, ptr %30, align 8, !tbaa !118
  %32 = zext i8 %31 to i32
  br i1 %11, label %54, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %35 = load i32, ptr %34, align 4, !tbaa !221
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %29, i32 0
  %39 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 3
  %40 = load i8, ptr %39, align 8, !tbaa !117
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = icmp eq i8 %31, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 28
  %46 = load i32, ptr %45, align 8, !tbaa !142
  %47 = and i32 %46, 16
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i1 [ true, %42 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 28, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !222
  br label %54

54:                                               ; preds = %33, %49, %24
  %55 = phi i32 [ %53, %49 ], [ %18, %33 ], [ %18, %24 ]
  %56 = phi i32 [ %38, %49 ], [ %38, %33 ], [ %29, %24 ]
  %57 = phi i32 [ %51, %49 ], [ %32, %33 ], [ %32, %24 ]
  %58 = icmp eq ptr %1, null
  %59 = and i32 %10, 16
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %54
  %63 = icmp eq i32 %25, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.MTFace, ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !171
  %67 = icmp ne ptr %66, null
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i32 [ 0, %62 ], [ %68, %64 ]
  br i1 %11, label %71, label %96

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.MTFace, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !171
  %74 = tail call zeroext i8 @BKE_image_has_alpha(ptr noundef %73) #11
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 %55, i32 2
  br label %96

77:                                               ; preds = %54
  br i1 %60, label %78, label %96

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 10
  %80 = load i8, ptr %79, align 2, !tbaa !108
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  br i1 %11, label %96, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 135
  %85 = load ptr, ptr %84, align 8, !tbaa !223
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 131
  %89 = load i16, ptr %88, align 4, !tbaa !224
  %90 = sext i16 %89 to i64
  %91 = getelementptr inbounds %struct.TexPaintSlot, ptr %85, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !225
  br label %96

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !110
  br label %96

96:                                               ; preds = %71, %77, %87, %83, %82, %93, %69
  %97 = phi i32 [ %55, %93 ], [ %55, %69 ], [ %76, %71 ], [ %55, %82 ], [ %55, %83 ], [ %55, %87 ], [ %55, %77 ]
  %98 = phi i32 [ %25, %93 ], [ %70, %69 ], [ %70, %71 ], [ %25, %82 ], [ %25, %83 ], [ %25, %87 ], [ 0, %77 ]
  %99 = phi ptr [ %95, %93 ], [ null, %69 ], [ null, %71 ], [ null, %82 ], [ null, %83 ], [ %92, %87 ], [ null, %77 ]
  %100 = load i32, ptr @set_draw_settings_cached.c_backculled, align 4, !tbaa !56
  %101 = icmp eq i32 %57, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  %103 = icmp eq i32 %57, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  tail call void @glEnable(i32 noundef 2884) #11
  br label %106

105:                                              ; preds = %102
  tail call void @glDisable(i32 noundef 2884) #11
  br label %106

106:                                              ; preds = %105, %104
  store i32 %57, ptr @set_draw_settings_cached.c_backculled, align 4, !tbaa !56
  br label %107

107:                                              ; preds = %106, %96
  %108 = load i32, ptr @set_draw_settings_cached.c_textured, align 4, !tbaa !56
  %109 = icmp ne i32 %98, %108
  %110 = load i32, ptr @set_draw_settings_cached.c_has_texface, align 4
  %111 = icmp ne i32 %110, %7
  %112 = select i1 %109, i1 true, i1 %111
  %113 = load ptr, ptr @set_draw_settings_cached.c_ma, align 8
  %114 = icmp ne ptr %113, %2
  %115 = select i1 %60, i1 %114, i1 false
  %116 = xor i1 %6, true
  %117 = or i1 %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(48) @set_draw_settings_cached.c_texface, ptr noundef nonnull dereferenceable(48) %1, i64 48)
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %107, %118
  %122 = phi i1 [ %120, %118 ], [ %115, %107 ]
  %123 = or i1 %112, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = icmp eq i32 %98, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %124
  br i1 %60, label %127, label %138

127:                                              ; preds = %126
  store i8 0, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !153
  %128 = tail call i32 @GPU_verify_image(ptr noundef %99, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  tail call void @glEnable(i32 noundef 3553) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 8448) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 5890) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34167) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 5890) #11
  %131 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  tail call void %131(i32 noundef 33985) #11
  tail call void @glEnable(i32 noundef 3553) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 34165) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 34168) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34167) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34178, i32 noundef 34168) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 770) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 34168) #11
  %132 = getelementptr inbounds %struct.Image, ptr %99, i64 0, i32 20
  %133 = load i32, ptr %132, align 4, !tbaa !210
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %133) #11
  %134 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  tail call void %134(i32 noundef 33984) #11
  br label %144

135:                                              ; preds = %127
  %136 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  tail call void %136(i32 noundef 33985) #11
  tail call void @glDisable(i32 noundef 3553) #11
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #11
  %137 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !39
  tail call void %137(i32 noundef 33984) #11
  store i8 1, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !153
  tail call void @GPU_clear_tpage(i8 noundef zeroext 1) #11
  tail call void @glDisable(i32 noundef 3553) #11
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #11
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #11
  br label %144

138:                                              ; preds = %126
  %139 = tail call i32 @GPU_set_tpage(ptr noundef %1, i32 noundef 1, i32 noundef %97) #11
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i8
  store i8 %141, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !153
  br label %144

142:                                              ; preds = %124
  %143 = tail call i32 @GPU_set_tpage(ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  store i8 0, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !153
  br label %144

144:                                              ; preds = %138, %135, %130, %142
  store i32 %98, ptr @set_draw_settings_cached.c_textured, align 4, !tbaa !56
  store i32 %7, ptr @set_draw_settings_cached.c_has_texface, align 4, !tbaa !56
  br i1 %6, label %145, label %146

145:                                              ; preds = %144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @set_draw_settings_cached.c_texface, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %146

146:                                              ; preds = %144, %145, %121
  %147 = load i8, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !153
  %148 = icmp eq i8 %147, 0
  %149 = select i1 %148, i32 %56, i32 0
  %150 = load i32, ptr @set_draw_settings_cached.c_lit, align 4, !tbaa !56
  %151 = icmp eq i32 %149, %150
  %152 = load ptr, ptr @set_draw_settings_cached.c_ma, align 8
  %153 = icmp eq ptr %152, %2
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %186, label %155

155:                                              ; preds = %146
  %156 = icmp eq i32 %149, 0
  br i1 %156, label %183, label %157

157:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  br i1 %11, label %158, label %162

158:                                              ; preds = %157
  %159 = tail call ptr @give_current_material(ptr noundef null, i16 noundef signext 0) #11
  %160 = icmp eq ptr %159, null
  %161 = select i1 %160, ptr @defmaterial, ptr %159
  br label %162

162:                                              ; preds = %158, %157
  %163 = phi ptr [ %2, %157 ], [ %161, %158 ]
  %164 = getelementptr inbounds %struct.Material, ptr %163, i64 0, i32 23
  %165 = load float, ptr %164, align 8, !tbaa !227
  %166 = getelementptr inbounds %struct.Material, ptr %163, i64 0, i32 7
  %167 = load float, ptr %166, align 8, !tbaa !228
  %168 = fmul float %165, %167
  store float %168, ptr %5, align 16, !tbaa !112
  %169 = getelementptr inbounds %struct.Material, ptr %163, i64 0, i32 8
  %170 = load float, ptr %169, align 4, !tbaa !229
  %171 = fmul float %165, %170
  %172 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  store float %171, ptr %172, align 4, !tbaa !112
  %173 = getelementptr inbounds %struct.Material, ptr %163, i64 0, i32 9
  %174 = load float, ptr %173, align 8, !tbaa !230
  %175 = fmul float %165, %174
  %176 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float %175, ptr %176, align 8, !tbaa !112
  %177 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %177, align 4, !tbaa !112
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %5) #11
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #11
  %178 = getelementptr inbounds %struct.Material, ptr %163, i64 0, i32 38
  %179 = load i16, ptr %178, align 8, !tbaa !231
  %180 = call i16 @llvm.smin.i16(i16 %179, i16 128)
  %181 = call i16 @llvm.smax.i16(i16 %180, i16 0)
  %182 = zext nneg i16 %181 to i32
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef %182) #11
  call void @glEnable(i32 noundef 2896) #11
  call void @glEnable(i32 noundef 2903) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %184

183:                                              ; preds = %155
  tail call void @glDisable(i32 noundef 2896) #11
  tail call void @glDisable(i32 noundef 2903) #11
  br label %184

184:                                              ; preds = %183, %162
  %185 = phi ptr [ %163, %162 ], [ %2, %183 ]
  store i32 %149, ptr @set_draw_settings_cached.c_lit, align 4, !tbaa !56
  store ptr %185, ptr @set_draw_settings_cached.c_ma, align 8, !tbaa !39
  br label %186

186:                                              ; preds = %146, %184
  %187 = load i8, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !153
  ret i8 %187
}

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @glCullFace(i32 noundef) local_unnamed_addr #2

declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_image_has_alpha(ptr noundef) local_unnamed_addr #2

declare void @GPU_clear_tpage(i8 noundef zeroext) local_unnamed_addr #2

declare i32 @GPU_set_tpage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_bproperty_set_valstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare zeroext i8 @BKE_image_has_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

declare void @GPU_render_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare i32 @GPU_default_lights() local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_disable_material() local_unnamed_addr #2

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!35 = !{!"drawMeshFaceSelect_userData", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = !{!41, !44, i64 1284}
!41 = !{!"Mesh", !42, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !45, i64 280, !45, i64 480, !45, i64 680, !45, i64 880, !45, i64 1080, !44, i64 1280, !44, i64 1284, !44, i64 1288, !44, i64 1292, !44, i64 1296, !44, i64 1300, !44, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !44, i64 1344, !43, i64 1348, !43, i64 1350, !46, i64 1352, !44, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !43, i64 1366, !36, i64 1368}
!42 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !36, i64 112}
!43 = !{!"short", !37, i64 0}
!44 = !{!"int", !37, i64 0}
!45 = !{!"CustomData", !36, i64 0, !37, i64 8, !44, i64 172, !44, i64 176, !44, i64 180, !36, i64 184, !36, i64 192}
!46 = !{!"float", !37, i64 0}
!47 = !{!41, !44, i64 1296}
!48 = !{!41, !36, i64 168}
!49 = !{!50, !37, i64 10}
!50 = !{!"MPoly", !44, i64 0, !44, i64 4, !43, i64 8, !37, i64 10, !37, i64 11}
!51 = !{!50, !44, i64 4}
!52 = !{!41, !36, i64 184}
!53 = !{!50, !44, i64 0}
!54 = !{!55, !44, i64 4}
!55 = !{!"MLoop", !44, i64 0, !44, i64 4}
!56 = !{!44, !44, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !58, !59}
!61 = !{!35, !36, i64 8}
!62 = !{!63, !36, i64 1656}
!63 = !{!"DerivedMesh", !45, i64 0, !45, i64 200, !45, i64 400, !45, i64 600, !45, i64 800, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !36, i64 1032, !36, i64 1040, !44, i64 1048, !46, i64 1052, !44, i64 1056, !44, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!64 = !{!41, !44, i64 1344}
!65 = !{!63, !36, i64 1632}
!66 = !{!67, !43, i64 242}
!67 = !{!"View3D", !36, i64 0, !36, i64 8, !68, i64 16, !44, i64 32, !46, i64 36, !37, i64 40, !37, i64 56, !46, i64 72, !46, i64 76, !37, i64 80, !37, i64 81, !44, i64 84, !44, i64 88, !43, i64 92, !43, i64 94, !36, i64 96, !36, i64 104, !69, i64 112, !68, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !44, i64 224, !44, i64 228, !43, i64 232, !43, i64 234, !43, i64 236, !43, i64 238, !43, i64 240, !43, i64 242, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !37, i64 260, !37, i64 272, !43, i64 284, !43, i64 286, !43, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !68, i64 296, !68, i64 312, !68, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!68 = !{!"ListBase", !36, i64 0, !36, i64 8}
!69 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!70 = !{!71, !44, i64 432}
!71 = !{!"Object", !42, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !72, i64 312, !36, i64 360, !68, i64 368, !68, i64 384, !68, i64 400, !68, i64 416, !44, i64 432, !44, i64 436, !36, i64 440, !36, i64 448, !44, i64 456, !44, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !44, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !46, i64 1048, !46, i64 1052, !68, i64 1056, !68, i64 1072, !68, i64 1088, !68, i64 1104, !46, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !44, i64 1144, !44, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !68, i64 1176, !68, i64 1192, !68, i64 1208, !68, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !73, i64 1304, !73, i64 1312, !44, i64 1320, !44, i64 1324, !68, i64 1328, !68, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !68, i64 1400, !36, i64 1416}
!72 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!73 = !{!"long", !37, i64 0}
!74 = !{!67, !43, i64 232}
!75 = !{!71, !36, i64 296}
!76 = !{!71, !43, i64 952}
!77 = !{!78, !36, i64 264}
!78 = !{!"Scene", !42, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !68, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !43, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !79, i64 280, !87, i64 4264, !68, i64 4296, !68, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !43, i64 4376, !43, i64 4378, !44, i64 4380, !68, i64 4384, !88, i64 4400, !89, i64 4416, !92, i64 4600, !36, i64 4608, !93, i64 4616, !36, i64 4640, !73, i64 4648, !73, i64 4656, !81, i64 4664, !82, i64 4824, !94, i64 4888, !36, i64 4952}
!79 = !{!"RenderData", !80, i64 0, !36, i64 248, !36, i64 256, !83, i64 264, !84, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !46, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !43, i64 432, !43, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !44, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !44, i64 484, !44, i64 488, !43, i64 492, !43, i64 494, !44, i64 496, !44, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !69, i64 544, !69, i64 560, !85, i64 576, !68, i64 592, !43, i64 608, !43, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !44, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !46, i64 660, !46, i64 664, !43, i64 668, !43, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !44, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !44, i64 2520, !43, i64 2524, !43, i64 2526, !46, i64 2528, !46, i64 2532, !43, i64 2536, !43, i64 2538, !46, i64 2540, !43, i64 2544, !43, i64 2546, !44, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !44, i64 2576, !46, i64 2580, !37, i64 2584, !86, i64 2616, !44, i64 3976, !44, i64 3980}
!80 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !81, i64 24, !82, i64 184}
!81 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!82 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!83 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !43, i64 48, !43, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!84 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !46, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !36, i64 64}
!85 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!86 = !{!"BakeData", !80, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!87 = !{!"AudioData", !44, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !44, i64 16, !43, i64 20, !43, i64 22, !46, i64 24, !46, i64 28}
!88 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!89 = !{!"GameData", !88, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !37, i64 34, !90, i64 40, !43, i64 64, !43, i64 66, !46, i64 68, !91, i64 72, !46, i64 128, !46, i64 132, !44, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!90 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !46, i64 8, !46, i64 12, !36, i64 16}
!91 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !44, i64 40, !46, i64 44, !46, i64 48, !43, i64 52, !43, i64 54}
!92 = !{!"UnitSettings", !46, i64 0, !37, i64 4, !37, i64 5, !43, i64 6}
!93 = !{!"PhysicsSettings", !37, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!94 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!95 = !{!96, !44, i64 28}
!96 = !{!"TextureDrawState", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !37, i64 40, !37, i64 41, !37, i64 45, !37, i64 46}
!97 = !{!67, !44, i64 224}
!98 = !{!99, !37, i64 808}
!99 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !46, i64 776, !46, i64 780, !46, i64 784, !46, i64 788, !37, i64 792, !46, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !43, i64 824, !43, i64 826, !37, i64 828, !43, i64 844, !43, i64 846, !46, i64 848, !37, i64 852, !46, i64 864, !37, i64 868}
!100 = !{!96, !36, i64 0}
!101 = !{!102, !43, i64 40}
!102 = !{!"ImagePaintSettings", !103, i64 0, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !37, i64 48, !44, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !46, i64 100}
!103 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!104 = !{!102, !36, i64 64}
!105 = !{!96, !36, i64 8}
!106 = !{!96, !37, i64 45}
!107 = !{!102, !44, i64 52}
!108 = !{!96, !37, i64 46}
!109 = !{!102, !36, i64 80}
!110 = !{!96, !36, i64 16}
!111 = !{!96, !44, i64 32}
!112 = !{!46, !46, i64 0}
!113 = !{!96, !44, i64 36}
!114 = !{!115, !44, i64 144}
!115 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !44, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !116, i64 200}
!116 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!117 = !{!96, !37, i64 24}
!118 = !{!96, !37, i64 40}
!119 = !{i8 0, i8 2}
!120 = !{!41, !43, i64 1350}
!121 = !{!41, !36, i64 272}
!122 = !{!123, !36, i64 0}
!123 = !{!"drawEMTFMapped_userData", !36, i64 0, !37, i64 8, !37, i64 9, !36, i64 16, !36, i64 24}
!124 = !{!125, !36, i64 0}
!125 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !44, i64 16, !36, i64 24, !44, i64 32, !36, i64 40, !36, i64 48, !73, i64 56, !36, i64 64, !44, i64 72, !36, i64 80, !44, i64 88, !43, i64 92, !43, i64 94, !36, i64 96, !44, i64 104}
!126 = !{!123, !37, i64 8}
!127 = !{!123, !37, i64 9}
!128 = !{!123, !36, i64 16}
!129 = !{!123, !36, i64 24}
!130 = !{!63, !36, i64 1640}
!131 = !{!132, !36, i64 8}
!132 = !{!"drawTFace_userData", !36, i64 0, !36, i64 8, !36, i64 16}
!133 = !{!132, !36, i64 16}
!134 = !{!132, !36, i64 0}
!135 = !{!63, !36, i64 1616}
!136 = !{!63, !36, i64 1184}
!137 = !{!63, !36, i64 1336}
!138 = !{!63, !36, i64 1120}
!139 = !{!63, !44, i64 1008}
!140 = !{!141, !43, i64 16}
!141 = !{!"MFace", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !37, i64 18, !37, i64 19}
!142 = !{!143, !44, i64 312}
!143 = !{!"Material", !42, i64 0, !36, i64 120, !43, i64 128, !43, i64 130, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !144, i64 224, !145, i64 312, !46, i64 328, !46, i64 332, !46, i64 336, !46, i64 340, !46, i64 344, !46, i64 348, !46, i64 352, !43, i64 356, !43, i64 358, !43, i64 360, !37, i64 362, !37, i64 363, !46, i64 364, !46, i64 368, !43, i64 372, !43, i64 374, !46, i64 376, !46, i64 380, !46, i64 384, !46, i64 388, !43, i64 392, !43, i64 394, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !43, i64 412, !43, i64 414, !43, i64 416, !43, i64 418, !46, i64 420, !46, i64 424, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !46, i64 456, !37, i64 460, !46, i64 524, !46, i64 528, !46, i64 532, !44, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !43, i64 544, !43, i64 546, !43, i64 548, !37, i64 550, !37, i64 551, !43, i64 552, !43, i64 554, !46, i64 556, !46, i64 560, !37, i64 564, !46, i64 580, !46, i64 584, !43, i64 588, !43, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !43, i64 612, !43, i64 614, !46, i64 616, !46, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !46, i64 800, !46, i64 804, !46, i64 808, !46, i64 812, !46, i64 816, !43, i64 820, !43, i64 822, !37, i64 824, !37, i64 836, !46, i64 848, !46, i64 852, !46, i64 856, !46, i64 860, !46, i64 864, !46, i64 868, !46, i64 872, !43, i64 876, !43, i64 878, !44, i64 880, !43, i64 884, !43, i64 886, !37, i64 888, !43, i64 904, !43, i64 906, !43, i64 908, !43, i64 910, !43, i64 912, !37, i64 914, !36, i64 920, !68, i64 928}
!144 = !{!"VolumeSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !46, i64 52, !46, i64 56, !46, i64 60, !43, i64 64, !43, i64 66, !43, i64 68, !43, i64 70, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84}
!145 = !{!"GameSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!146 = !{!147, !37, i64 3}
!147 = !{!"MCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!148 = !{!147, !37, i64 2}
!149 = !{!147, !37, i64 1}
!150 = distinct !{!150, !58, !59}
!151 = distinct !{!151, !58, !59}
!152 = !{!143, !43, i64 394}
!153 = !{!37, !37, i64 0}
!154 = distinct !{!154, !58, !59}
!155 = distinct !{!155, !58, !59}
!156 = distinct !{!156, !58, !59}
!157 = distinct !{!157, !58, !59}
!158 = distinct !{!158, !58, !59}
!159 = distinct !{!159, !58, !59}
!160 = !{!41, !36, i64 176}
!161 = !{!41, !36, i64 192}
!162 = !{!41, !36, i64 200}
!163 = !{!78, !36, i64 168}
!164 = !{!165, !36, i64 32}
!165 = !{!"Base", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !43, i64 28, !43, i64 30, !36, i64 32}
!166 = !{!73, !73, i64 0}
!167 = !{!41, !36, i64 152}
!168 = !{!50, !43, i64 8}
!169 = !{!170, !36, i64 0}
!170 = !{!"MTexPoly", !36, i64 0, !37, i64 8, !37, i64 9, !43, i64 10, !43, i64 12, !43, i64 14}
!171 = !{!172, !36, i64 32}
!172 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !43, i64 42, !43, i64 44, !43, i64 46}
!173 = !{!170, !37, i64 8}
!174 = !{!172, !37, i64 40}
!175 = !{!170, !37, i64 9}
!176 = !{!172, !37, i64 41}
!177 = !{!170, !43, i64 10}
!178 = !{!172, !43, i64 42}
!179 = !{!170, !43, i64 12}
!180 = !{!172, !43, i64 44}
!181 = !{!55, !44, i64 0}
!182 = !{!183, !37, i64 0}
!183 = !{!"MLoopCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!184 = !{!183, !37, i64 1}
!185 = !{!183, !37, i64 2}
!186 = !{!183, !37, i64 3}
!187 = !{!147, !37, i64 0}
!188 = distinct !{!188, !58, !59}
!189 = !{!63, !36, i64 1528}
!190 = distinct !{!190, !58, !59}
!191 = !{!63, !36, i64 1680}
!192 = !{!78, !36, i64 176}
!193 = !{!194, !36, i64 0}
!194 = !{!"TexMatCallback", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!195 = !{!194, !36, i64 8}
!196 = !{!194, !36, i64 16}
!197 = !{!194, !36, i64 24}
!198 = !{!199, !44, i64 2096}
!199 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !68, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !44, i64 2096, !44, i64 2100, !37, i64 2104, !44, i64 2108, !44, i64 2112, !37, i64 2116}
!200 = !{!63, !36, i64 1672}
!201 = !{!41, !37, i64 1365}
!202 = !{!71, !43, i64 1044}
!203 = !{!67, !43, i64 240}
!204 = !{!205, !44, i64 12}
!205 = !{!"BMesh", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !44, i64 88, !44, i64 92, !44, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !44, i64 128, !36, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !43, i64 944, !44, i64 948, !44, i64 952, !44, i64 956, !68, i64 960, !36, i64 976, !68, i64 984, !36, i64 1000}
!206 = !{!207, !37, i64 13}
!207 = !{!"BMHeader", !36, i64 0, !44, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!208 = !{!209, !36, i64 248}
!209 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !44, i64 168, !43, i64 172, !43, i64 174, !43, i64 176, !43, i64 178, !43, i64 180, !43, i64 182, !43, i64 184, !43, i64 186, !37, i64 188, !68, i64 200, !68, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !68, i64 264, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !44, i64 308, !37, i64 312, !43, i64 376, !43, i64 378, !46, i64 380, !46, i64 384, !43, i64 388, !43, i64 390, !36, i64 392, !69, i64 400, !69, i64 416, !69, i64 432, !43, i64 448, !43, i64 450, !44, i64 452, !36, i64 456}
!210 = !{!211, !44, i64 1268}
!211 = !{!"Image", !42, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !43, i64 1240, !43, i64 1242, !43, i64 1244, !43, i64 1246, !43, i64 1248, !43, i64 1250, !44, i64 1252, !43, i64 1256, !43, i64 1258, !43, i64 1260, !43, i64 1262, !43, i64 1264, !43, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !46, i64 1296, !44, i64 1300, !43, i64 1304, !43, i64 1306, !44, i64 1308, !44, i64 1312, !37, i64 1316, !37, i64 1317, !43, i64 1318, !37, i64 1320, !46, i64 1336, !46, i64 1340, !94, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!212 = !{!213, !44, i64 0}
!213 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !37, i64 16}
!214 = !{!213, !44, i64 8}
!215 = !{!216, !44, i64 2560}
!216 = !{!"GPUVertexAttribs", !37, i64 0, !44, i64 2560}
!217 = !{!218, !43, i64 48}
!218 = !{!"BMFace", !207, i64 0, !36, i64 16, !36, i64 24, !44, i64 32, !37, i64 36, !43, i64 48}
!219 = !{!218, !36, i64 0}
!220 = !{i32 0, i32 3}
!221 = !{!143, !44, i64 396}
!222 = !{!143, !44, i64 316}
!223 = !{!143, !36, i64 920}
!224 = !{!143, !43, i64 908}
!225 = !{!226, !36, i64 0}
!226 = !{!"TexPaintSlot", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20}
!227 = !{!143, !46, i64 208}
!228 = !{!143, !46, i64 144}
!229 = !{!143, !46, i64 148}
!230 = !{!143, !46, i64 152}
!231 = !{!143, !43, i64 360}
