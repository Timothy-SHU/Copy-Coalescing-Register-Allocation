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
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.Sculpt = type { %struct.Paint, i32, [3 x i32], float, i32, float, float, ptr, ptr }
%struct.CDMaskLink = type { ptr, i64 }
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
%struct.OrigSpaceLoop = type { [2 x float] }
%struct.MDeformWeight = type { i32, float }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }

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
@DM_init_origspace.default_osf = internal global [4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], align 16
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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @bvhcache_init(ptr noundef nonnull %26) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_getVertArray(ptr noundef %0) #0 !PGOFuncName !65 {
  %2 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = tail call i32 %6(ptr noundef %0) #16
  %8 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %7) #16
  tail call void @CustomData_set_layer_flag(ptr noundef %0, i32 noundef 0, i32 noundef 5) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 36
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  tail call void %10(ptr noundef %0, ptr noundef %8) #16
  br label %11

11:                                               ; preds = %4, %1
  %12 = phi ptr [ %2, %1 ], [ %8, %4 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_getEdgeArray(ptr noundef %0) #0 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 3) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call i32 %7(ptr noundef %0) #16
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %8) #16
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 5) #16
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 37
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  tail call void %11(ptr noundef %0, ptr noundef %9) #16
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %1 ], [ %9, %5 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_getTessFaceArray(ptr noundef %0) #0 !PGOFuncName !71 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 4) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call i32 %7(ptr noundef %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %8) #16
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 4, i32 noundef 5) #16
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 38
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  tail call void %13(ptr noundef nonnull %0, ptr noundef %11) #16
  br label %14

14:                                               ; preds = %10, %5, %1
  %15 = phi ptr [ %3, %1 ], [ %11, %10 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_getLoopArray(ptr noundef %0) #0 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 26) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = tail call i32 %7(ptr noundef %0) #16
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %8) #16
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 26, i32 noundef 5) #16
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 39
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  tail call void %11(ptr noundef %0, ptr noundef %9) #16
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %1 ], [ %9, %5 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_getPolyArray(ptr noundef %0) #0 !PGOFuncName !77 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 25) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = tail call i32 %7(ptr noundef %0) #16
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %8) #16
  tail call void @CustomData_set_layer_flag(ptr noundef nonnull %2, i32 noundef 25, i32 noundef 5) #16
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  tail call void %11(ptr noundef %0, ptr noundef %9) #16
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %3, %1 ], [ %9, %5 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_dupVertArray(ptr noundef %0) #0 !PGOFuncName !80 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 %4(ptr noundef %0) #16
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 20
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.16) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  tail call void %12(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_dupEdgeArray(ptr noundef %0) #0 !PGOFuncName !82 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call i32 %4(ptr noundef %0) #16
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 12
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.17) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 37
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  tail call void %12(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_dupFaceArray(ptr noundef %0) #0 !PGOFuncName !83 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = tail call i32 %4(ptr noundef %0) #16
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 20
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.18) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 38
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  tail call void %12(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_dupLoopArray(ptr noundef %0) #0 !PGOFuncName !84 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = tail call i32 %4(ptr noundef %0) #16
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.19) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 39
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  tail call void %12(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @dm_dupPolyArray(ptr noundef %0) #0 !PGOFuncName !85 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = tail call i32 %4(ptr noundef %0) #16
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 12
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.20) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  tail call void %12(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  br label %13

13:                                               ; preds = %10, %1
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef ptr @dm_getVertCData(ptr noundef readnone returned %0) #1 !PGOFuncName !86 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal nonnull ptr @dm_getEdgeCData(ptr noundef readnone %0) #1 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal nonnull ptr @dm_getTessFaceCData(ptr noundef readnone %0) #1 !PGOFuncName !88 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal nonnull ptr @dm_getLoopCData(ptr noundef readnone %0) #1 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal nonnull ptr @dm_getPolyCData(ptr noundef readnone %0) #1 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %5 = tail call ptr @CustomData_get(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %5 = tail call ptr @CustomData_get(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %5 = tail call ptr @CustomData_get(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr %6(ptr noundef %0) #16
  br label %10

8:                                                ; preds = %2
  %9 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef %1) #16
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %7, %4 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = tail call ptr %6(ptr noundef %0) #16
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef %1) #16
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %7, %4 ], [ %10, %8 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 4
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = tail call ptr %6(ptr noundef %0) #16
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef %1) #16
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %7, %4 ], [ %10, %8 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %4 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef %1) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %4 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef %1) #16
  ret ptr %4
}

; Function Attrs: optsize
declare void @bvhcache_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  store i32 %1, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  store i32 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  store i32 %3, ptr %10, align 4, !tbaa !93
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  store i32 %4, ptr %11, align 8, !tbaa !94
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  store i32 %5, ptr %12, align 4, !tbaa !95
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  store i32 %6, ptr %13, align 8, !tbaa !96
  tail call void @DM_init_funcs(ptr noundef %0) #17
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  store i32 1, ptr %14, align 4, !tbaa !97
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 15
  store float -1.000000e+00, ptr %15, align 4, !tbaa !98
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  store i32 0, ptr %16, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %17, i32 noundef 41, i32 noundef -1) #16
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %18, i32 noundef 41, i32 noundef -1) #16
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %19, i32 noundef 41, i32 noundef -1) #16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %20, i32 noundef 41, i32 noundef -1) #16
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %21, i32 noundef 41, i32 noundef -1) #16
  ret void
}

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_from_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8, !tbaa !100
  tail call void @CustomData_copy(ptr noundef %1, ptr noundef %0, i64 noundef %9, i32 noundef 1, i32 noundef %3) #16
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_copy(ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %9, i32 noundef 1, i32 noundef %4) #16
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_copy(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef %9, i32 noundef 1, i32 noundef %5) #16
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  tail call void @CustomData_copy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef %9, i32 noundef 1, i32 noundef %6) #16
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  tail call void @CustomData_copy(ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef %9, i32 noundef 1, i32 noundef %7) #16
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 19
  %19 = load i8, ptr %18, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  store i8 %19, ptr %20, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  store i32 %2, ptr %21, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  store i32 %3, ptr %22, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  store i32 %4, ptr %23, align 4, !tbaa !93
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  store i32 %5, ptr %24, align 8, !tbaa !94
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  store i32 %6, ptr %25, align 4, !tbaa !95
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  store i32 %7, ptr %26, align 8, !tbaa !96
  tail call void @DM_init_funcs(ptr noundef %0) #17
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  store i32 1, ptr %27, align 4, !tbaa !97
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  store i32 0, ptr %28, align 8, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DM_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !97
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 12
  tail call void @bvhcache_free(ptr noundef nonnull %6) #16
  tail call void @GPU_drawobject_free(ptr noundef nonnull %0) #16
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !92
  tail call void @CustomData_free(ptr noundef nonnull %0, i32 noundef %8) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !93
  tail call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %11) #16
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !94
  tail call void @CustomData_free(ptr noundef nonnull %12, i32 noundef %14) #16
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !95
  tail call void @CustomData_free(ptr noundef nonnull %15, i32 noundef %17) #16
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !96
  tail call void @CustomData_free(ptr noundef nonnull %18, i32 noundef %20) #16
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %5
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %25(ptr noundef nonnull %22) #16
  store ptr null, ptr %21, align 8, !tbaa !103
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  store i32 0, ptr %26, align 4, !tbaa !104
  br label %42

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !92
  tail call void @CustomData_free_temporary(ptr noundef nonnull %0, i32 noundef %29) #16
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !93
  tail call void @CustomData_free_temporary(ptr noundef nonnull %30, i32 noundef %32) #16
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !94
  tail call void @CustomData_free_temporary(ptr noundef nonnull %33, i32 noundef %35) #16
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !95
  tail call void @CustomData_free_temporary(ptr noundef nonnull %36, i32 noundef %38) #16
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !96
  tail call void @CustomData_free_temporary(ptr noundef nonnull %39, i32 noundef %41) #16
  br label %42

42:                                               ; preds = %5, %24, %27
  %43 = phi i32 [ 0, %27 ], [ 1, %24 ], [ 1, %5 ]
  ret i32 %43
}

; Function Attrs: optsize
declare void @bvhcache_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free_temporary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_DupPolys(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !95
  tail call void @CustomData_free(ptr noundef nonnull %3, i32 noundef %5) #16
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !96
  tail call void @CustomData_free(ptr noundef nonnull %6, i32 noundef %8) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %10 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8, !tbaa !100
  %11 = load i32, ptr %4, align 4, !tbaa !95
  tail call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 4, i32 noundef %11) #16
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %7, align 8, !tbaa !96
  tail call void @CustomData_copy(ptr noundef nonnull %12, ptr noundef nonnull %6, i64 noundef %10, i32 noundef 4, i32 noundef %13) #16
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 8
  %15 = load <2 x i32>, ptr %4, align 4, !tbaa !105
  store <2 x i32> %15, ptr %14, align 4, !tbaa !105
  %16 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 25) #16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 44
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = tail call ptr %20(ptr noundef nonnull %0) #16
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 45
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = tail call ptr %23(ptr noundef nonnull %0) #16
  %25 = load i32, ptr %4, align 4, !tbaa !95
  %26 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 26, i32 noundef 0, ptr noundef %21, i32 noundef %25) #16
  %27 = load i32, ptr %7, align 8, !tbaa !96
  %28 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 25, i32 noundef 0, ptr noundef %24, i32 noundef %27) #16
  br label %29

29:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_ensure_normals(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !99
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  tail call void %8(ptr noundef nonnull %0) #16
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_ensure_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = tail call i32 %3(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = tail call i32 %6(ptr noundef %0) #16
  %8 = icmp eq i32 %4, 0
  %9 = icmp ne i32 %7, 0
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  tail call void %13(ptr noundef nonnull %0) #16
  %14 = load ptr, ptr %2, align 8, !tbaa !72
  %15 = tail call i32 %14(ptr noundef nonnull %0) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.DM_ensure_tessface, i32 noundef %7, i32 noundef %19) #17
  br label %27

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !99
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @DM_update_tessface_data(ptr noundef nonnull %0) #17
  br label %27

27:                                               ; preds = %21, %26, %17, %11
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !99
  %30 = and i32 %29, -2
  store i32 %30, ptr %28, align 8, !tbaa !99
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_update_tessface_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call ptr %3(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call ptr %6(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call ptr %9(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = tail call ptr %12(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call ptr %15(ptr noundef %0) #16
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call ptr %18(ptr noundef %0) #16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = tail call i32 %21(ptr noundef %0) #16
  %23 = tail call ptr @CustomData_get_layer(ptr noundef %13, i32 noundef 7) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %107, label %25

25:                                               ; preds = %1
  tail call void @CustomData_from_bmeshpoly(ptr noundef %13, ptr noundef %16, ptr noundef %19, i32 noundef %22) #16
  %26 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 5) #16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 6) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 20) #16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 13) #16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %13, i32 noundef 40) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %97, label %40

40:                                               ; preds = %37, %34, %31, %28, %25
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %42 = sext i32 %22 to i64
  %43 = shl nsw i64 %42, 4
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @__func__.DM_update_tessface_data) #16
  %45 = icmp sgt i32 %22, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %40
  %47 = zext nneg i32 %22 to i64
  br label %48

48:                                               ; preds = %46, %91
  %49 = phi i64 [ 0, %46 ], [ %92, %91 ]
  %50 = phi ptr [ %4, %46 ], [ %93, %91 ]
  %51 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !108
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 3, i32 4
  %55 = getelementptr inbounds [4 x i32], ptr %44, i64 %49
  %56 = getelementptr inbounds i32, ptr %23, i64 %49
  %57 = load i32, ptr %56, align 4, !tbaa !105
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !111
  %61 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 1
  %62 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 2
  %63 = sext i32 %60 to i64
  br label %64

64:                                               ; preds = %48, %87
  %65 = phi i64 [ %63, %48 ], [ %89, %87 ]
  %66 = phi i32 [ %54, %48 ], [ %88, %87 ]
  %67 = load i32, ptr %50, align 4, !tbaa !113
  %68 = getelementptr inbounds %struct.MLoop, ptr %10, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !114
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %82, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %61, align 4, !tbaa !116
  %73 = icmp eq i32 %72, %69
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %62, align 4, !tbaa !117
  %76 = icmp eq i32 %75, %69
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %51, align 4, !tbaa !108
  %79 = icmp ne i32 %78, 0
  %80 = icmp eq i32 %78, %69
  %81 = and i1 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %64, %71, %74
  %83 = phi i64 [ 2, %74 ], [ 1, %71 ], [ 0, %64 ], [ 3, %77 ]
  %84 = getelementptr inbounds i32, ptr %55, i64 %83
  %85 = trunc i64 %65 to i32
  store i32 %85, ptr %84, align 4, !tbaa !105
  %86 = add nsw i32 %66, -1
  br label %87

87:                                               ; preds = %77, %82
  %88 = phi i32 [ %86, %82 ], [ %66, %77 ]
  %89 = add i64 %65, 1
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %91, label %64, !llvm.loop !118

91:                                               ; preds = %87
  %92 = add nuw nsw i64 %49, 1
  %93 = getelementptr inbounds %struct.MFace, ptr %50, i64 1
  %94 = icmp eq i64 %92, %47
  br i1 %94, label %95, label %48, !llvm.loop !120

95:                                               ; preds = %91, %40
  tail call void @BKE_mesh_loops_to_tessdata(ptr noundef %13, ptr noundef %19, ptr noundef %16, ptr noundef %4, ptr noundef nonnull %23, ptr noundef %44, i32 noundef %22) #16
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %96(ptr noundef %44) #16
  br label %97

97:                                               ; preds = %95, %37
  %98 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !121
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.DM_update_tessface_data, ptr noundef %0) #17
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %105 = load i32, ptr %104, align 8, !tbaa !99
  %106 = and i32 %105, -2
  store i32 %106, ptr %104, align 8, !tbaa !99
  br label %107

107:                                              ; preds = %1, %103
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_loops_to_tessdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_update_materials(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %4 = load i32, ptr %3, align 8, !tbaa !124
  %5 = add nsw i32 %4, 1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 17
  store i32 %5, ptr %6, align 4, !tbaa !104
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %11(ptr noundef nonnull %8) #16
  br label %12

12:                                               ; preds = %10, %2
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !81
  %14 = sext i32 %5 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @.str.2) #16
  store ptr %16, ptr %7, align 8, !tbaa !103
  %17 = icmp sgt i32 %4, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = zext nneg i32 %4 to i64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %22, %20 ]
  %22 = add nuw nsw i64 %21, 1
  %23 = trunc i64 %22 to i16
  %24 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %23) #16
  %25 = load ptr, ptr %7, align 8, !tbaa !103
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %24, ptr %26, align 8, !tbaa !81
  %27 = icmp eq i64 %22, %19
  br i1 %27, label %28, label %20, !llvm.loop !128

28:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_paint_uvlayer_active_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 135
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 131
  %15 = load i16, ptr %14, align 4, !tbaa !133
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds %struct.TexPaintSlot, ptr %11, i64 %16, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %22 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %21, i32 noundef 5, ptr noundef nonnull %18) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %29

24:                                               ; preds = %13, %9, %2
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %21, %20 ]
  %28 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %27, i32 noundef 5) #16
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %22, %20 ], [ %28, %26 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_to_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.Mesh, align 8
  call void @llvm.lifetime.start.p0(i64 1376, ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %5, ptr noundef nonnull align 8 dereferenceable(1376) %1, i64 1376, i1 false), !tbaa.struct !136
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 21
  call void @CustomData_reset(ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 22
  call void @CustomData_reset(ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 23
  call void @CustomData_reset(ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  call void @CustomData_reset(ptr noundef nonnull %9) #16
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 24
  call void @CustomData_reset(ptr noundef nonnull %10) #16
  call void @DM_ensure_normals(ptr noundef %0) #17
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = call i32 %12(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  store i32 %13, ptr %14, align 8, !tbaa !140
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = call i32 %16(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 27
  store i32 %17, ptr %18, align 4, !tbaa !142
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = call i32 %20(ptr noundef %0) #16
  %22 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 31
  store i32 %21, ptr %22, align 4, !tbaa !143
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = call i32 %24(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  store i32 %25, ptr %26, align 8, !tbaa !144
  %27 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 28
  store i32 0, ptr %27, align 8, !tbaa !145
  call void @CustomData_copy(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %3, i32 noundef 4, i32 noundef %13) #16
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  call void @CustomData_copy(ptr noundef nonnull %28, ptr noundef nonnull %7, i64 noundef %3, i32 noundef 4, i32 noundef %17) #16
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  call void @CustomData_copy(ptr noundef nonnull %29, ptr noundef nonnull %9, i64 noundef %3, i32 noundef 4, i32 noundef %21) #16
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  call void @CustomData_copy(ptr noundef nonnull %30, ptr noundef nonnull %10, i64 noundef %3, i32 noundef 4, i32 noundef %25) #16
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  %32 = load i8, ptr %31, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 41
  store i8 %32, ptr %33, align 8, !tbaa !146
  %34 = call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef 28) #16
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %4
  %37 = icmp eq ptr %2, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !147
  %41 = getelementptr inbounds %struct.Key, ptr %40, i64 0, i32 6
  %42 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 115
  %43 = load i16, ptr %42, align 2, !tbaa !148
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %44, -1
  %46 = call ptr @BLI_findlink(ptr noundef nonnull %41, i32 noundef %45) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.KeyBlock, ptr %46, i64 0, i32 9
  %50 = load i32, ptr %49, align 4, !tbaa !149
  br label %56

51:                                               ; preds = %38
  %52 = load i16, ptr %42, align 2, !tbaa !148
  %53 = sext i16 %52 to i32
  %54 = add nsw i32 %53, -1
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @__func__.DM_to_mesh, i32 noundef %54) #17
  br label %56

56:                                               ; preds = %36, %48, %51
  %57 = phi i32 [ %50, %48 ], [ 2147483647, %51 ], [ 2147483647, %36 ]
  call fastcc void @shapekey_layers_to_keyblocks(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %57) #17
  br label %58

58:                                               ; preds = %56, %4
  %59 = icmp eq ptr %2, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  call void @BKE_mesh_texspace_copy_from_object(ptr noundef nonnull %5, ptr noundef nonnull %2) #16
  br label %61

61:                                               ; preds = %60, %58
  %62 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 0) #16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = call ptr %66(ptr noundef nonnull %0) #16
  %68 = call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, ptr noundef %67, i32 noundef %13) #16
  br label %69

69:                                               ; preds = %64, %61
  %70 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 3) #16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = call ptr %74(ptr noundef nonnull %0) #16
  %76 = call ptr @CustomData_add_layer(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, ptr noundef %75, i32 noundef %17) #16
  br label %77

77:                                               ; preds = %72, %69
  %78 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %10, i32 noundef 25) #16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 44
  %82 = load ptr, ptr %81, align 8, !tbaa !49
  %83 = call ptr %82(ptr noundef nonnull %0) #16
  %84 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 9
  store ptr %83, ptr %84, align 8, !tbaa !151
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 45
  %86 = load ptr, ptr %85, align 8, !tbaa !50
  %87 = call ptr %86(ptr noundef nonnull %0) #16
  %88 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 7
  store ptr %87, ptr %88, align 8, !tbaa !152
  %89 = load ptr, ptr %84, align 8, !tbaa !151
  %90 = load i32, ptr %22, align 4, !tbaa !143
  %91 = call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 26, i32 noundef 0, ptr noundef %89, i32 noundef %90) #16
  %92 = load ptr, ptr %88, align 8, !tbaa !152
  %93 = load i32, ptr %26, align 8, !tbaa !144
  %94 = call ptr @CustomData_add_layer(ptr noundef nonnull %10, i32 noundef 25, i32 noundef 0, ptr noundef %92, i32 noundef %93) #16
  br label %95

95:                                               ; preds = %80, %77
  %96 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %97 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %96, i32 noundef 19) #16
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %101 = load i32, ptr %100, align 4, !tbaa !143
  %102 = icmp eq i32 %21, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = call ptr @CustomData_get_layer(ptr noundef nonnull %96, i32 noundef 19) #16
  %105 = call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 19, i32 noundef 4, ptr noundef %104, i32 noundef %21) #16
  br label %106

106:                                              ; preds = %99, %103, %95
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %5, i8 noundef zeroext 0) #16
  %107 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %108 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %109 = load i32, ptr %108, align 8, !tbaa !140
  call void @CustomData_free(ptr noundef nonnull %107, i32 noundef %109) #16
  %110 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %111 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %112 = load i32, ptr %111, align 4, !tbaa !142
  call void @CustomData_free(ptr noundef nonnull %110, i32 noundef %112) #16
  %113 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %114 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %115 = load i32, ptr %114, align 8, !tbaa !145
  call void @CustomData_free(ptr noundef nonnull %113, i32 noundef %115) #16
  %116 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %117 = load i32, ptr %116, align 4, !tbaa !143
  call void @CustomData_free(ptr noundef nonnull %96, i32 noundef %117) #16
  %118 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %119 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %120 = load i32, ptr %119, align 8, !tbaa !144
  call void @CustomData_free(ptr noundef nonnull %118, i32 noundef %120) #16
  %121 = load i32, ptr %14, align 8, !tbaa !140
  %122 = load i32, ptr %108, align 8, !tbaa !140
  %123 = icmp eq i32 %121, %122
  %124 = or i1 %35, %123
  br i1 %124, label %140, label %125

125:                                              ; preds = %106
  %126 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !147
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %131 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.DM_to_mesh, ptr noundef nonnull %130) #17
  %132 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !147
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.ID, ptr %133, i64 0, i32 6
  %137 = load i32, ptr %136, align 4, !tbaa !153
  %138 = add nsw i32 %137, -1
  store i32 %138, ptr %136, align 4, !tbaa !153
  br label %139

139:                                              ; preds = %135, %129
  store ptr null, ptr %132, align 8, !tbaa !147
  br label %140

140:                                              ; preds = %139, %125, %106
  %141 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 6
  store ptr null, ptr %141, align 8, !tbaa !155
  %142 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 29
  store i32 0, ptr %142, align 4, !tbaa !156
  %143 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !155
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %147(ptr noundef nonnull %144) #16
  br label %148

