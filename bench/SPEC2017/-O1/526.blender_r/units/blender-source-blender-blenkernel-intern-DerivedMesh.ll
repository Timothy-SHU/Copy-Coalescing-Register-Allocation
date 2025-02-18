; ModuleID = 'blender/source/blender/blenkernel/intern/DerivedMesh.c'
source_filename = "blender/source/blender/blenkernel/intern/DerivedMesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DMWeightColorInfo = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.CDMaskLink = type { ptr, i64 }
%struct.OrigSpaceLoop = type { [2 x float] }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.Sculpt = type { %struct.Paint, i32, [3 x i32], float, i32, float, float, ptr, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.MappedUserData = type { ptr, ptr }
%struct.SGLSLMeshToTangent = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.SMikkTSpaceContext = type { ptr, ptr }
%struct.SMikkTSpaceInterface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon.3], i32 }
%struct.anon.3 = type { i32, i32, i32, i32, [64 x i8] }
%struct.DMVertexAttribs = type { [8 x %struct.anon], [8 x %struct.anon.0], %struct.anon.1, %struct.anon.2, i32, i32, i32, i32 }
%struct.anon = type { ptr, i32, i32, i32 }
%struct.anon.0 = type { ptr, i32, i32 }
%struct.anon.1 = type { ptr, i32, i32 }
%struct.anon.2 = type { ptr, i32, i32, i32 }

@CD_MASK_DERIVEDMESH = external local_unnamed_addr constant i64, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [70 x i8] c"warning %s: could not create tessfaces from %d polygons, dm->type=%d\0A\00", align 1
@__func__.DM_ensure_tessface = private unnamed_addr constant [19 x i8] c"DM_ensure_tessface\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.DM_update_tessface_data = private unnamed_addr constant [24 x i8] c"DM_update_tessface_data\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Updated tessellated customdata of dm %p\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"DerivedMesh.mat\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: error - could not find active shapekey %d!\0A\00", align 1
@__func__.DM_to_mesh = private unnamed_addr constant [11 x i8] c"DM_to_mesh\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"%s: YEEK! this should be recoded! Shape key loss!: ID '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"kb->data\00", align 1
@G_dm_wcinfo = internal global %struct.DMWeightColorInfo zeroinitializer, align 8
@__func__.DM_update_weight_mcol = private unnamed_addr constant [22 x i8] c"DM_update_weight_mcol\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Temp weight array DM_update_weight_mcol\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vertexcos\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Modifier requires original data, bad stack position\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"vertexcos flags\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"DM-BoundBox\00", align 1
@DM_init_origspace.default_osf = internal unnamed_addr constant [4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"dmvh vert data array\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"dm medge data array\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"dm loop data array\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"dm poly data array\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"bvh mface data array\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"dm_dupVertArray tmp\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"dm_dupEdgeArray tmp\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"dm_dupFaceArray tmp\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"dm_dupLoopArray tmp\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"dm_dupPolyArray tmp\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"kbcos DerivedMesh.c\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"kb->data derivedmesh.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [57 x i8] c"%s: lost a shapekey layer: '%s'! (bmesh internal error)\0A\00", align 1
@__func__.shapekey_layers_to_keyblocks = private unnamed_addr constant [29 x i8] c"shapekey_layers_to_keyblocks\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"%s: vertex size mismatch (mesh/dm) '%s' (%d != %d)\0A\00", align 1
@__func__.add_shapekey_layers = private unnamed_addr constant [20 x i8] c"add_shapekey_layers\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"%s: vertex size mismatch (Mesh '%s':%d != KeyBlock '%s':%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"dfmv\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"dm orco\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"BMEditMesh Orco\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Not supported in dyntopo\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Not supported in sculpt mode\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Hide, Mask and optimized display disabled\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @DM_init_funcs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  store ptr @dm_getVertArray, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  store ptr @dm_getEdgeArray, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  store ptr @dm_getTessFaceArray, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  store ptr @dm_getLoopArray, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  store ptr @dm_getPolyArray, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  store ptr @dm_dupVertArray, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  store ptr @dm_dupEdgeArray, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 43
  store ptr @dm_dupFaceArray, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 44
  store ptr @dm_dupLoopArray, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 45
  store ptr @dm_dupPolyArray, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 55
  store ptr @dm_getVertCData, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 56
  store ptr @dm_getEdgeCData, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  store ptr @dm_getTessFaceCData, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  store ptr @dm_getLoopCData, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  store ptr @dm_getPolyCData, ptr %16, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %19, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 49
  store ptr @DM_get_poly_data, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %22, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  store ptr @DM_get_poly_data_layer, ptr %24, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  store ptr @DM_get_loop_data_layer, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 12
  tail call void @bvhcache_init(ptr noundef nonnull %26) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_getVertArray(ptr noundef %0) #0 {
  %2 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = tail call i32 %6(ptr noundef %0) #14
  %8 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %7) #14
  tail call void @CustomData_set_layer_flag(ptr noundef %0, i32 noundef 0, i32 noundef 5) #14
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 36
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  tail call void %10(ptr noundef %0, ptr noundef %8) #14
  br label %11

11:                                               ; preds = %4, %1
  %12 = phi ptr [ %2, %1 ], [ %8, %4 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_getEdgeArray(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 3) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call i32 %7(ptr noundef %0) #14
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %8) #14
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 5) #14
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 37
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  tail call void %11(ptr noundef %0, ptr noundef %9) #14
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %1 ], [ %9, %5 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_getTessFaceArray(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 4) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call i32 %7(ptr noundef %0) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %8) #14
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 4, i32 noundef 5) #14
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 38
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  tail call void %13(ptr noundef %0, ptr noundef %11) #14
  br label %14

14:                                               ; preds = %10, %5, %1
  %15 = phi ptr [ %3, %1 ], [ %11, %10 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_getLoopArray(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 26) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = tail call i32 %7(ptr noundef %0) #14
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %8) #14
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 26, i32 noundef 5) #14
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 39
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  tail call void %11(ptr noundef %0, ptr noundef %9) #14
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %1 ], [ %9, %5 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_getPolyArray(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 25) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = tail call i32 %7(ptr noundef %0) #14
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %8) #14
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 25, i32 noundef 5) #14
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  tail call void %11(ptr noundef %0, ptr noundef %9) #14
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %1 ], [ %9, %5 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_dupVertArray(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = tail call i32 %4(ptr noundef %0) #14
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 20
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.16) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  tail call void %12(ptr noundef %0, ptr noundef nonnull %8) #14
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_dupEdgeArray(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call i32 %4(ptr noundef %0) #14
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 12
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.17) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 37
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  tail call void %12(ptr noundef %0, ptr noundef nonnull %8) #14
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_dupFaceArray(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call i32 %4(ptr noundef %0) #14
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 20
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.18) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 38
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  tail call void %12(ptr noundef %0, ptr noundef nonnull %8) #14
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_dupLoopArray(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = tail call i32 %4(ptr noundef %0) #14
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.19) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 39
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  tail call void %12(ptr noundef %0, ptr noundef nonnull %8) #14
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @dm_dupPolyArray(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = tail call i32 %4(ptr noundef %0) #14
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 12
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.20) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  tail call void %12(ptr noundef %0, ptr noundef nonnull %8) #14
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef ptr @dm_getVertCData(ptr noundef readnone returned %0) #1 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @dm_getEdgeCData(ptr noundef readnone %0) #1 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @dm_getTessFaceCData(ptr noundef readnone %0) #1 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @dm_getLoopCData(ptr noundef readnone %0) #1 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @dm_getPolyCData(ptr noundef readnone %0) #1 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %5 = tail call ptr @CustomData_get(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #14
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %5 = tail call ptr @CustomData_get(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #14
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %5 = tail call ptr @CustomData_get(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #14
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr %6(ptr noundef %0) #14
  br label %10

8:                                                ; preds = %2
  %9 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef %1) #14
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %7, %4 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = tail call ptr %6(ptr noundef %0) #14
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef %1) #14
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %7, %4 ], [ %10, %8 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 4
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = tail call ptr %6(ptr noundef %0) #14
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef %1) #14
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %7, %4 ], [ %10, %8 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %4 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef %1) #14
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %4 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef %1) #14
  ret ptr %4
}

declare void @bvhcache_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  store i32 %1, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  store i32 %2, ptr %9, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  store i32 %3, ptr %10, align 4, !tbaa !78
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  store i32 %4, ptr %11, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  store i32 %5, ptr %12, align 4, !tbaa !80
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  store i32 %6, ptr %13, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  store ptr @dm_getVertArray, ptr %14, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  store ptr @dm_getEdgeArray, ptr %15, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  store ptr @dm_getTessFaceArray, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  store ptr @dm_getLoopArray, ptr %17, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  store ptr @dm_getPolyArray, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  store ptr @dm_dupVertArray, ptr %19, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  store ptr @dm_dupEdgeArray, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 43
  store ptr @dm_dupFaceArray, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 44
  store ptr @dm_dupLoopArray, ptr %22, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 45
  store ptr @dm_dupPolyArray, ptr %23, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 55
  store ptr @dm_getVertCData, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 56
  store ptr @dm_getEdgeCData, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  store ptr @dm_getTessFaceCData, ptr %26, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  store ptr @dm_getLoopCData, ptr %27, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  store ptr @dm_getPolyCData, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %30, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %31, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 49
  store ptr @DM_get_poly_data, ptr %32, align 8, !tbaa !59
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %33, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %34, align 8, !tbaa !61
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %35, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  store ptr @DM_get_poly_data_layer, ptr %36, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  store ptr @DM_get_loop_data_layer, ptr %37, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 12
  tail call void @bvhcache_init(ptr noundef nonnull %38) #14
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  store i32 1, ptr %39, align 4, !tbaa !82
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 15
  store float -1.000000e+00, ptr %40, align 4, !tbaa !83
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  store i32 0, ptr %41, align 8, !tbaa !84
  %42 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %42, i32 noundef 41, i32 noundef -1) #14
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %43, i32 noundef 41, i32 noundef -1) #14
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %44, i32 noundef 41, i32 noundef -1) #14
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %45, i32 noundef 41, i32 noundef -1) #14
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %46, i32 noundef 41, i32 noundef -1) #14
  ret void
}

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_from_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8, !tbaa !85
  tail call void @CustomData_copy(ptr noundef %1, ptr noundef %0, i64 noundef %9, i32 noundef 1, i32 noundef %3) #14
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_copy(ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %9, i32 noundef 1, i32 noundef %4) #14
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_copy(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef %9, i32 noundef 1, i32 noundef %5) #14
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  tail call void @CustomData_copy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef %9, i32 noundef 1, i32 noundef %6) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  tail call void @CustomData_copy(ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef %9, i32 noundef 1, i32 noundef %7) #14
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 19
  %19 = load i8, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  store i8 %19, ptr %20, align 8, !tbaa !87
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  store i32 %2, ptr %21, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  store i32 %3, ptr %22, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  store i32 %4, ptr %23, align 4, !tbaa !78
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  store i32 %5, ptr %24, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  store i32 %6, ptr %25, align 4, !tbaa !80
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  store i32 %7, ptr %26, align 8, !tbaa !81
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  store ptr @dm_getVertArray, ptr %27, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  store ptr @dm_getEdgeArray, ptr %28, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  store ptr @dm_getTessFaceArray, ptr %29, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  store ptr @dm_getLoopArray, ptr %30, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  store ptr @dm_getPolyArray, ptr %31, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  store ptr @dm_dupVertArray, ptr %32, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  store ptr @dm_dupEdgeArray, ptr %33, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 43
  store ptr @dm_dupFaceArray, ptr %34, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 44
  store ptr @dm_dupLoopArray, ptr %35, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 45
  store ptr @dm_dupPolyArray, ptr %36, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 55
  store ptr @dm_getVertCData, ptr %37, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 56
  store ptr @dm_getEdgeCData, ptr %38, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  store ptr @dm_getTessFaceCData, ptr %39, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  store ptr @dm_getLoopCData, ptr %40, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  store ptr @dm_getPolyCData, ptr %41, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %42, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %43, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %44, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 49
  store ptr @DM_get_poly_data, ptr %45, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %46, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %47, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %48, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  store ptr @DM_get_poly_data_layer, ptr %49, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  store ptr @DM_get_loop_data_layer, ptr %50, align 8, !tbaa !64
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 12
  tail call void @bvhcache_init(ptr noundef nonnull %51) #14
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  store i32 1, ptr %52, align 4, !tbaa !82
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  store i32 0, ptr %53, align 8, !tbaa !84
  ret void
}

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DM_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !82
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 12
  tail call void @bvhcache_free(ptr noundef nonnull %6) #14
  tail call void @GPU_drawobject_free(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !77
  tail call void @CustomData_free(ptr noundef %0, i32 noundef %8) #14
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !78
  tail call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %11) #14
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !79
  tail call void @CustomData_free(ptr noundef nonnull %12, i32 noundef %14) #14
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !80
  tail call void @CustomData_free(ptr noundef nonnull %15, i32 noundef %17) #14
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !81
  tail call void @CustomData_free(ptr noundef nonnull %18, i32 noundef %20) #14
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %5
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %25(ptr noundef nonnull %22) #14
  store ptr null, ptr %21, align 8, !tbaa !88
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  store i32 0, ptr %26, align 4, !tbaa !89
  br label %42

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !77
  tail call void @CustomData_free_temporary(ptr noundef %0, i32 noundef %29) #14
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !78
  tail call void @CustomData_free_temporary(ptr noundef nonnull %30, i32 noundef %32) #14
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !79
  tail call void @CustomData_free_temporary(ptr noundef nonnull %33, i32 noundef %35) #14
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !80
  tail call void @CustomData_free_temporary(ptr noundef nonnull %36, i32 noundef %38) #14
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !81
  tail call void @CustomData_free_temporary(ptr noundef nonnull %39, i32 noundef %41) #14
  br label %42

42:                                               ; preds = %5, %24, %27
  %43 = phi i32 [ 0, %27 ], [ 1, %24 ], [ 1, %5 ]
  ret i32 %43
}

declare void @bvhcache_free(ptr noundef) local_unnamed_addr #2

declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #2

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_free_temporary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_DupPolys(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !80
  tail call void @CustomData_free(ptr noundef nonnull %3, i32 noundef %5) #14
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !81
  tail call void @CustomData_free(ptr noundef nonnull %6, i32 noundef %8) #14
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %10 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8, !tbaa !85
  %11 = load i32, ptr %4, align 4, !tbaa !80
  tail call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 4, i32 noundef %11) #14
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %7, align 8, !tbaa !81
  tail call void @CustomData_copy(ptr noundef nonnull %12, ptr noundef nonnull %6, i64 noundef %10, i32 noundef 4, i32 noundef %13) #14
  %14 = load i32, ptr %4, align 4, !tbaa !80
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 8
  store i32 %14, ptr %15, align 4, !tbaa !80
  %16 = load i32, ptr %7, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 9
  store i32 %16, ptr %17, align 8, !tbaa !81
  %18 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 25) #14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 44
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = tail call ptr %22(ptr noundef %0) #14
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 45
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = tail call ptr %25(ptr noundef %0) #14
  %27 = load i32, ptr %4, align 4, !tbaa !80
  %28 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 26, i32 noundef 0, ptr noundef %23, i32 noundef %27) #14
  %29 = load i32, ptr %7, align 8, !tbaa !81
  %30 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 25, i32 noundef 0, ptr noundef %26, i32 noundef %29) #14
  br label %31

31:                                               ; preds = %20, %2
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @DM_ensure_normals(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !84
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  tail call void %8(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_ensure_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = tail call i32 %3(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = tail call i32 %6(ptr noundef %0) #14
  %8 = icmp eq i32 %4, 0
  %9 = icmp ne i32 %7, 0
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  tail call void %13(ptr noundef %0) #14
  %14 = load ptr, ptr %2, align 8, !tbaa !69
  %15 = tail call i32 %14(ptr noundef %0) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !76
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.DM_ensure_tessface, i32 noundef %7, i32 noundef %19)
  br label %27

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !84
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @DM_update_tessface_data(ptr noundef %0)
  br label %27

27:                                               ; preds = %21, %26, %17, %11
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !84
  %30 = and i32 %29, -2
  store i32 %30, ptr %28, align 8, !tbaa !84
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @DM_update_tessface_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call ptr %3(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call ptr %6(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call ptr %9(ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = tail call ptr %12(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call ptr %15(ptr noundef %0) #14
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call ptr %18(ptr noundef %0) #14
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = tail call i32 %21(ptr noundef %0) #14
  %23 = tail call ptr @CustomData_get_layer(ptr noundef %13, i32 noundef 7) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %111, label %25

25:                                               ; preds = %1
  tail call void @CustomData_from_bmeshpoly(ptr noundef %13, ptr noundef %16, ptr noundef %19, i32 noundef %22) #14
  %26 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 5) #14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 6) #14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 20) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 13) #14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 40) #14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %101, label %40

40:                                               ; preds = %37, %34, %31, %28, %25
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %42 = sext i32 %22 to i64
  %43 = shl nsw i64 %42, 4
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @__func__.DM_update_tessface_data) #14
  %45 = icmp sgt i32 %22, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %40
  %47 = zext nneg i32 %22 to i64
  br label %48

48:                                               ; preds = %46, %95
  %49 = phi i64 [ 0, %46 ], [ %96, %95 ]
  %50 = phi ptr [ %4, %46 ], [ %97, %95 ]
  %51 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !92
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 3, i32 4
  %55 = getelementptr inbounds [4 x i32], ptr %44, i64 %49
  %56 = getelementptr inbounds i32, ptr %23, i64 %49
  %57 = load i32, ptr %56, align 4, !tbaa !95
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !96
  %61 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 1
  %62 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 2
  %63 = sext i32 %60 to i64
  br label %64

64:                                               ; preds = %48, %91
  %65 = phi i64 [ %63, %48 ], [ %93, %91 ]
  %66 = phi i32 [ %54, %48 ], [ %92, %91 ]
  %67 = load i32, ptr %50, align 4, !tbaa !98
  %68 = getelementptr inbounds %struct.MLoop, ptr %10, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !99
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %61, align 4, !tbaa !101
  %73 = icmp eq i32 %72, %69
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %62, align 4, !tbaa !102
  %76 = icmp eq i32 %75, %69
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %51, align 4, !tbaa !92
  %79 = icmp ne i32 %78, 0
  %80 = icmp eq i32 %78, %69
  %81 = and i1 %79, %80
  %82 = select i1 %81, i32 3, i32 -1
  br label %83

83:                                               ; preds = %71, %74, %77, %64
  %84 = phi i32 [ 0, %64 ], [ 1, %71 ], [ %82, %77 ], [ 2, %74 ]
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = zext nneg i32 %84 to i64
  %88 = getelementptr inbounds i32, ptr %55, i64 %87
  %89 = trunc i64 %65 to i32
  store i32 %89, ptr %88, align 4, !tbaa !95
  %90 = add nsw i32 %66, -1
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %66, %83 ]
  %93 = add i64 %65, 1
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %95, label %64, !llvm.loop !103

95:                                               ; preds = %91
  %96 = add nuw nsw i64 %49, 1
  %97 = getelementptr inbounds %struct.MFace, ptr %50, i64 1
  %98 = icmp eq i64 %96, %47
  br i1 %98, label %99, label %48, !llvm.loop !106

99:                                               ; preds = %95, %40
  tail call void @BKE_mesh_loops_to_tessdata(ptr noundef %13, ptr noundef %19, ptr noundef %16, ptr noundef %4, ptr noundef nonnull %23, ptr noundef %44, i32 noundef %22) #14
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %100(ptr noundef %44) #14
  br label %101

101:                                              ; preds = %99, %37
  %102 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !107
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.DM_update_tessface_data, ptr noundef %0)
  br label %107

107:                                              ; preds = %105, %101
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %109 = load i32, ptr %108, align 8, !tbaa !84
  %110 = and i32 %109, -2
  store i32 %110, ptr %108, align 8, !tbaa !84
  br label %111

111:                                              ; preds = %1, %107
  ret void
}

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_loops_to_tessdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_update_materials(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %4 = load i32, ptr %3, align 8, !tbaa !110
  %5 = add nsw i32 %4, 1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  store i32 %5, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %11(ptr noundef nonnull %8) #14
  br label %12

12:                                               ; preds = %10, %2
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %14 = sext i32 %5 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @.str.2) #14
  store ptr %16, ptr %7, align 8, !tbaa !88
  %17 = icmp sgt i32 %4, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = zext nneg i32 %4 to i64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %22, %20 ]
  %22 = add nuw nsw i64 %21, 1
  %23 = trunc i64 %22 to i16
  %24 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %23) #14
  %25 = load ptr, ptr %7, align 8, !tbaa !88
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %24, ptr %26, align 8, !tbaa !75
  %27 = icmp eq i64 %22, %19
  br i1 %27, label %28, label %20, !llvm.loop !114

28:                                               ; preds = %20, %12
  ret void
}

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_paint_uvlayer_active_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 135
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 131
  %15 = load i16, ptr %14, align 4, !tbaa !119
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds %struct.TexPaintSlot, ptr %11, i64 %16, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %22 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %21, i32 noundef 5, ptr noundef nonnull %18) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %29

24:                                               ; preds = %13, %9, %2
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %21, %20 ]
  %28 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %27, i32 noundef 5) #14
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %22, %20 ], [ %28, %26 ]
  ret ptr %30
}

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_to_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.Mesh, align 8
  call void @llvm.lifetime.start.p0(i64 1376, ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %5, ptr noundef nonnull align 8 dereferenceable(1376) %1, i64 1376, i1 false), !tbaa.struct !122
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 21
  call void @CustomData_reset(ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 22
  call void @CustomData_reset(ptr noundef nonnull %7) #14
  %8 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 23
  call void @CustomData_reset(ptr noundef nonnull %8) #14
  %9 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  call void @CustomData_reset(ptr noundef nonnull %9) #14
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 24
  call void @CustomData_reset(ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !84
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  call void %17(ptr noundef %0) #14
  br label %18

18:                                               ; preds = %4, %15
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = call i32 %20(ptr noundef %0) #14
  %22 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  store i32 %21, ptr %22, align 8, !tbaa !126
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = call i32 %24(ptr noundef %0) #14
  %26 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 27
  store i32 %25, ptr %26, align 4, !tbaa !128
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = call i32 %28(ptr noundef %0) #14
  %30 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 31
  store i32 %29, ptr %30, align 4, !tbaa !129
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = call i32 %32(ptr noundef %0) #14
  %34 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  store i32 %33, ptr %34, align 8, !tbaa !130
  %35 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 28
  store i32 0, ptr %35, align 8, !tbaa !131
  call void @CustomData_copy(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %3, i32 noundef 4, i32 noundef %21) #14
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  call void @CustomData_copy(ptr noundef nonnull %36, ptr noundef nonnull %7, i64 noundef %3, i32 noundef 4, i32 noundef %25) #14
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  call void @CustomData_copy(ptr noundef nonnull %37, ptr noundef nonnull %9, i64 noundef %3, i32 noundef 4, i32 noundef %29) #14
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  call void @CustomData_copy(ptr noundef nonnull %38, ptr noundef nonnull %10, i64 noundef %3, i32 noundef 4, i32 noundef %33) #14
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  %40 = load i8, ptr %39, align 8, !tbaa !87
  %41 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 41
  store i8 %40, ptr %41, align 8, !tbaa !132
  %42 = call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef 28) #14
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %188

44:                                               ; preds = %18
  %45 = icmp eq ptr %2, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !133
  %49 = getelementptr inbounds %struct.Key, ptr %48, i64 0, i32 6
  %50 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 115
  %51 = load i16, ptr %50, align 2, !tbaa !134
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, -1
  %54 = call ptr @BLI_findlink(ptr noundef nonnull %49, i32 noundef %53) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.KeyBlock, ptr %54, i64 0, i32 9
  %58 = load i32, ptr %57, align 4, !tbaa !135
  br label %64

59:                                               ; preds = %46
  %60 = load i16, ptr %50, align 2, !tbaa !134
  %61 = sext i16 %60 to i32
  %62 = add nsw i32 %61, -1
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @__func__.DM_to_mesh, i32 noundef %62)
  br label %64

64:                                               ; preds = %44, %56, %59
  %65 = phi i32 [ %58, %56 ], [ 2147483647, %59 ], [ 2147483647, %44 ]
  %66 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !133
  %68 = icmp eq ptr %67, null
  br i1 %68, label %188, label %69

69:                                               ; preds = %64
  %70 = call i32 @CustomData_number_of_layers(ptr noundef %0, i32 noundef 28) #14
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %157

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  br label %75

75:                                               ; preds = %72, %154
  %76 = phi i32 [ 0, %72 ], [ %155, %154 ]
  %77 = load ptr, ptr %0, align 8, !tbaa !137
  %78 = call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %0, i32 noundef 28, i32 noundef %76) #14
  %79 = sext i32 %78 to i64
  %80 = load ptr, ptr %66, align 8, !tbaa !133
  %81 = getelementptr inbounds %struct.Key, ptr %80, i64 0, i32 6
  %82 = getelementptr inbounds %struct.CustomDataLayer, ptr %77, i64 %79, i32 7
  br label %83

83:                                               ; preds = %87, %75
  %84 = phi ptr [ %81, %75 ], [ %85, %87 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.KeyBlock, ptr %85, i64 0, i32 9
  %89 = load i32, ptr %88, align 4, !tbaa !135
  %90 = load i32, ptr %82, align 4, !tbaa !138
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %98, label %83, !llvm.loop !140

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.CustomDataLayer, ptr %77, i64 %79, i32 8
  %94 = call ptr @BKE_keyblock_add(ptr noundef %80, ptr noundef nonnull %93) #14
  %95 = getelementptr inbounds %struct.CustomDataLayer, ptr %77, i64 %79, i32 7
  %96 = load i32, ptr %95, align 4, !tbaa !138
  %97 = getelementptr inbounds %struct.KeyBlock, ptr %94, i64 0, i32 9
  store i32 %96, ptr %97, align 4, !tbaa !135
  br label %98

98:                                               ; preds = %87, %92
  %99 = phi ptr [ %94, %92 ], [ %85, %87 ]
  %100 = getelementptr inbounds %struct.KeyBlock, ptr %99, i64 0, i32 10
  %101 = load ptr, ptr %100, align 8, !tbaa !141
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %104(ptr noundef nonnull %101) #14
  br label %105

105:                                              ; preds = %103, %98
  %106 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %0, i32 noundef 28, i32 noundef %76) #14
  %107 = load i32, ptr %73, align 8, !tbaa !77
  %108 = getelementptr inbounds %struct.KeyBlock, ptr %99, i64 0, i32 8
  store i32 %107, ptr %108, align 8, !tbaa !142
  %109 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %110 = sext i32 %107 to i64
  %111 = mul nsw i64 %110, 12
  %112 = call ptr %109(i64 noundef %111, ptr noundef nonnull @.str.21) #14
  store ptr %112, ptr %100, align 8, !tbaa !141
  %113 = getelementptr inbounds %struct.KeyBlock, ptr %99, i64 0, i32 9
  %114 = load i32, ptr %113, align 4, !tbaa !135
  %115 = icmp eq i32 %114, %65
  br i1 %115, label %119, label %116

116:                                              ; preds = %105
  %117 = load i32, ptr %108, align 8, !tbaa !142
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %139, label %154

119:                                              ; preds = %105
  %120 = load ptr, ptr %74, align 8, !tbaa !34
  %121 = call ptr %120(ptr noundef nonnull %0) #14
  %122 = load i32, ptr %73, align 8, !tbaa !77
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %154

124:                                              ; preds = %119, %124
  %125 = phi ptr [ %137, %124 ], [ %121, %119 ]
  %126 = phi ptr [ %136, %124 ], [ %112, %119 ]
  %127 = phi i32 [ %135, %124 ], [ 0, %119 ]
  %128 = load float, ptr %125, align 4, !tbaa !125
  store float %128, ptr %126, align 4, !tbaa !125
  %129 = getelementptr inbounds float, ptr %125, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !125
  %131 = getelementptr inbounds float, ptr %126, i64 1
  store float %130, ptr %131, align 4, !tbaa !125
  %132 = getelementptr inbounds float, ptr %125, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !125
  %134 = getelementptr inbounds float, ptr %126, i64 2
  store float %133, ptr %134, align 4, !tbaa !125
  %135 = add nuw nsw i32 %127, 1
  %136 = getelementptr inbounds [3 x float], ptr %126, i64 1
  %137 = getelementptr inbounds %struct.MVert, ptr %125, i64 1
  %138 = icmp eq i32 %135, %122
  br i1 %138, label %154, label %124, !llvm.loop !143

139:                                              ; preds = %116, %139
  %140 = phi ptr [ %152, %139 ], [ %112, %116 ]
  %141 = phi ptr [ %151, %139 ], [ %106, %116 ]
  %142 = phi i32 [ %150, %139 ], [ 0, %116 ]
  %143 = load float, ptr %141, align 4, !tbaa !125
  store float %143, ptr %140, align 4, !tbaa !125
  %144 = getelementptr inbounds float, ptr %141, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !125
  %146 = getelementptr inbounds float, ptr %140, i64 1
  store float %145, ptr %146, align 4, !tbaa !125
  %147 = getelementptr inbounds float, ptr %141, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !125
  %149 = getelementptr inbounds float, ptr %140, i64 2
  store float %148, ptr %149, align 4, !tbaa !125
  %150 = add nuw nsw i32 %142, 1
  %151 = getelementptr inbounds [3 x float], ptr %141, i64 1
  %152 = getelementptr inbounds [3 x float], ptr %140, i64 1
  %153 = icmp eq i32 %150, %117
  br i1 %153, label %154, label %139, !llvm.loop !144

