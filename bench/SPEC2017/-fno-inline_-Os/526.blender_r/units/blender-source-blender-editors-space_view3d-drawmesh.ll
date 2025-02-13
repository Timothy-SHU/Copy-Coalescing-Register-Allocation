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
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
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
%struct.drawEMTFMapped_userData = type { ptr, i8, i8, ptr, ptr }
%struct.drawTFace_userData = type { ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }
%struct.anon = type { i32, i32, i32, i32, [64 x i8] }
%struct.GPUVertexAttribs = type { [32 x %struct.anon], i32 }
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
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_mesh_face_select(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drawMeshFaceSelect_userData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = tail call fastcc ptr @get_tface_mesh_marked_edge_info(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.drawMeshFaceSelect_userData, ptr %4, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !39
  tail call void @glEnable(i32 noundef 2929) #15
  tail call void @glDisable(i32 noundef 2896) #15
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 1.000000e+00) #15
  tail call void @setlinestyle(i32 noundef 1) #15
  tail call void @UI_ThemeColor(i32 noundef 41) #15
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 92
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  call void %8(ptr noundef %2, ptr noundef nonnull @draw_mesh_face_select__setHiddenOpts, ptr noundef nonnull %4) #15
  call void @setlinestyle(i32 noundef 0) #15
  %9 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 36
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  call void @glEnable(i32 noundef 3042) #15
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  call void @glColor4ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 64) #15
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 89
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  call void %15(ptr noundef nonnull %2, ptr noundef nonnull @draw_mesh_face_select__drawFaceOptsInv, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, i32 noundef 0) #15
  call void @glDisable(i32 noundef 3042) #15
  br label %16

16:                                               ; preds = %13, %3
  call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 1.000000e+00) #15
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #15
  call void @setlinestyle(i32 noundef 1) #15
  %17 = load ptr, ptr %7, align 8, !tbaa !40
  call void %17(ptr noundef nonnull %2, ptr noundef nonnull @draw_mesh_face_select__setSelectOpts, ptr noundef nonnull %4) #15
  call void @setlinestyle(i32 noundef 0) #15
  call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 0.000000e+00) #15
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %19 = load ptr, ptr %6, align 8, !tbaa !39
  call void %18(ptr noundef %19) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_tface_mesh_marked_edge_info(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !51 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = ashr i32 %4, 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr %2(i64 noundef %8, ptr noundef nonnull @__func__.get_tface_mesh_marked_edge_info) #15
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %17

17:                                               ; preds = %13, %66
  %18 = phi i32 [ %11, %13 ], [ %67, %66 ]
  %19 = phi i64 [ 0, %13 ], [ %68, %66 ]
  %20 = getelementptr inbounds %struct.MPoly, ptr %15, i64 %19, i32 3
  %21 = load i8, ptr %20, align 2, !tbaa !55
  %22 = and i8 %21, 16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.MPoly, ptr %15, i64 %19, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !57
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load ptr, ptr %16, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.MPoly, ptr %15, i64 %19
  %31 = load i32, ptr %30, align 4, !tbaa !59
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.MLoop, ptr %29, i64 %32
  %34 = and i8 %21, 2
  %35 = icmp eq i8 %34, 0
  br label %36

36:                                               ; preds = %28, %59
  %37 = phi ptr [ %33, %28 ], [ %61, %59 ]
  %38 = phi i32 [ 0, %28 ], [ %60, %59 ]
  %39 = getelementptr inbounds %struct.MLoop, ptr %37, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !60
  %41 = tail call fastcc i32 @edge_vis_index(i32 noundef %40) #14
  %42 = and i32 %41, 31
  %43 = shl nuw i32 1, %42
  %44 = ashr i32 %41, 5
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %9, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !62
  %48 = or i32 %43, %47
  store i32 %48, ptr %46, align 4, !tbaa !62
  br i1 %35, label %59, label %49

49:                                               ; preds = %36
  %50 = load i32, ptr %39, align 4, !tbaa !60
  %51 = tail call fastcc i32 @edge_sel_index(i32 noundef %50) #14
  %52 = and i32 %51, 31
  %53 = shl nuw i32 1, %52
  %54 = ashr i32 %51, 5
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %9, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !62
  %58 = or i32 %53, %57
  store i32 %58, ptr %56, align 4, !tbaa !62
  br label %59

59:                                               ; preds = %36, %49
  %60 = add nuw nsw i32 %38, 1
  %61 = getelementptr inbounds %struct.MLoop, ptr %37, i64 1
  %62 = load i32, ptr %25, align 4, !tbaa !57
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %36, label %64, !llvm.loop !63

64:                                               ; preds = %59
  %65 = load i32, ptr %10, align 8, !tbaa !53
  br label %66

66:                                               ; preds = %64, %24, %17
  %67 = phi i32 [ %65, %64 ], [ %18, %24 ], [ %18, %17 ]
  %68 = add nuw nsw i64 %19, 1
  %69 = sext i32 %67 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %17, label %71, !llvm.loop !65

71:                                               ; preds = %66, %1
  ret ptr %9
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_polygon_offset(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @draw_mesh_face_select__setHiddenOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !66 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 36
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @edge_vis_index(i32 noundef %1) #14
  br label %15

13:                                               ; preds = %2
  %14 = tail call fastcc i32 @edge_sel_index(i32 noundef %1) #14
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.drawMeshFaceSelect_userData, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = ashr i32 %16, 5
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = and i32 %16, 31
  %24 = lshr i32 %22, %23
  %25 = and i32 %24, 1
  br label %26

26:                                               ; preds = %15, %8
  %27 = phi i32 [ 1, %8 ], [ %25, %15 ]
  ret i32 %27
}

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @draw_mesh_face_select__drawFaceOptsInv(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !67 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !55
  %8 = and i8 %7, 18
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 2, i32 0
  ret i32 %10
}

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @draw_mesh_face_select__setSelectOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.drawMeshFaceSelect_userData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call fastcc i32 @edge_sel_index(i32 noundef %1) #14
  %6 = ashr i32 %5, 5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = and i32 %5, 31
  %11 = lshr i32 %9, %10
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_mesh_textured(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.TexMatCallback, align 8
  %8 = alloca [4 x float], align 16
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %13 = load i16, ptr %12, align 2, !tbaa !69
  %14 = and i16 %13, 8192
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !73
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %26 = load i16, ptr %25, align 8, !tbaa !77
  switch i16 %26, label %28 [
    i16 5, label %27
    i16 3, label %27
  ]

27:                                               ; preds = %24, %24, %16, %11, %6
  tail call fastcc void @draw_mesh_textured_old(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #14
  br label %85

28:                                               ; preds = %24, %19
  %29 = and i32 %21, 12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @draw_mesh_paint(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5) #14
  br label %85

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %34 = load i16, ptr %33, align 8, !tbaa !78
  %35 = and i16 %34, 4
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %36, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %37) #15
  %38 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %39 = load i16, ptr %38, align 8, !tbaa !77
  %40 = icmp eq i16 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i16, ptr %12, align 2, !tbaa !69
  %43 = icmp sgt i16 %42, -1
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  br label %46

45:                                               ; preds = %41, %32
  tail call void @glEnable(i32 noundef 2896) #15
  br label %46

46:                                               ; preds = %45, %44
  %47 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  store ptr %0, ptr %7, align 8, !tbaa !80
  %49 = getelementptr inbounds %struct.TexMatCallback, ptr %7, i64 0, i32 1
  store ptr %3, ptr %49, align 8, !tbaa !82
  %50 = getelementptr inbounds %struct.TexMatCallback, ptr %7, i64 0, i32 2
  store ptr %48, ptr %50, align 8, !tbaa !83
  %51 = getelementptr inbounds %struct.TexMatCallback, ptr %7, i64 0, i32 3
  store ptr %4, ptr %51, align 8, !tbaa !84
  %52 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !85
  %53 = and i32 %52, 32
  %54 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !87
  %56 = icmp eq ptr %55, %3
  %57 = and i32 %5, 2
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr null, ptr @tex_mat_set_face_mesh_cb
  %60 = select i1 %56, ptr @tex_mat_set_face_editmesh_cb, ptr %59
  %61 = load i16, ptr %38, align 8, !tbaa !77
  %62 = icmp eq i16 %61, 4
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = tail call i32 @GPU_glsl_support() #15
  %65 = icmp ne i32 %64, 0
  %66 = icmp eq i32 %53, 0
  %67 = select i1 %65, i1 %66, i1 false
  br label %68

68:                                               ; preds = %63, %46
  %69 = phi i1 [ false, %46 ], [ %67, %63 ]
  %70 = zext i1 %69 to i8
  tail call void @GPU_begin_object_materials(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %3, i8 noundef zeroext %70, ptr noundef null) #15
  %71 = icmp ne i32 %53, 0
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 94
  %75 = load ptr, ptr %74, align 8, !tbaa !105
  call void %75(ptr noundef %4, ptr noundef nonnull @tex_mat_set_material_cb, ptr noundef %60, ptr noundef nonnull %7) #15
  br label %79

76:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %8) #15
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %8) #15
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 0) #15
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 94
  %78 = load ptr, ptr %77, align 8, !tbaa !105
  call void %78(ptr noundef %4, ptr noundef nonnull @tex_mat_set_texture_cb, ptr noundef %60, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  br label %79

79:                                               ; preds = %76, %73
  call void @GPU_end_object_materials() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  call void @glDisable(i32 noundef 2903) #15
  call void @glDisable(i32 noundef 3553) #15
  call void @glDisable(i32 noundef 2896) #15
  call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #15
  call void @glFrontFace(i32 noundef 2305) #15
  call void @glMatrixMode(i32 noundef 5890) #15
  call void @glLoadIdentity() #15
  call void @glMatrixMode(i32 noundef 5888) #15
  %80 = load ptr, ptr %54, align 8, !tbaa !87
  %81 = icmp eq ptr %80, %3
  %82 = or i1 %58, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %47, align 8, !tbaa !79
  call void @draw_mesh_face_select(ptr noundef %2, ptr noundef %84, ptr noundef nonnull %4) #14
  br label %85

85:                                               ; preds = %27, %31, %83, %79
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_mesh_textured_old(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !106 {
  %7 = alloca %struct.drawEMTFMapped_userData, align 8
  %8 = alloca %struct.drawTFace_userData, align 8
  %9 = alloca %struct.drawTFace_userData, align 8
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %13 = load i16, ptr %12, align 8, !tbaa !78
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %16) #15
  tail call fastcc void @draw_textured_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #14
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 4, i32 8
  %22 = and i32 %18, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  %25 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  store ptr %26, ptr %7, align 8, !tbaa !108
  %27 = load ptr, ptr %26, align 8, !tbaa !110
  %28 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 26
  %29 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %28, i32 noundef 17) #15
  %30 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %7, i64 0, i32 1
  store i8 %29, ptr %30, align 8, !tbaa !112
  %31 = load ptr, ptr %25, align 8, !tbaa !107
  %32 = load ptr, ptr %31, align 8, !tbaa !110
  %33 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 27
  %34 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %33, i32 noundef 15) #15
  %35 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %7, i64 0, i32 2
  store i8 %34, ptr %35, align 1, !tbaa !113
  %36 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 4) #15
  %37 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %7, i64 0, i32 3
  store ptr %36, ptr %37, align 8, !tbaa !114
  %38 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 5) #15
  %39 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %7, i64 0, i32 4
  store ptr %38, ptr %39, align 8, !tbaa !115
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 90
  %41 = load ptr, ptr %40, align 8, !tbaa !116
  call void %41(ptr noundef %4, ptr noundef nonnull @draw_em_tf_mapped__set_draw, ptr noundef nonnull @compareDrawOptionsEm, ptr noundef nonnull %7, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  br label %79

42:                                               ; preds = %6
  %43 = and i32 %5, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %42
  %46 = and i32 %18, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 89
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  tail call void %50(ptr noundef %4, ptr noundef nonnull @wpaint__setSolidDrawOptions_facemask, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %11, i32 noundef 3) #15
  br label %79

51:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  %52 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 4) #15
  %53 = getelementptr inbounds %struct.drawTFace_userData, ptr %8, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !117
  %54 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 5) #15
  %55 = getelementptr inbounds %struct.drawTFace_userData, ptr %8, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !119
  store ptr %11, ptr %8, align 8, !tbaa !120
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 90
  %57 = load ptr, ptr %56, align 8, !tbaa !116
  %58 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = icmp eq ptr %59, null
  %61 = select i1 %60, ptr null, ptr @draw_tface_mapped__set_draw
  call void %57(ptr noundef %4, ptr noundef %61, ptr noundef nonnull @compareDrawOptions, ptr noundef nonnull %8, i32 noundef %21) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  br label %79