148:                                              ; preds = %146, %140
  %149 = getelementptr inbounds i8, ptr %1, i64 16
  %150 = getelementptr inbounds i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1360) %149, ptr noundef nonnull align 8 dereferenceable(1360) %150, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(i64 1376, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shapekey_layers_to_keyblocks(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !157 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  %6 = icmp eq ptr %5, null
  br i1 %6, label %114, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @CustomData_number_of_layers(ptr noundef %0, i32 noundef 28) #16
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  br label %13

13:                                               ; preds = %10, %79
  %14 = phi i32 [ 0, %10 ], [ %80, %79 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !158
  %16 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %0, i32 noundef 28, i32 noundef %14) #16
  %17 = sext i32 %16 to i64
  %18 = load ptr, ptr %4, align 8, !tbaa !147
  %19 = getelementptr inbounds %struct.Key, ptr %18, i64 0, i32 6
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %17, i32 7
  br label %21

21:                                               ; preds = %25, %13
  %22 = phi ptr [ %19, %13 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !81
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !149
  %28 = load i32, ptr %20, align 4, !tbaa !159
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %35, label %21, !llvm.loop !161

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %17, i32 8
  %32 = tail call ptr @BKE_keyblock_add(ptr noundef %18, ptr noundef nonnull %31) #16
  %33 = load i32, ptr %20, align 4, !tbaa !159
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 9
  store i32 %33, ptr %34, align 4, !tbaa !149
  br label %35

35:                                               ; preds = %25, %30
  %36 = phi ptr [ %32, %30 ], [ %23, %25 ]
  %37 = getelementptr inbounds %struct.KeyBlock, ptr %36, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !162
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %41(ptr noundef nonnull %38) #16
  br label %42

42:                                               ; preds = %40, %35
  %43 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %0, i32 noundef 28, i32 noundef %14) #16
  %44 = load i32, ptr %11, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.KeyBlock, ptr %36, i64 0, i32 8
  store i32 %44, ptr %45, align 8, !tbaa !163
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %47 = sext i32 %44 to i64
  %48 = mul nsw i64 %47, 12
  %49 = tail call ptr %46(i64 noundef %48, ptr noundef nonnull @.str.21) #16
  store ptr %49, ptr %37, align 8, !tbaa !162
  %50 = getelementptr inbounds %struct.KeyBlock, ptr %36, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !149
  %52 = icmp eq i32 %51, %2
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, ptr %45, align 8, !tbaa !163
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %70, label %79

56:                                               ; preds = %42
  %57 = load ptr, ptr %12, align 8, !tbaa !34
  %58 = tail call ptr %57(ptr noundef nonnull %0) #16
  %59 = load i32, ptr %11, align 8, !tbaa !92
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56, %61
  %62 = phi ptr [ %67, %61 ], [ %58, %56 ]
  %63 = phi ptr [ %66, %61 ], [ %49, %56 ]
  %64 = phi i32 [ %65, %61 ], [ 0, %56 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %63, ptr noundef %62) #17
  %65 = add nuw nsw i32 %64, 1
  %66 = getelementptr inbounds [3 x float], ptr %63, i64 1
  %67 = getelementptr inbounds %struct.MVert, ptr %62, i64 1
  %68 = load i32, ptr %11, align 8, !tbaa !92
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %61, label %79, !llvm.loop !164

70:                                               ; preds = %53, %70
  %71 = phi ptr [ %76, %70 ], [ %49, %53 ]
  %72 = phi ptr [ %75, %70 ], [ %43, %53 ]
  %73 = phi i32 [ %74, %70 ], [ 0, %53 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %71, ptr noundef %72) #17
  %74 = add nuw nsw i32 %73, 1
  %75 = getelementptr inbounds [3 x float], ptr %72, i64 1
  %76 = getelementptr inbounds [3 x float], ptr %71, i64 1
  %77 = load i32, ptr %45, align 8, !tbaa !163
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %70, label %79, !llvm.loop !165

79:                                               ; preds = %70, %61, %53, %56
  %80 = add nuw nsw i32 %14, 1
  %81 = icmp eq i32 %80, %8
  br i1 %81, label %82, label %13, !llvm.loop !166

82:                                               ; preds = %79, %7
  %83 = load ptr, ptr %4, align 8, !tbaa !147
  %84 = getelementptr inbounds %struct.Key, ptr %83, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !81
  %86 = icmp eq ptr %85, null
  br i1 %86, label %114, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  br label %89

89:                                               ; preds = %87, %111
  %90 = phi ptr [ %85, %87 ], [ %112, %111 ]
  %91 = getelementptr inbounds %struct.KeyBlock, ptr %90, i64 0, i32 8
  %92 = load i32, ptr %91, align 8, !tbaa !163
  %93 = load i32, ptr %88, align 8, !tbaa !92
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %111, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.KeyBlock, ptr %90, i64 0, i32 10
  %97 = load ptr, ptr %96, align 8, !tbaa !162
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %100(ptr noundef nonnull %97) #16
  %101 = load i32, ptr %88, align 8, !tbaa !92
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i32 [ %101, %99 ], [ %93, %95 ]
  store i32 %103, ptr %91, align 8, !tbaa !163
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !81
  %105 = sext i32 %103 to i64
  %106 = mul nsw i64 %105, 12
  %107 = tail call ptr %104(i64 noundef %106, ptr noundef nonnull @.str.22) #16
  store ptr %107, ptr %96, align 8, !tbaa !162
  %108 = load ptr, ptr @stderr, align 8, !tbaa !81
  %109 = getelementptr inbounds %struct.KeyBlock, ptr %90, i64 0, i32 11
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.shapekey_layers_to_keyblocks, ptr noundef nonnull %109) #19
  br label %111

111:                                              ; preds = %89, %102
  %112 = load ptr, ptr %90, align 8, !tbaa !81
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %89, !llvm.loop !167

114:                                              ; preds = %111, %82, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_texspace_copy_from_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_to_meshkey(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call i32 %5(ptr noundef %0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !140
  %11 = icmp eq i32 %10, %6
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.KeyBlock, ptr %2, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %17(ptr noundef nonnull %14) #16
  %18 = load i32, ptr %9, align 8, !tbaa !140
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %18, %16 ], [ %6, %12 ]
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !147
  %24 = getelementptr inbounds %struct.Key, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !168
  %26 = mul nsw i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = tail call ptr %21(i64 noundef %27, ptr noundef nonnull @.str.5) #16
  store ptr %28, ptr %13, align 8, !tbaa !162
  %29 = getelementptr inbounds %struct.KeyBlock, ptr %2, i64 0, i32 8
  store i32 %6, ptr %29, align 8, !tbaa !163
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = tail call ptr %31(ptr noundef nonnull %0, i32 noundef 0) #16
  %33 = load i32, ptr %29, align 8, !tbaa !163
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %19, %35
  %36 = phi ptr [ %41, %35 ], [ %32, %19 ]
  %37 = phi ptr [ %40, %35 ], [ %28, %19 ]
  %38 = phi i32 [ %39, %35 ], [ 0, %19 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %37, ptr noundef %36) #17
  %39 = add nuw nsw i32 %38, 1
  %40 = getelementptr inbounds float, ptr %37, i64 3
  %41 = getelementptr inbounds %struct.MVert, ptr %36, i64 1
  %42 = load i32, ptr %29, align 8, !tbaa !163
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %35, label %44, !llvm.loop !169

44:                                               ; preds = %35, %19, %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !170 {
  %3 = load float, ptr %1, align 4, !tbaa !139
  store float %3, ptr %0, align 4, !tbaa !139
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !139
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !139
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !139
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_set_only_copy(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  tail call void @CustomData_set_only_copy(ptr noundef %0, i64 noundef %1) #16
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_set_only_copy(ptr noundef nonnull %3, i64 noundef %1) #16
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_set_only_copy(ptr noundef nonnull %4, i64 noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @CustomData_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_add_vert_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !92
  %7 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_add_edge_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_add_tessface_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_add_loop_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !95
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_add_poly_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_set_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @CustomData_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  ret void
}

; Function Attrs: optsize
declare void @CustomData_set(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_set_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_set(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_set_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_set(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_copy_vert_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void @CustomData_copy_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  ret void
}

; Function Attrs: optsize
declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_copy_edge_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 1
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_copy_tessface_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_copy_loop_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_copy_poly_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  tail call void @CustomData_copy_data(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_free_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @CustomData_free_elem(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_free_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_free_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_free_loop_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_free_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  tail call void @CustomData_free_elem(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_interp_vert_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call void @CustomData_interp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: optsize
declare void @CustomData_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_interp_edge_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 1
  tail call void @CustomData_interp(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_interp_tessface_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  tail call void @CustomData_interp(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_swap_tessface_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_swap(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare void @CustomData_swap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_interp_loop_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  tail call void @CustomData_interp(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_interp_poly_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 4
  tail call void @CustomData_interp(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CDDM_from_mesh(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %5, %4
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @CDDM_apply_vert_coords(ptr noundef nonnull %3, ptr noundef nonnull %1) #16
  br label %8

8:                                                ; preds = %7, %2
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_for_modifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !172
  %10 = tail call ptr @modifierType_getInfo(i32 noundef %9) #16
  %11 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 7
  store ptr %0, ptr %11, align 8, !tbaa !174
  %12 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !175
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %10, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !176
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 %18(ptr noundef nonnull %2, i32 noundef 0) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %20, %16
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Key, ptr %27, i64 0, i32 6
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %32 = load i16, ptr %31, align 2, !tbaa !148
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, -1
  %35 = tail call ptr @BLI_findlink(ptr noundef nonnull %30, i32 noundef %34) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call void @BKE_key_convert_to_mesh(ptr noundef nonnull %35, ptr noundef nonnull %7) #16
  br label %38

38:                                               ; preds = %37, %29, %25
  %39 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %10, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !178
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %48, label %55

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %10, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !178
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @mesh_create_derived(ptr noundef %7, ptr noundef null) #17
  br label %57

48:                                               ; preds = %42, %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %49 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %7, ptr noundef nonnull %5) #16
  %50 = load i32, ptr %5, align 4, !tbaa !105
  call void @modwrap_deformVerts(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef null, ptr noundef %49, i32 noundef %50, i32 noundef 0) #16
  %51 = call ptr @mesh_create_derived(ptr noundef %7, ptr noundef %49) #17
  br i1 %24, label %53, label %52

52:                                               ; preds = %48
  call fastcc void @add_shapekey_layers(ptr noundef %51, ptr noundef %7) #17
  br label %53

53:                                               ; preds = %52, %48
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %54(ptr noundef %49) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %64

55:                                               ; preds = %38
  %56 = tail call ptr @mesh_create_derived(ptr noundef nonnull %7, ptr noundef null) #17
  tail call fastcc void @add_shapekey_layers(ptr noundef %56, ptr noundef nonnull %7) #17
  br label %57

57:                                               ; preds = %46, %55
  %58 = phi ptr [ %47, %46 ], [ %56, %55 ]
  %59 = tail call ptr @modwrap_applyModifier(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %58, i32 noundef 0) #16
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 95
  %63 = load ptr, ptr %62, align 8, !tbaa !179
  tail call void %63(ptr noundef %58) #16
  br label %64

64:                                               ; preds = %53, %61, %57, %20, %4
  %65 = phi ptr [ null, %4 ], [ null, %20 ], [ %51, %53 ], [ %59, %61 ], [ %58, %57 ]
  ret ptr %65
}

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_key_convert_to_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mesh_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modwrap_deformVerts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_shapekey_layers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !180 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !140
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = icmp eq ptr %4, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = tail call i32 %12(ptr noundef %0) #16
  %14 = icmp eq i32 %6, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %18 = load i32, ptr %5, align 8, !tbaa !140
  %19 = load ptr, ptr %11, align 8, !tbaa !66
  %20 = tail call i32 %19(ptr noundef nonnull %0) #16
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.add_shapekey_layers, ptr noundef nonnull %17, i32 noundef %18, i32 noundef %20) #19
  br label %61

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = icmp eq ptr %24, null
  br i1 %25, label %61, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  br label %29

29:                                               ; preds = %26, %47
  %30 = phi ptr [ %24, %26 ], [ %59, %47 ]
  %31 = phi i32 [ 0, %26 ], [ %58, %47 ]
  %32 = load i32, ptr %5, align 8, !tbaa !140
  %33 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !163
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @stderr, align 8, !tbaa !81
  %38 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 11
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.add_shapekey_layers, ptr noundef nonnull %27, i32 noundef %32, ptr noundef nonnull %38, i32 noundef %34) #19
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !81
  %41 = tail call ptr %40(i64 noundef %8, ptr noundef nonnull @__func__.add_shapekey_layers) #16
  br label %47

42:                                               ; preds = %29
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %44 = tail call ptr %43(i64 noundef %8, ptr noundef nonnull @__func__.add_shapekey_layers) #16
  %45 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !162
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %44, ptr align 1 %46, i64 %8, i1 false)
  br label %47

47:                                               ; preds = %42, %36
  %48 = phi ptr [ %41, %36 ], [ %44, %42 ]
  %49 = load i32, ptr %28, align 8, !tbaa !92
  %50 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 11
  %51 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %0, i32 noundef 28, i32 noundef 0, ptr noundef %48, i32 noundef %49, ptr noundef nonnull %50) #16
  %52 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %0, i32 noundef 28, i32 noundef %31) #16
  %53 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !149
  %55 = load ptr, ptr %0, align 8, !tbaa !158
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds %struct.CustomDataLayer, ptr %55, i64 %56, i32 7
  store i32 %54, ptr %57, align 4, !tbaa !159
  %58 = add nuw nsw i32 %31, 1
  %59 = load ptr, ptr %30, align 8, !tbaa !81
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %29, !llvm.loop !181

61:                                               ; preds = %47, %22, %2, %15
  ret void
}

; Function Attrs: optsize
declare ptr @modwrap_applyModifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @weight_to_rgb(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #7 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fadd float %3, 5.000000e-01
  %5 = fcmp ugt float %1, 2.500000e-01
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  store float 0.000000e+00, ptr %0, align 4, !tbaa !139
  %7 = fmul float %4, %1
  %8 = fmul float %7, 4.000000e+00
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !139
  br label %34

10:                                               ; preds = %2
  %11 = fcmp ugt float %1, 5.000000e-01
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  store float 0.000000e+00, ptr %0, align 4, !tbaa !139
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %4, ptr %13, align 4, !tbaa !139
  %14 = fadd float %1, -2.500000e-01
  %15 = fneg float %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 4.000000e+00, float 1.000000e+00)
  %17 = fmul float %4, %16
  br label %34

18:                                               ; preds = %10
  %19 = fcmp ugt float %1, 7.500000e-01
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = fadd float %1, -5.000000e-01
  %22 = fmul float %21, 4.000000e+00
  %23 = fmul float %4, %22
  store float %23, ptr %0, align 4, !tbaa !139
  %24 = getelementptr inbounds float, ptr %0, i64 1
  store float %4, ptr %24, align 4, !tbaa !139
  br label %34

25:                                               ; preds = %18
  %26 = fcmp ugt float %1, 1.000000e+00
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  store float %4, ptr %0, align 4, !tbaa !139
  %28 = fadd float %1, -7.500000e-01
  %29 = fneg float %28
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 4.000000e+00, float 1.000000e+00)
  %31 = fmul float %4, %30
  %32 = getelementptr inbounds float, ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !139
  br label %34

33:                                               ; preds = %25
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !139
  br label %34

34:                                               ; preds = %12, %27, %33, %20, %6
  %35 = phi float [ %17, %12 ], [ 0.000000e+00, %27 ], [ 1.000000e+00, %33 ], [ 0.000000e+00, %20 ], [ %4, %6 ]
  %36 = getelementptr inbounds float, ptr %0, i64 2
  store float %35, ptr %36, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @vDM_ColorBand_store(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 {
  store ptr %0, ptr @G_dm_wcinfo, align 8, !tbaa !182
  store ptr %1, ptr getelementptr inbounds (%struct.DMWeightColorInfo, ptr @G_dm_wcinfo, i64 0, i32 1), align 8, !tbaa !184
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_update_weight_mcol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef readonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = tail call i32 %12(ptr noundef nonnull %1) #16
  br label %23

14:                                               ; preds = %6
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #16
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = tail call i32 %17(ptr noundef nonnull %1) #16
  %19 = icmp eq ptr %15, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  tail call void @BKE_editmesh_color_ensure(ptr noundef nonnull %15, i8 noundef zeroext 1) #16
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %15, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !185
  br label %29

23:                                               ; preds = %10, %14
  %24 = phi i32 [ %13, %10 ], [ %18, %14 ]
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @__func__.DM_update_weight_mcol) #16
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i32 [ %18, %20 ], [ %24, %23 ]
  %31 = phi ptr [ %22, %20 ], [ %28, %23 ]
  %32 = icmp eq ptr %3, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %5, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  tail call fastcc void @calc_colors_from_weights_array(i32 noundef %30, ptr noundef nonnull %3, ptr noundef %31) #17
  br label %58

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !81
  %38 = sext i32 %30 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.6) #16
  %41 = icmp eq i32 %4, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = sext i32 %4 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ %43, %42 ], [ %46, %44 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds float, ptr %3, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !139
  %49 = getelementptr inbounds i32, ptr %5, i64 %46
  %50 = load i32, ptr %49, align 4, !tbaa !105
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, ptr %40, i64 %51
  store float %48, ptr %52, align 4, !tbaa !139
  %53 = and i64 %46, 4294967295
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %44, !llvm.loop !187

55:                                               ; preds = %44, %36
  tail call fastcc void @calc_colors_from_weights_array(i32 noundef %30, ptr noundef %40, ptr noundef %31) #17
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %56(ptr noundef %40) #16
  br label %58

57:                                               ; preds = %29
  tail call fastcc void @calc_weightpaint_vert_array(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %31) #17
  br label %58

58:                                               ; preds = %35, %55, %57
  %59 = load i32, ptr %7, align 8, !tbaa !91
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %126, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 27
  %63 = load ptr, ptr %62, align 8, !tbaa !78
  %64 = tail call i32 %63(ptr noundef nonnull %1) #16
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 26
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = tail call i32 %66(ptr noundef nonnull %1) #16
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 58
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = tail call ptr %69(ptr noundef nonnull %1) #16
  %71 = tail call ptr @CustomData_get_layer(ptr noundef %70, i32 noundef 32) #16
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 34
  %73 = load ptr, ptr %72, align 8, !tbaa !44
  %74 = tail call ptr %73(ptr noundef nonnull %1) #16
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 35
  %76 = load ptr, ptr %75, align 8, !tbaa !45
  %77 = tail call ptr %76(ptr noundef nonnull %1) #16
  %78 = icmp eq ptr %71, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %61
  %80 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %81 = sext i32 %67 to i64
  %82 = shl nsw i64 %81, 2
  %83 = tail call ptr %80(i64 noundef %82, ptr noundef nonnull @__func__.DM_update_weight_mcol) #16
  %84 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  %85 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %84, i32 noundef 32, i32 noundef 0, ptr noundef %83, i32 noundef %67) #16
  br label %86

86:                                               ; preds = %79, %61
  %87 = phi ptr [ %71, %61 ], [ %83, %79 ]
  %88 = icmp sgt i32 %64, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %86, %116
  %90 = phi i32 [ %117, %116 ], [ 0, %86 ]
  %91 = phi ptr [ %119, %116 ], [ %77, %86 ]
  %92 = phi i32 [ %118, %116 ], [ 0, %86 ]
  %93 = getelementptr inbounds %struct.MPoly, ptr %91, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !188
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %89
  %97 = load i32, ptr %91, align 4, !tbaa !111
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.MLoop, ptr %74, i64 %98
  %100 = sext i32 %90 to i64
  br label %101

101:                                              ; preds = %96, %101
  %102 = phi i64 [ %100, %96 ], [ %111, %101 ]
  %103 = phi i32 [ 0, %96 ], [ %109, %101 ]
  %104 = phi ptr [ %99, %96 ], [ %110, %101 ]
  %105 = getelementptr inbounds [4 x i8], ptr %87, i64 %102
  %106 = load i32, ptr %104, align 4, !tbaa !114
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr %31, i64 %107
  tail call fastcc void @copy_v4_v4_char(ptr noundef %105, ptr noundef %108) #17
  %109 = add nuw nsw i32 %103, 1
  %110 = getelementptr inbounds %struct.MLoop, ptr %104, i64 1
  %111 = add nsw i64 %102, 1
  %112 = load i32, ptr %93, align 4, !tbaa !188
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %101, label %114, !llvm.loop !189

114:                                              ; preds = %101
  %115 = trunc i64 %111 to i32
  br label %116

116:                                              ; preds = %114, %89
  %117 = phi i32 [ %90, %89 ], [ %115, %114 ]
  %118 = add nuw nsw i32 %92, 1
  %119 = getelementptr inbounds %struct.MPoly, ptr %91, i64 1
  %120 = icmp eq i32 %118, %64
  br i1 %120, label %121, label %89, !llvm.loop !190

121:                                              ; preds = %116, %86
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %122(ptr noundef %31) #16
  %123 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 16
  %124 = load i32, ptr %123, align 8, !tbaa !99
  %125 = or i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !99
  br label %126

126:                                              ; preds = %58, %121
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_editmesh_color_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_colors_from_weights_array(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !191 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = phi ptr [ %11, %5 ], [ %2, %3 ]
  %8 = phi ptr [ %12, %5 ], [ %1, %3 ]
  %9 = load float, ptr %8, align 4, !tbaa !139
  tail call fastcc void @weightpaint_color(ptr noundef %7, ptr noundef null, float noundef %9) #17
  %10 = add nuw nsw i32 %6, 1
  %11 = getelementptr inbounds [4 x i8], ptr %7, i64 1
  %12 = getelementptr inbounds float, ptr %8, i64 1
  %13 = icmp eq i32 %10, %0
  br i1 %13, label %14, label %5, !llvm.loop !192

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_weightpaint_vert_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !193 {
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 4
  %7 = tail call ptr @DM_get_vert_data_layer(ptr noundef %1, i32 noundef 2) #17
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call i32 %9(ptr noundef %1) #16
  %11 = icmp eq ptr %7, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %14 = tail call i32 @BLI_countlist(ptr noundef nonnull %13) #16
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %16 = load i16, ptr %15, align 2, !tbaa !194
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !tbaa !105
  %19 = and i32 %2, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = call ptr @BKE_objdef_selected_get(ptr noundef nonnull %0, i32 noundef %14, ptr noundef nonnull %5) #16
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi ptr [ %22, %21 ], [ null, %12 ]
  %25 = icmp eq i32 %10, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %33, %26 ], [ %7, %23 ]
  %28 = phi ptr [ %32, %26 ], [ %3, %23 ]
  %29 = phi i32 [ %31, %26 ], [ %10, %23 ]
  %30 = load i32, ptr %5, align 4, !tbaa !105
  call fastcc void @calc_weightpaint_vert_color(ptr noundef %28, ptr noundef nonnull %27, i32 noundef %14, i32 noundef %18, ptr noundef %24, i32 noundef %30, i32 noundef %2) #17
  %31 = add i32 %29, -1
  %32 = getelementptr inbounds [4 x i8], ptr %28, i64 1
  %33 = getelementptr inbounds %struct.MDeformVert, ptr %27, i64 1
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %26, !llvm.loop !195

35:                                               ; preds = %26, %23
  %36 = icmp eq ptr %24, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %38(ptr noundef nonnull %24) #16
  br label %39

39:                                               ; preds = %37, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %49

40:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %41 = and i32 %2, 6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds (%struct.DMWeightColorInfo, ptr @G_dm_wcinfo, i64 0, i32 1), align 8, !tbaa !184
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %6, ptr noundef %44) #17
  %45 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  store i8 -1, ptr %45, align 1, !tbaa !137
  br label %47

46:                                               ; preds = %40
  call fastcc void @weightpaint_color(ptr noundef nonnull %6, ptr noundef nonnull @G_dm_wcinfo, float noundef 0.000000e+00) #17
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, ptr %6, align 4, !tbaa !105
  tail call void @fill_vn_i(ptr noundef %3, i32 noundef %10, i32 noundef %48) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %49

49:                                               ; preds = %47, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !196 {
  %3 = load i8, ptr %1, align 1, !tbaa !137
  store i8 %3, ptr %0, align 1, !tbaa !137
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !137
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !137
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !137
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !137
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !137
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !137
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @editbmesh_get_vertex_cos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !197
  %5 = load i32, ptr %4, align 8, !tbaa !198
  store i32 %5, ptr %1, align 4, !tbaa !105
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %7 = sext i32 %5 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.7) #16
  %10 = load ptr, ptr %0, align 8, !tbaa !197
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %10) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2, %13
  %14 = phi i64 [ %19, %13 ], [ 0, %2 ]
  %15 = phi ptr [ %18, %13 ], [ %11, %2 ]
  %16 = getelementptr inbounds [3 x float], ptr %9, i64 %14
  %17 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %16, ptr noundef nonnull %17) #17
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %19 = add nuw i64 %14, 1
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %13, !llvm.loop !200

21:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !201 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #17
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !202 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  %4 = tail call ptr %3(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !172
  %6 = tail call ptr @modifierType_getInfo(i32 noundef %5) #16
  %7 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef %1, i32 noundef 5) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %6, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !205
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne ptr %2, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #16
  br label %17

17:                                               ; preds = %9, %3, %16
  %18 = phi i8 [ 0, %16 ], [ 0, %3 ], [ 1, %9 ]
  ret i8 %18
}

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @makeDerivedMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @object_get_datamask(ptr noundef %0, ptr noundef %1) #17
  %7 = or i64 %6, %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %7) #17
  br label %11

10:                                               ; preds = %5
  tail call fastcc void @mesh_build_data(ptr noundef %0, ptr noundef %1, i64 noundef %7, i32 noundef %4) #17
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @object_get_datamask(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !206 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !207
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 122
  %12 = load i64, ptr %11, align 8, !tbaa !228
  %13 = icmp eq ptr %10, %1
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %1) #16
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !229
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %16, i1 %20, i1 false
  %22 = or i64 %12, 96
  %23 = select i1 %21, i64 %12, i64 %22
  %24 = shl i32 %18, 4
  %25 = and i32 %24, 64
  %26 = zext nneg i32 %25 to i64
  %27 = or i64 %23, %26
  %28 = shl i32 %18, 17
  %29 = and i32 %28, 1048576
  %30 = zext nneg i32 %29 to i64
  %31 = or i64 %27, %30
  %32 = and i32 %18, 1
  %33 = zext nneg i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 36
  %35 = or i64 %31, %34
  br label %36

36:                                               ; preds = %14, %9
  %37 = phi i64 [ %12, %9 ], [ %35, %14 ]
  ret i64 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !PGOFuncName !230 {
  tail call void @BKE_object_free_derived_caches(ptr noundef %1) #16
  tail call void @BKE_object_sculpt_modifiers_changed(ptr noundef %1) #16
  tail call void @BKE_editmesh_free_derivedmesh(ptr noundef %2) #16
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 6
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 5
  tail call fastcc void @editbmesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %3) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !231
  tail call void @DM_set_object_boundbox(ptr noundef %1, ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 7
  store i64 %3, ptr %8, align 8, !tbaa !232
  %9 = load ptr, ptr %6, align 8, !tbaa !231
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 10
  store i32 0, ptr %10, align 4, !tbaa !97
  %11 = load ptr, ptr %5, align 8, !tbaa !233
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 10
  store i32 0, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_build_data(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !234 {
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !226
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %1) #16
  %14 = icmp eq ptr %12, %1
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = icmp eq i8 %13, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %19 = load i32, ptr %18, align 8, !tbaa !229
  %20 = and i32 %19, 28
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %15, %17, %11
  %24 = phi i32 [ 0, %11 ], [ 1, %15 ], [ %22, %17 ]
  tail call void @BKE_object_free_derived_caches(ptr noundef %1) #16
  tail call void @BKE_object_sculpt_modifiers_changed(ptr noundef %1) #16
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 119
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  tail call fastcc void @mesh_calc_modifiers(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %25, ptr noundef nonnull %26, i32 noundef 0, i32 noundef 1, i32 noundef %24, i64 noundef %2, i32 noundef -1, i32 noundef 1, i32 noundef %3) #17
  %27 = load ptr, ptr %26, align 8, !tbaa !235
  tail call void @DM_set_object_boundbox(ptr noundef %1, ptr noundef %27) #17
  %28 = load ptr, ptr %26, align 8, !tbaa !235
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 10
  store i32 0, ptr %29, align 4, !tbaa !97
  %30 = load ptr, ptr %25, align 8, !tbaa !236
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 10
  store i32 0, ptr %31, align 4, !tbaa !97
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 121
  store i64 %2, ptr %32, align 8, !tbaa !237
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !229
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !238
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !239
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !240
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef nonnull %0, ptr noundef %45, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %46

46:                                               ; preds = %41, %37, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i64 @object_get_datamask(ptr noundef %0, ptr noundef %1) #17
  %5 = or i64 %4, %2
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  %7 = load ptr, ptr %6, align 8, !tbaa !235
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 121
  %11 = load i64, ptr %10, align 8, !tbaa !237
  %12 = and i64 %11, %5
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %3
  tail call fastcc void @mesh_build_data(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %5, i32 noundef 0) #17
  %15 = load ptr, ptr %6, align 8, !tbaa !235
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %15, %14 ], [ %7, %9 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i64 @object_get_datamask(ptr noundef %0, ptr noundef %1) #17
  %5 = or i64 %4, %2
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 119
  %7 = load ptr, ptr %6, align 8, !tbaa !236
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 121
  %11 = load i64, ptr %10, align 8, !tbaa !237
  %12 = and i64 %11, %5
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %3
  tail call fastcc void @mesh_build_data(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %5, i32 noundef 0) #17
  %15 = load ptr, ptr %6, align 8, !tbaa !236
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %15, %14 ], [ %7, %9 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_render(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1, i32 noundef 0, i64 noundef %2, i32 noundef -1, i32 noundef 0, i32 noundef 0) #17
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !247 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.VirtualModifierData, align 8
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #18
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !140
  store i32 %18, ptr %13, align 4, !tbaa !105
  %19 = icmp slt i32 %6, 0
  %20 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.MultiresModifierData, ptr %20, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !248
  %25 = icmp ne i8 %24, 0
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i1 [ false, %12 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !229
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !238
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !250
  %39 = icmp ne ptr %38, null
  br label %40

40:                                               ; preds = %26, %36, %32
  %41 = phi i1 [ false, %32 ], [ true, %36 ], [ false, %26 ]
  %42 = phi i1 [ false, %32 ], [ %39, %36 ], [ false, %26 ]
  %43 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !239
  %45 = tail call fastcc i32 @dm_drawflag_calc(ptr noundef %44) #17
  %46 = icmp eq i32 %29, 0
  %47 = and i64 %8, 1048576
  %48 = icmp ne i64 %47, 0
  %49 = and i32 %29, 8
  %50 = icmp ne i32 %49, 0
  %51 = and i1 %48, %50
  %52 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 38
  %53 = load i16, ptr %52, align 2, !tbaa !252
  %54 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 39
  %55 = load float, ptr %54, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %14) #18
  %56 = icmp ne i32 %5, 0
  %57 = zext i1 %56 to i32
  %58 = icmp eq i32 %10, 0
  %59 = or disjoint i32 %57, 2
  %60 = select i1 %58, i32 %57, i32 %59
  %61 = icmp ne i32 %6, 0
  %62 = select i1 %61, i32 %59, i32 %57
  %63 = icmp sgt i32 %6, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %40
  %65 = call ptr @modifiers_getVirtualModifierList(ptr noundef nonnull %1, ptr noundef nonnull %14) #16
  br label %76

66:                                               ; preds = %40
  %67 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %68 = load ptr, ptr %67, align 8, !tbaa !254
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ModifierData, ptr %68, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !172
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load ptr, ptr %68, align 8, !tbaa !255
  br label %76

76:                                               ; preds = %66, %70, %74, %64
  %77 = phi ptr [ %75, %74 ], [ %68, %70 ], [ null, %66 ], [ %65, %64 ]
  call void @modifiers_clearErrors(ptr noundef nonnull %1) #16
  %78 = select i1 %56, i32 2, i32 1
  %79 = or i1 %46, %51
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call ptr @modifiers_getLastPreview(ptr noundef nonnull %0, ptr noundef %77, i32 noundef %78) #16
  %82 = icmp ne ptr %81, null
  %83 = and i1 %51, %82
  %84 = select i1 %83, i64 4, i64 0
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi i64 [ 0, %76 ], [ %84, %80 ]
  %87 = phi ptr [ null, %76 ], [ %81, %80 ]
  %88 = call ptr @modifiers_calcDataMasks(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %77, i64 noundef %8, i32 noundef %78, ptr noundef %87, i64 noundef %86) #16
  %89 = icmp eq ptr %3, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store ptr null, ptr %3, align 8, !tbaa !81
  br label %91

91:                                               ; preds = %90, %85
  store ptr null, ptr %4, align 8, !tbaa !81
  br i1 %61, label %92, label %147

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %94 = icmp eq ptr %77, null
  br i1 %94, label %135, label %95

95:                                               ; preds = %92
  %96 = icmp sgt i32 %9, -1
  br label %97

97:                                               ; preds = %95, %130
  %98 = phi ptr [ %77, %95 ], [ %132, %130 ]
  %99 = phi ptr [ %88, %95 ], [ %133, %130 ]
  %100 = phi ptr [ %2, %95 ], [ %131, %130 ]
  %101 = getelementptr inbounds %struct.ModifierData, ptr %98, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !172
  %103 = call ptr @modifierType_getInfo(i32 noundef %102) #16
  %104 = getelementptr inbounds %struct.ModifierData, ptr %98, i64 0, i32 7
  store ptr %0, ptr %104, align 8, !tbaa !174
  %105 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %98, i32 noundef %78) #16
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %130, label %107

107:                                              ; preds = %97
  br i1 %19, label %108, label %115

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %103, i64 0, i32 17
  %110 = load ptr, ptr %109, align 8, !tbaa !256
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = call zeroext i8 %110(ptr noundef nonnull %98) #16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %112, %108, %107
  %116 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %103, i64 0, i32 3
  %117 = load i32, ptr %116, align 4, !tbaa !178
  %118 = icmp ne i32 %117, 1
  %119 = select i1 %118, i1 true, i1 %42
  br i1 %119, label %135, label %120

120:                                              ; preds = %115
  %121 = icmp eq ptr %100, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %120
  %123 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %16, ptr noundef nonnull %13) #16
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi ptr [ %100, %120 ], [ %123, %122 ]
  %126 = load i32, ptr %13, align 4, !tbaa !105
  call void @modwrap_deformVerts(ptr noundef nonnull %98, ptr noundef %1, ptr noundef null, ptr noundef %125, i32 noundef %126, i32 noundef %62) #16
  br i1 %96, label %127, label %130

127:                                              ; preds = %124
  %128 = call i32 @BLI_findindex(ptr noundef nonnull %93, ptr noundef nonnull %98) #16
  %129 = icmp slt i32 %128, %9
  br i1 %129, label %130, label %135

130:                                              ; preds = %124, %127, %97, %112
  %131 = phi ptr [ %100, %112 ], [ %100, %97 ], [ %125, %127 ], [ %125, %124 ]
  %132 = load ptr, ptr %98, align 8, !tbaa !255
  %133 = load ptr, ptr %99, align 8, !tbaa !257
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %97, !llvm.loop !259

135:                                              ; preds = %130, %127, %115, %92
  %136 = phi ptr [ %88, %92 ], [ %99, %115 ], [ %99, %127 ], [ %133, %130 ]
  %137 = phi ptr [ null, %92 ], [ %98, %115 ], [ %98, %127 ], [ null, %130 ]
  %138 = phi ptr [ %2, %92 ], [ %100, %115 ], [ %125, %127 ], [ %131, %130 ]
  br i1 %89, label %151, label %139

139:                                              ; preds = %135
  %140 = call ptr @CDDM_from_mesh(ptr noundef %16) #16
  store ptr %140, ptr %3, align 8, !tbaa !81
  %141 = icmp eq i32 %11, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  call fastcc void @add_shapekey_layers(ptr noundef null, ptr noundef %16) #17
  br label %143

143:                                              ; preds = %142, %139
  %144 = icmp eq ptr %138, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr %3, align 8, !tbaa !81
  call void @CDDM_apply_vert_coords(ptr noundef %146, ptr noundef nonnull %138) #16
  br label %151

147:                                              ; preds = %91
  %148 = icmp eq ptr %2, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = call ptr @BKE_mesh_vertexCos_get(ptr noundef nonnull %16, ptr noundef nonnull %13) #16
  br label %151

151:                                              ; preds = %147, %149, %135, %145, %143
  %152 = phi ptr [ %138, %145 ], [ null, %143 ], [ %138, %135 ], [ %150, %149 ], [ %2, %147 ]
  %153 = phi ptr [ %136, %145 ], [ %136, %143 ], [ %136, %135 ], [ %88, %149 ], [ %88, %147 ]
  %154 = phi ptr [ %137, %145 ], [ %137, %143 ], [ %137, %135 ], [ %77, %149 ], [ %77, %147 ]
  %155 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %156 = icmp eq ptr %154, null
  br i1 %156, label %443, label %157

157:                                              ; preds = %151
  %158 = xor i1 %27, true
  %159 = xor i1 %56, true
  %160 = and i1 %42, %159
  %161 = icmp eq i32 %7, 0
  %162 = icmp eq i32 %11, 0
  %163 = select i1 %161, i64 0, i64 128
  %164 = or disjoint i32 %57, 4
  %165 = icmp sgt i32 %9, -1
  br label %166

166:                                              ; preds = %157, %432
  %167 = phi ptr [ %154, %157 ], [ %440, %432 ]
  %168 = phi ptr [ %153, %157 ], [ %441, %432 ]
  %169 = phi i64 [ 128, %157 ], [ %439, %432 ]
  %170 = phi ptr [ %152, %157 ], [ %438, %432 ]
  %171 = phi ptr [ null, %157 ], [ %437, %432 ]
  %172 = phi ptr [ null, %157 ], [ %436, %432 ]
  %173 = phi ptr [ null, %157 ], [ %435, %432 ]
  %174 = phi i8 [ 0, %157 ], [ %434, %432 ]
  %175 = phi i8 [ 0, %157 ], [ %433, %432 ]
  %176 = getelementptr inbounds %struct.ModifierData, ptr %167, i64 0, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !172
  %178 = call ptr @modifierType_getInfo(i32 noundef %177) #16
  %179 = getelementptr inbounds %struct.ModifierData, ptr %167, i64 0, i32 7
  store ptr %0, ptr %179, align 8, !tbaa !174
  %180 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %167, i32 noundef %78) #16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %432, label %182

