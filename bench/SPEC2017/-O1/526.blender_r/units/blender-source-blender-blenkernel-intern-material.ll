; ModuleID = 'blender/source/blender/blenkernel/intern/material.c'
source_filename = "blender/source/blender/blenkernel/intern/material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }

@defmaterial = dso_local global %struct.Material zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"copymaterial\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_material_resize_id = private unnamed_addr constant [23 x i8] c"BKE_material_resize_id\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"newmatar\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_material_pop_id = private unnamed_addr constant [20 x i8] c"BKE_material_pop_id\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"newmatbits\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"matarray1\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"matarray2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"matbits1\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"%s: invalid material index %d, report a bug!\0A\00", align 1
@__func__.object_remove_material_slot = private unnamed_addr constant [28 x i8] c"object_remove_material_slot\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"texpaint_slots\00", align 1
@matcopybuf = internal unnamed_addr global %struct.Material zeroinitializer, align 8
@matcopied = internal unnamed_addr global i1 false, align 2
@.str.9 = private unnamed_addr constant [33 x i8] c"Warning: material \22%s\22 skipped.\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"MAMaterial.TF.%0*d\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"TexFace Convert: Material \22%s\22 created.\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Error: Unable to create Material \22%s\22 for Mesh \22%s\22.\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Negative material index!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_def_material() local_unnamed_addr #0 {
  tail call void @init_material(ptr noundef nonnull @defmaterial)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @init_material(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 22
  store float 0x3FE99999A0000000, ptr %2, align 4, !tbaa !34
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 6
  store float 0x3FE99999A0000000, ptr %3, align 4, !tbaa !46
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 5
  store float 0x3FE99999A0000000, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 4
  store float 0x3FE99999A0000000, ptr %5, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 9
  store float 1.000000e+00, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 12
  store float 1.000000e+00, ptr %9, align 4, !tbaa !52
  %10 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 11
  store float 1.000000e+00, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %11, align 4, !tbaa !54
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 19
  store float 1.000000e+00, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 16
  store float 1.000000e+00, ptr %13, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 21
  store float 1.000000e+00, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 59
  store float 5.000000e-01, ptr %15, align 4, !tbaa !58
  %16 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 23
  store float 5.000000e-01, ptr %16, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 38
  store i16 50, ptr %17, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 58
  store i16 4, ptr %18, align 2, !tbaa !61
  %19 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 56
  store i16 4, ptr %19, align 2, !tbaa !62
  %20 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 57
  store i16 12, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 55
  store i16 1, ptr %21, align 4, !tbaa !64
  %22 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 61
  store float 1.000000e+00, ptr %22, align 4, !tbaa !65
  %23 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 60
  store float 1.000000e+00, ptr %23, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 62
  store float 1.000000e+00, ptr %24, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 40
  store i8 6, ptr %25, align 1, !tbaa !68
  %26 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 107
  store float 5.000000e-01, ptr %26, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 86
  store float 4.000000e+00, ptr %27, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 85
  store float 5.000000e-01, ptr %28, align 4, !tbaa !71
  %29 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 87
  store float 5.000000e-01, ptr %29, align 4, !tbaa !72
  %30 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 87, i64 1
  store float 0x3FB99999A0000000, ptr %30, align 4, !tbaa !72
  %31 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 87, i64 2
  store float 5.000000e-01, ptr %31, align 4, !tbaa !72
  %32 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 87, i64 3
  store float 0x3FB99999A0000000, ptr %32, align 4, !tbaa !72
  %33 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 88
  store float 0x3FB99999A0000000, ptr %33, align 4, !tbaa !73
  %34 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 89
  store float 1.000000e+00, ptr %34, align 8, !tbaa !74
  %35 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 64
  store float 1.000000e+00, ptr %35, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 63
  store float 1.000000e+00, ptr %36, align 4, !tbaa !76
  %37 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 18
  store float 1.000000e+00, ptr %37, align 4, !tbaa !77
  %38 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 36
  store i16 2, ptr %38, align 4, !tbaa !78
  %39 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 37
  store i16 2, ptr %39, align 2, !tbaa !79
  %40 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 29
  store float 0.000000e+00, ptr %40, align 8, !tbaa !80
  %41 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 31
  store float 0.000000e+00, ptr %41, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 32
  store float 1.250000e+00, ptr %42, align 4, !tbaa !82
  %43 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 30
  store float 1.250000e+00, ptr %43, align 4, !tbaa !83
  %44 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 34
  store float 0.000000e+00, ptr %44, align 4, !tbaa !84
  %45 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 35
  store float 1.000000e+00, ptr %45, align 8, !tbaa !85
  %46 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 72
  store float 1.000000e+00, ptr %46, align 4, !tbaa !86
  %47 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 130
  store i16 0, ptr %47, align 2, !tbaa !87
  %48 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 42
  store float 1.000000e+00, ptr %48, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 41
  store float 1.000000e+00, ptr %49, align 4, !tbaa !89
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 44
  store i16 18, ptr %50, align 2, !tbaa !90
  %51 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 43
  store i16 18, ptr %51, align 4, !tbaa !91
  %52 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 46
  store float 0x3F747AE140000000, ptr %52, align 4, !tbaa !92
  %53 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 45
  store float 0x3F747AE140000000, ptr %53, align 8, !tbaa !93
  %54 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 48
  store float 0.000000e+00, ptr %54, align 4, !tbaa !94
  %55 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 49
  store i16 0, ptr %55, align 8, !tbaa !95
  %56 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 100
  store float 1.000000e+00, ptr %56, align 8, !tbaa !96
  %57 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 101
  store float 1.000000e+00, ptr %57, align 4, !tbaa !97
  %58 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 78
  store i16 3, ptr %58, align 8, !tbaa !98
  %59 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 76
  store i8 1, ptr %59, align 2, !tbaa !99
  %60 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 114
  store float 1.000000e+00, ptr %60, align 8, !tbaa !72
  %61 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 114, i64 1
  store float 1.000000e+00, ptr %61, align 4, !tbaa !72
  %62 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 114, i64 2
  store float 1.000000e+00, ptr %62, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 115
  store float 1.000000e+00, ptr %63, align 4, !tbaa !72
  %64 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 115, i64 1
  store float 1.000000e+00, ptr %64, align 4, !tbaa !72
  %65 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 115, i64 2
  store float 1.000000e+00, ptr %65, align 4, !tbaa !72
  %66 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 116
  store float 0x3FA99999A0000000, ptr %66, align 8, !tbaa !100
  %67 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 117
  store float 0x3FB99999A0000000, ptr %67, align 4, !tbaa !101
  %68 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 118
  store float 0x3FF4CCCCC0000000, ptr %68, align 8, !tbaa !102
  %69 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 119
  store float 1.000000e+00, ptr %69, align 4, !tbaa !103
  %70 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 120
  store float 0.000000e+00, ptr %70, align 8, !tbaa !104
  %71 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 121
  store float 1.000000e+00, ptr %71, align 4, !tbaa !105
  %72 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 122
  store float 1.000000e+00, ptr %72, align 8, !tbaa !106
  %73 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27
  store float 1.000000e+00, ptr %73, align 8, !tbaa !107
  %74 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 1
  store float 0.000000e+00, ptr %74, align 4, !tbaa !108
  %75 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 2
  store float 1.000000e+00, ptr %75, align 8, !tbaa !109
  %76 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 3
  store float 1.000000e+00, ptr %76, align 4, !tbaa !110
  %77 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 5
  %78 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 5, i64 2
  store float 1.000000e+00, ptr %78, align 4, !tbaa !72
  %79 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 5, i64 1
  store float 1.000000e+00, ptr %79, align 4, !tbaa !72
  store float 1.000000e+00, ptr %77, align 4, !tbaa !72
  %80 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6
  %81 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6, i64 2
  store float 1.000000e+00, ptr %81, align 8, !tbaa !72
  %82 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6, i64 1
  store float 1.000000e+00, ptr %82, align 4, !tbaa !72
  store float 1.000000e+00, ptr %80, align 8, !tbaa !72
  %83 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 4
  %84 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 4, i64 2
  store float 1.000000e+00, ptr %84, align 8, !tbaa !72
  %85 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 4, i64 1
  store float 1.000000e+00, ptr %85, align 4, !tbaa !72
  store float 1.000000e+00, ptr %83, align 8, !tbaa !72
  %86 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 7
  store float 1.000000e+00, ptr %86, align 4, !tbaa !111
  %87 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 8
  store float 0x3F847AE140000000, ptr %87, align 8, !tbaa !112
  %88 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 10
  store i16 0, ptr %88, align 8, !tbaa !113
  %89 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 14
  store float 0x3FC99999A0000000, ptr %89, align 8, !tbaa !114
  %90 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 12
  store i16 1, ptr %90, align 4, !tbaa !115
  %91 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 11
  %92 = load i16, ptr %91, align 2, !tbaa !116
  %93 = or i16 %92, 8
  store i16 %93, ptr %91, align 2, !tbaa !116
  %94 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 13
  store i16 50, ptr %94, align 2, !tbaa !117
  %95 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 17
  store float 0x3FC99999A0000000, ptr %95, align 4, !tbaa !118
  %96 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 15
  store float 1.000000e+00, ptr %96, align 4, !tbaa !119
  %97 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 16
  store float 1.000000e+00, ptr %97, align 8, !tbaa !120
  %98 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28
  store i32 16, ptr %98, align 8, !tbaa !121
  %99 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 1
  store i32 0, ptr %99, align 4, !tbaa !122
  %100 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 2
  store i32 0, ptr %100, align 8, !tbaa !123
  %101 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  store i32 54526019, ptr %101, align 4, !tbaa !124
  %102 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 53
  store i32 1, ptr %102, align 4, !tbaa !125
  %103 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 50
  store i16 4, ptr %103, align 2, !tbaa !126
  %104 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  store ptr null, ptr %104, align 8, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_material_free(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @BKE_material_free_ex(ptr noundef %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_material_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp ne i8 %1, 0
  br label %4

4:                                                ; preds = %2, %21
  %5 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %6 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = icmp ne ptr %7, null
  %9 = select i1 %3, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !131
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !131
  br label %18

18:                                               ; preds = %14, %10, %4
  br i1 %8, label %19, label %21

19:                                               ; preds = %18
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %20(ptr noundef nonnull %7) #20
  br label %21

21:                                               ; preds = %18, %19
  %22 = add nuw nsw i64 %5, 1
  %23 = icmp eq i64 %22, 18
  br i1 %23, label %24, label %4, !llvm.loop !134

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %29(ptr noundef nonnull %26) #20
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %32 = load ptr, ptr %31, align 8, !tbaa !138
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %35(ptr noundef nonnull %32) #20
  br label %36

36:                                               ; preds = %34, %30
  tail call void @BKE_free_animdata(ptr noundef %0) #20
  %37 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  %38 = load ptr, ptr %37, align 8, !tbaa !127
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @BKE_previewimg_free(ptr noundef nonnull %37) #20
  br label %41

41:                                               ; preds = %40, %36
  tail call void @BKE_icon_delete(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %42, align 8, !tbaa !139
  %43 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %44 = load ptr, ptr %43, align 8, !tbaa !140
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %44, i8 noundef zeroext %1) #20
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %48 = load ptr, ptr %43, align 8, !tbaa !140
  tail call void %47(ptr noundef %48) #20
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 135
  %51 = load ptr, ptr %50, align 8, !tbaa !141
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %54(ptr noundef nonnull %51) #20
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 136
  %57 = load ptr, ptr %56, align 8, !tbaa !142
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @GPU_material_free(ptr noundef %0) #20
  br label %60

60:                                               ; preds = %59, %55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #4

declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #4

declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #4

declare void @ntreeFreeTree_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @GPU_material_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_material_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16717, ptr noundef %1) #20
  tail call void @init_material(ptr noundef %3)
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_material_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 105
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  tail call void @id_lib_extern(ptr noundef %4) #20
  br label %5

5:                                                ; preds = %1, %18
  %6 = phi i64 [ 0, %1 ], [ %19, %18 ]
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !128
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !128
  %12 = tail call ptr %11(i64 noundef 312, ptr noundef nonnull @.str) #20
  %13 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102, i64 %6
  store ptr %12, ptr %13, align 8, !tbaa !128
  %14 = load ptr, ptr %7, align 8, !tbaa !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %12, ptr noundef nonnull align 8 dereferenceable(312) %14, i64 312, i1 false)
  %15 = load ptr, ptr %13, align 8, !tbaa !128
  %16 = getelementptr inbounds %struct.MTex, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  tail call void @id_us_plus(ptr noundef %17) #20
  br label %18

18:                                               ; preds = %5, %10
  %19 = add nuw nsw i64 %6, 1
  %20 = icmp eq i64 %19, 18
  br i1 %20, label %21, label %5, !llvm.loop !144

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %27 = tail call ptr %26(ptr noundef nonnull %23) #20
  %28 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 92
  store ptr %27, ptr %28, align 8, !tbaa !137
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %35 = tail call ptr %34(ptr noundef nonnull %31) #20
  %36 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 93
  store ptr %35, ptr %36, align 8, !tbaa !138
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  %39 = load ptr, ptr %38, align 8, !tbaa !127
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %39) #20
  %43 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 106
  store ptr %42, ptr %43, align 8, !tbaa !127
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %46 = load ptr, ptr %45, align 8, !tbaa !140
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %46) #20
  %50 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 103
  store ptr %49, ptr %50, align 8, !tbaa !140
  br label %51

51:                                               ; preds = %48, %44
  %52 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #4

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @id_us_plus(ptr noundef) local_unnamed_addr #4

declare ptr @BKE_previewimg_copy(ptr noundef) local_unnamed_addr #4

declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @localize_material(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext 0) #20
  br label %3

3:                                                ; preds = %1, %13
  %4 = phi i64 [ 0, %1 ], [ %14, %13 ]
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !128
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str) #20
  %11 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102, i64 %4
  store ptr %10, ptr %11, align 8, !tbaa !128
  %12 = load ptr, ptr %5, align 8, !tbaa !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  br label %13

13:                                               ; preds = %3, %8
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 18
  br i1 %15, label %16, label %3, !llvm.loop !145

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %22 = tail call ptr %21(ptr noundef nonnull %18) #20
  %23 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 92
  store ptr %22, ptr %23, align 8, !tbaa !137
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %26 = load ptr, ptr %25, align 8, !tbaa !138
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %30 = tail call ptr %29(ptr noundef nonnull %26) #20
  %31 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 93
  store ptr %30, ptr %31, align 8, !tbaa !138
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 135
  store ptr null, ptr %33, align 8, !tbaa !141
  %34 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 106
  store ptr null, ptr %34, align 8, !tbaa !127
  %35 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %36 = load ptr, ptr %35, align 8, !tbaa !140
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @ntreeLocalize(ptr noundef nonnull %36) #20
  %40 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 103
  store ptr %39, ptr %40, align 8, !tbaa !140
  br label %41

41:                                               ; preds = %38, %32
  %42 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  ret ptr %2
}

declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_material_make_local(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @G, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = icmp eq ptr %4, null
  br i1 %5, label %352, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !149
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #20
  br label %11

11:                                               ; preds = %10, %19
  %12 = phi i64 [ 0, %10 ], [ %20, %19 ]
  %13 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  tail call void @id_lib_extern(ptr noundef %18) #20
  br label %19

19:                                               ; preds = %16, %11
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, 18
  br i1 %21, label %352, label %11, !llvm.loop !150

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = icmp eq ptr %24, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %22, %57
  %27 = phi ptr [ %60, %57 ], [ %24, %22 ]
  %28 = phi i8 [ %59, %57 ], [ 0, %22 ]
  %29 = phi i8 [ %58, %57 ], [ 0, %22 ]
  %30 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 29
  %31 = load ptr, ptr %30, align 8, !tbaa !151
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !155
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 3
  %39 = zext nneg i32 %35 to i64
  br label %40

40:                                               ; preds = %37, %52
  %41 = phi i64 [ 0, %37 ], [ %55, %52 ]
  %42 = phi i8 [ %28, %37 ], [ %54, %52 ]
  %43 = phi i8 [ %29, %37 ], [ %53, %52 ]
  %44 = getelementptr inbounds ptr, ptr %31, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !128
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load ptr, ptr %38, align 8, !tbaa !156
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, i8 1, i8 %43
  %51 = select i1 %49, i8 %42, i8 1
  br label %52

52:                                               ; preds = %47, %40
  %53 = phi i8 [ %43, %40 ], [ %50, %47 ]
  %54 = phi i8 [ %42, %40 ], [ %51, %47 ]
  %55 = add nuw nsw i64 %41, 1
  %56 = icmp eq i64 %55, %39
  br i1 %56, label %57, label %40, !llvm.loop !157

57:                                               ; preds = %52, %33, %26
  %58 = phi i8 [ %29, %26 ], [ %29, %33 ], [ %53, %52 ]
  %59 = phi i8 [ %28, %26 ], [ %28, %33 ], [ %54, %52 ]
  %60 = load ptr, ptr %27, align 8, !tbaa !128
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %26, !llvm.loop !158

62:                                               ; preds = %57, %22
  %63 = phi i8 [ 0, %22 ], [ %58, %57 ]
  %64 = phi i8 [ 0, %22 ], [ %59, %57 ]
  %65 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %66 = load ptr, ptr %65, align 8, !tbaa !128
  %67 = icmp eq ptr %66, null
  br i1 %67, label %104, label %68

68:                                               ; preds = %62, %99
  %69 = phi ptr [ %102, %99 ], [ %66, %62 ]
  %70 = phi i8 [ %101, %99 ], [ %64, %62 ]
  %71 = phi i8 [ %100, %99 ], [ %63, %62 ]
  %72 = getelementptr inbounds %struct.Mesh, ptr %69, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !159
  %74 = icmp eq ptr %73, null
  br i1 %74, label %99, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.Mesh, ptr %69, i64 0, i32 47
  %77 = load i16, ptr %76, align 2, !tbaa !162
  %78 = icmp sgt i16 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = zext nneg i16 %77 to i64
  %81 = getelementptr inbounds %struct.ID, ptr %69, i64 0, i32 3
  br label %82

82:                                               ; preds = %79, %94
  %83 = phi i64 [ 0, %79 ], [ %97, %94 ]
  %84 = phi i8 [ %70, %79 ], [ %96, %94 ]
  %85 = phi i8 [ %71, %79 ], [ %95, %94 ]
  %86 = getelementptr inbounds ptr, ptr %73, i64 %83
  %87 = load ptr, ptr %86, align 8, !tbaa !128
  %88 = icmp eq ptr %87, %0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load ptr, ptr %81, align 8, !tbaa !163
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, i8 1, i8 %85
  %93 = select i1 %91, i8 %84, i8 1
  br label %94

94:                                               ; preds = %89, %82
  %95 = phi i8 [ %85, %82 ], [ %92, %89 ]
  %96 = phi i8 [ %84, %82 ], [ %93, %89 ]
  %97 = add nuw nsw i64 %83, 1
  %98 = icmp eq i64 %97, %80
  br i1 %98, label %99, label %82, !llvm.loop !164

99:                                               ; preds = %94, %75, %68
  %100 = phi i8 [ %71, %68 ], [ %71, %75 ], [ %95, %94 ]
  %101 = phi i8 [ %70, %68 ], [ %70, %75 ], [ %96, %94 ]
  %102 = load ptr, ptr %69, align 8, !tbaa !128
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %68, !llvm.loop !165

104:                                              ; preds = %99, %62
  %105 = phi i8 [ %63, %62 ], [ %100, %99 ]
  %106 = phi i8 [ %64, %62 ], [ %101, %99 ]
  %107 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %108 = load ptr, ptr %107, align 8, !tbaa !128
  %109 = icmp eq ptr %108, null
  br i1 %109, label %146, label %110

110:                                              ; preds = %104, %141
  %111 = phi ptr [ %144, %141 ], [ %108, %104 ]
  %112 = phi i8 [ %143, %141 ], [ %106, %104 ]
  %113 = phi i8 [ %142, %141 ], [ %105, %104 ]
  %114 = getelementptr inbounds %struct.Curve, ptr %111, i64 0, i32 10
  %115 = load ptr, ptr %114, align 8, !tbaa !166
  %116 = icmp eq ptr %115, null
  br i1 %116, label %141, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.Curve, ptr %111, i64 0, i32 22
  %119 = load i16, ptr %118, align 2, !tbaa !169
  %120 = icmp sgt i16 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = zext nneg i16 %119 to i64
  %123 = getelementptr inbounds %struct.ID, ptr %111, i64 0, i32 3
  br label %124

124:                                              ; preds = %121, %136
  %125 = phi i64 [ 0, %121 ], [ %139, %136 ]
  %126 = phi i8 [ %112, %121 ], [ %138, %136 ]
  %127 = phi i8 [ %113, %121 ], [ %137, %136 ]
  %128 = getelementptr inbounds ptr, ptr %115, i64 %125
  %129 = load ptr, ptr %128, align 8, !tbaa !128
  %130 = icmp eq ptr %129, %0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load ptr, ptr %123, align 8, !tbaa !170
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, i8 1, i8 %127
  %135 = select i1 %133, i8 %126, i8 1
  br label %136

136:                                              ; preds = %131, %124
  %137 = phi i8 [ %127, %124 ], [ %134, %131 ]
  %138 = phi i8 [ %126, %124 ], [ %135, %131 ]
  %139 = add nuw nsw i64 %125, 1
  %140 = icmp eq i64 %139, %122
  br i1 %140, label %141, label %124, !llvm.loop !171

141:                                              ; preds = %136, %117, %110
  %142 = phi i8 [ %113, %110 ], [ %113, %117 ], [ %137, %136 ]
  %143 = phi i8 [ %112, %110 ], [ %112, %117 ], [ %138, %136 ]
  %144 = load ptr, ptr %111, align 8, !tbaa !128
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %110, !llvm.loop !172

146:                                              ; preds = %141, %104
  %147 = phi i8 [ %105, %104 ], [ %142, %141 ]
  %148 = phi i8 [ %106, %104 ], [ %143, %141 ]
  %149 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 16
  %150 = load ptr, ptr %149, align 8, !tbaa !128
  %151 = icmp eq ptr %150, null
  br i1 %151, label %188, label %152

152:                                              ; preds = %146, %183
  %153 = phi ptr [ %186, %183 ], [ %150, %146 ]
  %154 = phi i8 [ %185, %183 ], [ %148, %146 ]
  %155 = phi i8 [ %184, %183 ], [ %147, %146 ]
  %156 = getelementptr inbounds %struct.MetaBall, ptr %153, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !173
  %158 = icmp eq ptr %157, null
  br i1 %158, label %183, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.MetaBall, ptr %153, i64 0, i32 9
  %161 = load i16, ptr %160, align 2, !tbaa !175
  %162 = icmp sgt i16 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %159
  %164 = zext nneg i16 %161 to i64
  %165 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 3
  br label %166

166:                                              ; preds = %163, %178
  %167 = phi i64 [ 0, %163 ], [ %181, %178 ]
  %168 = phi i8 [ %154, %163 ], [ %180, %178 ]
  %169 = phi i8 [ %155, %163 ], [ %179, %178 ]
  %170 = getelementptr inbounds ptr, ptr %157, i64 %167
  %171 = load ptr, ptr %170, align 8, !tbaa !128
  %172 = icmp eq ptr %171, %0
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load ptr, ptr %165, align 8, !tbaa !176
  %175 = icmp eq ptr %174, null
  %176 = select i1 %175, i8 1, i8 %169
  %177 = select i1 %175, i8 %168, i8 1
  br label %178

178:                                              ; preds = %173, %166
  %179 = phi i8 [ %169, %166 ], [ %176, %173 ]
  %180 = phi i8 [ %168, %166 ], [ %177, %173 ]
  %181 = add nuw nsw i64 %167, 1
  %182 = icmp eq i64 %181, %164
  br i1 %182, label %183, label %166, !llvm.loop !177

183:                                              ; preds = %178, %159, %152
  %184 = phi i8 [ %155, %152 ], [ %155, %159 ], [ %179, %178 ]
  %185 = phi i8 [ %154, %152 ], [ %154, %159 ], [ %180, %178 ]
  %186 = load ptr, ptr %153, align 8, !tbaa !128
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %152, !llvm.loop !178

188:                                              ; preds = %183, %146
  %189 = phi i8 [ %147, %146 ], [ %184, %183 ]
  %190 = phi i8 [ %148, %146 ], [ %185, %183 ]
  %191 = icmp ne i8 %189, 0
  %192 = icmp eq i8 %190, 0
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %194, label %206

194:                                              ; preds = %188
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #20
  br label %195

195:                                              ; preds = %194, %203
  %196 = phi i64 [ 0, %194 ], [ %204, %203 ]
  %197 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !128
  %199 = icmp eq ptr %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.MTex, ptr %198, i64 0, i32 5
  %202 = load ptr, ptr %201, align 8, !tbaa !129
  tail call void @id_lib_extern(ptr noundef %202) #20
  br label %203

203:                                              ; preds = %200, %195
  %204 = add nuw nsw i64 %196, 1
  %205 = icmp eq i64 %204, 18
  br i1 %205, label %352, label %195, !llvm.loop !150

206:                                              ; preds = %188
  %207 = icmp ne i8 %190, 0
  %208 = select i1 %191, i1 %207, i1 false
  br i1 %208, label %209, label %352

209:                                              ; preds = %206
  %210 = tail call ptr @BKE_material_copy(ptr noundef %0)
  %211 = getelementptr inbounds %struct.ID, ptr %210, i64 0, i32 6
  store i32 0, ptr %211, align 4, !tbaa !149
  %212 = load ptr, ptr %3, align 8, !tbaa !148
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %212, ptr noundef %210) #20
  %213 = load ptr, ptr %23, align 8, !tbaa !128
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %247, %209
  %216 = load ptr, ptr %65, align 8, !tbaa !128
  %217 = icmp eq ptr %216, null
  br i1 %217, label %250, label %253