62:                                               ; preds = %42
  %63 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %4) #15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = and i32 %5, 1
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 87
  %69 = load ptr, ptr %68, align 8, !tbaa !121
  br i1 %67, label %71, label %70

70:                                               ; preds = %65
  tail call void %69(ptr noundef %4, ptr noundef nonnull @draw_mcol__set_draw_legacy, ptr noundef null, ptr noundef null, i32 noundef %21) #15
  br label %79

71:                                               ; preds = %65
  tail call void %69(ptr noundef %4, ptr noundef nonnull @draw_tface__set_draw_legacy, ptr noundef null, ptr noundef null, i32 noundef %21) #15
  br label %79

72:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  tail call fastcc void @update_tface_color_layer(ptr noundef %4) #14
  %73 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 4) #15
  %74 = getelementptr inbounds %struct.drawTFace_userData, ptr %9, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !117
  %75 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %4, i32 noundef 5) #15
  %76 = getelementptr inbounds %struct.drawTFace_userData, ptr %9, i64 0, i32 2
  store ptr %75, ptr %76, align 8, !tbaa !119
  store ptr null, ptr %9, align 8, !tbaa !120
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 87
  %78 = load ptr, ptr %77, align 8, !tbaa !121
  call void %78(ptr noundef %4, ptr noundef nonnull @draw_tface__set_draw, ptr noundef nonnull @compareDrawOptions, ptr noundef nonnull %9, i32 noundef %21) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br label %79

79:                                               ; preds = %51, %48, %70, %71, %72, %24
  %80 = call ptr @BKE_bproperty_object_get(ptr noundef nonnull %3, ptr noundef nonnull @.str) #15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call fastcc void @draw_mesh_text(ptr noundef %0, ptr noundef nonnull %3) #14
  br label %83

83:                                               ; preds = %82, %79
  call fastcc void @draw_textured_end() #14
  %84 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !87
  %86 = icmp eq ptr %85, %3
  %87 = and i32 %5, 2
  %88 = icmp eq i32 %87, 0
  %89 = or i1 %88, %86
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  call void @draw_mesh_face_select(ptr noundef %2, ptr noundef %11, ptr noundef nonnull %4) #14
  br label %91

91:                                               ; preds = %90, %83
  call void @glFrontFace(i32 noundef 2305) #15
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_mesh_paint(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 24
  %9 = load i16, ptr %8, align 8, !tbaa !77
  %10 = icmp sgt i16 %9, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !122
  %14 = and i8 %13, 40
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr null, ptr @wpaint__setSolidDrawOptions_facemask
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  tail call void @draw_mesh_paint_weight_faces(ptr noundef %3, i8 noundef zeroext %11, ptr noundef %16, ptr noundef nonnull %7) #14
  br label %26

22:                                               ; preds = %5
  %23 = and i32 %18, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @draw_mesh_paint_vcolor_faces(ptr noundef %3, i8 noundef zeroext %11, ptr noundef %16, ptr noundef nonnull %7, ptr noundef nonnull %7) #14
  br label %26

26:                                               ; preds = %22, %25, %21
  %27 = and i32 %4, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @draw_mesh_face_select(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %3) #14
  br label %51

30:                                               ; preds = %26
  br i1 %10, label %31, label %36

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 86
  %33 = load i16, ptr %32, align 4, !tbaa !123
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31, %30
  %37 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 28
  %38 = load i16, ptr %37, align 8, !tbaa !124
  %39 = and i16 %38, 4096
  %40 = icmp ne i16 %39, 0
  %41 = load i32, ptr %17, align 8, !tbaa !73
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  %44 = or i1 %40, %43
  %45 = zext i1 %44 to i8
  %46 = and i32 %41, 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i8
  br i1 %47, label %50, label %49

49:                                               ; preds = %36
  tail call void @set_inverted_drawing(i32 noundef 1) #15
  tail call void @draw_mesh_paint_weight_edges(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %45, i8 noundef zeroext %48, ptr noundef null, ptr noundef null) #14
  tail call void @set_inverted_drawing(i32 noundef 0) #15
  br label %51

50:                                               ; preds = %36
  tail call void @draw_mesh_paint_weight_edges(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %45, i8 noundef zeroext %48, ptr noundef null, ptr noundef null) #14
  br label %51

51:                                               ; preds = %49, %50, %31, %29
  ret void
}

; Function Attrs: optsize
declare void @glFrontFace(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @tex_mat_set_face_editmesh_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.TexMatCallback, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !126
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = tail call ptr @BM_face_at_index(ptr noundef nonnull %7, i32 noundef %1) #15
  %13 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %12) #14
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %2, %11
  %17 = phi i8 [ %15, %11 ], [ 1, %2 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @tex_mat_set_face_mesh_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !128 {
  %3 = getelementptr inbounds %struct.TexMatCallback, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MPoly, ptr %6, i64 %7, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !55
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  ret i8 %12
}

; Function Attrs: optsize
declare i32 @GPU_glsl_support() local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_begin_object_materials(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tex_mat_set_material_cb(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 !PGOFuncName !129 {
  %4 = tail call i32 @GPU_enable_material(i32 noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMateriali(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tex_mat_set_texture_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 !PGOFuncName !130 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %8 = getelementptr inbounds %struct.TexMatCallback, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = call zeroext i8 @ED_object_get_active_image(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8, !tbaa !50
  %17 = call i32 @GPU_verify_image(ptr noundef nonnull %13, ptr noundef %16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  %18 = icmp eq i32 %17, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  call void @GPU_disable_material() #15
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %7) #15
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %7) #15
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 0) #15
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #15
  call void @glEnable(i32 noundef 2903) #15
  call void @glEnable(i32 noundef 3553) #15
  %23 = load ptr, ptr %4, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.Image, ptr %23, i64 0, i32 20
  %25 = load i32, ptr %24, align 4, !tbaa !133
  call void @glBindTexture(i32 noundef 3553, i32 noundef %25) #15
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  call void @glMatrixMode(i32 noundef 5890) #15
  %26 = getelementptr inbounds %struct.TexMapping, ptr %22, i64 0, i32 9
  call void @glLoadMatrixf(ptr noundef nonnull %26) #15
  call void @glMatrixMode(i32 noundef 5888) #15
  %27 = getelementptr inbounds i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %27, i8 0, i64 2556, i1 false)
  store i32 5, ptr %2, align 4, !tbaa !135
  %28 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 2
  store i32 1, ptr %28, align 4, !tbaa !137
  %29 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %2, i64 0, i32 1
  store i32 1, ptr %29, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %34

30:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  br label %31

31:                                               ; preds = %30, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %32

32:                                               ; preds = %3, %31
  call void @glMatrixMode(i32 noundef 5890) #15
  call void @glLoadIdentity() #15
  call void @glMatrixMode(i32 noundef 5888) #15
  call void @glDisable(i32 noundef 3553) #15
  call void @glDisable(i32 noundef 2903) #15
  %33 = call i32 @GPU_enable_material(i32 noundef %1, ptr noundef %2) #15
  br label %34

34:                                               ; preds = %19, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @GPU_end_object_materials() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_mesh_paint_weight_faces(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  tail call fastcc void @draw_mesh_paint_light_begin() #14
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 89
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void %8(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %3, i32 noundef 3) #15
  tail call fastcc void @draw_mesh_paint_light_end() #14
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 89
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  tail call void %11(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %3, i32 noundef 3) #15
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_mesh_paint_light_begin() unnamed_addr #0 !PGOFuncName !140 {
  %1 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_mesh_paint_light_begin.spec, i64 16, i1 false)
  %2 = tail call i32 @GPU_enable_material(i32 noundef 0, ptr noundef null) #15
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4610) #15
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %1) #15
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #15
  call void @glEnable(i32 noundef 2896) #15
  call void @glEnable(i32 noundef 2903) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #13
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_enable_material(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_mesh_paint_light_end() unnamed_addr #0 !PGOFuncName !141 {
  tail call void @glDisable(i32 noundef 2903) #15
  tail call void @glDisable(i32 noundef 2896) #15
  tail call void @GPU_disable_material() #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_mesh_paint_vcolor_faces(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call fastcc void @draw_mesh_paint_light_begin() #14
  br label %8

8:                                                ; preds = %7, %5
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 2, %12 ], [ 3, %8 ]
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 89
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  tail call void %16(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %3, i32 noundef %14) #15
  br i1 %6, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @draw_mesh_paint_light_end() #14
  br label %18

18:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_mesh_paint_weight_edges(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 1.000000e+00) #15
  tail call void @glDepthMask(i8 noundef zeroext 0) #15
  br label %10

9:                                                ; preds = %6
  tail call void @glDisable(i32 noundef 2929) #15
  br label %10

10:                                               ; preds = %9, %8
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @glEnable(i32 noundef 3042) #15
  br label %13

13:                                               ; preds = %12, %10
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 96) #15
  tail call void @glEnable(i32 noundef 2852) #15
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #15
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  tail call void %15(ptr noundef %1, ptr noundef %4, ptr noundef %5) #15
  br i1 %7, label %17, label %16

16:                                               ; preds = %13
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 0.000000e+00) #15
  tail call void @glDepthMask(i8 noundef zeroext 1) #15
  br label %18