182:                                              ; preds = %166
  %183 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %178, i64 0, i32 3
  %184 = load i32, ptr %183, align 4, !tbaa !178
  %185 = icmp ne i32 %184, 1
  %186 = or i1 %61, %185
  br i1 %186, label %187, label %432

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %178, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !205
  %190 = and i32 %189, 32
  %191 = icmp ne i32 %190, 0
  %192 = icmp ne ptr %171, null
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %167, ptr noundef nonnull @.str.8) #16
  br label %432

195:                                              ; preds = %187
  br i1 %41, label %196, label %225

196:                                              ; preds = %195
  %197 = icmp ne i8 %174, 0
  %198 = select i1 %158, i1 true, i1 %197
  %199 = select i1 %198, i1 true, i1 %42
  br i1 %199, label %200, label %225

200:                                              ; preds = %196
  %201 = load i32, ptr %176, align 8, !tbaa !172
  %202 = icmp eq i32 %201, 29
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.MultiresModifierData, ptr %167, i64 0, i32 2
  %205 = load i8, ptr %204, align 1, !tbaa !248
  %206 = icmp ne i8 %205, 0
  %207 = select i1 %206, i1 true, i1 %42
  br i1 %207, label %208, label %432

208:                                              ; preds = %203, %200
  %209 = load ptr, ptr %43, align 8, !tbaa !239
  %210 = getelementptr inbounds %struct.ToolSettings, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !240
  %212 = getelementptr inbounds %struct.Sculpt, ptr %211, i64 0, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !260
  %214 = and i32 %213, 256
  %215 = icmp ne i32 %214, 0
  %216 = and i1 %185, %215
  %217 = or i1 %160, %216
  %218 = zext i1 %217 to i8
  %219 = or i8 %174, %218
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %208
  br i1 %42, label %222, label %223

222:                                              ; preds = %221
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %167, ptr noundef nonnull @.str.29) #16
  br label %432

223:                                              ; preds = %221
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %167, ptr noundef nonnull @.str.30) #16
  br label %432

224:                                              ; preds = %208
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %167, ptr noundef nonnull @.str.31) #16
  br label %225

225:                                              ; preds = %224, %196, %195
  br i1 %161, label %229, label %226

226:                                              ; preds = %225
  %227 = call zeroext i8 @modifier_supportsMapping(ptr noundef nonnull %167) #16
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %432, label %229

229:                                              ; preds = %226, %225
  br i1 %19, label %230, label %237

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %178, i64 0, i32 17
  %232 = load ptr, ptr %231, align 8, !tbaa !256
  %233 = icmp eq ptr %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = call zeroext i8 %232(ptr noundef nonnull %167) #16
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %432

237:                                              ; preds = %234, %230, %229
  %238 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %178, i64 0, i32 13
  %239 = load ptr, ptr %238, align 8, !tbaa !262
  %240 = icmp eq ptr %239, null
  br i1 %240, label %247, label %241

241:                                              ; preds = %237
  %242 = call i64 %239(ptr noundef %1, ptr noundef nonnull %167) #16
  %243 = and i64 %242, 16384
  %244 = icmp ne i64 %243, 0
  %245 = select i1 %192, i1 %244, i1 false
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef nonnull %171, ptr noundef %172, i32 noundef 14) #17
  br label %247

247:                                              ; preds = %237, %246, %241
  %248 = load i32, ptr %183, align 4, !tbaa !178
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %283

250:                                              ; preds = %247
  %251 = icmp eq ptr %170, null
  br i1 %251, label %252, label %265

252:                                              ; preds = %250
  br i1 %192, label %253, label %263

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.DerivedMesh, ptr %171, i64 0, i32 23
  %255 = load ptr, ptr %254, align 8, !tbaa !66
  %256 = call i32 %255(ptr noundef nonnull %171) #16
  store i32 %256, ptr %13, align 4, !tbaa !105
  %257 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %258 = sext i32 %256 to i64
  %259 = mul nsw i64 %258, 12
  %260 = call ptr %257(i64 noundef %259, ptr noundef nonnull @.str.26) #16
  %261 = getelementptr inbounds %struct.DerivedMesh, ptr %171, i64 0, i32 77
  %262 = load ptr, ptr %261, align 8, !tbaa !263
  call void %262(ptr noundef nonnull %171, ptr noundef %260) #16
  br label %265

263:                                              ; preds = %252
  %264 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %16, ptr noundef nonnull %13) #16
  br label %265

265:                                              ; preds = %253, %263, %250
  %266 = phi ptr [ %170, %250 ], [ %260, %253 ], [ %264, %263 ]
  %267 = icmp eq i8 %175, 0
  br i1 %267, label %281, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %178, i64 0, i32 18
  %270 = load ptr, ptr %269, align 8, !tbaa !264
  %271 = icmp eq ptr %270, null
  br i1 %271, label %281, label %272

272:                                              ; preds = %268
  %273 = call zeroext i8 %270(ptr noundef nonnull %167) #16
  %274 = icmp ne i8 %273, 0
  %275 = select i1 %274, i1 %192, i1 false
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.DerivedMesh, ptr %171, i64 0, i32 14
  %278 = load i32, ptr %277, align 8, !tbaa !91
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  call void @CDDM_apply_vert_coords(ptr noundef nonnull %171, ptr noundef %266) #16
  br label %281