154:                                              ; preds = %139, %124, %116, %119
  %155 = add nuw nsw i32 %76, 1
  %156 = icmp eq i32 %155, %70
  br i1 %156, label %157, label %75, !llvm.loop !145

157:                                              ; preds = %154, %69
  %158 = load ptr, ptr %66, align 8, !tbaa !133
  %159 = getelementptr inbounds %struct.Key, ptr %158, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !75
  %161 = icmp eq ptr %160, null
  br i1 %161, label %188, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  br label %164

164:                                              ; preds = %162, %185
  %165 = phi ptr [ %160, %162 ], [ %186, %185 ]
  %166 = getelementptr inbounds %struct.KeyBlock, ptr %165, i64 0, i32 8
  %167 = load i32, ptr %166, align 8, !tbaa !142
  %168 = load i32, ptr %163, align 8, !tbaa !77
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %185, label %170

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.KeyBlock, ptr %165, i64 0, i32 10
  %172 = load ptr, ptr %171, align 8, !tbaa !141
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %175(ptr noundef nonnull %172) #14
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32, ptr %163, align 8, !tbaa !77
  store i32 %177, ptr %166, align 8, !tbaa !142
  %178 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %179 = sext i32 %177 to i64
  %180 = mul nsw i64 %179, 12
  %181 = call ptr %178(i64 noundef %180, ptr noundef nonnull @.str.22) #14
  store ptr %181, ptr %171, align 8, !tbaa !141
  %182 = load ptr, ptr @stderr, align 8, !tbaa !75
  %183 = getelementptr inbounds %struct.KeyBlock, ptr %165, i64 0, i32 11
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.shapekey_layers_to_keyblocks, ptr noundef nonnull %183) #15
  br label %185

185:                                              ; preds = %176, %164
  %186 = load ptr, ptr %165, align 8, !tbaa !75
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %164, !llvm.loop !146

188:                                              ; preds = %185, %157, %64, %18
  %189 = icmp eq ptr %2, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %188
  call void @BKE_mesh_texspace_copy_from_object(ptr noundef nonnull %5, ptr noundef nonnull %2) #14
  br label %191

191:                                              ; preds = %190, %188
  %192 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 0) #14
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  %196 = load ptr, ptr %195, align 8, !tbaa !46
  %197 = call ptr %196(ptr noundef %0) #14
  %198 = call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, ptr noundef %197, i32 noundef %21) #14
  br label %199

199:                                              ; preds = %194, %191
  %200 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 3) #14
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  %204 = load ptr, ptr %203, align 8, !tbaa !47
  %205 = call ptr %204(ptr noundef %0) #14
  %206 = call ptr @CustomData_add_layer(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, ptr noundef %205, i32 noundef %25) #14
  br label %207

207:                                              ; preds = %202, %199
  %208 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %10, i32 noundef 25) #14
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 44
  %212 = load ptr, ptr %211, align 8, !tbaa !49
  %213 = call ptr %212(ptr noundef %0) #14
  %214 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 9
  store ptr %213, ptr %214, align 8, !tbaa !147
  %215 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 45
  %216 = load ptr, ptr %215, align 8, !tbaa !50
  %217 = call ptr %216(ptr noundef %0) #14
  %218 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 7
  store ptr %217, ptr %218, align 8, !tbaa !148
  %219 = load ptr, ptr %214, align 8, !tbaa !147
  %220 = load i32, ptr %30, align 4, !tbaa !129
  %221 = call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 26, i32 noundef 0, ptr noundef %219, i32 noundef %220) #14
  %222 = load ptr, ptr %218, align 8, !tbaa !148
  %223 = load i32, ptr %34, align 8, !tbaa !130
  %224 = call ptr @CustomData_add_layer(ptr noundef nonnull %10, i32 noundef 25, i32 noundef 0, ptr noundef %222, i32 noundef %223) #14
  br label %225

225:                                              ; preds = %210, %207
  %226 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %227 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %226, i32 noundef 19) #14
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %231 = load i32, ptr %230, align 4, !tbaa !129
  %232 = icmp eq i32 %29, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = call ptr @CustomData_get_layer(ptr noundef nonnull %226, i32 noundef 19) #14
  %235 = call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 19, i32 noundef 4, ptr noundef %234, i32 noundef %29) #14
  br label %236

236:                                              ; preds = %229, %233, %225
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %5, i8 noundef zeroext 0) #14
  %237 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %238 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %239 = load i32, ptr %238, align 8, !tbaa !126
  call void @CustomData_free(ptr noundef nonnull %237, i32 noundef %239) #14
  %240 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %241 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %242 = load i32, ptr %241, align 4, !tbaa !128
  call void @CustomData_free(ptr noundef nonnull %240, i32 noundef %242) #14
  %243 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %244 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %245 = load i32, ptr %244, align 8, !tbaa !131
  call void @CustomData_free(ptr noundef nonnull %243, i32 noundef %245) #14
  %246 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %247 = load i32, ptr %246, align 4, !tbaa !129
  call void @CustomData_free(ptr noundef nonnull %226, i32 noundef %247) #14
  %248 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %249 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %250 = load i32, ptr %249, align 8, !tbaa !130
  call void @CustomData_free(ptr noundef nonnull %248, i32 noundef %250) #14
  %251 = load i32, ptr %22, align 8, !tbaa !126
  %252 = load i32, ptr %238, align 8, !tbaa !126
  %253 = icmp eq i32 %251, %252
  %254 = or i1 %43, %253
  br i1 %254, label %270, label %255

255:                                              ; preds = %236
  %256 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %257 = load ptr, ptr %256, align 8, !tbaa !133
  %258 = icmp eq ptr %257, null
  br i1 %258, label %270, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %261 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.DM_to_mesh, ptr noundef nonnull %260)
  %262 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !133
  %264 = icmp eq ptr %263, null
  br i1 %264, label %269, label %265

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.ID, ptr %263, i64 0, i32 6
  %267 = load i32, ptr %266, align 4, !tbaa !149
  %268 = add nsw i32 %267, -1
  store i32 %268, ptr %266, align 4, !tbaa !149
  br label %269

269:                                              ; preds = %265, %259
  store ptr null, ptr %262, align 8, !tbaa !133
  br label %270

270:                                              ; preds = %269, %255, %236
  %271 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 6
  store ptr null, ptr %271, align 8, !tbaa !151
  %272 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 29
  store i32 0, ptr %272, align 4, !tbaa !152
  %273 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 6
  %274 = load ptr, ptr %273, align 8, !tbaa !151
  %275 = icmp eq ptr %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %270
  %277 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %277(ptr noundef nonnull %274) #14
  br label %278

278:                                              ; preds = %276, %270
  %279 = getelementptr inbounds i8, ptr %1, i64 16
  %280 = getelementptr inbounds i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1360) %279, ptr noundef nonnull align 8 dereferenceable(1360) %280, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(i64 1376, ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_texspace_copy_from_object(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_to_meshkey(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = tail call i32 %5(ptr noundef %0) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !126
  %11 = icmp eq i32 %10, %6
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.KeyBlock, ptr %2, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %17(ptr noundef nonnull %14) #14
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !133
  %22 = getelementptr inbounds %struct.Key, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !153
  %24 = load i32, ptr %9, align 8, !tbaa !126
  %25 = mul nsw i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = tail call ptr %19(i64 noundef %26, ptr noundef nonnull @.str.5) #14
  store ptr %27, ptr %13, align 8, !tbaa !141
  %28 = getelementptr inbounds %struct.KeyBlock, ptr %2, i64 0, i32 8
  store i32 %6, ptr %28, align 8, !tbaa !142
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = tail call ptr %30(ptr noundef %0, i32 noundef 0) #14
  %32 = load i32, ptr %28, align 8, !tbaa !142
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %18, %34
  %35 = phi ptr [ %47, %34 ], [ %31, %18 ]
  %36 = phi ptr [ %46, %34 ], [ %27, %18 ]
  %37 = phi i32 [ %45, %34 ], [ 0, %18 ]
  %38 = load float, ptr %35, align 4, !tbaa !125
  store float %38, ptr %36, align 4, !tbaa !125
  %39 = getelementptr inbounds float, ptr %35, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !125
  %41 = getelementptr inbounds float, ptr %36, i64 1
  store float %40, ptr %41, align 4, !tbaa !125
  %42 = getelementptr inbounds float, ptr %35, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !125
  %44 = getelementptr inbounds float, ptr %36, i64 2
  store float %43, ptr %44, align 4, !tbaa !125
  %45 = add nuw nsw i32 %37, 1
  %46 = getelementptr inbounds float, ptr %36, i64 3
  %47 = getelementptr inbounds %struct.MVert, ptr %35, i64 1
  %48 = icmp eq i32 %45, %32
  br i1 %48, label %49, label %34, !llvm.loop !154

49:                                               ; preds = %34, %18, %3, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_set_only_copy(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  tail call void @CustomData_set_only_copy(ptr noundef %0, i64 noundef %1) #14
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_set_only_copy(ptr noundef nonnull %3, i64 noundef %1) #14
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_set_only_copy(ptr noundef nonnull %4, i64 noundef %1) #14
  ret void
}

declare void @CustomData_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_add_vert_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_add_edge_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !78
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_add_tessface_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !79
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_add_loop_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_add_poly_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !81
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #14
  ret void
}

declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_set_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @CustomData_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #14
  ret void
}

declare void @CustomData_set(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_set_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_set(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_set_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_set(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_copy_vert_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void @CustomData_copy_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #14
  ret void
}

declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_copy_edge_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 1
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_copy_tessface_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_copy_loop_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_copy_poly_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_free_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @CustomData_free_elem(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  ret void
}

declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_free_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_free_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_free_loop_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_free_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_interp_vert_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call void @CustomData_interp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5) #14
  ret void
}

declare void @CustomData_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_interp_edge_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 1
  tail call void @CustomData_interp(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_interp_tessface_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  tail call void @CustomData_interp(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_swap_tessface_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_swap(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2) #14
  ret void
}

declare void @CustomData_swap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_interp_loop_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  tail call void @CustomData_interp(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_interp_poly_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  tail call void @CustomData_interp(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CDDM_from_mesh(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @CDDM_apply_vert_coords(ptr noundef nonnull %3, ptr noundef nonnull %1) #14
  br label %8

8:                                                ; preds = %5, %7, %2
  %9 = phi ptr [ null, %2 ], [ %3, %7 ], [ %3, %5 ]
  ret ptr %9
}

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_for_modifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @modifierType_getInfo(i32 noundef %9) #14
  %11 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 7
  store ptr %0, ptr %11, align 8, !tbaa !158
  %12 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !159
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %10, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 %18(ptr noundef %2, i32 noundef 0) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %20, %16
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Key, ptr %27, i64 0, i32 6
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %32 = load i16, ptr %31, align 2, !tbaa !134
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, -1
  %35 = tail call ptr @BLI_findlink(ptr noundef nonnull %30, i32 noundef %34) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call void @BKE_key_convert_to_mesh(ptr noundef nonnull %35, ptr noundef %7) #14
  br label %38

38:                                               ; preds = %37, %29, %25, %23
  %39 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %10, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !162
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %43 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %7, ptr noundef nonnull %5) #14
  %44 = load i32, ptr %5, align 4, !tbaa !95
  call void @modwrap_deformVerts(ptr noundef %2, ptr noundef %1, ptr noundef null, ptr noundef %43, i32 noundef %44, i32 noundef 0) #14
  %45 = call ptr @CDDM_from_mesh(ptr noundef %7) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = icmp eq ptr %43, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @CDDM_apply_vert_coords(ptr noundef nonnull %45, ptr noundef nonnull %43) #14
  br label %50

50:                                               ; preds = %42, %47, %49
  %51 = phi ptr [ null, %42 ], [ %45, %49 ], [ %45, %47 ]
  br i1 %24, label %53, label %52

52:                                               ; preds = %50
  call fastcc void @add_shapekey_layers(ptr noundef %51, ptr noundef %7)
  br label %53

53:                                               ; preds = %52, %50
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %54(ptr noundef %43) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %64

55:                                               ; preds = %38
  %56 = tail call ptr @CDDM_from_mesh(ptr noundef %7) #14
  br i1 %24, label %58, label %57

57:                                               ; preds = %55
  tail call fastcc void @add_shapekey_layers(ptr noundef %56, ptr noundef %7)
  br label %58

58:                                               ; preds = %57, %55
  %59 = tail call ptr @modwrap_applyModifier(ptr noundef %2, ptr noundef %1, ptr noundef %56, i32 noundef 0) #14
  %60 = icmp eq ptr %56, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %56, i64 0, i32 95
  %63 = load ptr, ptr %62, align 8, !tbaa !163
  tail call void %63(ptr noundef %56) #14
  br label %64

64:                                               ; preds = %53, %61, %58, %20, %4
  %65 = phi ptr [ null, %4 ], [ null, %20 ], [ %51, %53 ], [ %59, %61 ], [ %59, %58 ]
  ret ptr %65
}

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

declare void @BKE_key_convert_to_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mesh_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @modwrap_deformVerts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_shapekey_layers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = icmp eq ptr %4, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = tail call i32 %12(ptr noundef %0) #14
  %14 = icmp eq i32 %6, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %18 = load i32, ptr %5, align 8, !tbaa !126
  %19 = load ptr, ptr %11, align 8, !tbaa !65
  %20 = tail call i32 %19(ptr noundef %0) #14
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.add_shapekey_layers, ptr noundef nonnull %17, i32 noundef %18, i32 noundef %20) #15
  br label %61

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = icmp eq ptr %24, null
  br i1 %25, label %61, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  br label %29

29:                                               ; preds = %26, %47
  %30 = phi ptr [ %24, %26 ], [ %59, %47 ]
  %31 = phi i32 [ 0, %26 ], [ %58, %47 ]
  %32 = load i32, ptr %5, align 8, !tbaa !126
  %33 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !142
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @stderr, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 11
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.add_shapekey_layers, ptr noundef nonnull %27, i32 noundef %32, ptr noundef nonnull %38, i32 noundef %34) #15
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %41 = tail call ptr %40(i64 noundef %8, ptr noundef nonnull @__func__.add_shapekey_layers) #14
  br label %47

42:                                               ; preds = %29
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %44 = tail call ptr %43(i64 noundef %8, ptr noundef nonnull @__func__.add_shapekey_layers) #14
  %45 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %44, ptr align 1 %46, i64 %8, i1 false)
  br label %47

47:                                               ; preds = %42, %36
  %48 = phi ptr [ %41, %36 ], [ %44, %42 ]
  %49 = load i32, ptr %28, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 11
  %51 = tail call ptr @CustomData_add_layer_named(ptr noundef %0, i32 noundef 28, i32 noundef 0, ptr noundef %48, i32 noundef %49, ptr noundef nonnull %50) #14
  %52 = tail call i32 @CustomData_get_layer_index_n(ptr noundef %0, i32 noundef 28, i32 noundef %31) #14
  %53 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !135
  %55 = load ptr, ptr %0, align 8, !tbaa !137
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds %struct.CustomDataLayer, ptr %55, i64 %56, i32 7
  store i32 %54, ptr %57, align 4, !tbaa !138
  %58 = add nuw nsw i32 %31, 1
  %59 = load ptr, ptr %30, align 8, !tbaa !75
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %29, !llvm.loop !164

61:                                               ; preds = %47, %22, %2, %15
  ret void
}

declare ptr @modwrap_applyModifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @weight_to_rgb(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fadd float %3, 5.000000e-01
  %5 = fcmp ugt float %1, 2.500000e-01
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  store float 0.000000e+00, ptr %0, align 4, !tbaa !125
  %7 = fmul float %4, %1
  %8 = fmul float %7, 4.000000e+00
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !125
  br label %35

10:                                               ; preds = %2
  %11 = fcmp ugt float %1, 5.000000e-01
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  store float 0.000000e+00, ptr %0, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %4, ptr %13, align 4, !tbaa !125
  %14 = fadd float %1, -2.500000e-01
  %15 = fneg float %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 4.000000e+00, float 1.000000e+00)
  %17 = fmul float %4, %16
  br label %35

18:                                               ; preds = %10
  %19 = fcmp ugt float %1, 7.500000e-01
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = fadd float %1, -5.000000e-01
  %22 = fmul float %21, 4.000000e+00
  %23 = fmul float %4, %22
  store float %23, ptr %0, align 4, !tbaa !125
  %24 = getelementptr inbounds float, ptr %0, i64 1
  store float %4, ptr %24, align 4, !tbaa !125
  br label %35

25:                                               ; preds = %18
  %26 = fcmp ugt float %1, 1.000000e+00
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  store float %4, ptr %0, align 4, !tbaa !125
  %28 = fadd float %1, -7.500000e-01
  %29 = fneg float %28
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 4.000000e+00, float 1.000000e+00)
  %31 = fmul float %4, %30
  %32 = getelementptr inbounds float, ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !125
  br label %35

33:                                               ; preds = %25
  store float 1.000000e+00, ptr %0, align 4, !tbaa !125
  %34 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %34, align 4, !tbaa !125
  br label %35

35:                                               ; preds = %12, %27, %33, %20, %6
  %36 = phi float [ %17, %12 ], [ 0.000000e+00, %27 ], [ 1.000000e+00, %33 ], [ 0.000000e+00, %20 ], [ %4, %6 ]
  %37 = getelementptr inbounds float, ptr %0, i64 2
  store float %36, ptr %37, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @vDM_ColorBand_store(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  store ptr %0, ptr @G_dm_wcinfo, align 8, !tbaa !165
  store ptr %1, ptr getelementptr inbounds (%struct.DMWeightColorInfo, ptr @G_dm_wcinfo, i64 0, i32 1), align 8, !tbaa !167
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_update_weight_mcol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !76
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #14
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi ptr [ %13, %12 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = tail call i32 %17(ptr noundef %1) #14
  %19 = icmp eq ptr %15, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  tail call void @BKE_editmesh_color_ensure(ptr noundef nonnull %15, i8 noundef zeroext 1) #14
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %15, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !168
  br label %28

23:                                               ; preds = %14
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %25 = sext i32 %18 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @__func__.DM_update_weight_mcol) #14
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi ptr [ %22, %20 ], [ %27, %23 ]
  %30 = icmp eq ptr %3, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %28
  %32 = icmp eq ptr %5, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %35 = sext i32 %18 to i64
  %36 = shl nsw i64 %35, 2
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @.str.6) #14
  %38 = icmp eq i32 %4, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  %40 = sext i32 %4 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %40, %39 ], [ %43, %41 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds float, ptr %3, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !125
  %46 = getelementptr inbounds i32, ptr %5, i64 %43
  %47 = load i32, ptr %46, align 4, !tbaa !95
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, ptr %37, i64 %48
  store float %45, ptr %49, align 4, !tbaa !125
  %50 = and i64 %43, 4294967295
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %41, !llvm.loop !170

52:                                               ; preds = %41, %33, %31
  %53 = phi ptr [ %3, %31 ], [ %37, %33 ], [ %37, %41 ]
  %54 = icmp sgt i32 %18, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %52, %86
  %56 = phi i32 [ %99, %86 ], [ 0, %52 ]
  %57 = phi ptr [ %100, %86 ], [ %29, %52 ]
  %58 = phi ptr [ %101, %86 ], [ %53, %52 ]
  %59 = load float, ptr %58, align 4, !tbaa !125
  %60 = fmul float %59, 5.000000e-01
  %61 = fadd float %60, 5.000000e-01
  %62 = fcmp ugt float %59, 2.500000e-01
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = fmul float %59, %61
  %65 = fmul float %64, 4.000000e+00
  br label %86

66:                                               ; preds = %55
  %67 = fcmp ugt float %59, 5.000000e-01
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = fadd float %59, -2.500000e-01
  %70 = fneg float %69
  %71 = tail call float @llvm.fmuladd.f32(float %70, float 4.000000e+00, float 1.000000e+00)
  %72 = fmul float %61, %71
  br label %86

73:                                               ; preds = %66
  %74 = fcmp ugt float %59, 7.500000e-01
  br i1 %74, label %79, label %75

75:                                               ; preds = %73
  %76 = fadd float %59, -5.000000e-01
  %77 = fmul float %76, 4.000000e+00
  %78 = fmul float %61, %77
  br label %86

79:                                               ; preds = %73
  %80 = fcmp ugt float %59, 1.000000e+00
  br i1 %80, label %86, label %81

81:                                               ; preds = %79
  %82 = fadd float %59, -7.500000e-01
  %83 = fneg float %82
  %84 = tail call float @llvm.fmuladd.f32(float %83, float 4.000000e+00, float 1.000000e+00)
  %85 = fmul float %61, %84
  br label %86

86:                                               ; preds = %79, %63, %68, %75, %81
  %87 = phi float [ 0.000000e+00, %81 ], [ 0.000000e+00, %75 ], [ %72, %68 ], [ %61, %63 ], [ 1.000000e+00, %79 ]
  %88 = phi float [ %85, %81 ], [ %61, %75 ], [ %61, %68 ], [ %65, %63 ], [ 0.000000e+00, %79 ]
  %89 = phi float [ %61, %81 ], [ %78, %75 ], [ 0.000000e+00, %68 ], [ 0.000000e+00, %63 ], [ 1.000000e+00, %79 ]
  %90 = fmul float %89, 2.550000e+02
  %91 = fptoui float %90 to i8
  store i8 %91, ptr %57, align 1, !tbaa !123
  %92 = fmul float %88, 2.550000e+02
  %93 = fptoui float %92 to i8
  %94 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %93, ptr %94, align 1, !tbaa !123
  %95 = fmul float %87, 2.550000e+02
  %96 = fptoui float %95 to i8
  %97 = getelementptr inbounds i8, ptr %57, i64 2
  store i8 %96, ptr %97, align 1, !tbaa !123
  %98 = getelementptr inbounds i8, ptr %57, i64 3
  store i8 -1, ptr %98, align 1, !tbaa !123
  %99 = add nuw nsw i32 %56, 1
  %100 = getelementptr inbounds [4 x i8], ptr %57, i64 1
  %101 = getelementptr inbounds float, ptr %58, i64 1
  %102 = icmp eq i32 %99, %18
  br i1 %102, label %103, label %55, !llvm.loop !171

103:                                              ; preds = %86, %52
  br i1 %32, label %260, label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %105(ptr noundef %53) #14
  br label %260

106:                                              ; preds = %28
  %107 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 2) #14
  %108 = load ptr, ptr %16, align 8, !tbaa !65
  %109 = tail call i32 %108(ptr noundef %1) #14
  %110 = icmp eq ptr %107, null
  br i1 %110, label %218, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %113 = tail call i32 @BLI_countlist(ptr noundef nonnull %112) #14
  %114 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %115 = load i16, ptr %114, align 2, !tbaa !172
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %116, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !tbaa !95
  %118 = and i32 %2, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %111
  %121 = call ptr @BKE_objdef_selected_get(ptr noundef %0, i32 noundef %113, ptr noundef nonnull %8) #14
  br label %122

122:                                              ; preds = %120, %111
  %123 = phi ptr [ %121, %120 ], [ null, %111 ]
  %124 = icmp eq i32 %109, 0
  br i1 %124, label %213, label %125

125:                                              ; preds = %122
  %126 = and i32 %2, 16
  %127 = icmp ne i32 %126, 0
  %128 = and i32 %2, 2
  %129 = icmp eq i32 %128, 0
  %130 = and i32 %2, 4
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %125, %208
  %133 = phi ptr [ %107, %125 ], [ %211, %208 ]
  %134 = phi ptr [ %29, %125 ], [ %210, %208 ]
  %135 = phi i32 [ %109, %125 ], [ %209, %208 ]
  %136 = load i32, ptr %8, align 4, !tbaa !95
  %137 = icmp slt i32 %136, 2
  %138 = or i1 %119, %137
  br i1 %138, label %178, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.MDeformVert, ptr %133, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !173
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %169, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %133, align 8, !tbaa !175
  br label %145

145:                                              ; preds = %143, %163
  %146 = phi ptr [ %167, %163 ], [ %144, %143 ]
  %147 = phi i32 [ %166, %163 ], [ %141, %143 ]
  %148 = phi i8 [ %165, %163 ], [ 0, %143 ]
  %149 = phi float [ %164, %163 ], [ 0.000000e+00, %143 ]
  %150 = load i32, ptr %146, align 4, !tbaa !176
  %151 = icmp slt i32 %150, %113
  br i1 %151, label %152, label %163

152:                                              ; preds = %145
  %153 = sext i32 %150 to i64
  %154 = getelementptr inbounds i8, ptr %123, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !123
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.MDeformWeight, ptr %146, i64 0, i32 1
  %159 = load float, ptr %158, align 4, !tbaa !178
  %160 = fcmp une float %159, 0.000000e+00
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = fadd float %149, %159
  br label %163

163:                                              ; preds = %161, %157, %152, %145
  %164 = phi float [ %162, %161 ], [ %149, %157 ], [ %149, %152 ], [ %149, %145 ]
  %165 = phi i8 [ 1, %161 ], [ %148, %157 ], [ %148, %152 ], [ %148, %145 ]
  %166 = add i32 %147, -1
  %167 = getelementptr inbounds %struct.MDeformWeight, ptr %146, i64 1
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %169, label %145, !llvm.loop !179

169:                                              ; preds = %163, %139
  %170 = phi float [ 0.000000e+00, %139 ], [ %164, %163 ]
  %171 = phi i8 [ 0, %139 ], [ %165, %163 ]
  %172 = icmp eq i8 %171, 0
  %173 = or i1 %172, %127
  %174 = xor i1 %172, true
  br i1 %173, label %188, label %175

175:                                              ; preds = %169
  %176 = sitofp i32 %136 to float
  %177 = fdiv float %170, %176
  br label %188

178:                                              ; preds = %132
  %179 = call float @defvert_find_weight(ptr noundef nonnull %133, i32 noundef %117) #14
  %180 = fcmp oeq float %179, 0.000000e+00
  br i1 %129, label %183, label %181

181:                                              ; preds = %178
  br i1 %180, label %182, label %188

182:                                              ; preds = %181
  br label %188

183:                                              ; preds = %178
  %184 = select i1 %131, i1 %180, i1 false
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = call zeroext i8 @defvert_is_weight_zero(ptr noundef nonnull %133, i32 noundef %113) #14
  %187 = icmp eq i8 %186, 0
  br label %188

188:                                              ; preds = %169, %185, %183, %182, %181, %175
  %189 = phi float [ %179, %182 ], [ %179, %181 ], [ %179, %185 ], [ %179, %183 ], [ %177, %175 ], [ %170, %169 ]
  %190 = phi i1 [ false, %182 ], [ true, %181 ], [ %187, %185 ], [ true, %183 ], [ true, %175 ], [ %174, %169 ]
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = fcmp olt float %189, 0.000000e+00
  br i1 %192, label %196, label %193

193:                                              ; preds = %191
  %194 = fcmp ogt float %189, 1.000000e+00
  br i1 %194, label %195, label %196

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %195, %193, %191
  %197 = phi float [ 1.000000e+00, %195 ], [ %189, %193 ], [ 0.000000e+00, %191 ]
  call fastcc void @weightpaint_color(ptr noundef %134, ptr noundef nonnull @G_dm_wcinfo, float noundef %197)
  br label %208

198:                                              ; preds = %188
  %199 = load ptr, ptr getelementptr inbounds (%struct.DMWeightColorInfo, ptr @G_dm_wcinfo, i64 0, i32 1), align 8, !tbaa !167
  %200 = load i8, ptr %199, align 1, !tbaa !123
  store i8 %200, ptr %134, align 1, !tbaa !123
  %201 = getelementptr inbounds i8, ptr %199, i64 1
  %202 = load i8, ptr %201, align 1, !tbaa !123
  %203 = getelementptr inbounds i8, ptr %134, i64 1
  store i8 %202, ptr %203, align 1, !tbaa !123
  %204 = getelementptr inbounds i8, ptr %199, i64 2
  %205 = load i8, ptr %204, align 1, !tbaa !123
  %206 = getelementptr inbounds i8, ptr %134, i64 2
  store i8 %205, ptr %206, align 1, !tbaa !123
  %207 = getelementptr inbounds i8, ptr %134, i64 3
  store i8 -1, ptr %207, align 1, !tbaa !123
  br label %208

208:                                              ; preds = %198, %196
  %209 = add i32 %135, -1
  %210 = getelementptr inbounds [4 x i8], ptr %134, i64 1
  %211 = getelementptr inbounds %struct.MDeformVert, ptr %133, i64 1
  %212 = icmp eq i32 %209, 0
  br i1 %212, label %213, label %132, !llvm.loop !180

213:                                              ; preds = %208, %122
  %214 = icmp eq ptr %123, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %213
  %216 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %216(ptr noundef nonnull %123) #14
  br label %217

217:                                              ; preds = %215, %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %260

218:                                              ; preds = %106
  %219 = and i32 %2, 6
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr getelementptr inbounds (%struct.DMWeightColorInfo, ptr @G_dm_wcinfo, i64 0, i32 1), align 8, !tbaa !167
  %223 = load i8, ptr %222, align 1, !tbaa !123
  %224 = getelementptr inbounds i8, ptr %222, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !123
  %226 = getelementptr inbounds i8, ptr %222, i64 2
  %227 = load i8, ptr %226, align 1, !tbaa !123
  br label %248

228:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %229 = load ptr, ptr @G_dm_wcinfo, align 8, !tbaa !165
  %230 = icmp eq ptr %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = call zeroext i8 @do_colorband(ptr noundef nonnull %229, float noundef 0.000000e+00, ptr noundef nonnull %7) #14
  br label %236