17:                                               ; preds = %13
  tail call void @glEnable(i32 noundef 2929) #15
  br label %18

18:                                               ; preds = %17, %16
  tail call void @glDisable(i32 noundef 2852) #15
  br i1 %11, label %20, label %19

19:                                               ; preds = %18
  tail call void @glDisable(i32 noundef 3042) #15
  br label %20

20:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @wpaint__setSolidDrawOptions_facemask(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !143 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !55
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: optsize
declare void @set_inverted_drawing(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @edge_vis_index(i32 noundef %0) unnamed_addr #5 !PGOFuncName !144 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @edge_sel_index(i32 noundef %0) unnamed_addr #5 !PGOFuncName !145 {
  %2 = shl nsw i32 %0, 1
  %3 = or disjoint i32 %2, 1
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_textured_begin(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !146 {
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  %11 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %12 = load i16, ptr %11, align 8, !tbaa !77
  %13 = icmp slt i16 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !73
  %17 = and i32 %16, 12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %45

19:                                               ; preds = %4
  %20 = icmp eq i16 %12, 3
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !73
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi i32 [ %23, %21 ], [ %16, %14 ]
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq i16 %12, 5
  %29 = or i1 %28, %27
  br i1 %29, label %32, label %30

30:                                               ; preds = %24, %19
  store i32 -1, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 4), align 4, !tbaa !148
  %31 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  call void @rgba_float_to_uchar(ptr noundef nonnull %5, ptr noundef nonnull %31) #15
  br label %51

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %34 = load i16, ptr %33, align 2, !tbaa !69
  %35 = icmp sgt i16 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %38 = load i32, ptr %37, align 8, !tbaa !150
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 24
  %41 = load i8, ptr %40, align 8, !tbaa !151
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i32
  %44 = tail call i32 @GPU_scene_object_lights(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %38, ptr noundef nonnull %39, i32 noundef %43) #15
  br label %45

45:                                               ; preds = %32, %14, %36
  %46 = phi i32 [ %44, %36 ], [ 0, %14 ], [ 0, %32 ]
  store i32 %46, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 4), align 4, !tbaa !148
  %47 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  call void @rgba_float_to_uchar(ptr noundef nonnull %5, ptr noundef nonnull %47) #15
  %48 = load i16, ptr %11, align 8, !tbaa !77
  %49 = icmp eq i16 %48, 5
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %45, %30
  %52 = phi i32 [ 1, %30 ], [ %50, %45 ]
  store ptr %3, ptr @Gtexdraw, align 8, !tbaa !153
  %53 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 1
  %54 = load i16, ptr %53, align 8, !tbaa !154
  %55 = and i16 %54, 256
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !157
  br label %60

60:                                               ; preds = %51, %57
  %61 = phi ptr [ %59, %57 ], [ null, %51 ]
  store ptr %61, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !158
  %62 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %63 = load i32, ptr %62, align 8, !tbaa !73
  %64 = icmp eq i32 %63, 16
  %65 = zext i1 %64 to i8
  store i8 %65, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 9), align 1, !tbaa !159
  %66 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !160
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i8
  store i8 %69, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 10), align 2, !tbaa !161
  br i1 %68, label %73, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !162
  br label %73

73:                                               ; preds = %60, %70
  %74 = phi ptr [ %72, %70 ], [ null, %60 ]
  store ptr %74, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 2), align 8, !tbaa !163
  store i32 %52, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 5), align 8, !tbaa !164
  br i1 %64, label %75, label %97

75:                                               ; preds = %73
  %76 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  call void %76(i32 noundef 33985) #15
  call void @glEnable(i32 noundef 3553) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 34165) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 34168) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34167) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34178, i32 noundef 34168) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 770) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 34168) #15
  %77 = load ptr, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !158
  %78 = icmp eq ptr %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  call void %80(i32 noundef 33986) #15
  %81 = load ptr, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !158
  %82 = call i32 @GPU_verify_image(ptr noundef %81, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %85 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 11
  %86 = load <2 x float>, ptr %85, align 8, !tbaa !165
  store <2 x float> %86, ptr %6, align 16, !tbaa !165
  %87 = getelementptr inbounds float, ptr %6, i64 2
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 11, i64 2
  %89 = load float, ptr %88, align 8, !tbaa !165
  store float %89, ptr %87, align 8, !tbaa !165
  %90 = getelementptr inbounds float, ptr %6, i64 3
  store float 1.000000e+00, ptr %90, align 4, !tbaa !165
  call void @glEnable(i32 noundef 3553) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 34165) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 34168) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34166) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34178, i32 noundef 5890) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 8448) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 34168) #15
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34185, i32 noundef 5890) #15
  call void @glTexEnvfv(i32 noundef 8960, i32 noundef 8705, ptr noundef nonnull %6) #15
  %91 = load i16, ptr %53, align 8, !tbaa !154
  %92 = and i16 %91, 512
  %93 = icmp eq i16 %92, 0
  %94 = select i1 %93, i32 769, i32 768
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef %94) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %95

95:                                               ; preds = %79, %84, %75
  %96 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  call void %96(i32 noundef 33984) #15
  br label %97

97:                                               ; preds = %95, %73
  %98 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef nonnull %0) #15
  %99 = zext i8 %98 to i32
  store i32 %99, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 6), align 4, !tbaa !166
  %100 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %101 = call ptr @RE_engines_find(ptr noundef nonnull %100) #15
  %102 = getelementptr inbounds %struct.RenderEngineType, ptr %101, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !167
  %104 = trunc i32 %103 to i8
  %105 = lshr i8 %104, 1
  %106 = and i8 %105, 1
  store i8 %106, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 3), align 8, !tbaa !170
  %107 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %108 = load i16, ptr %107, align 2, !tbaa !69
  %109 = lshr i16 %108, 10
  %110 = trunc i16 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 7), align 8, !tbaa !171
  %112 = load i32, ptr %5, align 4
  store i32 %112, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8), align 1
  %113 = call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw) #14, !range !172
  call void @glShadeModel(i32 noundef 7425) #15
  call void @glCullFace(i32 noundef 1029) #15
  %114 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 38
  %115 = load i16, ptr %114, align 2, !tbaa !173
  %116 = lshr i16 %115, 2
  %117 = and i16 %116, 1
  %118 = zext nneg i16 %117 to i32
  call void @glLightModeli(i32 noundef 2898, i32 noundef %118) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_em_tf_mapped__set_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !174 {
  %3 = alloca %struct.MTFace, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !108
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !126
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = tail call ptr @BM_face_at_index(ptr noundef nonnull %5, i32 noundef %1) #15
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %10) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %14 = getelementptr inbounds %struct.BMFace, ptr %10, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !175
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 1, !tbaa !113
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %4, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 27
  %23 = load ptr, ptr %10, align 8, !tbaa !178
  %24 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %22, ptr noundef %23, i32 noundef 15) #15
  %25 = load ptr, ptr %24, align 8, !tbaa !179
  %26 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !181
  %27 = getelementptr inbounds %struct.MTexPoly, ptr %24, i64 0, i32 1
  %28 = load i8, ptr %27, align 8, !tbaa !183
  %29 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 2
  store i8 %28, ptr %29, align 8, !tbaa !184
  %30 = getelementptr inbounds %struct.MTexPoly, ptr %24, i64 0, i32 2
  %31 = load i8, ptr %30, align 1, !tbaa !185
  %32 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 3
  store i8 %31, ptr %32, align 1, !tbaa !186
  %33 = getelementptr inbounds %struct.MTexPoly, ptr %24, i64 0, i32 3
  %34 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 4
  %35 = load <2 x i16>, ptr %33, align 2, !tbaa !187
  store <2 x i16> %35, ptr %34, align 2, !tbaa !187
  %36 = load i8, ptr %17, align 1, !tbaa !113
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, ptr null, ptr %3
  br label %39

39:                                               ; preds = %20, %13
  %40 = phi ptr [ %38, %20 ], [ null, %13 ]
  %41 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !112
  %43 = call i32 @draw_tface__set_draw_legacy(ptr noundef %40, i8 noundef zeroext %42, i32 noundef %16) #14, !range !188
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %44