281:                                              ; preds = %276, %280, %272, %268, %265
  %282 = load i32, ptr %13, align 4, !tbaa !105
  call void @modwrap_deformVerts(ptr noundef nonnull %167, ptr noundef %1, ptr noundef %171, ptr noundef %266, i32 noundef %282, i32 noundef %62) #16
  br label %415

283:                                              ; preds = %247
  %284 = load ptr, ptr %168, align 8, !tbaa !257
  %285 = icmp eq ptr %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.CDMaskLink, ptr %284, i64 0, i32 1
  %288 = load i64, ptr %287, align 8, !tbaa !265
  br label %289

289:                                              ; preds = %283, %286
  %290 = phi i64 [ %288, %286 ], [ %8, %283 ]
  br i1 %192, label %291, label %297

291:                                              ; preds = %289
  %292 = icmp eq ptr %170, null
  br i1 %292, label %319, label %293

293:                                              ; preds = %291
  %294 = call ptr @CDDM_copy(ptr noundef nonnull %171) #16
  %295 = getelementptr inbounds %struct.DerivedMesh, ptr %171, i64 0, i32 95
  %296 = load ptr, ptr %295, align 8, !tbaa !179
  call void %296(ptr noundef nonnull %171) #16
  call void @CDDM_apply_vert_coords(ptr noundef %294, ptr noundef nonnull %170) #16
  br label %319

297:                                              ; preds = %289
  %298 = call ptr @CDDM_from_mesh(ptr noundef %16) #16
  br i1 %162, label %300, label %299

299:                                              ; preds = %297
  call fastcc void @add_shapekey_layers(ptr noundef %298, ptr noundef %16) #17
  br label %300

300:                                              ; preds = %299, %297
  %301 = icmp eq ptr %170, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %300
  call void @CDDM_apply_vert_coords(ptr noundef %298, ptr noundef nonnull %170) #16
  br label %303

303:                                              ; preds = %302, %300
  br i1 %51, label %304, label %305

304:                                              ; preds = %303
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %298, i32 noundef %45, ptr noundef null, i32 noundef 0, ptr noundef null) #17
  br label %305

305:                                              ; preds = %304, %303
  %306 = and i64 %290, 128
  %307 = icmp eq i64 %306, 0
  %308 = select i1 %161, i1 %307, i1 false
  br i1 %308, label %319, label %309

309:                                              ; preds = %305
  call void @DM_add_vert_layer(ptr noundef %298, i32 noundef 7, i32 noundef 1, ptr noundef null) #17
  call void @DM_add_edge_layer(ptr noundef %298, i32 noundef 7, i32 noundef 1, ptr noundef null) #17
  call void @DM_add_poly_layer(ptr noundef %298, i32 noundef 7, i32 noundef 1, ptr noundef null) #17
  %310 = call ptr @DM_get_vert_data_layer(ptr noundef %298, i32 noundef 7) #17
  %311 = getelementptr inbounds %struct.DerivedMesh, ptr %298, i64 0, i32 5
  %312 = load i32, ptr %311, align 8, !tbaa !92
  call void @range_vn_i(ptr noundef %310, i32 noundef %312, i32 noundef 0) #16
  %313 = call ptr @DM_get_edge_data_layer(ptr noundef %298, i32 noundef 7) #17
  %314 = getelementptr inbounds %struct.DerivedMesh, ptr %298, i64 0, i32 6
  %315 = load i32, ptr %314, align 4, !tbaa !93
  call void @range_vn_i(ptr noundef %313, i32 noundef %315, i32 noundef 0) #16
  %316 = call ptr @DM_get_poly_data_layer(ptr noundef %298, i32 noundef 7) #17
  %317 = getelementptr inbounds %struct.DerivedMesh, ptr %298, i64 0, i32 9
  %318 = load i32, ptr %317, align 8, !tbaa !96
  call void @range_vn_i(ptr noundef %316, i32 noundef %318, i32 noundef 0) #16
  br label %319

319:                                              ; preds = %305, %309, %291, %293
  %320 = phi ptr [ %294, %293 ], [ %171, %291 ], [ %298, %309 ], [ %298, %305 ]
  %321 = getelementptr inbounds %struct.CDMaskLink, ptr %168, i64 0, i32 1
  %322 = load i64, ptr %321, align 8, !tbaa !265
  %323 = or i64 %322, %169
  %324 = or i64 %323, %163
  call void @DM_set_only_copy(ptr noundef %320, i64 noundef %324) #17
  %325 = and i64 %323, 8388608
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %319
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef %320, ptr noundef %173, i32 noundef 23) #17
  br label %328

328:                                              ; preds = %327, %319
  %329 = load i64, ptr %321, align 8, !tbaa !265
  %330 = and i64 %329, 2147483648
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.DerivedMesh, ptr %320, i64 0, i32 3
  %334 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %333, i32 noundef 31) #16
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  call void @DM_add_loop_layer(ptr noundef %320, i32 noundef 31, i32 noundef 1, ptr noundef null) #17
  call void @DM_init_origspace(ptr noundef %320) #17
  br label %337

337:                                              ; preds = %332, %336, %328
  %338 = call ptr @modwrap_applyModifier(ptr noundef nonnull %167, ptr noundef %1, ptr noundef %320, i32 noundef %60) #16
  %339 = icmp eq ptr %338, null
  br i1 %339, label %353, label %340

340:                                              ; preds = %337
  %341 = icmp eq ptr %320, null
  %342 = icmp eq ptr %320, %338
  %343 = or i1 %341, %342
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.DerivedMesh, ptr %320, i64 0, i32 95
  %346 = load ptr, ptr %345, align 8, !tbaa !179
  call void %346(ptr noundef nonnull %320) #16
  br label %347

347:                                              ; preds = %344, %340
  %348 = icmp eq ptr %170, null
  %349 = icmp eq ptr %170, %2
  %350 = or i1 %348, %349
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %352(ptr noundef nonnull %170) #16
  br label %353

353:                                              ; preds = %351, %347, %337
  %354 = phi ptr [ %338, %347 ], [ %320, %337 ], [ %338, %351 ]
  %355 = phi ptr [ null, %347 ], [ %170, %337 ], [ null, %351 ]
  %356 = and i64 %290, 16384
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %382, label %358

358:                                              ; preds = %353
  %359 = icmp eq ptr %172, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %358
  %361 = call fastcc ptr @create_orco_dm(ptr noundef %1, ptr noundef %16, ptr noundef null, i32 noundef 14) #17
  br label %362

362:                                              ; preds = %360, %358
  %363 = phi ptr [ %172, %358 ], [ %361, %360 ]
  %364 = and i64 %290, -16385
  %365 = load ptr, ptr %238, align 8, !tbaa !262
  %366 = icmp eq ptr %365, null
  br i1 %366, label %369, label %367

367:                                              ; preds = %362
  %368 = call i64 %365(ptr noundef %1, ptr noundef nonnull %167) #16
  br label %369

369:                                              ; preds = %362, %367
  %370 = phi i64 [ %368, %367 ], [ 0, %362 ]
  %371 = or i64 %364, %370
  %372 = or i64 %371, 128
  call void @DM_set_only_copy(ptr noundef %363, i64 noundef %372) #17
  %373 = call ptr @modwrap_applyModifier(ptr noundef nonnull %167, ptr noundef %1, ptr noundef %363, i32 noundef %164) #16
  %374 = icmp eq ptr %373, null
  br i1 %374, label %382, label %375

375:                                              ; preds = %369
  %376 = icmp eq ptr %363, null
  %377 = icmp eq ptr %363, %373
  %378 = or i1 %376, %377
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.DerivedMesh, ptr %363, i64 0, i32 95
  %381 = load ptr, ptr %380, align 8, !tbaa !179
  call void %381(ptr noundef nonnull %363) #16
  br label %382

382:                                              ; preds = %375, %379, %369, %353
  %383 = phi ptr [ %363, %369 ], [ %172, %353 ], [ %373, %379 ], [ %373, %375 ]
  %384 = phi i64 [ %364, %369 ], [ %290, %353 ], [ %364, %379 ], [ %364, %375 ]
  %385 = and i64 %384, 8388608
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %404, label %387

387:                                              ; preds = %382
  %388 = icmp eq ptr %173, null
  br i1 %388, label %389, label %391

389:                                              ; preds = %387
  %390 = call fastcc ptr @create_orco_dm(ptr noundef %1, ptr noundef %16, ptr noundef null, i32 noundef 23) #17
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi ptr [ %173, %387 ], [ %390, %389 ]
  %393 = and i64 %384, -8388737
  %394 = or disjoint i64 %393, 128
  call void @DM_set_only_copy(ptr noundef %392, i64 noundef %394) #17
  %395 = call ptr @modwrap_applyModifier(ptr noundef nonnull %167, ptr noundef %1, ptr noundef %392, i32 noundef %164) #16
  %396 = icmp eq ptr %395, null
  br i1 %396, label %404, label %397

397:                                              ; preds = %391
  %398 = icmp eq ptr %392, null
  %399 = icmp eq ptr %392, %395
  %400 = or i1 %398, %399
  br i1 %400, label %404, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.DerivedMesh, ptr %392, i64 0, i32 95
  %403 = load ptr, ptr %402, align 8, !tbaa !179
  call void %403(ptr noundef nonnull %392) #16
  br label %404

404:                                              ; preds = %397, %401, %391, %382
  %405 = phi ptr [ %392, %391 ], [ %173, %382 ], [ %395, %401 ], [ %395, %397 ]
  %406 = load i32, ptr %176, align 8, !tbaa !172
  %407 = icmp eq i32 %406, 40
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = or i64 %169, 4294967296
  br label %415

410:                                              ; preds = %404
  %411 = icmp eq ptr %167, %87
  %412 = and i1 %51, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %410
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %354, i32 noundef %45, ptr noundef null, i32 noundef 0, ptr noundef null) #17
  %414 = or i64 %169, 4294967296
  br label %415

415:                                              ; preds = %408, %413, %410, %281
  %416 = phi ptr [ %173, %281 ], [ %405, %410 ], [ %405, %413 ], [ %405, %408 ]
  %417 = phi ptr [ %172, %281 ], [ %383, %410 ], [ %383, %413 ], [ %383, %408 ]
  %418 = phi ptr [ %171, %281 ], [ %354, %410 ], [ %354, %413 ], [ %354, %408 ]
  %419 = phi ptr [ %266, %281 ], [ %355, %410 ], [ %355, %413 ], [ %355, %408 ]
  %420 = phi i64 [ %169, %281 ], [ %169, %410 ], [ %414, %413 ], [ %409, %408 ]
  %421 = load i32, ptr %183, align 4, !tbaa !178
  %422 = icmp eq i32 %421, 1
  %423 = zext i1 %422 to i8
  br i1 %165, label %424, label %427

424:                                              ; preds = %415
  %425 = call i32 @BLI_findindex(ptr noundef nonnull %155, ptr noundef nonnull %167) #16
  %426 = icmp slt i32 %425, %9
  br i1 %426, label %427, label %443

427:                                              ; preds = %424, %415
  br i1 %41, label %428, label %432

428:                                              ; preds = %427
  %429 = load i32, ptr %176, align 8, !tbaa !172
  %430 = icmp eq i32 %429, 29
  %431 = select i1 %430, i8 1, i8 %174
  br label %432

432:                                              ; preds = %222, %223, %203, %194, %166, %182, %226, %234, %428, %427
  %433 = phi i8 [ %423, %427 ], [ %423, %428 ], [ %175, %234 ], [ %175, %226 ], [ %175, %182 ], [ %175, %166 ], [ %175, %194 ], [ %175, %203 ], [ %175, %223 ], [ %175, %222 ]
  %434 = phi i8 [ %174, %427 ], [ %431, %428 ], [ %174, %234 ], [ %174, %226 ], [ %174, %182 ], [ %174, %166 ], [ %174, %194 ], [ %174, %203 ], [ %174, %223 ], [ %174, %222 ]
  %435 = phi ptr [ %416, %427 ], [ %416, %428 ], [ %173, %234 ], [ %173, %226 ], [ %173, %182 ], [ %173, %166 ], [ %173, %194 ], [ %173, %203 ], [ %173, %223 ], [ %173, %222 ]
  %436 = phi ptr [ %417, %427 ], [ %417, %428 ], [ %172, %234 ], [ %172, %226 ], [ %172, %182 ], [ %172, %166 ], [ %172, %194 ], [ %172, %203 ], [ %172, %223 ], [ %172, %222 ]
  %437 = phi ptr [ %418, %427 ], [ %418, %428 ], [ %171, %234 ], [ %171, %226 ], [ %171, %182 ], [ %171, %166 ], [ %171, %194 ], [ %171, %203 ], [ %171, %223 ], [ %171, %222 ]
  %438 = phi ptr [ %419, %427 ], [ %419, %428 ], [ %170, %234 ], [ %170, %226 ], [ %170, %182 ], [ %170, %166 ], [ %170, %194 ], [ %170, %203 ], [ %170, %223 ], [ %170, %222 ]
  %439 = phi i64 [ %420, %427 ], [ %420, %428 ], [ %169, %234 ], [ %169, %226 ], [ %169, %182 ], [ %169, %166 ], [ %169, %194 ], [ %169, %203 ], [ %169, %223 ], [ %169, %222 ]
  %440 = load ptr, ptr %167, align 8, !tbaa !255
  %441 = load ptr, ptr %168, align 8, !tbaa !257
  %442 = icmp eq ptr %440, null
  br i1 %442, label %443, label %166, !llvm.loop !266

443:                                              ; preds = %432, %424, %151
  %444 = phi ptr [ null, %151 ], [ %416, %424 ], [ %435, %432 ]
  %445 = phi ptr [ null, %151 ], [ %417, %424 ], [ %436, %432 ]
  %446 = phi ptr [ null, %151 ], [ %418, %424 ], [ %437, %432 ]
  %447 = phi ptr [ %152, %151 ], [ %419, %424 ], [ %438, %432 ]
  %448 = icmp eq ptr %77, null
  br i1 %448, label %453, label %449

449:                                              ; preds = %443, %449
  %450 = phi ptr [ %451, %449 ], [ %77, %443 ]
  call void @modifier_freeTemporaryData(ptr noundef nonnull %450) #16
  %451 = load ptr, ptr %450, align 8, !tbaa !255
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %449, !llvm.loop !267

453:                                              ; preds = %449, %443
  %454 = icmp ne ptr %446, null
  %455 = icmp ne ptr %447, null
  %456 = select i1 %454, i1 %455, i1 false
  br i1 %456, label %457, label %461

457:                                              ; preds = %453
  %458 = call ptr @CDDM_copy(ptr noundef nonnull %446) #16
  %459 = getelementptr inbounds %struct.DerivedMesh, ptr %446, i64 0, i32 95
  %460 = load ptr, ptr %459, align 8, !tbaa !179
  call void %460(ptr noundef nonnull %446) #16
  call void @CDDM_apply_vert_coords(ptr noundef %458, ptr noundef nonnull %447) #16
  br label %470

461:                                              ; preds = %453
  br i1 %454, label %470, label %462

462:                                              ; preds = %461
  %463 = call ptr @CDDM_from_mesh(ptr noundef %16) #16
  %464 = icmp eq i32 %11, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %462
  call fastcc void @add_shapekey_layers(ptr noundef %463, ptr noundef %16) #17
  br label %466

466:                                              ; preds = %465, %462
  br i1 %455, label %467, label %468

467:                                              ; preds = %466
  call void @CDDM_apply_vert_coords(ptr noundef %463, ptr noundef nonnull %447) #16
  br label %468

468:                                              ; preds = %467, %466
  br i1 %51, label %469, label %470

469:                                              ; preds = %468
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %463, i32 noundef %45, ptr noundef null, i32 noundef 0, ptr noundef null) #17
  br label %470

470:                                              ; preds = %461, %469, %468, %457
  %471 = phi ptr [ %458, %457 ], [ %463, %469 ], [ %463, %468 ], [ %446, %461 ]
  %472 = and i64 %8, 16384
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %479, label %474

474:                                              ; preds = %470
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef %471, ptr noundef %445, i32 noundef 14) #17
  br i1 %89, label %479, label %475

475:                                              ; preds = %474
  %476 = load ptr, ptr %3, align 8, !tbaa !81
  %477 = icmp eq ptr %476, null
  br i1 %477, label %479, label %478

478:                                              ; preds = %475
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef null, ptr noundef nonnull %476, ptr noundef null, i32 noundef 14) #17
  br label %479

479:                                              ; preds = %474, %475, %478, %470
  %480 = and i16 %53, 32
  %481 = icmp eq i16 %480, 0
  br i1 %481, label %483, label %482

482:                                              ; preds = %479
  call fastcc void @DM_calc_loop_normals(ptr noundef %471, float noundef %55) #17
  call void @DM_ensure_tessface(ptr noundef %471) #17
  br label %484

483:                                              ; preds = %479
  call void @DM_ensure_tessface(ptr noundef %471) #17
  call fastcc void @dm_ensure_display_normals(ptr noundef %471) #17
  br label %484

484:                                              ; preds = %482, %483
  store ptr %471, ptr %4, align 8, !tbaa !81
  %485 = icmp eq ptr %445, null
  br i1 %485, label %489, label %486

486:                                              ; preds = %484
  %487 = getelementptr inbounds %struct.DerivedMesh, ptr %445, i64 0, i32 95
  %488 = load ptr, ptr %487, align 8, !tbaa !179
  call void %488(ptr noundef nonnull %445) #16
  br label %489

489:                                              ; preds = %486, %484
  %490 = icmp eq ptr %444, null
  br i1 %490, label %494, label %491

491:                                              ; preds = %489
  %492 = getelementptr inbounds %struct.DerivedMesh, ptr %444, i64 0, i32 95
  %493 = load ptr, ptr %492, align 8, !tbaa !179
  call void %493(ptr noundef nonnull %444) #16
  br label %494

494:                                              ; preds = %491, %489
  %495 = icmp ne ptr %447, %2
  %496 = and i1 %495, %455
  br i1 %496, label %497, label %499

497:                                              ; preds = %494
  %498 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %498(ptr noundef nonnull %447) #16
  br label %499