233:                                              ; preds = %228
  store float 0.000000e+00, ptr %7, align 16, !tbaa !125
  %234 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %234, align 4, !tbaa !125
  %235 = getelementptr inbounds float, ptr %7, i64 2
  store float 5.000000e-01, ptr %235, align 8, !tbaa !125
  br label %236

236:                                              ; preds = %231, %233
  %237 = load float, ptr %7, align 16, !tbaa !125
  %238 = fmul float %237, 2.550000e+02
  %239 = fptoui float %238 to i8
  %240 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !125
  %242 = fmul float %241, 2.550000e+02
  %243 = fptoui float %242 to i8
  %244 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %245 = load float, ptr %244, align 8, !tbaa !125
  %246 = fmul float %245, 2.550000e+02
  %247 = fptoui float %246 to i8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %248

248:                                              ; preds = %236, %221
  %249 = phi i8 [ %247, %236 ], [ %227, %221 ]
  %250 = phi i8 [ %243, %236 ], [ %225, %221 ]
  %251 = phi i8 [ %239, %236 ], [ %223, %221 ]
  %252 = zext i8 %249 to i32
  %253 = shl nuw nsw i32 %252, 16
  %254 = zext i8 %250 to i32
  %255 = shl nuw nsw i32 %254, 8
  %256 = or disjoint i32 %255, %253
  %257 = zext i8 %251 to i32
  %258 = or disjoint i32 %256, %257
  %259 = or disjoint i32 %258, -16777216
  call void @fill_vn_i(ptr noundef %29, i32 noundef %109, i32 noundef %259) #14
  br label %260

260:                                              ; preds = %248, %217, %103, %104
  %261 = load i32, ptr %9, align 8, !tbaa !76
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %338, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 27
  %265 = load ptr, ptr %264, align 8, !tbaa !73
  %266 = call i32 %265(ptr noundef %1) #14
  %267 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 26
  %268 = load ptr, ptr %267, align 8, !tbaa !71
  %269 = call i32 %268(ptr noundef %1) #14
  %270 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 58
  %271 = load ptr, ptr %270, align 8, !tbaa !54
  %272 = call ptr %271(ptr noundef %1) #14
  %273 = call ptr @CustomData_get_layer(ptr noundef %272, i32 noundef 32) #14
  %274 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 34
  %275 = load ptr, ptr %274, align 8, !tbaa !44
  %276 = call ptr %275(ptr noundef %1) #14
  %277 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 35
  %278 = load ptr, ptr %277, align 8, !tbaa !45
  %279 = call ptr %278(ptr noundef %1) #14
  %280 = icmp eq ptr %273, null
  br i1 %280, label %281, label %288

281:                                              ; preds = %263
  %282 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %283 = sext i32 %269 to i64
  %284 = shl nsw i64 %283, 2
  %285 = call ptr %282(i64 noundef %284, ptr noundef nonnull @__func__.DM_update_weight_mcol) #14
  %286 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  %287 = call ptr @CustomData_add_layer(ptr noundef nonnull %286, i32 noundef 32, i32 noundef 0, ptr noundef %285, i32 noundef %269) #14
  br label %288

288:                                              ; preds = %281, %263
  %289 = phi ptr [ %273, %263 ], [ %285, %281 ]
  %290 = icmp sgt i32 %266, 0
  br i1 %290, label %291, label %333

291:                                              ; preds = %288, %328
  %292 = phi i32 [ %329, %328 ], [ 0, %288 ]
  %293 = phi ptr [ %331, %328 ], [ %279, %288 ]
  %294 = phi i32 [ %330, %328 ], [ 0, %288 ]
  %295 = getelementptr inbounds %struct.MPoly, ptr %293, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !181
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %328

298:                                              ; preds = %291
  %299 = load i32, ptr %293, align 4, !tbaa !96
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.MLoop, ptr %276, i64 %300
  %302 = sext i32 %292 to i64
  br label %303

303:                                              ; preds = %298, %303
  %304 = phi i64 [ %302, %298 ], [ %323, %303 ]
  %305 = phi i32 [ 0, %298 ], [ %321, %303 ]
  %306 = phi ptr [ %301, %298 ], [ %322, %303 ]
  %307 = getelementptr inbounds [4 x i8], ptr %289, i64 %304
  %308 = load i32, ptr %306, align 4, !tbaa !99
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i8], ptr %29, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !123
  store i8 %311, ptr %307, align 1, !tbaa !123
  %312 = getelementptr inbounds i8, ptr %310, i64 1
  %313 = load i8, ptr %312, align 1, !tbaa !123
  %314 = getelementptr inbounds i8, ptr %307, i64 1
  store i8 %313, ptr %314, align 1, !tbaa !123
  %315 = getelementptr inbounds i8, ptr %310, i64 2
  %316 = load i8, ptr %315, align 1, !tbaa !123
  %317 = getelementptr inbounds i8, ptr %307, i64 2
  store i8 %316, ptr %317, align 1, !tbaa !123
  %318 = getelementptr inbounds i8, ptr %310, i64 3
  %319 = load i8, ptr %318, align 1, !tbaa !123
  %320 = getelementptr inbounds i8, ptr %307, i64 3
  store i8 %319, ptr %320, align 1, !tbaa !123
  %321 = add nuw nsw i32 %305, 1
  %322 = getelementptr inbounds %struct.MLoop, ptr %306, i64 1
  %323 = add nsw i64 %304, 1
  %324 = load i32, ptr %295, align 4, !tbaa !181
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %303, label %326, !llvm.loop !182

326:                                              ; preds = %303
  %327 = trunc i64 %323 to i32
  br label %328

328:                                              ; preds = %326, %291
  %329 = phi i32 [ %292, %291 ], [ %327, %326 ]
  %330 = add nuw nsw i32 %294, 1
  %331 = getelementptr inbounds %struct.MPoly, ptr %293, i64 1
  %332 = icmp eq i32 %330, %266
  br i1 %332, label %333, label %291, !llvm.loop !183

333:                                              ; preds = %328, %288
  %334 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %334(ptr noundef %29) #14
  %335 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 16
  %336 = load i32, ptr %335, align 8, !tbaa !84
  %337 = or i32 %336, 1
  store i32 %337, ptr %335, align 8, !tbaa !84
  br label %338

338:                                              ; preds = %260, %333
  ret void
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_editmesh_color_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @editbmesh_get_vertex_cos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !184
  %5 = load i32, ptr %4, align 8, !tbaa !185
  store i32 %5, ptr %1, align 4, !tbaa !95
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %7 = load i32, ptr %4, align 8, !tbaa !185
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 12
  %10 = tail call ptr %6(i64 noundef %9, ptr noundef nonnull @.str.7) #14
  %11 = load ptr, ptr %0, align 8, !tbaa !184
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %12, align 4, !tbaa !187
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !189
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !190
  %15 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !191
  store ptr %16, ptr %3, align 8, !tbaa !123
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #14
  %17 = load ptr, ptr %14, align 8, !tbaa !190
  %18 = call ptr %17(ptr noundef nonnull %3) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %2, %20
  %21 = phi i64 [ %34, %20 ], [ 0, %2 ]
  %22 = phi ptr [ %33, %20 ], [ %18, %2 ]
  %23 = getelementptr inbounds [3 x float], ptr %10, i64 %21
  %24 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !125
  store float %25, ptr %23, align 4, !tbaa !125
  %26 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !125
  %28 = getelementptr inbounds float, ptr %23, i64 1
  store float %27, ptr %28, align 4, !tbaa !125
  %29 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !125
  %31 = getelementptr inbounds float, ptr %23, i64 2
  store float %30, ptr %31, align 4, !tbaa !125
  %32 = load ptr, ptr %14, align 8, !tbaa !190
  %33 = call ptr %32(ptr noundef nonnull %3) #14
  %34 = add nuw i64 %21, 1
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %20, !llvm.loop !192

36:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !156
  %6 = tail call ptr @modifierType_getInfo(i32 noundef %5) #14
  %7 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef %1, i32 noundef 5) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %6, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !193
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne ptr %2, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %1, ptr noundef nonnull @.str.8) #14
  br label %17

17:                                               ; preds = %9, %3, %16
  %18 = phi i8 [ 0, %16 ], [ 0, %3 ], [ 1, %9 ]
  ret i8 %18
}

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @makeDerivedMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 122
  %15 = load i64, ptr %14, align 8, !tbaa !215
  %16 = icmp eq ptr %13, %1
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %1) #14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !216
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %17
  %26 = or i64 %15, 96
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i64 [ %26, %25 ], [ %15, %20 ]
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %30 = load i32, ptr %29, align 8, !tbaa !216
  %31 = shl i32 %30, 4
  %32 = and i32 %31, 64
  %33 = zext nneg i32 %32 to i64
  %34 = or i64 %28, %33
  %35 = shl i32 %30, 17
  %36 = and i32 %35, 1048576
  %37 = zext nneg i32 %36 to i64
  %38 = or i64 %34, %37
  %39 = and i32 %30, 1
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 36
  %42 = or i64 %38, %41
  br label %43

43:                                               ; preds = %12, %27
  %44 = phi i64 [ %15, %12 ], [ %42, %27 ]
  %45 = or i64 %44, %3
  %46 = icmp eq ptr %2, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %45)
  br label %49

48:                                               ; preds = %43
  tail call fastcc void @mesh_build_data(ptr noundef %0, ptr noundef %1, i64 noundef %45, i32 noundef %4)
  br label %49

49:                                               ; preds = %48, %47
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.VirtualModifierData, align 8
  tail call void @BKE_object_free_derived_caches(ptr noundef %1) #14
  tail call void @BKE_object_sculpt_modifiers_changed(ptr noundef %1) #14
  tail call void @BKE_editmesh_free_derivedmesh(ptr noundef %2) #14
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 6
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 5
  %12 = tail call i32 @modifiers_getCageIndex(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1) #14
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !217
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 61
  %16 = load i8, ptr %15, align 1, !tbaa !218
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 62
  %20 = load i8, ptr %19, align 2, !tbaa !225
  %21 = zext nneg i8 %20 to i32
  %22 = shl nuw i32 1, %21
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i32 [ %22, %18 ], [ 8, %4 ]
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 60
  %26 = load i8, ptr %25, align 4, !tbaa !226
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 0, i32 16
  %29 = or i32 %28, %24
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !155
  %32 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 36
  %33 = load i32, ptr %32, align 8, !tbaa !227
  %34 = trunc i32 %33 to i8
  %35 = lshr i8 %34, 4
  %36 = and i8 %35, 1
  %37 = and i32 %33, 131072
  %38 = icmp ne i32 %37, 0
  %39 = icmp eq i8 %36, 0
  %40 = select i1 %38, i1 %39, i1 false
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %9) #14
  %41 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 38
  %42 = load i16, ptr %41, align 2, !tbaa !228
  %43 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 39
  %44 = load float, ptr %43, align 8, !tbaa !229
  tail call void @modifiers_clearErrors(ptr noundef %1) #14
  %45 = icmp eq i32 %12, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %23
  %47 = tail call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef %1, ptr noundef null) #14
  store ptr %47, ptr %10, align 8, !tbaa !75
  br label %48

48:                                               ; preds = %46, %23
  %49 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %9) #14
  br i1 %39, label %54, label %50

50:                                               ; preds = %48
  %51 = call ptr @modifiers_getLastPreview(ptr noundef %0, ptr noundef %49, i32 noundef 5) #14
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, i64 0, i64 4
  br label %54

54:                                               ; preds = %50, %48
  %55 = phi i64 [ 0, %48 ], [ %53, %50 ]
  %56 = phi ptr [ null, %48 ], [ %51, %50 ]
  %57 = call ptr @modifiers_calcDataMasks(ptr noundef %0, ptr noundef %1, ptr noundef %49, i64 noundef %3, i32 noundef 5, ptr noundef %56, i64 noundef %55) #14
  %58 = icmp eq ptr %49, null
  br i1 %58, label %367, label %59

59:                                               ; preds = %54
  %60 = icmp eq ptr %2, null
  %61 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %62 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %63 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %64 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %65 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %66 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %67 = icmp ne i8 %36, 0
  br label %68

68:                                               ; preds = %59, %358
  %69 = phi ptr [ %49, %59 ], [ %364, %358 ]
  %70 = phi ptr [ null, %59 ], [ %362, %358 ]
  %71 = phi ptr [ null, %59 ], [ %361, %358 ]
  %72 = phi ptr [ null, %59 ], [ %360, %358 ]
  %73 = phi i32 [ 0, %59 ], [ %363, %358 ]
  %74 = phi ptr [ %57, %59 ], [ %365, %358 ]
  %75 = phi i32 [ 0, %59 ], [ %359, %358 ]
  %76 = getelementptr inbounds %struct.ModifierData, ptr %69, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !156
  %78 = call ptr @modifierType_getInfo(i32 noundef %77) #14
  %79 = getelementptr inbounds %struct.ModifierData, ptr %69, i64 0, i32 7
  store ptr %0, ptr %79, align 8, !tbaa !158
  %80 = load i32, ptr %76, align 8, !tbaa !156
  %81 = call ptr @modifierType_getInfo(i32 noundef %80) #14
  %82 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %69, i32 noundef 5) #14
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %358, label %84

84:                                               ; preds = %68
  %85 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %81, i64 0, i32 4
  %86 = load i32, ptr %85, align 8, !tbaa !193
  %87 = and i32 %86, 32
  %88 = icmp ne i32 %87, 0
  %89 = icmp ne ptr %71, null
  %90 = and i1 %89, %88
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %69, ptr noundef nonnull @.str.8) #14
  br label %358

92:                                               ; preds = %84
  %93 = icmp eq ptr %71, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %78, i64 0, i32 13
  %96 = load ptr, ptr %95, align 8, !tbaa !230
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = call i64 %96(ptr noundef %1, ptr noundef nonnull %69) #14
  %100 = and i64 %99, 16384
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %71, ptr noundef %72, i32 noundef 14)
  br label %103

103:                                              ; preds = %102, %98, %94, %92
  %104 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %78, i64 0, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !162
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %158

107:                                              ; preds = %103
  %108 = icmp eq ptr %70, null
  br i1 %108, label %109, label %150

109:                                              ; preds = %107
  br i1 %93, label %120, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.DerivedMesh, ptr %71, i64 0, i32 23
  %112 = load ptr, ptr %111, align 8, !tbaa !65
  %113 = call i32 %112(ptr noundef nonnull %71) #14
  %114 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %115 = sext i32 %113 to i64
  %116 = mul nsw i64 %115, 12
  %117 = call ptr %114(i64 noundef %116, ptr noundef nonnull @.str.26) #14
  %118 = getelementptr inbounds %struct.DerivedMesh, ptr %71, i64 0, i32 77
  %119 = load ptr, ptr %118, align 8, !tbaa !231
  call void %119(ptr noundef nonnull %71, ptr noundef %117) #14
  br label %150

120:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  %121 = load ptr, ptr %2, align 8, !tbaa !184
  %122 = load i32, ptr %121, align 8, !tbaa !185
  %123 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %124 = sext i32 %122 to i64
  %125 = mul nsw i64 %124, 12
  %126 = call ptr %123(i64 noundef %125, ptr noundef nonnull @.str.7) #14
  %127 = load ptr, ptr %2, align 8, !tbaa !184
  store i8 1, ptr %64, align 4, !tbaa !187
  store ptr @bmiter__elem_of_mesh_begin, ptr %65, align 8, !tbaa !189
  store ptr @bmiter__elem_of_mesh_step, ptr %66, align 8, !tbaa !190
  %128 = getelementptr inbounds %struct.BMesh, ptr %127, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !191
  store ptr %129, ptr %8, align 8, !tbaa !123
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #14
  %130 = load ptr, ptr %66, align 8, !tbaa !190
  %131 = call ptr %130(ptr noundef nonnull %8) #14
  %132 = icmp eq ptr %131, null
  br i1 %132, label %149, label %133

133:                                              ; preds = %120, %133
  %134 = phi i64 [ %147, %133 ], [ 0, %120 ]
  %135 = phi ptr [ %146, %133 ], [ %131, %120 ]
  %136 = getelementptr inbounds [3 x float], ptr %126, i64 %134
  %137 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2
  %138 = load float, ptr %137, align 4, !tbaa !125
  store float %138, ptr %136, align 4, !tbaa !125
  %139 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !125
  %141 = getelementptr inbounds float, ptr %136, i64 1
  store float %140, ptr %141, align 4, !tbaa !125
  %142 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !125
  %144 = getelementptr inbounds float, ptr %136, i64 2
  store float %143, ptr %144, align 4, !tbaa !125
  %145 = load ptr, ptr %66, align 8, !tbaa !190
  %146 = call ptr %145(ptr noundef nonnull %8) #14
  %147 = add nuw i64 %134, 1
  %148 = icmp eq ptr %146, null
  br i1 %148, label %149, label %133, !llvm.loop !192

149:                                              ; preds = %133, %120
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  br label %150

150:                                              ; preds = %149, %110, %107
  %151 = phi i32 [ %122, %149 ], [ %113, %110 ], [ %75, %107 ]
  %152 = phi ptr [ %126, %149 ], [ %117, %110 ], [ %70, %107 ]
  %153 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %78, i64 0, i32 8
  %154 = load ptr, ptr %153, align 8, !tbaa !232
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %150
  call void @modwrap_deformVertsEM(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %2, ptr noundef %71, ptr noundef %152, i32 noundef %151) #14
  br label %333

157:                                              ; preds = %150
  call void @modwrap_deformVerts(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %71, ptr noundef %152, i32 noundef %151, i32 noundef 0) #14
  br label %333

158:                                              ; preds = %103
  br i1 %93, label %174, label %159

159:                                              ; preds = %158
  %160 = icmp eq ptr %70, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %159
  %162 = call ptr @CDDM_copy(ptr noundef nonnull %71) #14
  %163 = load ptr, ptr %10, align 8, !tbaa !75
  %164 = icmp eq ptr %71, %163
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.DerivedMesh, ptr %71, i64 0, i32 95
  %167 = load ptr, ptr %166, align 8, !tbaa !163
  call void %167(ptr noundef nonnull %71) #14
  br label %168

168:                                              ; preds = %165, %161
  call void @CDDM_apply_vert_coords(ptr noundef %162, ptr noundef nonnull %70) #14
  br label %180

169:                                              ; preds = %159
  %170 = load ptr, ptr %10, align 8, !tbaa !75
  %171 = icmp eq ptr %71, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = call ptr @CDDM_copy(ptr noundef nonnull %71) #14
  br label %180

174:                                              ; preds = %158
  %175 = call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %176 = icmp eq ptr %70, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  call void @CDDM_apply_vert_coords(ptr noundef %175, ptr noundef nonnull %70) #14
  br label %178

178:                                              ; preds = %177, %174
  br i1 %39, label %180, label %179

179:                                              ; preds = %178
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %175, i32 noundef %29, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %180

180:                                              ; preds = %179, %178, %172, %169, %168
  %181 = phi ptr [ %162, %168 ], [ %173, %172 ], [ %71, %169 ], [ %175, %179 ], [ %175, %178 ]
  %182 = getelementptr inbounds %struct.CDMaskLink, ptr %74, i64 0, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !233
  %184 = and i64 %183, 16384
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %256, label %186

186:                                              ; preds = %180
  %187 = icmp eq ptr %72, null
  br i1 %187, label %188, label %233

188:                                              ; preds = %186
  br i1 %60, label %191, label %189

189:                                              ; preds = %188
  %190 = call ptr @CDDM_from_editbmesh(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %194

191:                                              ; preds = %188
  %192 = load ptr, ptr %30, align 8, !tbaa !155
  %193 = call ptr @CDDM_from_mesh(ptr noundef %192) #14
  br label %194

194:                                              ; preds = %191, %189
  %195 = phi ptr [ %190, %189 ], [ %193, %191 ]
  br i1 %60, label %226, label %196

196:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %197 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %198 = load ptr, ptr %2, align 8, !tbaa !184
  %199 = load i32, ptr %198, align 8, !tbaa !185
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %200, 12
  %202 = call ptr %197(i64 noundef %201, ptr noundef nonnull @.str.28) #14
  %203 = load ptr, ptr %2, align 8, !tbaa !184
  store i8 1, ptr %61, align 4, !tbaa !187
  store ptr @bmiter__elem_of_mesh_begin, ptr %62, align 8, !tbaa !189
  store ptr @bmiter__elem_of_mesh_step, ptr %63, align 8, !tbaa !190
  %204 = getelementptr inbounds %struct.BMesh, ptr %203, i64 0, i32 9
  %205 = load ptr, ptr %204, align 8, !tbaa !191
  store ptr %205, ptr %5, align 8, !tbaa !123
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #14
  %206 = load ptr, ptr %63, align 8, !tbaa !190
  %207 = call ptr %206(ptr noundef nonnull %5) #14
  %208 = icmp eq ptr %207, null
  br i1 %208, label %225, label %209

209:                                              ; preds = %196, %209
  %210 = phi i64 [ %223, %209 ], [ 0, %196 ]
  %211 = phi ptr [ %222, %209 ], [ %207, %196 ]
  %212 = getelementptr inbounds [3 x float], ptr %202, i64 %210
  %213 = getelementptr inbounds %struct.BMVert, ptr %211, i64 0, i32 2
  %214 = load float, ptr %213, align 4, !tbaa !125
  store float %214, ptr %212, align 4, !tbaa !125
  %215 = getelementptr inbounds %struct.BMVert, ptr %211, i64 0, i32 2, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !125
  %217 = getelementptr inbounds float, ptr %212, i64 1
  store float %216, ptr %217, align 4, !tbaa !125
  %218 = getelementptr inbounds %struct.BMVert, ptr %211, i64 0, i32 2, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !125
  %220 = getelementptr inbounds float, ptr %212, i64 2
  store float %219, ptr %220, align 4, !tbaa !125
  %221 = load ptr, ptr %63, align 8, !tbaa !190
  %222 = call ptr %221(ptr noundef nonnull %5) #14
  %223 = add nuw i64 %210, 1
  %224 = icmp eq ptr %222, null
  br i1 %224, label %225, label %209, !llvm.loop !235

225:                                              ; preds = %209, %196
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %228

226:                                              ; preds = %194
  %227 = call ptr @BKE_mesh_orco_verts_get(ptr noundef %1) #14
  br label %228

228:                                              ; preds = %225, %226
  %229 = phi ptr [ %202, %225 ], [ %227, %226 ]
  %230 = icmp eq ptr %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  call void @CDDM_apply_vert_coords(ptr noundef %195, ptr noundef nonnull %229) #14
  %232 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %232(ptr noundef nonnull %229) #14
  br label %233

233:                                              ; preds = %231, %228, %186
  %234 = phi ptr [ %72, %186 ], [ %195, %228 ], [ %195, %231 ]
  %235 = and i64 %183, -16513
  %236 = or disjoint i64 %235, 128
  call void @CustomData_set_only_copy(ptr noundef %234, i64 noundef %236) #14
  %237 = getelementptr inbounds %struct.DerivedMesh, ptr %234, i64 0, i32 1
  call void @CustomData_set_only_copy(ptr noundef nonnull %237, i64 noundef %236) #14
  %238 = getelementptr inbounds %struct.DerivedMesh, ptr %234, i64 0, i32 2
  call void @CustomData_set_only_copy(ptr noundef nonnull %238, i64 noundef %236) #14
  %239 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %78, i64 0, i32 11
  %240 = load ptr, ptr %239, align 8, !tbaa !236
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %233
  %243 = call ptr @modwrap_applyModifierEM(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %2, ptr noundef %234, i32 noundef 4) #14
  br label %246

244:                                              ; preds = %233
  %245 = call ptr @modwrap_applyModifier(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %234, i32 noundef 4) #14
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi ptr [ %243, %242 ], [ %245, %244 ]
  %248 = icmp eq ptr %247, null
  br i1 %248, label %256, label %249

249:                                              ; preds = %246
  %250 = icmp eq ptr %234, null
  %251 = icmp eq ptr %234, %247
  %252 = or i1 %250, %251
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.DerivedMesh, ptr %234, i64 0, i32 95
  %255 = load ptr, ptr %254, align 8, !tbaa !163
  call void %255(ptr noundef nonnull %234) #14
  br label %256

256:                                              ; preds = %253, %249, %246, %180
  %257 = phi ptr [ %234, %246 ], [ %72, %180 ], [ %247, %253 ], [ %247, %249 ]
  %258 = load i64, ptr %182, align 8, !tbaa !233
  %259 = or i64 %258, 128
  call void @CustomData_set_only_copy(ptr noundef %181, i64 noundef %259) #14
  %260 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 1
  call void @CustomData_set_only_copy(ptr noundef nonnull %260, i64 noundef %259) #14
  %261 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 2
  call void @CustomData_set_only_copy(ptr noundef nonnull %261, i64 noundef %259) #14
  %262 = and i64 %258, 2147483648
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %311, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 3
  %266 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %265, i32 noundef 31) #14
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %311

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 8
  %270 = load i32, ptr %269, align 4, !tbaa !80
  %271 = call ptr @CustomData_add_layer(ptr noundef nonnull %265, i32 noundef 31, i32 noundef 1, ptr noundef null, i32 noundef %270) #14
  %272 = call ptr @CustomData_get_layer(ptr noundef nonnull %265, i32 noundef 31) #14
  %273 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 27
  %274 = load ptr, ptr %273, align 8, !tbaa !73
  %275 = call i32 %274(ptr noundef %181) #14
  %276 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 35
  %277 = load ptr, ptr %276, align 8, !tbaa !45
  %278 = call ptr %277(ptr noundef %181) #14
  %279 = icmp sgt i32 %275, 0
  br i1 %279, label %280, label %307

280:                                              ; preds = %268, %303
  %281 = phi i32 [ %304, %303 ], [ 0, %268 ]
  %282 = phi ptr [ %305, %303 ], [ %278, %268 ]
  %283 = getelementptr inbounds %struct.MPoly, ptr %282, i64 0, i32 1
  %284 = load i32, ptr %283, align 4, !tbaa !181
  %285 = add i32 %284, -3
  %286 = icmp ult i32 %285, 2
  br i1 %286, label %287, label %303

287:                                              ; preds = %280
  %288 = load i32, ptr %282, align 4, !tbaa !96
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %272, i64 %289
  %291 = zext nneg i32 %284 to i64
  br label %292

292:                                              ; preds = %292, %287
  %293 = phi i64 [ 0, %287 ], [ %300, %292 ]
  %294 = phi ptr [ %290, %287 ], [ %301, %292 ]
  %295 = getelementptr inbounds [4 x [2 x float]], ptr @DM_init_origspace.default_osf, i64 0, i64 %293
  %296 = load float, ptr %295, align 8, !tbaa !125
  store float %296, ptr %294, align 4, !tbaa !125
  %297 = getelementptr inbounds float, ptr %295, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !125
  %299 = getelementptr inbounds float, ptr %294, i64 1
  store float %298, ptr %299, align 4, !tbaa !125
  %300 = add nuw nsw i64 %293, 1
  %301 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %294, i64 1
  %302 = icmp eq i64 %300, %291
  br i1 %302, label %303, label %292, !llvm.loop !237

303:                                              ; preds = %292, %280
  %304 = add nuw nsw i32 %281, 1
  %305 = getelementptr inbounds %struct.MPoly, ptr %282, i64 1
  %306 = icmp eq i32 %304, %275
  br i1 %306, label %307, label %280, !llvm.loop !238

307:                                              ; preds = %303, %268
  %308 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 16
  %309 = load i32, ptr %308, align 8, !tbaa !84
  %310 = or i32 %309, 1
  store i32 %310, ptr %308, align 8, !tbaa !84
  br label %311

311:                                              ; preds = %307, %264, %256
  %312 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %78, i64 0, i32 11
  %313 = load ptr, ptr %312, align 8, !tbaa !236
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315

315:                                              ; preds = %311
  %316 = call ptr @modwrap_applyModifierEM(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %2, ptr noundef %181, i32 noundef 2) #14
  br label %319

317:                                              ; preds = %311
  %318 = call ptr @modwrap_applyModifier(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %181, i32 noundef 2) #14
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi ptr [ %316, %315 ], [ %318, %317 ]
  %321 = icmp eq ptr %320, null
  br i1 %321, label %333, label %322

322:                                              ; preds = %319
  %323 = icmp eq ptr %181, null
  %324 = icmp eq ptr %181, %320
  %325 = or i1 %323, %324
  br i1 %325, label %329, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 95
  %328 = load ptr, ptr %327, align 8, !tbaa !163
  call void %328(ptr noundef nonnull %181) #14
  br label %329

329:                                              ; preds = %326, %322
  %330 = icmp eq ptr %70, null
  br i1 %330, label %333, label %331

331:                                              ; preds = %329
  %332 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %332(ptr noundef nonnull %70) #14
  br label %333

333:                                              ; preds = %331, %329, %319, %157, %156
  %334 = phi i32 [ %151, %157 ], [ %151, %156 ], [ %75, %319 ], [ %75, %329 ], [ %75, %331 ]
  %335 = phi ptr [ %72, %157 ], [ %72, %156 ], [ %257, %319 ], [ %257, %329 ], [ %257, %331 ]
  %336 = phi ptr [ %71, %157 ], [ %71, %156 ], [ %181, %319 ], [ %320, %329 ], [ %320, %331 ]
  %337 = phi ptr [ %152, %157 ], [ %152, %156 ], [ %70, %319 ], [ null, %329 ], [ null, %331 ]
  %338 = icmp eq ptr %69, %56
  %339 = select i1 %338, i1 %67, i1 false
  br i1 %339, label %340, label %341

340:                                              ; preds = %333
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %336, i32 noundef %29, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %341