44:                                               ; preds = %9, %2, %39
  %45 = phi i32 [ %43, %39 ], [ 1, %2 ], [ 0, %9 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @compareDrawOptionsEm(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 !PGOFuncName !189 {
  %4 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MFace, ptr %5, i64 %8, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !190
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %5, i64 %11, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !190
  %14 = icmp eq i16 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.drawEMTFMapped_userData, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %20, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = sext i32 %2 to i64
  %24 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %23, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !181
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %15
  br label %28

28:                                               ; preds = %19, %7, %27
  %29 = phi i32 [ 1, %27 ], [ 0, %7 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_tface_mapped__set_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !192 {
  %3 = alloca %struct.MTFace, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MPoly, ptr %6, i64 %7, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !55
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %15 = getelementptr inbounds %struct.MPoly, ptr %6, i64 %7, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !194
  %17 = sext i16 %16 to i32
  %18 = icmp eq ptr %14, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7
  %21 = load ptr, ptr %20, align 8, !tbaa !179
  %22 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !181
  %23 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !183
  %25 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 2
  store i8 %24, ptr %25, align 8, !tbaa !184
  %26 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7, i32 2
  %27 = load i8, ptr %26, align 1, !tbaa !185
  %28 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 3
  store i8 %27, ptr %28, align 1, !tbaa !186
  %29 = getelementptr inbounds %struct.MTexPoly, ptr %14, i64 %7, i32 3
  %30 = getelementptr inbounds %struct.MTFace, ptr %3, i64 0, i32 4
  %31 = load <2 x i16>, ptr %29, align 2, !tbaa !187
  store <2 x i16> %31, ptr %30, align 2, !tbaa !187
  br label %32

32:                                               ; preds = %19, %12
  %33 = call i32 @draw_tface__set_draw(ptr noundef nonnull %3, i8 zeroext poison, i32 noundef %17) #14, !range !195
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %34

34:                                               ; preds = %2, %32
  %35 = phi i32 [ %33, %32 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @compareDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 !PGOFuncName !196 {
  %4 = getelementptr inbounds %struct.drawTFace_userData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MFace, ptr %5, i64 %8, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !190
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %5, i64 %11, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !190
  %14 = icmp eq i16 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.drawTFace_userData, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %20, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = sext i32 %2 to i64
  %24 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %23, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !181
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %15
  br label %28

28:                                               ; preds = %19, %7, %27
  %29 = phi i32 [ 1, %27 ], [ 0, %7 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: optsize
declare zeroext i8 @GPU_buffer_legacy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @draw_mcol__set_draw_legacy(ptr nocapture readnone %0, i8 noundef zeroext %1, i32 %2) #5 !PGOFuncName !197 {
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, i32 2, i32 1
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_tface__set_draw_legacy(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !PGOFuncName !198 {
  %4 = alloca [3 x float], align 4
  %5 = load ptr, ptr @Gtexdraw, align 8, !tbaa !153
  %6 = trunc i32 %2 to i16
  %7 = add i16 %6, 1
  %8 = tail call ptr @give_current_material(ptr noundef %5, i16 noundef signext %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !199
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %10, %3
  %16 = tail call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef %0, ptr noundef %8, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw) #14, !range !172
  %17 = icmp ne ptr %0, null
  %18 = icmp ne i8 %16, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #15
  br label %41

21:                                               ; preds = %15
  br i1 %9, label %28, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 50
  %24 = load i16, ptr %23, align 2, !tbaa !203
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @glColor3ubv(ptr noundef nonnull getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8)) #15
  br label %41

28:                                               ; preds = %22, %21
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  br i1 %17, label %31, label %32

31:                                               ; preds = %30
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  br label %41

32:                                               ; preds = %30
  br i1 %9, label %40, label %33

33:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %34 = load i32, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 6), align 4, !tbaa !166
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 4
  br i1 %35, label %38, label %37

37:                                               ; preds = %33
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %36) #14
  br label %39

38:                                               ; preds = %33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %36) #14
  br label %39

39:                                               ; preds = %38, %37
  call void @glColor3fv(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %41

40:                                               ; preds = %32
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  br label %41

41:                                               ; preds = %28, %31, %40, %39, %10, %27, %20
  %42 = phi i32 [ 2, %20 ], [ 2, %27 ], [ 0, %10 ], [ 2, %39 ], [ 2, %40 ], [ 2, %31 ], [ 1, %28 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_tface_color_layer(ptr noundef %0) unnamed_addr #0 !PGOFuncName !204 {
  %2 = alloca [3 x float], align 4
  %3 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #15
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %5 = load ptr, ptr %4, align 8, !tbaa !205
  %6 = tail call ptr %5(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef 20) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 8, !tbaa !206
  %13 = tail call ptr %12(ptr noundef nonnull %0, i32 noundef 6) #15
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi ptr [ %9, %1 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %17 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %16, i32 noundef 22) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 22) #15
  br label %32

21:                                               ; preds = %14
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %24 = load ptr, ptr %23, align 8, !tbaa !207
  %25 = tail call i32 %24(ptr noundef nonnull %0) #15
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 4
  %28 = tail call ptr %22(i64 noundef %27, ptr noundef nonnull @.str.1) #15
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !208
  %31 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %16, i32 noundef 22, i32 noundef 0, ptr noundef %28, i32 noundef %30) #15
  br label %32

32:                                               ; preds = %21, %19
  %33 = phi ptr [ %20, %19 ], [ %28, %21 ]
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %35 = load ptr, ptr %34, align 8, !tbaa !207
  %36 = tail call i32 %35(ptr noundef nonnull %0) #15
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %192

38:                                               ; preds = %32
  %39 = icmp eq ptr %15, null
  %40 = icmp eq ptr %3, null
  %41 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %42 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  br label %43

43:                                               ; preds = %38, %186
  %44 = phi i64 [ 0, %38 ], [ %187, %186 ]
  %45 = load ptr, ptr @Gtexdraw, align 8, !tbaa !153
  %46 = getelementptr inbounds %struct.MFace, ptr %6, i64 %44, i32 4
  %47 = load i16, ptr %46, align 4, !tbaa !190
  %48 = add i16 %47, 1
  %49 = tail call ptr @give_current_material(ptr noundef %45, i16 noundef signext %48) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.Material, ptr %49, i64 0, i32 28
  %53 = load i32, ptr %52, align 8, !tbaa !199
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = shl i64 %44, 2
  %58 = and i64 %57, 4294967292
  br i1 %39, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.MCol, ptr %33, i64 %58
  %61 = getelementptr inbounds %struct.MCol, ptr %15, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %60, ptr noundef nonnull align 1 dereferenceable(16) %61, i64 16, i1 false)
  br label %186

62:                                               ; preds = %56, %62
  %63 = phi i64 [ %68, %62 ], [ 0, %56 ]
  %64 = add nuw nsw i64 %63, %58
  %65 = getelementptr inbounds %struct.MCol, ptr %33, i64 %64, i32 3
  store i8 -1, ptr %65, align 1, !tbaa !209
  %66 = getelementptr inbounds %struct.MCol, ptr %33, i64 %64, i32 2
  store i8 -1, ptr %66, align 1, !tbaa !211
  %67 = getelementptr inbounds %struct.MCol, ptr %33, i64 %64, i32 1
  store i8 -1, ptr %67, align 1, !tbaa !212
  %68 = add nuw nsw i64 %63, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %186, label %62, !llvm.loop !213

70:                                               ; preds = %51, %43
  br i1 %40, label %85, label %71

71:                                               ; preds = %70
  %72 = tail call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef nonnull %3, ptr noundef %49, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw) #14, !range !172
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71
  %75 = shl i64 %44, 2
  %76 = and i64 %75, 4294967292
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi i64 [ 0, %74 ], [ %83, %77 ]
  %79 = add nuw nsw i64 %78, %76
  %80 = getelementptr inbounds %struct.MCol, ptr %33, i64 %79, i32 3
  store i8 -1, ptr %80, align 1, !tbaa !209
  %81 = getelementptr inbounds %struct.MCol, ptr %33, i64 %79, i32 2
  store i8 0, ptr %81, align 1, !tbaa !211
  %82 = getelementptr inbounds %struct.MCol, ptr %33, i64 %79, i32 1
  store i8 -1, ptr %82, align 1, !tbaa !212
  %83 = add nuw nsw i64 %78, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %186, label %77, !llvm.loop !214

85:                                               ; preds = %71, %70
  br i1 %50, label %105, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.Material, ptr %49, i64 0, i32 50
  %88 = load i16, ptr %87, align 2, !tbaa !203
  %89 = and i16 %88, 2
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = shl i64 %44, 2
  %93 = and i64 %92, 4294967292
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi i64 [ 0, %91 ], [ %103, %94 ]
  %96 = load i8, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8), align 1, !tbaa !215
  %97 = add nuw nsw i64 %95, %93
  %98 = getelementptr inbounds %struct.MCol, ptr %33, i64 %97, i32 3
  store i8 %96, ptr %98, align 1, !tbaa !209
  %99 = load i8, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8, i64 1), align 2, !tbaa !215
  %100 = getelementptr inbounds %struct.MCol, ptr %33, i64 %97, i32 2
  store i8 %99, ptr %100, align 1, !tbaa !211
  %101 = load i8, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 8, i64 2), align 1, !tbaa !215
  %102 = getelementptr inbounds %struct.MCol, ptr %33, i64 %97, i32 1
  store i8 %101, ptr %102, align 1, !tbaa !212
  %103 = add nuw nsw i64 %95, 1
  %104 = icmp eq i64 %103, 4
  br i1 %104, label %186, label %94, !llvm.loop !216

105:                                              ; preds = %86, %85
  br i1 %39, label %109, label %106

106:                                              ; preds = %105
  %107 = shl i64 %44, 2
  %108 = and i64 %107, 4294967292
  br label %172

109:                                              ; preds = %105
  br i1 %40, label %121, label %110

110:                                              ; preds = %109
  %111 = shl i64 %44, 2
  %112 = and i64 %111, 4294967292
  br label %113

113:                                              ; preds = %110, %113
  %114 = phi i64 [ 0, %110 ], [ %119, %113 ]
  %115 = add nuw nsw i64 %114, %112
  %116 = getelementptr inbounds %struct.MCol, ptr %33, i64 %115, i32 3
  store i8 -1, ptr %116, align 1, !tbaa !209
  %117 = getelementptr inbounds %struct.MCol, ptr %33, i64 %115, i32 2
  store i8 -1, ptr %117, align 1, !tbaa !211
  %118 = getelementptr inbounds %struct.MCol, ptr %33, i64 %115, i32 1
  store i8 -1, ptr %118, align 1, !tbaa !212
  %119 = add nuw nsw i64 %114, 1
  %120 = icmp eq i64 %119, 4
  br i1 %120, label %186, label %113, !llvm.loop !217

121:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  br i1 %50, label %122, label %125

122:                                              ; preds = %121
  %123 = shl i64 %44, 2
  %124 = and i64 %123, 4294967292
  br label %163

125:                                              ; preds = %121
  %126 = load i32, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 6), align 4, !tbaa !166
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr inbounds %struct.Material, ptr %49, i64 0, i32 4
  br i1 %127, label %130, label %129

129:                                              ; preds = %125
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %128) #14
  br label %131

130:                                              ; preds = %125
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %128) #14
  br label %131

131:                                              ; preds = %130, %129
  %132 = load float, ptr %2, align 4
  %133 = fcmp ugt float %132, 0.000000e+00
  %134 = shl i64 %44, 2
  %135 = load float, ptr %41, align 4
  %136 = fcmp ugt float %135, 0.000000e+00
  %137 = load float, ptr %42, align 4
  %138 = fcmp ugt float %137, 0.000000e+00
  %139 = fcmp ogt float %132, 0x3FEFEFEFE0000000
  %140 = tail call float @llvm.fmuladd.f32(float %132, float 2.550000e+02, float 5.000000e-01)
  %141 = select i1 %139, float 2.550000e+02, float %140
  %142 = fcmp ogt float %135, 0x3FEFEFEFE0000000
  %143 = tail call float @llvm.fmuladd.f32(float %135, float 2.550000e+02, float 5.000000e-01)
  %144 = select i1 %142, float 2.550000e+02, float %143
  %145 = fcmp ogt float %137, 0x3FEFEFEFE0000000
  %146 = tail call float @llvm.fmuladd.f32(float %137, float 2.550000e+02, float 5.000000e-01)
  %147 = select i1 %145, float 2.550000e+02, float %146
  %148 = and i64 %134, 4294967292
  %149 = select i1 %133, float %141, float 0.000000e+00
  %150 = fptoui float %149 to i8
  %151 = select i1 %136, float %144, float 0.000000e+00
  %152 = fptoui float %151 to i8
  %153 = select i1 %138, float %147, float 0.000000e+00
  %154 = fptoui float %153 to i8
  br label %155