218:                                              ; preds = %209, %247
  %219 = phi ptr [ %248, %247 ], [ %213, %209 ]
  %220 = getelementptr inbounds %struct.Object, ptr %219, i64 0, i32 29
  %221 = load ptr, ptr %220, align 8, !tbaa !151
  %222 = icmp eq ptr %221, null
  br i1 %222, label %247, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.Object, ptr %219, i64 0, i32 31
  %225 = load i32, ptr %224, align 8, !tbaa !155
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.ID, ptr %219, i64 0, i32 3
  %229 = zext nneg i32 %225 to i64
  br label %230

230:                                              ; preds = %227, %244
  %231 = phi i64 [ 0, %227 ], [ %245, %244 ]
  %232 = load ptr, ptr %220, align 8, !tbaa !151
  %233 = getelementptr inbounds ptr, ptr %232, i64 %231
  %234 = load ptr, ptr %233, align 8, !tbaa !128
  %235 = icmp eq ptr %234, %0
  br i1 %235, label %236, label %244

236:                                              ; preds = %230
  %237 = load ptr, ptr %228, align 8, !tbaa !156
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  store ptr %210, ptr %233, align 8, !tbaa !128
  %240 = load i32, ptr %211, align 4, !tbaa !149
  %241 = add nsw i32 %240, 1
  store i32 %241, ptr %211, align 4, !tbaa !149
  %242 = load i32, ptr %7, align 4, !tbaa !149
  %243 = add nsw i32 %242, -1
  store i32 %243, ptr %7, align 4, !tbaa !149
  br label %244

244:                                              ; preds = %230, %239, %236
  %245 = add nuw nsw i64 %231, 1
  %246 = icmp eq i64 %245, %229
  br i1 %246, label %247, label %230, !llvm.loop !179

247:                                              ; preds = %244, %223, %218
  %248 = load ptr, ptr %219, align 8, !tbaa !128
  %249 = icmp eq ptr %248, null
  br i1 %249, label %215, label %218, !llvm.loop !180

250:                                              ; preds = %282, %215
  %251 = load ptr, ptr %107, align 8, !tbaa !128
  %252 = icmp eq ptr %251, null
  br i1 %252, label %285, label %288

253:                                              ; preds = %215, %282
  %254 = phi ptr [ %283, %282 ], [ %216, %215 ]
  %255 = getelementptr inbounds %struct.Mesh, ptr %254, i64 0, i32 5
  %256 = load ptr, ptr %255, align 8, !tbaa !159
  %257 = icmp eq ptr %256, null
  br i1 %257, label %282, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.Mesh, ptr %254, i64 0, i32 47
  %260 = load i16, ptr %259, align 2, !tbaa !162
  %261 = icmp sgt i16 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %258
  %263 = zext nneg i16 %260 to i64
  %264 = getelementptr inbounds %struct.ID, ptr %254, i64 0, i32 3
  br label %265

265:                                              ; preds = %262, %279
  %266 = phi i64 [ 0, %262 ], [ %280, %279 ]
  %267 = load ptr, ptr %255, align 8, !tbaa !159
  %268 = getelementptr inbounds ptr, ptr %267, i64 %266
  %269 = load ptr, ptr %268, align 8, !tbaa !128
  %270 = icmp eq ptr %269, %0
  br i1 %270, label %271, label %279

271:                                              ; preds = %265
  %272 = load ptr, ptr %264, align 8, !tbaa !163
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  store ptr %210, ptr %268, align 8, !tbaa !128
  %275 = load i32, ptr %211, align 4, !tbaa !149
  %276 = add nsw i32 %275, 1
  store i32 %276, ptr %211, align 4, !tbaa !149
  %277 = load i32, ptr %7, align 4, !tbaa !149
  %278 = add nsw i32 %277, -1
  store i32 %278, ptr %7, align 4, !tbaa !149
  br label %279

279:                                              ; preds = %265, %274, %271
  %280 = add nuw nsw i64 %266, 1
  %281 = icmp eq i64 %280, %263
  br i1 %281, label %282, label %265, !llvm.loop !181

282:                                              ; preds = %279, %258, %253
  %283 = load ptr, ptr %254, align 8, !tbaa !128
  %284 = icmp eq ptr %283, null
  br i1 %284, label %250, label %253, !llvm.loop !182

285:                                              ; preds = %317, %250
  %286 = load ptr, ptr %149, align 8, !tbaa !128
  %287 = icmp eq ptr %286, null
  br i1 %287, label %352, label %320

288:                                              ; preds = %250, %317
  %289 = phi ptr [ %318, %317 ], [ %251, %250 ]
  %290 = getelementptr inbounds %struct.Curve, ptr %289, i64 0, i32 10
  %291 = load ptr, ptr %290, align 8, !tbaa !166
  %292 = icmp eq ptr %291, null
  br i1 %292, label %317, label %293

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.Curve, ptr %289, i64 0, i32 22
  %295 = load i16, ptr %294, align 2, !tbaa !169
  %296 = icmp sgt i16 %295, 0
  br i1 %296, label %297, label %317

297:                                              ; preds = %293
  %298 = zext nneg i16 %295 to i64
  %299 = getelementptr inbounds %struct.ID, ptr %289, i64 0, i32 3
  br label %300

300:                                              ; preds = %297, %314
  %301 = phi i64 [ 0, %297 ], [ %315, %314 ]
  %302 = load ptr, ptr %290, align 8, !tbaa !166
  %303 = getelementptr inbounds ptr, ptr %302, i64 %301
  %304 = load ptr, ptr %303, align 8, !tbaa !128
  %305 = icmp eq ptr %304, %0
  br i1 %305, label %306, label %314

306:                                              ; preds = %300
  %307 = load ptr, ptr %299, align 8, !tbaa !170
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  store ptr %210, ptr %303, align 8, !tbaa !128
  %310 = load i32, ptr %211, align 4, !tbaa !149
  %311 = add nsw i32 %310, 1
  store i32 %311, ptr %211, align 4, !tbaa !149
  %312 = load i32, ptr %7, align 4, !tbaa !149
  %313 = add nsw i32 %312, -1
  store i32 %313, ptr %7, align 4, !tbaa !149
  br label %314

314:                                              ; preds = %300, %309, %306
  %315 = add nuw nsw i64 %301, 1
  %316 = icmp eq i64 %315, %298
  br i1 %316, label %317, label %300, !llvm.loop !183

317:                                              ; preds = %314, %293, %288
  %318 = load ptr, ptr %289, align 8, !tbaa !128
  %319 = icmp eq ptr %318, null
  br i1 %319, label %285, label %288, !llvm.loop !184

320:                                              ; preds = %285, %349
  %321 = phi ptr [ %350, %349 ], [ %286, %285 ]
  %322 = getelementptr inbounds %struct.MetaBall, ptr %321, i64 0, i32 6
  %323 = load ptr, ptr %322, align 8, !tbaa !173
  %324 = icmp eq ptr %323, null
  br i1 %324, label %349, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.MetaBall, ptr %321, i64 0, i32 9
  %327 = load i16, ptr %326, align 2, !tbaa !175
  %328 = icmp sgt i16 %327, 0
  br i1 %328, label %329, label %349

329:                                              ; preds = %325
  %330 = zext nneg i16 %327 to i64
  %331 = getelementptr inbounds %struct.ID, ptr %321, i64 0, i32 3
  br label %332

332:                                              ; preds = %329, %346
  %333 = phi i64 [ 0, %329 ], [ %347, %346 ]
  %334 = load ptr, ptr %322, align 8, !tbaa !173
  %335 = getelementptr inbounds ptr, ptr %334, i64 %333
  %336 = load ptr, ptr %335, align 8, !tbaa !128
  %337 = icmp eq ptr %336, %0
  br i1 %337, label %338, label %346

338:                                              ; preds = %332
  %339 = load ptr, ptr %331, align 8, !tbaa !176
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  store ptr %210, ptr %335, align 8, !tbaa !128
  %342 = load i32, ptr %211, align 4, !tbaa !149
  %343 = add nsw i32 %342, 1
  store i32 %343, ptr %211, align 4, !tbaa !149
  %344 = load i32, ptr %7, align 4, !tbaa !149
  %345 = add nsw i32 %344, -1
  store i32 %345, ptr %7, align 4, !tbaa !149
  br label %346

346:                                              ; preds = %332, %341, %338
  %347 = add nuw nsw i64 %333, 1
  %348 = icmp eq i64 %347, %330
  br i1 %348, label %349, label %332, !llvm.loop !185

349:                                              ; preds = %346, %325, %320
  %350 = load ptr, ptr %321, align 8, !tbaa !128
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %320, !llvm.loop !186