341:                                              ; preds = %340, %333
  %342 = icmp eq i32 %73, %12
  br i1 %342, label %343, label %358

343:                                              ; preds = %341
  %344 = icmp ne ptr %336, null
  %345 = icmp ne ptr %337, null
  %346 = select i1 %344, i1 %345, i1 false
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = call ptr @CDDM_copy(ptr noundef nonnull %336) #14
  store ptr %348, ptr %10, align 8, !tbaa !75
  call void @CDDM_apply_vert_coords(ptr noundef %348, ptr noundef nonnull %337) #14
  br label %358

349:                                              ; preds = %343
  br i1 %344, label %350, label %351

350:                                              ; preds = %349
  store ptr %336, ptr %10, align 8, !tbaa !75
  br label %358

351:                                              ; preds = %349
  br i1 %345, label %352, label %355

352:                                              ; preds = %351
  %353 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !75
  %354 = call ptr %353(ptr noundef nonnull %337) #14
  br label %355

355:                                              ; preds = %352, %351
  %356 = phi ptr [ %354, %352 ], [ null, %351 ]
  %357 = call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef %1, ptr noundef %356) #14
  store ptr %357, ptr %10, align 8, !tbaa !75
  br label %358

358:                                              ; preds = %91, %68, %355, %350, %347, %341
  %359 = phi i32 [ %334, %347 ], [ %334, %350 ], [ %334, %355 ], [ %334, %341 ], [ %75, %68 ], [ %75, %91 ]
  %360 = phi ptr [ %335, %347 ], [ %335, %350 ], [ %335, %355 ], [ %335, %341 ], [ %72, %68 ], [ %72, %91 ]
  %361 = phi ptr [ %336, %347 ], [ %336, %350 ], [ %336, %355 ], [ %336, %341 ], [ %71, %68 ], [ %71, %91 ]
  %362 = phi ptr [ %337, %347 ], [ %337, %350 ], [ %337, %355 ], [ %337, %341 ], [ %70, %68 ], [ %70, %91 ]
  %363 = add nuw nsw i32 %73, 1
  %364 = load ptr, ptr %69, align 8, !tbaa !239
  %365 = load ptr, ptr %74, align 8, !tbaa !240
  %366 = icmp eq ptr %364, null
  br i1 %366, label %367, label %68, !llvm.loop !241

367:                                              ; preds = %358, %54
  %368 = phi ptr [ null, %54 ], [ %360, %358 ]
  %369 = phi ptr [ null, %54 ], [ %361, %358 ]
  %370 = phi ptr [ null, %54 ], [ %362, %358 ]
  call void @BLI_linklist_free(ptr noundef %57, ptr noundef null) #14
  %371 = icmp ne ptr %369, null
  %372 = icmp ne ptr %370, null
  %373 = select i1 %371, i1 %372, i1 false
  br i1 %373, label %374, label %383

374:                                              ; preds = %367
  %375 = call ptr @CDDM_copy(ptr noundef nonnull %369) #14
  store ptr %375, ptr %11, align 8, !tbaa !75
  %376 = load ptr, ptr %10, align 8, !tbaa !75
  %377 = icmp eq ptr %369, %376
  br i1 %377, label %381, label %378

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.DerivedMesh, ptr %369, i64 0, i32 95
  %380 = load ptr, ptr %379, align 8, !tbaa !163
  call void %380(ptr noundef nonnull %369) #14
  br label %381

381:                                              ; preds = %378, %374
  %382 = load ptr, ptr %11, align 8, !tbaa !75
  call void @CDDM_apply_vert_coords(ptr noundef %382, ptr noundef nonnull %370) #14
  br label %407

383:                                              ; preds = %367
  br i1 %371, label %384, label %385

384:                                              ; preds = %383
  store ptr %369, ptr %11, align 8, !tbaa !75
  br label %407

385:                                              ; preds = %383
  %386 = icmp eq ptr %370, null
  br i1 %386, label %387, label %398

387:                                              ; preds = %385
  %388 = load ptr, ptr %10, align 8, !tbaa !75
  %389 = icmp eq ptr %388, null
  br i1 %389, label %398, label %390

390:                                              ; preds = %387
  store ptr %388, ptr %11, align 8, !tbaa !75
  br i1 %39, label %392, label %391

391:                                              ; preds = %390
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef nonnull %388, i32 noundef %29, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %392

392:                                              ; preds = %391, %390
  br i1 %40, label %393, label %407

393:                                              ; preds = %392
  %394 = load ptr, ptr %11, align 8, !tbaa !75
  %395 = call ptr @BKE_editmesh_from_object(ptr noundef %1) #14
  %396 = load ptr, ptr %13, align 8, !tbaa !217
  %397 = getelementptr inbounds %struct.ToolSettings, ptr %396, i64 0, i32 74
  call void @BKE_editmesh_statvis_calc(ptr noundef %395, ptr noundef %394, ptr noundef nonnull %397) #14
  br label %407

398:                                              ; preds = %387, %385
  %399 = call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef %1, ptr noundef %370) #14
  store ptr %399, ptr %11, align 8, !tbaa !75
  br i1 %39, label %401, label %400

400:                                              ; preds = %398
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %399, i32 noundef %29, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %401

401:                                              ; preds = %400, %398
  br i1 %40, label %402, label %407

402:                                              ; preds = %401
  %403 = load ptr, ptr %11, align 8, !tbaa !75
  %404 = call ptr @BKE_editmesh_from_object(ptr noundef %1) #14
  %405 = load ptr, ptr %13, align 8, !tbaa !217
  %406 = getelementptr inbounds %struct.ToolSettings, ptr %405, i64 0, i32 74
  call void @BKE_editmesh_statvis_calc(ptr noundef %404, ptr noundef %403, ptr noundef nonnull %406) #14
  br label %407

407:                                              ; preds = %402, %401, %393, %392, %384, %381
  %408 = phi ptr [ %370, %381 ], [ %370, %384 ], [ null, %393 ], [ null, %392 ], [ null, %402 ], [ null, %401 ]
  %409 = and i16 %42, 32
  %410 = icmp eq i16 %409, 0
  br i1 %410, label %429, label %411

411:                                              ; preds = %407
  %412 = load ptr, ptr %11, align 8, !tbaa !75
  %413 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 21
  %414 = load ptr, ptr %413, align 8, !tbaa !242
  call void %414(ptr noundef %412, float noundef %44) #14
  %415 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 16
  %416 = load i32, ptr %415, align 8, !tbaa !84
  %417 = or i32 %416, 1
  store i32 %417, ptr %415, align 8, !tbaa !84
  %418 = load ptr, ptr %10, align 8, !tbaa !75
  %419 = icmp eq ptr %418, null
  br i1 %419, label %429, label %420

420:                                              ; preds = %411
  %421 = load ptr, ptr %11, align 8, !tbaa !75
  %422 = icmp eq ptr %418, %421
  br i1 %422, label %429, label %423

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.DerivedMesh, ptr %418, i64 0, i32 21
  %425 = load ptr, ptr %424, align 8, !tbaa !242
  call void %425(ptr noundef nonnull %418, float noundef %44) #14
  %426 = getelementptr inbounds %struct.DerivedMesh, ptr %418, i64 0, i32 16
  %427 = load i32, ptr %426, align 8, !tbaa !84
  %428 = or i32 %427, 1
  store i32 %428, ptr %426, align 8, !tbaa !84
  br label %429

429:                                              ; preds = %423, %420, %411, %407
  %430 = load ptr, ptr %11, align 8, !tbaa !75
  %431 = getelementptr inbounds %struct.DerivedMesh, ptr %430, i64 0, i32 14
  %432 = load i32, ptr %431, align 8, !tbaa !76
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %463, label %434

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.DerivedMesh, ptr %430, i64 0, i32 25
  %436 = load ptr, ptr %435, align 8, !tbaa !69
  %437 = call i32 %436(ptr noundef %430) #14
  %438 = getelementptr inbounds %struct.DerivedMesh, ptr %430, i64 0, i32 27
  %439 = load ptr, ptr %438, align 8, !tbaa !73
  %440 = call i32 %439(ptr noundef %430) #14
  %441 = icmp eq i32 %437, 0
  %442 = icmp ne i32 %440, 0
  %443 = select i1 %441, i1 %442, i1 false
  br i1 %443, label %444, label %453

444:                                              ; preds = %434
  %445 = getelementptr inbounds %struct.DerivedMesh, ptr %430, i64 0, i32 22
  %446 = load ptr, ptr %445, align 8, !tbaa !91
  call void %446(ptr noundef %430) #14
  %447 = load ptr, ptr %435, align 8, !tbaa !69
  %448 = call i32 %447(ptr noundef %430) #14
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %459

450:                                              ; preds = %444
  %451 = load i32, ptr %431, align 8, !tbaa !76
  %452 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.DM_ensure_tessface, i32 noundef %440, i32 noundef %451)
  br label %459

453:                                              ; preds = %434
  %454 = getelementptr inbounds %struct.DerivedMesh, ptr %430, i64 0, i32 16
  %455 = load i32, ptr %454, align 8, !tbaa !84
  %456 = and i32 %455, 1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %459, label %458

458:                                              ; preds = %453
  call void @DM_update_tessface_data(ptr noundef %430)
  br label %459

459:                                              ; preds = %444, %450, %453, %458
  %460 = getelementptr inbounds %struct.DerivedMesh, ptr %430, i64 0, i32 16
  %461 = load i32, ptr %460, align 8, !tbaa !84
  %462 = and i32 %461, -2
  store i32 %462, ptr %460, align 8, !tbaa !84
  br label %463

463:                                              ; preds = %459, %429
  %464 = load ptr, ptr %10, align 8, !tbaa !75
  %465 = icmp eq ptr %464, null
  br i1 %465, label %502, label %466

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct.DerivedMesh, ptr %464, i64 0, i32 14
  %468 = load i32, ptr %467, align 8, !tbaa !76
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %502, label %470

470:                                              ; preds = %466
  %471 = load ptr, ptr %11, align 8, !tbaa !75
  %472 = icmp eq ptr %464, %471
  br i1 %472, label %502, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct.DerivedMesh, ptr %464, i64 0, i32 25
  %475 = load ptr, ptr %474, align 8, !tbaa !69
  %476 = call i32 %475(ptr noundef nonnull %464) #14
  %477 = getelementptr inbounds %struct.DerivedMesh, ptr %464, i64 0, i32 27
  %478 = load ptr, ptr %477, align 8, !tbaa !73
  %479 = call i32 %478(ptr noundef nonnull %464) #14
  %480 = icmp eq i32 %476, 0
  %481 = icmp ne i32 %479, 0
  %482 = select i1 %480, i1 %481, i1 false
  br i1 %482, label %483, label %492

483:                                              ; preds = %473
  %484 = getelementptr inbounds %struct.DerivedMesh, ptr %464, i64 0, i32 22
  %485 = load ptr, ptr %484, align 8, !tbaa !91
  call void %485(ptr noundef nonnull %464) #14
  %486 = load ptr, ptr %474, align 8, !tbaa !69
  %487 = call i32 %486(ptr noundef nonnull %464) #14
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %498

489:                                              ; preds = %483
  %490 = load i32, ptr %467, align 8, !tbaa !76
  %491 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.DM_ensure_tessface, i32 noundef %479, i32 noundef %490)
  br label %498

492:                                              ; preds = %473
  %493 = getelementptr inbounds %struct.DerivedMesh, ptr %464, i64 0, i32 16
  %494 = load i32, ptr %493, align 8, !tbaa !84
  %495 = and i32 %494, 1
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %492
  call void @DM_update_tessface_data(ptr noundef nonnull %464)
  br label %498

498:                                              ; preds = %483, %489, %492, %497
  %499 = getelementptr inbounds %struct.DerivedMesh, ptr %464, i64 0, i32 16
  %500 = load i32, ptr %499, align 8, !tbaa !84
  %501 = and i32 %500, -2
  store i32 %501, ptr %499, align 8, !tbaa !84
  br label %502

502:                                              ; preds = %498, %470, %466, %463
  br i1 %410, label %503, label %522

503:                                              ; preds = %502
  %504 = load ptr, ptr %11, align 8, !tbaa !75
  %505 = getelementptr inbounds %struct.DerivedMesh, ptr %504, i64 0, i32 14
  %506 = load i32, ptr %505, align 8, !tbaa !76
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %522

508:                                              ; preds = %503
  %509 = getelementptr inbounds %struct.DerivedMesh, ptr %504, i64 0, i32 16
  %510 = load i32, ptr %509, align 8, !tbaa !84
  %511 = and i32 %510, 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.DerivedMesh, ptr %504, i64 0, i32 2
  %515 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %514, i32 noundef 8) #14
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %513, %508
  %518 = load i32, ptr %509, align 8, !tbaa !84
  %519 = and i32 %518, 4
  %520 = icmp eq i32 %519, 0
  %521 = zext i1 %520 to i8
  call void @CDDM_calc_normals_mapping_ex(ptr noundef %504, i8 noundef zeroext %521) #14
  br label %522

522:                                              ; preds = %517, %513, %503, %502
  %523 = and i64 %3, 16384
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %527, label %525

525:                                              ; preds = %522
  %526 = load ptr, ptr %11, align 8, !tbaa !75
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef %2, ptr noundef %526, ptr noundef %368, i32 noundef 14)
  br label %527

527:                                              ; preds = %525, %522
  %528 = icmp eq ptr %368, null
  br i1 %528, label %532, label %529

529:                                              ; preds = %527
  %530 = getelementptr inbounds %struct.DerivedMesh, ptr %368, i64 0, i32 95
  %531 = load ptr, ptr %530, align 8, !tbaa !163
  call void %531(ptr noundef nonnull %368) #14
  br label %532

532:                                              ; preds = %529, %527
  %533 = icmp eq ptr %408, null
  br i1 %533, label %536, label %534

534:                                              ; preds = %532
  %535 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %535(ptr noundef nonnull %408) #14
  br label %536

536:                                              ; preds = %532, %534
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %9) #14
  %537 = load ptr, ptr %11, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %538 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x46293E5940000000, ptr %538, align 4, !tbaa !125
  %539 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0x46293E5940000000, ptr %539, align 4, !tbaa !125
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !125
  %540 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %540, align 4, !tbaa !125
  %541 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %541, align 4, !tbaa !125
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !125
  %542 = getelementptr inbounds %struct.DerivedMesh, ptr %537, i64 0, i32 75
  %543 = load ptr, ptr %542, align 8, !tbaa !244
  call void %543(ptr noundef %537, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %544 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %545 = load ptr, ptr %544, align 8, !tbaa !245
  %546 = icmp eq ptr %545, null
  br i1 %546, label %547, label %550

547:                                              ; preds = %536
  %548 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %549 = call ptr %548(i64 noundef 104, ptr noundef nonnull @.str.10) #14
  store ptr %549, ptr %544, align 8, !tbaa !245
  br label %550

550:                                              ; preds = %536, %547
  %551 = load ptr, ptr %544, align 8, !tbaa !245
  call void @BKE_boundbox_init_from_minmax(ptr noundef %551, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  %552 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 7
  store i64 %3, ptr %552, align 8, !tbaa !246
  %553 = load ptr, ptr %11, align 8, !tbaa !243
  %554 = getelementptr inbounds %struct.DerivedMesh, ptr %553, i64 0, i32 10
  store i32 0, ptr %554, align 4, !tbaa !82
  %555 = load ptr, ptr %10, align 8, !tbaa !247
  %556 = getelementptr inbounds %struct.DerivedMesh, ptr %555, i64 0, i32 10
  store i32 0, ptr %556, align 4, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mesh_build_data(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  br label %13

13:                                               ; preds = %4, %10
  %14 = phi ptr [ %12, %10 ], [ null, %4 ]
  %15 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %1) #14
  %16 = icmp eq ptr %14, %1
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = icmp eq i8 %15, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !216
  %22 = and i32 %21, 28
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %17, %19, %13
  %26 = phi i32 [ 0, %13 ], [ 1, %17 ], [ %24, %19 ]
  tail call void @BKE_object_free_derived_caches(ptr noundef %1) #14
  tail call void @BKE_object_sculpt_modifiers_changed(ptr noundef %1) #14
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 119
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  tail call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %27, ptr noundef nonnull %28, i32 noundef 0, i32 noundef 1, i32 noundef %26, i64 noundef %2, i32 noundef -1, i32 noundef 1, i32 noundef %3)
  %29 = load ptr, ptr %28, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %30 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0x46293E5940000000, ptr %30, align 4, !tbaa !125
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0x46293E5940000000, ptr %31, align 4, !tbaa !125
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !125
  %32 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %32, align 4, !tbaa !125
  %33 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %33, align 4, !tbaa !125
  store float 0xC6293E5940000000, ptr %6, align 4, !tbaa !125
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 75
  %35 = load ptr, ptr %34, align 8, !tbaa !244
  call void %35(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !245
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %41 = call ptr %40(i64 noundef 104, ptr noundef nonnull @.str.10) #14
  store ptr %41, ptr %36, align 8, !tbaa !245
  br label %42

42:                                               ; preds = %25, %39
  %43 = load ptr, ptr %36, align 8, !tbaa !245
  call void @BKE_boundbox_init_from_minmax(ptr noundef %43, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %44 = load ptr, ptr %28, align 8, !tbaa !248
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %44, i64 0, i32 10
  store i32 0, ptr %45, align 4, !tbaa !82
  %46 = load ptr, ptr %27, align 8, !tbaa !249
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %46, i64 0, i32 10
  store i32 0, ptr %47, align 4, !tbaa !82
  %48 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 121
  store i64 %2, ptr %48, align 8, !tbaa !250
  %49 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %50 = load i32, ptr %49, align 8, !tbaa !216
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !251
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %59 = load ptr, ptr %58, align 8, !tbaa !217
  %60 = getelementptr inbounds %struct.ToolSettings, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !252
  call void @BKE_sculpt_update_mesh_elements(ptr noundef %0, ptr noundef %61, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %62

62:                                               ; preds = %57, %53, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 122
  %13 = load i64, ptr %12, align 8, !tbaa !215
  %14 = icmp eq ptr %11, %1
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %1) #14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %20 = load i32, ptr %19, align 8, !tbaa !216
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %15
  %24 = or i64 %13, 96
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i64 [ %24, %23 ], [ %13, %18 ]
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !216
  %29 = shl i32 %28, 4
  %30 = and i32 %29, 64
  %31 = zext nneg i32 %30 to i64
  %32 = or i64 %26, %31
  %33 = shl i32 %28, 17
  %34 = and i32 %33, 1048576
  %35 = zext nneg i32 %34 to i64
  %36 = or i64 %32, %35
  %37 = and i32 %28, 1
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 36
  %40 = or i64 %36, %39
  br label %41

41:                                               ; preds = %10, %25
  %42 = phi i64 [ %13, %10 ], [ %40, %25 ]
  %43 = or i64 %42, %2
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  %45 = load ptr, ptr %44, align 8, !tbaa !248
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 121
  %49 = load i64, ptr %48, align 8, !tbaa !250
  %50 = and i64 %49, %43
  %51 = icmp eq i64 %50, %43
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %41
  tail call fastcc void @mesh_build_data(ptr noundef %0, ptr noundef %1, i64 noundef %43, i32 noundef 0)
  br label %53

53:                                               ; preds = %52, %47
  %54 = load ptr, ptr %44, align 8, !tbaa !248
  ret ptr %54
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 122
  %13 = load i64, ptr %12, align 8, !tbaa !215
  %14 = icmp eq ptr %11, %1
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %1) #14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %20 = load i32, ptr %19, align 8, !tbaa !216
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %15
  %24 = or i64 %13, 96
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i64 [ %24, %23 ], [ %13, %18 ]
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !216
  %29 = shl i32 %28, 4
  %30 = and i32 %29, 64
  %31 = zext nneg i32 %30 to i64
  %32 = or i64 %26, %31
  %33 = shl i32 %28, 17
  %34 = and i32 %33, 1048576
  %35 = zext nneg i32 %34 to i64
  %36 = or i64 %32, %35
  %37 = and i32 %28, 1
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 36
  %40 = or i64 %36, %39
  br label %41

41:                                               ; preds = %10, %25
  %42 = phi i64 [ %13, %10 ], [ %40, %25 ]
  %43 = or i64 %42, %2
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 119
  %45 = load ptr, ptr %44, align 8, !tbaa !249
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 121
  %49 = load i64, ptr %48, align 8, !tbaa !250
  %50 = and i64 %49, %43
  %51 = icmp eq i64 %50, %43
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %41
  tail call fastcc void @mesh_build_data(ptr noundef %0, ptr noundef %1, i64 noundef %43, i32 noundef 0)
  br label %53

53:                                               ; preds = %52, %47
  %54 = load ptr, ptr %44, align 8, !tbaa !249
  ret ptr %54
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_render(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1, i32 noundef 0, i64 noundef %2, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.VirtualModifierData, align 8
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !126
  store i32 %18, ptr %13, align 4, !tbaa !95
  %19 = icmp slt i32 %6, 0
  %20 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.MultiresModifierData, ptr %20, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !253
  %25 = icmp ne i8 %24, 0
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i1 [ false, %12 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !216
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !251
  %35 = icmp ne ptr %34, null
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i1 [ false, %26 ], [ %35, %32 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !251
  %41 = getelementptr inbounds %struct.SculptSession, ptr %40, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !255
  %43 = icmp ne ptr %42, null
  br label %44

44:                                               ; preds = %38, %36
  %45 = phi i1 [ false, %36 ], [ %43, %38 ]
  %46 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !217
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 61
  %49 = load i8, ptr %48, align 1, !tbaa !218
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 62
  %53 = load i8, ptr %52, align 2, !tbaa !225
  %54 = zext nneg i8 %53 to i32
  %55 = shl nuw i32 1, %54
  br label %56

56:                                               ; preds = %44, %51
  %57 = phi i32 [ %55, %51 ], [ 8, %44 ]
  %58 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 60
  %59 = load i8, ptr %58, align 4, !tbaa !226
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i32 0, i32 16
  %62 = or i32 %61, %57
  %63 = icmp eq i32 %29, 0
  %64 = and i64 %8, 1048576
  %65 = icmp ne i64 %64, 0
  %66 = and i32 %29, 8
  %67 = icmp ne i32 %66, 0
  %68 = and i1 %65, %67
  %69 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 38
  %70 = load i16, ptr %69, align 2, !tbaa !228
  %71 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 39
  %72 = load float, ptr %71, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %14) #14
  %73 = icmp ne i32 %5, 0
  %74 = zext i1 %73 to i32
  %75 = icmp eq i32 %10, 0
  %76 = or disjoint i32 %74, 2
  %77 = select i1 %75, i32 %74, i32 %76
  %78 = icmp ne i32 %6, 0
  %79 = select i1 %78, i32 %76, i32 %74
  %80 = icmp sgt i32 %6, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %56
  %82 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %14) #14
  br label %93

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %85 = load ptr, ptr %84, align 8, !tbaa !257
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ModifierData, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !156
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load ptr, ptr %85, align 8, !tbaa !239
  br label %93

93:                                               ; preds = %83, %87, %91, %81
  %94 = phi ptr [ %92, %91 ], [ %85, %87 ], [ null, %83 ], [ %82, %81 ]
  call void @modifiers_clearErrors(ptr noundef %1) #14
  %95 = select i1 %73, i32 2, i32 1
  %96 = or i1 %63, %68
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = call ptr @modifiers_getLastPreview(ptr noundef %0, ptr noundef %94, i32 noundef %95) #14
  %99 = icmp ne ptr %98, null
  %100 = and i1 %68, %99
  %101 = select i1 %100, i64 4, i64 0
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i64 [ 0, %93 ], [ %101, %97 ]
  %104 = phi ptr [ null, %93 ], [ %98, %97 ]
  %105 = call ptr @modifiers_calcDataMasks(ptr noundef %0, ptr noundef %1, ptr noundef %94, i64 noundef %8, i32 noundef %95, ptr noundef %104, i64 noundef %103) #14
  %106 = icmp eq ptr %3, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  store ptr null, ptr %3, align 8, !tbaa !75
  br label %108

108:                                              ; preds = %107, %102
  store ptr null, ptr %4, align 8, !tbaa !75
  br i1 %78, label %109, label %167

109:                                              ; preds = %108
  %110 = icmp eq ptr %94, null
  br i1 %110, label %155, label %111

111:                                              ; preds = %109
  %112 = icmp sgt i32 %9, -1
  %113 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  br label %114

114:                                              ; preds = %111, %151
  %115 = phi ptr [ %94, %111 ], [ %152, %151 ]
  %116 = phi ptr [ %105, %111 ], [ %153, %151 ]
  %117 = phi ptr [ %2, %111 ], [ %149, %151 ]
  %118 = getelementptr inbounds %struct.ModifierData, ptr %115, i64 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !156
  %120 = call ptr @modifierType_getInfo(i32 noundef %119) #14
  %121 = getelementptr inbounds %struct.ModifierData, ptr %115, i64 0, i32 7
  store ptr %0, ptr %121, align 8, !tbaa !158
  %122 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %115, i32 noundef %95) #14
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %148, label %124

124:                                              ; preds = %114
  br i1 %19, label %125, label %132

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %120, i64 0, i32 17
  %127 = load ptr, ptr %126, align 8, !tbaa !258
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = call zeroext i8 %127(ptr noundef nonnull %115) #14
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %129, %125, %124
  %133 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %120, i64 0, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !162
  %135 = icmp ne i32 %134, 1
  %136 = select i1 %135, i1 true, i1 %45
  br i1 %136, label %148, label %137

137:                                              ; preds = %132
  %138 = icmp eq ptr %117, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %137
  %140 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %16, ptr noundef nonnull %13) #14
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi ptr [ %117, %137 ], [ %140, %139 ]
  %143 = load i32, ptr %13, align 4, !tbaa !95
  call void @modwrap_deformVerts(ptr noundef nonnull %115, ptr noundef %1, ptr noundef null, ptr noundef %142, i32 noundef %143, i32 noundef %79) #14
  br i1 %112, label %144, label %147

144:                                              ; preds = %141
  %145 = call i32 @BLI_findindex(ptr noundef nonnull %113, ptr noundef nonnull %115) #14
  %146 = icmp slt i32 %145, %9
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %144, %132, %129, %114, %147
  %149 = phi ptr [ %142, %147 ], [ %117, %114 ], [ %117, %129 ], [ %117, %132 ], [ %142, %144 ]
  %150 = phi i1 [ false, %147 ], [ false, %114 ], [ false, %129 ], [ true, %132 ], [ true, %144 ]
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %115, align 8, !tbaa !239
  %153 = load ptr, ptr %116, align 8, !tbaa !240
  %154 = icmp eq ptr %152, null
  br i1 %154, label %155, label %114, !llvm.loop !259

155:                                              ; preds = %151, %148, %109
  %156 = phi ptr [ %105, %109 ], [ %153, %151 ], [ %116, %148 ]
  %157 = phi ptr [ %94, %109 ], [ %152, %151 ], [ %115, %148 ]
  %158 = phi ptr [ %2, %109 ], [ %149, %148 ], [ %149, %151 ]
  br i1 %106, label %171, label %159

159:                                              ; preds = %155
  %160 = call ptr @CDDM_from_mesh(ptr noundef %16) #14
  store ptr %160, ptr %3, align 8, !tbaa !75
  %161 = icmp eq i32 %11, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  call fastcc void @add_shapekey_layers(ptr noundef null, ptr noundef %16)
  br label %163

163:                                              ; preds = %162, %159
  %164 = icmp eq ptr %158, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %163
  %166 = load ptr, ptr %3, align 8, !tbaa !75
  call void @CDDM_apply_vert_coords(ptr noundef %166, ptr noundef nonnull %158) #14
  br label %171

167:                                              ; preds = %108
  %168 = icmp eq ptr %2, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %167
  %170 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %16, ptr noundef nonnull %13) #14
  br label %171

171:                                              ; preds = %167, %169, %155, %165, %163
  %172 = phi ptr [ %158, %165 ], [ null, %163 ], [ %158, %155 ], [ %170, %169 ], [ %2, %167 ]
  %173 = phi ptr [ %156, %165 ], [ %156, %163 ], [ %156, %155 ], [ %105, %169 ], [ %105, %167 ]
  %174 = phi ptr [ %157, %165 ], [ %157, %163 ], [ %157, %155 ], [ %94, %169 ], [ %94, %167 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %540, label %176

176:                                              ; preds = %171
  %177 = xor i1 %27, true
  %178 = xor i1 %73, true
  %179 = and i1 %45, %178
  %180 = icmp eq i32 %7, 0
  %181 = icmp eq i32 %11, 0
  %182 = select i1 %180, i64 0, i64 128
  %183 = or disjoint i32 %74, 4
  %184 = or disjoint i32 %74, 4
  %185 = icmp sgt i32 %9, -1
  %186 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  br label %187

187:                                              ; preds = %176, %536
  %188 = phi ptr [ %174, %176 ], [ %537, %536 ]
  %189 = phi ptr [ %173, %176 ], [ %538, %536 ]
  %190 = phi i64 [ 128, %176 ], [ %534, %536 ]
  %191 = phi ptr [ %172, %176 ], [ %533, %536 ]
  %192 = phi ptr [ null, %176 ], [ %532, %536 ]
  %193 = phi ptr [ null, %176 ], [ %531, %536 ]
  %194 = phi ptr [ null, %176 ], [ %530, %536 ]
  %195 = phi i8 [ 0, %176 ], [ %529, %536 ]
  %196 = phi i8 [ 0, %176 ], [ %528, %536 ]
  %197 = getelementptr inbounds %struct.ModifierData, ptr %188, i64 0, i32 2
  %198 = load i32, ptr %197, align 8, !tbaa !156
  %199 = call ptr @modifierType_getInfo(i32 noundef %198) #14
  %200 = getelementptr inbounds %struct.ModifierData, ptr %188, i64 0, i32 7
  store ptr %0, ptr %200, align 8, !tbaa !158
  %201 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %188, i32 noundef %95) #14
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %527, label %203