155:                                              ; preds = %131, %155
  %156 = phi i64 [ 0, %131 ], [ %161, %155 ]
  %157 = add nuw nsw i64 %156, %148
  %158 = getelementptr inbounds %struct.MCol, ptr %33, i64 %157, i32 3
  store i8 %150, ptr %158, align 1, !tbaa !209
  %159 = getelementptr inbounds %struct.MCol, ptr %33, i64 %157, i32 2
  store i8 %152, ptr %159, align 1, !tbaa !211
  %160 = getelementptr inbounds %struct.MCol, ptr %33, i64 %157, i32 1
  store i8 %154, ptr %160, align 1, !tbaa !212
  %161 = add nuw nsw i64 %156, 1
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %171, label %155, !llvm.loop !218

163:                                              ; preds = %122, %163
  %164 = phi i64 [ 0, %122 ], [ %169, %163 ]
  %165 = add nuw nsw i64 %164, %124
  %166 = getelementptr inbounds %struct.MCol, ptr %33, i64 %165, i32 3
  store i8 -1, ptr %166, align 1, !tbaa !209
  %167 = getelementptr inbounds %struct.MCol, ptr %33, i64 %165, i32 2
  store i8 -1, ptr %167, align 1, !tbaa !211
  %168 = getelementptr inbounds %struct.MCol, ptr %33, i64 %165, i32 1
  store i8 -1, ptr %168, align 1, !tbaa !212
  %169 = add nuw nsw i64 %164, 1
  %170 = icmp eq i64 %169, 4
  br i1 %170, label %171, label %163, !llvm.loop !219

171:                                              ; preds = %155, %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  br label %186

172:                                              ; preds = %106, %172
  %173 = phi i64 [ 0, %106 ], [ %184, %172 ]
  %174 = add nuw nsw i64 %173, %108
  %175 = getelementptr inbounds %struct.MCol, ptr %15, i64 %174, i32 1
  %176 = load i8, ptr %175, align 1, !tbaa !212
  %177 = getelementptr inbounds %struct.MCol, ptr %33, i64 %174, i32 1
  store i8 %176, ptr %177, align 1, !tbaa !212
  %178 = getelementptr inbounds %struct.MCol, ptr %15, i64 %174, i32 2
  %179 = load i8, ptr %178, align 1, !tbaa !211
  %180 = getelementptr inbounds %struct.MCol, ptr %33, i64 %174, i32 2
  store i8 %179, ptr %180, align 1, !tbaa !211
  %181 = getelementptr inbounds %struct.MCol, ptr %15, i64 %174, i32 3
  %182 = load i8, ptr %181, align 1, !tbaa !209
  %183 = getelementptr inbounds %struct.MCol, ptr %33, i64 %174, i32 3
  store i8 %182, ptr %183, align 1, !tbaa !209
  %184 = add nuw nsw i64 %173, 1
  %185 = icmp eq i64 %184, 4
  br i1 %185, label %186, label %172, !llvm.loop !220

186:                                              ; preds = %62, %77, %94, %172, %113, %171, %59
  %187 = add nuw nsw i64 %44, 1
  %188 = load ptr, ptr %34, align 8, !tbaa !207
  %189 = tail call i32 %188(ptr noundef %0) #15
  %190 = sext i32 %189 to i64
  %191 = icmp slt i64 %187, %190
  br i1 %191, label %43, label %192, !llvm.loop !221

192:                                              ; preds = %186, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_tface__set_draw(ptr noundef %0, i8 zeroext %1, i32 noundef %2) #0 !PGOFuncName !222 {
  %4 = load ptr, ptr @Gtexdraw, align 8, !tbaa !153
  %5 = trunc i32 %2 to i16
  %6 = add i16 %5, 1
  %7 = tail call ptr @give_current_material(ptr noundef %4, i16 noundef signext %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 28
  %11 = load i32, ptr %10, align 8, !tbaa !199
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
  %20 = tail call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef %0, ptr noundef %7, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw) #14, !range !172
  br label %21

21:                                               ; preds = %19, %14, %9
  %22 = phi i32 [ 0, %9 ], [ 1, %14 ], [ 1, %19 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_mesh_text(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !223 {
  %3 = alloca [4 x %struct.MCol], align 16
  %4 = alloca %struct.MTFace, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !224
  %19 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !142
  %21 = tail call ptr @BKE_bproperty_object_get(ptr noundef %1, ptr noundef nonnull @.str) #15
  %22 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 30
  %23 = load i32, ptr %22, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %24 = icmp eq ptr %20, null
  %25 = select i1 %24, ptr null, ptr %3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %26 = icmp ne ptr %16, null
  %27 = icmp ne ptr %18, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %168

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %31 = load i32, ptr %30, align 8, !tbaa !73
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %168

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !225
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Base, ptr %36, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !226
  br label %41

41:                                               ; preds = %34, %38
  %42 = phi ptr [ %40, %38 ], [ null, %34 ]
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef nonnull %1) #15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %168

47:                                               ; preds = %41, %44
  %48 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !228
  %49 = tail call ptr @mesh_get_derived_deform(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %48) #15
  %50 = icmp sgt i32 %23, 0
  br i1 %50, label %51, label %165

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 5
  %53 = getelementptr inbounds %struct.MTFace, ptr %4, i64 0, i32 1
  %54 = getelementptr inbounds %struct.MTFace, ptr %4, i64 0, i32 2
  %55 = getelementptr inbounds %struct.MTFace, ptr %4, i64 0, i32 3
  %56 = getelementptr inbounds %struct.MTFace, ptr %4, i64 0, i32 4
  %57 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 9
  %58 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 1
  %59 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 2
  %60 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 3
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 76
  br label %62

62:                                               ; preds = %51, %160
  %63 = phi ptr [ %14, %51 ], [ %163, %160 ]
  %64 = phi ptr [ %16, %51 ], [ %162, %160 ]
  %65 = phi i32 [ 0, %51 ], [ %161, %160 ]
  %66 = getelementptr inbounds %struct.MPoly, ptr %63, i64 0, i32 3
  %67 = load i8, ptr %66, align 2, !tbaa !55
  %68 = and i8 %67, 1
  %69 = load ptr, ptr %52, align 8, !tbaa !229
  %70 = icmp eq ptr %69, null
  br i1 %70, label %160, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.MPoly, ptr %63, i64 0, i32 2
  %73 = load i16, ptr %72, align 4, !tbaa !194
  %74 = sext i16 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %69, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = icmp eq ptr %76, null
  br i1 %77, label %160, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.Material, ptr %76, i64 0, i32 28
  %80 = load i32, ptr %79, align 8, !tbaa !199
  %81 = and i32 %80, 320
  %82 = icmp eq i32 %81, 64
  br i1 %82, label %83, label %160

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.MPoly, ptr %63, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !57
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %160

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #13
  %88 = load ptr, ptr %64, align 8, !tbaa !179
  store ptr %88, ptr %53, align 8, !tbaa !181
  %89 = getelementptr inbounds %struct.MTexPoly, ptr %64, i64 0, i32 1
  %90 = load i8, ptr %89, align 8, !tbaa !183
  store i8 %90, ptr %54, align 8, !tbaa !184
  %91 = getelementptr inbounds %struct.MTexPoly, ptr %64, i64 0, i32 2
  %92 = load i8, ptr %91, align 1, !tbaa !185
  store i8 %92, ptr %55, align 1, !tbaa !186
  %93 = getelementptr inbounds %struct.MTexPoly, ptr %64, i64 0, i32 3
  %94 = load <2 x i16>, ptr %93, align 2, !tbaa !187
  store <2 x i16> %94, ptr %56, align 2, !tbaa !187
  %95 = call fastcc zeroext i8 @set_draw_settings_cached(i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %76, ptr noundef nonnull byval(%struct.TextureDrawState) align 8 @Gtexdraw) #14, !range !172
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %159

97:                                               ; preds = %87
  %98 = load ptr, ptr %57, align 8, !tbaa !58
  %99 = load i32, ptr %63, align 4, !tbaa !59
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.MLoop, ptr %98, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !230
  %103 = getelementptr %struct.MLoop, ptr %101, i64 1
  %104 = load i32, ptr %103, align 4, !tbaa !230
  %105 = getelementptr %struct.MLoop, ptr %101, i64 2
  %106 = load i32, ptr %105, align 4, !tbaa !230
  %107 = load i32, ptr %84, align 4, !tbaa !57
  %108 = icmp sgt i32 %107, 3
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = getelementptr %struct.MLoop, ptr %101, i64 3
  %111 = load i32, ptr %110, align 4, !tbaa !230
  br label %112

112:                                              ; preds = %97, %109
  %113 = phi i32 [ %111, %109 ], [ 0, %97 ]
  %114 = getelementptr inbounds %struct.MLoopUV, ptr %18, i64 %100
  call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %114) #14
  %115 = getelementptr inbounds %struct.MLoopUV, ptr %114, i64 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %58, ptr noundef nonnull %115) #14
  %116 = getelementptr inbounds %struct.MLoopUV, ptr %114, i64 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %59, ptr noundef nonnull %116) #14
  %117 = load i32, ptr %84, align 4, !tbaa !57
  %118 = icmp sgt i32 %117, 3
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.MLoopUV, ptr %114, i64 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %60, ptr noundef nonnull %120) #14
  br label %121

121:                                              ; preds = %119, %112
  br i1 %24, label %137, label %122

122:                                              ; preds = %121
  %123 = call fastcc i32 @min_ii(i32 noundef %117) #14
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.MLoopCol, ptr %20, i64 %100
  %127 = zext i32 %123 to i64
  br label %128

128:                                              ; preds = %125, %128
  %129 = phi i64 [ 0, %125 ], [ %134, %128 ]
  %130 = phi ptr [ %126, %125 ], [ %135, %128 ]
  %131 = getelementptr inbounds [4 x %struct.MCol], ptr %3, i64 0, i64 %129
  %132 = load <4 x i8>, ptr %130, align 1, !tbaa !215
  %133 = shufflevector <4 x i8> %132, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %133, ptr %131, align 4, !tbaa !215
  %134 = add nuw nsw i64 %129, 1
  %135 = getelementptr inbounds %struct.MLoopCol, ptr %130, i64 1
  %136 = icmp eq i64 %134, %127
  br i1 %136, label %137, label %128, !llvm.loop !231