352:                                              ; preds = %349, %203, %19, %285, %206, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @extern_local_matarar(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = icmp sgt i16 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext nneg i16 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  tail call void @id_lib_extern(ptr noundef %9) #20
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !187

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @give_matarar(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !188
  switch i16 %3, label %16 [
    i16 1, label %4
    i16 2, label %8
    i16 4, label %8
    i16 3, label %8
    i16 5, label %12
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 5
  br label %16

8:                                                ; preds = %1, %1, %1
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !189
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 10
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  %15 = getelementptr inbounds %struct.MetaBall, ptr %14, i64 0, i32 6
  br label %16

16:                                               ; preds = %1, %12, %8, %4
  %17 = phi ptr [ %7, %4 ], [ %11, %8 ], [ %15, %12 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @give_totcolp(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !188
  switch i16 %3, label %16 [
    i16 1, label %4
    i16 2, label %8
    i16 4, label %8
    i16 3, label %8
    i16 5, label %12
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 47
  br label %16

8:                                                ; preds = %1, %1, %1
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !189
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 22
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  %15 = getelementptr inbounds %struct.MetaBall, ptr %14, i64 0, i32 9
  br label %16

16:                                               ; preds = %1, %12, %8, %4
  %17 = phi ptr [ %7, %4 ], [ %11, %8 ], [ %15, %12 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @give_matarar_id(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !190
  switch i16 %3, label %10 [
    i16 17741, label %4
    i16 21827, label %6
    i16 16973, label %8
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %1, %8, %6, %4
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @give_totcolp_id(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !190
  switch i16 %3, label %10 [
    i16 17741, label %4
    i16 21827, label %6
    i16 16973, label %8
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %10

10:                                               ; preds = %1, %8, %6, %4
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_material_resize_id(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !190
  switch i16 %5, label %12 [
    i16 17741, label %6
    i16 21827, label %8
    i16 16973, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %3, %6, %8, %10
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ null, %3 ]
  switch i16 %5, label %20 [
    i16 17741, label %14
    i16 21827, label %16
    i16 16973, label %18
  ]

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %20

20:                                               ; preds = %12, %14, %16, %18
  %21 = phi ptr [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ null, %12 ]
  %22 = icmp eq ptr %13, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %20
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %23
  %26 = load i16, ptr %21, align 2, !tbaa !190
  %27 = icmp sgt i16 %26, %1
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i16, ptr %21, align 2, !tbaa !190
  %30 = icmp sgt i16 %29, %1
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = sext i16 %1 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ %32, %31 ], [ %38, %33 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !128
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !128
  tail call void @id_us_min(ptr noundef %37) #20
  %38 = add nsw i64 %34, 1
  %39 = load i16, ptr %21, align 2, !tbaa !190
  %40 = sext i16 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %33, label %42, !llvm.loop !191

42:                                               ; preds = %33, %28, %25, %23
  %43 = icmp eq i16 %1, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = load i16, ptr %21, align 2, !tbaa !190
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %49 = load ptr, ptr %13, align 8, !tbaa !128
  tail call void %48(ptr noundef %49) #20
  br label %56

50:                                               ; preds = %42
  %51 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !128
  %52 = load ptr, ptr %13, align 8, !tbaa !128
  %53 = sext i16 %1 to i64
  %54 = shl nsw i64 %53, 3
  %55 = tail call ptr %51(ptr noundef %52, i64 noundef %54, ptr noundef nonnull @__func__.BKE_material_resize_id) #20
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi ptr [ null, %47 ], [ %55, %50 ]
  store ptr %57, ptr %13, align 8, !tbaa !128
  br label %58

58:                                               ; preds = %56, %44
  store i16 %1, ptr %21, align 2, !tbaa !190
  br label %59

59:                                               ; preds = %20, %58
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_material_append_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !190
  switch i16 %4, label %11 [
    i16 17741, label %5
    i16 21827, label %7
    i16 16973, label %9
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %2, %5, %7, %9
  %12 = phi ptr [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %11
  switch i16 %4, label %21 [
    i16 17741, label %15
    i16 21827, label %17
    i16 16973, label %19
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %21

21:                                               ; preds = %14, %15, %17, %19
  %22 = phi ptr [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ null, %14 ]
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %24 = load i16, ptr %22, align 2, !tbaa !190
  %25 = sext i16 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = add nsw i64 %26, 8
  %28 = tail call ptr %23(i64 noundef %27, ptr noundef nonnull @.str.1) #20
  %29 = load i16, ptr %22, align 2, !tbaa !190
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %12, align 8, !tbaa !128
  %33 = sext i16 %29 to i64
  %34 = shl nsw i64 %33, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %32, i64 %34, i1 false)
  br label %35

35:                                               ; preds = %31, %21
  %36 = load ptr, ptr %12, align 8, !tbaa !128
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %39(ptr noundef nonnull %36) #20
  br label %40

40:                                               ; preds = %38, %35
  store ptr %28, ptr %12, align 8, !tbaa !128
  %41 = load i16, ptr %22, align 2, !tbaa !190
  %42 = add i16 %41, 1
  store i16 %42, ptr %22, align 2, !tbaa !190
  %43 = sext i16 %41 to i64
  %44 = getelementptr inbounds ptr, ptr %28, i64 %43
  store ptr %1, ptr %44, align 8, !tbaa !128
  tail call void @id_us_plus(ptr noundef %1) #20
  %45 = load ptr, ptr @G, align 8, !tbaa !146
  %46 = icmp eq ptr %0, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %40
  %48 = load i16, ptr %3, align 8, !tbaa !190
  switch i16 %48, label %55 [
    i16 17741, label %49
    i16 21827, label %51
    i16 16973, label %53
  ]

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %55

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %55

55:                                               ; preds = %53, %51, %49, %47
  %56 = phi ptr [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ null, %47 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  tail call void @BKE_main_lock(ptr noundef %45) #20
  %59 = getelementptr inbounds %struct.Main, ptr %45, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !128
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58, %69
  %63 = phi ptr [ %70, %69 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !189
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i16, ptr %56, align 2, !tbaa !190
  tail call void @BKE_material_resize_object(ptr noundef nonnull %63, i16 noundef signext %68, i8 noundef zeroext 0)
  br label %69

69:                                               ; preds = %67, %62
  %70 = load ptr, ptr %63, align 8, !tbaa !128
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %62, !llvm.loop !192

72:                                               ; preds = %69, %58
  tail call void @BKE_main_unlock(ptr noundef %45) #20
  br label %73

73:                                               ; preds = %72, %55, %40, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_object_materials(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !190
  switch i16 %6, label %13 [
    i16 17741, label %7
    i16 21827, label %9
    i16 16973, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 47
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 22
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.MetaBall, ptr %1, i64 0, i32 9
  br label %13

13:                                               ; preds = %4, %7, %9, %11
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ null, %4 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  tail call void @BKE_main_lock(ptr noundef %0) #20
  %17 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16, %27
  %21 = phi ptr [ %28, %27 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !189
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i16, ptr %14, align 2, !tbaa !190
  tail call void @BKE_material_resize_object(ptr noundef nonnull %21, i16 noundef signext %26, i8 noundef zeroext 0)
  br label %27

27:                                               ; preds = %20, %25
  %28 = load ptr, ptr %21, align 8, !tbaa !128
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !192

30:                                               ; preds = %27, %16
  tail call void @BKE_main_unlock(ptr noundef %0) #20
  br label %31

31:                                               ; preds = %2, %13, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_material_pop_id(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = trunc i32 %1 to i16
  %5 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !190
  switch i16 %6, label %13 [
    i16 17741, label %7
    i16 21827, label %9
    i16 16973, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %13

13:                                               ; preds = %3, %7, %9, %11
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ null, %3 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %99, label %16

16:                                               ; preds = %13
  switch i16 %6, label %23 [
    i16 17741, label %17
    i16 21827, label %19
    i16 16973, label %21
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %23

23:                                               ; preds = %16, %17, %19, %21
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ null, %16 ]
  %25 = shl i32 %1, 16
  %26 = ashr exact i32 %25, 16
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %99

28:                                               ; preds = %23
  %29 = load i16, ptr %24, align 2, !tbaa !190
  %30 = sext i16 %29 to i32
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %99

32:                                               ; preds = %28
  %33 = load ptr, ptr %14, align 8, !tbaa !128
  %34 = sext i16 %4 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !128
  tail call void @id_us_min(ptr noundef %36) #20
  %37 = load i16, ptr %24, align 2, !tbaa !190
  %38 = sext i16 %37 to i32
  %39 = icmp slt i16 %37, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  store i16 0, ptr %24, align 2, !tbaa !190
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %42 = load ptr, ptr %14, align 8, !tbaa !128
  tail call void %41(ptr noundef %42) #20
  store ptr null, ptr %14, align 8, !tbaa !128
  br label %91

43:                                               ; preds = %32
  %44 = add nuw nsw i32 %26, 1
  %45 = icmp eq i32 %44, %38
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %14, align 8, !tbaa !128
  %48 = zext nneg i32 %26 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = zext nneg i32 %44 to i64
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50
  %52 = sub nsw i32 %38, %44
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %49, ptr nonnull align 8 %51, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i16, ptr %24, align 2, !tbaa !190
  %57 = add i16 %56, -1
  store i16 %57, ptr %24, align 2, !tbaa !190
  %58 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !128
  %59 = load ptr, ptr %14, align 8, !tbaa !128
  %60 = sext i16 %57 to i64
  %61 = shl nsw i64 %60, 3
  %62 = tail call ptr %58(ptr noundef %59, i64 noundef %61, ptr noundef nonnull @__func__.BKE_material_pop_id) #20
  store ptr %62, ptr %14, align 8, !tbaa !128
  %63 = load ptr, ptr @G, align 8, !tbaa !146
  %64 = icmp eq ptr %0, null
  br i1 %64, label %91, label %65

65:                                               ; preds = %55
  %66 = load i16, ptr %5, align 8, !tbaa !190
  switch i16 %66, label %73 [
    i16 17741, label %67
    i16 21827, label %69
    i16 16973, label %71
  ]

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %73

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %73

73:                                               ; preds = %71, %69, %67, %65
  %74 = phi ptr [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ null, %65 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %91, label %76

76:                                               ; preds = %73
  tail call void @BKE_main_lock(ptr noundef %63) #20
  %77 = getelementptr inbounds %struct.Main, ptr %63, i64 0, i32 13
  %78 = load ptr, ptr %77, align 8, !tbaa !128
  %79 = icmp eq ptr %78, null
  br i1 %79, label %90, label %80

80:                                               ; preds = %76, %87
  %81 = phi ptr [ %88, %87 ], [ %78, %76 ]
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 19
  %83 = load ptr, ptr %82, align 8, !tbaa !189
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i16, ptr %74, align 2, !tbaa !190
  tail call void @BKE_material_resize_object(ptr noundef nonnull %81, i16 noundef signext %86, i8 noundef zeroext 0)
  br label %87

87:                                               ; preds = %85, %80
  %88 = load ptr, ptr %81, align 8, !tbaa !128
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %80, !llvm.loop !192

90:                                               ; preds = %87, %76
  tail call void @BKE_main_unlock(ptr noundef %63) #20
  br label %91

91:                                               ; preds = %90, %73, %55, %40
  %92 = icmp eq i8 %2, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %91
  %94 = load i16, ptr %5, align 8, !tbaa !190
  switch i16 %94, label %99 [
    i16 17741, label %95
    i16 21827, label %96
  ]

95:                                               ; preds = %93
  tail call void @BKE_mesh_material_index_remove(ptr noundef %0, i16 noundef signext %4) #20
  br label %99

96:                                               ; preds = %93
  %97 = shl i32 %1, 16
  %98 = ashr exact i32 %97, 16
  tail call void @BKE_curve_material_index_remove(ptr noundef %0, i32 noundef %98) #20
  br label %99

99:                                               ; preds = %96, %95, %93, %23, %28, %91, %13
  %100 = phi ptr [ null, %13 ], [ %36, %91 ], [ null, %28 ], [ null, %23 ], [ %36, %93 ], [ %36, %95 ], [ %36, %96 ]
  ret ptr %100
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_material_clear_id(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !190
  switch i16 %4, label %11 [
    i16 17741, label %5
    i16 21827, label %7
    i16 16973, label %9
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %2, %5, %7, %9
  %12 = phi ptr [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  switch i16 %4, label %21 [
    i16 17741, label %15
    i16 21827, label %17
    i16 16973, label %19
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %22

21:                                               ; preds = %14
  unreachable

22:                                               ; preds = %15, %17, %19
  %23 = phi ptr [ %20, %19 ], [ %18, %17 ], [ %16, %15 ]
  store i16 0, ptr %23, align 2, !tbaa !190
  %24 = load ptr, ptr %12, align 8, !tbaa !128
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %27(ptr noundef nonnull %24) #20
  store ptr null, ptr %12, align 8, !tbaa !128
  br label %28

28:                                               ; preds = %26, %22
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = load i16, ptr %3, align 8, !tbaa !190
  switch i16 %31, label %34 [
    i16 17741, label %32
    i16 21827, label %33
  ]

32:                                               ; preds = %30
  tail call void @BKE_mesh_material_index_clear(ptr noundef %0) #20
  br label %34

33:                                               ; preds = %30
  tail call void @BKE_curve_material_index_clear(ptr noundef %0) #20
  br label %34

34:                                               ; preds = %33, %32, %30, %28, %11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @give_current_material(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !188
  switch i16 %6, label %19 [
    i16 1, label %7
    i16 2, label %11
    i16 4, label %11
    i16 3, label %11
    i16 5, label %15
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 47
  br label %19

11:                                               ; preds = %4, %4, %4
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 22
  br label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !189
  %18 = getelementptr inbounds %struct.MetaBall, ptr %17, i64 0, i32 9
  br label %19

19:                                               ; preds = %4, %7, %11, %15
  %20 = phi ptr [ %10, %7 ], [ %14, %11 ], [ %18, %15 ], [ null, %4 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %86, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %24 = load i32, ptr %23, align 8, !tbaa !155
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %86, label %26

26:                                               ; preds = %22
  %27 = sext i16 %1 to i32
  %28 = icmp slt i16 %1, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, ptr %23, align 8, !tbaa !155
  %33 = icmp slt i32 %32, %27
  %34 = icmp slt i16 %1, 1
  %35 = or i1 %34, %33
  br i1 %35, label %86, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %27, -1
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %38, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !194
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %48 = load ptr, ptr %47, align 8, !tbaa !151
  %49 = getelementptr inbounds ptr, ptr %48, i64 %42
  br label %83

50:                                               ; preds = %40, %36
  %51 = load i16, ptr %20, align 2, !tbaa !190
  %52 = sext i16 %51 to i32
  %53 = icmp sgt i32 %32, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 %52, ptr %23, align 8, !tbaa !155
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, ptr %23, align 8, !tbaa !155
  %57 = icmp slt i32 %56, %27
  %58 = trunc i32 %56 to i16
  %59 = select i1 %57, i16 %58, i16 %1
  %60 = load i16, ptr %5, align 8, !tbaa !188
  switch i16 %60, label %73 [
    i16 1, label %61
    i16 2, label %65
    i16 4, label %65
    i16 3, label %65
    i16 5, label %69
  ]

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !189
  %64 = getelementptr inbounds %struct.Mesh, ptr %63, i64 0, i32 5
  br label %73

65:                                               ; preds = %55, %55, %55
  %66 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !189
  %68 = getelementptr inbounds %struct.Curve, ptr %67, i64 0, i32 10
  br label %73

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !189
  %72 = getelementptr inbounds %struct.MetaBall, ptr %71, i64 0, i32 6
  br label %73

73:                                               ; preds = %55, %61, %65, %69
  %74 = phi ptr [ %64, %61 ], [ %68, %65 ], [ %72, %69 ], [ null, %55 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !128
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = sext i16 %59 to i64
  %81 = getelementptr ptr, ptr %77, i64 %80
  %82 = getelementptr ptr, ptr %81, i64 -1
  br label %83

83:                                               ; preds = %79, %46
  %84 = phi ptr [ %49, %46 ], [ %82, %79 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !128
  br label %86

86:                                               ; preds = %83, %76, %73, %31, %19, %22, %2
  %87 = phi ptr [ null, %2 ], [ null, %22 ], [ null, %19 ], [ null, %31 ], [ null, %76 ], [ null, %73 ], [ %85, %83 ]
  ret ptr %87
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @material_from(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !155
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i16 @llvm.umax.i16(i16 %1, i16 1)
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  %12 = sext i16 %9 to i64
  %13 = getelementptr i8, ptr %11, i64 %12
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !194
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8, %4
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !189
  br label %20

20:                                               ; preds = %17, %8, %2
  %21 = phi ptr [ null, %2 ], [ %0, %8 ], [ %19, %17 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @give_node_material(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !195
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 16717) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  br label %17

17:                                               ; preds = %11, %14
  %18 = phi ptr [ %16, %14 ], [ undef, %11 ]
  br i1 %13, label %19, label %20

19:                                               ; preds = %17, %7, %3, %1
  br label %20

20:                                               ; preds = %17, %19
  %21 = phi ptr [ %18, %17 ], [ null, %19 ]
  ret ptr %21
}

declare ptr @nodeGetActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_material_resize_object(ptr nocapture noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = sext i16 %1 to i32
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !155
  %9 = icmp sgt i32 %8, %6
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = sext i16 %1 to i32
  %12 = load i32, ptr %7, align 8, !tbaa !155
  %13 = icmp sgt i32 %12, %11
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i16 [ %1, %14 ], [ %22, %16 ]
  %18 = load ptr, ptr %15, align 8, !tbaa !151
  %19 = sext i16 %17 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  tail call void @id_us_min(ptr noundef %21) #20
  %22 = add i16 %17, 1
  %23 = sext i16 %22 to i32
  %24 = load i32, ptr %7, align 8, !tbaa !155
  %25 = icmp sgt i32 %24, %23
  br i1 %25, label %16, label %26, !llvm.loop !199

26:                                               ; preds = %16, %10, %5, %3
  %27 = sext i16 %1 to i32
  %28 = icmp eq i16 %1, 0
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %30 = load i32, ptr %29, align 8, !tbaa !155
  br i1 %28, label %31, label %40

31:                                               ; preds = %26
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %36 = load ptr, ptr %35, align 8, !tbaa !151
  tail call void %34(ptr noundef %36) #20
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %39 = load ptr, ptr %38, align 8, !tbaa !193
  tail call void %37(ptr noundef %39) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %67

40:                                               ; preds = %26
  %41 = icmp slt i32 %30, %27
  br i1 %41, label %42, label %67

42:                                               ; preds = %40
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %44 = sext i16 %1 to i64
  %45 = shl nsw i64 %44, 3
  %46 = tail call ptr %43(i64 noundef %45, ptr noundef nonnull @.str.1) #20
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %48 = tail call ptr %47(i64 noundef %44, ptr noundef nonnull @.str.3) #20
  %49 = load i32, ptr %29, align 8, !tbaa !155
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %53 = load ptr, ptr %52, align 8, !tbaa !151
  %54 = sext i32 %49 to i64
  %55 = shl nsw i64 %54, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %46, ptr align 8 %53, i64 %55, i1 false)
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %57 = load ptr, ptr %56, align 8, !tbaa !193
  %58 = load i32, ptr %29, align 8, !tbaa !155
  %59 = sext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %57, i64 %59, i1 false)
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %61 = load ptr, ptr %52, align 8, !tbaa !151
  tail call void %60(ptr noundef %61) #20
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %63 = load ptr, ptr %56, align 8, !tbaa !193
  tail call void %62(ptr noundef %63) #20
  br label %64

64:                                               ; preds = %51, %42
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  store ptr %46, ptr %65, align 8, !tbaa !151
  %66 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  store ptr %48, ptr %66, align 8, !tbaa !193
  br label %67

67:                                               ; preds = %40, %64, %31, %33
  %68 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  store i32 %27, ptr %68, align 8, !tbaa !155
  br i1 %28, label %74, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %71 = load i32, ptr %70, align 4, !tbaa !200
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 1, ptr %70, align 4, !tbaa !200
  br label %74

74:                                               ; preds = %73, %69, %67
  %75 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %76 = load i32, ptr %75, align 4, !tbaa !200
  %77 = icmp sgt i32 %76, %27
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 %27, ptr %75, align 4, !tbaa !200
  br label %79

79:                                               ; preds = %78, %74
  ret void
}

declare void @BKE_main_lock(ptr noundef) local_unnamed_addr #4

declare void @BKE_main_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @assign_material_id(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = icmp eq i16 %2, 32767
  br i1 %4, label %91, label %5

5:                                                ; preds = %3
  %6 = tail call i16 @llvm.smax.i16(i16 %2, i16 1)
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !201
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %91

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !190
  switch i16 %12, label %19 [
    i16 17741, label %13
    i16 21827, label %15
    i16 16973, label %17
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %19

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %19

19:                                               ; preds = %10, %13, %15, %17
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ null, %10 ]
  switch i16 %12, label %27 [
    i16 17741, label %21
    i16 21827, label %23
    i16 16973, label %25
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  br label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %27

27:                                               ; preds = %19, %21, %23, %25
  %28 = phi ptr [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ null, %19 ]
  %29 = icmp eq ptr %20, null
  %30 = icmp eq ptr %28, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %91, label %32

32:                                               ; preds = %27
  %33 = zext nneg i16 %6 to i64
  %34 = load i16, ptr %20, align 2, !tbaa !190
  %35 = icmp sgt i16 %6, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %38 = shl nuw nsw i64 %33, 3
  %39 = tail call ptr %37(i64 noundef %38, ptr noundef nonnull @.str.4) #20
  %40 = load i16, ptr %20, align 2, !tbaa !190
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %28, align 8, !tbaa !128
  %44 = sext i16 %40 to i64
  %45 = shl nsw i64 %44, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 8 %43, i64 %45, i1 false)
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %47 = load ptr, ptr %28, align 8, !tbaa !128
  tail call void %46(ptr noundef %47) #20
  br label %48

48:                                               ; preds = %42, %36
  store ptr %39, ptr %28, align 8, !tbaa !128
  store i16 %6, ptr %20, align 2, !tbaa !190
  br label %49

49:                                               ; preds = %48, %32
  %50 = load ptr, ptr %28, align 8, !tbaa !128
  %51 = getelementptr ptr, ptr %50, i64 %33
  %52 = getelementptr ptr, ptr %51, i64 -1
  %53 = load ptr, ptr %52, align 8, !tbaa !128
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ID, ptr %53, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !149
  %58 = add nsw i32 %57, -1
  store i32 %58, ptr %56, align 4, !tbaa !149
  br label %59

59:                                               ; preds = %55, %49
  store ptr %1, ptr %52, align 8, !tbaa !128
  %60 = icmp eq ptr %1, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @id_us_plus(ptr noundef nonnull %1) #20
  br label %62

62:                                               ; preds = %61, %59
  %63 = load ptr, ptr @G, align 8, !tbaa !146
  %64 = icmp eq ptr %0, null
  br i1 %64, label %91, label %65

65:                                               ; preds = %62
  %66 = load i16, ptr %11, align 8, !tbaa !190
  switch i16 %66, label %73 [
    i16 17741, label %67
    i16 21827, label %69
    i16 16973, label %71
  ]

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  br label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  br label %73

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  br label %73

73:                                               ; preds = %71, %69, %67, %65
  %74 = phi ptr [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ null, %65 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %91, label %76

76:                                               ; preds = %73
  tail call void @BKE_main_lock(ptr noundef %63) #20
  %77 = getelementptr inbounds %struct.Main, ptr %63, i64 0, i32 13
  %78 = load ptr, ptr %77, align 8, !tbaa !128
  %79 = icmp eq ptr %78, null
  br i1 %79, label %90, label %80

80:                                               ; preds = %76, %87
  %81 = phi ptr [ %88, %87 ], [ %78, %76 ]
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 19
  %83 = load ptr, ptr %82, align 8, !tbaa !189
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i16, ptr %74, align 2, !tbaa !190
  tail call void @BKE_material_resize_object(ptr noundef nonnull %81, i16 noundef signext %86, i8 noundef zeroext 0)
  br label %87

87:                                               ; preds = %85, %80
  %88 = load ptr, ptr %81, align 8, !tbaa !128
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %80, !llvm.loop !192

90:                                               ; preds = %87, %76
  tail call void @BKE_main_unlock(ptr noundef %63) #20
  br label %91

91:                                               ; preds = %90, %73, %62, %27, %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @assign_material(ptr nocapture noundef %0, ptr noundef %1, i16 noundef signext %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i16 %2, 32767
  br i1 %5, label %162, label %6

6:                                                ; preds = %4
  %7 = tail call i16 @llvm.smax.i16(i16 %2, i16 1)
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %162

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !188
  switch i16 %13, label %26 [
    i16 1, label %14
    i16 2, label %18
    i16 4, label %18
    i16 3, label %18
    i16 5, label %22
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !189
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 47
  br label %26

18:                                               ; preds = %11, %11, %11
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !189
  %21 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 22
  br label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !189
  %25 = getelementptr inbounds %struct.MetaBall, ptr %24, i64 0, i32 9
  br label %26

26:                                               ; preds = %11, %14, %18, %22
  %27 = phi ptr [ %17, %14 ], [ %21, %18 ], [ %25, %22 ], [ null, %11 ]
  switch i16 %13, label %40 [
    i16 1, label %28
    i16 2, label %32
    i16 4, label %32
    i16 3, label %32
    i16 5, label %36
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !189
  %31 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 5
  br label %40

32:                                               ; preds = %26, %26, %26
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !189
  %35 = getelementptr inbounds %struct.Curve, ptr %34, i64 0, i32 10
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !189
  %39 = getelementptr inbounds %struct.MetaBall, ptr %38, i64 0, i32 6
  br label %40

40:                                               ; preds = %26, %28, %32, %36
  %41 = phi ptr [ %31, %28 ], [ %35, %32 ], [ %39, %36 ], [ null, %26 ]
  %42 = icmp eq ptr %27, null
  %43 = icmp eq ptr %41, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %162, label %45

45:                                               ; preds = %40
  %46 = zext nneg i16 %7 to i32
  %47 = load i16, ptr %27, align 2, !tbaa !190
  %48 = icmp sgt i16 %7, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %51 = zext nneg i16 %7 to i64
  %52 = shl nuw nsw i64 %51, 3
  %53 = tail call ptr %50(i64 noundef %52, ptr noundef nonnull @.str.4) #20
  %54 = load i16, ptr %27, align 2, !tbaa !190
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %41, align 8, !tbaa !128
  %58 = sext i16 %54 to i64
  %59 = shl nsw i64 %58, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %53, ptr align 8 %57, i64 %59, i1 false)
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %61 = load ptr, ptr %41, align 8, !tbaa !128
  tail call void %60(ptr noundef %61) #20
  br label %62

62:                                               ; preds = %56, %49
  store ptr %53, ptr %41, align 8, !tbaa !128
  store i16 %7, ptr %27, align 2, !tbaa !190
  br label %63

63:                                               ; preds = %62, %45
  switch i32 %3, label %81 [
    i32 0, label %64
    i32 1, label %86
    i32 2, label %80
  ]

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %66 = load i32, ptr %65, align 8, !tbaa !155
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %70 = load i32, ptr %69, align 4, !tbaa !200
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %74 = load ptr, ptr %73, align 8, !tbaa !193
  %75 = sext i32 %70 to i64
  %76 = getelementptr i8, ptr %74, i64 %75
  %77 = getelementptr i8, ptr %76, i64 -1
  %78 = load i8, ptr %77, align 1, !tbaa !194
  br label %86

79:                                               ; preds = %68, %64
  switch i32 %3, label %81 [
    i32 1, label %86
    i32 2, label %80
  ]

80:                                               ; preds = %63, %79
  br label %86

81:                                               ; preds = %63, %79
  %82 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !202
  %83 = lshr i32 %82, 8
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  br label %86

86:                                               ; preds = %79, %63, %80, %81, %72
  %87 = phi i8 [ %78, %72 ], [ %85, %81 ], [ 1, %80 ], [ 0, %63 ], [ 0, %79 ]
  %88 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %89 = load i32, ptr %88, align 8, !tbaa !155
  %90 = icmp slt i32 %89, %46
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !128
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %94 = load ptr, ptr %93, align 8, !tbaa !151
  %95 = zext nneg i16 %7 to i64
  %96 = shl nuw nsw i64 %95, 3
  %97 = tail call ptr %92(ptr noundef %94, i64 noundef %96, ptr noundef nonnull @.str.5) #20
  store ptr %97, ptr %93, align 8, !tbaa !151
  %98 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !128
  %99 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %100 = load ptr, ptr %99, align 8, !tbaa !193
  %101 = tail call ptr %98(ptr noundef %100, i64 noundef %95, ptr noundef nonnull @.str.6) #20
  store ptr %101, ptr %99, align 8, !tbaa !193
  store i32 %46, ptr %88, align 8, !tbaa !155
  br label %102

102:                                              ; preds = %91, %86
  %103 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %104 = load ptr, ptr %103, align 8, !tbaa !193
  %105 = add nsw i32 %46, -1
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %104, i64 %106
  store i8 %87, ptr %107, align 1, !tbaa !194
  %108 = icmp eq i8 %87, 1
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %111 = load ptr, ptr %110, align 8, !tbaa !151
  %112 = getelementptr inbounds ptr, ptr %111, i64 %106
  %113 = load ptr, ptr %112, align 8, !tbaa !128
  %114 = icmp eq ptr %113, null
  br i1 %114, label %126, label %120

115:                                              ; preds = %102
  %116 = load ptr, ptr %41, align 8, !tbaa !128
  %117 = getelementptr inbounds ptr, ptr %116, i64 %106
  %118 = load ptr, ptr %117, align 8, !tbaa !128
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %115, %109
  %121 = phi ptr [ %113, %109 ], [ %118, %115 ]
  %122 = phi ptr [ %112, %109 ], [ %117, %115 ]
  %123 = getelementptr inbounds %struct.ID, ptr %121, i64 0, i32 6
  %124 = load i32, ptr %123, align 4, !tbaa !149
  %125 = add nsw i32 %124, -1
  store i32 %125, ptr %123, align 4, !tbaa !149
  br label %126

126:                                              ; preds = %120, %115, %109
  %127 = phi ptr [ %112, %109 ], [ %117, %115 ], [ %122, %120 ]
  store ptr %1, ptr %127, align 8, !tbaa !128
  %128 = icmp eq ptr %1, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  tail call void @id_us_plus(ptr noundef nonnull %1) #20
  br label %130

130:                                              ; preds = %129, %126
  %131 = load ptr, ptr @G, align 8, !tbaa !146
  %132 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %133 = load ptr, ptr %132, align 8, !tbaa !189
  %134 = icmp eq ptr %133, null
  br i1 %134, label %162, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.ID, ptr %133, i64 0, i32 4
  %137 = load i16, ptr %136, align 8, !tbaa !190
  switch i16 %137, label %144 [
    i16 17741, label %138
    i16 21827, label %140
    i16 16973, label %142
  ]

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.Mesh, ptr %133, i64 0, i32 47
  br label %144

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.Curve, ptr %133, i64 0, i32 22
  br label %144

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.MetaBall, ptr %133, i64 0, i32 9
  br label %144

144:                                              ; preds = %142, %140, %138, %135
  %145 = phi ptr [ %143, %142 ], [ %141, %140 ], [ %139, %138 ], [ null, %135 ]
  %146 = icmp eq ptr %145, null
  br i1 %146, label %162, label %147

147:                                              ; preds = %144
  tail call void @BKE_main_lock(ptr noundef %131) #20
  %148 = getelementptr inbounds %struct.Main, ptr %131, i64 0, i32 13
  %149 = load ptr, ptr %148, align 8, !tbaa !128
  %150 = icmp eq ptr %149, null
  br i1 %150, label %161, label %151

151:                                              ; preds = %147, %158
  %152 = phi ptr [ %159, %158 ], [ %149, %147 ]
  %153 = getelementptr inbounds %struct.Object, ptr %152, i64 0, i32 19
  %154 = load ptr, ptr %153, align 8, !tbaa !189
  %155 = icmp eq ptr %154, %133
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i16, ptr %145, align 2, !tbaa !190
  tail call void @BKE_material_resize_object(ptr noundef nonnull %152, i16 noundef signext %157, i8 noundef zeroext 0)
  br label %158

158:                                              ; preds = %156, %151
  %159 = load ptr, ptr %152, align 8, !tbaa !128
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %151, !llvm.loop !192

161:                                              ; preds = %158, %147
  tail call void @BKE_main_unlock(ptr noundef %131) #20
  br label %162

162:                                              ; preds = %161, %144, %130, %40, %6, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @assign_matarar(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %5 = load i32, ptr %4, align 4, !tbaa !200
  br label %6

6:                                                ; preds = %6, %3
  %7 = tail call zeroext i8 @object_remove_material_slot(ptr noundef %0), !range !206
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %6, !llvm.loop !207

9:                                                ; preds = %6
  %10 = icmp sgt i16 %2, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = zext nneg i16 %2 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  %15 = load ptr, ptr %1, align 8, !tbaa !128
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  %18 = add nuw nsw i64 %14, 1
  %19 = trunc i64 %18 to i16
  tail call void @assign_material(ptr noundef %0, ptr noundef %17, i16 noundef signext %19, i32 noundef 0)
  %20 = icmp eq i64 %18, %12
  br i1 %20, label %21, label %13, !llvm.loop !208

21:                                               ; preds = %13, %9
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %23 = load i32, ptr %22, align 8, !tbaa !155
  %24 = tail call i32 @llvm.smin.i32(i32 %5, i32 %23)
  store i32 %24, ptr %4, align 4, !tbaa !200
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @object_remove_material_slot(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %177, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !155
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %177, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %9 = load i32, ptr %8, align 4, !tbaa !200
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @__func__.object_remove_material_slot, i32 noundef %9)
  br label %177

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !188
  switch i16 %15, label %28 [
    i16 1, label %16
    i16 2, label %20
    i16 4, label %20
    i16 3, label %20
    i16 5, label %24
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !189
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 47
  br label %28

20:                                               ; preds = %13, %13, %13
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !189
  %23 = getelementptr inbounds %struct.Curve, ptr %22, i64 0, i32 22
  br label %28

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !189
  %27 = getelementptr inbounds %struct.MetaBall, ptr %26, i64 0, i32 9
  br label %28

28:                                               ; preds = %13, %16, %20, %24
  %29 = phi ptr [ %19, %16 ], [ %23, %20 ], [ %27, %24 ], [ null, %13 ]
  switch i16 %15, label %42 [
    i16 1, label %30
    i16 2, label %34
    i16 4, label %34
    i16 3, label %34
    i16 5, label %38
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !189
  %33 = getelementptr inbounds %struct.Mesh, ptr %32, i64 0, i32 5
  br label %42

34:                                               ; preds = %28, %28, %28
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !189
  %37 = getelementptr inbounds %struct.Curve, ptr %36, i64 0, i32 10
  br label %42

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !189
  %41 = getelementptr inbounds %struct.MetaBall, ptr %40, i64 0, i32 6
  br label %42

42:                                               ; preds = %28, %30, %34, %38
  %43 = phi ptr [ %33, %30 ], [ %37, %34 ], [ %41, %38 ], [ null, %28 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %177, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %43, align 8, !tbaa !128
  %47 = icmp eq ptr %46, null
  br i1 %47, label %177, label %48

48:                                               ; preds = %45
  %49 = icmp sgt i32 %9, %5
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i32 %5, ptr %8, align 4, !tbaa !200
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, ptr %8, align 4, !tbaa !200
  %53 = sext i32 %52 to i64
  %54 = getelementptr ptr, ptr %46, i64 %53
  %55 = getelementptr ptr, ptr %54, i64 -1
  %56 = load ptr, ptr %55, align 8, !tbaa !128
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !149
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %59, align 4, !tbaa !149
  br label %62

62:                                               ; preds = %58, %51
  %63 = shl i32 %52, 16
  %64 = ashr exact i32 %63, 16
  %65 = icmp sgt i32 %5, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = trunc i32 %52 to i16
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i16 [ %75, %68 ], [ %67, %66 ]
  %70 = load ptr, ptr %43, align 8, !tbaa !128
  %71 = sext i16 %69 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !128
  %74 = getelementptr ptr, ptr %72, i64 -1
  store ptr %73, ptr %74, align 8, !tbaa !128
  %75 = add i16 %69, 1
  %76 = sext i16 %75 to i32
  %77 = icmp sgt i32 %5, %76
  br i1 %77, label %68, label %78, !llvm.loop !209

78:                                               ; preds = %68, %62
  %79 = load i16, ptr %29, align 2, !tbaa !190
  %80 = add i16 %79, -1
  store i16 %80, ptr %29, align 2, !tbaa !190
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %84 = load ptr, ptr %43, align 8, !tbaa !128
  tail call void %83(ptr noundef %84) #20
  store ptr null, ptr %43, align 8, !tbaa !128
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, ptr %8, align 4, !tbaa !200
  %87 = trunc i32 %86 to i16
  %88 = load ptr, ptr @G, align 8, !tbaa !146
  %89 = getelementptr inbounds %struct.Main, ptr %88, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !128
  %91 = icmp eq ptr %90, null
  br i1 %91, label %159, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %94 = shl i32 %86, 16
  %95 = ashr exact i32 %94, 16
  %96 = sext i32 %95 to i64
  %97 = shl i32 %86, 16
  %98 = ashr exact i32 %97, 16
  br label %99

99:                                               ; preds = %92, %156
  %100 = phi ptr [ %90, %92 ], [ %157, %156 ]
  %101 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 19
  %102 = load ptr, ptr %101, align 8, !tbaa !189
  %103 = load ptr, ptr %93, align 8, !tbaa !189
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %105, label %156

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 29
  %107 = load ptr, ptr %106, align 8, !tbaa !151
  %108 = getelementptr ptr, ptr %107, i64 %96
  %109 = getelementptr ptr, ptr %108, i64 -1
  %110 = load ptr, ptr %109, align 8, !tbaa !128
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.ID, ptr %110, i64 0, i32 6
  %114 = load i32, ptr %113, align 4, !tbaa !149
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %113, align 4, !tbaa !149
  br label %116

116:                                              ; preds = %112, %105
  %117 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 31
  %118 = load i32, ptr %117, align 8, !tbaa !155
  %119 = icmp sgt i32 %118, %98
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 30
  br label %122

122:                                              ; preds = %120, %122
  %123 = phi i32 [ %98, %120 ], [ %137, %122 ]
  %124 = phi i16 [ %87, %120 ], [ %136, %122 ]
  %125 = load ptr, ptr %106, align 8, !tbaa !151
  %126 = sext i16 %124 to i64
  %127 = getelementptr inbounds ptr, ptr %125, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !128
  %129 = add nsw i32 %123, -1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %125, i64 %130
  store ptr %128, ptr %131, align 8, !tbaa !128
  %132 = load ptr, ptr %121, align 8, !tbaa !193
  %133 = getelementptr inbounds i8, ptr %132, i64 %126
  %134 = load i8, ptr %133, align 1, !tbaa !194
  %135 = getelementptr inbounds i8, ptr %132, i64 %130
  store i8 %134, ptr %135, align 1, !tbaa !194
  %136 = add i16 %124, 1
  %137 = sext i16 %136 to i32
  %138 = load i32, ptr %117, align 8, !tbaa !155
  %139 = icmp sgt i32 %138, %137
  br i1 %139, label %122, label %140, !llvm.loop !210

140:                                              ; preds = %122, %116
  %141 = phi i32 [ %118, %116 ], [ %138, %122 ]
  %142 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 31
  %143 = add nsw i32 %141, -1
  store i32 %143, ptr %142, align 8, !tbaa !155
  %144 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 32
  %145 = load i32, ptr %144, align 4, !tbaa !200
  %146 = icmp slt i32 %145, %141
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  store i32 %143, ptr %144, align 4, !tbaa !200
  br label %148

148:                                              ; preds = %147, %140
  %149 = icmp eq i32 %143, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %148
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %152 = load ptr, ptr %106, align 8, !tbaa !151
  tail call void %151(ptr noundef %152) #20
  %153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %154 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 30
  %155 = load ptr, ptr %154, align 8, !tbaa !193
  tail call void %153(ptr noundef %155) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, i8 0, i64 16, i1 false)
  br label %156

156:                                              ; preds = %148, %150, %99
  %157 = load ptr, ptr %100, align 8, !tbaa !128
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %99, !llvm.loop !211

159:                                              ; preds = %156, %85
  %160 = load i16, ptr %14, align 8, !tbaa !188
  %161 = add i16 %160, -1
  %162 = icmp ult i16 %161, 4
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %165 = load ptr, ptr %164, align 8, !tbaa !189
  %166 = add i16 %87, -1
  %167 = getelementptr inbounds %struct.ID, ptr %165, i64 0, i32 4
  %168 = load i16, ptr %167, align 8, !tbaa !190
  switch i16 %168, label %172 [
    i16 17741, label %169
    i16 21827, label %170
  ]

169:                                              ; preds = %163
  tail call void @BKE_mesh_material_index_remove(ptr noundef %165, i16 noundef signext %166) #20
  br label %172

170:                                              ; preds = %163
  %171 = sext i16 %166 to i32
  tail call void @BKE_curve_material_index_remove(ptr noundef %165, i32 noundef %171) #20
  br label %172

172:                                              ; preds = %163, %169, %170
  %173 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %174 = load ptr, ptr %173, align 8, !tbaa !212
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  tail call void @BKE_displist_free(ptr noundef nonnull %174) #20
  br label %177

177:                                              ; preds = %159, %176, %172, %42, %45, %1, %3, %11
  %178 = phi i8 [ 0, %11 ], [ 0, %3 ], [ 0, %1 ], [ 0, %45 ], [ 0, %42 ], [ 1, %159 ], [ 1, %172 ], [ 1, %176 ]
  ret i8 %178
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @find_material_index(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !188
  switch i16 %6, label %19 [
    i16 1, label %7
    i16 2, label %11
    i16 4, label %11
    i16 3, label %11
    i16 5, label %15
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 47
  br label %19

11:                                               ; preds = %4, %4, %4
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 22
  br label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !189
  %18 = getelementptr inbounds %struct.MetaBall, ptr %17, i64 0, i32 9
  br label %19

19:                                               ; preds = %4, %7, %11, %15
  %20 = phi ptr [ %10, %7 ], [ %14, %11 ], [ %18, %15 ], [ null, %4 ]
  switch i16 %6, label %33 [
    i16 1, label %21
    i16 2, label %25
    i16 4, label %25
    i16 3, label %25
    i16 5, label %29
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !189
  %24 = getelementptr inbounds %struct.Mesh, ptr %23, i64 0, i32 5
  br label %33

25:                                               ; preds = %19, %19, %19
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !189
  %28 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 10
  br label %33

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !189
  %32 = getelementptr inbounds %struct.MetaBall, ptr %31, i64 0, i32 6
  br label %33

33:                                               ; preds = %19, %21, %25, %29
  %34 = phi ptr [ %24, %21 ], [ %28, %25 ], [ %32, %29 ], [ null, %19 ]
  %35 = icmp eq ptr %20, null
  %36 = icmp eq ptr %34, null
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %62, label %38

38:                                               ; preds = %33
  %39 = load i16, ptr %20, align 2, !tbaa !190
  %40 = icmp sgt i16 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load ptr, ptr %34, align 8, !tbaa !128
  %43 = load ptr, ptr %42, align 8, !tbaa !128
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %58, label %50

45:                                               ; preds = %50
  %46 = zext nneg i16 %52 to i64
  %47 = getelementptr inbounds ptr, ptr %42, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !128
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %54, label %50, !llvm.loop !213

50:                                               ; preds = %41, %45
  %51 = phi i16 [ %52, %45 ], [ 0, %41 ]
  %52 = add nuw nsw i16 %51, 1
  %53 = icmp eq i16 %52, %39
  br i1 %53, label %54, label %45, !llvm.loop !213

54:                                               ; preds = %45, %50
  %55 = phi i16 [ %39, %50 ], [ %52, %45 ]
  %56 = icmp slt i16 %52, %39
  %57 = add nuw i16 %55, 1
  br label %58

58:                                               ; preds = %41, %54, %38
  %59 = phi i16 [ 1, %38 ], [ 1, %41 ], [ %57, %54 ]
  %60 = phi i1 [ %40, %38 ], [ %40, %41 ], [ %56, %54 ]
  %61 = select i1 %60, i16 %59, i16 0
  br label %62

62:                                               ; preds = %58, %33, %2
  %63 = phi i16 [ 0, %2 ], [ 0, %33 ], [ %61, %58 ]
  ret i16 %63
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @object_add_material_slot(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !155
  %6 = icmp sgt i32 %5, 32765
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = trunc i32 %5 to i16
  %9 = add i16 %8, 1
  tail call void @assign_material(ptr noundef nonnull %0, ptr noundef null, i16 noundef signext %9, i32 noundef 0)
  %10 = load i32, ptr %4, align 8, !tbaa !155
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  store i32 %10, ptr %11, align 4, !tbaa !200
  br label %12

12:                                               ; preds = %3, %1, %7
  %13 = phi i8 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @init_render_material(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  tail call fastcc void @do_init_render_material(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %9 = load i8, ptr %8, align 1, !tbaa !195
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %13 = load i32, ptr %12, align 4, !tbaa !124
  %14 = and i32 %13, 42148673
  %15 = or disjoint i32 %14, 4
  %16 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 52
  store i32 %15, ptr %16, align 8, !tbaa !214
  %17 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 53
  %18 = load i32, ptr %17, align 4, !tbaa !125
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 54
  store i32 %19, ptr %20, align 8, !tbaa !215
  %21 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 90
  tail call void @ntreeShaderGetTexcoMode(ptr noundef nonnull %5, i32 noundef %1, ptr noundef nonnull %21, ptr noundef nonnull %16) #20
  %22 = load ptr, ptr %4, align 8, !tbaa !140
  tail call fastcc void @init_render_nodetree(ptr noundef %22, ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %23 = load ptr, ptr %4, align 8, !tbaa !140
  %24 = getelementptr inbounds %struct.bNodeTree, ptr %23, i64 0, i32 27
  %25 = load ptr, ptr %24, align 8, !tbaa !216
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %11
  %28 = tail call ptr @ntreeShaderBeginExecTree(ptr noundef %23) #20
  %29 = load ptr, ptr %4, align 8, !tbaa !140
  %30 = getelementptr inbounds %struct.bNodeTree, ptr %29, i64 0, i32 27
  store ptr %28, ptr %30, align 8, !tbaa !216
  br label %43

31:                                               ; preds = %7, %3
  %32 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %33 = load i32, ptr %32, align 4, !tbaa !124
  %34 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 52
  store i32 %33, ptr %34, align 8, !tbaa !214
  %35 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 53
  %36 = load i32, ptr %35, align 4, !tbaa !125
  %37 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 54
  store i32 %36, ptr %37, align 8, !tbaa !215
  %38 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 66
  %39 = load float, ptr %38, align 8, !tbaa !219
  %40 = fcmp ogt float %39, 0.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = or i32 %33, -2147483648
  store i32 %42, ptr %34, align 8, !tbaa !214
  br label %43

43:                                               ; preds = %31, %41, %11, %27
  ret void
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_init_render_material(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 55
  %5 = load i16, ptr %4, align 4, !tbaa !64
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i16 1, ptr %4, align 4, !tbaa !64
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  %10 = load i32, ptr %9, align 8, !tbaa !220
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 90
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 91
  br label %13

13:                                               ; preds = %8, %72
  %14 = phi i64 [ 0, %8 ], [ %75, %72 ]
  %15 = phi i32 [ 0, %8 ], [ %74, %72 ]
  %16 = phi i32 [ 0, %8 ], [ %73, %72 ]
  %17 = trunc i64 %14 to i32
  %18 = shl nuw nsw i32 1, %17
  %19 = and i32 %10, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %14
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  %24 = icmp eq ptr %23, null
  br i1 %24, label %72, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !129
  %28 = icmp eq ptr %27, null
  br i1 %28, label %72, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Tex, ptr %27, i64 0, i32 32
  %31 = load i16, ptr %30, align 8, !tbaa !221
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.Tex, ptr %27, i64 0, i32 61
  %34 = load i8, ptr %33, align 8, !tbaa !222
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Tex, ptr %27, i64 0, i32 52
  %38 = load ptr, ptr %37, align 8, !tbaa !223
  %39 = icmp ne ptr %38, null
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ false, %29 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = or i32 %42, %32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %40
  %46 = load i16, ptr %23, align 8, !tbaa !224
  %47 = load i16, ptr %11, align 4, !tbaa !225
  %48 = or i16 %47, %46
  store i16 %48, ptr %11, align 4, !tbaa !225
  %49 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !226
  %51 = load i16, ptr %12, align 2, !tbaa !227
  %52 = or i16 %51, %50
  store i16 %52, ptr %12, align 2, !tbaa !227
  switch i16 %31, label %53 [
    i16 8, label %58
    i16 10, label %58
  ]

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 14
  %55 = load i16, ptr %54, align 8, !tbaa !228
  %56 = and i16 %55, 9088
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53, %45, %45
  %59 = or i16 %48, 512
  store i16 %59, ptr %11, align 4, !tbaa !225
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i16, ptr %11, align 4, !tbaa !225
  %62 = and i16 %61, -7937
  %63 = icmp eq i16 %62, 0
  %64 = select i1 %63, i32 %16, i32 1
  %65 = and i16 %52, 2
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 18
  %69 = load i16, ptr %68, align 8, !tbaa !229
  %70 = icmp eq i16 %69, 3
  %71 = select i1 %70, i32 1, i32 %15
  br label %72

72:                                               ; preds = %67, %21, %25, %40, %60, %13
  %73 = phi i32 [ %16, %13 ], [ %64, %60 ], [ %16, %40 ], [ %16, %25 ], [ %16, %21 ], [ %64, %67 ]
  %74 = phi i32 [ %15, %13 ], [ %15, %60 ], [ %15, %40 ], [ %15, %25 ], [ %15, %21 ], [ %71, %67 ]
  %75 = add nuw nsw i64 %14, 1
  %76 = icmp eq i64 %75, 18
  br i1 %76, label %77, label %13, !llvm.loop !230

77:                                               ; preds = %72
  %78 = icmp eq i32 %74, 0
  %79 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %80 = load i32, ptr %79, align 4, !tbaa !124
  %81 = and i32 %80, -134217729
  %82 = select i1 %78, i32 0, i32 134217728
  %83 = or disjoint i32 %81, %82
  store i32 %83, ptr %79, align 4, !tbaa !124
  %84 = and i32 %80, 2192
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %77
  %87 = and i32 %1, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 90
  %91 = load i16, ptr %90, align 4, !tbaa !225
  %92 = or i16 %91, 512
  store i16 %92, ptr %90, align 4, !tbaa !225
  br label %93

93:                                               ; preds = %86, %89, %77
  %94 = phi i32 [ 1, %89 ], [ 1, %86 ], [ %73, %77 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 90
  %98 = load i16, ptr %97, align 4, !tbaa !225
  %99 = or i16 %98, 2048
  store i16 %99, ptr %97, align 4, !tbaa !225
  br label %100

100:                                              ; preds = %96, %93
  %101 = and i32 %1, 65536
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %100
  %104 = and i32 %80, 786432
  %105 = icmp ne i32 %104, 0
  %106 = and i32 %80, 196608
  %107 = icmp eq i32 %106, 196608
  %108 = or i1 %105, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 90
  %111 = load i16, ptr %110, align 4, !tbaa !225
  %112 = or i16 %111, 2055
  store i16 %112, ptr %110, align 4, !tbaa !225
  %113 = and i32 %1, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = or i16 %111, 2567
  store i16 %116, ptr %110, align 4, !tbaa !225
  br label %117

117:                                              ; preds = %103, %115, %109, %100
  %118 = icmp eq ptr %2, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 16
  %121 = load float, ptr %120, align 4, !tbaa !56
  %122 = load float, ptr %2, align 4, !tbaa !72
  %123 = fmul float %121, %122
  %124 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 13
  store float %123, ptr %124, align 8, !tbaa !231
  %125 = getelementptr inbounds float, ptr %2, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !72
  %127 = fmul float %121, %126
  %128 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 15
  store float %127, ptr %128, align 8, !tbaa !232
  %129 = getelementptr inbounds float, ptr %2, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !72
  %131 = fmul float %121, %130
  %132 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 14
  store float %131, ptr %132, align 4, !tbaa !233
  br label %133

133:                                              ; preds = %119, %117
  %134 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 50
  %135 = load i16, ptr %134, align 2, !tbaa !126
  %136 = and i16 %135, 8
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !148
  %141 = icmp eq ptr %140, null
  br i1 %141, label %170, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 105
  %144 = load ptr, ptr %143, align 8, !tbaa !143
  %145 = icmp eq ptr %144, null
  br i1 %145, label %170, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.ID, ptr %144, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !234
  %149 = icmp eq ptr %148, null
  br i1 %149, label %170, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr @G, align 8, !tbaa !146
  %152 = getelementptr inbounds %struct.Main, ptr %151, i64 0, i32 32
  %153 = load ptr, ptr %152, align 8, !tbaa !128
  %154 = icmp eq ptr %153, null
  br i1 %154, label %170, label %155

155:                                              ; preds = %150, %167
  %156 = phi ptr [ %168, %167 ], [ %153, %150 ]
  %157 = getelementptr inbounds %struct.ID, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !234
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.ID, ptr %156, i64 0, i32 4
  %162 = load ptr, ptr %143, align 8, !tbaa !143
  %163 = getelementptr inbounds %struct.ID, ptr %162, i64 0, i32 4
  %164 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull dereferenceable(1) %163) #21
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store ptr %156, ptr %143, align 8, !tbaa !143
  br label %167

167:                                              ; preds = %155, %160, %166
  %168 = load ptr, ptr %156, align 8, !tbaa !128
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %155, !llvm.loop !236

170:                                              ; preds = %167, %150, %146, %142, %138, %133
  ret void
}

declare void @ntreeShaderGetTexcoMode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_render_nodetree(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #12 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 90
  %10 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 52
  %11 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 54
  br label %12

12:                                               ; preds = %8, %55
  %13 = phi ptr [ %6, %8 ], [ %56, %55 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !190
  %20 = icmp eq i16 %19, 16717
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = icmp eq ptr %15, %1
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  tail call fastcc void @do_init_render_material(ptr noundef nonnull %15, i32 noundef %2, ptr noundef %3)
  %24 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 90
  %25 = load i16, ptr %24, align 4, !tbaa !225
  %26 = load i16, ptr %9, align 4, !tbaa !225
  %27 = or i16 %26, %25
  store i16 %27, ptr %9, align 4, !tbaa !225
  br label %28

28:                                               ; preds = %23, %21
  %29 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 51
  %30 = load i32, ptr %29, align 4, !tbaa !124
  %31 = and i32 %30, -42148678
  %32 = load i32, ptr %10, align 8, !tbaa !214
  %33 = or i32 %32, %31
  store i32 %33, ptr %10, align 8, !tbaa !214
  %34 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 53
  %35 = load i32, ptr %34, align 4, !tbaa !125
  %36 = and i32 %35, -2
  %37 = load i32, ptr %11, align 8, !tbaa !215
  %38 = or i32 %37, %36
  store i32 %38, ptr %11, align 8, !tbaa !215
  %39 = and i32 %30, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = and i32 %33, -5
  store i32 %42, ptr %10, align 8, !tbaa !214
  br label %43

43:                                               ; preds = %41, %28
  %44 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 66
  %45 = load float, ptr %44, align 8, !tbaa !219
  %46 = fcmp ogt float %45, 0.000000e+00
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, ptr %10, align 8, !tbaa !214
  %49 = or i32 %48, -2147483648
  store i32 %49, ptr %10, align 8, !tbaa !214
  br label %55

50:                                               ; preds = %17
  %51 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 8
  %52 = load i16, ptr %51, align 4, !tbaa !237
  %53 = icmp eq i16 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call fastcc void @init_render_nodetree(ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %55

55:                                               ; preds = %43, %47, %12, %50, %54
  %56 = load ptr, ptr %13, align 8, !tbaa !128
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %12, !llvm.loop !238

58:                                               ; preds = %55, %4
  ret void
}

declare ptr @ntreeShaderBeginExecTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @init_render_materials(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %18, %3
  %8 = load ptr, ptr %4, align 8, !tbaa !128
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %21

10:                                               ; preds = %3, %18
  %11 = phi ptr [ %19, %18 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !149
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 90
  store i16 0, ptr %16, align 4, !tbaa !225
  %17 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 91
  store i16 0, ptr %17, align 2, !tbaa !227
  br label %18

18:                                               ; preds = %10, %15
  %19 = load ptr, ptr %11, align 8, !tbaa !128
  %20 = icmp eq ptr %19, null
  br i1 %20, label %7, label %10, !llvm.loop !239

21:                                               ; preds = %7, %30
  %22 = phi ptr [ %31, %30 ], [ %8, %7 ]
  %23 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !240
  %25 = and i16 %24, -2
  store i16 %25, ptr %23, align 2, !tbaa !240
  %26 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !149
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call void @init_render_material(ptr noundef nonnull %22, i32 noundef %1, ptr noundef %2)
  br label %30

30:                                               ; preds = %21, %29
  %31 = load ptr, ptr %22, align 8, !tbaa !128
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !241

33:                                               ; preds = %30, %7
  tail call void @init_render_material(ptr noundef nonnull @defmaterial, i32 noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @end_render_material(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %9 = load i8, ptr %8, align 1, !tbaa !195
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !216
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @ntreeShaderEndExecTree(ptr noundef nonnull %13) #20
  br label %16

16:                                               ; preds = %11, %15, %7, %3, %1
  ret void
}

declare void @ntreeShaderEndExecTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @end_render_materials(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1, %23
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !149
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 103
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 77
  %16 = load i8, ptr %15, align 1, !tbaa !195
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 27
  %20 = load ptr, ptr %19, align 8, !tbaa !216
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @ntreeShaderEndExecTree(ptr noundef nonnull %20) #20
  br label %23

23:                                               ; preds = %22, %18, %14, %10, %5
  %24 = load ptr, ptr %6, align 8, !tbaa !128
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %5, !llvm.loop !242

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @material_in_material(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %10 = load i8, ptr %9, align 1, !tbaa !195
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc zeroext i8 @material_in_nodetree(ptr noundef nonnull %6, ptr noundef %1), !range !206
  br label %14

14:                                               ; preds = %4, %8, %2, %12
  %15 = phi i8 [ %13, %12 ], [ 1, %2 ], [ 0, %8 ], [ 0, %4 ]
  ret i8 %15
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @material_in_nodetree(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !190
  %14 = icmp eq i16 %13, 16717
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, %1
  br i1 %16, label %27, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !237
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call fastcc zeroext i8 @material_in_nodetree(ptr noundef nonnull %9, ptr noundef %1), !range !206
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6, %17, %21, %15
  %25 = load ptr, ptr %7, align 8, !tbaa !128
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !243

27:                                               ; preds = %15, %21, %24, %2
  %28 = phi i8 [ 0, %2 ], [ 1, %15 ], [ 1, %21 ], [ 0, %24 ]
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define dso_local void @material_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !244
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = or disjoint i16 %5, 1024
  store i16 %9, ptr %4, align 2, !tbaa !244
  %10 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !245
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.AnimData, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !246
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, float noundef %2, i16 noundef signext 1) #20
  br label %18

18:                                               ; preds = %17, %13, %8
  %19 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %20 = load ptr, ptr %19, align 8, !tbaa !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @material_node_drivers_update(ptr noundef %0, ptr noundef nonnull %20, float noundef %2)
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i16, ptr %4, align 2, !tbaa !244
  %25 = and i16 %24, -1025
  store i16 %25, ptr %4, align 2, !tbaa !244
  br label %26

26:                                               ; preds = %3, %23
  ret void
}

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @material_node_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !248
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !246
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %2, i16 noundef signext 1) #20
  br label %12

12:                                               ; preds = %11, %7, %3
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %12, %53
  %17 = phi ptr [ %54, %53 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !190
  %24 = icmp eq i16 %23, 16717
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 5
  %27 = load i16, ptr %26, align 2, !tbaa !244
  %28 = and i16 %27, 1024
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = or disjoint i16 %27, 1024
  store i16 %31, ptr %26, align 2, !tbaa !244
  %32 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !245
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.AnimData, ptr %33, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !246
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %33, float noundef %2, i16 noundef signext 1) #20
  br label %40

40:                                               ; preds = %39, %35, %30
  %41 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 103
  %42 = load ptr, ptr %41, align 8, !tbaa !140
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @material_node_drivers_update(ptr noundef %0, ptr noundef nonnull %42, float noundef %2)
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i16, ptr %26, align 2, !tbaa !244
  %47 = and i16 %46, -1025
  store i16 %47, ptr %26, align 2, !tbaa !244
  br label %53

48:                                               ; preds = %21
  %49 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %50 = load i16, ptr %49, align 4, !tbaa !237
  %51 = icmp eq i16 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call fastcc void @material_node_drivers_update(ptr noundef %0, ptr noundef nonnull %19, float noundef %2)
  br label %53

53:                                               ; preds = %45, %25, %16, %48, %52
  %54 = load ptr, ptr %17, align 8, !tbaa !128
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %16, !llvm.loop !249

56:                                               ; preds = %53, %12
  ret void
}

declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_texpaint_slot_refresh_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #20
  %4 = tail call zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef %0) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %0) #20
  %8 = icmp ne i8 %7, 0
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i1 [ true, %2 ], [ %8, %6 ]
  %11 = icmp eq ptr %1, null
  br i1 %11, label %215, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 135
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %17(ptr noundef nonnull %14) #20
  %18 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 133
  store i16 0, ptr %18, align 8, !tbaa !250
  store ptr null, ptr %13, align 8, !tbaa !141
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !251
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %21, i64 0, i32 17, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !269
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %26, align 4, !tbaa !276
  %27 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %27, align 2, !tbaa !277
  br label %215

28:                                               ; preds = %19
  %29 = icmp eq i8 %3, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 77
  %32 = load i8, ptr %31, align 1, !tbaa !195
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %115, label %34

34:                                               ; preds = %30, %28
  %35 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %36 = load ptr, ptr %35, align 8, !tbaa !140
  %37 = icmp eq ptr %36, null
  br i1 %37, label %108, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bNodeTree, ptr %36, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !128
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %38, %60
  %43 = phi ptr [ %62, %60 ], [ %40, %38 ]
  %44 = phi i16 [ %61, %60 ], [ 0, %38 ]
  %45 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !278
  %47 = getelementptr inbounds %struct.bNodeType, ptr %46, i64 0, i32 14
  %48 = load i16, ptr %47, align 4, !tbaa !279
  %49 = icmp eq i16 %48, 13
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.bNodeType, ptr %46, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !282
  %53 = icmp eq i32 %52, 143
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 20
  %56 = load ptr, ptr %55, align 8, !tbaa !196
  %57 = icmp ne ptr %56, null
  %58 = zext i1 %57 to i16
  %59 = add i16 %44, %58
  br label %60

60:                                               ; preds = %54, %42, %50
  %61 = phi i16 [ %44, %50 ], [ %44, %42 ], [ %59, %54 ]
  %62 = load ptr, ptr %43, align 8, !tbaa !128
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %42, !llvm.loop !283

64:                                               ; preds = %60, %38
  %65 = phi i16 [ 0, %38 ], [ %61, %60 ]
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %108, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %69 = sext i16 %65 to i64
  %70 = mul nsw i64 %69, 24
  %71 = tail call ptr %68(i64 noundef %70, ptr noundef nonnull @.str.8) #20
  store ptr %71, ptr %13, align 8, !tbaa !141
  %72 = load ptr, ptr %35, align 8, !tbaa !140
  %73 = tail call ptr @nodeGetActiveTexture(ptr noundef %72) #20
  %74 = load ptr, ptr %35, align 8, !tbaa !140
  %75 = getelementptr inbounds %struct.bNodeTree, ptr %74, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !128
  %77 = icmp eq ptr %76, null
  br i1 %77, label %112, label %78

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  br label %80

80:                                               ; preds = %78, %104
  %81 = phi ptr [ %76, %78 ], [ %106, %104 ]
  %82 = phi i16 [ 0, %78 ], [ %105, %104 ]
  %83 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !278
  %85 = getelementptr inbounds %struct.bNodeType, ptr %84, i64 0, i32 14
  %86 = load i16, ptr %85, align 4, !tbaa !279
  %87 = icmp eq i16 %86, 13
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.bNodeType, ptr %84, i64 0, i32 4
  %90 = load i32, ptr %89, align 4, !tbaa !282
  %91 = icmp eq i32 %90, 143
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 20
  %94 = load ptr, ptr %93, align 8, !tbaa !196
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = icmp eq ptr %73, %81
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  store i16 %82, ptr %79, align 4, !tbaa !276
  br label %99

99:                                               ; preds = %98, %96
  %100 = load ptr, ptr %13, align 8, !tbaa !141
  %101 = add i16 %82, 1
  %102 = sext i16 %82 to i64
  %103 = getelementptr inbounds %struct.TexPaintSlot, ptr %100, i64 %102
  store ptr %94, ptr %103, align 8, !tbaa !284
  br label %104

104:                                              ; preds = %80, %88, %92, %99
  %105 = phi i16 [ %101, %99 ], [ %82, %92 ], [ %82, %88 ], [ %82, %80 ]
  %106 = load ptr, ptr %81, align 8, !tbaa !128
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %80, !llvm.loop !286

108:                                              ; preds = %64, %34
  %109 = phi i16 [ 0, %34 ], [ %65, %64 ]
  %110 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %110, align 4, !tbaa !276
  %111 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %111, align 2, !tbaa !277
  br label %112

112:                                              ; preds = %104, %108, %67
  %113 = phi i16 [ %65, %67 ], [ %109, %108 ], [ %65, %104 ]
  %114 = phi i1 [ true, %67 ], [ false, %108 ], [ true, %104 ]
  br i1 %114, label %201, label %215

115:                                              ; preds = %30
  br i1 %10, label %116, label %198

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 102
  br label %118

118:                                              ; preds = %116, %140
  %119 = phi ptr [ %117, %116 ], [ %144, %140 ]
  %120 = phi i16 [ 0, %116 ], [ %142, %140 ]
  %121 = phi i16 [ 0, %116 ], [ %143, %140 ]
  %122 = load ptr, ptr %119, align 8, !tbaa !128
  %123 = icmp eq ptr %122, null
  br i1 %123, label %140, label %124

124:                                              ; preds = %118
  %125 = load i16, ptr %122, align 8, !tbaa !224
  %126 = icmp eq i16 %125, 16
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !129
  %130 = icmp eq ptr %129, null
  br i1 %130, label %140, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.Tex, ptr %129, i64 0, i32 32
  %133 = load i16, ptr %132, align 8, !tbaa !221
  %134 = icmp eq i16 %133, 8
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.Tex, ptr %129, i64 0, i32 54
  %137 = load ptr, ptr %136, align 8, !tbaa !287
  %138 = icmp ne ptr %137, null
  %139 = zext i1 %138 to i16
  br label %140

140:                                              ; preds = %118, %124, %127, %131, %135
  %141 = phi i16 [ 0, %131 ], [ 0, %127 ], [ 0, %124 ], [ 0, %118 ], [ %139, %135 ]
  %142 = add i16 %141, %120
  %143 = add nuw nsw i16 %121, 1
  %144 = getelementptr inbounds ptr, ptr %119, i64 1
  %145 = icmp eq i16 %143, 18
  br i1 %145, label %146, label %118, !llvm.loop !288

146:                                              ; preds = %140
  %147 = icmp eq i16 %142, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %149, align 4, !tbaa !276
  %150 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %150, align 2, !tbaa !277
  br label %215

151:                                              ; preds = %146
  %152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %153 = sext i16 %142 to i64
  %154 = mul nsw i64 %153, 24
  %155 = tail call ptr %152(i64 noundef %154, ptr noundef nonnull @.str.8) #20
  store ptr %155, ptr %13, align 8, !tbaa !141
  br label %156

156:                                              ; preds = %151, %193
  %157 = phi i32 [ 0, %151 ], [ %195, %193 ]
  %158 = phi ptr [ %117, %151 ], [ %196, %193 ]
  %159 = phi i16 [ 0, %151 ], [ %194, %193 ]
  %160 = load ptr, ptr %158, align 8, !tbaa !128
  %161 = icmp eq ptr %160, null
  br i1 %161, label %178, label %162

162:                                              ; preds = %156
  %163 = load i16, ptr %160, align 8, !tbaa !224
  %164 = icmp eq i16 %163, 16
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.MTex, ptr %160, i64 0, i32 5
  %167 = load ptr, ptr %166, align 8, !tbaa !129
  %168 = icmp eq ptr %167, null
  br i1 %168, label %178, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.Tex, ptr %167, i64 0, i32 32
  %171 = load i16, ptr %170, align 8, !tbaa !221
  %172 = icmp eq i16 %171, 8
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.Tex, ptr %167, i64 0, i32 54
  %175 = load ptr, ptr %174, align 8, !tbaa !287
  %176 = icmp ne ptr %175, null
  %177 = zext i1 %176 to i8
  br label %178

178:                                              ; preds = %156, %162, %165, %169, %173
  %179 = phi i8 [ 0, %169 ], [ 0, %165 ], [ 0, %162 ], [ 0, %156 ], [ %177, %173 ]
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.MTex, ptr %160, i64 0, i32 5
  %183 = load ptr, ptr %182, align 8, !tbaa !129
  %184 = getelementptr inbounds %struct.Tex, ptr %183, i64 0, i32 54
  %185 = load ptr, ptr %184, align 8, !tbaa !287
  %186 = sext i16 %159 to i64
  %187 = getelementptr inbounds %struct.TexPaintSlot, ptr %155, i64 %186
  store ptr %185, ptr %187, align 8, !tbaa !284
  %188 = load ptr, ptr %158, align 8, !tbaa !128
  %189 = getelementptr inbounds %struct.MTex, ptr %188, i64 0, i32 6
  %190 = getelementptr inbounds %struct.TexPaintSlot, ptr %155, i64 %186, i32 1
  store ptr %189, ptr %190, align 8, !tbaa !289
  %191 = getelementptr inbounds %struct.TexPaintSlot, ptr %155, i64 %186, i32 2
  store i32 %157, ptr %191, align 8, !tbaa !290
  %192 = add i16 %159, 1
  br label %193

193:                                              ; preds = %178, %181
  %194 = phi i16 [ %192, %181 ], [ %159, %178 ]
  %195 = add nuw nsw i32 %157, 1
  %196 = getelementptr inbounds ptr, ptr %158, i64 1
  %197 = icmp eq i32 %195, 18
  br i1 %197, label %201, label %156, !llvm.loop !291

198:                                              ; preds = %115
  %199 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %199, align 4, !tbaa !276
  %200 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %200, align 2, !tbaa !277
  br label %215

201:                                              ; preds = %193, %112
  %202 = phi i16 [ %113, %112 ], [ %142, %193 ]
  %203 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 133
  store i16 %202, ptr %203, align 8, !tbaa !250
  %204 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  %205 = load i16, ptr %204, align 4, !tbaa !276
  %206 = icmp slt i16 %205, %202
  br i1 %206, label %209, label %207

207:                                              ; preds = %201
  %208 = add i16 %202, -1
  store i16 %208, ptr %204, align 4, !tbaa !276
  br label %209

209:                                              ; preds = %207, %201
  %210 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  %211 = load i16, ptr %210, align 2, !tbaa !277
  %212 = icmp slt i16 %211, %202
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = add i16 %202, -1
  store i16 %214, ptr %210, align 2, !tbaa !277
  br label %215

215:                                              ; preds = %209, %213, %9, %112, %198, %148, %25
  ret void
}

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BKE_scene_uses_blender_game(ptr noundef) local_unnamed_addr #4

declare ptr @nodeGetActiveTexture(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_texpaint_slots_refresh_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %4 = load i32, ptr %3, align 8, !tbaa !155
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ 1, %2 ]
  %8 = trunc i32 %7 to i16
  %9 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %8)
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %0, ptr noundef %9)
  %10 = add nuw nsw i32 %7, 1
  %11 = load i32, ptr %3, align 8, !tbaa !155
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %6, label %13, !llvm.loop !292

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ramp_blend(i32 noundef %0, ptr noundef %1, float noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = fsub float 1.000000e+00, %2
  switch i32 %0, label %532 [
    i32 0, label %36
    i32 1, label %53
    i32 2, label %67
    i32 4, label %84
    i32 9, label %110
    i32 3, label %158
    i32 5, label %173
    i32 6, label %201
    i32 7, label %224
    i32 8, label %247
    i32 10, label %269
    i32 11, label %315
    i32 12, label %363
    i32 13, label %393
    i32 14, label %414
    i32 15, label %431
    i32 16, label %461
    i32 17, label %501
  ]

36:                                               ; preds = %4
  %37 = load float, ptr %1, align 4, !tbaa !72
  %38 = load float, ptr %3, align 4, !tbaa !72
  %39 = fmul float %38, %2
  %40 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %39)
  store float %40, ptr %1, align 4, !tbaa !72
  %41 = getelementptr inbounds float, ptr %1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !72
  %43 = getelementptr inbounds float, ptr %3, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !72
  %45 = fmul float %44, %2
  %46 = tail call float @llvm.fmuladd.f32(float %35, float %42, float %45)
  store float %46, ptr %41, align 4, !tbaa !72
  %47 = getelementptr inbounds float, ptr %1, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !72
  %49 = getelementptr inbounds float, ptr %3, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !72
  %51 = fmul float %50, %2
  %52 = tail call float @llvm.fmuladd.f32(float %35, float %48, float %51)
  store float %52, ptr %47, align 4, !tbaa !72
  br label %532

53:                                               ; preds = %4
  %54 = load float, ptr %3, align 4, !tbaa !72
  %55 = load float, ptr %1, align 4, !tbaa !72
  %56 = tail call float @llvm.fmuladd.f32(float %2, float %54, float %55)
  store float %56, ptr %1, align 4, !tbaa !72
  %57 = getelementptr inbounds float, ptr %3, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !72
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !72
  %61 = tail call float @llvm.fmuladd.f32(float %2, float %58, float %60)
  store float %61, ptr %59, align 4, !tbaa !72
  %62 = getelementptr inbounds float, ptr %3, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !72
  %64 = getelementptr inbounds float, ptr %1, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !72
  %66 = tail call float @llvm.fmuladd.f32(float %2, float %63, float %65)
  store float %66, ptr %64, align 4, !tbaa !72
  br label %532

67:                                               ; preds = %4
  %68 = load float, ptr %3, align 4, !tbaa !72
  %69 = tail call float @llvm.fmuladd.f32(float %2, float %68, float %35)
  %70 = load float, ptr %1, align 4, !tbaa !72
  %71 = fmul float %70, %69
  store float %71, ptr %1, align 4, !tbaa !72
  %72 = getelementptr inbounds float, ptr %3, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !72
  %74 = tail call float @llvm.fmuladd.f32(float %2, float %73, float %35)
  %75 = getelementptr inbounds float, ptr %1, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !72
  %77 = fmul float %76, %74
  store float %77, ptr %75, align 4, !tbaa !72
  %78 = getelementptr inbounds float, ptr %3, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !72
  %80 = tail call float @llvm.fmuladd.f32(float %2, float %79, float %35)
  %81 = getelementptr inbounds float, ptr %1, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !72
  %83 = fmul float %82, %80
  store float %83, ptr %81, align 4, !tbaa !72
  br label %532

84:                                               ; preds = %4
  %85 = load float, ptr %3, align 4, !tbaa !72
  %86 = fsub float 1.000000e+00, %85
  %87 = tail call float @llvm.fmuladd.f32(float %2, float %86, float %35)
  %88 = load float, ptr %1, align 4, !tbaa !72
  %89 = fsub float 1.000000e+00, %88
  %90 = fneg float %87
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %89, float 1.000000e+00)
  store float %91, ptr %1, align 4, !tbaa !72
  %92 = getelementptr inbounds float, ptr %3, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !72
  %94 = fsub float 1.000000e+00, %93
  %95 = tail call float @llvm.fmuladd.f32(float %2, float %94, float %35)
  %96 = getelementptr inbounds float, ptr %1, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !72
  %98 = fsub float 1.000000e+00, %97
  %99 = fneg float %95
  %100 = tail call float @llvm.fmuladd.f32(float %99, float %98, float 1.000000e+00)
  store float %100, ptr %96, align 4, !tbaa !72
  %101 = getelementptr inbounds float, ptr %3, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !72
  %103 = fsub float 1.000000e+00, %102
  %104 = tail call float @llvm.fmuladd.f32(float %2, float %103, float %35)
  %105 = getelementptr inbounds float, ptr %1, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !72
  %107 = fsub float 1.000000e+00, %106
  %108 = fneg float %104
  %109 = tail call float @llvm.fmuladd.f32(float %108, float %107, float 1.000000e+00)
  store float %109, ptr %105, align 4, !tbaa !72
  br label %532

110:                                              ; preds = %4
  %111 = load float, ptr %1, align 4, !tbaa !72
  %112 = fcmp olt float %111, 5.000000e-01
  %113 = fmul float %2, 2.000000e+00
  %114 = load float, ptr %3, align 4, !tbaa !72
  br i1 %112, label %115, label %118

115:                                              ; preds = %110
  %116 = tail call float @llvm.fmuladd.f32(float %113, float %114, float %35)
  %117 = fmul float %111, %116
  br label %124

118:                                              ; preds = %110
  %119 = fsub float 1.000000e+00, %114
  %120 = tail call float @llvm.fmuladd.f32(float %113, float %119, float %35)
  %121 = fsub float 1.000000e+00, %111
  %122 = fneg float %120
  %123 = tail call float @llvm.fmuladd.f32(float %122, float %121, float 1.000000e+00)
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi float [ %123, %118 ], [ %117, %115 ]
  store float %125, ptr %1, align 4, !tbaa !72
  %126 = getelementptr inbounds float, ptr %1, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !72
  %128 = fcmp olt float %127, 5.000000e-01
  %129 = fmul float %2, 2.000000e+00
  %130 = getelementptr inbounds float, ptr %3, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !72
  br i1 %128, label %132, label %135

132:                                              ; preds = %124
  %133 = tail call float @llvm.fmuladd.f32(float %129, float %131, float %35)
  %134 = fmul float %127, %133
  br label %141

135:                                              ; preds = %124
  %136 = fsub float 1.000000e+00, %131
  %137 = tail call float @llvm.fmuladd.f32(float %129, float %136, float %35)
  %138 = fsub float 1.000000e+00, %127
  %139 = fneg float %137
  %140 = tail call float @llvm.fmuladd.f32(float %139, float %138, float 1.000000e+00)
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi float [ %140, %135 ], [ %134, %132 ]
  store float %142, ptr %126, align 4, !tbaa !72
  %143 = getelementptr inbounds float, ptr %1, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !72
  %145 = fcmp olt float %144, 5.000000e-01
  %146 = fmul float %2, 2.000000e+00
  %147 = getelementptr inbounds float, ptr %3, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !72
  br i1 %145, label %149, label %152

149:                                              ; preds = %141
  %150 = tail call float @llvm.fmuladd.f32(float %146, float %148, float %35)
  %151 = fmul float %144, %150
  store float %151, ptr %143, align 4, !tbaa !72
  br label %532

152:                                              ; preds = %141
  %153 = fsub float 1.000000e+00, %148
  %154 = tail call float @llvm.fmuladd.f32(float %146, float %153, float %35)
  %155 = fsub float 1.000000e+00, %144
  %156 = fneg float %154
  %157 = tail call float @llvm.fmuladd.f32(float %156, float %155, float 1.000000e+00)
  store float %157, ptr %143, align 4, !tbaa !72
  br label %532

158:                                              ; preds = %4
  %159 = load float, ptr %3, align 4, !tbaa !72
  %160 = load float, ptr %1, align 4, !tbaa !72
  %161 = fneg float %2
  %162 = tail call float @llvm.fmuladd.f32(float %161, float %159, float %160)
  store float %162, ptr %1, align 4, !tbaa !72
  %163 = getelementptr inbounds float, ptr %3, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !72
  %165 = getelementptr inbounds float, ptr %1, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !72
  %167 = tail call float @llvm.fmuladd.f32(float %161, float %164, float %166)
  store float %167, ptr %165, align 4, !tbaa !72
  %168 = getelementptr inbounds float, ptr %3, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !72
  %170 = getelementptr inbounds float, ptr %1, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !72
  %172 = tail call float @llvm.fmuladd.f32(float %161, float %169, float %171)
  store float %172, ptr %170, align 4, !tbaa !72
  br label %532

173:                                              ; preds = %4
  %174 = load float, ptr %3, align 4, !tbaa !72
  %175 = fcmp une float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load float, ptr %1, align 4, !tbaa !72
  %178 = fmul float %177, %2
  %179 = fdiv float %178, %174
  %180 = tail call float @llvm.fmuladd.f32(float %35, float %177, float %179)
  store float %180, ptr %1, align 4, !tbaa !72
  br label %181

181:                                              ; preds = %176, %173
  %182 = getelementptr inbounds float, ptr %3, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !72
  %184 = fcmp une float %183, 0.000000e+00
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = getelementptr inbounds float, ptr %1, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !72
  %188 = fmul float %187, %2
  %189 = fdiv float %188, %183
  %190 = tail call float @llvm.fmuladd.f32(float %35, float %187, float %189)
  store float %190, ptr %186, align 4, !tbaa !72
  br label %191

191:                                              ; preds = %185, %181
  %192 = getelementptr inbounds float, ptr %3, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !72
  %194 = fcmp une float %193, 0.000000e+00
  br i1 %194, label %195, label %532

195:                                              ; preds = %191
  %196 = getelementptr inbounds float, ptr %1, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !72
  %198 = fmul float %197, %2
  %199 = fdiv float %198, %193
  %200 = tail call float @llvm.fmuladd.f32(float %35, float %197, float %199)
  store float %200, ptr %196, align 4, !tbaa !72
  br label %532

201:                                              ; preds = %4
  %202 = load float, ptr %1, align 4, !tbaa !72
  %203 = load float, ptr %3, align 4, !tbaa !72
  %204 = fsub float %202, %203
  %205 = tail call float @llvm.fabs.f32(float %204)
  %206 = fmul float %205, %2
  %207 = tail call float @llvm.fmuladd.f32(float %35, float %202, float %206)
  store float %207, ptr %1, align 4, !tbaa !72
  %208 = getelementptr inbounds float, ptr %1, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !72
  %210 = getelementptr inbounds float, ptr %3, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !72
  %212 = fsub float %209, %211
  %213 = tail call float @llvm.fabs.f32(float %212)
  %214 = fmul float %213, %2
  %215 = tail call float @llvm.fmuladd.f32(float %35, float %209, float %214)
  store float %215, ptr %208, align 4, !tbaa !72
  %216 = getelementptr inbounds float, ptr %1, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !72
  %218 = getelementptr inbounds float, ptr %3, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !72
  %220 = fsub float %217, %219
  %221 = tail call float @llvm.fabs.f32(float %220)
  %222 = fmul float %221, %2
  %223 = tail call float @llvm.fmuladd.f32(float %35, float %217, float %222)
  store float %223, ptr %216, align 4, !tbaa !72
  br label %532

224:                                              ; preds = %4
  %225 = load float, ptr %1, align 4, !tbaa !72
  %226 = load float, ptr %3, align 4, !tbaa !72
  %227 = fcmp olt float %225, %226
  %228 = select i1 %227, float %225, float %226
  %229 = fmul float %35, %225
  %230 = tail call float @llvm.fmuladd.f32(float %228, float %2, float %229)
  store float %230, ptr %1, align 4, !tbaa !72
  %231 = getelementptr inbounds float, ptr %1, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !72
  %233 = getelementptr inbounds float, ptr %3, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !72
  %235 = fcmp olt float %232, %234
  %236 = select i1 %235, float %232, float %234
  %237 = fmul float %35, %232
  %238 = tail call float @llvm.fmuladd.f32(float %236, float %2, float %237)
  store float %238, ptr %231, align 4, !tbaa !72
  %239 = getelementptr inbounds float, ptr %1, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !72
  %241 = getelementptr inbounds float, ptr %3, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !72
  %243 = fcmp olt float %240, %242
  %244 = select i1 %243, float %240, float %242
  %245 = fmul float %35, %240
  %246 = tail call float @llvm.fmuladd.f32(float %244, float %2, float %245)
  store float %246, ptr %239, align 4, !tbaa !72
  br label %532

247:                                              ; preds = %4
  %248 = load float, ptr %3, align 4, !tbaa !72
  %249 = fmul float %248, %2
  %250 = load float, ptr %1, align 4, !tbaa !72
  %251 = fcmp ogt float %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  store float %249, ptr %1, align 4, !tbaa !72
  br label %253

253:                                              ; preds = %252, %247
  %254 = getelementptr inbounds float, ptr %3, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !72
  %256 = fmul float %255, %2
  %257 = getelementptr inbounds float, ptr %1, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !72
  %259 = fcmp ogt float %256, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  store float %256, ptr %257, align 4, !tbaa !72
  br label %261

261:                                              ; preds = %260, %253
  %262 = getelementptr inbounds float, ptr %3, i64 2
  %263 = load float, ptr %262, align 4, !tbaa !72
  %264 = fmul float %263, %2
  %265 = getelementptr inbounds float, ptr %1, i64 2
  %266 = load float, ptr %265, align 4, !tbaa !72
  %267 = fcmp ogt float %264, %266
  br i1 %267, label %268, label %532

268:                                              ; preds = %261
  store float %264, ptr %265, align 4, !tbaa !72
  br label %532

269:                                              ; preds = %4
  %270 = load float, ptr %1, align 4, !tbaa !72
  %271 = fcmp une float %270, 0.000000e+00
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load float, ptr %3, align 4, !tbaa !72
  %274 = fneg float %2
  %275 = tail call float @llvm.fmuladd.f32(float %274, float %273, float 1.000000e+00)
  %276 = fcmp ugt float %275, 0.000000e+00
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = fdiv float %270, %275
  %279 = fcmp ogt float %278, 1.000000e+00
  %280 = select i1 %279, float 1.000000e+00, float %278
  br label %281

281:                                              ; preds = %277, %272
  %282 = phi float [ 1.000000e+00, %272 ], [ %280, %277 ]
  store float %282, ptr %1, align 4, !tbaa !72
  br label %283

283:                                              ; preds = %281, %269
  %284 = getelementptr inbounds float, ptr %1, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !72
  %286 = fcmp une float %285, 0.000000e+00
  br i1 %286, label %287, label %299

287:                                              ; preds = %283
  %288 = getelementptr inbounds float, ptr %3, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !72
  %290 = fneg float %2
  %291 = tail call float @llvm.fmuladd.f32(float %290, float %289, float 1.000000e+00)
  %292 = fcmp ugt float %291, 0.000000e+00
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = fdiv float %285, %291
  %295 = fcmp ogt float %294, 1.000000e+00
  %296 = select i1 %295, float 1.000000e+00, float %294
  br label %297

297:                                              ; preds = %293, %287
  %298 = phi float [ 1.000000e+00, %287 ], [ %296, %293 ]
  store float %298, ptr %284, align 4, !tbaa !72
  br label %299

299:                                              ; preds = %297, %283
  %300 = getelementptr inbounds float, ptr %1, i64 2
  %301 = load float, ptr %300, align 4, !tbaa !72
  %302 = fcmp une float %301, 0.000000e+00
  br i1 %302, label %303, label %532

303:                                              ; preds = %299
  %304 = getelementptr inbounds float, ptr %3, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !72
  %306 = fneg float %2
  %307 = tail call float @llvm.fmuladd.f32(float %306, float %305, float 1.000000e+00)
  %308 = fcmp ugt float %307, 0.000000e+00
  br i1 %308, label %310, label %309

309:                                              ; preds = %303
  store float 1.000000e+00, ptr %300, align 4, !tbaa !72
  br label %532

310:                                              ; preds = %303
  %311 = fdiv float %301, %307
  %312 = fcmp ogt float %311, 1.000000e+00
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store float 1.000000e+00, ptr %300, align 4, !tbaa !72
  br label %532

314:                                              ; preds = %310
  store float %311, ptr %300, align 4, !tbaa !72
  br label %532

315:                                              ; preds = %4
  %316 = load float, ptr %3, align 4, !tbaa !72
  %317 = tail call float @llvm.fmuladd.f32(float %2, float %316, float %35)
  %318 = fcmp ugt float %317, 0.000000e+00
  br i1 %318, label %319, label %328

319:                                              ; preds = %315
  %320 = load float, ptr %1, align 4, !tbaa !72
  %321 = fsub float 1.000000e+00, %320
  %322 = fdiv float %321, %317
  %323 = fsub float 1.000000e+00, %322
  %324 = fcmp olt float %323, 0.000000e+00
  br i1 %324, label %328, label %325

325:                                              ; preds = %319
  %326 = fcmp ogt float %323, 1.000000e+00
  %327 = select i1 %326, float 1.000000e+00, float %323
  br label %328

328:                                              ; preds = %325, %319, %315
  %329 = phi float [ 0.000000e+00, %315 ], [ 0.000000e+00, %319 ], [ %327, %325 ]
  store float %329, ptr %1, align 4, !tbaa !72
  %330 = getelementptr inbounds float, ptr %3, i64 1
  %331 = load float, ptr %330, align 4, !tbaa !72
  %332 = tail call float @llvm.fmuladd.f32(float %2, float %331, float %35)
  %333 = fcmp ugt float %332, 0.000000e+00
  %334 = getelementptr inbounds float, ptr %1, i64 1
  br i1 %333, label %335, label %344

335:                                              ; preds = %328
  %336 = load float, ptr %334, align 4, !tbaa !72
  %337 = fsub float 1.000000e+00, %336
  %338 = fdiv float %337, %332
  %339 = fsub float 1.000000e+00, %338
  %340 = fcmp olt float %339, 0.000000e+00
  br i1 %340, label %344, label %341

341:                                              ; preds = %335
  %342 = fcmp ogt float %339, 1.000000e+00
  %343 = select i1 %342, float 1.000000e+00, float %339
  br label %344

344:                                              ; preds = %341, %335, %328
  %345 = phi float [ 0.000000e+00, %328 ], [ 0.000000e+00, %335 ], [ %343, %341 ]
  store float %345, ptr %334, align 4, !tbaa !72
  %346 = getelementptr inbounds float, ptr %3, i64 2
  %347 = load float, ptr %346, align 4, !tbaa !72
  %348 = tail call float @llvm.fmuladd.f32(float %2, float %347, float %35)
  %349 = fcmp ugt float %348, 0.000000e+00
  %350 = getelementptr inbounds float, ptr %1, i64 2
  br i1 %349, label %352, label %351

351:                                              ; preds = %344
  store float 0.000000e+00, ptr %350, align 4, !tbaa !72
  br label %532

352:                                              ; preds = %344
  %353 = load float, ptr %350, align 4, !tbaa !72
  %354 = fsub float 1.000000e+00, %353
  %355 = fdiv float %354, %348
  %356 = fsub float 1.000000e+00, %355
  %357 = fcmp olt float %356, 0.000000e+00
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  store float 0.000000e+00, ptr %350, align 4, !tbaa !72
  br label %532

359:                                              ; preds = %352
  %360 = fcmp ogt float %356, 1.000000e+00
  br i1 %360, label %361, label %362

361:                                              ; preds = %359
  store float 1.000000e+00, ptr %350, align 4, !tbaa !72
  br label %532

362:                                              ; preds = %359
  store float %356, ptr %350, align 4, !tbaa !72
  br label %532

363:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #20
  %364 = load float, ptr %3, align 4, !tbaa !72
  %365 = getelementptr inbounds float, ptr %3, i64 1
  %366 = load float, ptr %365, align 4, !tbaa !72
  %367 = getelementptr inbounds float, ptr %3, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %364, float noundef %366, float noundef %368, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %369 = load float, ptr %9, align 4, !tbaa !72
  %370 = fcmp une float %369, 0.000000e+00
  br i1 %370, label %371, label %392

371:                                              ; preds = %363
  %372 = load float, ptr %1, align 4, !tbaa !72
  %373 = getelementptr inbounds float, ptr %1, i64 1
  %374 = load float, ptr %373, align 4, !tbaa !72
  %375 = getelementptr inbounds float, ptr %1, i64 2
  %376 = load float, ptr %375, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %372, float noundef %374, float noundef %376, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %377 = load float, ptr %8, align 4, !tbaa !72
  %378 = load float, ptr %6, align 4, !tbaa !72
  %379 = load float, ptr %7, align 4, !tbaa !72
  call void @hsv_to_rgb(float noundef %377, float noundef %378, float noundef %379, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #20
  %380 = load float, ptr %1, align 4, !tbaa !72
  %381 = load float, ptr %11, align 4, !tbaa !72
  %382 = fmul float %381, %2
  %383 = call float @llvm.fmuladd.f32(float %35, float %380, float %382)
  store float %383, ptr %1, align 4, !tbaa !72
  %384 = load float, ptr %373, align 4, !tbaa !72
  %385 = load float, ptr %12, align 4, !tbaa !72
  %386 = fmul float %385, %2
  %387 = call float @llvm.fmuladd.f32(float %35, float %384, float %386)
  store float %387, ptr %373, align 4, !tbaa !72
  %388 = load float, ptr %375, align 4, !tbaa !72
  %389 = load float, ptr %13, align 4, !tbaa !72
  %390 = fmul float %389, %2
  %391 = call float @llvm.fmuladd.f32(float %35, float %388, float %390)
  store float %391, ptr %375, align 4, !tbaa !72
  br label %392

392:                                              ; preds = %371, %363
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %532

393:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #20
  %394 = load float, ptr %1, align 4, !tbaa !72
  %395 = getelementptr inbounds float, ptr %1, i64 1
  %396 = load float, ptr %395, align 4, !tbaa !72
  %397 = getelementptr inbounds float, ptr %1, i64 2
  %398 = load float, ptr %397, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %394, float noundef %396, float noundef %398, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #20
  %399 = load float, ptr %15, align 4, !tbaa !72
  %400 = fcmp une float %399, 0.000000e+00
  br i1 %400, label %401, label %413

401:                                              ; preds = %393
  %402 = load float, ptr %3, align 4, !tbaa !72
  %403 = getelementptr inbounds float, ptr %3, i64 1
  %404 = load float, ptr %403, align 4, !tbaa !72
  %405 = getelementptr inbounds float, ptr %3, i64 2
  %406 = load float, ptr %405, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %402, float noundef %404, float noundef %406, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #20
  %407 = load float, ptr %14, align 4, !tbaa !72
  %408 = load float, ptr %15, align 4, !tbaa !72
  %409 = load float, ptr %18, align 4, !tbaa !72
  %410 = fmul float %409, %2
  %411 = call float @llvm.fmuladd.f32(float %35, float %408, float %410)
  %412 = load float, ptr %16, align 4, !tbaa !72
  call void @hsv_to_rgb(float noundef %407, float noundef %411, float noundef %412, ptr noundef nonnull %1, ptr noundef nonnull %395, ptr noundef nonnull %397) #20
  br label %413

413:                                              ; preds = %401, %393
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #20
  br label %532

414:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #20
  %415 = load float, ptr %1, align 4, !tbaa !72
  %416 = getelementptr inbounds float, ptr %1, i64 1
  %417 = load float, ptr %416, align 4, !tbaa !72
  %418 = getelementptr inbounds float, ptr %1, i64 2
  %419 = load float, ptr %418, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %415, float noundef %417, float noundef %419, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #20
  %420 = load float, ptr %3, align 4, !tbaa !72
  %421 = getelementptr inbounds float, ptr %3, i64 1
  %422 = load float, ptr %421, align 4, !tbaa !72
  %423 = getelementptr inbounds float, ptr %3, i64 2
  %424 = load float, ptr %423, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %420, float noundef %422, float noundef %424, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #20
  %425 = load float, ptr %20, align 4, !tbaa !72
  %426 = load float, ptr %21, align 4, !tbaa !72
  %427 = load float, ptr %22, align 4, !tbaa !72
  %428 = load float, ptr %25, align 4, !tbaa !72
  %429 = fmul float %428, %2
  %430 = call float @llvm.fmuladd.f32(float %35, float %427, float %429)
  call void @hsv_to_rgb(float noundef %425, float noundef %426, float noundef %430, ptr noundef nonnull %1, ptr noundef nonnull %416, ptr noundef nonnull %418) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #20
  br label %532

431:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #20
  %432 = load float, ptr %3, align 4, !tbaa !72
  %433 = getelementptr inbounds float, ptr %3, i64 1
  %434 = load float, ptr %433, align 4, !tbaa !72
  %435 = getelementptr inbounds float, ptr %3, i64 2
  %436 = load float, ptr %435, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %432, float noundef %434, float noundef %436, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31) #20
  %437 = load float, ptr %30, align 4, !tbaa !72
  %438 = fcmp une float %437, 0.000000e+00
  br i1 %438, label %439, label %460

439:                                              ; preds = %431
  %440 = load float, ptr %1, align 4, !tbaa !72
  %441 = getelementptr inbounds float, ptr %1, i64 1
  %442 = load float, ptr %441, align 4, !tbaa !72
  %443 = getelementptr inbounds float, ptr %1, i64 2
  %444 = load float, ptr %443, align 4, !tbaa !72
  call void @rgb_to_hsv(float noundef %440, float noundef %442, float noundef %444, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #20
  %445 = load float, ptr %29, align 4, !tbaa !72
  %446 = load float, ptr %30, align 4, !tbaa !72
  %447 = load float, ptr %28, align 4, !tbaa !72
  call void @hsv_to_rgb(float noundef %445, float noundef %446, float noundef %447, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34) #20
  %448 = load float, ptr %1, align 4, !tbaa !72
  %449 = load float, ptr %32, align 4, !tbaa !72
  %450 = fmul float %449, %2
  %451 = call float @llvm.fmuladd.f32(float %35, float %448, float %450)
  store float %451, ptr %1, align 4, !tbaa !72
  %452 = load float, ptr %441, align 4, !tbaa !72
  %453 = load float, ptr %33, align 4, !tbaa !72
  %454 = fmul float %453, %2
  %455 = call float @llvm.fmuladd.f32(float %35, float %452, float %454)
  store float %455, ptr %441, align 4, !tbaa !72
  %456 = load float, ptr %443, align 4, !tbaa !72
  %457 = load float, ptr %34, align 4, !tbaa !72
  %458 = fmul float %457, %2
  %459 = call float @llvm.fmuladd.f32(float %35, float %456, float %458)
  store float %459, ptr %443, align 4, !tbaa !72
  br label %460

460:                                              ; preds = %439, %431
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #20
  br label %532

461:                                              ; preds = %4
  %462 = load float, ptr %3, align 4, !tbaa !72
  %463 = fsub float 1.000000e+00, %462
  %464 = load float, ptr %1, align 4, !tbaa !72
  %465 = fsub float 1.000000e+00, %464
  %466 = fneg float %463
  %467 = tail call float @llvm.fmuladd.f32(float %466, float %465, float 1.000000e+00)
  %468 = getelementptr inbounds float, ptr %3, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !72
  %470 = fsub float 1.000000e+00, %469
  %471 = getelementptr inbounds float, ptr %1, i64 1
  %472 = load float, ptr %471, align 4, !tbaa !72
  %473 = fsub float 1.000000e+00, %472
  %474 = fneg float %470
  %475 = tail call float @llvm.fmuladd.f32(float %474, float %473, float 1.000000e+00)
  %476 = getelementptr inbounds float, ptr %3, i64 2
  %477 = load float, ptr %476, align 4, !tbaa !72
  %478 = fsub float 1.000000e+00, %477
  %479 = getelementptr inbounds float, ptr %1, i64 2
  %480 = load float, ptr %479, align 4, !tbaa !72
  %481 = fsub float 1.000000e+00, %480
  %482 = fneg float %478
  %483 = tail call float @llvm.fmuladd.f32(float %482, float %481, float 1.000000e+00)
  %484 = fmul float %462, %465
  %485 = fmul float %464, %467
  %486 = tail call float @llvm.fmuladd.f32(float %484, float %464, float %485)
  %487 = fmul float %486, %2
  %488 = tail call float @llvm.fmuladd.f32(float %35, float %464, float %487)
  store float %488, ptr %1, align 4, !tbaa !72
  %489 = load float, ptr %468, align 4, !tbaa !72
  %490 = fmul float %473, %489
  %491 = fmul float %472, %475
  %492 = tail call float @llvm.fmuladd.f32(float %490, float %472, float %491)
  %493 = fmul float %492, %2
  %494 = tail call float @llvm.fmuladd.f32(float %35, float %472, float %493)
  store float %494, ptr %471, align 4, !tbaa !72
  %495 = load float, ptr %476, align 4, !tbaa !72
  %496 = fmul float %481, %495
  %497 = fmul float %480, %483
  %498 = tail call float @llvm.fmuladd.f32(float %496, float %480, float %497)
  %499 = fmul float %498, %2
  %500 = tail call float @llvm.fmuladd.f32(float %35, float %480, float %499)
  store float %500, ptr %479, align 4, !tbaa !72
  br label %532

501:                                              ; preds = %4
  %502 = load float, ptr %3, align 4, !tbaa !72
  %503 = fcmp ogt float %502, 5.000000e-01
  %504 = load float, ptr %1, align 4, !tbaa !72
  %505 = tail call float @llvm.fmuladd.f32(float %502, float 2.000000e+00, float -1.000000e+00)
  %506 = fadd float %502, -5.000000e-01
  %507 = fmul float %506, 2.000000e+00
  %508 = select i1 %503, float %507, float %505
  %509 = tail call float @llvm.fmuladd.f32(float %2, float %508, float %504)
  store float %509, ptr %1, align 4, !tbaa !72
  %510 = getelementptr inbounds float, ptr %3, i64 1
  %511 = load float, ptr %510, align 4, !tbaa !72
  %512 = fcmp ogt float %511, 5.000000e-01
  %513 = getelementptr inbounds float, ptr %1, i64 1
  %514 = load float, ptr %513, align 4, !tbaa !72
  %515 = tail call float @llvm.fmuladd.f32(float %511, float 2.000000e+00, float -1.000000e+00)
  %516 = fadd float %511, -5.000000e-01
  %517 = fmul float %516, 2.000000e+00
  %518 = select i1 %512, float %517, float %515
  %519 = tail call float @llvm.fmuladd.f32(float %2, float %518, float %514)
  store float %519, ptr %513, align 4, !tbaa !72
  %520 = getelementptr inbounds float, ptr %3, i64 2
  %521 = load float, ptr %520, align 4, !tbaa !72
  %522 = fcmp ogt float %521, 5.000000e-01
  %523 = getelementptr inbounds float, ptr %1, i64 2
  %524 = load float, ptr %523, align 4, !tbaa !72
  br i1 %522, label %525, label %529

525:                                              ; preds = %501
  %526 = fadd float %521, -5.000000e-01
  %527 = fmul float %526, 2.000000e+00
  %528 = tail call float @llvm.fmuladd.f32(float %2, float %527, float %524)
  store float %528, ptr %523, align 4, !tbaa !72
  br label %532

529:                                              ; preds = %501
  %530 = tail call float @llvm.fmuladd.f32(float %521, float 2.000000e+00, float -1.000000e+00)
  %531 = tail call float @llvm.fmuladd.f32(float %2, float %530, float %524)
  store float %531, ptr %523, align 4, !tbaa !72
  br label %532

532:                                              ; preds = %525, %529, %351, %361, %362, %358, %299, %313, %314, %309, %261, %268, %191, %195, %149, %152, %4, %461, %460, %414, %413, %392, %224, %201, %158, %84, %67, %53, %36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @clear_matcopybuf() local_unnamed_addr #15 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) @matcopybuf, i8 0, i64 944, i1 false)
  store i1 false, ptr @matcopied, align 2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define dso_local void @free_matcopybuf() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %8
  %2 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %3 = getelementptr inbounds %struct.Material, ptr @matcopybuf, i64 0, i32 102, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %7(ptr noundef nonnull %4) #20
  store ptr null, ptr %3, align 8, !tbaa !128
  br label %8

8:                                                ; preds = %1, %6
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 18
  br i1 %10, label %11, label %1, !llvm.loop !293

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %15(ptr noundef nonnull %12) #20
  br label %16

16:                                               ; preds = %14, %11
  %17 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !138
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %20(ptr noundef nonnull %17) #20
  br label %21

21:                                               ; preds = %19, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), i8 0, i64 16, i1 false)
  %22 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %22, i8 noundef zeroext 0) #20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %26 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  tail call void %25(ptr noundef %26) #20
  store ptr null, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  br label %27

27:                                               ; preds = %24, %21
  store i1 false, ptr @matcopied, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_matcopybuf(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i1, ptr @matcopied, align 2
  br i1 %2, label %3, label %30

3:                                                ; preds = %1, %10
  %4 = phi i64 [ %11, %10 ], [ 0, %1 ]
  %5 = getelementptr inbounds %struct.Material, ptr @matcopybuf, i64 0, i32 102, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %9(ptr noundef nonnull %6) #20
  store ptr null, ptr %5, align 8, !tbaa !128
  br label %10

10:                                               ; preds = %8, %3
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 18
  br i1 %12, label %13, label %3, !llvm.loop !293

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %17(ptr noundef nonnull %14) #20
  br label %18

18:                                               ; preds = %16, %13
  %19 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !138
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %22(ptr noundef nonnull %19) #20
  br label %23

23:                                               ; preds = %21, %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), i8 0, i64 16, i1 false)
  %24 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %24, i8 noundef zeroext 0) #20
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %28 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  tail call void %27(ptr noundef %28) #20
  store ptr null, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  br label %29

29:                                               ; preds = %23, %26
  store i1 false, ptr @matcopied, align 2
  br label %30

30:                                               ; preds = %29, %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) @matcopybuf, ptr noundef nonnull align 8 dereferenceable(944) %0, i64 944, i1 false)
  %31 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !137
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %35 = tail call ptr %34(ptr noundef nonnull %31) #20
  store ptr %35, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !137
  br label %36

36:                                               ; preds = %33, %30
  %37 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !138
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %41 = tail call ptr %40(ptr noundef nonnull %37) #20
  store ptr %41, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !138
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %51
  %44 = phi i64 [ %52, %51 ], [ 0, %42 ]
  %45 = getelementptr inbounds %struct.Material, ptr @matcopybuf, i64 0, i32 102, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !128
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %50 = tail call ptr %49(ptr noundef nonnull %46) #20
  store ptr %50, ptr %45, align 8, !tbaa !128
  br label %51

51:                                               ; preds = %43, %48
  %52 = add nuw nsw i64 %44, 1
  %53 = icmp eq i64 %52, 18
  br i1 %53, label %54, label %43, !llvm.loop !294

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %56 = load ptr, ptr %55, align 8, !tbaa !140
  %57 = load ptr, ptr @G, align 8, !tbaa !146
  %58 = tail call ptr @ntreeCopyTree_ex(ptr noundef %56, ptr noundef %57, i8 noundef zeroext 0) #20
  store ptr %58, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  store ptr null, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 106), align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 136), i8 0, i64 16, i1 false)
  store i1 true, ptr @matcopied, align 2
  ret void
}

declare ptr @ntreeCopyTree_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @paste_matcopybuf(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ID, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2)
  %3 = load i1, ptr @matcopied, align 2
  br i1 %3, label %4, label %83

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %9(ptr noundef nonnull %6) #20
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %15(ptr noundef nonnull %12) #20
  br label %16

16:                                               ; preds = %14, %10
  br label %17

17:                                               ; preds = %16, %32
  %18 = phi i64 [ %33, %32 ], [ 0, %16 ]
  %19 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !131
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !131
  br label %30

30:                                               ; preds = %22, %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %31(ptr noundef nonnull %20) #20
  br label %32

32:                                               ; preds = %17, %30
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, 18
  br i1 %34, label %35, label %17, !llvm.loop !295

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %37 = load ptr, ptr %36, align 8, !tbaa !140
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  tail call void @ntreeFreeTree(ptr noundef nonnull %37) #20
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  %41 = load ptr, ptr %36, align 8, !tbaa !140
  tail call void %40(ptr noundef %41) #20
  br label %42

42:                                               ; preds = %39, %35
  tail call void @GPU_material_free(ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 120, i1 false), !tbaa.struct !296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef nonnull align 8 dereferenceable(944) @matcopybuf, i64 944, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !tbaa.struct !296
  %43 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !137
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %47 = tail call ptr %46(ptr noundef nonnull %43) #20
  store ptr %47, ptr %5, align 8, !tbaa !137
  br label %48

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !138
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %53 = tail call ptr %52(ptr noundef nonnull %49) #20
  store ptr %53, ptr %11, align 8, !tbaa !138
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %76
  %56 = phi i64 [ %77, %76 ], [ 0, %54 ]
  %57 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !128
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !128
  %62 = tail call ptr %61(ptr noundef nonnull %58) #20
  store ptr %62, ptr %57, align 8, !tbaa !128
  %63 = getelementptr inbounds %struct.MTex, ptr %58, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !129
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr @G, align 8, !tbaa !146
  %68 = getelementptr inbounds %struct.Main, ptr %67, i64 0, i32 18
  %69 = tail call i32 @BLI_findindex(ptr noundef nonnull %68, ptr noundef nonnull %64) #20
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %63, align 8, !tbaa !129
  tail call void @id_us_plus(ptr noundef %72) #20
  br label %76

73:                                               ; preds = %66
  %74 = load ptr, ptr %57, align 8, !tbaa !128
  %75 = getelementptr inbounds %struct.MTex, ptr %74, i64 0, i32 5
  store ptr null, ptr %75, align 8, !tbaa !129
  br label %76

76:                                               ; preds = %55, %71, %73, %60
  %77 = add nuw nsw i64 %56, 1
  %78 = icmp eq i64 %77, 18
  br i1 %78, label %79, label %55, !llvm.loop !298

79:                                               ; preds = %76
  %80 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !140
  %81 = load ptr, ptr @G, align 8, !tbaa !146
  %82 = tail call ptr @ntreeCopyTree_ex(ptr noundef %80, ptr noundef %81, i8 noundef zeroext 0) #20
  store ptr %82, ptr %36, align 8, !tbaa !140
  br label %83

83:                                               ; preds = %1, %79
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2)
  ret void
}

declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #4

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @do_version_tface(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = icmp eq ptr %3, null
  br i1 %4, label %162, label %5

5:                                                ; preds = %1, %159
  %6 = phi ptr [ %160, %159 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %159

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 23
  %12 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %11, i32 noundef 5) #20
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !299
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %10 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %159, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 47
  %23 = load i16, ptr %22, align 2, !tbaa !162
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 12
  %26 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 28
  %27 = load i32, ptr %26, align 8, !tbaa !300
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %110

29:                                               ; preds = %21
  %30 = load ptr, ptr %25, align 8, !tbaa !301
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 0, i32 9
  %32 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 5
  br label %33

33:                                               ; preds = %29, %104
  %34 = phi i64 [ 0, %29 ], [ %105, %104 ]
  %35 = phi ptr [ %30, %29 ], [ %106, %104 ]
  %36 = load ptr, ptr %31, align 8, !tbaa !302
  %37 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %34
  %38 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %34, i32 4
  %39 = load i16, ptr %38, align 2, !tbaa !304
  %40 = and i16 %39, -33
  store i16 %40, ptr %38, align 2, !tbaa !304
  br i1 %24, label %41, label %57

41:                                               ; preds = %33
  %42 = and i16 %39, -125
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %34, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !306
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 15
  %48 = or i32 %47, %43
  %49 = and i32 %48, -67709
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = add nuw nsw i32 %48, 1
  %53 = tail call fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %37, i32 noundef %52)
  %54 = getelementptr inbounds %struct.MFace, ptr %35, i64 0, i32 4
  store i16 %53, ptr %54, align 4, !tbaa !307
  br label %104

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.MFace, ptr %35, i64 0, i32 4
  store i16 -1, ptr %56, align 4, !tbaa !307
  br label %104

57:                                               ; preds = %33
  %58 = getelementptr inbounds %struct.MFace, ptr %35, i64 0, i32 4
  %59 = load i16, ptr %58, align 4, !tbaa !307
  %60 = load i16, ptr %22, align 2, !tbaa !162
  %61 = icmp slt i16 %59, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %57
  %63 = load ptr, ptr %32, align 8, !tbaa !159
  %64 = sext i16 %59 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !128
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = and i16 %39, -125
  %70 = sext i16 %69 to i32
  %71 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %34, i32 3
  %72 = load i8, ptr %71, align 1, !tbaa !306
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 15
  %75 = or i32 %74, %70
  %76 = and i32 %75, -67709
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %104, label %78

78:                                               ; preds = %68
  %79 = add nuw nsw i32 %75, 1
  %80 = tail call fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %37, i32 noundef %79)
  store i16 %80, ptr %58, align 4, !tbaa !307
  br label %104

81:                                               ; preds = %62
  %82 = getelementptr inbounds %struct.ID, ptr %66, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !148
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Material, ptr %66, i64 0, i32 28
  %87 = load i32, ptr %86, align 8, !tbaa !121
  %88 = icmp eq i32 %87, -99999
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = and i16 %39, -2173
  %91 = sext i16 %90 to i32
  %92 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %34, i32 3
  %93 = load i8, ptr %92, align 1, !tbaa !306
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 15
  %96 = or i32 %95, %91
  %97 = icmp eq i32 %87, 0
  %98 = xor i32 %96, -1
  br i1 %97, label %99, label %100

99:                                               ; preds = %89
  store i32 %98, ptr %86, align 8, !tbaa !121
  br label %104

100:                                              ; preds = %89
  %101 = icmp eq i32 %87, %98
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  store i32 -99999, ptr %86, align 8, !tbaa !121
  br label %104

103:                                              ; preds = %100
  store i32 %98, ptr %86, align 8, !tbaa !121
  br label %104

104:                                              ; preds = %103, %55, %51, %99, %57, %85, %81, %68, %78, %102
  %105 = add nuw nsw i64 %34, 1
  %106 = getelementptr inbounds %struct.MFace, ptr %35, i64 1
  %107 = load i32, ptr %26, align 8, !tbaa !300
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %33, label %110, !llvm.loop !309

110:                                              ; preds = %104, %21
  %111 = phi i32 [ %27, %21 ], [ %107, %104 ]
  %112 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 28
  br i1 %24, label %113, label %159

113:                                              ; preds = %110
  %114 = load i16, ptr %22, align 2, !tbaa !162
  %115 = icmp sgt i16 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %113
  %117 = load i32, ptr %112, align 8, !tbaa !300
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %159

119:                                              ; preds = %116
  %120 = load ptr, ptr %25, align 8, !tbaa !301
  %121 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 0, i32 9
  br label %122

122:                                              ; preds = %119, %142
  %123 = phi i64 [ 0, %119 ], [ %143, %142 ]
  %124 = phi ptr [ %120, %119 ], [ %144, %142 ]
  %125 = getelementptr inbounds %struct.MFace, ptr %124, i64 0, i32 4
  %126 = load i16, ptr %125, align 4, !tbaa !307
  %127 = icmp eq i16 %126, -1
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load ptr, ptr %121, align 8, !tbaa !302
  %130 = getelementptr inbounds %struct.MTFace, ptr %129, i64 %123
  %131 = getelementptr inbounds %struct.MTFace, ptr %129, i64 %123, i32 4
  %132 = load i16, ptr %131, align 2, !tbaa !304
  %133 = and i16 %132, -125
  %134 = sext i16 %133 to i32
  %135 = getelementptr inbounds %struct.MTFace, ptr %129, i64 %123, i32 3
  %136 = load i8, ptr %135, align 1, !tbaa !306
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 15
  %139 = or i32 %138, %134
  %140 = add nuw nsw i32 %139, 1
  %141 = tail call fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %130, i32 noundef %140)
  store i16 %141, ptr %125, align 4, !tbaa !307
  br label %142

142:                                              ; preds = %122, %128
  %143 = add nuw nsw i64 %123, 1
  %144 = getelementptr inbounds %struct.MFace, ptr %124, i64 1
  %145 = load i32, ptr %112, align 8, !tbaa !300
  %146 = sext i32 %145 to i64
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %122, label %159, !llvm.loop !310

148:                                              ; preds = %113
  %149 = icmp sgt i32 %111, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %148
  %151 = load ptr, ptr %25, align 8, !tbaa !301
  br label %152

152:                                              ; preds = %150, %152
  %153 = phi i32 [ %156, %152 ], [ 0, %150 ]
  %154 = phi ptr [ %157, %152 ], [ %151, %150 ]
  %155 = getelementptr inbounds %struct.MFace, ptr %154, i64 0, i32 4
  store i16 0, ptr %155, align 4, !tbaa !307
  %156 = add nuw nsw i32 %153, 1
  %157 = getelementptr inbounds %struct.MFace, ptr %154, i64 1
  %158 = icmp eq i32 %156, %111
  br i1 %158, label %159, label %152, !llvm.loop !311

159:                                              ; preds = %152, %142, %148, %116, %110, %18, %5
  %160 = load ptr, ptr %6, align 8, !tbaa !128
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %5, !llvm.loop !312

162:                                              ; preds = %159, %1
  %163 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %164 = load ptr, ptr %163, align 8, !tbaa !128
  %165 = icmp eq ptr %164, null
  br i1 %165, label %256, label %166

166:                                              ; preds = %162, %252
  %167 = phi ptr [ %254, %252 ], [ %164, %162 ]
  %168 = phi i32 [ %253, %252 ], [ 1, %162 ]
  %169 = getelementptr inbounds %struct.ID, ptr %167, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !148
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %252

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.Material, ptr %167, i64 0, i32 28
  %174 = load i32, ptr %173, align 8, !tbaa !121
  %175 = icmp eq i32 %174, -99999
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  store i32 0, ptr %173, align 8, !tbaa !121
  %177 = getelementptr inbounds %struct.ID, ptr %167, i64 0, i32 4, i64 2
  %178 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %177)
  br label %252

179:                                              ; preds = %172
  %180 = icmp slt i32 %174, 0
  br i1 %180, label %181, label %251

181:                                              ; preds = %179
  %182 = sub nsw i32 0, %174
  tail call fastcc void @decode_tfaceflag(ptr noundef nonnull %167, i32 noundef %182)
  %183 = load ptr, ptr %2, align 8, !tbaa !128
  %184 = icmp eq ptr %183, null
  br i1 %184, label %252, label %185

185:                                              ; preds = %181, %248
  %186 = phi ptr [ %249, %248 ], [ %183, %181 ]
  %187 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 47
  %188 = load i16, ptr %187, align 2, !tbaa !162
  %189 = sext i16 %188 to i32
  %190 = icmp sgt i16 %188, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 5
  %193 = load ptr, ptr %192, align 8, !tbaa !159
  %194 = zext nneg i32 %189 to i64
  br label %195

195:                                              ; preds = %191, %200
  %196 = phi i64 [ 0, %191 ], [ %201, %200 ]
  %197 = getelementptr inbounds ptr, ptr %193, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !128
  %199 = icmp eq ptr %198, %167
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = add nuw nsw i64 %196, 1
  %202 = icmp eq i64 %201, %194
  br i1 %202, label %205, label %195, !llvm.loop !313

203:                                              ; preds = %195
  %204 = trunc i64 %196 to i32
  br label %205

205:                                              ; preds = %203, %200, %185
  %206 = phi i32 [ 0, %185 ], [ %204, %203 ], [ %189, %200 ]
  %207 = icmp eq i32 %206, %189
  br i1 %207, label %248, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 23
  %210 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %209, i32 noundef 5) #20
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %209, align 8, !tbaa !299
  %214 = sext i32 %210 to i64
  %215 = getelementptr inbounds %struct.CustomDataLayer, ptr %213, i64 %214
  br label %216

216:                                              ; preds = %208, %212
  %217 = phi ptr [ %215, %212 ], [ null, %208 ]
  %218 = icmp eq ptr %217, null
  br i1 %218, label %248, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 28
  %221 = load i32, ptr %220, align 8, !tbaa !300
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %248

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 12
  %225 = load ptr, ptr %224, align 8, !tbaa !301
  %226 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !159
  %228 = getelementptr inbounds %struct.CustomDataLayer, ptr %217, i64 0, i32 9
  %229 = zext nneg i32 %221 to i64
  br label %230

230:                                              ; preds = %223, %244
  %231 = phi i64 [ 0, %223 ], [ %245, %244 ]
  %232 = phi ptr [ %225, %223 ], [ %246, %244 ]
  %233 = getelementptr inbounds %struct.MFace, ptr %232, i64 0, i32 4
  %234 = load i16, ptr %233, align 4, !tbaa !307
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %227, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !128
  %238 = icmp eq ptr %237, %167
  br i1 %238, label %239, label %244

239:                                              ; preds = %230
  %240 = load ptr, ptr %228, align 8, !tbaa !302
  %241 = getelementptr inbounds %struct.MTFace, ptr %240, i64 %231, i32 4
  %242 = load i16, ptr %241, align 2, !tbaa !304
  %243 = or i16 %242, 32
  store i16 %243, ptr %241, align 2, !tbaa !304
  br label %244

244:                                              ; preds = %230, %239
  %245 = add nuw nsw i64 %231, 1
  %246 = getelementptr inbounds %struct.MFace, ptr %232, i64 1
  %247 = icmp eq i64 %245, %229
  br i1 %247, label %248, label %230, !llvm.loop !314

248:                                              ; preds = %244, %219, %216, %205
  %249 = load ptr, ptr %186, align 8, !tbaa !128
  %250 = icmp eq ptr %249, null
  br i1 %250, label %252, label %185, !llvm.loop !315

251:                                              ; preds = %179
  store i32 16, ptr %173, align 8, !tbaa !121
  br label %252

252:                                              ; preds = %248, %181, %251, %176, %166
  %253 = phi i32 [ %168, %166 ], [ 0, %176 ], [ %168, %251 ], [ %168, %181 ], [ %168, %248 ]
  %254 = load ptr, ptr %167, align 8, !tbaa !128
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %166, !llvm.loop !316

256:                                              ; preds = %252, %162
  %257 = phi i32 [ 1, %162 ], [ %253, %252 ]
  ret i32 %257
}

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [66 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %5) #20
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %4 ]
  %9 = phi i32 [ %10, %7 ], [ %3, %4 ]
  %10 = sdiv i32 %9, 10
  %11 = add nuw nsw i32 %8, 1
  %12 = add i32 %9, 9
  %13 = icmp ult i32 %12, 19
  br i1 %13, label %14, label %7, !llvm.loop !317

14:                                               ; preds = %7, %4
  %15 = phi i32 [ 1, %4 ], [ %11, %7 ]
  %16 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 66, ptr noundef nonnull @.str.10, i32 noundef %15, i32 noundef %3) #20
  %17 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %18 = getelementptr inbounds i8, ptr %5, i64 2
  %19 = call ptr @BLI_findstring(ptr noundef nonnull %17, ptr noundef nonnull %18, i32 noundef 34) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 47
  %23 = load i16, ptr %22, align 2, !tbaa !162
  %24 = icmp sgt i16 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  br label %28

28:                                               ; preds = %25, %34
  %29 = phi i16 [ 0, %25 ], [ %35, %34 ]
  %30 = zext nneg i16 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !128
  %33 = icmp eq ptr %32, %19
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = add nuw nsw i16 %29, 1
  %36 = icmp eq i16 %35, %23
  br i1 %36, label %37, label %28, !llvm.loop !318

37:                                               ; preds = %28, %34, %21
  %38 = phi i16 [ -1, %21 ], [ %29, %28 ], [ -1, %34 ]
  %39 = icmp eq i16 %38, -1
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 47
  call void @BKE_material_append_id(ptr noundef %1, ptr noundef null)
  %42 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = load i16, ptr %41, align 2, !tbaa !162
  %45 = sext i16 %44 to i64
  %46 = getelementptr ptr, ptr %43, i64 %45
  %47 = getelementptr ptr, ptr %46, i64 -1
  store ptr %19, ptr %47, align 8, !tbaa !128
  call void @id_us_plus(ptr noundef nonnull %19) #20
  %48 = load i16, ptr %41, align 2, !tbaa !162
  %49 = add i16 %48, -1
  br label %50

50:                                               ; preds = %40, %37
  %51 = phi i16 [ %49, %40 ], [ %38, %37 ]
  %52 = getelementptr inbounds %struct.MTFace, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !319
  %54 = icmp eq ptr %53, null
  br i1 %54, label %96, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 51
  %57 = load i32, ptr %56, align 4, !tbaa !124
  %58 = or i32 %57, 2048
  store i32 %58, ptr %56, align 4, !tbaa !124
  %59 = call zeroext i8 @BKE_image_has_alpha(ptr noundef nonnull %53) #20
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %96, label %61

61:                                               ; preds = %55
  %62 = load i32, ptr %56, align 4, !tbaa !124
  %63 = or i32 %62, 536870912
  store i32 %63, ptr %56, align 4, !tbaa !124
  br label %96

64:                                               ; preds = %14
  %65 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16717, ptr noundef nonnull %18) #20
  call void @init_material(ptr noundef %65)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %93, label %67

67:                                               ; preds = %64
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %18)
  call void @BKE_material_append_id(ptr noundef %1, ptr noundef null)
  %69 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !159
  %71 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 47
  %72 = load i16, ptr %71, align 2, !tbaa !162
  %73 = sext i16 %72 to i64
  %74 = getelementptr ptr, ptr %70, i64 %73
  %75 = getelementptr ptr, ptr %74, i64 -1
  store ptr %65, ptr %75, align 8, !tbaa !128
  call void @id_us_plus(ptr noundef nonnull %65) #20
  %76 = load i16, ptr %71, align 2, !tbaa !162
  %77 = add i16 %76, -1
  %78 = getelementptr inbounds %struct.MTFace, ptr %2, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !319
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.Material, ptr %65, i64 0, i32 51
  %83 = load i32, ptr %82, align 4, !tbaa !124
  %84 = or i32 %83, 2048
  store i32 %84, ptr %82, align 4, !tbaa !124
  %85 = call zeroext i8 @BKE_image_has_alpha(ptr noundef nonnull %79) #20
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, ptr %82, align 4, !tbaa !124
  %89 = or i32 %88, 536870912
  store i32 %89, ptr %82, align 4, !tbaa !124
  br label %90

90:                                               ; preds = %67, %81, %87
  call fastcc void @decode_tfaceflag(ptr noundef nonnull %65, i32 noundef %3)
  %91 = sub nsw i32 0, %3
  %92 = getelementptr inbounds %struct.Material, ptr %65, i64 0, i32 28
  store i32 %91, ptr %92, align 8, !tbaa !121
  call void @id_us_min(ptr noundef nonnull %65) #20
  br label %96

93:                                               ; preds = %64
  %94 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %18, ptr noundef nonnull %94)
  br label %96

96:                                               ; preds = %61, %55, %50, %90, %93
  %97 = phi i16 [ %77, %90 ], [ -1, %93 ], [ %51, %50 ], [ %51, %55 ], [ %51, %61 ]
  %98 = getelementptr inbounds %struct.MTFace, ptr %2, i64 0, i32 4
  %99 = load i16, ptr %98, align 2, !tbaa !304
  %100 = or i16 %99, 32
  store i16 %100, ptr %98, align 2, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %5) #20
  ret i16 %97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @decode_tfaceflag(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28
  %4 = add nsw i32 %1, -1
  %5 = ashr i32 %4, 15
  %6 = shl i32 %4, 7
  %7 = and i32 %6, 128
  %8 = xor i32 %7, 128
  store i32 %8, ptr %3, align 4, !tbaa !320
  %9 = and i32 %4, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 50
  %13 = load i16, ptr %12, align 2, !tbaa !126
  %14 = or i16 %13, 2
  store i16 %14, ptr %12, align 2, !tbaa !126
  br label %15

15:                                               ; preds = %2, %11
  %16 = and i32 %4, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = or disjoint i32 %8, 16
  store i32 %19, ptr %3, align 4, !tbaa !320
  br label %20

20:                                               ; preds = %18, %15
  %21 = and i32 %4, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 4, !tbaa !320
  %25 = or i32 %24, 256
  store i32 %25, ptr %3, align 4, !tbaa !320
  br label %26

26:                                               ; preds = %23, %20
  %27 = and i32 %4, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %3, align 4, !tbaa !320
  %31 = or i32 %30, 64
  store i32 %31, ptr %3, align 4, !tbaa !320
  br label %32

32:                                               ; preds = %29, %26
  %33 = and i32 %4, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = and i32 %4, 4096
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = and i32 %4, 8192
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38, %35, %32
  %42 = phi i32 [ 512, %32 ], [ 1024, %35 ], [ 2048, %38 ]
  %43 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !321
  %45 = or i32 %44, %42
  store i32 %45, ptr %43, align 4, !tbaa !321
  br label %46

46:                                               ; preds = %41, %38
  %47 = and i32 %4, 2
  %48 = icmp ne i32 %47, 0
  %49 = add nsw i32 %5, -1
  %50 = icmp ult i32 %49, 2
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = and i32 %4, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = and i32 %4, 32768
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = and i32 %4, 131072
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %55, %52, %46
  %62 = phi i32 [ 8, %46 ], [ 2, %52 ], [ 1, %55 ], [ 4, %58 ]
  %63 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 1
  store i32 %62, ptr %63, align 4, !tbaa !322
  br label %64

64:                                               ; preds = %61, %58
  ret void
}

declare void @BKE_mesh_material_index_remove(ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare void @BKE_curve_material_index_remove(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BKE_mesh_material_index_clear(ptr noundef) local_unnamed_addr #4

declare void @BKE_curve_material_index_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @BKE_image_has_alpha(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !42, i64 204}
!35 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !43, i64 224, !44, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !42, i64 364, !42, i64 368, !40, i64 372, !40, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !38, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !42, i64 556, !42, i64 560, !38, i64 564, !42, i64 580, !42, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !42, i64 616, !42, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !45, i64 928}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!44 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!45 = !{!"ListBase", !37, i64 0, !37, i64 8}
!46 = !{!35, !42, i64 140}
!47 = !{!35, !42, i64 136}
!48 = !{!35, !42, i64 132}
!49 = !{!35, !42, i64 152}
!50 = !{!35, !42, i64 148}
!51 = !{!35, !42, i64 144}
!52 = !{!35, !42, i64 164}
!53 = !{!35, !42, i64 160}
!54 = !{!35, !42, i64 156}
!55 = !{!35, !42, i64 192}
!56 = !{!35, !42, i64 180}
!57 = !{!35, !42, i64 200}
!58 = !{!35, !42, i64 420}
!59 = !{!35, !42, i64 208}
!60 = !{!35, !40, i64 360}
!61 = !{!35, !40, i64 418}
!62 = !{!35, !40, i64 414}
!63 = !{!35, !40, i64 416}
!64 = !{!35, !40, i64 412}
!65 = !{!35, !42, i64 428}
!66 = !{!35, !42, i64 424}
!67 = !{!35, !42, i64 432}
!68 = !{!35, !38, i64 363}
!69 = !{!35, !42, i64 800}
!70 = !{!35, !42, i64 560}
!71 = !{!35, !42, i64 556}
!72 = !{!42, !42, i64 0}
!73 = !{!35, !42, i64 580}
!74 = !{!35, !42, i64 584}
!75 = !{!35, !42, i64 440}
!76 = !{!35, !42, i64 436}
!77 = !{!35, !42, i64 188}
!78 = !{!35, !40, i64 356}
!79 = !{!35, !40, i64 358}
!80 = !{!35, !42, i64 328}
!81 = !{!35, !42, i64 336}
!82 = !{!35, !42, i64 340}
!83 = !{!35, !42, i64 332}
!84 = !{!35, !42, i64 348}
!85 = !{!35, !42, i64 352}
!86 = !{!35, !42, i64 532}
!87 = !{!35, !40, i64 906}
!88 = !{!35, !42, i64 368}
!89 = !{!35, !42, i64 364}
!90 = !{!35, !40, i64 374}
!91 = !{!35, !40, i64 372}
!92 = !{!35, !42, i64 380}
!93 = !{!35, !42, i64 376}
!94 = !{!35, !42, i64 388}
!95 = !{!35, !40, i64 392}
!96 = !{!35, !42, i64 616}
!97 = !{!35, !42, i64 620}
!98 = !{!35, !40, i64 544}
!99 = !{!35, !38, i64 542}
!100 = !{!35, !42, i64 848}
!101 = !{!35, !42, i64 852}
!102 = !{!35, !42, i64 856}
!103 = !{!35, !42, i64 860}
!104 = !{!35, !42, i64 864}
!105 = !{!35, !42, i64 868}
!106 = !{!35, !42, i64 872}
!107 = !{!35, !42, i64 224}
!108 = !{!35, !42, i64 228}
!109 = !{!35, !42, i64 232}
!110 = !{!35, !42, i64 236}
!111 = !{!35, !42, i64 276}
!112 = !{!35, !42, i64 280}
!113 = !{!35, !40, i64 288}
!114 = !{!35, !42, i64 296}
!115 = !{!35, !40, i64 292}
!116 = !{!35, !40, i64 290}
!117 = !{!35, !40, i64 294}
!118 = !{!35, !42, i64 308}
!119 = !{!35, !42, i64 300}
!120 = !{!35, !42, i64 304}
!121 = !{!35, !41, i64 312}
!122 = !{!35, !41, i64 316}
!123 = !{!35, !41, i64 320}
!124 = !{!35, !41, i64 396}
!125 = !{!35, !41, i64 404}
!126 = !{!35, !40, i64 394}
!127 = !{!35, !37, i64 792}
!128 = !{!37, !37, i64 0}
!129 = !{!130, !37, i64 16}
!130 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !42, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308}
!131 = !{!132, !41, i64 100}
!132 = !{!"Tex", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !133, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!133 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!134 = distinct !{!134, !135, !136}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!35, !37, i64 592}
!138 = !{!35, !37, i64 600}
!139 = !{!35, !41, i64 104}
!140 = !{!35, !37, i64 768}
!141 = !{!35, !37, i64 920}
!142 = !{!35, !37, i64 928}
!143 = !{!35, !37, i64 784}
!144 = distinct !{!144, !135, !136}
!145 = distinct !{!145, !135, !136}
!146 = !{!147, !37, i64 0}
!147 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !45, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!148 = !{!35, !37, i64 24}
!149 = !{!35, !41, i64 100}
!150 = distinct !{!150, !135, !136}
!151 = !{!152, !37, i64 440}
!152 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !153, i64 312, !37, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !154, i64 1304, !154, i64 1312, !41, i64 1320, !41, i64 1324, !45, i64 1328, !45, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !45, i64 1400, !37, i64 1416}
!153 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!154 = !{!"long", !38, i64 0}
!155 = !{!152, !41, i64 456}
!156 = !{!152, !37, i64 24}
!157 = distinct !{!157, !135, !136}
!158 = distinct !{!158, !135, !136}
!159 = !{!160, !37, i64 152}
!160 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !161, i64 280, !161, i64 480, !161, i64 680, !161, i64 880, !161, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !42, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!161 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!162 = !{!160, !40, i64 1366}
!163 = !{!160, !37, i64 24}
!164 = distinct !{!164, !135, !136}
!165 = distinct !{!165, !135, !136}
!166 = !{!167, !37, i64 200}
!167 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !45, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !42, i64 252, !42, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !168, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!168 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!169 = !{!167, !40, i64 266}
!170 = !{!167, !37, i64 24}
!171 = distinct !{!171, !135, !136}
!172 = distinct !{!172, !135, !136}
!173 = !{!174, !37, i64 176}
!174 = !{!"MetaBall", !36, i64 0, !37, i64 120, !45, i64 128, !45, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !42, i64 228, !42, i64 232, !42, i64 236, !37, i64 240}
!175 = !{!174, !40, i64 186}
!176 = !{!174, !37, i64 24}
!177 = distinct !{!177, !135, !136}
!178 = distinct !{!178, !135, !136}
!179 = distinct !{!179, !135, !136}
!180 = distinct !{!180, !135, !136}
!181 = distinct !{!181, !135, !136}
!182 = distinct !{!182, !135, !136}
!183 = distinct !{!183, !135, !136}
!184 = distinct !{!184, !135, !136}
!185 = distinct !{!185, !135, !136}
!186 = distinct !{!186, !135, !136}
!187 = distinct !{!187, !135, !136}
!188 = !{!152, !40, i64 136}
!189 = !{!152, !37, i64 296}
!190 = !{!40, !40, i64 0}
!191 = distinct !{!191, !135, !136}
!192 = distinct !{!192, !135, !136}
!193 = !{!152, !37, i64 448}
!194 = !{!38, !38, i64 0}
!195 = !{!35, !38, i64 543}
!196 = !{!197, !37, i64 240}
!197 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !45, i64 200, !45, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !45, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !198, i64 400, !198, i64 416, !198, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!198 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!199 = distinct !{!199, !135, !136}
!200 = !{!152, !41, i64 460}
!201 = !{!36, !37, i64 24}
!202 = !{!203, !41, i64 8}
!203 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !42, i64 8956, !42, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !42, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !204, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !42, i64 10904, !42, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !205, i64 10928}
!204 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!205 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !40, i64 24, !38, i64 26}
!206 = !{i8 0, i8 2}
!207 = distinct !{!207, !135, !136}
!208 = distinct !{!208, !135, !136}
!209 = distinct !{!209, !135, !136}
!210 = distinct !{!210, !135, !136}
!211 = distinct !{!211, !135, !136}
!212 = !{!152, !37, i64 1280}
!213 = distinct !{!213, !135, !136}
!214 = !{!35, !41, i64 400}
!215 = !{!35, !41, i64 408}
!216 = !{!217, !37, i64 360}
!217 = !{!"bNodeTree", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 200, !37, i64 208, !38, i64 216, !45, i64 224, !45, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !198, i64 296, !45, i64 312, !45, i64 328, !37, i64 344, !218, i64 352, !41, i64 356, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424}
!218 = !{!"bNodeInstanceKey", !41, i64 0}
!219 = !{!35, !42, i64 448}
!220 = !{!35, !41, i64 536}
!221 = !{!132, !40, i64 232}
!222 = !{!132, !38, i64 408}
!223 = !{!132, !37, i64 336}
!224 = !{!130, !40, i64 0}
!225 = !{!35, !40, i64 588}
!226 = !{!130, !40, i64 2}
!227 = !{!35, !40, i64 590}
!228 = !{!130, !40, i64 120}
!229 = !{!130, !40, i64 128}
!230 = distinct !{!230, !135, !136}
!231 = !{!35, !42, i64 168}
!232 = !{!35, !42, i64 176}
!233 = !{!35, !42, i64 172}
!234 = !{!235, !37, i64 24}
!235 = !{!"Group", !36, i64 0, !45, i64 120, !41, i64 136, !38, i64 140}
!236 = distinct !{!236, !135, !136}
!237 = !{!197, !40, i64 172}
!238 = distinct !{!238, !135, !136}
!239 = distinct !{!239, !135, !136}
!240 = !{!35, !40, i64 130}
!241 = distinct !{!241, !135, !136}
!242 = distinct !{!242, !135, !136}
!243 = distinct !{!243, !135, !136}
!244 = !{!35, !40, i64 98}
!245 = !{!35, !37, i64 120}
!246 = !{!247, !37, i64 48}
!247 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !45, i64 24, !37, i64 40, !45, i64 48, !45, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !42, i64 92}
!248 = !{!217, !37, i64 120}
!249 = distinct !{!249, !135, !136}
!250 = !{!35, !40, i64 912}
!251 = !{!252, !37, i64 264}
!252 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !45, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !253, i64 280, !261, i64 4264, !45, i64 4296, !45, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !45, i64 4384, !262, i64 4400, !263, i64 4416, !266, i64 4600, !37, i64 4608, !267, i64 4616, !37, i64 4640, !154, i64 4648, !154, i64 4656, !255, i64 4664, !256, i64 4824, !268, i64 4888, !37, i64 4952}
!253 = !{!"RenderData", !254, i64 0, !37, i64 248, !37, i64 256, !257, i64 264, !258, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !198, i64 544, !198, i64 560, !259, i64 576, !45, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !260, i64 2616, !41, i64 3976, !41, i64 3980}
!254 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !255, i64 24, !256, i64 184}
!255 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!256 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!257 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!258 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!259 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!260 = !{!"BakeData", !254, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!261 = !{!"AudioData", !41, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28}
!262 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!263 = !{!"GameData", !262, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !264, i64 40, !40, i64 64, !40, i64 66, !42, i64 68, !265, i64 72, !42, i64 128, !42, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!264 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!265 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 54}
!266 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!267 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!268 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!269 = !{!270, !41, i64 116}
!270 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !42, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !271, i64 64, !273, i64 168, !42, i64 336, !42, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !42, i64 472, !42, i64 476, !274, i64 480, !275, i64 608}
!271 = !{!"ImagePaintSettings", !272, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !42, i64 100}
!272 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!273 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !42, i64 128, !42, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!274 = !{!"UnifiedPaintSettings", !41, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !42, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !42, i64 72, !38, i64 76, !41, i64 84, !42, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !42, i64 120, !41, i64 124}
!275 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !38, i64 20, !38, i64 21, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!276 = !{!35, !40, i64 908}
!277 = !{!35, !40, i64 910}
!278 = !{!197, !37, i64 32}
!279 = !{!280, !40, i64 436}
!280 = !{!"bNodeType", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 18, !41, i64 84, !38, i64 88, !38, i64 152, !41, i64 408, !42, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !37, i64 448, !37, i64 456, !38, i64 464, !37, i64 528, !37, i64 536, !37, i64 544, !37, i64 552, !37, i64 560, !37, i64 568, !37, i64 576, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !37, i64 696, !37, i64 704, !37, i64 712, !281, i64 720}
!281 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!282 = !{!280, !41, i64 84}
!283 = distinct !{!283, !135, !136}
!284 = !{!285, !37, i64 0}
!285 = !{!"TexPaintSlot", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20}
!286 = distinct !{!286, !135, !136}
!287 = !{!132, !37, i64 352}
!288 = distinct !{!288, !135, !136}
!289 = !{!285, !37, i64 8}
!290 = !{!285, !41, i64 16}
!291 = distinct !{!291, !135, !136}
!292 = distinct !{!292, !135, !136}
!293 = distinct !{!293, !135, !136}
!294 = distinct !{!294, !135, !136}
!295 = distinct !{!295, !135, !136}
!296 = !{i64 0, i64 8, !128, i64 8, i64 8, !128, i64 16, i64 8, !128, i64 24, i64 8, !128, i64 32, i64 66, !194, i64 98, i64 2, !190, i64 100, i64 4, !297, i64 104, i64 4, !297, i64 108, i64 4, !297, i64 112, i64 8, !128}
!297 = !{!41, !41, i64 0}
!298 = distinct !{!298, !135, !136}
!299 = !{!160, !37, i64 680}
!300 = !{!160, !41, i64 1288}
!301 = !{!160, !37, i64 208}
!302 = !{!303, !37, i64 96}
!303 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96}
!304 = !{!305, !40, i64 42}
!305 = !{!"MTFace", !38, i64 0, !37, i64 32, !38, i64 40, !38, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!306 = !{!305, !38, i64 41}
!307 = !{!308, !40, i64 16}
!308 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!309 = distinct !{!309, !135, !136}
!310 = distinct !{!310, !135, !136}
!311 = distinct !{!311, !135, !136}
!312 = distinct !{!312, !135, !136}
!313 = distinct !{!313, !135, !136}
!314 = distinct !{!314, !135, !136}
!315 = distinct !{!315, !135, !136}
!316 = distinct !{!316, !135, !136}
!317 = distinct !{!317, !135, !136}
!318 = distinct !{!318, !135, !136}
!319 = !{!305, !37, i64 32}
!320 = !{!44, !41, i64 0}
!321 = !{!44, !41, i64 8}
!322 = !{!44, !41, i64 4}