203:                                              ; preds = %187
  %204 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %199, i64 0, i32 3
  %205 = load i32, ptr %204, align 4, !tbaa !162
  %206 = icmp ne i32 %205, 1
  %207 = or i1 %78, %206
  br i1 %207, label %208, label %527

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %199, i64 0, i32 4
  %210 = load i32, ptr %209, align 8, !tbaa !193
  %211 = and i32 %210, 32
  %212 = icmp ne i32 %211, 0
  %213 = icmp ne ptr %192, null
  %214 = select i1 %212, i1 %213, i1 false
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %188, ptr noundef nonnull @.str.8) #14
  br label %527

216:                                              ; preds = %208
  br i1 %37, label %217, label %246

217:                                              ; preds = %216
  %218 = icmp ne i8 %195, 0
  %219 = select i1 %177, i1 true, i1 %218
  %220 = select i1 %219, i1 true, i1 %45
  br i1 %220, label %221, label %246

221:                                              ; preds = %217
  %222 = load i32, ptr %197, align 8, !tbaa !156
  %223 = icmp eq i32 %222, 29
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.MultiresModifierData, ptr %188, i64 0, i32 2
  %226 = load i8, ptr %225, align 1, !tbaa !253
  %227 = icmp ne i8 %226, 0
  %228 = select i1 %227, i1 true, i1 %45
  br i1 %228, label %229, label %527

229:                                              ; preds = %224, %221
  %230 = load ptr, ptr %46, align 8, !tbaa !217
  %231 = getelementptr inbounds %struct.ToolSettings, ptr %230, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !252
  %233 = getelementptr inbounds %struct.Sculpt, ptr %232, i64 0, i32 1
  %234 = load i32, ptr %233, align 8, !tbaa !260
  %235 = and i32 %234, 256
  %236 = icmp ne i32 %235, 0
  %237 = and i1 %206, %236
  %238 = or i1 %179, %237
  %239 = zext i1 %238 to i8
  %240 = or i8 %195, %239
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %229
  br i1 %45, label %243, label %244

243:                                              ; preds = %242
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %188, ptr noundef nonnull @.str.29) #14
  br label %527

244:                                              ; preds = %242
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %188, ptr noundef nonnull @.str.30) #14
  br label %527

245:                                              ; preds = %229
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %188, ptr noundef nonnull @.str.31) #14
  br label %246

246:                                              ; preds = %245, %217, %216
  br i1 %180, label %250, label %247

247:                                              ; preds = %246
  %248 = call zeroext i8 @modifier_supportsMapping(ptr noundef nonnull %188) #14
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %527, label %250

250:                                              ; preds = %247, %246
  br i1 %19, label %251, label %258

251:                                              ; preds = %250
  %252 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %199, i64 0, i32 17
  %253 = load ptr, ptr %252, align 8, !tbaa !258
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = call zeroext i8 %253(ptr noundef nonnull %188) #14
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %527

258:                                              ; preds = %255, %251, %250
  %259 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %199, i64 0, i32 13
  %260 = load ptr, ptr %259, align 8, !tbaa !230
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  %263 = call i64 %260(ptr noundef %1, ptr noundef nonnull %188) #14
  br label %264

264:                                              ; preds = %258, %262
  %265 = phi i64 [ %263, %262 ], [ 0, %258 ]
  %266 = and i64 %265, 16384
  %267 = icmp ne i64 %266, 0
  %268 = select i1 %213, i1 %267, i1 false
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef nonnull %192, ptr noundef %193, i32 noundef 14)
  br label %270

270:                                              ; preds = %269, %264
  %271 = load i32, ptr %204, align 4, !tbaa !162
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %306

273:                                              ; preds = %270
  %274 = icmp eq ptr %191, null
  br i1 %274, label %275, label %288

275:                                              ; preds = %273
  br i1 %213, label %276, label %286

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct.DerivedMesh, ptr %192, i64 0, i32 23
  %278 = load ptr, ptr %277, align 8, !tbaa !65
  %279 = call i32 %278(ptr noundef nonnull %192) #14
  store i32 %279, ptr %13, align 4, !tbaa !95
  %280 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %281 = sext i32 %279 to i64
  %282 = mul nsw i64 %281, 12
  %283 = call ptr %280(i64 noundef %282, ptr noundef nonnull @.str.26) #14
  %284 = getelementptr inbounds %struct.DerivedMesh, ptr %192, i64 0, i32 77
  %285 = load ptr, ptr %284, align 8, !tbaa !231
  call void %285(ptr noundef nonnull %192, ptr noundef %283) #14
  br label %288

286:                                              ; preds = %275
  %287 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %16, ptr noundef nonnull %13) #14
  br label %288

288:                                              ; preds = %276, %286, %273
  %289 = phi ptr [ %191, %273 ], [ %283, %276 ], [ %287, %286 ]
  %290 = icmp eq i8 %196, 0
  br i1 %290, label %304, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %199, i64 0, i32 18
  %293 = load ptr, ptr %292, align 8, !tbaa !262
  %294 = icmp eq ptr %293, null
  br i1 %294, label %304, label %295

295:                                              ; preds = %291
  %296 = call zeroext i8 %293(ptr noundef nonnull %188) #14
  %297 = icmp ne i8 %296, 0
  %298 = select i1 %297, i1 %213, i1 false
  br i1 %298, label %299, label %304

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.DerivedMesh, ptr %192, i64 0, i32 14
  %301 = load i32, ptr %300, align 8, !tbaa !76
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  call void @CDDM_apply_vert_coords(ptr noundef nonnull %192, ptr noundef %289) #14
  br label %304

304:                                              ; preds = %299, %303, %295, %291, %288
  %305 = load i32, ptr %13, align 4, !tbaa !95
  call void @modwrap_deformVerts(ptr noundef nonnull %188, ptr noundef %1, ptr noundef %192, ptr noundef %289, i32 noundef %305, i32 noundef %79) #14
  br label %510

306:                                              ; preds = %270
  %307 = load ptr, ptr %189, align 8, !tbaa !240
  %308 = icmp eq ptr %307, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.CDMaskLink, ptr %307, i64 0, i32 1
  %311 = load i64, ptr %310, align 8, !tbaa !233
  br label %312

312:                                              ; preds = %306, %309
  %313 = phi i64 [ %311, %309 ], [ %8, %306 ]
  br i1 %213, label %314, label %320

314:                                              ; preds = %312
  %315 = icmp eq ptr %191, null
  br i1 %315, label %350, label %316

316:                                              ; preds = %314
  %317 = call ptr @CDDM_copy(ptr noundef nonnull %192) #14
  %318 = getelementptr inbounds %struct.DerivedMesh, ptr %192, i64 0, i32 95
  %319 = load ptr, ptr %318, align 8, !tbaa !163
  call void %319(ptr noundef nonnull %192) #14
  call void @CDDM_apply_vert_coords(ptr noundef %317, ptr noundef nonnull %191) #14
  br label %350

320:                                              ; preds = %312
  %321 = call ptr @CDDM_from_mesh(ptr noundef %16) #14
  br i1 %181, label %323, label %322

322:                                              ; preds = %320
  call fastcc void @add_shapekey_layers(ptr noundef %321, ptr noundef %16)
  br label %323

323:                                              ; preds = %322, %320
  %324 = icmp eq ptr %191, null
  br i1 %324, label %326, label %325

325:                                              ; preds = %323
  call void @CDDM_apply_vert_coords(ptr noundef %321, ptr noundef nonnull %191) #14
  br label %326

326:                                              ; preds = %325, %323
  br i1 %68, label %327, label %328

327:                                              ; preds = %326
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %321, i32 noundef %62, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %328

328:                                              ; preds = %327, %326
  %329 = and i64 %313, 128
  %330 = icmp eq i64 %329, 0
  %331 = select i1 %180, i1 %330, i1 false
  br i1 %331, label %350, label %332

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.DerivedMesh, ptr %321, i64 0, i32 5
  %334 = load i32, ptr %333, align 8, !tbaa !77
  %335 = call ptr @CustomData_add_layer(ptr noundef %321, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %334) #14
  %336 = getelementptr inbounds %struct.DerivedMesh, ptr %321, i64 0, i32 1
  %337 = getelementptr inbounds %struct.DerivedMesh, ptr %321, i64 0, i32 6
  %338 = load i32, ptr %337, align 4, !tbaa !78
  %339 = call ptr @CustomData_add_layer(ptr noundef nonnull %336, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %338) #14
  %340 = getelementptr inbounds %struct.DerivedMesh, ptr %321, i64 0, i32 4
  %341 = getelementptr inbounds %struct.DerivedMesh, ptr %321, i64 0, i32 9
  %342 = load i32, ptr %341, align 8, !tbaa !81
  %343 = call ptr @CustomData_add_layer(ptr noundef nonnull %340, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %342) #14
  %344 = call ptr @CustomData_get_layer(ptr noundef %321, i32 noundef 7) #14
  %345 = load i32, ptr %333, align 8, !tbaa !77
  call void @range_vn_i(ptr noundef %344, i32 noundef %345, i32 noundef 0) #14
  %346 = call ptr @CustomData_get_layer(ptr noundef nonnull %336, i32 noundef 7) #14
  %347 = load i32, ptr %337, align 4, !tbaa !78
  call void @range_vn_i(ptr noundef %346, i32 noundef %347, i32 noundef 0) #14
  %348 = call ptr @CustomData_get_layer(ptr noundef nonnull %340, i32 noundef 7) #14
  %349 = load i32, ptr %341, align 8, !tbaa !81
  call void @range_vn_i(ptr noundef %348, i32 noundef %349, i32 noundef 0) #14
  br label %350

350:                                              ; preds = %328, %332, %314, %316
  %351 = phi ptr [ %317, %316 ], [ %192, %314 ], [ %321, %332 ], [ %321, %328 ]
  %352 = getelementptr inbounds %struct.CDMaskLink, ptr %189, i64 0, i32 1
  %353 = load i64, ptr %352, align 8, !tbaa !233
  %354 = or i64 %353, %190
  %355 = or i64 %354, %182
  call void @CustomData_set_only_copy(ptr noundef %351, i64 noundef %355) #14
  %356 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 1
  call void @CustomData_set_only_copy(ptr noundef nonnull %356, i64 noundef %355) #14
  %357 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 2
  call void @CustomData_set_only_copy(ptr noundef nonnull %357, i64 noundef %355) #14
  %358 = and i64 %354, 8388608
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %350
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef %351, ptr noundef %194, i32 noundef 23)
  br label %361

361:                                              ; preds = %360, %350
  %362 = load i64, ptr %352, align 8, !tbaa !233
  %363 = and i64 %362, 2147483648
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %412, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 3
  %367 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %366, i32 noundef 31) #14
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %369, label %412

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 8
  %371 = load i32, ptr %370, align 4, !tbaa !80
  %372 = call ptr @CustomData_add_layer(ptr noundef nonnull %366, i32 noundef 31, i32 noundef 1, ptr noundef null, i32 noundef %371) #14
  %373 = call ptr @CustomData_get_layer(ptr noundef nonnull %366, i32 noundef 31) #14
  %374 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 27
  %375 = load ptr, ptr %374, align 8, !tbaa !73
  %376 = call i32 %375(ptr noundef %351) #14
  %377 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 35
  %378 = load ptr, ptr %377, align 8, !tbaa !45
  %379 = call ptr %378(ptr noundef %351) #14
  %380 = icmp sgt i32 %376, 0
  br i1 %380, label %381, label %408

381:                                              ; preds = %369, %404
  %382 = phi i32 [ %405, %404 ], [ 0, %369 ]
  %383 = phi ptr [ %406, %404 ], [ %379, %369 ]
  %384 = getelementptr inbounds %struct.MPoly, ptr %383, i64 0, i32 1
  %385 = load i32, ptr %384, align 4, !tbaa !181
  %386 = add i32 %385, -3
  %387 = icmp ult i32 %386, 2
  br i1 %387, label %388, label %404

388:                                              ; preds = %381
  %389 = load i32, ptr %383, align 4, !tbaa !96
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %373, i64 %390
  %392 = zext nneg i32 %385 to i64
  br label %393

393:                                              ; preds = %393, %388
  %394 = phi i64 [ 0, %388 ], [ %401, %393 ]
  %395 = phi ptr [ %391, %388 ], [ %402, %393 ]
  %396 = getelementptr inbounds [4 x [2 x float]], ptr @DM_init_origspace.default_osf, i64 0, i64 %394
  %397 = load float, ptr %396, align 8, !tbaa !125
  store float %397, ptr %395, align 4, !tbaa !125
  %398 = getelementptr inbounds float, ptr %396, i64 1
  %399 = load float, ptr %398, align 4, !tbaa !125
  %400 = getelementptr inbounds float, ptr %395, i64 1
  store float %399, ptr %400, align 4, !tbaa !125
  %401 = add nuw nsw i64 %394, 1
  %402 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %395, i64 1
  %403 = icmp eq i64 %401, %392
  br i1 %403, label %404, label %393, !llvm.loop !237

404:                                              ; preds = %393, %381
  %405 = add nuw nsw i32 %382, 1
  %406 = getelementptr inbounds %struct.MPoly, ptr %383, i64 1
  %407 = icmp eq i32 %405, %376
  br i1 %407, label %408, label %381, !llvm.loop !238

408:                                              ; preds = %404, %369
  %409 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 16
  %410 = load i32, ptr %409, align 8, !tbaa !84
  %411 = or i32 %410, 1
  store i32 %411, ptr %409, align 8, !tbaa !84
  br label %412

412:                                              ; preds = %365, %408, %361
  %413 = call ptr @modwrap_applyModifier(ptr noundef nonnull %188, ptr noundef %1, ptr noundef %351, i32 noundef %77) #14
  %414 = icmp eq ptr %413, null
  br i1 %414, label %428, label %415

415:                                              ; preds = %412
  %416 = icmp eq ptr %351, null
  %417 = icmp eq ptr %351, %413
  %418 = or i1 %416, %417
  br i1 %418, label %422, label %419

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.DerivedMesh, ptr %351, i64 0, i32 95
  %421 = load ptr, ptr %420, align 8, !tbaa !163
  call void %421(ptr noundef nonnull %351) #14
  br label %422

422:                                              ; preds = %419, %415
  %423 = icmp eq ptr %191, null
  %424 = icmp eq ptr %191, %2
  %425 = or i1 %423, %424
  br i1 %425, label %428, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %427(ptr noundef nonnull %191) #14
  br label %428

428:                                              ; preds = %426, %422, %412
  %429 = phi ptr [ %413, %422 ], [ %351, %412 ], [ %413, %426 ]
  %430 = phi ptr [ null, %422 ], [ %191, %412 ], [ null, %426 ]
  %431 = and i64 %313, 16384
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %463, label %433

433:                                              ; preds = %428
  %434 = icmp eq ptr %193, null
  br i1 %434, label %435, label %441

435:                                              ; preds = %433
  %436 = call ptr @CDDM_from_mesh(ptr noundef %16) #14
  %437 = call ptr @BKE_mesh_orco_verts_get(ptr noundef %1) #14
  %438 = icmp eq ptr %437, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %435
  call void @CDDM_apply_vert_coords(ptr noundef %436, ptr noundef nonnull %437) #14
  %440 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %440(ptr noundef nonnull %437) #14
  br label %441

441:                                              ; preds = %439, %435, %433
  %442 = phi ptr [ %193, %433 ], [ %436, %435 ], [ %436, %439 ]
  %443 = and i64 %313, -16385
  %444 = load ptr, ptr %259, align 8, !tbaa !230
  %445 = icmp eq ptr %444, null
  br i1 %445, label %448, label %446

446:                                              ; preds = %441
  %447 = call i64 %444(ptr noundef %1, ptr noundef nonnull %188) #14
  br label %448

448:                                              ; preds = %441, %446
  %449 = phi i64 [ %447, %446 ], [ 0, %441 ]
  %450 = or i64 %443, %449
  %451 = or i64 %450, 128
  call void @CustomData_set_only_copy(ptr noundef %442, i64 noundef %451) #14
  %452 = getelementptr inbounds %struct.DerivedMesh, ptr %442, i64 0, i32 1
  call void @CustomData_set_only_copy(ptr noundef nonnull %452, i64 noundef %451) #14
  %453 = getelementptr inbounds %struct.DerivedMesh, ptr %442, i64 0, i32 2
  call void @CustomData_set_only_copy(ptr noundef nonnull %453, i64 noundef %451) #14
  %454 = call ptr @modwrap_applyModifier(ptr noundef nonnull %188, ptr noundef %1, ptr noundef %442, i32 noundef %183) #14
  %455 = icmp eq ptr %454, null
  br i1 %455, label %463, label %456

456:                                              ; preds = %448
  %457 = icmp eq ptr %442, null
  %458 = icmp eq ptr %442, %454
  %459 = or i1 %457, %458
  br i1 %459, label %463, label %460

460:                                              ; preds = %456
  %461 = getelementptr inbounds %struct.DerivedMesh, ptr %442, i64 0, i32 95
  %462 = load ptr, ptr %461, align 8, !tbaa !163
  call void %462(ptr noundef nonnull %442) #14
  br label %463

463:                                              ; preds = %456, %460, %448, %428
  %464 = phi ptr [ %442, %448 ], [ %193, %428 ], [ %454, %460 ], [ %454, %456 ]
  %465 = phi i64 [ %443, %448 ], [ %313, %428 ], [ %443, %460 ], [ %443, %456 ]
  %466 = and i64 %465, 8388608
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %499, label %468

468:                                              ; preds = %463
  %469 = icmp eq ptr %194, null
  br i1 %469, label %470, label %484

470:                                              ; preds = %468
  %471 = call ptr @CDDM_from_mesh(ptr noundef %16) #14
  %472 = call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 22) #14
  %473 = call ptr @BKE_key_from_object(ptr noundef %1) #14
  %474 = getelementptr inbounds %struct.ClothModifierData, ptr %472, i64 0, i32 3
  %475 = load ptr, ptr %474, align 8, !tbaa !263
  %476 = getelementptr inbounds %struct.ClothSimSettings, ptr %475, i64 0, i32 37
  %477 = load i16, ptr %476, align 2, !tbaa !265
  %478 = sext i16 %477 to i32
  %479 = call ptr @BKE_keyblock_from_key(ptr noundef %473, i32 noundef %478) #14
  %480 = getelementptr inbounds %struct.KeyBlock, ptr %479, i64 0, i32 10
  %481 = load ptr, ptr %480, align 8, !tbaa !141
  %482 = icmp eq ptr %481, null
  br i1 %482, label %484, label %483

483:                                              ; preds = %470
  call void @CDDM_apply_vert_coords(ptr noundef %471, ptr noundef nonnull %481) #14
  br label %484

484:                                              ; preds = %470, %483, %468
  %485 = phi ptr [ %194, %468 ], [ %471, %483 ], [ %471, %470 ]
  %486 = and i64 %465, -8388737
  %487 = or disjoint i64 %486, 128
  call void @CustomData_set_only_copy(ptr noundef %485, i64 noundef %487) #14
  %488 = getelementptr inbounds %struct.DerivedMesh, ptr %485, i64 0, i32 1
  call void @CustomData_set_only_copy(ptr noundef nonnull %488, i64 noundef %487) #14
  %489 = getelementptr inbounds %struct.DerivedMesh, ptr %485, i64 0, i32 2
  call void @CustomData_set_only_copy(ptr noundef nonnull %489, i64 noundef %487) #14
  %490 = call ptr @modwrap_applyModifier(ptr noundef nonnull %188, ptr noundef %1, ptr noundef %485, i32 noundef %184) #14
  %491 = icmp eq ptr %490, null
  br i1 %491, label %499, label %492

492:                                              ; preds = %484
  %493 = icmp eq ptr %485, null
  %494 = icmp eq ptr %485, %490
  %495 = or i1 %493, %494
  br i1 %495, label %499, label %496

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.DerivedMesh, ptr %485, i64 0, i32 95
  %498 = load ptr, ptr %497, align 8, !tbaa !163
  call void %498(ptr noundef nonnull %485) #14
  br label %499

499:                                              ; preds = %492, %496, %484, %463
  %500 = phi ptr [ %485, %484 ], [ %194, %463 ], [ %490, %496 ], [ %490, %492 ]
  %501 = load i32, ptr %197, align 8, !tbaa !156
  %502 = icmp eq i32 %501, 40
  br i1 %502, label %503, label %505

503:                                              ; preds = %499
  %504 = or i64 %190, 4294967296
  br label %510

505:                                              ; preds = %499
  %506 = icmp eq ptr %188, %104
  %507 = and i1 %68, %506
  br i1 %507, label %508, label %510

508:                                              ; preds = %505
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %429, i32 noundef %62, ptr noundef null, i32 noundef 0, ptr noundef null)
  %509 = or i64 %190, 4294967296
  br label %510

510:                                              ; preds = %503, %508, %505, %304
  %511 = phi ptr [ %194, %304 ], [ %500, %505 ], [ %500, %508 ], [ %500, %503 ]
  %512 = phi ptr [ %193, %304 ], [ %464, %505 ], [ %464, %508 ], [ %464, %503 ]
  %513 = phi ptr [ %192, %304 ], [ %429, %505 ], [ %429, %508 ], [ %429, %503 ]
  %514 = phi ptr [ %289, %304 ], [ %430, %505 ], [ %430, %508 ], [ %430, %503 ]
  %515 = phi i64 [ %190, %304 ], [ %190, %505 ], [ %509, %508 ], [ %504, %503 ]
  %516 = load i32, ptr %204, align 4, !tbaa !162
  %517 = icmp eq i32 %516, 1
  %518 = zext i1 %517 to i8
  br i1 %185, label %519, label %522

519:                                              ; preds = %510
  %520 = call i32 @BLI_findindex(ptr noundef nonnull %186, ptr noundef nonnull %188) #14
  %521 = icmp slt i32 %520, %9
  br i1 %521, label %522, label %527

522:                                              ; preds = %519, %510
  br i1 %37, label %523, label %527

523:                                              ; preds = %522
  %524 = load i32, ptr %197, align 8, !tbaa !156
  %525 = icmp eq i32 %524, 29
  %526 = select i1 %525, i8 1, i8 %195
  br label %527

527:                                              ; preds = %224, %244, %243, %523, %522, %519, %255, %247, %203, %187, %215
  %528 = phi i8 [ %196, %215 ], [ %196, %187 ], [ %196, %203 ], [ %196, %247 ], [ %196, %255 ], [ %518, %519 ], [ %518, %523 ], [ %518, %522 ], [ %196, %243 ], [ %196, %244 ], [ %196, %224 ]
  %529 = phi i8 [ %195, %215 ], [ %195, %187 ], [ %195, %203 ], [ %195, %247 ], [ %195, %255 ], [ %195, %519 ], [ %526, %523 ], [ %195, %522 ], [ %195, %243 ], [ %195, %244 ], [ %195, %224 ]
  %530 = phi ptr [ %194, %215 ], [ %194, %187 ], [ %194, %203 ], [ %194, %247 ], [ %194, %255 ], [ %511, %519 ], [ %511, %523 ], [ %511, %522 ], [ %194, %243 ], [ %194, %244 ], [ %194, %224 ]
  %531 = phi ptr [ %193, %215 ], [ %193, %187 ], [ %193, %203 ], [ %193, %247 ], [ %193, %255 ], [ %512, %519 ], [ %512, %523 ], [ %512, %522 ], [ %193, %243 ], [ %193, %244 ], [ %193, %224 ]
  %532 = phi ptr [ %192, %215 ], [ %192, %187 ], [ %192, %203 ], [ %192, %247 ], [ %192, %255 ], [ %513, %519 ], [ %513, %523 ], [ %513, %522 ], [ %192, %243 ], [ %192, %244 ], [ %192, %224 ]
  %533 = phi ptr [ %191, %215 ], [ %191, %187 ], [ %191, %203 ], [ %191, %247 ], [ %191, %255 ], [ %514, %519 ], [ %514, %523 ], [ %514, %522 ], [ %191, %243 ], [ %191, %244 ], [ %191, %224 ]
  %534 = phi i64 [ %190, %215 ], [ %190, %187 ], [ %190, %203 ], [ %190, %247 ], [ %190, %255 ], [ %515, %519 ], [ %515, %523 ], [ %515, %522 ], [ %190, %243 ], [ %190, %244 ], [ %190, %224 ]
  %535 = phi i1 [ false, %215 ], [ false, %187 ], [ false, %203 ], [ false, %247 ], [ false, %255 ], [ true, %519 ], [ false, %523 ], [ false, %522 ], [ false, %243 ], [ false, %244 ], [ false, %224 ]
  br i1 %535, label %540, label %536

536:                                              ; preds = %527
  %537 = load ptr, ptr %188, align 8, !tbaa !239
  %538 = load ptr, ptr %189, align 8, !tbaa !240
  %539 = icmp eq ptr %537, null
  br i1 %539, label %540, label %187, !llvm.loop !267

540:                                              ; preds = %536, %527, %171
  %541 = phi ptr [ null, %171 ], [ %530, %527 ], [ %530, %536 ]
  %542 = phi ptr [ null, %171 ], [ %531, %527 ], [ %531, %536 ]
  %543 = phi ptr [ null, %171 ], [ %532, %527 ], [ %532, %536 ]
  %544 = phi ptr [ %172, %171 ], [ %533, %527 ], [ %533, %536 ]
  %545 = icmp eq ptr %94, null
  br i1 %545, label %550, label %546

546:                                              ; preds = %540, %546
  %547 = phi ptr [ %548, %546 ], [ %94, %540 ]
  call void @modifier_freeTemporaryData(ptr noundef nonnull %547) #14
  %548 = load ptr, ptr %547, align 8, !tbaa !239
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %546, !llvm.loop !268

550:                                              ; preds = %546, %540
  %551 = icmp ne ptr %543, null
  %552 = icmp ne ptr %544, null
  %553 = select i1 %551, i1 %552, i1 false
  br i1 %553, label %554, label %558

554:                                              ; preds = %550
  %555 = call ptr @CDDM_copy(ptr noundef nonnull %543) #14
  %556 = getelementptr inbounds %struct.DerivedMesh, ptr %543, i64 0, i32 95
  %557 = load ptr, ptr %556, align 8, !tbaa !163
  call void %557(ptr noundef nonnull %543) #14
  call void @CDDM_apply_vert_coords(ptr noundef %555, ptr noundef nonnull %544) #14
  br label %567

558:                                              ; preds = %550
  br i1 %551, label %567, label %559

559:                                              ; preds = %558
  %560 = call ptr @CDDM_from_mesh(ptr noundef %16) #14
  %561 = icmp eq i32 %11, 0
  br i1 %561, label %563, label %562

562:                                              ; preds = %559
  call fastcc void @add_shapekey_layers(ptr noundef %560, ptr noundef %16)
  br label %563

563:                                              ; preds = %562, %559
  br i1 %552, label %564, label %565

564:                                              ; preds = %563
  call void @CDDM_apply_vert_coords(ptr noundef %560, ptr noundef nonnull %544) #14
  br label %565

565:                                              ; preds = %564, %563
  br i1 %68, label %566, label %567

566:                                              ; preds = %565
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %560, i32 noundef %62, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %567

567:                                              ; preds = %558, %566, %565, %554
  %568 = phi ptr [ %555, %554 ], [ %560, %566 ], [ %560, %565 ], [ %543, %558 ]
  %569 = and i64 %8, 16384
  %570 = icmp eq i64 %569, 0
  br i1 %570, label %576, label %571

571:                                              ; preds = %567
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef %568, ptr noundef %542, i32 noundef 14)
  br i1 %106, label %576, label %572

572:                                              ; preds = %571
  %573 = load ptr, ptr %3, align 8, !tbaa !75
  %574 = icmp eq ptr %573, null
  br i1 %574, label %576, label %575

575:                                              ; preds = %572
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef nonnull %573, ptr noundef null, i32 noundef 14)
  br label %576

576:                                              ; preds = %571, %572, %575, %567
  %577 = and i16 %70, 32
  %578 = icmp eq i16 %577, 0
  br i1 %578, label %612, label %579

579:                                              ; preds = %576
  %580 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 21
  %581 = load ptr, ptr %580, align 8, !tbaa !242
  call void %581(ptr noundef %568, float noundef %72) #14
  %582 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 16
  %583 = load i32, ptr %582, align 8, !tbaa !84
  %584 = or i32 %583, 1
  store i32 %584, ptr %582, align 8, !tbaa !84
  %585 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 25
  %586 = load ptr, ptr %585, align 8, !tbaa !69
  %587 = call i32 %586(ptr noundef %568) #14
  %588 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 27
  %589 = load ptr, ptr %588, align 8, !tbaa !73
  %590 = call i32 %589(ptr noundef %568) #14
  %591 = icmp eq i32 %587, 0
  %592 = icmp ne i32 %590, 0
  %593 = select i1 %591, i1 %592, i1 false
  br i1 %593, label %594, label %604

594:                                              ; preds = %579
  %595 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 22
  %596 = load ptr, ptr %595, align 8, !tbaa !91
  call void %596(ptr noundef %568) #14
  %597 = load ptr, ptr %585, align 8, !tbaa !69
  %598 = call i32 %597(ptr noundef %568) #14
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %609

600:                                              ; preds = %594
  %601 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 14
  %602 = load i32, ptr %601, align 8, !tbaa !76
  %603 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.DM_ensure_tessface, i32 noundef %590, i32 noundef %602)
  br label %609