137:                                              ; preds = %128, %122, %121
  %138 = load ptr, ptr %61, align 8, !tbaa !232
  call void %138(ptr noundef %49, i32 noundef %102, ptr noundef nonnull %5) #15
  %139 = load ptr, ptr %61, align 8, !tbaa !232
  call void %139(ptr noundef %49, i32 noundef %104, ptr noundef nonnull %6) #15
  %140 = load ptr, ptr %61, align 8, !tbaa !232
  call void %140(ptr noundef %49, i32 noundef %106, ptr noundef nonnull %7) #15
  %141 = load i32, ptr %84, align 4, !tbaa !57
  %142 = icmp sgt i32 %141, 3
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load ptr, ptr %61, align 8, !tbaa !232
  call void %144(ptr noundef nonnull %49, i32 noundef %113, ptr noundef nonnull %8) #15
  br label %145

145:                                              ; preds = %143, %137
  call void @BKE_bproperty_set_valstr(ptr noundef %21, ptr noundef nonnull %9) #15
  %146 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #16
  %147 = trunc i64 %146 to i32
  %148 = load ptr, ptr %64, align 8, !tbaa !179
  %149 = call zeroext i8 @BKE_image_has_ibuf(ptr noundef %148, ptr noundef null) #15
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, i32 0, i32 %147
  %152 = icmp eq i8 %68, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %154 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  call void @glNormal3fv(ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  br label %155

155:                                              ; preds = %153, %145
  %156 = load i32, ptr %84, align 4, !tbaa !57
  %157 = icmp sgt i32 %156, 3
  %158 = select i1 %157, ptr %8, ptr null
  call void @GPU_render_text(ptr noundef nonnull %4, i32 noundef %80, ptr noundef nonnull %9, i32 noundef %151, ptr noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %158, i32 noundef -1) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  br label %160

159:                                              ; preds = %87
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  br label %160

160:                                              ; preds = %62, %71, %155, %78, %83, %159
  %161 = add nuw nsw i32 %65, 1
  %162 = getelementptr inbounds %struct.MTexPoly, ptr %64, i64 1
  %163 = getelementptr inbounds %struct.MPoly, ptr %63, i64 1
  %164 = icmp eq i32 %161, %23
  br i1 %164, label %165, label %62, !llvm.loop !233

165:                                              ; preds = %160, %47
  %166 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 95
  %167 = load ptr, ptr %166, align 8, !tbaa !234
  call void %167(ptr noundef %49) #15
  br label %168

168:                                              ; preds = %44, %29, %2, %165
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_textured_end() unnamed_addr #0 !PGOFuncName !235 {
  %1 = load ptr, ptr @Gtexdraw, align 8, !tbaa !153
  %2 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  tail call void %7(i32 noundef 33985) #15
  tail call void @glDisable(i32 noundef 3553) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 768) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #15
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #15
  %8 = load ptr, ptr getelementptr inbounds (%struct.TextureDrawState, ptr @Gtexdraw, i64 0, i32 1), align 8, !tbaa !158
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  tail call void %11(i32 noundef 33986) #15
  tail call void @glDisable(i32 noundef 3553) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 768) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #15
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #15
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  tail call void %13(i32 noundef 33984) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #15
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #15
  tail call void @GPU_clear_tpage(i8 noundef zeroext 1) #15
  br label %16

14:                                               ; preds = %0
  %15 = tail call i32 @GPU_set_tpage(ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  br label %16

16:                                               ; preds = %14, %12
  tail call void @glShadeModel(i32 noundef 7424) #15
  tail call void @glDisable(i32 noundef 2884) #15
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #15
  tail call void @glPushMatrix() #15
  tail call void @glLoadIdentity() #15
  %17 = tail call i32 @GPU_default_lights() #15
  tail call void @glPopMatrix() #15
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_scene_object_lights(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_verify_image(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexEnvfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @set_draw_settings_cached(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly byval(%struct.TextureDrawState) align 8 %3) unnamed_addr #0 !PGOFuncName !236 {
  %5 = alloca [4 x float], align 16
  %6 = icmp ne ptr %1, null
  %7 = zext i1 %6 to i32
  %8 = load ptr, ptr %3, align 8, !tbaa !153
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %2, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %14 = load i32, ptr %13, align 4, !tbaa !237
  %15 = lshr i32 %14, 15
  %16 = and i32 %15, 2
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i32 [ 0, %4 ], [ %16, %12 ]
  %19 = icmp eq i32 %0, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 -1, ptr @set_draw_settings_cached.c_backculled, align 4, !tbaa !62
  store i32 -1, ptr @set_draw_settings_cached.c_lit, align 4, !tbaa !62
  store i32 -1, ptr @set_draw_settings_cached.c_textured, align 4, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @set_draw_settings_cached.c_texface, i8 0, i64 48, i1 false)
  store i8 0, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !215
  store i32 -1, ptr @set_draw_settings_cached.c_has_texface, align 4, !tbaa !62
  store ptr null, ptr @set_draw_settings_cached.c_ma, align 8, !tbaa !50
  br label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !164
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !148
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 7
  %31 = load i8, ptr %30, align 8, !tbaa !171
  %32 = zext i8 %31 to i32
  br i1 %11, label %54, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %35 = load i32, ptr %34, align 4, !tbaa !237
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %29, i32 0
  %39 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 3
  %40 = load i8, ptr %39, align 8, !tbaa !170
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = icmp eq i8 %31, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 28
  %46 = load i32, ptr %45, align 8, !tbaa !199
  %47 = and i32 %46, 16
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i1 [ true, %42 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 28, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !238
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
  %66 = load ptr, ptr %65, align 8, !tbaa !181
  %67 = icmp ne ptr %66, null
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i32 [ 0, %62 ], [ %68, %64 ]
  br i1 %11, label %71, label %96

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.MTFace, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = tail call zeroext i8 @BKE_image_has_alpha(ptr noundef %73) #15
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 %55, i32 2
  br label %96

77:                                               ; preds = %54
  br i1 %60, label %78, label %96

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 10
  %80 = load i8, ptr %79, align 2, !tbaa !161
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  br i1 %11, label %96, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 135
  %85 = load ptr, ptr %84, align 8, !tbaa !239
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 131
  %89 = load i16, ptr %88, align 4, !tbaa !240
  %90 = sext i16 %89 to i64
  %91 = getelementptr inbounds %struct.TexPaintSlot, ptr %85, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !241
  br label %96

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.TextureDrawState, ptr %3, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !163
  br label %96

96:                                               ; preds = %71, %77, %87, %83, %82, %93, %69
  %97 = phi i32 [ %55, %93 ], [ %55, %69 ], [ %76, %71 ], [ %55, %82 ], [ %55, %83 ], [ %55, %87 ], [ %55, %77 ]
  %98 = phi i32 [ %25, %93 ], [ %70, %69 ], [ %70, %71 ], [ %25, %82 ], [ %25, %83 ], [ %25, %87 ], [ 0, %77 ]
  %99 = phi ptr [ %95, %93 ], [ null, %69 ], [ null, %71 ], [ null, %82 ], [ null, %83 ], [ %92, %87 ], [ null, %77 ]
  %100 = load i32, ptr @set_draw_settings_cached.c_backculled, align 4, !tbaa !62
  %101 = icmp eq i32 %57, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  %103 = icmp eq i32 %57, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  tail call void @glEnable(i32 noundef 2884) #15
  br label %106

105:                                              ; preds = %102
  tail call void @glDisable(i32 noundef 2884) #15
  br label %106

106:                                              ; preds = %105, %104
  store i32 %57, ptr @set_draw_settings_cached.c_backculled, align 4, !tbaa !62
  br label %107

107:                                              ; preds = %106, %96
  %108 = load i32, ptr @set_draw_settings_cached.c_textured, align 4, !tbaa !62
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
  store i8 0, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !215
  %128 = tail call i32 @GPU_verify_image(ptr noundef %99, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  tail call void @glEnable(i32 noundef 3553) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 8448) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 5890) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34167) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 5890) #15
  %131 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  tail call void %131(i32 noundef 33985) #15
  tail call void @glEnable(i32 noundef 3553) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 34165) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 34168) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34177, i32 noundef 34167) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34178, i32 noundef 34168) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34194, i32 noundef 770) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef 34168) #15
  %132 = getelementptr inbounds %struct.Image, ptr %99, i64 0, i32 20
  %133 = load i32, ptr %132, align 4, !tbaa !133
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %133) #15
  %134 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  tail call void %134(i32 noundef 33984) #15
  br label %144

135:                                              ; preds = %127
  %136 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  tail call void %136(i32 noundef 33985) #15
  tail call void @glDisable(i32 noundef 3553) #15
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #15
  %137 = load ptr, ptr @__glewActiveTexture, align 8, !tbaa !50
  tail call void %137(i32 noundef 33984) #15
  store i8 1, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !215
  tail call void @GPU_clear_tpage(i8 noundef zeroext 1) #15
  tail call void @glDisable(i32 noundef 3553) #15
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #15
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #15
  br label %144

138:                                              ; preds = %126
  %139 = tail call i32 @GPU_set_tpage(ptr noundef %1, i32 noundef 1, i32 noundef %97) #15
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i8
  store i8 %141, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !215
  br label %144