499:                                              ; preds = %497, %494
  call void @BLI_linklist_free(ptr noundef %88, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_index_render(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i32 noundef 0, i64 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_view(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %6 = load i16, ptr %5, align 8, !tbaa !268
  %7 = or i16 %6, 16384
  store i16 %7, ptr %5, align 8, !tbaa !268
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, i32 noundef 0, i64 noundef %2, i32 noundef -1, i32 noundef 0, i32 noundef 0) #17
  %8 = load i16, ptr %5, align 8, !tbaa !268
  %9 = and i16 %8, -16385
  store i16 %9, ptr %5, align 8, !tbaa !268
  %10 = load ptr, ptr %4, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_no_deform(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_no_virtual(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef -1, i32 noundef 0, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_physics(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef -1, i32 noundef 1, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_create_derived_no_deform_render(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call fastcc void @mesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0, i32 noundef 0, i64 noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef 0) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @editbmesh_get_derived_cage_and_final(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @object_get_datamask(ptr noundef %0, ptr noundef %1) #17
  %7 = or i64 %6, %4
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !233
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !232
  %14 = and i64 %13, %7
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %5
  tail call fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %7) #17
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !231
  store ptr %19, ptr %3, align 8, !tbaa !81
  %20 = load ptr, ptr %8, align 8, !tbaa !233
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i64 @object_get_datamask(ptr noundef %0, ptr noundef %1) #17
  %6 = or i64 %5, %3
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !233
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !232
  %13 = and i64 %12, %6
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %4
  tail call fastcc void @editbmesh_build_data(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %6) #17
  %16 = load ptr, ptr %7, align 8, !tbaa !233
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %16, %15 ], [ %8, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @editbmesh_get_derived_base(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @getEditDerivedBMesh(ptr noundef %1, ptr noundef %0, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @getEditDerivedBMesh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @object_get_derived_final(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !269
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
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mesh_get_mapped_verts_coords(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.MappedUserData, align 8
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 71
  %6 = load ptr, ptr %5, align 8, !tbaa !270
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %14 = sext i32 %2 to i64
  %15 = mul nsw i64 %14, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %15, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !271
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !81
  %17 = ashr i32 %2, 5
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str.9) #16
  %22 = getelementptr inbounds %struct.MappedUserData, ptr %4, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !273
  %23 = load ptr, ptr %5, align 8, !tbaa !270
  call void %23(ptr noundef nonnull %0, ptr noundef nonnull @make_vertexcos__mapFunc, ptr noundef nonnull %4, i32 noundef 0) #16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  %25 = load ptr, ptr %22, align 8, !tbaa !273
  call void %24(ptr noundef %25) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %33

26:                                               ; preds = %10, %26
  %27 = phi i64 [ 0, %10 ], [ %31, %26 ]
  %28 = load ptr, ptr %11, align 8, !tbaa !274
  %29 = getelementptr inbounds [3 x float], ptr %1, i64 %27
  %30 = trunc i64 %27 to i32
  tail call void %28(ptr noundef nonnull %0, i32 noundef %30, ptr noundef %29) #16
  %31 = add nuw nsw i64 %27, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %26, !llvm.loop !275

33:                                               ; preds = %26, %8, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @make_vertexcos__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #12 !PGOFuncName !276 {
  %6 = getelementptr inbounds %struct.MappedUserData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !273
  %8 = ashr i32 %1, 5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !105
  %12 = and i32 %1, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load ptr, ptr %0, align 8, !tbaa !271
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [3 x float], ptr %17, i64 %18
  tail call fastcc void @copy_v3_v3(ptr noundef %19, ptr noundef %2) #17
  %20 = load ptr, ptr %6, align 8, !tbaa !273
  %21 = getelementptr inbounds i32, ptr %20, i64 %9
  %22 = load i32, ptr %21, align 4, !tbaa !105
  %23 = or i32 %22, %13
  store i32 %23, ptr %21, align 4, !tbaa !105
  br label %24

24:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_add_tangent_layer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.SGLSLMeshToTangent, align 8
  %3 = alloca %struct.SMikkTSpaceContext, align 8
  %4 = alloca %struct.SMikkTSpaceInterface, align 8
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %6 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %5, i32 noundef 18) #16
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %50

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 8) #16
  %12 = load ptr, ptr %9, align 8, !tbaa !62
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 40) #16
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = tail call i32 %15(ptr noundef %0) #16
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call ptr %18(ptr noundef %0) #16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = tail call ptr %21(ptr noundef %0) #16
  %23 = load ptr, ptr %9, align 8, !tbaa !62
  %24 = tail call ptr %23(ptr noundef %0, i32 noundef 5) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = tail call ptr %28(ptr noundef nonnull %0, i32 noundef 14) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %26, %8
  %32 = phi ptr [ null, %8 ], [ %29, %26 ]
  tail call void @DM_add_tessface_layer(ptr noundef nonnull %0, i32 noundef 18, i32 noundef 1, ptr noundef null) #17
  %33 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %0, i32 noundef 18) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %34 = getelementptr inbounds i8, ptr %2, i64 56
  store i64 0, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  %35 = getelementptr inbounds i8, ptr %4, i64 48
  store i64 0, ptr %35, align 8
  store ptr %11, ptr %2, align 8, !tbaa !277
  %36 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 1
  store ptr %13, ptr %36, align 8, !tbaa !279
  %37 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 2
  store ptr %24, ptr %37, align 8, !tbaa !280
  %38 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 3
  store ptr %22, ptr %38, align 8, !tbaa !281
  %39 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 4
  store ptr %19, ptr %39, align 8, !tbaa !282
  %40 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 5
  store ptr %32, ptr %40, align 8, !tbaa !283
  %41 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 6
  store ptr %33, ptr %41, align 8, !tbaa !284
  %42 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %2, i64 0, i32 7
  store i32 %16, ptr %42, align 8, !tbaa !285
  %43 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %3, i64 0, i32 1
  store ptr %2, ptr %43, align 8, !tbaa !286
  store ptr %4, ptr %3, align 8, !tbaa !288
  store ptr @GetNumFaces, ptr %4, align 8, !tbaa !289
  %44 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 1
  store ptr @GetNumVertsOfFace, ptr %44, align 8, !tbaa !291
  %45 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 2
  store ptr @GetPosition, ptr %45, align 8, !tbaa !292
  %46 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 4
  store ptr @GetTextureCoordinate, ptr %46, align 8, !tbaa !293
  %47 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 3
  store ptr @GetNormal, ptr %47, align 8, !tbaa !294
  %48 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %4, i64 0, i32 5
  store ptr @SetTSpace, ptr %48, align 8, !tbaa !295
  %49 = call i32 @genTangSpaceDefault(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  br label %50

50:                                               ; preds = %26, %1, %31
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @GetNumFaces(ptr nocapture noundef readonly %0) #10 !PGOFuncName !296 {
  %2 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !286
  %4 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !285
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @GetNumVertsOfFace(ptr nocapture noundef readonly %0, i32 noundef %1) #10 !PGOFuncName !297 {
  %3 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !281
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MFace, ptr %6, i64 %7, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !108
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 3, i32 4
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @GetPosition(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #12 !PGOFuncName !298 {
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
  %15 = load i32, ptr %14, align 4, !tbaa !113
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %8, i64 %16
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %17) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GetTextureCoordinate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !PGOFuncName !299 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !280
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.MTFace, ptr %8, i64 %11
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds [4 x [2 x float]], ptr %12, i64 0, i64 %13
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef nonnull %14) #17
  br label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !283
  %18 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !281
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds %struct.MFace, ptr %19, i64 %20
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !113
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [3 x float], ptr %17, i64 %25
  %27 = getelementptr inbounds float, ptr %1, i64 1
  %28 = load float, ptr %26, align 4, !tbaa !139
  %29 = getelementptr inbounds float, ptr %26, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !139
  %31 = getelementptr inbounds float, ptr %26, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !139
  tail call void @map_to_sphere(ptr noundef %1, ptr noundef nonnull %27, float noundef %28, float noundef %30, float noundef %32) #16
  br label %33

33:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GetNormal(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !PGOFuncName !300 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !281
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !279
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds [4 x [3 x i16]], ptr %12, i64 %9, i64 %15
  tail call fastcc void @normal_short_to_float_v3(ptr noundef %1, ptr noundef nonnull %16) #17
  br label %58

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 6
  %19 = load i8, ptr %18, align 1, !tbaa !301
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 8, !tbaa !277
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds [3 x float], ptr %23, i64 %9
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %26) #17
  br label %58

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !282
  %30 = load i32, ptr %10, align 4, !tbaa !113
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.MVert, ptr %29, i64 %31
  %33 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !116
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MVert, ptr %29, i64 %35
  %37 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !117
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.MVert, ptr %29, i64 %39
  %41 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %27
  %45 = zext i32 %42 to i64
  %46 = getelementptr inbounds %struct.MVert, ptr %29, i64 %45
  %47 = tail call float @normal_quad_v3(ptr noundef %1, ptr noundef %32, ptr noundef %36, ptr noundef %40, ptr noundef nonnull %46) #16
  br label %58

48:                                               ; preds = %27
  %49 = tail call float @normal_tri_v3(ptr noundef %1, ptr noundef %32, ptr noundef %36, ptr noundef %40) #16
  br label %58

50:                                               ; preds = %17
  %51 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %6, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !282
  %53 = sext i32 %3 to i64
  %54 = getelementptr inbounds i32, ptr %10, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !113
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.MVert, ptr %52, i64 %56, i32 1
  tail call fastcc void @normal_short_to_float_v3(ptr noundef %1, ptr noundef nonnull %57) #17
  br label %58

58:                                               ; preds = %44, %48, %50, %25, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @SetTSpace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) #12 !PGOFuncName !302 {
  %6 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !286
  %8 = getelementptr inbounds %struct.SGLSLMeshToTangent, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  %10 = shl nsw i32 %3, 2
  %11 = add nsw i32 %10, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x float], ptr %9, i64 %12
  tail call fastcc void @copy_v3_v3(ptr noundef %13, ptr noundef %1) #17
  %14 = getelementptr inbounds float, ptr %13, i64 3
  store float %2, ptr %14, align 4, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare i32 @genTangSpaceDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_calc_auto_bump_scale(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x ptr], align 16
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [6 x i32], align 16
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = tail call i32 %13(ptr noundef %0) #16
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = tail call ptr %16(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = tail call ptr %19(ptr noundef %0) #16
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = tail call ptr %22(ptr noundef %0, i32 noundef 5) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %222, label %25

25:                                               ; preds = %1
  %26 = icmp sgt i32 %14, 0
  br i1 %26, label %27, label %219

27:                                               ; preds = %25
  %28 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %29 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 2
  %30 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %31 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  %32 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %33 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %34 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %35 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %36 = getelementptr inbounds i32, ptr %6, i64 1
  %37 = getelementptr inbounds i32, ptr %6, i64 2
  %38 = getelementptr inbounds i32, ptr %6, i64 3
  %39 = getelementptr inbounds i32, ptr %6, i64 4
  %40 = getelementptr inbounds i32, ptr %6, i64 5
  %41 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %42 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %43 = zext nneg i32 %14 to i64
  br label %44

44:                                               ; preds = %27, %207
  %45 = phi i64 [ 0, %27 ], [ %211, %207 ]
  %46 = phi double [ 0.000000e+00, %27 ], [ %209, %207 ]
  %47 = phi i32 [ 0, %27 ], [ %210, %207 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %48 = getelementptr inbounds %struct.MFace, ptr %20, i64 %45
  %49 = getelementptr inbounds %struct.MFace, ptr %20, i64 %45, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !108
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr %48, align 4, !tbaa !113
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.MVert, ptr %17, i64 %53
  store ptr %54, ptr %2, align 16, !tbaa !81
  %55 = getelementptr inbounds %struct.MFace, ptr %20, i64 %45, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !116
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MVert, ptr %17, i64 %57
  store ptr %58, ptr %28, align 8, !tbaa !81
  %59 = getelementptr inbounds %struct.MFace, ptr %20, i64 %45, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !117
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.MVert, ptr %17, i64 %61
  store ptr %62, ptr %29, align 16, !tbaa !81
  %63 = getelementptr inbounds %struct.MTFace, ptr %23, i64 %45
  store ptr %63, ptr %3, align 16, !tbaa !81
  %64 = getelementptr inbounds [4 x [2 x float]], ptr %63, i64 0, i64 1
  store ptr %64, ptr %30, align 8, !tbaa !81
  %65 = getelementptr inbounds [4 x [2 x float]], ptr %63, i64 0, i64 2
  store ptr %65, ptr %31, align 16, !tbaa !81
  br i1 %51, label %70, label %66

66:                                               ; preds = %44
  %67 = zext i32 %50 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %17, i64 %67
  store ptr %68, ptr %32, align 8, !tbaa !81
  %69 = getelementptr inbounds [4 x [2 x float]], ptr %63, i64 0, i64 3
  store ptr %69, ptr %33, align 8, !tbaa !81
  br label %70

70:                                               ; preds = %66, %44
  %71 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %54, ptr noundef %58) #17, !range !303
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %207

73:                                               ; preds = %70
  %74 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %54, ptr noundef %62) #17, !range !303
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %207

76:                                               ; preds = %73
  %77 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %58, ptr noundef %62) #17, !range !303
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %207

79:                                               ; preds = %76
  %80 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %63, ptr noundef nonnull %64) #17, !range !303
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %207

82:                                               ; preds = %79
  %83 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %63, ptr noundef nonnull %65) #17, !range !303
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %207

85:                                               ; preds = %82
  %86 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %64, ptr noundef nonnull %65) #17, !range !303
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %207

88:                                               ; preds = %85
  br i1 %51, label %151, label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %32, align 8, !tbaa !81
  %91 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %90, ptr noundef %54) #17, !range !303
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %207

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %90, ptr noundef %58) #17, !range !303
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %207

96:                                               ; preds = %93
  %97 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %90, ptr noundef %62) #17, !range !303
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %207

99:                                               ; preds = %96
  %100 = load ptr, ptr %33, align 8, !tbaa !81
  %101 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef %100, ptr noundef nonnull %63) #17, !range !303
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %207

103:                                              ; preds = %99
  %104 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef %100, ptr noundef nonnull %64) #17, !range !303
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %207

106:                                              ; preds = %103
  %107 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef %100, ptr noundef nonnull %65) #17, !range !303
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %207

109:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %63, ptr noundef %100) #17
  br label %110

110:                                              ; preds = %109, %136
  %111 = phi i32 [ 0, %109 ], [ %113, %136 ]
  %112 = phi i8 [ 0, %109 ], [ %137, %136 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %113 = add nuw nsw i32 %111, 1
  %114 = and i32 %113, 3
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !81
  %118 = zext nneg i32 %111 to i64
  %119 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !81
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef %117, ptr noundef %120) #17
  %121 = load float, ptr %4, align 4, !tbaa !139
  %122 = load float, ptr %34, align 4, !tbaa !139
  %123 = load float, ptr %35, align 4, !tbaa !139
  %124 = load float, ptr %5, align 4, !tbaa !139
  %125 = fneg float %123
  %126 = fmul float %124, %125
  %127 = tail call float @llvm.fmuladd.f32(float %121, float %122, float %126)
  %128 = icmp eq i32 %111, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %110
  %130 = fcmp olt float %127, 0.000000e+00
  %131 = zext i1 %130 to i8
  br label %136

132:                                              ; preds = %110
  %133 = icmp ne i8 %112, 0
  %134 = fcmp uge float %127, 0.000000e+00
  %135 = xor i1 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129, %132
  %137 = phi i8 [ %131, %129 ], [ %112, %132 ]
  call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %138 = icmp ult i32 %111, 3
  br i1 %138, label %110, label %140, !llvm.loop !304

139:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %207

140:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %141 = tail call fastcc float @len_squared_v3v3(ptr noundef %62, ptr noundef %54) #17
  %142 = tail call fastcc float @len_squared_v3v3(ptr noundef %90, ptr noundef %58) #17
  %143 = fcmp olt float %142, %141
  br i1 %143, label %151, label %144

144:                                              ; preds = %140
  %145 = fcmp oeq float %141, %142
  br i1 %145, label %146, label %151

146:                                              ; preds = %144
  %147 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %65, ptr noundef nonnull %63) #17
  %148 = tail call fastcc float @len_squared_v2v2(ptr noundef %100, ptr noundef nonnull %64) #17
  %149 = fcmp olt float %148, %147
  %150 = zext i1 %149 to i32
  br label %151

151:                                              ; preds = %88, %140, %144, %146
  %152 = phi i64 [ 2, %140 ], [ 2, %144 ], [ 2, %146 ], [ 1, %88 ]
  %153 = phi i32 [ 1, %140 ], [ 0, %144 ], [ %150, %146 ], [ 0, %88 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  store i32 %153, ptr %6, align 16, !tbaa !105
  %154 = add nuw nsw i32 %153, 1
  store i32 %154, ptr %36, align 4, !tbaa !105
  %155 = or disjoint i32 %153, 2
  store i32 %155, ptr %37, align 8, !tbaa !105
  store i32 %153, ptr %38, align 4, !tbaa !105
  store i32 %155, ptr %39, align 16, !tbaa !105
  %156 = add nuw nsw i32 %153, 3
  %157 = and i32 %156, 3
  store i32 %157, ptr %40, align 4, !tbaa !105
  br label %158

158:                                              ; preds = %151, %201
  %159 = phi i64 [ 0, %151 ], [ %204, %201 ]
  %160 = phi double [ %46, %151 ], [ %203, %201 ]
  %161 = phi i32 [ %47, %151 ], [ %202, %201 ]
  %162 = mul nuw nsw i64 %159, 3
  %163 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !105
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !81
  %168 = add nuw nsw i64 %162, 1
  %169 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !105
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !81
  %174 = add nuw nsw i64 %162, 2
  %175 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !105
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %180 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %171
  %181 = load ptr, ptr %180, align 8, !tbaa !81
  %182 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %165
  %183 = load ptr, ptr %182, align 8, !tbaa !81
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %181, ptr noundef %183) #17
  %184 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %177
  %185 = load ptr, ptr %184, align 8, !tbaa !81
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef %185, ptr noundef %183) #17
  %186 = load float, ptr %7, align 4, !tbaa !139
  %187 = load float, ptr %41, align 4, !tbaa !139
  %188 = load float, ptr %42, align 4, !tbaa !139
  %189 = load float, ptr %8, align 4, !tbaa !139
  %190 = fneg float %188
  %191 = fmul float %189, %190
  %192 = tail call float @llvm.fmuladd.f32(float %186, float %187, float %191)
  %193 = tail call float @llvm.fabs.f32(float %192)
  %194 = fcmp ogt float %193, 0x3E80000000000000
  br i1 %194, label %195, label %201

195:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %173, ptr noundef %167) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %179, ptr noundef %167) #17
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %196 = call fastcc float @len_v3(ptr noundef nonnull %9) #17
  %197 = fdiv float %196, %193
  %198 = add nsw i32 %161, 1
  %199 = fpext float %197 to double
  %200 = fadd double %160, %199
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  br label %201

201:                                              ; preds = %195, %158
  %202 = phi i32 [ %198, %195 ], [ %161, %158 ]
  %203 = phi double [ %200, %195 ], [ %160, %158 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %204 = add nuw nsw i64 %159, 1
  %205 = icmp eq i64 %204, %152
  br i1 %205, label %206, label %158, !llvm.loop !305

206:                                              ; preds = %201
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  br label %207

207:                                              ; preds = %139, %85, %82, %79, %76, %73, %70, %106, %103, %99, %96, %93, %89, %206
  %208 = phi i32 [ %202, %206 ], [ %47, %139 ], [ %47, %89 ], [ %47, %93 ], [ %47, %96 ], [ %47, %99 ], [ %47, %103 ], [ %47, %106 ], [ %47, %70 ], [ %47, %73 ], [ %47, %76 ], [ %47, %79 ], [ %47, %82 ], [ %47, %85 ]
  %209 = phi double [ %203, %206 ], [ %46, %139 ], [ %46, %89 ], [ %46, %93 ], [ %46, %96 ], [ %46, %99 ], [ %46, %103 ], [ %46, %106 ], [ %46, %70 ], [ %46, %73 ], [ %46, %76 ], [ %46, %79 ], [ %46, %82 ], [ %46, %85 ]
  %210 = freeze i32 %208
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  %211 = add nuw nsw i64 %45, 1
  %212 = icmp eq i64 %211, %43
  br i1 %212, label %213, label %44, !llvm.loop !306

213:                                              ; preds = %207
  %214 = icmp sgt i32 %210, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %213
  %216 = sitofp i32 %210 to double
  %217 = fdiv double %209, %216
  %218 = fptrunc double %217 to float
  br label %219

219:                                              ; preds = %25, %213, %215
  %220 = phi float [ %218, %215 ], [ 1.000000e+00, %213 ], [ 1.000000e+00, %25 ]
  %221 = tail call float @sqrtf(float noundef %220) #16
  br label %222

222:                                              ; preds = %1, %219
  %223 = phi float [ %221, %219 ], [ 1.000000e+00, %1 ]
  %224 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 15
  store float %223, ptr %224, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !307 {
  %3 = load float, ptr %0, align 4, !tbaa !139
  %4 = load float, ptr %1, align 4, !tbaa !139
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !139
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !139
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !139
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !308 {
  %3 = load float, ptr %0, align 4, !tbaa !139
  %4 = load float, ptr %1, align 4, !tbaa !139
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !139
  %11 = fcmp oeq float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !309 {
  %4 = load float, ptr %1, align 4, !tbaa !139
  %5 = load float, ptr %2, align 4, !tbaa !139
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !139
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !139
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !310 {
  %3 = load float, ptr %1, align 4, !tbaa !139
  store float %3, ptr %0, align 4, !tbaa !139
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !139
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !311 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !312 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !313 {
  %4 = load float, ptr %1, align 4, !tbaa !139
  %5 = load float, ptr %2, align 4, !tbaa !139
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !139
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !139
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !139
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !139
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !139
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !314 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !139
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !139
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !139
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !139
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !139
  %15 = load float, ptr %8, align 4, !tbaa !139
  %16 = load float, ptr %2, align 4, !tbaa !139
  %17 = load float, ptr %1, align 4, !tbaa !139
  %18 = load float, ptr %6, align 4, !tbaa !139
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !139
  %23 = load float, ptr %1, align 4, !tbaa !139
  %24 = load float, ptr %10, align 4, !tbaa !139
  %25 = load float, ptr %4, align 4, !tbaa !139
  %26 = load float, ptr %2, align 4, !tbaa !139
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !315 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #16
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %2, i8 0, i64 376, i1 false)
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = tail call ptr %5(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 15
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = fcmp ugt float %8, 0.000000e+00
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @DM_calc_auto_bump_scale(ptr noundef nonnull %0) #17
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !316
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %30, label %223

15:                                               ; preds = %39
  %16 = icmp sgt i32 %41, 0
  br i1 %16, label %17, label %223

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 7
  %19 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3
  %20 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3, i32 1
  %21 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 3, i32 2
  %22 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 6
  %23 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2, i32 1
  %25 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 2, i32 2
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %27 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 5
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  %29 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 4
  br label %44

30:                                               ; preds = %11, %39
  %31 = phi i64 [ %40, %39 ], [ 0, %11 ]
  %32 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !318
  %34 = icmp eq i32 %33, 18
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = tail call i32 @CustomData_get_layer_index(ptr noundef %6, i32 noundef 18) #16
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @DM_add_tangent_layer(ptr noundef %0) #17
  br label %39

39:                                               ; preds = %30, %38, %35
  %40 = add nuw nsw i64 %31, 1
  %41 = load i32, ptr %12, align 4, !tbaa !316
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %30, label %15, !llvm.loop !320

44:                                               ; preds = %17, %218
  %45 = phi i64 [ 0, %17 ], [ %219, %218 ]
  %46 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !318
  switch i32 %47, label %218 [
    i32 5, label %48
    i32 6, label %118
    i32 18, label %188
    i32 14, label %203
  ]

48:                                               ; preds = %44
  %49 = load i32, ptr %26, align 8, !tbaa !91
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  %52 = load ptr, ptr %28, align 8, !tbaa !54
  %53 = tail call ptr %52(ptr noundef nonnull %0) #16
  %54 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 4
  %55 = load i8, ptr %54, align 4, !tbaa !137
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %53, i32 noundef 16, ptr noundef nonnull %54) #16
  br label %61

59:                                               ; preds = %51
  %60 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %53, i32 noundef 16) #16
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load i32, ptr %29, align 8, !tbaa !321
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %29, align 8, !tbaa !321
  %65 = icmp eq i32 %62, -1
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %6, align 8, !tbaa !325
  %68 = sext i32 %62 to i64
  %69 = getelementptr inbounds %struct.CustomDataLayer, ptr %67, i64 %68, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !326
  %71 = sext i32 %63 to i64
  %72 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %71
  store ptr %70, ptr %72, align 8, !tbaa !327
  %73 = load ptr, ptr %53, align 8, !tbaa !325
  %74 = getelementptr inbounds %struct.CustomDataLayer, ptr %73, i64 %68, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !328
  br label %79

76:                                               ; preds = %61
  %77 = sext i32 %63 to i64
  %78 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %77
  store ptr null, ptr %78, align 8, !tbaa !327
  br label %79

79:                                               ; preds = %76, %66
  %80 = phi i64 [ %77, %76 ], [ %71, %66 ]
  %81 = phi i32 [ -1, %76 ], [ %75, %66 ]
  %82 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %80, i32 1
  store i32 %81, ptr %82, align 8, !tbaa !329
  %83 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 1
  %84 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %80, i32 2
  %85 = load <2 x i32>, ptr %83, align 4, !tbaa !105
  store <2 x i32> %85, ptr %84, align 4, !tbaa !105
  br label %218

86:                                               ; preds = %48
  %87 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 4
  %88 = load i8, ptr %87, align 4, !tbaa !137
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %6, i32 noundef 5, ptr noundef nonnull %87) #16
  br label %94

92:                                               ; preds = %86
  %93 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %6, i32 noundef 5) #16
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load i32, ptr %29, align 8, !tbaa !321
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %29, align 8, !tbaa !321
  %98 = icmp eq i32 %95, -1
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %6, align 8, !tbaa !325
  %101 = sext i32 %95 to i64
  %102 = getelementptr inbounds %struct.CustomDataLayer, ptr %100, i64 %101, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !326
  %104 = sext i32 %96 to i64
  %105 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %104
  store ptr %103, ptr %105, align 8, !tbaa !327
  %106 = getelementptr inbounds %struct.CustomDataLayer, ptr %100, i64 %101, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !328
  br label %111

108:                                              ; preds = %94
  %109 = sext i32 %96 to i64
  %110 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %109
  store ptr null, ptr %110, align 8, !tbaa !327
  br label %111

111:                                              ; preds = %108, %99
  %112 = phi i64 [ %109, %108 ], [ %104, %99 ]
  %113 = phi i32 [ -1, %108 ], [ %107, %99 ]
  %114 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %112, i32 1
  store i32 %113, ptr %114, align 8, !tbaa !329
  %115 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 1
  %116 = getelementptr inbounds [8 x %struct.anon], ptr %2, i64 0, i64 %112, i32 2
  %117 = load <2 x i32>, ptr %115, align 4, !tbaa !105
  store <2 x i32> %117, ptr %116, align 4, !tbaa !105
  br label %218

118:                                              ; preds = %44
  %119 = load i32, ptr %26, align 8, !tbaa !91
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %156

121:                                              ; preds = %118
  %122 = load ptr, ptr %28, align 8, !tbaa !54
  %123 = tail call ptr %122(ptr noundef nonnull %0) #16
  %124 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 4
  %125 = load i8, ptr %124, align 4, !tbaa !137
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  %128 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %123, i32 noundef 17, ptr noundef nonnull %124) #16
  br label %131

129:                                              ; preds = %121
  %130 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %123, i32 noundef 17) #16
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = load i32, ptr %27, align 4, !tbaa !330
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %27, align 4, !tbaa !330
  %135 = icmp eq i32 %132, -1
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr %6, align 8, !tbaa !325
  %138 = sext i32 %132 to i64
  %139 = getelementptr inbounds %struct.CustomDataLayer, ptr %137, i64 %138, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !326
  %141 = sext i32 %133 to i64
  %142 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %141
  store ptr %140, ptr %142, align 8, !tbaa !331
  %143 = load ptr, ptr %123, align 8, !tbaa !325
  %144 = getelementptr inbounds %struct.CustomDataLayer, ptr %143, i64 %138, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !328
  br label %149