604:                                              ; preds = %579
  %605 = load i32, ptr %582, align 8, !tbaa !84
  %606 = and i32 %605, 1
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %604
  call void @DM_update_tessface_data(ptr noundef %568)
  br label %609

609:                                              ; preds = %594, %600, %604, %608
  %610 = load i32, ptr %582, align 8, !tbaa !84
  %611 = and i32 %610, -2
  store i32 %611, ptr %582, align 8, !tbaa !84
  br label %657

612:                                              ; preds = %576
  %613 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 25
  %614 = load ptr, ptr %613, align 8, !tbaa !69
  %615 = call i32 %614(ptr noundef %568) #14
  %616 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 27
  %617 = load ptr, ptr %616, align 8, !tbaa !73
  %618 = call i32 %617(ptr noundef %568) #14
  %619 = icmp eq i32 %615, 0
  %620 = icmp ne i32 %618, 0
  %621 = select i1 %619, i1 %620, i1 false
  br i1 %621, label %622, label %632

622:                                              ; preds = %612
  %623 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 22
  %624 = load ptr, ptr %623, align 8, !tbaa !91
  call void %624(ptr noundef %568) #14
  %625 = load ptr, ptr %613, align 8, !tbaa !69
  %626 = call i32 %625(ptr noundef %568) #14
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %638

628:                                              ; preds = %622
  %629 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 14
  %630 = load i32, ptr %629, align 8, !tbaa !76
  %631 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.DM_ensure_tessface, i32 noundef %618, i32 noundef %630)
  br label %638

632:                                              ; preds = %612
  %633 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 16
  %634 = load i32, ptr %633, align 8, !tbaa !84
  %635 = and i32 %634, 1
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %638, label %637

637:                                              ; preds = %632
  call void @DM_update_tessface_data(ptr noundef %568)
  br label %638

638:                                              ; preds = %622, %628, %632, %637
  %639 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 16
  %640 = load i32, ptr %639, align 8, !tbaa !84
  %641 = and i32 %640, -2
  store i32 %641, ptr %639, align 8, !tbaa !84
  %642 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 14
  %643 = load i32, ptr %642, align 8, !tbaa !76
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %657

645:                                              ; preds = %638
  %646 = and i32 %640, 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %652

648:                                              ; preds = %645
  %649 = getelementptr inbounds %struct.DerivedMesh, ptr %568, i64 0, i32 2
  %650 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %649, i32 noundef 8) #14
  %651 = icmp eq i8 %650, 0
  br i1 %651, label %652, label %657

652:                                              ; preds = %648, %645
  %653 = load i32, ptr %639, align 8, !tbaa !84
  %654 = and i32 %653, 4
  %655 = icmp eq i32 %654, 0
  %656 = zext i1 %655 to i8
  call void @CDDM_calc_normals_mapping_ex(ptr noundef %568, i8 noundef zeroext %656) #14
  br label %657

657:                                              ; preds = %652, %648, %638, %609
  store ptr %568, ptr %4, align 8, !tbaa !75
  %658 = icmp eq ptr %542, null
  br i1 %658, label %662, label %659

659:                                              ; preds = %657
  %660 = getelementptr inbounds %struct.DerivedMesh, ptr %542, i64 0, i32 95
  %661 = load ptr, ptr %660, align 8, !tbaa !163
  call void %661(ptr noundef nonnull %542) #14
  br label %662

662:                                              ; preds = %659, %657
  %663 = icmp eq ptr %541, null
  br i1 %663, label %667, label %664

664:                                              ; preds = %662
  %665 = getelementptr inbounds %struct.DerivedMesh, ptr %541, i64 0, i32 95
  %666 = load ptr, ptr %665, align 8, !tbaa !163
  call void %666(ptr noundef nonnull %541) #14
  br label %667

667:                                              ; preds = %664, %662
  %668 = icmp ne ptr %544, %2
  %669 = and i1 %668, %552
  br i1 %669, label %670, label %672

670:                                              ; preds = %667
  %671 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %671(ptr noundef nonnull %544) #14
  br label %672

672:                                              ; preds = %670, %667
  call void @BLI_linklist_free(ptr noundef %105, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_index_render(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i32 noundef 0, i64 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0)
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_view(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %6 = load i16, ptr %5, align 8, !tbaa !269
  %7 = or i16 %6, 16384
  store i16 %7, ptr %5, align 8, !tbaa !269
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, i32 noundef 0, i64 noundef %2, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  %8 = load i16, ptr %5, align 8, !tbaa !269
  %9 = and i16 %8, -16385
  store i16 %9, ptr %5, align 8, !tbaa !269
  %10 = load ptr, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_no_deform(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_no_virtual(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef -1, i32 noundef 0, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_physics(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef -1, i32 noundef 1, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_create_derived_no_deform_render(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0, i32 noundef 0, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @editbmesh_get_derived_cage_and_final(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 122
  %15 = load i64, ptr %14, align 8, !tbaa !215
  %16 = icmp eq ptr %13, %1
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %1) #14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !216
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %17
  %26 = or i64 %15, 96
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i64 [ %26, %25 ], [ %15, %20 ]
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %30 = load i32, ptr %29, align 8, !tbaa !216
  %31 = shl i32 %30, 4
  %32 = and i32 %31, 64
  %33 = zext nneg i32 %32 to i64
  %34 = or i64 %28, %33
  %35 = shl i32 %30, 17
  %36 = and i32 %35, 1048576
  %37 = zext nneg i32 %36 to i64
  %38 = or i64 %34, %37
  %39 = and i32 %30, 1
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 36
  %42 = or i64 %38, %41
  br label %43

43:                                               ; preds = %12, %27
  %44 = phi i64 [ %15, %12 ], [ %42, %27 ]
  %45 = or i64 %44, %4
  %46 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !247
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !246
  %52 = and i64 %51, %45
  %53 = icmp eq i64 %52, %45
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %43
  tail call fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %45)
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !243
  store ptr %57, ptr %3, align 8, !tbaa !75
  %58 = load ptr, ptr %46, align 8, !tbaa !247
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 122
  %14 = load i64, ptr %13, align 8, !tbaa !215
  %15 = icmp eq ptr %12, %1
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %1) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !216
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %16
  %25 = or i64 %14, 96
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i64 [ %25, %24 ], [ %14, %19 ]
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !216
  %30 = shl i32 %29, 4
  %31 = and i32 %30, 64
  %32 = zext nneg i32 %31 to i64
  %33 = or i64 %27, %32
  %34 = shl i32 %29, 17
  %35 = and i32 %34, 1048576
  %36 = zext nneg i32 %35 to i64
  %37 = or i64 %33, %36
  %38 = and i32 %29, 1
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 36
  %41 = or i64 %37, %40
  br label %42

42:                                               ; preds = %11, %26
  %43 = phi i64 [ %14, %11 ], [ %41, %26 ]
  %44 = or i64 %43, %3
  %45 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !247
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !246
  %51 = and i64 %50, %44
  %52 = icmp eq i64 %51, %44
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %42
  tail call fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %44)
  br label %54

54:                                               ; preds = %53, %48
  %55 = load ptr, ptr %45, align 8, !tbaa !247
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define dso_local ptr @editbmesh_get_derived_base(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @getEditDerivedBMesh(ptr noundef %1, ptr noundef %0, ptr noundef null) #14
  ret ptr %3
}

declare ptr @getEditDerivedBMesh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @object_get_derived_final(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !270
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  br label %16

10:                                               ; preds = %2
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 5
  br label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  br label %16

16:                                               ; preds = %14, %12, %8
  %17 = phi ptr [ %9, %8 ], [ %13, %12 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local void @mesh_get_mapped_verts_coords(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.MappedUserData, align 8
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 71
  %6 = load ptr, ptr %5, align 8, !tbaa !271
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %12 = zext nneg i32 %2 to i64
  br label %26

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %14 = sext i32 %2 to i64
  %15 = mul nsw i64 %14, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %15, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !272
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %17 = ashr i32 %2, 5
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str.9) #14
  %22 = getelementptr inbounds %struct.MappedUserData, ptr %4, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !274
  %23 = load ptr, ptr %5, align 8, !tbaa !271
  call void %23(ptr noundef %0, ptr noundef nonnull @make_vertexcos__mapFunc, ptr noundef nonnull %4, i32 noundef 0) #14
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %25 = load ptr, ptr %22, align 8, !tbaa !274
  call void %24(ptr noundef %25) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %33

26:                                               ; preds = %10, %26
  %27 = phi i64 [ 0, %10 ], [ %31, %26 ]
  %28 = load ptr, ptr %11, align 8, !tbaa !275
  %29 = getelementptr inbounds [3 x float], ptr %1, i64 %27
  %30 = trunc i64 %27 to i32
  tail call void %28(ptr noundef %0, i32 noundef %30, ptr noundef %29) #14
  %31 = add nuw nsw i64 %27, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %26, !llvm.loop !276

33:                                               ; preds = %26, %8, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @make_vertexcos__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #11 {
  %6 = getelementptr inbounds %struct.MappedUserData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !274
  %8 = ashr i32 %1, 5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !95
  %12 = and i32 %1, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load ptr, ptr %0, align 8, !tbaa !272
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [3 x float], ptr %17, i64 %18
  %20 = load float, ptr %2, align 4, !tbaa !125
  store float %20, ptr %19, align 4, !tbaa !125
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !125
  %23 = getelementptr inbounds float, ptr %19, i64 1
  store float %22, ptr %23, align 4, !tbaa !125
  %24 = getelementptr inbounds float, ptr %2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !125
  %26 = getelementptr inbounds float, ptr %19, i64 2
  store float %25, ptr %26, align 4, !tbaa !125
  %27 = or i32 %11, %13
  store i32 %27, ptr %10, align 4, !tbaa !95
  br label %28

28:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DM_add_tangent_layer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.SGLSLMeshToTangent, align 8
  %3 = alloca %struct.SMikkTSpaceContext, align 8
  %4 = alloca %struct.SMikkTSpaceInterface, align 8
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %6 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %5, i32 noundef 18) #14
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 8) #14
  %12 = load ptr, ptr %9, align 8, !tbaa !62
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 40) #14
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = tail call i32 %15(ptr noundef %0) #14
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call ptr %18(ptr noundef %0) #14
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = tail call ptr %21(ptr noundef %0) #14
  %23 = load ptr, ptr %9, align 8, !tbaa !62
  %24 = tail call ptr %23(ptr noundef %0, i32 noundef 5) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = tail call ptr %28(ptr noundef %0, i32 noundef 14) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %26, %8
  %32 = phi ptr [ null, %8 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !79
  %35 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 18, i32 noundef 1, ptr noundef null, i32 noundef %34) #14
  %36 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %5, i32 noundef 18) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %11, ptr %2, align 8, !tbaa !277
  %37 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 1
  store ptr %13, ptr %37, align 8, !tbaa !279
  %38 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 2
  store ptr %24, ptr %38, align 8, !tbaa !280
  %39 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 3
  store ptr %22, ptr %39, align 8, !tbaa !281
  %40 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 4
  store ptr %19, ptr %40, align 8, !tbaa !282
  %41 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 5
  store ptr %32, ptr %41, align 8, !tbaa !283
  %42 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 6
  store ptr %36, ptr %42, align 8, !tbaa !284
  %43 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 7
  store i32 %16, ptr %43, align 8, !tbaa !285
  %44 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %3, i64 0, i32 1
  store ptr %2, ptr %44, align 8, !tbaa !286
  store ptr %4, ptr %3, align 8, !tbaa !288
  store ptr @GetNumFaces, ptr %4, align 8, !tbaa !289
  %45 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 1
  store ptr @GetNumVertsOfFace, ptr %45, align 8, !tbaa !291
  %46 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 2
  store ptr @GetPosition, ptr %46, align 8, !tbaa !292
  %47 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 4
  store ptr @GetTextureCoordinate, ptr %47, align 8, !tbaa !293
  %48 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 3
  store ptr @GetNormal, ptr %48, align 8, !tbaa !294
  %49 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 5
  store ptr @SetTSpace, ptr %49, align 8, !tbaa !295
  %50 = call i32 @genTangSpaceDefault(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  br label %51

51:                                               ; preds = %26, %1, %31
  ret void
}

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @GetNumFaces(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !286
  %4 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !285
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @GetNumVertsOfFace(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !281
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MFace, ptr %6, i64 %7, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !92
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 3, i32 4
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetPosition(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #12 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !282
  %9 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !281
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %10, i64 %11
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !98
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %8, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !125
  store float %18, ptr %1, align 4, !tbaa !125
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !125
  %21 = getelementptr inbounds float, ptr %1, i64 1
  store float %20, ptr %21, align 4, !tbaa !125
  %22 = getelementptr inbounds float, ptr %17, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !125
  %24 = getelementptr inbounds float, ptr %1, i64 2
  store float %23, ptr %24, align 4, !tbaa !125
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetTextureCoordinate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !280
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.MTFace, ptr %8, i64 %11
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds [4 x [2 x float]], ptr %12, i64 0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !125
  store float %15, ptr %1, align 4, !tbaa !125
  %16 = getelementptr inbounds float, ptr %14, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !125
  %18 = getelementptr inbounds float, ptr %1, i64 1
  store float %17, ptr %18, align 4, !tbaa !125
  br label %37

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !283
  %22 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !281
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds %struct.MFace, ptr %23, i64 %24
  %26 = sext i32 %3 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !98
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [3 x float], ptr %21, i64 %29
  %31 = getelementptr inbounds float, ptr %1, i64 1
  %32 = load float, ptr %30, align 4, !tbaa !125
  %33 = getelementptr inbounds float, ptr %30, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !125
  %35 = getelementptr inbounds float, ptr %30, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !125
  tail call void @map_to_sphere(ptr noundef %1, ptr noundef nonnull %31, float noundef %32, float noundef %34, float noundef %36) #14
  br label %37

37:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetNormal(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !281
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !279
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %4
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds [4 x [3 x i16]], ptr %12, i64 %9, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !124
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 0x3F00002000000000
  store float %19, ptr %1, align 4, !tbaa !125
  %20 = getelementptr inbounds i16, ptr %16, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !124
  %22 = sitofp i16 %21 to float
  %23 = fmul float %22, 0x3F00002000000000
  %24 = getelementptr inbounds float, ptr %1, i64 1
  store float %23, ptr %24, align 4, !tbaa !125
  %25 = getelementptr inbounds i16, ptr %16, i64 2
  %26 = load i16, ptr %25, align 2, !tbaa !124
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 0x3F00002000000000
  %29 = getelementptr inbounds float, ptr %1, i64 2
  store float %28, ptr %29, align 4, !tbaa !125
  br label %91

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !296
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load ptr, ptr %6, align 8, !tbaa !277
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds [3 x float], ptr %36, i64 %9
  %40 = load float, ptr %39, align 4, !tbaa !125
  store float %40, ptr %1, align 4, !tbaa !125
  %41 = getelementptr inbounds float, ptr %39, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !125
  %43 = getelementptr inbounds float, ptr %1, i64 1
  store float %42, ptr %43, align 4, !tbaa !125
  %44 = getelementptr inbounds float, ptr %39, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !125
  %46 = getelementptr inbounds float, ptr %1, i64 2
  store float %45, ptr %46, align 4, !tbaa !125
  br label %91

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !282
  %50 = load i32, ptr %10, align 4, !tbaa !98
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.MVert, ptr %49, i64 %51
  %53 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !101
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.MVert, ptr %49, i64 %55
  %57 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !102
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.MVert, ptr %49, i64 %59
  %61 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !92
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %47
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds %struct.MVert, ptr %49, i64 %65
  %67 = tail call float @normal_quad_v3(ptr noundef %1, ptr noundef %52, ptr noundef %56, ptr noundef %60, ptr noundef nonnull %66) #14
  br label %91

68:                                               ; preds = %47
  %69 = tail call float @normal_tri_v3(ptr noundef %1, ptr noundef %52, ptr noundef %56, ptr noundef %60) #14
  br label %91

70:                                               ; preds = %30
  %71 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !282
  %73 = sext i32 %3 to i64
  %74 = getelementptr inbounds i32, ptr %10, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !98
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.MVert, ptr %72, i64 %76, i32 1
  %78 = load i16, ptr %77, align 2, !tbaa !124
  %79 = sitofp i16 %78 to float
  %80 = fmul float %79, 0x3F00002000000000
  store float %80, ptr %1, align 4, !tbaa !125
  %81 = getelementptr inbounds i16, ptr %77, i64 1
  %82 = load i16, ptr %81, align 2, !tbaa !124
  %83 = sitofp i16 %82 to float
  %84 = fmul float %83, 0x3F00002000000000
  %85 = getelementptr inbounds float, ptr %1, i64 1
  store float %84, ptr %85, align 4, !tbaa !125
  %86 = getelementptr inbounds i16, ptr %77, i64 2
  %87 = load i16, ptr %86, align 2, !tbaa !124
  %88 = sitofp i16 %87 to float
  %89 = fmul float %88, 0x3F00002000000000
  %90 = getelementptr inbounds float, ptr %1, i64 2
  store float %89, ptr %90, align 4, !tbaa !125
  br label %91

91:                                               ; preds = %64, %68, %70, %38, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @SetTSpace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) #11 {
  %6 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !286
  %8 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  %10 = shl nsw i32 %3, 2
  %11 = add nsw i32 %10, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x float], ptr %9, i64 %12
  %14 = load float, ptr %1, align 4, !tbaa !125
  store float %14, ptr %13, align 4, !tbaa !125
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !125
  %17 = getelementptr inbounds float, ptr %13, i64 1
  store float %16, ptr %17, align 4, !tbaa !125
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !125
  %20 = getelementptr inbounds float, ptr %13, i64 2
  store float %19, ptr %20, align 4, !tbaa !125
  %21 = getelementptr inbounds float, ptr %13, i64 3
  store float %2, ptr %21, align 4, !tbaa !125
  ret void
}

declare i32 @genTangSpaceDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_calc_auto_bump_scale(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x ptr], align 16
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [6 x i32], align 16
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = tail call i32 %6(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr %9(ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = tail call ptr %12(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 5) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %496, label %18

18:                                               ; preds = %1
  %19 = icmp sgt i32 %7, 0
  br i1 %19, label %20, label %487

20:                                               ; preds = %18
  %21 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %22 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 2
  %23 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %24 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  %25 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %26 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %27 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %28 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %29 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %30 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %31 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %32 = getelementptr inbounds i32, ptr %4, i64 1
  %33 = getelementptr inbounds i32, ptr %4, i64 2
  %34 = getelementptr inbounds i32, ptr %4, i64 3
  %35 = getelementptr inbounds i32, ptr %4, i64 4
  %36 = getelementptr inbounds i32, ptr %4, i64 5
  %37 = zext nneg i32 %7 to i64
  br label %38

38:                                               ; preds = %20, %482
  %39 = phi i64 [ 0, %20 ], [ %485, %482 ]
  %40 = phi double [ 0.000000e+00, %20 ], [ %484, %482 ]
  %41 = phi i32 [ 0, %20 ], [ %483, %482 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %42 = getelementptr inbounds %struct.MFace, ptr %13, i64 %39
  %43 = getelementptr inbounds %struct.MFace, ptr %13, i64 %39, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !92
  %45 = icmp ne i32 %44, 0
  %46 = load i32, ptr %42, align 4, !tbaa !98
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.MVert, ptr %10, i64 %47
  store ptr %48, ptr %2, align 16, !tbaa !75
  %49 = getelementptr inbounds %struct.MFace, ptr %13, i64 %39, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !101
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.MVert, ptr %10, i64 %51
  store ptr %52, ptr %21, align 8, !tbaa !75
  %53 = getelementptr inbounds %struct.MFace, ptr %13, i64 %39, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !102
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.MVert, ptr %10, i64 %55
  store ptr %56, ptr %22, align 16, !tbaa !75
  %57 = getelementptr inbounds %struct.MTFace, ptr %16, i64 %39
  store ptr %57, ptr %3, align 16, !tbaa !75
  %58 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 1
  store ptr %58, ptr %23, align 8, !tbaa !75
  %59 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 2
  store ptr %59, ptr %24, align 16, !tbaa !75
  br i1 %45, label %60, label %64

60:                                               ; preds = %38
  %61 = zext i32 %44 to i64
  %62 = getelementptr inbounds %struct.MVert, ptr %10, i64 %61
  store ptr %62, ptr %25, align 8, !tbaa !75
  %63 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 3
  store ptr %63, ptr %26, align 8, !tbaa !75
  br label %64

64:                                               ; preds = %60, %38
  %65 = load float, ptr %48, align 4, !tbaa !125
  %66 = load float, ptr %52, align 4, !tbaa !125
  %67 = fcmp oeq float %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = getelementptr inbounds float, ptr %48, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !125
  %71 = getelementptr inbounds float, ptr %52, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !125
  %73 = fcmp oeq float %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = getelementptr inbounds float, ptr %48, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !125
  %77 = getelementptr inbounds float, ptr %52, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !125
  %79 = fcmp oeq float %76, %78
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %64, %68, %74
  %82 = phi i8 [ 0, %68 ], [ 0, %64 ], [ %80, %74 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %160

84:                                               ; preds = %81
  %85 = load float, ptr %56, align 4, !tbaa !125
  %86 = fcmp oeq float %65, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = getelementptr inbounds float, ptr %48, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !125
  %90 = getelementptr inbounds float, ptr %56, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !125
  %92 = fcmp oeq float %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = getelementptr inbounds float, ptr %48, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !125
  %96 = getelementptr inbounds float, ptr %56, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !125
  %98 = fcmp oeq float %95, %97
  %99 = zext i1 %98 to i8
  br label %100

100:                                              ; preds = %84, %87, %93
  %101 = phi i8 [ 0, %87 ], [ 0, %84 ], [ %99, %93 ]
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %160

103:                                              ; preds = %100
  %104 = fcmp oeq float %66, %85
  br i1 %104, label %105, label %118

105:                                              ; preds = %103
  %106 = getelementptr inbounds float, ptr %52, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !125
  %108 = getelementptr inbounds float, ptr %56, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !125
  %110 = fcmp oeq float %107, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = getelementptr inbounds float, ptr %52, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !125
  %114 = getelementptr inbounds float, ptr %56, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !125
  %116 = fcmp oeq float %113, %115
  %117 = zext i1 %116 to i8
  br label %118

118:                                              ; preds = %103, %105, %111
  %119 = phi i8 [ 0, %105 ], [ 0, %103 ], [ %117, %111 ]
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %160

121:                                              ; preds = %118
  %122 = load float, ptr %57, align 4, !tbaa !125
  %123 = load float, ptr %58, align 4, !tbaa !125
  %124 = fcmp oeq float %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = getelementptr inbounds float, ptr %57, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !125
  %128 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 1, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !125
  %130 = fcmp oeq float %127, %129
  %131 = zext i1 %130 to i8
  br label %132

132:                                              ; preds = %121, %125
  %133 = phi i8 [ 0, %121 ], [ %131, %125 ]
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %132
  %136 = load float, ptr %59, align 4, !tbaa !125
  %137 = fcmp oeq float %122, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = getelementptr inbounds float, ptr %57, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !125
  %141 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 2, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !125
  %143 = fcmp oeq float %140, %142
  %144 = zext i1 %143 to i8
  br label %145

145:                                              ; preds = %135, %138
  %146 = phi i8 [ 0, %135 ], [ %144, %138 ]
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = fcmp oeq float %123, %136
  br i1 %149, label %150, label %157

150:                                              ; preds = %148
  %151 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 1, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !125
  %153 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 2, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !125
  %155 = fcmp oeq float %152, %154
  %156 = zext i1 %155 to i8
  br label %157

157:                                              ; preds = %148, %150
  %158 = phi i8 [ 0, %148 ], [ %156, %150 ]
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157, %145, %132, %118, %100, %81
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi i1 [ false, %160 ], [ true, %157 ]
  %163 = phi i8 [ 1, %160 ], [ 0, %157 ]
  %164 = and i1 %45, %162
  br i1 %164, label %165, label %321

165:                                              ; preds = %161
  %166 = load ptr, ptr %27, align 8, !tbaa !75
  %167 = load float, ptr %166, align 4, !tbaa !125
  %168 = fcmp oeq float %167, %65
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = getelementptr inbounds float, ptr %166, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !125
  %172 = getelementptr inbounds float, ptr %48, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !125
  %174 = fcmp oeq float %171, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = getelementptr inbounds float, ptr %166, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !125
  %178 = getelementptr inbounds float, ptr %48, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !125
  %180 = fcmp oeq float %177, %179
  %181 = zext i1 %180 to i8
  br label %182

182:                                              ; preds = %165, %169, %175
  %183 = phi i8 [ 0, %169 ], [ 0, %165 ], [ %181, %175 ]
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %263

185:                                              ; preds = %182
  %186 = fcmp oeq float %167, %66
  br i1 %186, label %187, label %200

187:                                              ; preds = %185
  %188 = getelementptr inbounds float, ptr %166, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !125
  %190 = getelementptr inbounds float, ptr %52, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !125
  %192 = fcmp oeq float %189, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %187
  %194 = getelementptr inbounds float, ptr %166, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !125
  %196 = getelementptr inbounds float, ptr %52, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !125
  %198 = fcmp oeq float %195, %197
  %199 = zext i1 %198 to i8
  br label %200

200:                                              ; preds = %185, %187, %193
  %201 = phi i8 [ 0, %187 ], [ 0, %185 ], [ %199, %193 ]
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %263

203:                                              ; preds = %200
  %204 = load float, ptr %56, align 4, !tbaa !125
  %205 = fcmp oeq float %167, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %203
  %207 = getelementptr inbounds float, ptr %166, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !125
  %209 = getelementptr inbounds float, ptr %56, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !125
  %211 = fcmp oeq float %208, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = getelementptr inbounds float, ptr %166, i64 2
  %214 = load float, ptr %213, align 4, !tbaa !125
  %215 = getelementptr inbounds float, ptr %56, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !125
  %217 = fcmp oeq float %214, %216
  %218 = zext i1 %217 to i8
  br label %219

219:                                              ; preds = %203, %206, %212
  %220 = phi i8 [ 0, %206 ], [ 0, %203 ], [ %218, %212 ]
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %263

222:                                              ; preds = %219
  %223 = load ptr, ptr %28, align 8, !tbaa !75
  %224 = load float, ptr %223, align 4, !tbaa !125
  %225 = load float, ptr %57, align 4, !tbaa !125
  %226 = fcmp oeq float %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = getelementptr inbounds float, ptr %223, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !125
  %230 = getelementptr inbounds float, ptr %57, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !125
  %232 = fcmp oeq float %229, %231
  %233 = zext i1 %232 to i8
  br label %234

234:                                              ; preds = %222, %227
  %235 = phi i8 [ 0, %222 ], [ %233, %227 ]
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %263

237:                                              ; preds = %234
  %238 = load float, ptr %58, align 4, !tbaa !125
  %239 = fcmp oeq float %224, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = getelementptr inbounds float, ptr %223, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !125
  %243 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 1, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !125
  %245 = fcmp oeq float %242, %244
  %246 = zext i1 %245 to i8
  br label %247

247:                                              ; preds = %237, %240
  %248 = phi i8 [ 0, %237 ], [ %246, %240 ]
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %247
  %251 = load float, ptr %59, align 4, !tbaa !125
  %252 = fcmp oeq float %224, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %250
  %254 = getelementptr inbounds float, ptr %223, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !125
  %256 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 2, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !125
  %258 = fcmp oeq float %255, %257
  %259 = zext i1 %258 to i8
  br label %260

260:                                              ; preds = %250, %253
  %261 = phi i8 [ 0, %250 ], [ %259, %253 ]
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %260, %247, %234, %219, %200, %182
  br label %264

264:                                              ; preds = %263, %260
  %265 = phi i8 [ 1, %263 ], [ %163, %260 ]
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %321

267:                                              ; preds = %264
  %268 = load ptr, ptr %29, align 8, !tbaa !75
  %269 = load float, ptr %57, align 4, !tbaa !125
  %270 = load float, ptr %268, align 4, !tbaa !125
  %271 = fsub float %269, %270
  %272 = getelementptr inbounds float, ptr %57, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !125
  %274 = getelementptr inbounds float, ptr %268, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !125
  %276 = fsub float %273, %275
  br label %277

277:                                              ; preds = %267, %311
  %278 = phi i8 [ %265, %267 ], [ %313, %311 ]
  %279 = phi i32 [ 0, %267 ], [ %317, %311 ]
  %280 = phi i8 [ 0, %267 ], [ %312, %311 ]
  %281 = phi float [ %276, %267 ], [ %316, %311 ]
  %282 = phi float [ %271, %267 ], [ %315, %311 ]
  %283 = add nsw i32 %279, 1
  %284 = and i32 %283, 3
  %285 = zext nneg i32 %284 to i64
  %286 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !75
  %288 = sext i32 %279 to i64
  %289 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !75
  %291 = load float, ptr %287, align 4, !tbaa !125
  %292 = load float, ptr %290, align 4, !tbaa !125
  %293 = fsub float %291, %292
  %294 = getelementptr inbounds float, ptr %287, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !125
  %296 = getelementptr inbounds float, ptr %290, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !125
  %298 = fsub float %295, %297
  %299 = fneg float %281
  %300 = fmul float %293, %299
  %301 = tail call float @llvm.fmuladd.f32(float %282, float %298, float %300)
  %302 = icmp eq i32 %279, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %277
  %304 = fcmp olt float %301, 0.000000e+00
  %305 = zext i1 %304 to i8
  br label %311

306:                                              ; preds = %277
  %307 = icmp ne i8 %280, 0
  %308 = fcmp uge float %301, 0.000000e+00
  %309 = xor i1 %307, %308
  %310 = select i1 %309, i8 %278, i8 1
  br label %311

311:                                              ; preds = %306, %303
  %312 = phi i8 [ %305, %303 ], [ %280, %306 ]
  %313 = phi i8 [ %278, %303 ], [ %310, %306 ]
  %314 = icmp eq i8 %313, 0
  %315 = select i1 %314, float %293, float %282
  %316 = select i1 %314, float %298, float %281
  %317 = select i1 %314, i32 %283, i32 %279
  %318 = icmp eq i8 %313, 0
  %319 = icmp slt i32 %317, 4
  %320 = and i1 %318, %319
  br i1 %320, label %277, label %321, !llvm.loop !297

321:                                              ; preds = %311, %264, %161
  %322 = phi i8 [ %265, %264 ], [ %163, %161 ], [ %313, %311 ]
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %482

324:                                              ; preds = %321
  br i1 %45, label %325, label %384

325:                                              ; preds = %324
  %326 = load float, ptr %56, align 4, !tbaa !125
  %327 = fsub float %65, %326
  %328 = getelementptr inbounds float, ptr %48, i64 1
  %329 = load float, ptr %328, align 4, !tbaa !125
  %330 = getelementptr inbounds float, ptr %56, i64 1
  %331 = load float, ptr %330, align 4, !tbaa !125
  %332 = fsub float %329, %331
  %333 = getelementptr inbounds float, ptr %48, i64 2
  %334 = load float, ptr %333, align 4, !tbaa !125
  %335 = getelementptr inbounds float, ptr %56, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !125
  %337 = fsub float %334, %336
  %338 = fmul float %332, %332
  %339 = tail call float @llvm.fmuladd.f32(float %327, float %327, float %338)
  %340 = tail call float @llvm.fmuladd.f32(float %337, float %337, float %339)
  %341 = load ptr, ptr %30, align 8, !tbaa !75
  %342 = load float, ptr %341, align 4, !tbaa !125
  %343 = fsub float %66, %342
  %344 = getelementptr inbounds float, ptr %52, i64 1
  %345 = load float, ptr %344, align 4, !tbaa !125
  %346 = getelementptr inbounds float, ptr %341, i64 1
  %347 = load float, ptr %346, align 4, !tbaa !125
  %348 = fsub float %345, %347
  %349 = getelementptr inbounds float, ptr %52, i64 2
  %350 = load float, ptr %349, align 4, !tbaa !125
  %351 = getelementptr inbounds float, ptr %341, i64 2
  %352 = load float, ptr %351, align 4, !tbaa !125
  %353 = fsub float %350, %352
  %354 = fmul float %348, %348
  %355 = tail call float @llvm.fmuladd.f32(float %343, float %343, float %354)
  %356 = tail call float @llvm.fmuladd.f32(float %353, float %353, float %355)
  %357 = fcmp olt float %356, %340
  br i1 %357, label %384, label %358

358:                                              ; preds = %325
  %359 = fcmp oeq float %340, %356
  br i1 %359, label %360, label %384

360:                                              ; preds = %358
  %361 = load float, ptr %57, align 4, !tbaa !125
  %362 = load float, ptr %59, align 4, !tbaa !125
  %363 = fsub float %361, %362
  %364 = getelementptr inbounds float, ptr %57, i64 1
  %365 = load float, ptr %364, align 4, !tbaa !125
  %366 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 2, i64 1
  %367 = load float, ptr %366, align 4, !tbaa !125
  %368 = fsub float %365, %367
  %369 = fmul float %368, %368
  %370 = tail call float @llvm.fmuladd.f32(float %363, float %363, float %369)
  %371 = load ptr, ptr %31, align 8, !tbaa !75
  %372 = load float, ptr %58, align 4, !tbaa !125
  %373 = load float, ptr %371, align 4, !tbaa !125
  %374 = fsub float %372, %373
  %375 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 1, i64 1
  %376 = load float, ptr %375, align 4, !tbaa !125
  %377 = getelementptr inbounds float, ptr %371, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !125
  %379 = fsub float %376, %378
  %380 = fmul float %379, %379
  %381 = tail call float @llvm.fmuladd.f32(float %374, float %374, float %380)
  %382 = fcmp olt float %381, %370
  %383 = zext i1 %382 to i32
  br label %384

384:                                              ; preds = %324, %325, %358, %360
  %385 = phi i64 [ 1, %324 ], [ 2, %325 ], [ 2, %358 ], [ 2, %360 ]
  %386 = phi i32 [ 0, %324 ], [ 1, %325 ], [ 0, %358 ], [ %383, %360 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  store i32 %386, ptr %4, align 16, !tbaa !95
  %387 = add nuw nsw i32 %386, 1
  store i32 %387, ptr %32, align 4, !tbaa !95
  %388 = or disjoint i32 %386, 2
  store i32 %388, ptr %33, align 8, !tbaa !95
  store i32 %386, ptr %34, align 4, !tbaa !95
  store i32 %388, ptr %35, align 16, !tbaa !95
  %389 = add nuw nsw i32 %386, 3
  %390 = and i32 %389, 3
  store i32 %390, ptr %36, align 4, !tbaa !95
  br label %391

391:                                              ; preds = %384, %476
  %392 = phi i64 [ 0, %384 ], [ %479, %476 ]
  %393 = phi double [ %40, %384 ], [ %478, %476 ]
  %394 = phi i32 [ %41, %384 ], [ %477, %476 ]
  %395 = mul nuw nsw i64 %392, 3
  %396 = getelementptr inbounds [6 x i32], ptr %4, i64 0, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !95
  %398 = sext i32 %397 to i64
  %399 = add nuw nsw i64 %395, 1
  %400 = getelementptr inbounds [6 x i32], ptr %4, i64 0, i64 %399
  %401 = load i32, ptr %400, align 4, !tbaa !95
  %402 = sext i32 %401 to i64
  %403 = add nuw nsw i64 %395, 2
  %404 = getelementptr inbounds [6 x i32], ptr %4, i64 0, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !95
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %402
  %408 = load ptr, ptr %407, align 8, !tbaa !75
  %409 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %398
  %410 = load ptr, ptr %409, align 8, !tbaa !75
  %411 = load float, ptr %408, align 4, !tbaa !125
  %412 = load float, ptr %410, align 4, !tbaa !125
  %413 = fsub float %411, %412
  %414 = getelementptr inbounds float, ptr %408, i64 1
  %415 = load float, ptr %414, align 4, !tbaa !125
  %416 = getelementptr inbounds float, ptr %410, i64 1
  %417 = load float, ptr %416, align 4, !tbaa !125
  %418 = fsub float %415, %417
  %419 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %406
  %420 = load ptr, ptr %419, align 8, !tbaa !75
  %421 = load float, ptr %420, align 4, !tbaa !125
  %422 = fsub float %421, %412
  %423 = getelementptr inbounds float, ptr %420, i64 1
  %424 = load float, ptr %423, align 4, !tbaa !125
  %425 = fsub float %424, %417
  %426 = fneg float %418
  %427 = fmul float %422, %426
  %428 = tail call float @llvm.fmuladd.f32(float %413, float %425, float %427)
  %429 = tail call float @llvm.fabs.f32(float %428)
  %430 = fcmp ogt float %429, 0x3E80000000000000
  br i1 %430, label %431, label %476

431:                                              ; preds = %391
  %432 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %406
  %433 = load ptr, ptr %432, align 8, !tbaa !75
  %434 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %402
  %435 = load ptr, ptr %434, align 8, !tbaa !75
  %436 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %398
  %437 = load ptr, ptr %436, align 8, !tbaa !75
  %438 = load float, ptr %435, align 4, !tbaa !125
  %439 = load float, ptr %437, align 4, !tbaa !125
  %440 = fsub float %438, %439
  %441 = getelementptr inbounds float, ptr %435, i64 1
  %442 = load float, ptr %441, align 4, !tbaa !125
  %443 = getelementptr inbounds float, ptr %437, i64 1
  %444 = load float, ptr %443, align 4, !tbaa !125
  %445 = fsub float %442, %444
  %446 = getelementptr inbounds float, ptr %435, i64 2
  %447 = load float, ptr %446, align 4, !tbaa !125
  %448 = getelementptr inbounds float, ptr %437, i64 2
  %449 = load float, ptr %448, align 4, !tbaa !125
  %450 = fsub float %447, %449
  %451 = load float, ptr %433, align 4, !tbaa !125
  %452 = fsub float %451, %439
  %453 = getelementptr inbounds float, ptr %433, i64 1
  %454 = load float, ptr %453, align 4, !tbaa !125
  %455 = fsub float %454, %444
  %456 = getelementptr inbounds float, ptr %433, i64 2
  %457 = load float, ptr %456, align 4, !tbaa !125
  %458 = fsub float %457, %449
  %459 = fneg float %450
  %460 = fmul float %455, %459
  %461 = tail call float @llvm.fmuladd.f32(float %445, float %458, float %460)
  %462 = fneg float %440
  %463 = fmul float %458, %462
  %464 = tail call float @llvm.fmuladd.f32(float %450, float %452, float %463)
  %465 = fneg float %445
  %466 = fmul float %452, %465
  %467 = tail call float @llvm.fmuladd.f32(float %440, float %455, float %466)
  %468 = fmul float %464, %464
  %469 = tail call float @llvm.fmuladd.f32(float %461, float %461, float %468)
  %470 = tail call float @llvm.fmuladd.f32(float %467, float %467, float %469)
  %471 = tail call float @sqrtf(float noundef %470) #14
  %472 = fdiv float %471, %429
  %473 = add nsw i32 %394, 1
  %474 = fpext float %472 to double
  %475 = fadd double %393, %474
  br label %476

476:                                              ; preds = %431, %391
  %477 = phi i32 [ %473, %431 ], [ %394, %391 ]
  %478 = phi double [ %475, %431 ], [ %393, %391 ]
  %479 = add nuw nsw i64 %392, 1
  %480 = icmp eq i64 %479, %385
  br i1 %480, label %481, label %391, !llvm.loop !298

481:                                              ; preds = %476
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %482

482:                                              ; preds = %481, %321
  %483 = phi i32 [ %477, %481 ], [ %41, %321 ]
  %484 = phi double [ %478, %481 ], [ %40, %321 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  %485 = add nuw nsw i64 %39, 1
  %486 = icmp eq i64 %485, %37
  br i1 %486, label %487, label %38, !llvm.loop !299

487:                                              ; preds = %482, %18
  %488 = phi i32 [ 0, %18 ], [ %483, %482 ]
  %489 = phi double [ 0.000000e+00, %18 ], [ %484, %482 ]
  %490 = icmp sgt i32 %488, 0
  %491 = sitofp i32 %488 to double
  %492 = fdiv double %489, %491
  %493 = fptrunc double %492 to float
  %494 = select i1 %490, float %493, float 1.000000e+00
  %495 = tail call float @sqrtf(float noundef %494) #14
  br label %496

496:                                              ; preds = %1, %487
  %497 = phi float [ %495, %487 ], [ 1.000000e+00, %1 ]
  %498 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 15
  store float %497, ptr %498, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %2, i8 0, i64 376, i1 false)
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = tail call ptr %5(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 15
  %8 = load float, ptr %7, align 4, !tbaa !83
  %9 = fcmp ugt float %8, 0.000000e+00
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @DM_calc_auto_bump_scale(ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !300
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %50, %11
  %16 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !300
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %244

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 7
  %21 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3
  %22 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3, i32 1
  %23 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3, i32 1
  %25 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3, i32 2
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3, i32 3
  %27 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 6
  %28 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2
  %29 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2, i32 1
  %30 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2, i32 1
  %32 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2, i32 2
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %34 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 5
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  %36 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 5
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %38 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 4
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  %40 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 4
  br label %55

41:                                               ; preds = %11, %50
  %42 = phi i64 [ %51, %50 ], [ 0, %11 ]
  %43 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !302
  %45 = icmp eq i32 %44, 18
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = tail call i32 @CustomData_get_layer_index(ptr noundef %6, i32 noundef 18) #14
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @DM_add_tangent_layer(ptr noundef %0)
  br label %50

50:                                               ; preds = %41, %49, %46
  %51 = add nuw nsw i64 %42, 1
  %52 = load i32, ptr %12, align 4, !tbaa !300
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %41, label %15, !llvm.loop !304

55:                                               ; preds = %19, %239
  %56 = phi i64 [ 0, %19 ], [ %240, %239 ]
  %57 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !302
  switch i32 %58, label %239 [
    i32 5, label %59
    i32 6, label %137
    i32 18, label %209
    i32 14, label %223
  ]

59:                                               ; preds = %55
  %60 = load i32, ptr %37, align 8, !tbaa !76
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %101

62:                                               ; preds = %59
  %63 = load ptr, ptr %39, align 8, !tbaa !54
  %64 = tail call ptr %63(ptr noundef %0) #14
  %65 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 4
  %66 = load i8, ptr %65, align 4, !tbaa !123
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %64, i32 noundef 16, ptr noundef nonnull %65) #14
  br label %72

70:                                               ; preds = %62
  %71 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %64, i32 noundef 16) #14
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load i32, ptr %40, align 8, !tbaa !305
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %40, align 8, !tbaa !305
  %76 = icmp eq i32 %73, -1
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %6, align 8, !tbaa !309
  %79 = sext i32 %73 to i64
  %80 = getelementptr inbounds %struct.CustomDataLayer, ptr %78, i64 %79, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !310
  %82 = sext i32 %74 to i64
  %83 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %82
  store ptr %81, ptr %83, align 8, !tbaa !311
  %84 = load ptr, ptr %64, align 8, !tbaa !309
  %85 = getelementptr inbounds %struct.CustomDataLayer, ptr %84, i64 %79, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !312
  br label %90

87:                                               ; preds = %72
  %88 = sext i32 %74 to i64
  %89 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %88
  store ptr null, ptr %89, align 8, !tbaa !311
  br label %90

90:                                               ; preds = %87, %77
  %91 = phi i64 [ %88, %87 ], [ %82, %77 ]
  %92 = phi i32 [ -1, %87 ], [ %86, %77 ]
  %93 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %91, i32 1
  store i32 %92, ptr %93, align 8, !tbaa !313
  %94 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !314
  %96 = sext i32 %74 to i64
  %97 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %96, i32 2
  store i32 %95, ptr %97, align 4, !tbaa !315
  %98 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !316
  %100 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %96, i32 3
  store i32 %99, ptr %100, align 8, !tbaa !317
  br label %239

101:                                              ; preds = %59
  %102 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 4
  %103 = load i8, ptr %102, align 4, !tbaa !123
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %6, i32 noundef 5, ptr noundef nonnull %102) #14
  br label %109

107:                                              ; preds = %101
  %108 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %6, i32 noundef 5) #14
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load i32, ptr %38, align 8, !tbaa !305
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %38, align 8, !tbaa !305
  %113 = icmp eq i32 %110, -1
  br i1 %113, label %123, label %114

114:                                              ; preds = %109
  %115 = load ptr, ptr %6, align 8, !tbaa !309
  %116 = sext i32 %110 to i64
  %117 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %116, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !310
  %119 = sext i32 %111 to i64
  %120 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %119
  store ptr %118, ptr %120, align 8, !tbaa !311
  %121 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %116, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !312
  br label %126

123:                                              ; preds = %109
  %124 = sext i32 %111 to i64
  %125 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %124
  store ptr null, ptr %125, align 8, !tbaa !311
  br label %126

126:                                              ; preds = %123, %114
  %127 = phi i64 [ %124, %123 ], [ %119, %114 ]
  %128 = phi i32 [ -1, %123 ], [ %122, %114 ]
  %129 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %127, i32 1
  store i32 %128, ptr %129, align 8, !tbaa !313
  %130 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !314
  %132 = sext i32 %111 to i64
  %133 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %132, i32 2
  store i32 %131, ptr %133, align 4, !tbaa !315
  %134 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !316
  %136 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %132, i32 3
  store i32 %135, ptr %136, align 8, !tbaa !317
  br label %239

137:                                              ; preds = %55
  %138 = load i32, ptr %33, align 8, !tbaa !76
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = load ptr, ptr %35, align 8, !tbaa !54
  %142 = tail call ptr %141(ptr noundef %0) #14
  %143 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 4
  %144 = load i8, ptr %143, align 4, !tbaa !123
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %142, i32 noundef 17, ptr noundef nonnull %143) #14
  br label %150

148:                                              ; preds = %140
  %149 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %142, i32 noundef 17) #14
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load i32, ptr %36, align 4, !tbaa !318
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %36, align 4, !tbaa !318
  %154 = icmp eq i32 %151, -1
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %6, align 8, !tbaa !309
  %157 = sext i32 %151 to i64
  %158 = getelementptr inbounds %struct.CustomDataLayer, ptr %156, i64 %157, i32 9
  %159 = load ptr, ptr %158, align 8, !tbaa !310
  %160 = sext i32 %152 to i64
  %161 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %160
  store ptr %159, ptr %161, align 8, !tbaa !319
  %162 = load ptr, ptr %142, align 8, !tbaa !309
  %163 = getelementptr inbounds %struct.CustomDataLayer, ptr %162, i64 %157, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !312
  br label %168

165:                                              ; preds = %150
  %166 = sext i32 %152 to i64
  %167 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %166
  store ptr null, ptr %167, align 8, !tbaa !319
  br label %168

168:                                              ; preds = %165, %155
  %169 = phi i64 [ %166, %165 ], [ %160, %155 ]
  %170 = phi i32 [ -1, %165 ], [ %164, %155 ]
  %171 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %169, i32 1
  store i32 %170, ptr %171, align 8, !tbaa !320
  %172 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !314
  %174 = sext i32 %152 to i64
  %175 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %174, i32 2
  store i32 %173, ptr %175, align 4, !tbaa !321
  br label %239

176:                                              ; preds = %137
  %177 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 4
  %178 = load i8, ptr %177, align 4, !tbaa !123
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %177) #14
  br label %184

182:                                              ; preds = %176
  %183 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %6, i32 noundef 6) #14
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = load i32, ptr %34, align 4, !tbaa !318
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %34, align 4, !tbaa !318
  %188 = icmp eq i32 %185, -1
  br i1 %188, label %198, label %189

189:                                              ; preds = %184
  %190 = load ptr, ptr %6, align 8, !tbaa !309
  %191 = sext i32 %185 to i64
  %192 = getelementptr inbounds %struct.CustomDataLayer, ptr %190, i64 %191, i32 9
  %193 = load ptr, ptr %192, align 8, !tbaa !310
  %194 = sext i32 %186 to i64
  %195 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %194
  store ptr %193, ptr %195, align 8, !tbaa !319
  %196 = getelementptr inbounds %struct.CustomDataLayer, ptr %190, i64 %191, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !312
  br label %201

198:                                              ; preds = %184
  %199 = sext i32 %186 to i64
  %200 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %199
  store ptr null, ptr %200, align 8, !tbaa !319
  br label %201

201:                                              ; preds = %198, %189
  %202 = phi i64 [ %199, %198 ], [ %194, %189 ]
  %203 = phi i32 [ -1, %198 ], [ %197, %189 ]
  %204 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %202, i32 1
  store i32 %203, ptr %204, align 8, !tbaa !320
  %205 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 1
  %206 = load i32, ptr %205, align 4, !tbaa !314
  %207 = sext i32 %186 to i64
  %208 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %207, i32 2
  store i32 %206, ptr %208, align 4, !tbaa !321
  br label %239

209:                                              ; preds = %55
  %210 = tail call i32 @CustomData_get_layer_index(ptr noundef %6, i32 noundef 18) #14
  store i32 1, ptr %27, align 8, !tbaa !322
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %219, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %6, align 8, !tbaa !309
  %214 = sext i32 %210 to i64
  %215 = getelementptr inbounds %struct.CustomDataLayer, ptr %213, i64 %214, i32 9
  %216 = load ptr, ptr %215, align 8, !tbaa !310
  store ptr %216, ptr %28, align 8, !tbaa !323
  %217 = getelementptr inbounds %struct.CustomDataLayer, ptr %213, i64 %214, i32 1
  %218 = load i32, ptr %217, align 4, !tbaa !312
  store i32 %218, ptr %29, align 8, !tbaa !324
  br label %220

219:                                              ; preds = %209
  store ptr null, ptr %30, align 8, !tbaa !323
  store i32 -1, ptr %31, align 8, !tbaa !324
  br label %220

220:                                              ; preds = %219, %212
  %221 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !314
  store i32 %222, ptr %32, align 4, !tbaa !325
  br label %239

223:                                              ; preds = %55
  %224 = tail call i32 @CustomData_get_layer_index(ptr noundef %0, i32 noundef 14) #14
  store i32 1, ptr %20, align 4, !tbaa !326
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr %0, align 8, !tbaa !309
  %228 = sext i32 %224 to i64
  %229 = getelementptr inbounds %struct.CustomDataLayer, ptr %227, i64 %228, i32 9
  %230 = load ptr, ptr %229, align 8, !tbaa !310
  store ptr %230, ptr %21, align 8, !tbaa !327
  %231 = getelementptr inbounds %struct.CustomDataLayer, ptr %227, i64 %228, i32 1
  %232 = load i32, ptr %231, align 4, !tbaa !312
  store i32 %232, ptr %22, align 8, !tbaa !328
  br label %234

233:                                              ; preds = %223
  store ptr null, ptr %23, align 8, !tbaa !327
  store i32 -1, ptr %24, align 8, !tbaa !328
  br label %234

234:                                              ; preds = %233, %226
  %235 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !314
  store i32 %236, ptr %25, align 4, !tbaa !329
  %237 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %56, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !316
  store i32 %238, ptr %26, align 8, !tbaa !330
  br label %239

239:                                              ; preds = %55, %126, %90, %220, %234, %168, %201
  %240 = add nuw nsw i64 %56, 1
  %241 = load i32, ptr %16, align 4, !tbaa !300
  %242 = sext i32 %241 to i64
  %243 = icmp slt i64 %240, %242
  br i1 %243, label %55, label %244, !llvm.loop !331

244:                                              ; preds = %239, %15
  ret void
}

declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_set_object_boundbox(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !125
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !125
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !125
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !125
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !125
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !125
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  call void %10(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %16 = call ptr %15(i64 noundef 104, ptr noundef nonnull @.str.10) #14
  store ptr %16, ptr %11, align 8, !tbaa !245
  br label %17

17:                                               ; preds = %14, %2
  %18 = load ptr, ptr %11, align 8, !tbaa !245
  call void @BKE_boundbox_init_from_minmax(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DM_init_origspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 31) #14
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call i32 %5(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call ptr %8(ptr noundef %0) #14
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1, %34
  %12 = phi i32 [ %35, %34 ], [ 0, %1 ]
  %13 = phi ptr [ %36, %34 ], [ %9, %1 ]
  %14 = getelementptr inbounds %struct.MPoly, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !181
  %16 = add i32 %15, -3
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i32, ptr %13, align 4, !tbaa !96
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %3, i64 %20
  %22 = zext nneg i32 %15 to i64
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %31, %23 ]
  %25 = phi ptr [ %21, %18 ], [ %32, %23 ]
  %26 = getelementptr inbounds [4 x [2 x float]], ptr @DM_init_origspace.default_osf, i64 0, i64 %24
  %27 = load float, ptr %26, align 8, !tbaa !125
  store float %27, ptr %25, align 4, !tbaa !125
  %28 = getelementptr inbounds float, ptr %26, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !125
  %30 = getelementptr inbounds float, ptr %25, i64 1
  store float %29, ptr %30, align 4, !tbaa !125
  %31 = add nuw nsw i64 %24, 1
  %32 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %25, i64 1
  %33 = icmp eq i64 %31, %22
  br i1 %33, label %34, label %23, !llvm.loop !237

34:                                               ; preds = %23, %11
  %35 = add nuw nsw i32 %12, 1
  %36 = getelementptr inbounds %struct.MPoly, ptr %13, i64 1
  %37 = icmp eq i32 %35, %6
  br i1 %37, label %38, label %11, !llvm.loop !238

38:                                               ; preds = %34, %1
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %40 = load i32, ptr %39, align 8, !tbaa !84
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_vert_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 55
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call ptr %4(ptr noundef %0) #14
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 0) #14
  store i8 0, ptr %1, align 1, !tbaa !123
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = tail call i32 %11(ptr noundef %0) #14
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 20
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.11) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 36
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  tail call void %17(ptr noundef %0, ptr noundef %15) #14
  store i8 1, ptr %1, align 1, !tbaa !123
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_edge_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr %4(ptr noundef %0) #14
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 3) #14
  store i8 0, ptr %1, align 1, !tbaa !123
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = tail call i32 %11(ptr noundef %0) #14
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.12) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 37
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  tail call void %17(ptr noundef %0, ptr noundef %15) #14
  store i8 1, ptr %1, align 1, !tbaa !123
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_loop_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr %4(ptr noundef %0) #14
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 26) #14
  store i8 0, ptr %1, align 1, !tbaa !123
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = tail call i32 %11(ptr noundef %0) #14
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.13) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  tail call void %17(ptr noundef %0, ptr noundef %15) #14
  store i8 1, ptr %1, align 1, !tbaa !123
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_poly_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = tail call ptr %4(ptr noundef %0) #14
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 25) #14
  store i8 0, ptr %1, align 1, !tbaa !123
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = tail call i32 %11(ptr noundef %0) #14
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.14) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 40
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  tail call void %17(ptr noundef %0, ptr noundef %15) #14
  store i8 1, ptr %1, align 1, !tbaa !123
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_get_tessface_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call ptr %4(ptr noundef %0) #14
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 4) #14
  store i8 0, ptr %1, align 1, !tbaa !123
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = tail call i32 %10(ptr noundef %0) #14
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %15 = zext nneg i32 %11 to i64
  %16 = mul nuw nsw i64 %15, 20
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.15) #14
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 38
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  tail call void %19(ptr noundef %0, ptr noundef %17) #14
  store i8 1, ptr %1, align 1, !tbaa !123
  br label %20

20:                                               ; preds = %8, %13, %2
  %21 = phi ptr [ %6, %2 ], [ %17, %13 ], [ null, %8 ]
  ret ptr %21
}

declare void @CustomData_set_layer_flag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @weightpaint_color(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !165
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call zeroext i8 @do_colorband(ptr noundef nonnull %7, float noundef %2, ptr noundef nonnull %4) #14
  br label %49

11:                                               ; preds = %6, %3
  %12 = fmul float %2, 5.000000e-01
  %13 = fadd float %12, 5.000000e-01
  %14 = fcmp ugt float %2, 2.500000e-01
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  store float 0.000000e+00, ptr %4, align 16, !tbaa !125
  %16 = fmul float %13, %2
  %17 = fmul float %16, 4.000000e+00
  %18 = getelementptr inbounds float, ptr %4, i64 1
  store float %17, ptr %18, align 4, !tbaa !125
  %19 = getelementptr inbounds float, ptr %4, i64 2
  store float %13, ptr %19, align 8, !tbaa !125
  br label %49

20:                                               ; preds = %11
  %21 = fcmp ugt float %2, 5.000000e-01
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  store float 0.000000e+00, ptr %4, align 16, !tbaa !125
  %23 = getelementptr inbounds float, ptr %4, i64 1
  store float %13, ptr %23, align 4, !tbaa !125
  %24 = fadd float %2, -2.500000e-01
  %25 = fneg float %24
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 4.000000e+00, float 1.000000e+00)
  %27 = fmul float %13, %26
  %28 = getelementptr inbounds float, ptr %4, i64 2
  store float %27, ptr %28, align 8, !tbaa !125
  br label %49

29:                                               ; preds = %20
  %30 = fcmp ugt float %2, 7.500000e-01
  br i1 %30, label %37, label %31

31:                                               ; preds = %29
  %32 = fadd float %2, -5.000000e-01
  %33 = fmul float %32, 4.000000e+00
  %34 = fmul float %13, %33
  store float %34, ptr %4, align 16, !tbaa !125
  %35 = getelementptr inbounds float, ptr %4, i64 1
  store float %13, ptr %35, align 4, !tbaa !125
  %36 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %36, align 8, !tbaa !125
  br label %49

37:                                               ; preds = %29
  %38 = fcmp ugt float %2, 1.000000e+00
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  store float %13, ptr %4, align 16, !tbaa !125
  %40 = fadd float %2, -7.500000e-01
  %41 = fneg float %40
  %42 = tail call float @llvm.fmuladd.f32(float %41, float 4.000000e+00, float 1.000000e+00)
  %43 = fmul float %13, %42
  %44 = getelementptr inbounds float, ptr %4, i64 1
  store float %43, ptr %44, align 4, !tbaa !125
  %45 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %45, align 8, !tbaa !125
  br label %49

46:                                               ; preds = %37
  store float 1.000000e+00, ptr %4, align 16, !tbaa !125
  %47 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %47, align 4, !tbaa !125
  %48 = getelementptr inbounds float, ptr %4, i64 2
  store float 1.000000e+00, ptr %48, align 8, !tbaa !125
  br label %49

49:                                               ; preds = %46, %39, %31, %22, %15, %9
  %50 = load float, ptr %4, align 16, !tbaa !125
  %51 = fmul float %50, 2.550000e+02
  %52 = fptoui float %51 to i8
  store i8 %52, ptr %0, align 1, !tbaa !123
  %53 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !125
  %55 = fmul float %54, 2.550000e+02
  %56 = fptoui float %55 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %56, ptr %57, align 1, !tbaa !123
  %58 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %59 = load float, ptr %58, align 8, !tbaa !125
  %60 = fmul float %59, 2.550000e+02
  %61 = fptoui float %60 to i8
  %62 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %61, ptr %62, align 1, !tbaa !123
  %63 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 -1, ptr %63, align 1, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_objdef_selected_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @defvert_is_weight_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #2

declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #2

declare void @BKE_object_sculpt_modifiers_changed(ptr noundef) local_unnamed_addr #2

declare void @BKE_editmesh_free_derivedmesh(ptr noundef) local_unnamed_addr #2

declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @modifiers_clearErrors(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_getLastPreview(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @modifiers_calcDataMasks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_orco_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call i32 %8(ptr noundef %2) #14
  %10 = icmp eq ptr %3, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %13 = sext i32 %9 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.27) #14
  store i32 1, ptr %6, align 4, !tbaa !95
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = tail call i32 %17(ptr noundef nonnull %3) #14
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 77
  %22 = load ptr, ptr %21, align 8, !tbaa !231
  tail call void %22(ptr noundef nonnull %3, ptr noundef %15) #14
  br label %28

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %25 = load ptr, ptr %24, align 8, !tbaa !231
  tail call void %25(ptr noundef %2, ptr noundef %15) #14
  br label %28

26:                                               ; preds = %5
  %27 = call fastcc ptr @get_orco_coords_dm(ptr noundef %0, ptr noundef %1, i32 noundef %4, ptr noundef nonnull %6)
  br label %28

28:                                               ; preds = %20, %23, %26
  %29 = phi ptr [ %15, %20 ], [ %15, %23 ], [ %27, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31

31:                                               ; preds = %28
  %32 = icmp eq i32 %4, 14
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !155
  tail call void @BKE_mesh_orco_verts_transform(ptr noundef %35, ptr noundef nonnull %29, i32 noundef %9, i32 noundef 0) #14
  br label %36

36:                                               ; preds = %33, %31
  %37 = icmp eq i32 %4, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = tail call ptr %40(ptr noundef %2) #14
  br label %44

42:                                               ; preds = %36
  %43 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef %4) #14
  br label %44

44:                                               ; preds = %38, %42
  %45 = phi ptr [ %41, %38 ], [ %43, %42 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !77
  %50 = tail call ptr @CustomData_add_layer(ptr noundef %2, i32 noundef %4, i32 noundef 1, ptr noundef null, i32 noundef %49) #14
  br i1 %37, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = tail call ptr %53(ptr noundef %2) #14
  br label %57

55:                                               ; preds = %47
  %56 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef %4) #14
  br label %57

57:                                               ; preds = %55, %51, %44
  %58 = phi ptr [ %45, %44 ], [ %54, %51 ], [ %56, %55 ]
  %59 = sext i32 %9 to i64
  %60 = mul nsw i64 %59, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr nonnull align 4 %29, i64 %60, i1 false)
  %61 = load i32, ptr %6, align 4, !tbaa !95
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %64(ptr noundef nonnull %29) #14
  br label %65

65:                                               ; preds = %57, %63, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret void
}

declare void @modwrap_deformVertsEM(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @modwrap_applyModifierEM(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_orco_coords_dm(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  store i32 0, ptr %3, align 4, !tbaa !95
  switch i32 %2, label %58 [
    i32 14, label %6
    i32 23, label %43
  ]

6:                                                ; preds = %4
  store i32 1, ptr %3, align 4, !tbaa !95
  %7 = icmp eq ptr %1, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %10 = load ptr, ptr %1, align 8, !tbaa !184
  %11 = load i32, ptr %10, align 8, !tbaa !185
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 12
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str.28) #14
  %15 = load ptr, ptr %1, align 8, !tbaa !184
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %16, align 4, !tbaa !187
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !189
  %18 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !190
  %19 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !191
  store ptr %20, ptr %5, align 8, !tbaa !123
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #14
  %21 = load ptr, ptr %18, align 8, !tbaa !190
  %22 = call ptr %21(ptr noundef nonnull %5) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %8, %24
  %25 = phi i64 [ %38, %24 ], [ 0, %8 ]
  %26 = phi ptr [ %37, %24 ], [ %22, %8 ]
  %27 = getelementptr inbounds [3 x float], ptr %14, i64 %25
  %28 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !125
  store float %29, ptr %27, align 4, !tbaa !125
  %30 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !125
  %32 = getelementptr inbounds float, ptr %27, i64 1
  store float %31, ptr %32, align 4, !tbaa !125
  %33 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !125
  %35 = getelementptr inbounds float, ptr %27, i64 2
  store float %34, ptr %35, align 4, !tbaa !125
  %36 = load ptr, ptr %18, align 8, !tbaa !190
  %37 = call ptr %36(ptr noundef nonnull %5) #14
  %38 = add nuw i64 %25, 1
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %24, !llvm.loop !235

40:                                               ; preds = %24, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %58

41:                                               ; preds = %6
  %42 = tail call ptr @BKE_mesh_orco_verts_get(ptr noundef %0) #14
  br label %58

43:                                               ; preds = %4
  %44 = icmp eq ptr %1, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %43
  %46 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef 22) #14
  %47 = tail call ptr @BKE_key_from_object(ptr noundef %0) #14
  %48 = getelementptr inbounds %struct.ClothModifierData, ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !263
  %50 = getelementptr inbounds %struct.ClothSimSettings, ptr %49, i64 0, i32 37
  %51 = load i16, ptr %50, align 2, !tbaa !265
  %52 = sext i16 %51 to i32
  %53 = tail call ptr @BKE_keyblock_from_key(ptr noundef %47, i32 noundef %52) #14
  %54 = getelementptr inbounds %struct.KeyBlock, ptr %53, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !141
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %45, %43
  br label %58

58:                                               ; preds = %45, %4, %57, %41, %40
  %59 = phi ptr [ %14, %40 ], [ %42, %41 ], [ null, %57 ], [ %55, %45 ], [ null, %4 ]
  ret ptr %59
}

declare void @BKE_mesh_orco_verts_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_mesh_orco_verts_get(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_from_key(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_editmesh_statvis_calc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CDDM_calc_normals_mapping_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_sculpt_update_mesh_elements(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @modifier_supportsMapping(ptr noundef) local_unnamed_addr #2

declare void @range_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @modifier_freeTemporaryData(ptr noundef) local_unnamed_addr #2

declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { cold }

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
!34 = !{!35, !37, i64 1168}
!35 = !{!"DerivedMesh", !36, i64 0, !36, i64 200, !36, i64 400, !36, i64 600, !36, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!36 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !37, i64 1176}
!43 = !{!35, !37, i64 1184}
!44 = !{!35, !37, i64 1192}
!45 = !{!35, !37, i64 1200}
!46 = !{!35, !37, i64 1248}
!47 = !{!35, !37, i64 1256}
!48 = !{!35, !37, i64 1264}
!49 = !{!35, !37, i64 1272}
!50 = !{!35, !37, i64 1280}
!51 = !{!35, !37, i64 1360}
!52 = !{!35, !37, i64 1368}
!53 = !{!35, !37, i64 1376}
!54 = !{!35, !37, i64 1384}
!55 = !{!35, !37, i64 1392}
!56 = !{!35, !37, i64 1288}
!57 = !{!35, !37, i64 1296}
!58 = !{!35, !37, i64 1304}
!59 = !{!35, !37, i64 1312}
!60 = !{!35, !37, i64 1320}
!61 = !{!35, !37, i64 1328}
!62 = !{!35, !37, i64 1336}
!63 = !{!35, !37, i64 1352}
!64 = !{!35, !37, i64 1344}
!65 = !{!35, !37, i64 1104}
!66 = !{!35, !37, i64 1208}
!67 = !{!35, !37, i64 1112}
!68 = !{!35, !37, i64 1216}
!69 = !{!35, !37, i64 1120}
!70 = !{!35, !37, i64 1224}
!71 = !{!35, !37, i64 1128}
!72 = !{!35, !37, i64 1232}
!73 = !{!35, !37, i64 1136}
!74 = !{!35, !37, i64 1240}
!75 = !{!37, !37, i64 0}
!76 = !{!35, !40, i64 1048}
!77 = !{!35, !40, i64 1000}
!78 = !{!35, !40, i64 1004}
!79 = !{!35, !40, i64 1008}
!80 = !{!35, !40, i64 1012}
!81 = !{!35, !40, i64 1016}
!82 = !{!35, !40, i64 1020}
!83 = !{!35, !41, i64 1052}
!84 = !{!35, !40, i64 1056}
!85 = !{!86, !86, i64 0}
!86 = !{!"long", !38, i64 0}
!87 = !{!35, !38, i64 1072}
!88 = !{!35, !37, i64 1064}
!89 = !{!35, !40, i64 1060}
!90 = !{!35, !37, i64 1080}
!91 = !{!35, !37, i64 1096}
!92 = !{!93, !40, i64 12}
!93 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !94, i64 16, !38, i64 18, !38, i64 19}
!94 = !{!"short", !38, i64 0}
!95 = !{!40, !40, i64 0}
!96 = !{!97, !40, i64 0}
!97 = !{!"MPoly", !40, i64 0, !40, i64 4, !94, i64 8, !38, i64 10, !38, i64 11}
!98 = !{!93, !40, i64 0}
!99 = !{!100, !40, i64 0}
!100 = !{!"MLoop", !40, i64 0, !40, i64 4}
!101 = !{!93, !40, i64 4}
!102 = !{!93, !40, i64 8}
!103 = distinct !{!103, !104, !105}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = distinct !{!106, !104, !105}
!107 = !{!108, !40, i64 2100}
!108 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !109, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !94, i64 2084, !94, i64 2086, !94, i64 2088, !38, i64 2090, !94, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!109 = !{!"ListBase", !37, i64 0, !37, i64 8}
!110 = !{!111, !40, i64 456}
!111 = !{!"Object", !112, i64 0, !37, i64 120, !37, i64 128, !94, i64 136, !94, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !113, i64 312, !37, i64 360, !109, i64 368, !109, i64 384, !109, i64 400, !109, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !94, i64 948, !94, i64 950, !94, i64 952, !94, i64 954, !94, i64 956, !94, i64 958, !94, i64 960, !94, i64 962, !94, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !94, i64 1036, !94, i64 1038, !94, i64 1040, !38, i64 1042, !38, i64 1043, !94, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !109, i64 1056, !109, i64 1072, !109, i64 1088, !109, i64 1104, !41, i64 1120, !94, i64 1124, !94, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !94, i64 1162, !38, i64 1164, !109, i64 1176, !109, i64 1192, !109, i64 1208, !109, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !94, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !86, i64 1304, !86, i64 1312, !40, i64 1320, !40, i64 1324, !109, i64 1328, !109, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !109, i64 1400, !37, i64 1416}
!112 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !94, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!113 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !94, i64 16, !94, i64 18, !94, i64 20, !94, i64 22, !94, i64 24, !94, i64 26, !94, i64 28, !94, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!114 = distinct !{!114, !104, !105}
!115 = !{!116, !37, i64 920}
!116 = !{!"Material", !112, i64 0, !37, i64 120, !94, i64 128, !94, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !117, i64 224, !118, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !94, i64 356, !94, i64 358, !94, i64 360, !38, i64 362, !38, i64 363, !41, i64 364, !41, i64 368, !94, i64 372, !94, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !94, i64 392, !94, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !94, i64 412, !94, i64 414, !94, i64 416, !94, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !38, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !40, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !94, i64 544, !94, i64 546, !94, i64 548, !38, i64 550, !38, i64 551, !94, i64 552, !94, i64 554, !41, i64 556, !41, i64 560, !38, i64 564, !41, i64 580, !41, i64 584, !94, i64 588, !94, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !94, i64 612, !94, i64 614, !41, i64 616, !41, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !94, i64 820, !94, i64 822, !38, i64 824, !38, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !94, i64 876, !94, i64 878, !40, i64 880, !94, i64 884, !94, i64 886, !38, i64 888, !94, i64 904, !94, i64 906, !94, i64 908, !94, i64 910, !94, i64 912, !38, i64 914, !37, i64 920, !109, i64 928}
!117 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !94, i64 64, !94, i64 66, !94, i64 68, !94, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!118 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!119 = !{!116, !94, i64 908}
!120 = !{!121, !37, i64 8}
!121 = !{!"TexPaintSlot", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!122 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75, i64 24, i64 8, !75, i64 32, i64 66, !123, i64 98, i64 2, !124, i64 100, i64 4, !95, i64 104, i64 4, !95, i64 108, i64 4, !95, i64 112, i64 8, !75, i64 120, i64 8, !75, i64 128, i64 8, !75, i64 136, i64 8, !75, i64 144, i64 8, !75, i64 152, i64 8, !75, i64 160, i64 8, !75, i64 168, i64 8, !75, i64 176, i64 8, !75, i64 184, i64 8, !75, i64 192, i64 8, !75, i64 200, i64 8, !75, i64 208, i64 8, !75, i64 216, i64 8, !75, i64 224, i64 8, !75, i64 232, i64 8, !75, i64 240, i64 8, !75, i64 248, i64 8, !75, i64 256, i64 8, !75, i64 264, i64 8, !75, i64 272, i64 8, !75, i64 280, i64 8, !75, i64 288, i64 164, !123, i64 452, i64 4, !95, i64 456, i64 4, !95, i64 460, i64 4, !95, i64 464, i64 8, !75, i64 472, i64 8, !75, i64 480, i64 8, !75, i64 488, i64 164, !123, i64 652, i64 4, !95, i64 656, i64 4, !95, i64 660, i64 4, !95, i64 664, i64 8, !75, i64 672, i64 8, !75, i64 680, i64 8, !75, i64 688, i64 164, !123, i64 852, i64 4, !95, i64 856, i64 4, !95, i64 860, i64 4, !95, i64 864, i64 8, !75, i64 872, i64 8, !75, i64 880, i64 8, !75, i64 888, i64 164, !123, i64 1052, i64 4, !95, i64 1056, i64 4, !95, i64 1060, i64 4, !95, i64 1064, i64 8, !75, i64 1072, i64 8, !75, i64 1080, i64 8, !75, i64 1088, i64 164, !123, i64 1252, i64 4, !95, i64 1256, i64 4, !95, i64 1260, i64 4, !95, i64 1264, i64 8, !75, i64 1272, i64 8, !75, i64 1280, i64 4, !95, i64 1284, i64 4, !95, i64 1288, i64 4, !95, i64 1292, i64 4, !95, i64 1296, i64 4, !95, i64 1300, i64 4, !95, i64 1304, i64 4, !95, i64 1308, i64 12, !123, i64 1320, i64 12, !123, i64 1332, i64 12, !123, i64 1344, i64 4, !95, i64 1348, i64 2, !124, i64 1350, i64 2, !124, i64 1352, i64 4, !125, i64 1356, i64 4, !95, i64 1360, i64 1, !123, i64 1361, i64 1, !123, i64 1362, i64 1, !123, i64 1363, i64 1, !123, i64 1364, i64 1, !123, i64 1365, i64 1, !123, i64 1366, i64 2, !124, i64 1368, i64 8, !75}
!123 = !{!38, !38, i64 0}
!124 = !{!94, !94, i64 0}
!125 = !{!41, !41, i64 0}
!126 = !{!127, !40, i64 1280}
!127 = !{!"Mesh", !112, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !36, i64 280, !36, i64 480, !36, i64 680, !36, i64 880, !36, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !40, i64 1344, !94, i64 1348, !94, i64 1350, !41, i64 1352, !40, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !94, i64 1366, !37, i64 1368}
!128 = !{!127, !40, i64 1284}
!129 = !{!127, !40, i64 1300}
!130 = !{!127, !40, i64 1296}
!131 = !{!127, !40, i64 1288}
!132 = !{!127, !38, i64 1360}
!133 = !{!127, !37, i64 144}
!134 = !{!111, !94, i64 1266}
!135 = !{!136, !40, i64 36}
!136 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !94, i64 24, !94, i64 26, !94, i64 28, !94, i64 30, !40, i64 32, !40, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !41, i64 176, !41, i64 180}
!137 = !{!35, !37, i64 0}
!138 = !{!139, !40, i64 28}
!139 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96}
!140 = distinct !{!140, !104, !105}
!141 = !{!136, !37, i64 40}
!142 = !{!136, !40, i64 32}
!143 = distinct !{!143, !104, !105}
!144 = distinct !{!144, !104, !105}
!145 = distinct !{!145, !104, !105}
!146 = distinct !{!146, !104, !105}
!147 = !{!127, !37, i64 184}
!148 = !{!127, !37, i64 168}
!149 = !{!150, !40, i64 100}
!150 = !{!"Key", !112, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !40, i64 168, !40, i64 172, !109, i64 176, !37, i64 192, !37, i64 200, !94, i64 208, !94, i64 210, !94, i64 212, !94, i64 214, !41, i64 216, !40, i64 220}
!151 = !{!127, !37, i64 160}
!152 = !{!127, !40, i64 1292}
!153 = !{!150, !40, i64 168}
!154 = distinct !{!154, !104, !105}
!155 = !{!111, !37, i64 296}
!156 = !{!157, !40, i64 16}
!157 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!158 = !{!157, !37, i64 96}
!159 = !{!157, !40, i64 20}
!160 = !{!161, !37, i64 160}
!161 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !40, i64 64, !40, i64 68, !40, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!162 = !{!161, !40, i64 68}
!163 = !{!35, !37, i64 1680}
!164 = distinct !{!164, !104, !105}
!165 = !{!166, !37, i64 0}
!166 = !{!"DMWeightColorInfo", !37, i64 0, !37, i64 8}
!167 = !{!166, !37, i64 8}
!168 = !{!169, !37, i64 64}
!169 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !40, i64 16, !37, i64 24, !40, i64 32, !37, i64 40, !37, i64 48, !86, i64 56, !37, i64 64, !40, i64 72, !37, i64 80, !40, i64 88, !94, i64 92, !94, i64 94, !37, i64 96, !40, i64 104}
!170 = distinct !{!170, !104, !105}
!171 = distinct !{!171, !104, !105}
!172 = !{!111, !94, i64 1126}
!173 = !{!174, !40, i64 8}
!174 = !{!"MDeformVert", !37, i64 0, !40, i64 8, !40, i64 12}
!175 = !{!174, !37, i64 0}
!176 = !{!177, !40, i64 0}
!177 = !{!"MDeformWeight", !40, i64 0, !41, i64 4}
!178 = !{!177, !41, i64 4}
!179 = distinct !{!179, !104, !105}
!180 = distinct !{!180, !104, !105}
!181 = !{!97, !40, i64 4}
!182 = distinct !{!182, !104, !105}
!183 = distinct !{!183, !104, !105}
!184 = !{!169, !37, i64 0}
!185 = !{!186, !40, i64 0}
!186 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !36, i64 144, !36, i64 344, !36, i64 544, !36, i64 744, !94, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !109, i64 960, !37, i64 976, !109, i64 984, !37, i64 1000}
!187 = !{!188, !38, i64 60}
!188 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!189 = !{!188, !37, i64 40}
!190 = !{!188, !37, i64 48}
!191 = !{!186, !37, i64 32}
!192 = distinct !{!192, !104, !105}
!193 = !{!161, !40, i64 72}
!194 = !{!195, !37, i64 168}
!195 = !{!"Scene", !112, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !109, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !94, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !196, i64 280, !205, i64 4264, !109, i64 4296, !109, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !94, i64 4376, !94, i64 4378, !40, i64 4380, !109, i64 4384, !206, i64 4400, !207, i64 4416, !210, i64 4600, !37, i64 4608, !211, i64 4616, !37, i64 4640, !86, i64 4648, !86, i64 4656, !198, i64 4664, !199, i64 4824, !212, i64 4888, !37, i64 4952}
!196 = !{!"RenderData", !197, i64 0, !37, i64 248, !37, i64 256, !200, i64 264, !201, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !94, i64 432, !94, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !94, i64 456, !94, i64 458, !94, i64 460, !94, i64 462, !94, i64 464, !94, i64 466, !40, i64 468, !94, i64 472, !94, i64 474, !94, i64 476, !94, i64 478, !94, i64 480, !94, i64 482, !40, i64 484, !40, i64 488, !94, i64 492, !94, i64 494, !40, i64 496, !40, i64 500, !94, i64 504, !94, i64 506, !94, i64 508, !94, i64 510, !94, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !94, i64 528, !94, i64 530, !94, i64 532, !94, i64 534, !94, i64 536, !94, i64 538, !94, i64 540, !94, i64 542, !202, i64 544, !202, i64 560, !203, i64 576, !109, i64 592, !94, i64 608, !94, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !94, i64 648, !94, i64 650, !94, i64 652, !94, i64 654, !94, i64 656, !94, i64 658, !41, i64 660, !41, i64 664, !94, i64 668, !94, i64 670, !41, i64 672, !41, i64 676, !38, i64 680, !40, i64 1704, !94, i64 1708, !94, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !94, i64 2524, !94, i64 2526, !41, i64 2528, !41, i64 2532, !94, i64 2536, !94, i64 2538, !41, i64 2540, !94, i64 2544, !94, i64 2546, !40, i64 2548, !94, i64 2552, !94, i64 2554, !94, i64 2556, !94, i64 2558, !41, i64 2560, !41, i64 2564, !37, i64 2568, !40, i64 2576, !41, i64 2580, !38, i64 2584, !204, i64 2616, !40, i64 3976, !40, i64 3980}
!197 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !94, i64 8, !94, i64 10, !41, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !198, i64 24, !199, i64 184}
!198 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!199 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!200 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !94, i64 48, !94, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!201 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!202 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!203 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!204 = !{!"BakeData", !197, i64 0, !38, i64 248, !94, i64 1272, !94, i64 1274, !94, i64 1276, !94, i64 1278, !41, i64 1280, !41, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!205 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !94, i64 20, !94, i64 22, !41, i64 24, !41, i64 28}
!206 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!207 = !{!"GameData", !206, i64 0, !94, i64 16, !94, i64 18, !94, i64 20, !94, i64 22, !94, i64 24, !94, i64 26, !94, i64 28, !94, i64 30, !94, i64 32, !38, i64 34, !208, i64 40, !94, i64 64, !94, i64 66, !41, i64 68, !209, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !94, i64 140, !94, i64 142, !94, i64 144, !94, i64 146, !94, i64 148, !94, i64 150, !94, i64 152, !94, i64 154, !94, i64 156, !94, i64 158, !94, i64 160, !94, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!208 = !{!"GameDome", !94, i64 0, !94, i64 2, !94, i64 4, !94, i64 6, !41, i64 8, !41, i64 12, !37, i64 16}
!209 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !94, i64 52, !94, i64 54}
!210 = !{!"UnitSettings", !41, i64 0, !38, i64 4, !38, i64 5, !94, i64 6}
!211 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!212 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!213 = !{!214, !37, i64 32}
!214 = !{!"Base", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !94, i64 28, !94, i64 30, !37, i64 32}
!215 = !{!111, !86, i64 1312}
!216 = !{!111, !40, i64 432}
!217 = !{!195, !37, i64 264}
!218 = !{!219, !38, i64 445}
!219 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !94, i64 44, !94, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !41, i64 52, !94, i64 56, !38, i64 58, !38, i64 59, !220, i64 64, !222, i64 168, !41, i64 336, !41, i64 340, !94, i64 344, !94, i64 346, !38, i64 348, !38, i64 349, !94, i64 350, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !94, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !94, i64 434, !94, i64 436, !94, i64 438, !94, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !94, i64 464, !94, i64 466, !40, i64 468, !41, i64 472, !41, i64 476, !223, i64 480, !224, i64 608}
!220 = !{!"ImagePaintSettings", !221, i64 0, !94, i64 40, !94, i64 42, !94, i64 44, !94, i64 46, !38, i64 48, !40, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !41, i64 100}
!221 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!222 = !{!"ParticleEditSettings", !94, i64 0, !94, i64 2, !94, i64 4, !94, i64 6, !38, i64 8, !37, i64 120, !41, i64 128, !41, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !37, i64 160}
!223 = !{!"UnifiedPaintSettings", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !38, i64 16, !38, i64 28, !40, i64 40, !38, i64 44, !41, i64 52, !40, i64 56, !40, i64 60, !38, i64 64, !38, i64 65, !41, i64 72, !38, i64 76, !40, i64 84, !41, i64 88, !38, i64 92, !38, i64 100, !40, i64 108, !37, i64 112, !41, i64 120, !40, i64 124}
!224 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 21, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!225 = !{!219, !38, i64 446}
!226 = !{!219, !38, i64 444}
!227 = !{!127, !40, i64 1344}
!228 = !{!127, !94, i64 1350}
!229 = !{!127, !41, i64 1352}
!230 = !{!161, !37, i64 144}
!231 = !{!35, !37, i64 1536}
!232 = !{!161, !37, i64 104}
!233 = !{!234, !86, i64 8}
!234 = !{!"CDMaskLink", !37, i64 0, !86, i64 8}
!235 = distinct !{!235, !104, !105}
!236 = !{!161, !37, i64 128}
!237 = distinct !{!237, !104, !105}
!238 = distinct !{!238, !104, !105}
!239 = !{!157, !37, i64 0}
!240 = !{!234, !37, i64 0}
!241 = distinct !{!241, !104, !105}
!242 = !{!35, !37, i64 1088}
!243 = !{!169, !37, i64 40}
!244 = !{!35, !37, i64 1520}
!245 = !{!111, !37, i64 264}
!246 = !{!169, !86, i64 56}
!247 = !{!169, !37, i64 48}
!248 = !{!111, !37, i64 1296}
!249 = !{!111, !37, i64 1288}
!250 = !{!111, !86, i64 1304}
!251 = !{!111, !37, i64 128}
!252 = !{!219, !37, i64 16}
!253 = !{!254, !38, i64 113}
!254 = !{!"MultiresModifierData", !157, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!255 = !{!256, !37, i64 72}
!256 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !40, i64 148, !37, i64 152, !40, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !40, i64 228}
!257 = !{!111, !37, i64 416}
!258 = !{!161, !37, i64 176}
!259 = distinct !{!259, !104, !105}
!260 = !{!261, !40, i64 40}
!261 = !{!"Sculpt", !221, i64 0, !40, i64 40, !38, i64 44, !41, i64 56, !40, i64 60, !41, i64 64, !41, i64 68, !37, i64 72, !37, i64 80}
!262 = !{!161, !37, i64 184}
!263 = !{!264, !37, i64 128}
!264 = !{!"ClothModifierData", !157, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !109, i64 152}
!265 = !{!266, !94, i64 150}
!266 = !{!"ClothSimSettings", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !94, i64 140, !94, i64 142, !94, i64 144, !94, i64 146, !94, i64 148, !94, i64 150, !94, i64 152, !94, i64 154, !38, i64 156, !37, i64 160}
!267 = distinct !{!267, !104, !105}
!268 = distinct !{!268, !104, !105}
!269 = !{!111, !94, i64 952}
!270 = !{!127, !37, i64 272}
!271 = !{!35, !37, i64 1488}
!272 = !{!273, !37, i64 0}
!273 = !{!"", !37, i64 0, !37, i64 8}
!274 = !{!273, !37, i64 8}
!275 = !{!35, !37, i64 1528}
!276 = distinct !{!276, !104, !105}
!277 = !{!278, !37, i64 0}
!278 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !40, i64 56}
!279 = !{!278, !37, i64 8}
!280 = !{!278, !37, i64 16}
!281 = !{!278, !37, i64 24}
!282 = !{!278, !37, i64 32}
!283 = !{!278, !37, i64 40}
!284 = !{!278, !37, i64 48}
!285 = !{!278, !40, i64 56}
!286 = !{!287, !37, i64 8}
!287 = !{!"SMikkTSpaceContext", !37, i64 0, !37, i64 8}
!288 = !{!287, !37, i64 0}
!289 = !{!290, !37, i64 0}
!290 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!291 = !{!290, !37, i64 8}
!292 = !{!290, !37, i64 16}
!293 = !{!290, !37, i64 32}
!294 = !{!290, !37, i64 24}
!295 = !{!290, !37, i64 40}
!296 = !{!93, !38, i64 19}
!297 = distinct !{!297, !104, !105}
!298 = distinct !{!298, !104, !105}
!299 = distinct !{!299, !104, !105}
!300 = !{!301, !40, i64 2560}
!301 = !{!"GPUVertexAttribs", !38, i64 0, !40, i64 2560}
!302 = !{!303, !40, i64 0}
!303 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !38, i64 16}
!304 = distinct !{!304, !104, !105}
!305 = !{!306, !40, i64 360}
!306 = !{!"DMVertexAttribs", !38, i64 0, !38, i64 192, !307, i64 320, !308, i64 336, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372}
!307 = !{!"", !37, i64 0, !40, i64 8, !40, i64 12}
!308 = !{!"", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!309 = !{!36, !37, i64 0}
!310 = !{!139, !37, i64 96}
!311 = !{!308, !37, i64 0}
!312 = !{!139, !40, i64 4}
!313 = !{!308, !40, i64 8}
!314 = !{!303, !40, i64 4}
!315 = !{!308, !40, i64 12}
!316 = !{!303, !40, i64 8}
!317 = !{!308, !40, i64 16}
!318 = !{!306, !40, i64 364}
!319 = !{!307, !37, i64 0}
!320 = !{!307, !40, i64 8}
!321 = !{!307, !40, i64 12}
!322 = !{!306, !40, i64 368}
!323 = !{!306, !37, i64 320}
!324 = !{!306, !40, i64 328}
!325 = !{!306, !40, i64 332}
!326 = !{!306, !40, i64 372}
!327 = !{!306, !37, i64 336}
!328 = !{!306, !40, i64 344}
!329 = !{!306, !40, i64 348}
!330 = !{!306, !40, i64 352}
!331 = distinct !{!331, !104, !105}