142:                                              ; preds = %124
  %143 = tail call i32 @GPU_set_tpage(ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  store i8 0, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !215
  br label %144

144:                                              ; preds = %138, %135, %130, %142
  store i32 %98, ptr @set_draw_settings_cached.c_textured, align 4, !tbaa !62
  store i32 %7, ptr @set_draw_settings_cached.c_has_texface, align 4, !tbaa !62
  br i1 %6, label %145, label %146

145:                                              ; preds = %144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @set_draw_settings_cached.c_texface, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %146

146:                                              ; preds = %144, %145, %121
  %147 = load i8, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !215
  %148 = icmp eq i8 %147, 0
  %149 = select i1 %148, i32 %56, i32 0
  %150 = load i32, ptr @set_draw_settings_cached.c_lit, align 4, !tbaa !62
  %151 = icmp eq i32 %149, %150
  %152 = load ptr, ptr @set_draw_settings_cached.c_ma, align 8
  %153 = icmp eq ptr %152, %2
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %187, label %155

155:                                              ; preds = %146
  %156 = icmp eq i32 %149, 0
  br i1 %156, label %183, label %157

157:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  br i1 %11, label %158, label %160

158:                                              ; preds = %157
  %159 = tail call fastcc ptr @give_current_material_or_def() #14
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi ptr [ %2, %157 ], [ %159, %158 ]
  %162 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 23
  %163 = load float, ptr %162, align 8, !tbaa !243
  %164 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 7
  %165 = load float, ptr %164, align 8, !tbaa !244
  %166 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 8
  %167 = load float, ptr %166, align 4, !tbaa !245
  %168 = insertelement <2 x float> poison, float %165, i64 0
  %169 = insertelement <2 x float> %168, float %163, i64 1
  %170 = insertelement <2 x float> poison, float %163, i64 0
  %171 = insertelement <2 x float> %170, float %167, i64 1
  %172 = fmul <2 x float> %169, %171
  store <2 x float> %172, ptr %5, align 16, !tbaa !165
  %173 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 9
  %174 = load float, ptr %173, align 8, !tbaa !246
  %175 = fmul float %163, %174
  %176 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float %175, ptr %176, align 8, !tbaa !165
  %177 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %177, align 4, !tbaa !165
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %5) #15
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #15
  %178 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 38
  %179 = load i16, ptr %178, align 8, !tbaa !247
  %180 = call i16 @llvm.smin.i16(i16 %179, i16 128)
  %181 = call i16 @llvm.smax.i16(i16 %180, i16 0)
  %182 = zext nneg i16 %181 to i32
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef %182) #15
  call void @glEnable(i32 noundef 2896) #15
  call void @glEnable(i32 noundef 2903) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %184

183:                                              ; preds = %155
  tail call void @glDisable(i32 noundef 2896) #15
  tail call void @glDisable(i32 noundef 2903) #15
  br label %184

184:                                              ; preds = %183, %160
  %185 = phi ptr [ %161, %160 ], [ %2, %183 ]
  store i32 %149, ptr @set_draw_settings_cached.c_lit, align 4, !tbaa !62
  store ptr %185, ptr @set_draw_settings_cached.c_ma, align 8, !tbaa !50
  %186 = load i8, ptr @set_draw_settings_cached.c_badtex, align 1, !tbaa !215
  br label %187