146:                                              ; preds = %131
  %147 = sext i32 %133 to i64
  %148 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %147
  store ptr null, ptr %148, align 8, !tbaa !331
  br label %149

149:                                              ; preds = %146, %136
  %150 = phi i64 [ %147, %146 ], [ %141, %136 ]
  %151 = phi i32 [ -1, %146 ], [ %145, %136 ]
  %152 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %150, i32 1
  store i32 %151, ptr %152, align 8, !tbaa !332
  %153 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !333
  %155 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %150, i32 2
  store i32 %154, ptr %155, align 4, !tbaa !334
  br label %218

156:                                              ; preds = %118
  %157 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 4
  %158 = load i8, ptr %157, align 4, !tbaa !137
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %157) #16
  br label %164

162:                                              ; preds = %156
  %163 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %6, i32 noundef 6) #16
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load i32, ptr %27, align 4, !tbaa !330
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %27, align 4, !tbaa !330
  %168 = icmp eq i32 %165, -1
  br i1 %168, label %178, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %6, align 8, !tbaa !325
  %171 = sext i32 %165 to i64
  %172 = getelementptr inbounds %struct.CustomDataLayer, ptr %170, i64 %171, i32 9
  %173 = load ptr, ptr %172, align 8, !tbaa !326
  %174 = sext i32 %166 to i64
  %175 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %174
  store ptr %173, ptr %175, align 8, !tbaa !331
  %176 = getelementptr inbounds %struct.CustomDataLayer, ptr %170, i64 %171, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !328
  br label %181

178:                                              ; preds = %164
  %179 = sext i32 %166 to i64
  %180 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %179
  store ptr null, ptr %180, align 8, !tbaa !331
  br label %181

181:                                              ; preds = %178, %169
  %182 = phi i64 [ %179, %178 ], [ %174, %169 ]
  %183 = phi i32 [ -1, %178 ], [ %177, %169 ]
  %184 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %182, i32 1
  store i32 %183, ptr %184, align 8, !tbaa !332
  %185 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !333
  %187 = getelementptr inbounds %struct.DMVertexAttribs, ptr %2, i64 0, i32 1, i64 %182, i32 2
  store i32 %186, ptr %187, align 4, !tbaa !334
  br label %218

188:                                              ; preds = %44
  %189 = tail call i32 @CustomData_get_layer_index(ptr noundef %6, i32 noundef 18) #16
  store i32 1, ptr %22, align 8, !tbaa !335
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %198, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %6, align 8, !tbaa !325
  %193 = sext i32 %189 to i64
  %194 = getelementptr inbounds %struct.CustomDataLayer, ptr %192, i64 %193, i32 9
  %195 = load ptr, ptr %194, align 8, !tbaa !326
  store ptr %195, ptr %23, align 8, !tbaa !336
  %196 = getelementptr inbounds %struct.CustomDataLayer, ptr %192, i64 %193, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !328
  br label %199

198:                                              ; preds = %188
  store ptr null, ptr %23, align 8, !tbaa !336
  br label %199

199:                                              ; preds = %198, %191
  %200 = phi i32 [ %197, %191 ], [ -1, %198 ]
  store i32 %200, ptr %24, align 8, !tbaa !337
  %201 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !333
  store i32 %202, ptr %25, align 4, !tbaa !338
  br label %218

203:                                              ; preds = %44
  %204 = tail call i32 @CustomData_get_layer_index(ptr noundef %0, i32 noundef 14) #16
  store i32 1, ptr %18, align 4, !tbaa !339
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %213, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %0, align 8, !tbaa !325
  %208 = sext i32 %204 to i64
  %209 = getelementptr inbounds %struct.CustomDataLayer, ptr %207, i64 %208, i32 9
  %210 = load ptr, ptr %209, align 8, !tbaa !326
  store ptr %210, ptr %19, align 8, !tbaa !340
  %211 = getelementptr inbounds %struct.CustomDataLayer, ptr %207, i64 %208, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !328
  br label %214

213:                                              ; preds = %203
  store ptr null, ptr %19, align 8, !tbaa !340
  br label %214

214:                                              ; preds = %213, %206
  %215 = phi i32 [ %212, %206 ], [ -1, %213 ]
  store i32 %215, ptr %20, align 8, !tbaa !341
  %216 = getelementptr inbounds [32 x %struct.anon.3], ptr %1, i64 0, i64 %45, i32 1
  %217 = load <2 x i32>, ptr %216, align 4, !tbaa !105
  store <2 x i32> %217, ptr %21, align 4, !tbaa !105
  br label %218

218:                                              ; preds = %44, %111, %79, %199, %214, %149, %181
  %219 = add nuw nsw i64 %45, 1
  %220 = load i32, ptr %12, align 4, !tbaa !316
  %221 = sext i32 %220 to i64
  %222 = icmp slt i64 %219, %221
  br i1 %222, label %44, label %223, !llvm.loop !342

223:                                              ; preds = %218, %11, %15
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_set_object_boundbox(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 8, !tbaa !139
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !139
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %6, align 8, !tbaa !139
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !139
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 75
  %8 = load ptr, ptr %7, align 8, !tbaa !343
  call void %8(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !344
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !81
  %14 = call ptr %13(i64 noundef 104, ptr noundef nonnull @.str.10) #16
  store ptr %14, ptr %9, align 8, !tbaa !344
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ %10, %2 ]
  call void @BKE_boundbox_init_from_minmax(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_init_origspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 31) #16
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = tail call i32 %5(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call ptr %8(ptr noundef %0) #16
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1, %31
  %12 = phi i32 [ %32, %31 ], [ 0, %1 ]
  %13 = phi ptr [ %33, %31 ], [ %9, %1 ]
  %14 = getelementptr inbounds %struct.MPoly, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !188
  %16 = add i32 %15, -3
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load i32, ptr %13, align 4, !tbaa !111
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %3, i64 %20
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ 0, %18 ], [ %26, %22 ]
  %24 = phi ptr [ %21, %18 ], [ %27, %22 ]
  %25 = getelementptr inbounds [4 x [2 x float]], ptr @DM_init_origspace.default_osf, i64 0, i64 %23
  tail call fastcc void @copy_v2_v2(ptr noundef %24, ptr noundef nonnull %25) #17
  %26 = add nuw nsw i64 %23, 1
  %27 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %24, i64 1
  %28 = load i32, ptr %14, align 4, !tbaa !188
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %22, label %31, !llvm.loop !345

31:                                               ; preds = %22, %11
  %32 = add nuw nsw i32 %12, 1
  %33 = getelementptr inbounds %struct.MPoly, ptr %13, i64 1
  %34 = icmp eq i32 %32, %6
  br i1 %34, label %35, label %11, !llvm.loop !346

35:                                               ; preds = %31, %1
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %37 = load i32, ptr %36, align 8, !tbaa !99
  %38 = or i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_vert_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 55
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call ptr %4(ptr noundef %0) #16
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 0) #16
  store i8 0, ptr %1, align 1, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = tail call i32 %11(ptr noundef nonnull %0) #16
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 20
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.11) #16
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 36
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  tail call void %17(ptr noundef nonnull %0, ptr noundef %15) #16
  store i8 1, ptr %1, align 1, !tbaa !137
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_edge_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr %4(ptr noundef %0) #16
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 3) #16
  store i8 0, ptr %1, align 1, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = tail call i32 %11(ptr noundef nonnull %0) #16
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.12) #16
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 37
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  tail call void %17(ptr noundef nonnull %0, ptr noundef %15) #16
  store i8 1, ptr %1, align 1, !tbaa !137
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_loop_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr %4(ptr noundef %0) #16
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 26) #16
  store i8 0, ptr %1, align 1, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = tail call i32 %11(ptr noundef nonnull %0) #16
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.13) #16
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  tail call void %17(ptr noundef nonnull %0, ptr noundef %15) #16
  store i8 1, ptr %1, align 1, !tbaa !137
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_poly_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = tail call ptr %4(ptr noundef %0) #16
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 25) #16
  store i8 0, ptr %1, align 1, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = tail call i32 %11(ptr noundef nonnull %0) #16
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.14) #16
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 40
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  tail call void %17(ptr noundef nonnull %0, ptr noundef %15) #16
  store i8 1, ptr %1, align 1, !tbaa !137
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %15, %8 ], [ %6, %2 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_get_tessface_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call ptr %4(ptr noundef %0) #16
  %6 = tail call ptr @CustomData_get_layer(ptr noundef %5, i32 noundef 4) #16
  store i8 0, ptr %1, align 1, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = tail call i32 %10(ptr noundef nonnull %0) #16
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %15 = zext nneg i32 %11 to i64
  %16 = mul nuw nsw i64 %15, 20
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.15) #16
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 38
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  tail call void %19(ptr noundef nonnull %0, ptr noundef %17) #16
  store i8 1, ptr %1, align 1, !tbaa !137
  br label %20

20:                                               ; preds = %8, %13, %2
  %21 = phi ptr [ %6, %2 ], [ %17, %13 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @CustomData_set_layer_flag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @weightpaint_color(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !347 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !182
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call zeroext i8 @do_colorband(ptr noundef nonnull %7, float noundef %2, ptr noundef nonnull %4) #16
  br label %12

11:                                               ; preds = %6, %3
  call void @weight_to_rgb(ptr noundef nonnull %4, float noundef %2) #17
  br label %12

12:                                               ; preds = %11, %9
  %13 = load float, ptr %4, align 16, !tbaa !139
  %14 = fmul float %13, 2.550000e+02
  %15 = fptoui float %14 to i8
  store i8 %15, ptr %0, align 1, !tbaa !137
  %16 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !139
  %18 = fmul float %17, 2.550000e+02
  %19 = fptoui float %18 to i8
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %19, ptr %20, align 1, !tbaa !137
  %21 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !139
  %23 = fmul float %22, 2.550000e+02
  %24 = fptoui float %23 to i8
  %25 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %24, ptr %25, align 1, !tbaa !137
  %26 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 -1, ptr %26, align 1, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_objdef_selected_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_weightpaint_vert_color(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !348 {
  %8 = icmp slt i32 %5, 2
  %9 = and i32 %6, 8
  %10 = icmp eq i32 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %54, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !349
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 8, !tbaa !351
  br label %18

18:                                               ; preds = %41, %16
  %19 = phi ptr [ %44, %41 ], [ %17, %16 ]
  %20 = phi i32 [ %43, %41 ], [ %14, %16 ]
  %21 = phi i1 [ false, %41 ], [ true, %16 ]
  %22 = phi float [ %42, %41 ], [ 0.000000e+00, %16 ]
  br label %23

23:                                               ; preds = %18, %37
  %24 = phi ptr [ %39, %37 ], [ %19, %18 ]
  %25 = phi i32 [ %38, %37 ], [ %20, %18 ]
  %26 = load i32, ptr %24, align 4, !tbaa !352
  %27 = icmp slt i32 %26, %2
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i8, ptr %4, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !137
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.MDeformWeight, ptr %24, i64 0, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !354
  %36 = fcmp une float %35, 0.000000e+00
  br i1 %36, label %41, label %37

37:                                               ; preds = %23, %33, %28
  %38 = add i32 %25, -1
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %24, i64 1
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %46, label %23, !llvm.loop !355

41:                                               ; preds = %33
  %42 = fadd float %22, %35
  %43 = add i32 %25, -1
  %44 = getelementptr inbounds %struct.MDeformWeight, ptr %24, i64 1
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %47, label %18, !llvm.loop !355

46:                                               ; preds = %37
  br i1 %21, label %76, label %47

47:                                               ; preds = %41, %46
  %48 = phi float [ %22, %46 ], [ %42, %41 ]
  %49 = and i32 %6, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = sitofp i32 %5 to float
  %53 = fdiv float %48, %52
  br label %68

54:                                               ; preds = %7
  %55 = tail call float @defvert_find_weight(ptr noundef %1, i32 noundef %3) #16
  %56 = and i32 %6, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = fcmp oeq float %55, 0.000000e+00
  br i1 %59, label %76, label %68

60:                                               ; preds = %54
  %61 = and i32 %6, 4
  %62 = icmp ne i32 %61, 0
  %63 = fcmp oeq float %55, 0.000000e+00
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = tail call zeroext i8 @defvert_is_weight_zero(ptr noundef %1, i32 noundef %2) #16
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %47, %51, %60, %58, %65
  %69 = phi float [ %55, %65 ], [ %48, %47 ], [ %53, %51 ], [ %55, %60 ], [ %55, %58 ]
  %70 = fcmp olt float %69, 0.000000e+00
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = fcmp ogt float %69, 1.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %68, %71, %73
  %75 = phi float [ 1.000000e+00, %73 ], [ %69, %71 ], [ 0.000000e+00, %68 ]
  tail call fastcc void @weightpaint_color(ptr noundef %0, ptr noundef nonnull @G_dm_wcinfo, float noundef %75) #17
  br label %79

76:                                               ; preds = %12, %58, %46, %65
  %77 = load ptr, ptr getelementptr inbounds (%struct.DMWeightColorInfo, ptr @G_dm_wcinfo, i64 0, i32 1), align 8, !tbaa !184
  tail call fastcc void @copy_v3_v3_char(ptr noundef %0, ptr noundef %77) #17
  %78 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 -1, ptr %78, align 1, !tbaa !137
  br label %79

79:                                               ; preds = %76, %74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !356 {
  %3 = load i8, ptr %1, align 1, !tbaa !137
  store i8 %3, ptr %0, align 1, !tbaa !137
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !137
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !137
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !137
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !137
  ret void
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @defvert_is_weight_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !357 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !358
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !359
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !203
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !360
  store ptr %7, ptr %0, align 8, !tbaa !137
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_sculpt_modifiers_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_editmesh_free_derivedmesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @editbmesh_calc_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, i64 noundef %5) unnamed_addr #0 !PGOFuncName !361 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !tbaa !105
  %9 = tail call i32 @modifiers_getCageIndex(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1) #16
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !239
  %12 = tail call fastcc i32 @dm_drawflag_calc(ptr noundef %11) #17
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  %15 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 36
  %16 = load i32, ptr %15, align 8, !tbaa !362
  %17 = trunc i32 %16 to i8
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 1
  %20 = and i32 %16, 131072
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i8 %19, 0
  %23 = select i1 %21, i1 %22, i1 false
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %8) #18
  %24 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 38
  %25 = load i16, ptr %24, align 2, !tbaa !252
  %26 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 39
  %27 = load float, ptr %26, align 8, !tbaa !253
  tail call void @modifiers_clearErrors(ptr noundef %1) #16
  %28 = icmp ne ptr %3, null
  %29 = icmp eq i32 %9, -1
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = tail call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef nonnull %1, ptr noundef null) #16
  store ptr %32, ptr %3, align 8, !tbaa !81
  br label %33

33:                                               ; preds = %31, %6
  %34 = call ptr @modifiers_getVirtualModifierList(ptr noundef nonnull %1, ptr noundef nonnull %8) #16
  br i1 %22, label %39, label %35

35:                                               ; preds = %33
  %36 = call ptr @modifiers_getLastPreview(ptr noundef nonnull %0, ptr noundef %34, i32 noundef 5) #16
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i64 0, i64 4
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i64 [ 0, %33 ], [ %38, %35 ]
  %41 = phi ptr [ null, %33 ], [ %36, %35 ]
  %42 = call ptr @modifiers_calcDataMasks(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %34, i64 noundef %5, i32 noundef 5, ptr noundef %41, i64 noundef %40) #16
  %43 = icmp eq ptr %34, null
  br i1 %43, label %222, label %44

44:                                               ; preds = %39
  %45 = icmp ne i8 %19, 0
  br label %46

46:                                               ; preds = %44, %214
  %47 = phi ptr [ %34, %44 ], [ %219, %214 ]
  %48 = phi ptr [ null, %44 ], [ %217, %214 ]
  %49 = phi ptr [ null, %44 ], [ %216, %214 ]
  %50 = phi ptr [ null, %44 ], [ %215, %214 ]
  %51 = phi i32 [ 0, %44 ], [ %218, %214 ]
  %52 = phi ptr [ %42, %44 ], [ %220, %214 ]
  %53 = getelementptr inbounds %struct.ModifierData, ptr %47, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !172
  %55 = call ptr @modifierType_getInfo(i32 noundef %54) #16
  %56 = getelementptr inbounds %struct.ModifierData, ptr %47, i64 0, i32 7
  store ptr %0, ptr %56, align 8, !tbaa !174
  %57 = call zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef %0, ptr noundef nonnull %47, ptr noundef %49) #17, !range !303
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %214, label %59

59:                                               ; preds = %46
  %60 = icmp eq ptr %49, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %55, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !262
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = call i64 %63(ptr noundef %1, ptr noundef nonnull %47) #16
  %67 = and i64 %66, 16384
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %49, ptr noundef %50, i32 noundef 14) #17
  br label %70

70:                                               ; preds = %65, %69, %61
  %71 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %55, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !178
  %73 = icmp eq i32 %72, 1
  %74 = icmp eq ptr %48, null
  br i1 %73, label %79, label %102

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %55, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !178
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %80, label %118

79:                                               ; preds = %70
  br i1 %74, label %82, label %94

80:                                               ; preds = %75
  %81 = icmp eq ptr %48, null
  br i1 %81, label %92, label %94

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 23
  %84 = load ptr, ptr %83, align 8, !tbaa !66
  %85 = call i32 %84(ptr noundef nonnull %49) #16
  store i32 %85, ptr %7, align 4, !tbaa !105
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %87 = sext i32 %85 to i64
  %88 = mul nsw i64 %87, 12
  %89 = call ptr %86(i64 noundef %88, ptr noundef nonnull @.str.26) #16
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 77
  %91 = load ptr, ptr %90, align 8, !tbaa !263
  call void %91(ptr noundef nonnull %49, ptr noundef %89) #16
  br label %94

92:                                               ; preds = %80
  %93 = call ptr @editbmesh_get_vertex_cos(ptr noundef %2, ptr noundef nonnull %7) #17
  br label %94

94:                                               ; preds = %80, %82, %92, %79
  %95 = phi ptr [ %48, %79 ], [ %89, %82 ], [ %93, %92 ], [ %48, %80 ]
  %96 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %55, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !363
  %98 = icmp eq ptr %97, null
  %99 = load i32, ptr %7, align 4, !tbaa !105
  br i1 %98, label %101, label %100

100:                                              ; preds = %94
  call void @modwrap_deformVertsEM(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %2, ptr noundef %49, ptr noundef %95, i32 noundef %99) #16
  br label %189

101:                                              ; preds = %94
  call void @modwrap_deformVerts(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %49, ptr noundef %95, i32 noundef %99, i32 noundef 0) #16
  br label %189

102:                                              ; preds = %70
  br i1 %74, label %112, label %103

103:                                              ; preds = %102
  %104 = call ptr @CDDM_copy(ptr noundef nonnull %49) #16
  br i1 %28, label %105, label %108

105:                                              ; preds = %103
  %106 = load ptr, ptr %3, align 8, !tbaa !81
  %107 = icmp eq ptr %49, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %105, %103
  %109 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 95
  %110 = load ptr, ptr %109, align 8, !tbaa !179
  call void %110(ptr noundef nonnull %49) #16
  br label %111

111:                                              ; preds = %108, %105
  call void @CDDM_apply_vert_coords(ptr noundef %104, ptr noundef nonnull %48) #16
  br label %124

112:                                              ; preds = %102
  br i1 %28, label %113, label %124

113:                                              ; preds = %112
  %114 = load ptr, ptr %3, align 8, !tbaa !81
  %115 = icmp eq ptr %49, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = call ptr @CDDM_copy(ptr noundef nonnull %49) #16
  br label %124

118:                                              ; preds = %75
  %119 = call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %120 = icmp eq ptr %48, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call void @CDDM_apply_vert_coords(ptr noundef %119, ptr noundef nonnull %48) #16
  br label %122

122:                                              ; preds = %121, %118
  br i1 %22, label %124, label %123

123:                                              ; preds = %122
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %119, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null) #17
  br label %124

124:                                              ; preds = %122, %123, %111, %116, %113, %112
  %125 = phi ptr [ %104, %111 ], [ %117, %116 ], [ %49, %113 ], [ %49, %112 ], [ %119, %123 ], [ %119, %122 ]
  %126 = getelementptr inbounds %struct.CDMaskLink, ptr %52, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !265
  %128 = and i64 %127, 16384
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %124
  %131 = icmp eq ptr %50, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = load ptr, ptr %13, align 8, !tbaa !171
  %134 = call fastcc ptr @create_orco_dm(ptr noundef %1, ptr noundef %133, ptr noundef %2, i32 noundef 14) #17
  br label %135

135:                                              ; preds = %132, %130
  %136 = phi ptr [ %50, %130 ], [ %134, %132 ]
  %137 = and i64 %127, -16513
  %138 = or disjoint i64 %137, 128
  call void @DM_set_only_copy(ptr noundef %136, i64 noundef %138) #17
  %139 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %55, i64 0, i32 11
  %140 = load ptr, ptr %139, align 8, !tbaa !364
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %135
  %143 = call ptr @modwrap_applyModifierEM(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %2, ptr noundef %136, i32 noundef 4) #16
  br label %146

144:                                              ; preds = %135
  %145 = call ptr @modwrap_applyModifier(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %136, i32 noundef 4) #16
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi ptr [ %143, %142 ], [ %145, %144 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = icmp eq ptr %136, null
  %151 = icmp eq ptr %136, %147
  %152 = or i1 %150, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.DerivedMesh, ptr %136, i64 0, i32 95
  %155 = load ptr, ptr %154, align 8, !tbaa !179
  call void %155(ptr noundef nonnull %136) #16
  br label %156

156:                                              ; preds = %149, %153, %146, %124
  %157 = phi ptr [ %136, %146 ], [ %50, %124 ], [ %147, %153 ], [ %147, %149 ]
  %158 = load i64, ptr %126, align 8, !tbaa !265
  %159 = or i64 %158, 128
  call void @DM_set_only_copy(ptr noundef %125, i64 noundef %159) #17
  %160 = and i64 %158, 2147483648
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 3
  %164 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %163, i32 noundef 31) #16
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  call void @DM_add_loop_layer(ptr noundef %125, i32 noundef 31, i32 noundef 1, ptr noundef null) #17
  call void @DM_init_origspace(ptr noundef %125) #17
  br label %167

167:                                              ; preds = %162, %166, %156
  %168 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %55, i64 0, i32 11
  %169 = load ptr, ptr %168, align 8, !tbaa !364
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = call ptr @modwrap_applyModifierEM(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %2, ptr noundef %125, i32 noundef 2) #16
  br label %175

173:                                              ; preds = %167
  %174 = call ptr @modwrap_applyModifier(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %125, i32 noundef 2) #16
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi ptr [ %172, %171 ], [ %174, %173 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %175
  %179 = icmp eq ptr %125, null
  %180 = icmp eq ptr %125, %176
  %181 = or i1 %179, %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 95
  %184 = load ptr, ptr %183, align 8, !tbaa !179
  call void %184(ptr noundef nonnull %125) #16
  br label %185

185:                                              ; preds = %182, %178
  %186 = icmp eq ptr %48, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %185
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %188(ptr noundef nonnull %48) #16
  br label %189

189:                                              ; preds = %175, %187, %185, %100, %101
  %190 = phi ptr [ %50, %100 ], [ %50, %101 ], [ %157, %185 ], [ %157, %187 ], [ %157, %175 ]
  %191 = phi ptr [ %49, %100 ], [ %49, %101 ], [ %176, %185 ], [ %176, %187 ], [ %125, %175 ]
  %192 = phi ptr [ %95, %100 ], [ %95, %101 ], [ null, %185 ], [ null, %187 ], [ %48, %175 ]
  %193 = icmp eq ptr %47, %41
  %194 = select i1 %193, i1 %45, i1 false
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %191, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null) #17
  br label %196

196:                                              ; preds = %195, %189
  %197 = icmp eq i32 %51, %9
  %198 = select i1 %28, i1 %197, i1 false
  br i1 %198, label %199, label %214

199:                                              ; preds = %196
  %200 = icmp ne ptr %191, null
  %201 = icmp ne ptr %192, null
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = call ptr @CDDM_copy(ptr noundef nonnull %191) #16
  store ptr %204, ptr %3, align 8, !tbaa !81
  call void @CDDM_apply_vert_coords(ptr noundef %204, ptr noundef nonnull %192) #16
  br label %214

205:                                              ; preds = %199
  br i1 %200, label %206, label %207

206:                                              ; preds = %205
  store ptr %191, ptr %3, align 8, !tbaa !81
  br label %214

207:                                              ; preds = %205
  br i1 %201, label %208, label %211

208:                                              ; preds = %207
  %209 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !81
  %210 = call ptr %209(ptr noundef nonnull %192) #16
  br label %211

211:                                              ; preds = %207, %208
  %212 = phi ptr [ %210, %208 ], [ null, %207 ]
  %213 = call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef %1, ptr noundef %212) #16
  store ptr %213, ptr %3, align 8, !tbaa !81
  br label %214

214:                                              ; preds = %196, %206, %211, %203, %46
  %215 = phi ptr [ %50, %46 ], [ %190, %203 ], [ %190, %211 ], [ %190, %206 ], [ %190, %196 ]
  %216 = phi ptr [ %49, %46 ], [ %191, %203 ], [ null, %211 ], [ %191, %206 ], [ %191, %196 ]
  %217 = phi ptr [ %48, %46 ], [ %192, %203 ], [ %192, %211 ], [ %192, %206 ], [ %192, %196 ]
  %218 = add nuw nsw i32 %51, 1
  %219 = load ptr, ptr %47, align 8, !tbaa !255
  %220 = load ptr, ptr %52, align 8, !tbaa !257
  %221 = icmp eq ptr %219, null
  br i1 %221, label %222, label %46, !llvm.loop !365

222:                                              ; preds = %214, %39
  %223 = phi ptr [ null, %39 ], [ %215, %214 ]
  %224 = phi ptr [ null, %39 ], [ %216, %214 ]
  %225 = phi ptr [ null, %39 ], [ %217, %214 ]
  call void @BLI_linklist_free(ptr noundef %42, ptr noundef null) #16
  %226 = icmp ne ptr %224, null
  %227 = icmp ne ptr %225, null
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %229, label %240

229:                                              ; preds = %222
  %230 = call ptr @CDDM_copy(ptr noundef nonnull %224) #16
  store ptr %230, ptr %4, align 8, !tbaa !81
  br i1 %28, label %231, label %234

231:                                              ; preds = %229
  %232 = load ptr, ptr %3, align 8, !tbaa !81
  %233 = icmp eq ptr %224, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %231, %229
  %235 = getelementptr inbounds %struct.DerivedMesh, ptr %224, i64 0, i32 95
  %236 = load ptr, ptr %235, align 8, !tbaa !179
  call void %236(ptr noundef nonnull %224) #16
  %237 = load ptr, ptr %4, align 8, !tbaa !81
  br label %238

238:                                              ; preds = %234, %231
  %239 = phi ptr [ %237, %234 ], [ %230, %231 ]
  call void @CDDM_apply_vert_coords(ptr noundef %239, ptr noundef nonnull %225) #16
  br label %259

240:                                              ; preds = %222
  br i1 %226, label %241, label %242

241:                                              ; preds = %240
  store ptr %224, ptr %4, align 8, !tbaa !81
  br label %259

242:                                              ; preds = %240
  %243 = icmp eq ptr %225, null
  %244 = and i1 %28, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load ptr, ptr %3, align 8, !tbaa !81
  %247 = icmp eq ptr %246, null
  br i1 %247, label %253, label %248

248:                                              ; preds = %245
  store ptr %246, ptr %4, align 8, !tbaa !81
  br i1 %22, label %250, label %249

249:                                              ; preds = %248
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef nonnull %246, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null) #17
  br label %250

250:                                              ; preds = %249, %248
  br i1 %23, label %251, label %259

251:                                              ; preds = %250
  %252 = load ptr, ptr %4, align 8, !tbaa !81
  call fastcc void @DM_update_statvis_color(ptr noundef %0, ptr noundef %1, ptr noundef %252) #17
  br label %259

253:                                              ; preds = %245, %242
  %254 = call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef %1, ptr noundef %225) #16
  store ptr %254, ptr %4, align 8, !tbaa !81
  br i1 %22, label %256, label %255

255:                                              ; preds = %253
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef %254, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null) #17
  br label %256

256:                                              ; preds = %255, %253
  br i1 %23, label %257, label %259

257:                                              ; preds = %256
  %258 = load ptr, ptr %4, align 8, !tbaa !81
  call fastcc void @DM_update_statvis_color(ptr noundef %0, ptr noundef %1, ptr noundef %258) #17
  br label %259

259:                                              ; preds = %241, %256, %257, %250, %251, %238
  %260 = phi ptr [ %225, %238 ], [ %225, %241 ], [ null, %251 ], [ null, %250 ], [ null, %257 ], [ null, %256 ]
  %261 = and i16 %25, 32
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %272, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr %4, align 8, !tbaa !81
  call fastcc void @DM_calc_loop_normals(ptr noundef %264, float noundef %27) #17
  br i1 %28, label %265, label %272

265:                                              ; preds = %263
  %266 = load ptr, ptr %3, align 8, !tbaa !81
  %267 = icmp eq ptr %266, null
  br i1 %267, label %272, label %268

268:                                              ; preds = %265
  %269 = load ptr, ptr %4, align 8, !tbaa !81
  %270 = icmp eq ptr %266, %269
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  call fastcc void @DM_calc_loop_normals(ptr noundef nonnull %266, float noundef %27) #17
  br label %272

272:                                              ; preds = %263, %265, %268, %271, %259
  %273 = load ptr, ptr %4, align 8, !tbaa !81
  %274 = getelementptr inbounds %struct.DerivedMesh, ptr %273, i64 0, i32 14
  %275 = load i32, ptr %274, align 8, !tbaa !91
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  call void @DM_ensure_tessface(ptr noundef nonnull %273) #17
  br label %278

278:                                              ; preds = %277, %272
  br i1 %28, label %279, label %290

279:                                              ; preds = %278
  %280 = load ptr, ptr %3, align 8, !tbaa !81
  %281 = icmp eq ptr %280, null
  br i1 %281, label %290, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.DerivedMesh, ptr %280, i64 0, i32 14
  %284 = load i32, ptr %283, align 8, !tbaa !91
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = load ptr, ptr %4, align 8, !tbaa !81
  %288 = icmp eq ptr %280, %287
  br i1 %288, label %290, label %289

289:                                              ; preds = %286
  call void @DM_ensure_tessface(ptr noundef nonnull %280) #17
  br label %290

290:                                              ; preds = %282, %289, %286, %279, %278
  br i1 %262, label %291, label %293

291:                                              ; preds = %290
  %292 = load ptr, ptr %4, align 8, !tbaa !81
  call fastcc void @dm_ensure_display_normals(ptr noundef %292) #17
  br label %293

293:                                              ; preds = %291, %290
  %294 = and i64 %5, 16384
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %4, align 8, !tbaa !81
  call fastcc void @add_orco_dm(ptr noundef %1, ptr noundef %2, ptr noundef %297, ptr noundef %223, i32 noundef 14) #17
  br label %298

298:                                              ; preds = %296, %293
  %299 = icmp eq ptr %223, null
  br i1 %299, label %303, label %300

300:                                              ; preds = %298
  %301 = getelementptr inbounds %struct.DerivedMesh, ptr %223, i64 0, i32 95
  %302 = load ptr, ptr %301, align 8, !tbaa !179
  call void %302(ptr noundef nonnull %223) #16
  br label %303

303:                                              ; preds = %300, %298
  %304 = icmp eq ptr %260, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %303
  %306 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %306(ptr noundef nonnull %260) #16
  br label %307

307:                                              ; preds = %305, %303
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @dm_drawflag_calc(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !366 {
  %2 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 61
  %3 = load i8, ptr %2, align 1, !tbaa !367
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 62
  %7 = load i8, ptr %6, align 2, !tbaa !368
  %8 = zext nneg i8 %7 to i32
  %9 = shl nuw i32 1, %8
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 8, %1 ]
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 60
  %13 = load i8, ptr %12, align 4, !tbaa !369
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 0, i32 16
  %16 = or i32 %15, %11
  ret i32 %16
}