187:                                              ; preds = %146, %184
  %188 = phi i8 [ %147, %146 ], [ %186, %184 ]
  ret i8 %188
}

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glCullFace(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_image_has_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_clear_tpage(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_set_tpage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @give_current_material_or_def() unnamed_addr #0 !PGOFuncName !248 {
  %1 = tail call ptr @give_current_material(ptr noundef null, i16 noundef signext 0) #15
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, ptr @defmaterial, ptr %1
  ret ptr %3
}

; Function Attrs: optsize
declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !249 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !250
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !251 {
  %3 = load float, ptr %1, align 4, !tbaa !165
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #15
  store float %4, ptr %0, align 4, !tbaa !165
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !165
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #15
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !165
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !165
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #15
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !252 {
  %3 = load float, ptr %1, align 4, !tbaa !165
  store float %3, ptr %0, align 4, !tbaa !165
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !165
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !165
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !165
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !165
  ret void
}

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !253 {
  %3 = load float, ptr %1, align 4, !tbaa !165
  store float %3, ptr %0, align 4, !tbaa !165
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !165
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0) unnamed_addr #5 !PGOFuncName !254 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 4)
  ret i32 %2
}

; Function Attrs: optsize
declare void @BKE_bproperty_set_valstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare zeroext i8 @BKE_image_has_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_render_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_default_lights() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_disable_material() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"drawMeshFaceSelect_userData", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !36, i64 1656}
!41 = !{!"DerivedMesh", !42, i64 0, !42, i64 200, !42, i64 400, !42, i64 600, !42, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !36, i64 1032, !36, i64 1040, !43, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!42 = !{!"CustomData", !36, i64 0, !37, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !36, i64 184, !36, i64 192}
!43 = !{!"int", !37, i64 0}
!44 = !{!"float", !37, i64 0}
!45 = !{!46, !43, i64 1344}
!46 = !{!"Mesh", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !42, i64 280, !42, i64 480, !42, i64 680, !42, i64 880, !42, i64 1080, !43, i64 1280, !43, i64 1284, !43, i64 1288, !43, i64 1292, !43, i64 1296, !43, i64 1300, !43, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !43, i64 1344, !48, i64 1348, !48, i64 1350, !44, i64 1352, !43, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !48, i64 1366, !36, i64 1368}
!47 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !48, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!48 = !{!"short", !37, i64 0}
!49 = !{!41, !36, i64 1632}
!50 = !{!36, !36, i64 0}
!51 = !{!"drawmesh.c:get_tface_mesh_marked_edge_info"}
!52 = !{!46, !43, i64 1284}
!53 = !{!46, !43, i64 1296}
!54 = !{!46, !36, i64 168}
!55 = !{!56, !37, i64 10}
!56 = !{!"MPoly", !43, i64 0, !43, i64 4, !48, i64 8, !37, i64 10, !37, i64 11}
!57 = !{!56, !43, i64 4}
!58 = !{!46, !36, i64 184}
!59 = !{!56, !43, i64 0}
!60 = !{!61, !43, i64 4}
!61 = !{!"MLoop", !43, i64 0, !43, i64 4}
!62 = !{!43, !43, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = !{!"drawmesh.c:draw_mesh_face_select__setHiddenOpts"}
!67 = !{!"drawmesh.c:draw_mesh_face_select__drawFaceOptsInv"}
!68 = !{!"drawmesh.c:draw_mesh_face_select__setSelectOpts"}
!69 = !{!70, !48, i64 242}
!70 = !{!"View3D", !36, i64 0, !36, i64 8, !71, i64 16, !43, i64 32, !44, i64 36, !37, i64 40, !37, i64 56, !44, i64 72, !44, i64 76, !37, i64 80, !37, i64 81, !43, i64 84, !43, i64 88, !48, i64 92, !48, i64 94, !36, i64 96, !36, i64 104, !72, i64 112, !71, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !43, i64 224, !43, i64 228, !48, i64 232, !48, i64 234, !48, i64 236, !48, i64 238, !48, i64 240, !48, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !37, i64 260, !37, i64 272, !48, i64 284, !48, i64 286, !48, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !71, i64 296, !71, i64 312, !71, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!71 = !{!"ListBase", !36, i64 0, !36, i64 8}
!72 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!73 = !{!74, !43, i64 432}
!74 = !{!"Object", !47, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !48, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !75, i64 312, !36, i64 360, !71, i64 368, !71, i64 384, !71, i64 400, !71, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !44, i64 616, !44, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !37, i64 1042, !37, i64 1043, !48, i64 1044, !37, i64 1046, !37, i64 1047, !44, i64 1048, !44, i64 1052, !71, i64 1056, !71, i64 1072, !71, i64 1088, !71, i64 1104, !44, i64 1120, !48, i64 1124, !48, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !48, i64 1162, !37, i64 1164, !71, i64 1176, !71, i64 1192, !71, i64 1208, !71, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !48, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !76, i64 1304, !76, i64 1312, !43, i64 1320, !43, i64 1324, !71, i64 1328, !71, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !71, i64 1400, !36, i64 1416}
!75 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!76 = !{!"long", !37, i64 0}
!77 = !{!70, !48, i64 232}
!78 = !{!74, !48, i64 952}
!79 = !{!74, !36, i64 296}
!80 = !{!81, !36, i64 0}
!81 = !{!"TexMatCallback", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!82 = !{!81, !36, i64 8}
!83 = !{!81, !36, i64 16}
!84 = !{!81, !36, i64 24}
!85 = !{!86, !43, i64 2096}
!86 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !71, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !48, i64 2084, !48, i64 2086, !48, i64 2088, !37, i64 2090, !48, i64 2092, !43, i64 2096, !43, i64 2100, !37, i64 2104, !43, i64 2108, !43, i64 2112, !37, i64 2116}
!87 = !{!88, !36, i64 176}
!88 = !{!"Scene", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !71, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !48, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !89, i64 280, !97, i64 4264, !71, i64 4296, !71, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !48, i64 4376, !48, i64 4378, !43, i64 4380, !71, i64 4384, !98, i64 4400, !99, i64 4416, !102, i64 4600, !36, i64 4608, !103, i64 4616, !36, i64 4640, !76, i64 4648, !76, i64 4656, !91, i64 4664, !92, i64 4824, !104, i64 4888, !36, i64 4952}
!89 = !{!"RenderData", !90, i64 0, !36, i64 248, !36, i64 256, !93, i64 264, !94, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !44, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !48, i64 432, !48, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !43, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !43, i64 484, !43, i64 488, !48, i64 492, !48, i64 494, !43, i64 496, !43, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !72, i64 544, !72, i64 560, !95, i64 576, !71, i64 592, !48, i64 608, !48, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !43, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !44, i64 660, !44, i64 664, !48, i64 668, !48, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !43, i64 1704, !48, i64 1708, !48, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !48, i64 2524, !48, i64 2526, !44, i64 2528, !44, i64 2532, !48, i64 2536, !48, i64 2538, !44, i64 2540, !48, i64 2544, !48, i64 2546, !43, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !43, i64 2576, !44, i64 2580, !37, i64 2584, !96, i64 2616, !43, i64 3976, !43, i64 3980}
!90 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !48, i64 8, !48, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !91, i64 24, !92, i64 184}
!91 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!92 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!93 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !48, i64 48, !48, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!94 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !44, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!95 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!96 = !{!"BakeData", !90, i64 0, !37, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!97 = !{!"AudioData", !43, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !48, i64 20, !48, i64 22, !44, i64 24, !44, i64 28}
!98 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!99 = !{!"GameData", !98, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !37, i64 34, !100, i64 40, !48, i64 64, !48, i64 66, !44, i64 68, !101, i64 72, !44, i64 128, !44, i64 132, !43, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!100 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !44, i64 8, !44, i64 12, !36, i64 16}
!101 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !43, i64 40, !44, i64 44, !44, i64 48, !48, i64 52, !48, i64 54}
!102 = !{!"UnitSettings", !44, i64 0, !37, i64 4, !37, i64 5, !48, i64 6}
!103 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!104 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!105 = !{!41, !36, i64 1672}
!106 = !{!"drawmesh.c:draw_mesh_textured_old"}
!107 = !{!46, !36, i64 272}
!108 = !{!109, !36, i64 0}
!109 = !{!"drawEMTFMapped_userData", !36, i64 0, !37, i64 8, !37, i64 9, !36, i64 16, !36, i64 24}
!110 = !{!111, !36, i64 0}
!111 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !43, i64 16, !36, i64 24, !43, i64 32, !36, i64 40, !36, i64 48, !76, i64 56, !36, i64 64, !43, i64 72, !36, i64 80, !43, i64 88, !48, i64 92, !48, i64 94, !36, i64 96, !43, i64 104}
!112 = !{!109, !37, i64 8}
!113 = !{!109, !37, i64 9}
!114 = !{!109, !36, i64 16}
!115 = !{!109, !36, i64 24}
!116 = !{!41, !36, i64 1640}
!117 = !{!118, !36, i64 8}
!118 = !{!"drawTFace_userData", !36, i64 0, !36, i64 8, !36, i64 16}
!119 = !{!118, !36, i64 16}
!120 = !{!118, !36, i64 0}
!121 = !{!41, !36, i64 1616}
!122 = !{!46, !37, i64 1365}
!123 = !{!74, !48, i64 1044}
!124 = !{!70, !48, i64 240}
!125 = !{!"drawmesh.c:tex_mat_set_face_editmesh_cb"}
!126 = !{!127, !43, i64 12}
!127 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !43, i64 128, !36, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !48, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !71, i64 960, !36, i64 976, !71, i64 984, !36, i64 1000}
!128 = !{!"drawmesh.c:tex_mat_set_face_mesh_cb"}
!129 = !{!"drawmesh.c:tex_mat_set_material_cb"}
!130 = !{!"drawmesh.c:tex_mat_set_texture_cb"}
!131 = !{!132, !36, i64 248}
!132 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !43, i64 168, !48, i64 172, !48, i64 174, !48, i64 176, !48, i64 178, !48, i64 180, !48, i64 182, !48, i64 184, !48, i64 186, !37, i64 188, !71, i64 200, !71, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !71, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !43, i64 308, !37, i64 312, !48, i64 376, !48, i64 378, !44, i64 380, !44, i64 384, !48, i64 388, !48, i64 390, !36, i64 392, !72, i64 400, !72, i64 416, !72, i64 432, !48, i64 448, !48, i64 450, !43, i64 452, !36, i64 456}
!133 = !{!134, !43, i64 1268}
!134 = !{!"Image", !47, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !48, i64 1240, !48, i64 1242, !48, i64 1244, !48, i64 1246, !48, i64 1248, !48, i64 1250, !43, i64 1252, !48, i64 1256, !48, i64 1258, !48, i64 1260, !48, i64 1262, !48, i64 1264, !48, i64 1266, !43, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !44, i64 1296, !43, i64 1300, !48, i64 1304, !48, i64 1306, !43, i64 1308, !43, i64 1312, !37, i64 1316, !37, i64 1317, !48, i64 1318, !37, i64 1320, !44, i64 1336, !44, i64 1340, !104, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!135 = !{!136, !43, i64 0}
!136 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !37, i64 16}
!137 = !{!136, !43, i64 8}
!138 = !{!139, !43, i64 2560}
!139 = !{!"GPUVertexAttribs", !37, i64 0, !43, i64 2560}
!140 = !{!"drawmesh.c:draw_mesh_paint_light_begin"}
!141 = !{!"drawmesh.c:draw_mesh_paint_light_end"}
!142 = !{!46, !36, i64 200}
!143 = !{!"drawmesh.c:wpaint__setSolidDrawOptions_facemask"}
!144 = !{!"drawmesh.c:edge_vis_index"}
!145 = !{!"drawmesh.c:edge_sel_index"}
!146 = !{!"drawmesh.c:draw_textured_begin"}
!147 = !{!88, !36, i64 264}
!148 = !{!149, !43, i64 28}
!149 = !{!"TextureDrawState", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !37, i64 40, !37, i64 41, !37, i64 45, !37, i64 46}
!150 = !{!70, !43, i64 224}
!151 = !{!152, !37, i64 808}
!152 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !44, i64 776, !44, i64 780, !44, i64 784, !44, i64 788, !37, i64 792, !44, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !48, i64 824, !48, i64 826, !37, i64 828, !48, i64 844, !48, i64 846, !44, i64 848, !37, i64 852, !44, i64 864, !37, i64 868}
!153 = !{!149, !36, i64 0}
!154 = !{!155, !48, i64 40}
!155 = !{!"ImagePaintSettings", !156, i64 0, !48, i64 40, !48, i64 42, !48, i64 44, !48, i64 46, !37, i64 48, !43, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !44, i64 100}
!156 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!157 = !{!155, !36, i64 64}
!158 = !{!149, !36, i64 8}
!159 = !{!149, !37, i64 45}
!160 = !{!155, !43, i64 52}
!161 = !{!149, !37, i64 46}
!162 = !{!155, !36, i64 80}
!163 = !{!149, !36, i64 16}
!164 = !{!149, !43, i64 32}
!165 = !{!44, !44, i64 0}
!166 = !{!149, !43, i64 36}
!167 = !{!168, !43, i64 144}
!168 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !43, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !169, i64 200}
!169 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!170 = !{!149, !37, i64 24}
!171 = !{!149, !37, i64 40}
!172 = !{i8 0, i8 2}
!173 = !{!46, !48, i64 1350}
!174 = !{!"drawmesh.c:draw_em_tf_mapped__set_draw"}
!175 = !{!176, !48, i64 48}
!176 = !{!"BMFace", !177, i64 0, !36, i64 16, !36, i64 24, !43, i64 32, !37, i64 36, !48, i64 48}
!177 = !{!"BMHeader", !36, i64 0, !43, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!178 = !{!176, !36, i64 0}
!179 = !{!180, !36, i64 0}
!180 = !{!"MTexPoly", !36, i64 0, !37, i64 8, !37, i64 9, !48, i64 10, !48, i64 12, !48, i64 14}
!181 = !{!182, !36, i64 32}
!182 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !48, i64 42, !48, i64 44, !48, i64 46}
!183 = !{!180, !37, i64 8}
!184 = !{!182, !37, i64 40}
!185 = !{!180, !37, i64 9}
!186 = !{!182, !37, i64 41}
!187 = !{!48, !48, i64 0}
!188 = !{i32 0, i32 3}
!189 = !{!"drawmesh.c:compareDrawOptionsEm"}
!190 = !{!191, !48, i64 16}
!191 = !{!"MFace", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !48, i64 16, !37, i64 18, !37, i64 19}
!192 = !{!"drawmesh.c:draw_tface_mapped__set_draw"}
!193 = !{!46, !36, i64 176}
!194 = !{!56, !48, i64 8}
!195 = !{i32 0, i32 2}
!196 = !{!"drawmesh.c:compareDrawOptions"}
!197 = !{!"drawmesh.c:draw_mcol__set_draw_legacy"}
!198 = !{!"drawmesh.c:draw_tface__set_draw_legacy"}
!199 = !{!200, !43, i64 312}
!200 = !{!"Material", !47, i64 0, !36, i64 120, !48, i64 128, !48, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !201, i64 224, !202, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !48, i64 356, !48, i64 358, !48, i64 360, !37, i64 362, !37, i64 363, !44, i64 364, !44, i64 368, !48, i64 372, !48, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !48, i64 392, !48, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !48, i64 412, !48, i64 414, !48, i64 416, !48, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !37, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !43, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !48, i64 544, !48, i64 546, !48, i64 548, !37, i64 550, !37, i64 551, !48, i64 552, !48, i64 554, !44, i64 556, !44, i64 560, !37, i64 564, !44, i64 580, !44, i64 584, !48, i64 588, !48, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !48, i64 612, !48, i64 614, !44, i64 616, !44, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !48, i64 820, !48, i64 822, !37, i64 824, !37, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !48, i64 876, !48, i64 878, !43, i64 880, !48, i64 884, !48, i64 886, !37, i64 888, !48, i64 904, !48, i64 906, !48, i64 908, !48, i64 910, !48, i64 912, !37, i64 914, !36, i64 920, !71, i64 928}
!201 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !48, i64 64, !48, i64 66, !48, i64 68, !48, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!202 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!203 = !{!200, !48, i64 394}
!204 = !{!"drawmesh.c:update_tface_color_layer"}
!205 = !{!41, !36, i64 1184}
!206 = !{!41, !36, i64 1336}
!207 = !{!41, !36, i64 1120}
!208 = !{!41, !43, i64 1008}
!209 = !{!210, !37, i64 3}
!210 = !{!"MCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!211 = !{!210, !37, i64 2}
!212 = !{!210, !37, i64 1}
!213 = distinct !{!213, !64}
!214 = distinct !{!214, !64}
!215 = !{!37, !37, i64 0}
!216 = distinct !{!216, !64}
!217 = distinct !{!217, !64}
!218 = distinct !{!218, !64}
!219 = distinct !{!219, !64}
!220 = distinct !{!220, !64}
!221 = distinct !{!221, !64}
!222 = !{!"drawmesh.c:draw_tface__set_draw"}
!223 = !{!"drawmesh.c:draw_mesh_text"}
!224 = !{!46, !36, i64 192}
!225 = !{!88, !36, i64 168}
!226 = !{!227, !36, i64 32}
!227 = !{!"Base", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !48, i64 28, !48, i64 30, !36, i64 32}
!228 = !{!76, !76, i64 0}
!229 = !{!46, !36, i64 152}
!230 = !{!61, !43, i64 0}
!231 = distinct !{!231, !64}
!232 = !{!41, !36, i64 1528}
!233 = distinct !{!233, !64}
!234 = !{!41, !36, i64 1680}
!235 = !{!"drawmesh.c:draw_textured_end"}
!236 = !{!"drawmesh.c:set_draw_settings_cached"}
!237 = !{!200, !43, i64 396}
!238 = !{!200, !43, i64 316}
!239 = !{!200, !36, i64 920}
!240 = !{!200, !48, i64 908}
!241 = !{!242, !36, i64 0}
!242 = !{!"TexPaintSlot", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20}
!243 = !{!200, !44, i64 208}
!244 = !{!200, !44, i64 144}
!245 = !{!200, !44, i64 148}
!246 = !{!200, !44, i64 152}
!247 = !{!200, !48, i64 360}
!248 = !{!"drawmesh.c:give_current_material_or_def"}
!249 = !{!"drawmesh.c:_bm_elem_flag_test"}
!250 = !{!177, !37, i64 13}
!251 = !{!"drawmesh.c:linearrgb_to_srgb_v3_v3"}
!252 = !{!"drawmesh.c:copy_v3_v3"}
!253 = !{!"drawmesh.c:copy_v2_v2"}
!254 = !{!"drawmesh.c:min_ii"}