; Function Attrs: optsize
declare void @modifiers_clearErrors(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_getLastPreview(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_calcDataMasks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_orco_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !370 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call i32 %8(ptr noundef %2) #16
  %10 = icmp eq ptr %3, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !81
  %13 = sext i32 %9 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.27) #16
  store i32 1, ptr %6, align 4, !tbaa !105
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = tail call i32 %17(ptr noundef nonnull %3) #16
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 77
  %22 = load ptr, ptr %21, align 8, !tbaa !263
  tail call void %22(ptr noundef nonnull %3, ptr noundef %15) #16
  br label %28

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %25 = load ptr, ptr %24, align 8, !tbaa !263
  tail call void %25(ptr noundef nonnull %2, ptr noundef %15) #16
  br label %28

26:                                               ; preds = %5
  %27 = call fastcc ptr @get_orco_coords_dm(ptr noundef %0, ptr noundef %1, i32 noundef %4, ptr noundef nonnull %6) #17
  br label %28

28:                                               ; preds = %20, %23, %26
  %29 = phi ptr [ %15, %20 ], [ %15, %23 ], [ %27, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %28
  %32 = icmp eq i32 %4, 14
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !171
  tail call void @BKE_mesh_orco_verts_transform(ptr noundef %35, ptr noundef nonnull %29, i32 noundef %9, i32 noundef 0) #16
  br label %36

36:                                               ; preds = %33, %31
  %37 = tail call ptr @DM_get_vert_data_layer(ptr noundef nonnull %2, i32 noundef %4) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  tail call void @DM_add_vert_layer(ptr noundef nonnull %2, i32 noundef %4, i32 noundef 1, ptr noundef null) #17
  %40 = tail call ptr @DM_get_vert_data_layer(ptr noundef nonnull %2, i32 noundef %4) #17
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi ptr [ %37, %36 ], [ %40, %39 ]
  %43 = sext i32 %9 to i64
  %44 = mul nsw i64 %43, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr nonnull align 4 %29, i64 %44, i1 false)
  %45 = load i32, ptr %6, align 4, !tbaa !105
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %48(ptr noundef nonnull %29) #16
  br label %49

49:                                               ; preds = %41, %47, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare void @modwrap_deformVertsEM(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_orco_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !371 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %6 = icmp eq ptr %2, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CDDM_from_editbmesh(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %11

9:                                                ; preds = %4
  %10 = tail call ptr @CDDM_from_mesh(ptr noundef %1) #16
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = call fastcc ptr @get_orco_coords_dm(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  tail call void @CDDM_apply_vert_coords(ptr noundef %12, ptr noundef nonnull %13) #16
  %16 = load i32, ptr %5, align 4, !tbaa !105
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  tail call void %19(ptr noundef nonnull %13) #16
  br label %20

20:                                               ; preds = %15, %18, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @modwrap_applyModifierEM(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DM_update_statvis_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !372 {
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !239
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 74
  tail call void @BKE_editmesh_statvis_calc(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DM_calc_loop_normals(ptr noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !373 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  tail call void %4(ptr noundef %0, float noundef %1) #16
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !99
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dm_ensure_display_normals(ptr noundef %0) unnamed_addr #0 !PGOFuncName !375 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !99
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %11, i32 noundef 8) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, ptr %6, align 8, !tbaa !99
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %5
  %20 = phi i8 [ %18, %14 ], [ 0, %5 ]
  tail call void @CDDM_calc_normals_mapping_ex(ptr noundef nonnull %0, i8 noundef zeroext %20) #16
  br label %21

21:                                               ; preds = %19, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_orco_coords_dm(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !376 {
  store i32 0, ptr %3, align 4, !tbaa !105
  switch i32 %2, label %26 [
    i32 14, label %5
    i32 23, label %11
  ]

5:                                                ; preds = %4
  store i32 1, ptr %3, align 4, !tbaa !105
  %6 = icmp eq ptr %1, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc ptr @get_editbmesh_orco_verts(ptr noundef nonnull %1) #17
  br label %26

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_mesh_orco_verts_get(ptr noundef %0) #16
  br label %26

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef 22) #16
  %15 = tail call ptr @BKE_key_from_object(ptr noundef %0) #16
  %16 = getelementptr inbounds %struct.ClothModifierData, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !377
  %18 = getelementptr inbounds %struct.ClothSimSettings, ptr %17, i64 0, i32 37
  %19 = load i16, ptr %18, align 2, !tbaa !379
  %20 = sext i16 %19 to i32
  %21 = tail call ptr @BKE_keyblock_from_key(ptr noundef %15, i32 noundef %20) #16
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !162
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %13, %11
  br label %26

26:                                               ; preds = %13, %4, %25, %9, %7
  %27 = phi ptr [ %8, %7 ], [ %10, %9 ], [ null, %25 ], [ %23, %13 ], [ null, %4 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @BKE_mesh_orco_verts_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_editbmesh_orco_verts(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !381 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !81
  %4 = load ptr, ptr %0, align 8, !tbaa !197
  %5 = load i32, ptr %4, align 8, !tbaa !198
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 12
  %8 = tail call ptr %3(i64 noundef %7, ptr noundef nonnull @.str.28) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !197
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %9) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1, %12
  %13 = phi i64 [ %18, %12 ], [ 0, %1 ]
  %14 = phi ptr [ %17, %12 ], [ %10, %1 ]
  %15 = getelementptr inbounds [3 x float], ptr %8, i64 %13
  %16 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %15, ptr noundef nonnull %16) #17
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #17
  %18 = add nuw i64 %13, 1
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %12, !llvm.loop !382

20:                                               ; preds = %12, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @BKE_mesh_orco_verts_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_editmesh_statvis_calc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CDDM_calc_normals_mapping_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sculpt_update_mesh_elements(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @modifier_supportsMapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @range_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifier_freeTemporaryData(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !383 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !138
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !139
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !138
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !384 {
  %3 = load float, ptr %0, align 4, !tbaa !139
  %4 = load float, ptr %1, align 4, !tbaa !139
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !139
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !139
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !139
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !385 {
  %3 = load float, ptr %0, align 4, !tbaa !139
  %4 = load float, ptr %1, align 4, !tbaa !139
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !139
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { cold optsize }

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
!65 = !{!"DerivedMesh.c:dm_getVertArray"}
!66 = !{!35, !37, i64 1104}
!67 = !{!35, !37, i64 1208}
!68 = !{!"DerivedMesh.c:dm_getEdgeArray"}
!69 = !{!35, !37, i64 1112}
!70 = !{!35, !37, i64 1216}
!71 = !{!"DerivedMesh.c:dm_getTessFaceArray"}
!72 = !{!35, !37, i64 1120}
!73 = !{!35, !37, i64 1224}
!74 = !{!"DerivedMesh.c:dm_getLoopArray"}
!75 = !{!35, !37, i64 1128}
!76 = !{!35, !37, i64 1232}
!77 = !{!"DerivedMesh.c:dm_getPolyArray"}
!78 = !{!35, !37, i64 1136}
!79 = !{!35, !37, i64 1240}
!80 = !{!"DerivedMesh.c:dm_dupVertArray"}
!81 = !{!37, !37, i64 0}
!82 = !{!"DerivedMesh.c:dm_dupEdgeArray"}
!83 = !{!"DerivedMesh.c:dm_dupFaceArray"}
!84 = !{!"DerivedMesh.c:dm_dupLoopArray"}
!85 = !{!"DerivedMesh.c:dm_dupPolyArray"}
!86 = !{!"DerivedMesh.c:dm_getVertCData"}
!87 = !{!"DerivedMesh.c:dm_getEdgeCData"}
!88 = !{!"DerivedMesh.c:dm_getTessFaceCData"}
!89 = !{!"DerivedMesh.c:dm_getLoopCData"}
!90 = !{!"DerivedMesh.c:dm_getPolyCData"}
!91 = !{!35, !40, i64 1048}
!92 = !{!35, !40, i64 1000}
!93 = !{!35, !40, i64 1004}
!94 = !{!35, !40, i64 1008}
!95 = !{!35, !40, i64 1012}
!96 = !{!35, !40, i64 1016}
!97 = !{!35, !40, i64 1020}
!98 = !{!35, !41, i64 1052}
!99 = !{!35, !40, i64 1056}
!100 = !{!101, !101, i64 0}
!101 = !{!"long", !38, i64 0}
!102 = !{!35, !38, i64 1072}
!103 = !{!35, !37, i64 1064}
!104 = !{!35, !40, i64 1060}
!105 = !{!40, !40, i64 0}
!106 = !{!35, !37, i64 1080}
!107 = !{!35, !37, i64 1096}
!108 = !{!109, !40, i64 12}
!109 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !110, i64 16, !38, i64 18, !38, i64 19}
!110 = !{!"short", !38, i64 0}
!111 = !{!112, !40, i64 0}
!112 = !{!"MPoly", !40, i64 0, !40, i64 4, !110, i64 8, !38, i64 10, !38, i64 11}
!113 = !{!109, !40, i64 0}
!114 = !{!115, !40, i64 0}
!115 = !{!"MLoop", !40, i64 0, !40, i64 4}
!116 = !{!109, !40, i64 4}
!117 = !{!109, !40, i64 8}
!118 = distinct !{!118, !119}
!119 = !{!"llvm.loop.mustprogress"}
!120 = distinct !{!120, !119}
!121 = !{!122, !40, i64 2100}
!122 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !123, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !110, i64 2084, !110, i64 2086, !110, i64 2088, !38, i64 2090, !110, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!123 = !{!"ListBase", !37, i64 0, !37, i64 8}
!124 = !{!125, !40, i64 456}
!125 = !{!"Object", !126, i64 0, !37, i64 120, !37, i64 128, !110, i64 136, !110, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !127, i64 312, !37, i64 360, !123, i64 368, !123, i64 384, !123, i64 400, !123, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !110, i64 948, !110, i64 950, !110, i64 952, !110, i64 954, !110, i64 956, !110, i64 958, !110, i64 960, !110, i64 962, !110, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !110, i64 1036, !110, i64 1038, !110, i64 1040, !38, i64 1042, !38, i64 1043, !110, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !123, i64 1056, !123, i64 1072, !123, i64 1088, !123, i64 1104, !41, i64 1120, !110, i64 1124, !110, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !110, i64 1162, !38, i64 1164, !123, i64 1176, !123, i64 1192, !123, i64 1208, !123, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !110, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !101, i64 1304, !101, i64 1312, !40, i64 1320, !40, i64 1324, !123, i64 1328, !123, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !123, i64 1400, !37, i64 1416}
!126 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !110, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!127 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !110, i64 16, !110, i64 18, !110, i64 20, !110, i64 22, !110, i64 24, !110, i64 26, !110, i64 28, !110, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!128 = distinct !{!128, !119}
!129 = !{!130, !37, i64 920}
!130 = !{!"Material", !126, i64 0, !37, i64 120, !110, i64 128, !110, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !131, i64 224, !132, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !110, i64 356, !110, i64 358, !110, i64 360, !38, i64 362, !38, i64 363, !41, i64 364, !41, i64 368, !110, i64 372, !110, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !110, i64 392, !110, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !110, i64 412, !110, i64 414, !110, i64 416, !110, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !38, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !40, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !110, i64 544, !110, i64 546, !110, i64 548, !38, i64 550, !38, i64 551, !110, i64 552, !110, i64 554, !41, i64 556, !41, i64 560, !38, i64 564, !41, i64 580, !41, i64 584, !110, i64 588, !110, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !110, i64 612, !110, i64 614, !41, i64 616, !41, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !110, i64 820, !110, i64 822, !38, i64 824, !38, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !110, i64 876, !110, i64 878, !40, i64 880, !110, i64 884, !110, i64 886, !38, i64 888, !110, i64 904, !110, i64 906, !110, i64 908, !110, i64 910, !110, i64 912, !38, i64 914, !37, i64 920, !123, i64 928}
!131 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !110, i64 64, !110, i64 66, !110, i64 68, !110, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!132 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!133 = !{!130, !110, i64 908}
!134 = !{!135, !37, i64 8}
!135 = !{!"TexPaintSlot", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!136 = !{i64 0, i64 8, !81, i64 8, i64 8, !81, i64 16, i64 8, !81, i64 24, i64 8, !81, i64 32, i64 66, !137, i64 98, i64 2, !138, i64 100, i64 4, !105, i64 104, i64 4, !105, i64 108, i64 4, !105, i64 112, i64 8, !81, i64 120, i64 8, !81, i64 128, i64 8, !81, i64 136, i64 8, !81, i64 144, i64 8, !81, i64 152, i64 8, !81, i64 160, i64 8, !81, i64 168, i64 8, !81, i64 176, i64 8, !81, i64 184, i64 8, !81, i64 192, i64 8, !81, i64 200, i64 8, !81, i64 208, i64 8, !81, i64 216, i64 8, !81, i64 224, i64 8, !81, i64 232, i64 8, !81, i64 240, i64 8, !81, i64 248, i64 8, !81, i64 256, i64 8, !81, i64 264, i64 8, !81, i64 272, i64 8, !81, i64 280, i64 8, !81, i64 288, i64 164, !137, i64 452, i64 4, !105, i64 456, i64 4, !105, i64 460, i64 4, !105, i64 464, i64 8, !81, i64 472, i64 8, !81, i64 480, i64 8, !81, i64 488, i64 164, !137, i64 652, i64 4, !105, i64 656, i64 4, !105, i64 660, i64 4, !105, i64 664, i64 8, !81, i64 672, i64 8, !81, i64 680, i64 8, !81, i64 688, i64 164, !137, i64 852, i64 4, !105, i64 856, i64 4, !105, i64 860, i64 4, !105, i64 864, i64 8, !81, i64 872, i64 8, !81, i64 880, i64 8, !81, i64 888, i64 164, !137, i64 1052, i64 4, !105, i64 1056, i64 4, !105, i64 1060, i64 4, !105, i64 1064, i64 8, !81, i64 1072, i64 8, !81, i64 1080, i64 8, !81, i64 1088, i64 164, !137, i64 1252, i64 4, !105, i64 1256, i64 4, !105, i64 1260, i64 4, !105, i64 1264, i64 8, !81, i64 1272, i64 8, !81, i64 1280, i64 4, !105, i64 1284, i64 4, !105, i64 1288, i64 4, !105, i64 1292, i64 4, !105, i64 1296, i64 4, !105, i64 1300, i64 4, !105, i64 1304, i64 4, !105, i64 1308, i64 12, !137, i64 1320, i64 12, !137, i64 1332, i64 12, !137, i64 1344, i64 4, !105, i64 1348, i64 2, !138, i64 1350, i64 2, !138, i64 1352, i64 4, !139, i64 1356, i64 4, !105, i64 1360, i64 1, !137, i64 1361, i64 1, !137, i64 1362, i64 1, !137, i64 1363, i64 1, !137, i64 1364, i64 1, !137, i64 1365, i64 1, !137, i64 1366, i64 2, !138, i64 1368, i64 8, !81}
!137 = !{!38, !38, i64 0}
!138 = !{!110, !110, i64 0}
!139 = !{!41, !41, i64 0}
!140 = !{!141, !40, i64 1280}
!141 = !{!"Mesh", !126, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !36, i64 280, !36, i64 480, !36, i64 680, !36, i64 880, !36, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !40, i64 1344, !110, i64 1348, !110, i64 1350, !41, i64 1352, !40, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !110, i64 1366, !37, i64 1368}
!142 = !{!141, !40, i64 1284}
!143 = !{!141, !40, i64 1300}
!144 = !{!141, !40, i64 1296}
!145 = !{!141, !40, i64 1288}
!146 = !{!141, !38, i64 1360}
!147 = !{!141, !37, i64 144}
!148 = !{!125, !110, i64 1266}
!149 = !{!150, !40, i64 36}
!150 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !110, i64 24, !110, i64 26, !110, i64 28, !110, i64 30, !40, i64 32, !40, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !41, i64 176, !41, i64 180}
!151 = !{!141, !37, i64 184}
!152 = !{!141, !37, i64 168}
!153 = !{!154, !40, i64 100}
!154 = !{!"Key", !126, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !40, i64 168, !40, i64 172, !123, i64 176, !37, i64 192, !37, i64 200, !110, i64 208, !110, i64 210, !110, i64 212, !110, i64 214, !41, i64 216, !40, i64 220}
!155 = !{!141, !37, i64 160}
!156 = !{!141, !40, i64 1292}
!157 = !{!"DerivedMesh.c:shapekey_layers_to_keyblocks"}
!158 = !{!35, !37, i64 0}
!159 = !{!160, !40, i64 28}
!160 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96}
!161 = distinct !{!161, !119}
!162 = !{!150, !37, i64 40}
!163 = !{!150, !40, i64 32}
!164 = distinct !{!164, !119}
!165 = distinct !{!165, !119}
!166 = distinct !{!166, !119}
!167 = distinct !{!167, !119}
!168 = !{!154, !40, i64 168}
!169 = distinct !{!169, !119}
!170 = !{!"DerivedMesh.c:copy_v3_v3"}
!171 = !{!125, !37, i64 296}
!172 = !{!173, !40, i64 16}
!173 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!174 = !{!173, !37, i64 96}
!175 = !{!173, !40, i64 20}
!176 = !{!177, !37, i64 160}
!177 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !40, i64 64, !40, i64 68, !40, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!178 = !{!177, !40, i64 68}
!179 = !{!35, !37, i64 1680}
!180 = !{!"DerivedMesh.c:add_shapekey_layers"}
!181 = distinct !{!181, !119}
!182 = !{!183, !37, i64 0}
!183 = !{!"DMWeightColorInfo", !37, i64 0, !37, i64 8}
!184 = !{!183, !37, i64 8}
!185 = !{!186, !37, i64 64}
!186 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !40, i64 16, !37, i64 24, !40, i64 32, !37, i64 40, !37, i64 48, !101, i64 56, !37, i64 64, !40, i64 72, !37, i64 80, !40, i64 88, !110, i64 92, !110, i64 94, !37, i64 96, !40, i64 104}
!187 = distinct !{!187, !119}
!188 = !{!112, !40, i64 4}
!189 = distinct !{!189, !119}
!190 = distinct !{!190, !119}
!191 = !{!"DerivedMesh.c:calc_colors_from_weights_array"}
!192 = distinct !{!192, !119}
!193 = !{!"DerivedMesh.c:calc_weightpaint_vert_array"}
!194 = !{!125, !110, i64 1126}
!195 = distinct !{!195, !119}
!196 = !{!"DerivedMesh.c:copy_v4_v4_char"}
!197 = !{!186, !37, i64 0}
!198 = !{!199, !40, i64 0}
!199 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !36, i64 144, !36, i64 344, !36, i64 544, !36, i64 744, !110, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !123, i64 960, !37, i64 976, !123, i64 984, !37, i64 1000}
!200 = distinct !{!200, !119}
!201 = !{!"DerivedMesh.c:BM_iter_new"}
!202 = !{!"DerivedMesh.c:BM_iter_step"}
!203 = !{!204, !37, i64 48}
!204 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!205 = !{!177, !40, i64 72}
!206 = !{!"DerivedMesh.c:object_get_datamask"}
!207 = !{!208, !37, i64 168}
!208 = !{!"Scene", !126, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !123, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !110, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !209, i64 280, !218, i64 4264, !123, i64 4296, !123, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !110, i64 4376, !110, i64 4378, !40, i64 4380, !123, i64 4384, !219, i64 4400, !220, i64 4416, !223, i64 4600, !37, i64 4608, !224, i64 4616, !37, i64 4640, !101, i64 4648, !101, i64 4656, !211, i64 4664, !212, i64 4824, !225, i64 4888, !37, i64 4952}
!209 = !{!"RenderData", !210, i64 0, !37, i64 248, !37, i64 256, !213, i64 264, !214, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !110, i64 432, !110, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !110, i64 456, !110, i64 458, !110, i64 460, !110, i64 462, !110, i64 464, !110, i64 466, !40, i64 468, !110, i64 472, !110, i64 474, !110, i64 476, !110, i64 478, !110, i64 480, !110, i64 482, !40, i64 484, !40, i64 488, !110, i64 492, !110, i64 494, !40, i64 496, !40, i64 500, !110, i64 504, !110, i64 506, !110, i64 508, !110, i64 510, !110, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !110, i64 528, !110, i64 530, !110, i64 532, !110, i64 534, !110, i64 536, !110, i64 538, !110, i64 540, !110, i64 542, !215, i64 544, !215, i64 560, !216, i64 576, !123, i64 592, !110, i64 608, !110, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !110, i64 648, !110, i64 650, !110, i64 652, !110, i64 654, !110, i64 656, !110, i64 658, !41, i64 660, !41, i64 664, !110, i64 668, !110, i64 670, !41, i64 672, !41, i64 676, !38, i64 680, !40, i64 1704, !110, i64 1708, !110, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !110, i64 2524, !110, i64 2526, !41, i64 2528, !41, i64 2532, !110, i64 2536, !110, i64 2538, !41, i64 2540, !110, i64 2544, !110, i64 2546, !40, i64 2548, !110, i64 2552, !110, i64 2554, !110, i64 2556, !110, i64 2558, !41, i64 2560, !41, i64 2564, !37, i64 2568, !40, i64 2576, !41, i64 2580, !38, i64 2584, !217, i64 2616, !40, i64 3976, !40, i64 3980}
!210 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !110, i64 8, !110, i64 10, !41, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !211, i64 24, !212, i64 184}
!211 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!212 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!213 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !110, i64 48, !110, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!214 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!215 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!216 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!217 = !{!"BakeData", !210, i64 0, !38, i64 248, !110, i64 1272, !110, i64 1274, !110, i64 1276, !110, i64 1278, !41, i64 1280, !41, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!218 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !110, i64 20, !110, i64 22, !41, i64 24, !41, i64 28}
!219 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!220 = !{!"GameData", !219, i64 0, !110, i64 16, !110, i64 18, !110, i64 20, !110, i64 22, !110, i64 24, !110, i64 26, !110, i64 28, !110, i64 30, !110, i64 32, !38, i64 34, !221, i64 40, !110, i64 64, !110, i64 66, !41, i64 68, !222, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !110, i64 140, !110, i64 142, !110, i64 144, !110, i64 146, !110, i64 148, !110, i64 150, !110, i64 152, !110, i64 154, !110, i64 156, !110, i64 158, !110, i64 160, !110, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!221 = !{!"GameDome", !110, i64 0, !110, i64 2, !110, i64 4, !110, i64 6, !41, i64 8, !41, i64 12, !37, i64 16}
!222 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !110, i64 52, !110, i64 54}
!223 = !{!"UnitSettings", !41, i64 0, !38, i64 4, !38, i64 5, !110, i64 6}
!224 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!225 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!226 = !{!227, !37, i64 32}
!227 = !{!"Base", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !110, i64 28, !110, i64 30, !37, i64 32}
!228 = !{!125, !101, i64 1312}
!229 = !{!125, !40, i64 432}
!230 = !{!"DerivedMesh.c:editbmesh_build_data"}
!231 = !{!186, !37, i64 40}
!232 = !{!186, !101, i64 56}
!233 = !{!186, !37, i64 48}
!234 = !{!"DerivedMesh.c:mesh_build_data"}
!235 = !{!125, !37, i64 1296}
!236 = !{!125, !37, i64 1288}
!237 = !{!125, !101, i64 1304}
!238 = !{!125, !37, i64 128}
!239 = !{!208, !37, i64 264}
!240 = !{!241, !37, i64 16}
!241 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !110, i64 44, !110, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !41, i64 52, !110, i64 56, !38, i64 58, !38, i64 59, !242, i64 64, !244, i64 168, !41, i64 336, !41, i64 340, !110, i64 344, !110, i64 346, !38, i64 348, !38, i64 349, !110, i64 350, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !110, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !110, i64 434, !110, i64 436, !110, i64 438, !110, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !110, i64 464, !110, i64 466, !40, i64 468, !41, i64 472, !41, i64 476, !245, i64 480, !246, i64 608}
!242 = !{!"ImagePaintSettings", !243, i64 0, !110, i64 40, !110, i64 42, !110, i64 44, !110, i64 46, !38, i64 48, !40, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !41, i64 100}
!243 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!244 = !{!"ParticleEditSettings", !110, i64 0, !110, i64 2, !110, i64 4, !110, i64 6, !38, i64 8, !37, i64 120, !41, i64 128, !41, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !37, i64 160}
!245 = !{!"UnifiedPaintSettings", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !38, i64 16, !38, i64 28, !40, i64 40, !38, i64 44, !41, i64 52, !40, i64 56, !40, i64 60, !38, i64 64, !38, i64 65, !41, i64 72, !38, i64 76, !40, i64 84, !41, i64 88, !38, i64 92, !38, i64 100, !40, i64 108, !37, i64 112, !41, i64 120, !40, i64 124}
!246 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 21, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!247 = !{!"DerivedMesh.c:mesh_calc_modifiers"}
!248 = !{!249, !38, i64 113}
!249 = !{!"MultiresModifierData", !173, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!250 = !{!251, !37, i64 72}
!251 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !40, i64 148, !37, i64 152, !40, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !40, i64 228}
!252 = !{!141, !110, i64 1350}
!253 = !{!141, !41, i64 1352}
!254 = !{!125, !37, i64 416}
!255 = !{!173, !37, i64 0}
!256 = !{!177, !37, i64 176}
!257 = !{!258, !37, i64 0}
!258 = !{!"CDMaskLink", !37, i64 0, !101, i64 8}
!259 = distinct !{!259, !119}
!260 = !{!261, !40, i64 40}
!261 = !{!"Sculpt", !243, i64 0, !40, i64 40, !38, i64 44, !41, i64 56, !40, i64 60, !41, i64 64, !41, i64 68, !37, i64 72, !37, i64 80}
!262 = !{!177, !37, i64 144}
!263 = !{!35, !37, i64 1536}
!264 = !{!177, !37, i64 184}
!265 = !{!258, !101, i64 8}
!266 = distinct !{!266, !119}
!267 = distinct !{!267, !119}
!268 = !{!125, !110, i64 952}
!269 = !{!141, !37, i64 272}
!270 = !{!35, !37, i64 1488}
!271 = !{!272, !37, i64 0}
!272 = !{!"", !37, i64 0, !37, i64 8}
!273 = !{!272, !37, i64 8}
!274 = !{!35, !37, i64 1528}
!275 = distinct !{!275, !119}
!276 = !{!"DerivedMesh.c:make_vertexcos__mapFunc"}
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
!296 = !{!"DerivedMesh.c:GetNumFaces"}
!297 = !{!"DerivedMesh.c:GetNumVertsOfFace"}
!298 = !{!"DerivedMesh.c:GetPosition"}
!299 = !{!"DerivedMesh.c:GetTextureCoordinate"}
!300 = !{!"DerivedMesh.c:GetNormal"}
!301 = !{!109, !38, i64 19}
!302 = !{!"DerivedMesh.c:SetTSpace"}
!303 = !{i8 0, i8 2}
!304 = distinct !{!304, !119}
!305 = distinct !{!305, !119}
!306 = distinct !{!306, !119}
!307 = !{!"DerivedMesh.c:equals_v3v3"}
!308 = !{!"DerivedMesh.c:equals_v2v2"}
!309 = !{!"DerivedMesh.c:sub_v2_v2v2"}
!310 = !{!"DerivedMesh.c:copy_v2_v2"}
!311 = !{!"DerivedMesh.c:len_squared_v3v3"}
!312 = !{!"DerivedMesh.c:len_squared_v2v2"}
!313 = !{!"DerivedMesh.c:sub_v3_v3v3"}
!314 = !{!"DerivedMesh.c:cross_v3_v3v3"}
!315 = !{!"DerivedMesh.c:len_v3"}
!316 = !{!317, !40, i64 2560}
!317 = !{!"GPUVertexAttribs", !38, i64 0, !40, i64 2560}
!318 = !{!319, !40, i64 0}
!319 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !38, i64 16}
!320 = distinct !{!320, !119}
!321 = !{!322, !40, i64 360}
!322 = !{!"DMVertexAttribs", !38, i64 0, !38, i64 192, !323, i64 320, !324, i64 336, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372}
!323 = !{!"", !37, i64 0, !40, i64 8, !40, i64 12}
!324 = !{!"", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!325 = !{!36, !37, i64 0}
!326 = !{!160, !37, i64 96}
!327 = !{!324, !37, i64 0}
!328 = !{!160, !40, i64 4}
!329 = !{!324, !40, i64 8}
!330 = !{!322, !40, i64 364}
!331 = !{!323, !37, i64 0}
!332 = !{!323, !40, i64 8}
!333 = !{!319, !40, i64 4}
!334 = !{!323, !40, i64 12}
!335 = !{!322, !40, i64 368}
!336 = !{!322, !37, i64 320}
!337 = !{!322, !40, i64 328}
!338 = !{!322, !40, i64 332}
!339 = !{!322, !40, i64 372}
!340 = !{!322, !37, i64 336}
!341 = !{!322, !40, i64 344}
!342 = distinct !{!342, !119}
!343 = !{!35, !37, i64 1520}
!344 = !{!125, !37, i64 264}
!345 = distinct !{!345, !119}
!346 = distinct !{!346, !119}
!347 = !{!"DerivedMesh.c:weightpaint_color"}
!348 = !{!"DerivedMesh.c:calc_weightpaint_vert_color"}
!349 = !{!350, !40, i64 8}
!350 = !{!"MDeformVert", !37, i64 0, !40, i64 8, !40, i64 12}
!351 = !{!350, !37, i64 0}
!352 = !{!353, !40, i64 0}
!353 = !{!"MDeformWeight", !40, i64 0, !41, i64 4}
!354 = !{!353, !41, i64 4}
!355 = distinct !{!355, !119}
!356 = !{!"DerivedMesh.c:copy_v3_v3_char"}
!357 = !{!"DerivedMesh.c:BM_iter_init"}
!358 = !{!204, !38, i64 60}
!359 = !{!204, !37, i64 40}
!360 = !{!199, !37, i64 32}
!361 = !{!"DerivedMesh.c:editbmesh_calc_modifiers"}
!362 = !{!141, !40, i64 1344}
!363 = !{!177, !37, i64 104}
!364 = !{!177, !37, i64 128}
!365 = distinct !{!365, !119}
!366 = !{!"DerivedMesh.c:dm_drawflag_calc"}
!367 = !{!241, !38, i64 445}
!368 = !{!241, !38, i64 446}
!369 = !{!241, !38, i64 444}
!370 = !{!"DerivedMesh.c:add_orco_dm"}
!371 = !{!"DerivedMesh.c:create_orco_dm"}
!372 = !{!"DerivedMesh.c:DM_update_statvis_color"}
!373 = !{!"DerivedMesh.c:DM_calc_loop_normals"}
!374 = !{!35, !37, i64 1088}
!375 = !{!"DerivedMesh.c:dm_ensure_display_normals"}
!376 = !{!"DerivedMesh.c:get_orco_coords_dm"}
!377 = !{!378, !37, i64 128}
!378 = !{!"ClothModifierData", !173, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !123, i64 152}
!379 = !{!380, !110, i64 150}
!380 = !{!"ClothSimSettings", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !110, i64 140, !110, i64 142, !110, i64 144, !110, i64 146, !110, i64 148, !110, i64 150, !110, i64 152, !110, i64 154, !38, i64 156, !37, i64 160}
!381 = !{!"DerivedMesh.c:get_editbmesh_orco_verts"}
!382 = distinct !{!382, !119}
!383 = !{!"DerivedMesh.c:normal_short_to_float_v3"}
!384 = !{!"DerivedMesh.c:dot_v3v3"}
!385 = !{!"DerivedMesh.c:dot_v2v2"}
