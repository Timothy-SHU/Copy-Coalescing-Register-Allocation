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
@matcopybuf = internal global %struct.Material zeroinitializer, align 8
@matcopied = internal unnamed_addr global i1 false, align 2
@.str.9 = private unnamed_addr constant [33 x i8] c"Warning: material \22%s\22 skipped.\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"MAMaterial.TF.%0*d\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"TexFace Convert: Material \22%s\22 created.\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Error: Unable to create Material \22%s\22 for Mesh \22%s\22.\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Negative material index!\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_def_material() local_unnamed_addr #0 {
  tail call void @init_material(ptr noundef nonnull @defmaterial) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @init_material(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 8
  store <4 x float> <float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00>, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 12
  store float 1.000000e+00, ptr %4, align 4, !tbaa !38
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 16
  store float 1.000000e+00, ptr %5, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 21
  store <2 x float> <float 1.000000e+00, float 0x3FE99999A0000000>, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 59
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 23
  store float 5.000000e-01, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 38
  store i16 50, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 55
  store <4 x i16> <i16 1, i16 4, i16 12, i16 4>, ptr %10, align 4, !tbaa !50
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %7, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 40
  store i8 6, ptr %11, align 1, !tbaa !51
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 107
  store float 5.000000e-01, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 85
  store <4 x float> <float 5.000000e-01, float 4.000000e+00, float 5.000000e-01, float 0x3FB99999A0000000>, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 87, i64 2
  store <4 x float> <float 5.000000e-01, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 1.000000e+00>, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 63
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 18
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 36
  store i16 2, ptr %17, align 4, !tbaa !53
  %18 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 37
  store i16 2, ptr %18, align 2, !tbaa !54
  %19 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 29
  store <4 x float> <float 0.000000e+00, float 1.250000e+00, float 0.000000e+00, float 1.250000e+00>, ptr %19, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 34
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 72
  store float 1.000000e+00, ptr %21, align 4, !tbaa !55
  %22 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 130
  store i16 0, ptr %22, align 2, !tbaa !56
  %23 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 41
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 44
  store i16 18, ptr %24, align 2, !tbaa !57
  %25 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 43
  store i16 18, ptr %25, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 45
  store <2 x float> <float 0x3F747AE140000000, float 0x3F747AE140000000>, ptr %26, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 48
  store float 0.000000e+00, ptr %27, align 4, !tbaa !59
  %28 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 49
  store i16 0, ptr %28, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 100
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 78
  store i16 3, ptr %30, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 76
  store i8 1, ptr %31, align 2, !tbaa !62
  %32 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 114
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 115, i64 1
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0x3FA99999A0000000, float 0x3FB99999A0000000>, ptr %33, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 118
  store <4 x float> <float 0x3FF4CCCCC0000000, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %34, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 122
  store float 1.000000e+00, ptr %35, align 8, !tbaa !63
  %36 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 5, i64 1
  %38 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6, i64 2
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 4
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %39, align 8, !tbaa !34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 8
  store float 0x3F847AE140000000, ptr %40, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 10
  store i16 0, ptr %41, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 14
  %43 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 12
  store i16 1, ptr %43, align 4, !tbaa !66
  %44 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 11
  %45 = load i16, ptr %44, align 2, !tbaa !67
  %46 = or i16 %45, 8
  store i16 %46, ptr %44, align 2, !tbaa !67
  %47 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 13
  store i16 50, ptr %47, align 2, !tbaa !68
  store <4 x float> <float 0x3FC99999A0000000, float 1.000000e+00, float 1.000000e+00, float 0x3FC99999A0000000>, ptr %42, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28
  store i32 16, ptr %48, align 8, !tbaa !69
  %49 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 1
  store i32 0, ptr %49, align 4, !tbaa !70
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 2
  store i32 0, ptr %50, align 8, !tbaa !71
  %51 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  store i32 54526019, ptr %51, align 4, !tbaa !72
  %52 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 53
  store i32 1, ptr %52, align 4, !tbaa !73
  %53 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 50
  store i16 4, ptr %53, align 2, !tbaa !74
  %54 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  store ptr null, ptr %54, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_material_free(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @BKE_material_free_ex(ptr noundef %0, i8 noundef zeroext 1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_material_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp ne i8 %1, 0
  br label %4

4:                                                ; preds = %2, %21
  %5 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %6 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp ne ptr %7, null
  %9 = select i1 %3, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !79
  br label %19

18:                                               ; preds = %4
  br i1 %8, label %19, label %21

19:                                               ; preds = %10, %14, %18
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %20(ptr noundef nonnull %7) #24
  br label %21

21:                                               ; preds = %18, %19
  %22 = add nuw nsw i64 %5, 1
  %23 = icmp eq i64 %22, 18
  br i1 %23, label %24, label %4, !llvm.loop !82

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %29(ptr noundef nonnull %26) #24
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %35(ptr noundef nonnull %32) #24
  br label %36

36:                                               ; preds = %34, %30
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #24
  %37 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @BKE_previewimg_free(ptr noundef nonnull %37) #24
  br label %41

41:                                               ; preds = %40, %36
  tail call void @BKE_icon_delete(ptr noundef nonnull %0) #24
  %42 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %42, align 8, !tbaa !86
  %43 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %44, i8 noundef zeroext %1) #24
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %48 = load ptr, ptr %43, align 8, !tbaa !87
  tail call void %47(ptr noundef %48) #24
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 135
  %51 = load ptr, ptr %50, align 8, !tbaa !88
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %54(ptr noundef nonnull %51) #24
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 136
  %57 = load ptr, ptr %56, align 8, !tbaa !89
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @GPU_material_free(ptr noundef nonnull %0) #24
  br label %60

60:                                               ; preds = %59, %55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ntreeFreeTree_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @GPU_material_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_material_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16717, ptr noundef %1) #24
  tail call void @init_material(ptr noundef %3) #23
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_material_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 105
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  tail call void @id_lib_extern(ptr noundef %4) #24
  br label %5

5:                                                ; preds = %1, %18
  %6 = phi i64 [ 0, %1 ], [ %19, %18 ]
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %12 = tail call ptr %11(i64 noundef 312, ptr noundef nonnull @.str) #24
  %13 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102, i64 %6
  store ptr %12, ptr %13, align 8, !tbaa !76
  %14 = load ptr, ptr %7, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %12, ptr noundef nonnull align 8 dereferenceable(312) %14, i64 312, i1 false)
  %15 = load ptr, ptr %13, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.MTex, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  tail call void @id_us_plus(ptr noundef %17) #24
  br label %18

18:                                               ; preds = %5, %10
  %19 = add nuw nsw i64 %6, 1
  %20 = icmp eq i64 %19, 18
  br i1 %20, label %21, label %5, !llvm.loop !91

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %23 = load ptr, ptr %22, align 8, !tbaa !84
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %27 = tail call ptr %26(ptr noundef nonnull %23) #24
  %28 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 92
  store ptr %27, ptr %28, align 8, !tbaa !84
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %35 = tail call ptr %34(ptr noundef nonnull %31) #24
  %36 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 93
  store ptr %35, ptr %36, align 8, !tbaa !85
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 106
  %39 = load ptr, ptr %38, align 8, !tbaa !75
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %39) #24
  %43 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 106
  store ptr %42, ptr %43, align 8, !tbaa !75
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %46 = load ptr, ptr %45, align 8, !tbaa !87
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %46) #24
  %50 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 103
  store ptr %49, ptr %50, align 8, !tbaa !87
  br label %51

51:                                               ; preds = %48, %44
  %52 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 136
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %52) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_previewimg_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !92 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @localize_material(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext 0) #24
  br label %3

3:                                                ; preds = %1, %13
  %4 = phi i64 [ 0, %1 ], [ %14, %13 ]
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str) #24
  %11 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102, i64 %4
  store ptr %10, ptr %11, align 8, !tbaa !76
  %12 = load ptr, ptr %5, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  br label %13

13:                                               ; preds = %3, %8
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 18
  br i1 %15, label %16, label %3, !llvm.loop !93

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %22 = tail call ptr %21(ptr noundef nonnull %18) #24
  %23 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 92
  store ptr %22, ptr %23, align 8, !tbaa !84
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %30 = tail call ptr %29(ptr noundef nonnull %26) #24
  %31 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 93
  store ptr %30, ptr %31, align 8, !tbaa !85
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 135
  store ptr null, ptr %33, align 8, !tbaa !88
  %34 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 106
  store ptr null, ptr %34, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @ntreeLocalize(ptr noundef nonnull %36) #24
  %40 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 103
  store ptr %39, ptr %40, align 8, !tbaa !87
  br label %41

41:                                               ; preds = %38, %32
  %42 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 136
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %42) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_material_make_local(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @G, align 8, !tbaa !94
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %330, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !97
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #24
  tail call fastcc void @extern_local_material(ptr noundef nonnull %0) #23
  br label %330

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %11, %46
  %16 = phi ptr [ %49, %46 ], [ %13, %11 ]
  %17 = phi i8 [ %48, %46 ], [ 0, %11 ]
  %18 = phi i8 [ %47, %46 ], [ 0, %11 ]
  %19 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 29
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 31
  %24 = load i32, ptr %23, align 8, !tbaa !102
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = zext nneg i32 %24 to i64
  br label %29

29:                                               ; preds = %26, %41
  %30 = phi i64 [ 0, %26 ], [ %44, %41 ]
  %31 = phi i8 [ %17, %26 ], [ %43, %41 ]
  %32 = phi i8 [ %18, %26 ], [ %42, %41 ]
  %33 = getelementptr inbounds ptr, ptr %20, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !76
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %27, align 8, !tbaa !103
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i8 1, i8 %32
  %40 = select i1 %38, i8 %31, i8 1
  br label %41

41:                                               ; preds = %36, %29
  %42 = phi i8 [ %32, %29 ], [ %39, %36 ]
  %43 = phi i8 [ %31, %29 ], [ %40, %36 ]
  %44 = add nuw nsw i64 %30, 1
  %45 = icmp eq i64 %44, %28
  br i1 %45, label %46, label %29, !llvm.loop !104

46:                                               ; preds = %41, %22, %15
  %47 = phi i8 [ %18, %15 ], [ %18, %22 ], [ %42, %41 ]
  %48 = phi i8 [ %17, %15 ], [ %17, %22 ], [ %43, %41 ]
  %49 = load ptr, ptr %16, align 8, !tbaa !76
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %15, !llvm.loop !105

51:                                               ; preds = %46, %11
  %52 = phi i8 [ 0, %11 ], [ %47, %46 ]
  %53 = phi i8 [ 0, %11 ], [ %48, %46 ]
  %54 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = icmp eq ptr %55, null
  br i1 %56, label %93, label %57

57:                                               ; preds = %51, %88
  %58 = phi ptr [ %91, %88 ], [ %55, %51 ]
  %59 = phi i8 [ %90, %88 ], [ %53, %51 ]
  %60 = phi i8 [ %89, %88 ], [ %52, %51 ]
  %61 = getelementptr inbounds %struct.Mesh, ptr %58, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !106
  %63 = icmp eq ptr %62, null
  br i1 %63, label %88, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.Mesh, ptr %58, i64 0, i32 47
  %66 = load i16, ptr %65, align 2, !tbaa !109
  %67 = icmp sgt i16 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = zext nneg i16 %66 to i64
  %70 = getelementptr inbounds %struct.ID, ptr %58, i64 0, i32 3
  br label %71

71:                                               ; preds = %68, %83
  %72 = phi i64 [ 0, %68 ], [ %86, %83 ]
  %73 = phi i8 [ %59, %68 ], [ %85, %83 ]
  %74 = phi i8 [ %60, %68 ], [ %84, %83 ]
  %75 = getelementptr inbounds ptr, ptr %62, i64 %72
  %76 = load ptr, ptr %75, align 8, !tbaa !76
  %77 = icmp eq ptr %76, %0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load ptr, ptr %70, align 8, !tbaa !110
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, i8 1, i8 %74
  %82 = select i1 %80, i8 %73, i8 1
  br label %83

83:                                               ; preds = %78, %71
  %84 = phi i8 [ %74, %71 ], [ %81, %78 ]
  %85 = phi i8 [ %73, %71 ], [ %82, %78 ]
  %86 = add nuw nsw i64 %72, 1
  %87 = icmp eq i64 %86, %69
  br i1 %87, label %88, label %71, !llvm.loop !111

88:                                               ; preds = %83, %64, %57
  %89 = phi i8 [ %60, %57 ], [ %60, %64 ], [ %84, %83 ]
  %90 = phi i8 [ %59, %57 ], [ %59, %64 ], [ %85, %83 ]
  %91 = load ptr, ptr %58, align 8, !tbaa !76
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %57, !llvm.loop !112

93:                                               ; preds = %88, %51
  %94 = phi i8 [ %52, %51 ], [ %89, %88 ]
  %95 = phi i8 [ %53, %51 ], [ %90, %88 ]
  %96 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !76
  %98 = icmp eq ptr %97, null
  br i1 %98, label %135, label %99

99:                                               ; preds = %93, %130
  %100 = phi ptr [ %133, %130 ], [ %97, %93 ]
  %101 = phi i8 [ %132, %130 ], [ %95, %93 ]
  %102 = phi i8 [ %131, %130 ], [ %94, %93 ]
  %103 = getelementptr inbounds %struct.Curve, ptr %100, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !113
  %105 = icmp eq ptr %104, null
  br i1 %105, label %130, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.Curve, ptr %100, i64 0, i32 22
  %108 = load i16, ptr %107, align 2, !tbaa !116
  %109 = icmp sgt i16 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = zext nneg i16 %108 to i64
  %112 = getelementptr inbounds %struct.ID, ptr %100, i64 0, i32 3
  br label %113

113:                                              ; preds = %110, %125
  %114 = phi i64 [ 0, %110 ], [ %128, %125 ]
  %115 = phi i8 [ %101, %110 ], [ %127, %125 ]
  %116 = phi i8 [ %102, %110 ], [ %126, %125 ]
  %117 = getelementptr inbounds ptr, ptr %104, i64 %114
  %118 = load ptr, ptr %117, align 8, !tbaa !76
  %119 = icmp eq ptr %118, %0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load ptr, ptr %112, align 8, !tbaa !117
  %122 = icmp eq ptr %121, null
  %123 = select i1 %122, i8 1, i8 %116
  %124 = select i1 %122, i8 %115, i8 1
  br label %125

125:                                              ; preds = %120, %113
  %126 = phi i8 [ %116, %113 ], [ %123, %120 ]
  %127 = phi i8 [ %115, %113 ], [ %124, %120 ]
  %128 = add nuw nsw i64 %114, 1
  %129 = icmp eq i64 %128, %111
  br i1 %129, label %130, label %113, !llvm.loop !118

130:                                              ; preds = %125, %106, %99
  %131 = phi i8 [ %102, %99 ], [ %102, %106 ], [ %126, %125 ]
  %132 = phi i8 [ %101, %99 ], [ %101, %106 ], [ %127, %125 ]
  %133 = load ptr, ptr %100, align 8, !tbaa !76
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %99, !llvm.loop !119

135:                                              ; preds = %130, %93
  %136 = phi i8 [ %94, %93 ], [ %131, %130 ]
  %137 = phi i8 [ %95, %93 ], [ %132, %130 ]
  %138 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 16
  %139 = load ptr, ptr %138, align 8, !tbaa !76
  %140 = icmp eq ptr %139, null
  br i1 %140, label %177, label %141

141:                                              ; preds = %135, %172
  %142 = phi ptr [ %175, %172 ], [ %139, %135 ]
  %143 = phi i8 [ %174, %172 ], [ %137, %135 ]
  %144 = phi i8 [ %173, %172 ], [ %136, %135 ]
  %145 = getelementptr inbounds %struct.MetaBall, ptr %142, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !120
  %147 = icmp eq ptr %146, null
  br i1 %147, label %172, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.MetaBall, ptr %142, i64 0, i32 9
  %150 = load i16, ptr %149, align 2, !tbaa !122
  %151 = icmp sgt i16 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %148
  %153 = zext nneg i16 %150 to i64
  %154 = getelementptr inbounds %struct.ID, ptr %142, i64 0, i32 3
  br label %155

155:                                              ; preds = %152, %167
  %156 = phi i64 [ 0, %152 ], [ %170, %167 ]
  %157 = phi i8 [ %143, %152 ], [ %169, %167 ]
  %158 = phi i8 [ %144, %152 ], [ %168, %167 ]
  %159 = getelementptr inbounds ptr, ptr %146, i64 %156
  %160 = load ptr, ptr %159, align 8, !tbaa !76
  %161 = icmp eq ptr %160, %0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load ptr, ptr %154, align 8, !tbaa !123
  %164 = icmp eq ptr %163, null
  %165 = select i1 %164, i8 1, i8 %158
  %166 = select i1 %164, i8 %157, i8 1
  br label %167

167:                                              ; preds = %162, %155
  %168 = phi i8 [ %158, %155 ], [ %165, %162 ]
  %169 = phi i8 [ %157, %155 ], [ %166, %162 ]
  %170 = add nuw nsw i64 %156, 1
  %171 = icmp eq i64 %170, %153
  br i1 %171, label %172, label %155, !llvm.loop !124

172:                                              ; preds = %167, %148, %141
  %173 = phi i8 [ %144, %141 ], [ %144, %148 ], [ %168, %167 ]
  %174 = phi i8 [ %143, %141 ], [ %143, %148 ], [ %169, %167 ]
  %175 = load ptr, ptr %142, align 8, !tbaa !76
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %141, !llvm.loop !125

177:                                              ; preds = %172, %135
  %178 = phi i8 [ %136, %135 ], [ %173, %172 ]
  %179 = phi i8 [ %137, %135 ], [ %174, %172 ]
  %180 = icmp ne i8 %178, 0
  %181 = icmp eq i8 %179, 0
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #24
  tail call fastcc void @extern_local_material(ptr noundef %0) #23
  br label %330

184:                                              ; preds = %177
  %185 = icmp ne i8 %179, 0
  %186 = select i1 %180, i1 %185, i1 false
  br i1 %186, label %187, label %330

187:                                              ; preds = %184
  %188 = tail call ptr @BKE_material_copy(ptr noundef %0) #23
  %189 = getelementptr inbounds %struct.ID, ptr %188, i64 0, i32 6
  store i32 0, ptr %189, align 4, !tbaa !97
  %190 = load ptr, ptr %3, align 8, !tbaa !96
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %190, ptr noundef %188) #24
  %191 = load ptr, ptr %12, align 8, !tbaa !76
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %225, %187
  %194 = load ptr, ptr %54, align 8, !tbaa !76
  %195 = icmp eq ptr %194, null
  br i1 %195, label %228, label %231

196:                                              ; preds = %187, %225
  %197 = phi ptr [ %226, %225 ], [ %191, %187 ]
  %198 = getelementptr inbounds %struct.Object, ptr %197, i64 0, i32 29
  %199 = load ptr, ptr %198, align 8, !tbaa !98
  %200 = icmp eq ptr %199, null
  br i1 %200, label %225, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.Object, ptr %197, i64 0, i32 31
  %203 = load i32, ptr %202, align 8, !tbaa !102
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %225

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.ID, ptr %197, i64 0, i32 3
  %207 = zext nneg i32 %203 to i64
  br label %208

208:                                              ; preds = %205, %222
  %209 = phi i64 [ 0, %205 ], [ %223, %222 ]
  %210 = load ptr, ptr %198, align 8, !tbaa !98
  %211 = getelementptr inbounds ptr, ptr %210, i64 %209
  %212 = load ptr, ptr %211, align 8, !tbaa !76
  %213 = icmp eq ptr %212, %0
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load ptr, ptr %206, align 8, !tbaa !103
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  store ptr %188, ptr %211, align 8, !tbaa !76
  %218 = load i32, ptr %189, align 4, !tbaa !97
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %189, align 4, !tbaa !97
  %220 = load i32, ptr %7, align 4, !tbaa !97
  %221 = add nsw i32 %220, -1
  store i32 %221, ptr %7, align 4, !tbaa !97
  br label %222

222:                                              ; preds = %208, %217, %214
  %223 = add nuw nsw i64 %209, 1
  %224 = icmp eq i64 %223, %207
  br i1 %224, label %225, label %208, !llvm.loop !126

225:                                              ; preds = %222, %201, %196
  %226 = load ptr, ptr %197, align 8, !tbaa !76
  %227 = icmp eq ptr %226, null
  br i1 %227, label %193, label %196, !llvm.loop !127

228:                                              ; preds = %260, %193
  %229 = load ptr, ptr %96, align 8, !tbaa !76
  %230 = icmp eq ptr %229, null
  br i1 %230, label %263, label %266

231:                                              ; preds = %193, %260
  %232 = phi ptr [ %261, %260 ], [ %194, %193 ]
  %233 = getelementptr inbounds %struct.Mesh, ptr %232, i64 0, i32 5
  %234 = load ptr, ptr %233, align 8, !tbaa !106
  %235 = icmp eq ptr %234, null
  br i1 %235, label %260, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.Mesh, ptr %232, i64 0, i32 47
  %238 = load i16, ptr %237, align 2, !tbaa !109
  %239 = icmp sgt i16 %238, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %236
  %241 = zext nneg i16 %238 to i64
  %242 = getelementptr inbounds %struct.ID, ptr %232, i64 0, i32 3
  br label %243

243:                                              ; preds = %240, %257
  %244 = phi i64 [ 0, %240 ], [ %258, %257 ]
  %245 = load ptr, ptr %233, align 8, !tbaa !106
  %246 = getelementptr inbounds ptr, ptr %245, i64 %244
  %247 = load ptr, ptr %246, align 8, !tbaa !76
  %248 = icmp eq ptr %247, %0
  br i1 %248, label %249, label %257

249:                                              ; preds = %243
  %250 = load ptr, ptr %242, align 8, !tbaa !110
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  store ptr %188, ptr %246, align 8, !tbaa !76
  %253 = load i32, ptr %189, align 4, !tbaa !97
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %189, align 4, !tbaa !97
  %255 = load i32, ptr %7, align 4, !tbaa !97
  %256 = add nsw i32 %255, -1
  store i32 %256, ptr %7, align 4, !tbaa !97
  br label %257

257:                                              ; preds = %243, %252, %249
  %258 = add nuw nsw i64 %244, 1
  %259 = icmp eq i64 %258, %241
  br i1 %259, label %260, label %243, !llvm.loop !128

260:                                              ; preds = %257, %236, %231
  %261 = load ptr, ptr %232, align 8, !tbaa !76
  %262 = icmp eq ptr %261, null
  br i1 %262, label %228, label %231, !llvm.loop !129

263:                                              ; preds = %295, %228
  %264 = load ptr, ptr %138, align 8, !tbaa !76
  %265 = icmp eq ptr %264, null
  br i1 %265, label %330, label %298

266:                                              ; preds = %228, %295
  %267 = phi ptr [ %296, %295 ], [ %229, %228 ]
  %268 = getelementptr inbounds %struct.Curve, ptr %267, i64 0, i32 10
  %269 = load ptr, ptr %268, align 8, !tbaa !113
  %270 = icmp eq ptr %269, null
  br i1 %270, label %295, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.Curve, ptr %267, i64 0, i32 22
  %273 = load i16, ptr %272, align 2, !tbaa !116
  %274 = icmp sgt i16 %273, 0
  br i1 %274, label %275, label %295

275:                                              ; preds = %271
  %276 = zext nneg i16 %273 to i64
  %277 = getelementptr inbounds %struct.ID, ptr %267, i64 0, i32 3
  br label %278

278:                                              ; preds = %275, %292
  %279 = phi i64 [ 0, %275 ], [ %293, %292 ]
  %280 = load ptr, ptr %268, align 8, !tbaa !113
  %281 = getelementptr inbounds ptr, ptr %280, i64 %279
  %282 = load ptr, ptr %281, align 8, !tbaa !76
  %283 = icmp eq ptr %282, %0
  br i1 %283, label %284, label %292

284:                                              ; preds = %278
  %285 = load ptr, ptr %277, align 8, !tbaa !117
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  store ptr %188, ptr %281, align 8, !tbaa !76
  %288 = load i32, ptr %189, align 4, !tbaa !97
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %189, align 4, !tbaa !97
  %290 = load i32, ptr %7, align 4, !tbaa !97
  %291 = add nsw i32 %290, -1
  store i32 %291, ptr %7, align 4, !tbaa !97
  br label %292

292:                                              ; preds = %278, %287, %284
  %293 = add nuw nsw i64 %279, 1
  %294 = icmp eq i64 %293, %276
  br i1 %294, label %295, label %278, !llvm.loop !130

295:                                              ; preds = %292, %271, %266
  %296 = load ptr, ptr %267, align 8, !tbaa !76
  %297 = icmp eq ptr %296, null
  br i1 %297, label %263, label %266, !llvm.loop !131

298:                                              ; preds = %263, %327
  %299 = phi ptr [ %328, %327 ], [ %264, %263 ]
  %300 = getelementptr inbounds %struct.MetaBall, ptr %299, i64 0, i32 6
  %301 = load ptr, ptr %300, align 8, !tbaa !120
  %302 = icmp eq ptr %301, null
  br i1 %302, label %327, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.MetaBall, ptr %299, i64 0, i32 9
  %305 = load i16, ptr %304, align 2, !tbaa !122
  %306 = icmp sgt i16 %305, 0
  br i1 %306, label %307, label %327

307:                                              ; preds = %303
  %308 = zext nneg i16 %305 to i64
  %309 = getelementptr inbounds %struct.ID, ptr %299, i64 0, i32 3
  br label %310

310:                                              ; preds = %307, %324
  %311 = phi i64 [ 0, %307 ], [ %325, %324 ]
  %312 = load ptr, ptr %300, align 8, !tbaa !120
  %313 = getelementptr inbounds ptr, ptr %312, i64 %311
  %314 = load ptr, ptr %313, align 8, !tbaa !76
  %315 = icmp eq ptr %314, %0
  br i1 %315, label %316, label %324

316:                                              ; preds = %310
  %317 = load ptr, ptr %309, align 8, !tbaa !123
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  store ptr %188, ptr %313, align 8, !tbaa !76
  %320 = load i32, ptr %189, align 4, !tbaa !97
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %189, align 4, !tbaa !97
  %322 = load i32, ptr %7, align 4, !tbaa !97
  %323 = add nsw i32 %322, -1
  store i32 %323, ptr %7, align 4, !tbaa !97
  br label %324

324:                                              ; preds = %310, %319, %316
  %325 = add nuw nsw i64 %311, 1
  %326 = icmp eq i64 %325, %308
  br i1 %326, label %327, label %310, !llvm.loop !132

327:                                              ; preds = %324, %303, %298
  %328 = load ptr, ptr %299, align 8, !tbaa !76
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %298, !llvm.loop !133

330:                                              ; preds = %327, %263, %183, %184, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extern_local_material(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !134 {
  br label %2

2:                                                ; preds = %1, %10
  %3 = phi i64 [ 0, %1 ], [ %11, %10 ]
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MTex, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @id_lib_extern(ptr noundef %9) #24
  br label %10

10:                                               ; preds = %2, %7
  %11 = add nuw nsw i64 %3, 1
  %12 = icmp eq i64 %11, 18
  br i1 %12, label %13, label %2, !llvm.loop !135

13:                                               ; preds = %10
  ret void
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extern_local_matarar(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = icmp sgt i16 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext nneg i16 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  tail call void @id_lib_extern(ptr noundef %9) #24
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !136

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @give_matarar(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !137
  switch i16 %3, label %16 [
    i16 1, label %4
    i16 2, label %8
    i16 4, label %8
    i16 3, label %8
    i16 5, label %12
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 5
  br label %16

8:                                                ; preds = %1, %1, %1
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 10
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !138
  %15 = getelementptr inbounds %struct.MetaBall, ptr %14, i64 0, i32 6
  br label %16

16:                                               ; preds = %1, %12, %8, %4
  %17 = phi ptr [ %7, %4 ], [ %11, %8 ], [ %15, %12 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @give_totcolp(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !137
  switch i16 %3, label %16 [
    i16 1, label %4
    i16 2, label %8
    i16 4, label %8
    i16 3, label %8
    i16 5, label %12
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 47
  br label %16

8:                                                ; preds = %1, %1, %1
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 22
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !138
  %15 = getelementptr inbounds %struct.MetaBall, ptr %14, i64 0, i32 9
  br label %16

16:                                               ; preds = %1, %12, %8, %4
  %17 = phi ptr [ %7, %4 ], [ %11, %8 ], [ %15, %12 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @give_matarar_id(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !50
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @give_totcolp_id(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !50
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_material_resize_id(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call ptr @give_matarar_id(ptr noundef %0) #23
  %5 = tail call ptr @give_totcolp_id(ptr noundef %0) #23
  %6 = icmp eq ptr %4, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = load i16, ptr %5, align 2, !tbaa !50
  %11 = icmp sgt i16 %10, %1
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = sext i16 %1 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %13, %12 ], [ %19, %14 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  tail call void @id_us_min(ptr noundef %18) #24
  %19 = add nsw i64 %15, 1
  %20 = load i16, ptr %5, align 2, !tbaa !50
  %21 = sext i16 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %14, label %23, !llvm.loop !139

23:                                               ; preds = %14, %9, %7
  %24 = icmp eq i16 %1, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load i16, ptr %5, align 2, !tbaa !50
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %30 = load ptr, ptr %4, align 8, !tbaa !76
  tail call void %29(ptr noundef %30) #24
  br label %37

31:                                               ; preds = %23
  %32 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !76
  %33 = load ptr, ptr %4, align 8, !tbaa !76
  %34 = sext i16 %1 to i64
  %35 = shl nsw i64 %34, 3
  %36 = tail call ptr %32(ptr noundef %33, i64 noundef %35, ptr noundef nonnull @__func__.BKE_material_resize_id) #24
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi ptr [ null, %28 ], [ %36, %31 ]
  store ptr %38, ptr %4, align 8, !tbaa !76
  br label %39

39:                                               ; preds = %37, %25
  store i16 %1, ptr %5, align 2, !tbaa !50
  br label %40

40:                                               ; preds = %3, %39
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_material_append_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @give_matarar_id(ptr noundef %0) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @give_totcolp_id(ptr noundef %0) #23
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %8 = load i16, ptr %6, align 2, !tbaa !50
  %9 = sext i16 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = add nsw i64 %10, 8
  %12 = tail call ptr %7(i64 noundef %11, ptr noundef nonnull @.str.1) #24
  %13 = load i16, ptr %6, align 2, !tbaa !50
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %3, align 8, !tbaa !76
  %17 = sext i16 %13 to i64
  %18 = shl nsw i64 %17, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %16, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %15, %5
  %20 = load ptr, ptr %3, align 8, !tbaa !76
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %23(ptr noundef nonnull %20) #24
  br label %24

24:                                               ; preds = %22, %19
  store ptr %12, ptr %3, align 8, !tbaa !76
  %25 = load i16, ptr %6, align 2, !tbaa !50
  %26 = add i16 %25, 1
  store i16 %26, ptr %6, align 2, !tbaa !50
  %27 = sext i16 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %12, i64 %27
  store ptr %1, ptr %28, align 8, !tbaa !76
  tail call void @id_us_plus(ptr noundef %1) #24
  %29 = load ptr, ptr @G, align 8, !tbaa !94
  tail call void @test_object_materials(ptr noundef %29, ptr noundef %0) #23
  br label %30

30:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @test_object_materials(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @give_totcolp_id(ptr noundef nonnull %1) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  tail call void @BKE_main_lock(ptr noundef %0) #24
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !138
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i16, ptr %5, align 2, !tbaa !50
  tail call void @BKE_material_resize_object(ptr noundef nonnull %12, i16 noundef signext %17, i8 noundef zeroext 0) #23
  br label %18

18:                                               ; preds = %11, %16
  %19 = load ptr, ptr %12, align 8, !tbaa !76
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !140

21:                                               ; preds = %18, %7
  tail call void @BKE_main_unlock(ptr noundef %0) #24
  br label %22

22:                                               ; preds = %2, %4, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_material_pop_id(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = trunc i32 %1 to i16
  %5 = tail call ptr @give_matarar_id(ptr noundef %0) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @give_totcolp_id(ptr noundef %0) #23
  %9 = shl i32 %1, 16
  %10 = ashr exact i32 %9, 16
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %52

12:                                               ; preds = %7
  %13 = load i16, ptr %8, align 2, !tbaa !50
  %14 = sext i16 %13 to i32
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !76
  %18 = sext i16 %4 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  tail call void @id_us_min(ptr noundef %20) #24
  %21 = load i16, ptr %8, align 2, !tbaa !50
  %22 = sext i16 %21 to i32
  %23 = icmp slt i16 %21, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  store i16 0, ptr %8, align 2, !tbaa !50
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %26 = load ptr, ptr %5, align 8, !tbaa !76
  tail call void %25(ptr noundef %26) #24
  store ptr null, ptr %5, align 8, !tbaa !76
  br label %49

27:                                               ; preds = %16
  %28 = add nuw nsw i32 %10, 1
  %29 = icmp eq i32 %28, %22
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 8, !tbaa !76
  %32 = zext nneg i32 %10 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = zext nneg i32 %28 to i64
  %35 = getelementptr inbounds ptr, ptr %31, i64 %34
  %36 = sub nsw i32 %22, %28
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %33, ptr nonnull align 8 %35, i64 %38, i1 false)
  %39 = load i16, ptr %8, align 2, !tbaa !50
  br label %40

40:                                               ; preds = %30, %27
  %41 = phi i16 [ %39, %30 ], [ %21, %27 ]
  %42 = add i16 %41, -1
  store i16 %42, ptr %8, align 2, !tbaa !50
  %43 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !76
  %44 = load ptr, ptr %5, align 8, !tbaa !76
  %45 = sext i16 %42 to i64
  %46 = shl nsw i64 %45, 3
  %47 = tail call ptr %43(ptr noundef %44, i64 noundef %46, ptr noundef nonnull @__func__.BKE_material_pop_id) #24
  store ptr %47, ptr %5, align 8, !tbaa !76
  %48 = load ptr, ptr @G, align 8, !tbaa !94
  tail call void @test_object_materials(ptr noundef %48, ptr noundef %0) #23
  br label %49

49:                                               ; preds = %40, %24
  %50 = icmp eq i8 %2, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call fastcc void @material_data_index_remove_id(ptr noundef %0, i16 noundef signext %4) #23
  br label %52

52:                                               ; preds = %7, %12, %51, %49, %3
  %53 = phi ptr [ null, %3 ], [ %20, %51 ], [ %20, %49 ], [ null, %12 ], [ null, %7 ]
  ret ptr %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @material_data_index_remove_id(ptr noundef %0, i16 noundef signext %1) unnamed_addr #2 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !50
  switch i16 %4, label %8 [
    i16 17741, label %5
    i16 21827, label %6
  ]

5:                                                ; preds = %2
  tail call void @BKE_mesh_material_index_remove(ptr noundef nonnull %0, i16 noundef signext %1) #24
  br label %8

6:                                                ; preds = %2
  %7 = sext i16 %1 to i32
  tail call void @BKE_curve_material_index_remove(ptr noundef nonnull %0, i32 noundef %7) #24
  br label %8

8:                                                ; preds = %2, %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_material_clear_id(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = tail call ptr @give_matarar_id(ptr noundef %0) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @give_totcolp_id(ptr noundef %0) #23
  store i16 0, ptr %6, align 2, !tbaa !50
  %7 = load ptr, ptr %3, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %10(ptr noundef nonnull %7) #24
  store ptr null, ptr %3, align 8, !tbaa !76
  br label %11

11:                                               ; preds = %9, %5
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call fastcc void @material_data_index_clear_id(ptr noundef %0) #23
  br label %14

14:                                               ; preds = %11, %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @material_data_index_clear_id(ptr noundef %0) unnamed_addr #2 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !50
  switch i16 %3, label %6 [
    i16 17741, label %4
    i16 21827, label %5
  ]

4:                                                ; preds = %1
  tail call void @BKE_mesh_material_index_clear(ptr noundef nonnull %0) #24
  br label %6

5:                                                ; preds = %1
  tail call void @BKE_curve_material_index_clear(ptr noundef nonnull %0) #24
  br label %6

6:                                                ; preds = %1, %5, %4
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @give_current_material(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @give_totcolp(ptr noundef nonnull %0) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %9 = load i32, ptr %8, align 8, !tbaa !102
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %7
  %12 = sext i16 %1 to i32
  %13 = icmp slt i16 %1, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %55

16:                                               ; preds = %11
  %17 = icmp slt i32 %9, %12
  %18 = icmp eq i16 %1, 0
  %19 = or i1 %18, %17
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = add nsw i32 %12, -1
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %22, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !144
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = getelementptr inbounds ptr, ptr %32, i64 %26
  %34 = load ptr, ptr %33, align 8, !tbaa !76
  br label %55

35:                                               ; preds = %24, %20
  %36 = load i16, ptr %5, align 2, !tbaa !50
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i32 %9, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 %37, ptr %8, align 8, !tbaa !102
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %37, %39 ], [ %9, %35 ]
  %42 = icmp slt i32 %41, %12
  %43 = trunc i32 %41 to i16
  %44 = select i1 %42, i16 %43, i16 %1
  %45 = tail call ptr @give_matarar(ptr noundef nonnull %0) #23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %45, align 8, !tbaa !76
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = sext i16 %44 to i64
  %52 = getelementptr ptr, ptr %48, i64 %51
  %53 = getelementptr ptr, ptr %52, i64 -1
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  br label %55

55:                                               ; preds = %14, %30, %50, %47, %40, %16, %4, %7, %2
  %56 = phi ptr [ null, %2 ], [ null, %7 ], [ null, %4 ], [ null, %16 ], [ %34, %30 ], [ %54, %50 ], [ null, %47 ], [ null, %40 ], [ null, %14 ]
  ret ptr %56
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @material_from(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !102
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i16 @llvm.umax.i16(i16 %1, i16 1)
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = sext i16 %9 to i64
  %13 = getelementptr i8, ptr %11, i64 %12
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !144
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8, %4
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  br label %20

20:                                               ; preds = %17, %8, %2
  %21 = phi ptr [ null, %2 ], [ %0, %8 ], [ %19, %17 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @give_node_material(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !145
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 16717) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  br label %17

17:                                               ; preds = %11, %1, %3, %7, %14
  %18 = phi ptr [ %16, %14 ], [ null, %7 ], [ null, %3 ], [ null, %1 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @nodeGetActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_material_resize_object(ptr nocapture noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = icmp eq i8 %2, 0
  %5 = sext i16 %1 to i32
  br i1 %4, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !102
  %9 = icmp sgt i32 %8, %5
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i16 [ %1, %10 ], [ %18, %12 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !98
  %15 = sext i16 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  tail call void @id_us_min(ptr noundef %17) #24
  %18 = add i16 %13, 1
  %19 = sext i16 %18 to i32
  %20 = load i32, ptr %7, align 8, !tbaa !102
  %21 = icmp sgt i32 %20, %19
  br i1 %21, label %12, label %22, !llvm.loop !149

22:                                               ; preds = %12, %3, %6
  %23 = icmp eq i16 %1, 0
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %25 = load i32, ptr %24, align 8, !tbaa !102
  br i1 %23, label %26, label %35

26:                                               ; preds = %22
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  tail call void %29(ptr noundef %31) #24
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %34 = load ptr, ptr %33, align 8, !tbaa !143
  tail call void %32(ptr noundef %34) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %62

35:                                               ; preds = %22
  %36 = icmp slt i32 %25, %5
  br i1 %36, label %37, label %65

37:                                               ; preds = %35
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %39 = sext i16 %1 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.1) #24
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %43 = tail call ptr %42(i64 noundef %39, ptr noundef nonnull @.str.3) #24
  %44 = load i32, ptr %24, align 8, !tbaa !102
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  %49 = sext i32 %44 to i64
  %50 = shl nsw i64 %49, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %41, ptr align 8 %48, i64 %50, i1 false)
  %51 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %52 = load ptr, ptr %51, align 8, !tbaa !143
  %53 = load i32, ptr %24, align 8, !tbaa !102
  %54 = sext i32 %53 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr align 1 %52, i64 %54, i1 false)
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %56 = load ptr, ptr %47, align 8, !tbaa !98
  tail call void %55(ptr noundef %56) #24
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %58 = load ptr, ptr %51, align 8, !tbaa !143
  tail call void %57(ptr noundef %58) #24
  br label %59

59:                                               ; preds = %46, %37
  %60 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  store ptr %41, ptr %60, align 8, !tbaa !98
  %61 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  store ptr %43, ptr %61, align 8, !tbaa !143
  br label %65

62:                                               ; preds = %26, %28
  store i32 %5, ptr %24, align 8, !tbaa !102
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %64 = load i32, ptr %63, align 4, !tbaa !150
  br label %70

65:                                               ; preds = %59, %35
  store i32 %5, ptr %24, align 8, !tbaa !102
  %66 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %67 = load i32, ptr %66, align 4, !tbaa !150
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, ptr %66, align 4, !tbaa !150
  br label %70

70:                                               ; preds = %62, %69, %65
  %71 = phi i32 [ %64, %62 ], [ 1, %69 ], [ %67, %65 ]
  %72 = icmp sgt i32 %71, %5
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  store i32 %5, ptr %74, align 4, !tbaa !150
  br label %75

75:                                               ; preds = %73, %70
  ret void
}

; Function Attrs: optsize
declare void @BKE_main_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_main_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assign_material_id(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = icmp eq i16 %2, 32767
  br i1 %4, label %50, label %5

5:                                                ; preds = %3
  %6 = tail call i16 @llvm.smax.i16(i16 %2, i16 1)
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %5
  %11 = tail call ptr @give_totcolp_id(ptr noundef nonnull %0) #23
  %12 = tail call ptr @give_matarar_id(ptr noundef nonnull %0) #23
  %13 = icmp eq ptr %11, null
  %14 = icmp eq ptr %12, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %50, label %16

16:                                               ; preds = %10
  %17 = zext nneg i16 %6 to i64
  %18 = load i16, ptr %11, align 2, !tbaa !50
  %19 = icmp sgt i16 %6, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %12, align 8, !tbaa !76
  br label %35

22:                                               ; preds = %16
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %24 = shl nuw nsw i64 %17, 3
  %25 = tail call ptr %23(i64 noundef %24, ptr noundef nonnull @.str.4) #24
  %26 = load i16, ptr %11, align 2, !tbaa !50
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %12, align 8, !tbaa !76
  %30 = sext i16 %26 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 8 %29, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %33 = load ptr, ptr %12, align 8, !tbaa !76
  tail call void %32(ptr noundef %33) #24
  br label %34

34:                                               ; preds = %28, %22
  store ptr %25, ptr %12, align 8, !tbaa !76
  store i16 %6, ptr %11, align 2, !tbaa !50
  br label %35

35:                                               ; preds = %20, %34
  %36 = phi ptr [ %21, %20 ], [ %25, %34 ]
  %37 = getelementptr ptr, ptr %36, i64 %17
  %38 = getelementptr ptr, ptr %37, i64 -1
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !97
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !97
  br label %45

45:                                               ; preds = %41, %35
  store ptr %1, ptr %38, align 8, !tbaa !76
  %46 = icmp eq ptr %1, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @id_us_plus(ptr noundef nonnull %1) #24
  br label %48

48:                                               ; preds = %47, %45
  %49 = load ptr, ptr @G, align 8, !tbaa !94
  tail call void @test_object_materials(ptr noundef %49, ptr noundef nonnull %0) #23
  br label %50

50:                                               ; preds = %10, %5, %3, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assign_material(ptr nocapture noundef %0, ptr noundef %1, i16 noundef signext %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i16 %2, 32767
  br i1 %5, label %107, label %6

6:                                                ; preds = %4
  %7 = tail call i16 @llvm.smax.i16(i16 %2, i16 1)
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %107

11:                                               ; preds = %6
  %12 = tail call ptr @give_totcolp(ptr noundef nonnull %0) #23
  %13 = tail call ptr @give_matarar(ptr noundef nonnull %0) #23
  %14 = icmp eq ptr %12, null
  %15 = icmp eq ptr %13, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %107, label %17

17:                                               ; preds = %11
  %18 = zext nneg i16 %7 to i32
  %19 = load i16, ptr %12, align 2, !tbaa !50
  %20 = icmp sgt i16 %7, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %23 = zext nneg i16 %7 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.4) #24
  %26 = load i16, ptr %12, align 2, !tbaa !50
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %13, align 8, !tbaa !76
  %30 = sext i16 %26 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 8 %29, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %33 = load ptr, ptr %13, align 8, !tbaa !76
  tail call void %32(ptr noundef %33) #24
  br label %34

34:                                               ; preds = %28, %21
  store ptr %25, ptr %13, align 8, !tbaa !76
  store i16 %7, ptr %12, align 2, !tbaa !50
  br label %35

35:                                               ; preds = %34, %17
  switch i32 %3, label %52 [
    i32 0, label %36
    i32 1, label %57
    i32 2, label %51
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %38 = load i32, ptr %37, align 8, !tbaa !102
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %42 = load i32, ptr %41, align 4, !tbaa !150
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %46 = load ptr, ptr %45, align 8, !tbaa !143
  %47 = sext i32 %42 to i64
  %48 = getelementptr i8, ptr %46, i64 %47
  %49 = getelementptr i8, ptr %48, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !144
  br label %57

51:                                               ; preds = %35
  br label %57

52:                                               ; preds = %36, %40, %35
  %53 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !152
  %54 = lshr i32 %53, 8
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  br label %57

57:                                               ; preds = %35, %51, %52, %44
  %58 = phi i8 [ %50, %44 ], [ %56, %52 ], [ 1, %51 ], [ 0, %35 ]
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %60 = load i32, ptr %59, align 8, !tbaa !102
  %61 = icmp slt i32 %60, %18
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %64 = load ptr, ptr %63, align 8, !tbaa !143
  br label %76

65:                                               ; preds = %57
  %66 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !76
  %67 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %68 = load ptr, ptr %67, align 8, !tbaa !98
  %69 = zext nneg i16 %7 to i64
  %70 = shl nuw nsw i64 %69, 3
  %71 = tail call ptr %66(ptr noundef %68, i64 noundef %70, ptr noundef nonnull @.str.5) #24
  store ptr %71, ptr %67, align 8, !tbaa !98
  %72 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !76
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %74 = load ptr, ptr %73, align 8, !tbaa !143
  %75 = tail call ptr %72(ptr noundef %74, i64 noundef %69, ptr noundef nonnull @.str.6) #24
  store ptr %75, ptr %73, align 8, !tbaa !143
  store i32 %18, ptr %59, align 8, !tbaa !102
  br label %76

76:                                               ; preds = %62, %65
  %77 = phi ptr [ %64, %62 ], [ %75, %65 ]
  %78 = add nsw i32 %18, -1
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  store i8 %58, ptr %80, align 1, !tbaa !144
  %81 = icmp eq i8 %58, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %84 = load ptr, ptr %83, align 8, !tbaa !98
  %85 = getelementptr inbounds ptr, ptr %84, i64 %79
  %86 = load ptr, ptr %85, align 8, !tbaa !76
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %93

88:                                               ; preds = %76
  %89 = load ptr, ptr %13, align 8, !tbaa !76
  %90 = getelementptr inbounds ptr, ptr %89, i64 %79
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %88, %82
  %94 = phi ptr [ %86, %82 ], [ %91, %88 ]
  %95 = phi ptr [ %85, %82 ], [ %90, %88 ]
  %96 = getelementptr inbounds %struct.ID, ptr %94, i64 0, i32 6
  %97 = load i32, ptr %96, align 4, !tbaa !97
  %98 = add nsw i32 %97, -1
  store i32 %98, ptr %96, align 4, !tbaa !97
  br label %99

99:                                               ; preds = %93, %88, %82
  %100 = phi ptr [ %85, %82 ], [ %90, %88 ], [ %95, %93 ]
  store ptr %1, ptr %100, align 8, !tbaa !76
  %101 = icmp eq ptr %1, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call void @id_us_plus(ptr noundef nonnull %1) #24
  br label %103

103:                                              ; preds = %102, %99
  %104 = load ptr, ptr @G, align 8, !tbaa !94
  %105 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %106 = load ptr, ptr %105, align 8, !tbaa !138
  tail call void @test_object_materials(ptr noundef %104, ptr noundef %106) #23
  br label %107

107:                                              ; preds = %11, %6, %4, %103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assign_matarar(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %5 = load i32, ptr %4, align 4, !tbaa !150
  br label %6

6:                                                ; preds = %6, %3
  %7 = tail call zeroext i8 @object_remove_material_slot(ptr noundef %0) #23, !range !156
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %6, !llvm.loop !157

9:                                                ; preds = %6
  %10 = icmp sgt i16 %2, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = zext nneg i16 %2 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  %15 = load ptr, ptr %1, align 8, !tbaa !76
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = add nuw nsw i64 %14, 1
  %19 = trunc i64 %18 to i16
  tail call void @assign_material(ptr noundef %0, ptr noundef %17, i16 noundef signext %19, i32 noundef 0) #23
  %20 = icmp eq i64 %18, %12
  br i1 %20, label %21, label %13, !llvm.loop !158

21:                                               ; preds = %13, %9
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %23 = load i32, ptr %22, align 8, !tbaa !102
  %24 = tail call i32 @llvm.smin.i32(i32 %5, i32 %23)
  store i32 %24, ptr %4, align 4, !tbaa !150
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @object_remove_material_slot(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %142, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !102
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %142, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %9 = load i32, ptr %8, align 4, !tbaa !150
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @__func__.object_remove_material_slot, i32 noundef %9) #23
  br label %142

13:                                               ; preds = %7
  %14 = tail call ptr @give_totcolp(ptr noundef nonnull %0) #23
  %15 = tail call ptr @give_matarar(ptr noundef nonnull %0) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %142, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %142, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i32 %9, %5
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  store i32 %5, ptr %8, align 4, !tbaa !150
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %5, %22 ], [ %9, %20 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr ptr, ptr %18, i64 %25
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !97
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %31, align 4, !tbaa !97
  br label %34

34:                                               ; preds = %30, %23
  %35 = trunc i32 %24 to i16
  %36 = shl i32 %24, 16
  %37 = ashr exact i32 %36, 16
  %38 = icmp sgt i32 %5, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34, %39
  %40 = phi i16 [ %46, %39 ], [ %35, %34 ]
  %41 = load ptr, ptr %15, align 8, !tbaa !76
  %42 = sext i16 %40 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = getelementptr ptr, ptr %43, i64 -1
  store ptr %44, ptr %45, align 8, !tbaa !76
  %46 = add i16 %40, 1
  %47 = sext i16 %46 to i32
  %48 = icmp sgt i32 %5, %47
  br i1 %48, label %39, label %49, !llvm.loop !159

49:                                               ; preds = %39, %34
  %50 = load i16, ptr %14, align 2, !tbaa !50
  %51 = add i16 %50, -1
  store i16 %51, ptr %14, align 2, !tbaa !50
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %55 = load ptr, ptr %15, align 8, !tbaa !76
  tail call void %54(ptr noundef %55) #24
  store ptr null, ptr %15, align 8, !tbaa !76
  %56 = load i32, ptr %8, align 4, !tbaa !150
  %57 = trunc i32 %56 to i16
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i16 [ %57, %53 ], [ %35, %49 ]
  %60 = phi i32 [ %56, %53 ], [ %24, %49 ]
  %61 = load ptr, ptr @G, align 8, !tbaa !94
  %62 = getelementptr inbounds %struct.Main, ptr %61, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = icmp eq ptr %63, null
  br i1 %64, label %129, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %67 = shl i32 %60, 16
  %68 = ashr exact i32 %67, 16
  %69 = sext i32 %68 to i64
  br label %70

70:                                               ; preds = %65, %126
  %71 = phi ptr [ %63, %65 ], [ %127, %126 ]
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !138
  %74 = load ptr, ptr %66, align 8, !tbaa !138
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 29
  %78 = load ptr, ptr %77, align 8, !tbaa !98
  %79 = getelementptr ptr, ptr %78, i64 %69
  %80 = getelementptr ptr, ptr %79, i64 -1
  %81 = load ptr, ptr %80, align 8, !tbaa !76
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.ID, ptr %81, i64 0, i32 6
  %85 = load i32, ptr %84, align 4, !tbaa !97
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %84, align 4, !tbaa !97
  br label %87

87:                                               ; preds = %83, %76
  %88 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 31
  %89 = load i32, ptr %88, align 8, !tbaa !102
  %90 = icmp sgt i32 %89, %68
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 30
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i32 [ %68, %91 ], [ %108, %93 ]
  %95 = phi i16 [ %59, %91 ], [ %107, %93 ]
  %96 = load ptr, ptr %77, align 8, !tbaa !98
  %97 = sext i16 %95 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !76
  %100 = add nsw i32 %94, -1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %96, i64 %101
  store ptr %99, ptr %102, align 8, !tbaa !76
  %103 = load ptr, ptr %92, align 8, !tbaa !143
  %104 = getelementptr inbounds i8, ptr %103, i64 %97
  %105 = load i8, ptr %104, align 1, !tbaa !144
  %106 = getelementptr inbounds i8, ptr %103, i64 %101
  store i8 %105, ptr %106, align 1, !tbaa !144
  %107 = add i16 %95, 1
  %108 = sext i16 %107 to i32
  %109 = load i32, ptr %88, align 8, !tbaa !102
  %110 = icmp sgt i32 %109, %108
  br i1 %110, label %93, label %111, !llvm.loop !160

111:                                              ; preds = %93, %87
  %112 = phi i32 [ %89, %87 ], [ %109, %93 ]
  %113 = add nsw i32 %112, -1
  store i32 %113, ptr %88, align 8, !tbaa !102
  %114 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 32
  %115 = load i32, ptr %114, align 4, !tbaa !150
  %116 = icmp slt i32 %115, %112
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  store i32 %113, ptr %114, align 4, !tbaa !150
  br label %118

118:                                              ; preds = %117, %111
  %119 = icmp eq i32 %113, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %122 = load ptr, ptr %77, align 8, !tbaa !98
  tail call void %121(ptr noundef %122) #24
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %124 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 30
  %125 = load ptr, ptr %124, align 8, !tbaa !143
  tail call void %123(ptr noundef %125) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  br label %126

126:                                              ; preds = %118, %120, %70
  %127 = load ptr, ptr %71, align 8, !tbaa !76
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %70, !llvm.loop !161

129:                                              ; preds = %126, %58
  %130 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %131 = load i16, ptr %130, align 8, !tbaa !137
  %132 = add i16 %131, -1
  %133 = icmp ult i16 %132, 4
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %136 = load ptr, ptr %135, align 8, !tbaa !138
  %137 = add i16 %59, -1
  tail call fastcc void @material_data_index_remove_id(ptr noundef %136, i16 noundef signext %137) #23
  %138 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %139 = load ptr, ptr %138, align 8, !tbaa !162
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  tail call void @BKE_displist_free(ptr noundef nonnull %139) #24
  br label %142

142:                                              ; preds = %129, %141, %134, %13, %17, %1, %3, %11
  %143 = phi i8 [ 0, %11 ], [ 0, %3 ], [ 0, %1 ], [ 0, %17 ], [ 0, %13 ], [ 1, %129 ], [ 1, %134 ], [ 1, %141 ]
  ret i8 %143
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @find_material_index(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @give_totcolp(ptr noundef %0) #23
  %6 = tail call ptr @give_matarar(ptr noundef %0) #23
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %31, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %5, align 2, !tbaa !50
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8, !tbaa !76
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %31, label %22

17:                                               ; preds = %22
  %18 = zext nneg i16 %24 to i64
  %19 = getelementptr inbounds ptr, ptr %14, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %26, label %22, !llvm.loop !163

22:                                               ; preds = %13, %17
  %23 = phi i16 [ %24, %17 ], [ 0, %13 ]
  %24 = add nuw nsw i16 %23, 1
  %25 = icmp eq i16 %24, %11
  br i1 %25, label %26, label %17, !llvm.loop !163

26:                                               ; preds = %17, %22
  %27 = phi i16 [ %11, %22 ], [ %24, %17 ]
  %28 = icmp slt i16 %24, %11
  %29 = add nuw i16 %27, 1
  %30 = select i1 %28, i16 %29, i16 0
  br label %31

31:                                               ; preds = %13, %26, %10, %4, %2
  %32 = phi i16 [ 0, %2 ], [ 0, %4 ], [ 0, %10 ], [ 1, %13 ], [ %30, %26 ]
  ret i16 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @object_add_material_slot(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !102
  %6 = icmp sgt i32 %5, 32765
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = trunc i32 %5 to i16
  %9 = add i16 %8, 1
  tail call void @assign_material(ptr noundef nonnull %0, ptr noundef null, i16 noundef signext %9, i32 noundef 0) #23
  %10 = load i32, ptr %4, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  store i32 %10, ptr %11, align 4, !tbaa !150
  br label %12

12:                                               ; preds = %3, %1, %7
  %13 = phi i8 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_render_material(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  tail call fastcc void @do_init_render_material(ptr noundef %0, i32 noundef %1, ptr noundef %2) #23
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %9 = load i8, ptr %8, align 1, !tbaa !145
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = and i32 %13, 42148673
  %15 = or disjoint i32 %14, 4
  %16 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 52
  store i32 %15, ptr %16, align 8, !tbaa !164
  %17 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 53
  %18 = load i32, ptr %17, align 4, !tbaa !73
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 54
  store i32 %19, ptr %20, align 8, !tbaa !165
  %21 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 90
  tail call void @ntreeShaderGetTexcoMode(ptr noundef nonnull %5, i32 noundef %1, ptr noundef nonnull %21, ptr noundef nonnull %16) #24
  %22 = load ptr, ptr %4, align 8, !tbaa !87
  tail call fastcc void @init_render_nodetree(ptr noundef %22, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #23
  %23 = load ptr, ptr %4, align 8, !tbaa !87
  %24 = getelementptr inbounds %struct.bNodeTree, ptr %23, i64 0, i32 27
  %25 = load ptr, ptr %24, align 8, !tbaa !166
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %11
  %28 = tail call ptr @ntreeShaderBeginExecTree(ptr noundef nonnull %23) #24
  %29 = load ptr, ptr %4, align 8, !tbaa !87
  %30 = getelementptr inbounds %struct.bNodeTree, ptr %29, i64 0, i32 27
  store ptr %28, ptr %30, align 8, !tbaa !166
  br label %43

31:                                               ; preds = %7, %3
  %32 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %33 = load i32, ptr %32, align 4, !tbaa !72
  %34 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 52
  store i32 %33, ptr %34, align 8, !tbaa !164
  %35 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 53
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 54
  store i32 %36, ptr %37, align 8, !tbaa !165
  %38 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 66
  %39 = load float, ptr %38, align 8, !tbaa !169
  %40 = fcmp ogt float %39, 0.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = or i32 %33, -2147483648
  store i32 %42, ptr %34, align 8, !tbaa !164
  br label %43

43:                                               ; preds = %31, %41, %11, %27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_init_render_material(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #12 !PGOFuncName !170 {
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 55
  %5 = load i16, ptr %4, align 4, !tbaa !171
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i16 1, ptr %4, align 4, !tbaa !171
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  %10 = load i32, ptr %9, align 8, !tbaa !172
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 90
  br label %12

12:                                               ; preds = %8, %70
  %13 = phi i64 [ 0, %8 ], [ %73, %70 ]
  %14 = phi i32 [ 0, %8 ], [ %72, %70 ]
  %15 = phi i32 [ 0, %8 ], [ %71, %70 ]
  %16 = trunc i64 %13 to i32
  %17 = shl nuw nsw i32 1, %16
  %18 = and i32 %10, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %13
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  br i1 %23, label %70, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = icmp eq ptr %26, null
  br i1 %27, label %70, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Tex, ptr %26, i64 0, i32 32
  %30 = load i16, ptr %29, align 8, !tbaa !173
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.Tex, ptr %26, i64 0, i32 61
  %33 = load i8, ptr %32, align 8, !tbaa !174
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.Tex, ptr %26, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !175
  %38 = icmp ne ptr %37, null
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i1 [ false, %28 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = or i32 %41, %31
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %39
  %45 = load <2 x i16>, ptr %22, align 8, !tbaa !50
  %46 = load <2 x i16>, ptr %11, align 4, !tbaa !50
  %47 = or <2 x i16> %46, %45
  store <2 x i16> %47, ptr %11, align 4, !tbaa !50
  switch i16 %30, label %48 [
    i16 8, label %54
    i16 10, label %54
  ]

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 14
  %50 = load i16, ptr %49, align 8, !tbaa !176
  %51 = and i16 %50, 9088
  %52 = icmp eq i16 %51, 0
  %53 = extractelement <2 x i16> %47, i64 0
  br i1 %52, label %57, label %54

54:                                               ; preds = %48, %44, %44
  %55 = extractelement <2 x i16> %47, i64 0
  %56 = or i16 %55, 512
  store i16 %56, ptr %11, align 4, !tbaa !177
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i16 [ %53, %48 ], [ %56, %54 ]
  %59 = and i16 %58, -7937
  %60 = icmp eq i16 %59, 0
  %61 = select i1 %60, i32 %15, i32 1
  %62 = extractelement <2 x i16> %47, i64 1
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 18
  %67 = load i16, ptr %66, align 8, !tbaa !178
  %68 = icmp eq i16 %67, 3
  %69 = select i1 %68, i32 1, i32 %14
  br label %70

70:                                               ; preds = %65, %20, %24, %39, %57, %12
  %71 = phi i32 [ %15, %12 ], [ %61, %57 ], [ %15, %39 ], [ %15, %24 ], [ %15, %20 ], [ %61, %65 ]
  %72 = phi i32 [ %14, %12 ], [ %14, %57 ], [ %14, %39 ], [ %14, %24 ], [ %14, %20 ], [ %69, %65 ]
  %73 = add nuw nsw i64 %13, 1
  %74 = icmp eq i64 %73, 18
  br i1 %74, label %75, label %12, !llvm.loop !179

75:                                               ; preds = %70
  %76 = icmp eq i32 %72, 0
  %77 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %78 = load i32, ptr %77, align 4, !tbaa !72
  %79 = and i32 %78, -134217729
  %80 = select i1 %76, i32 0, i32 134217728
  %81 = or disjoint i32 %79, %80
  store i32 %81, ptr %77, align 4, !tbaa !72
  %82 = and i32 %78, 2192
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %75
  %85 = load i16, ptr %11, align 4, !tbaa !177
  %86 = trunc i32 %1 to i16
  %87 = shl i16 %86, 9
  %88 = and i16 %87, 512
  %89 = or i16 %85, %88
  br label %94

90:                                               ; preds = %75
  %91 = icmp eq i32 %71, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %90
  %93 = load i16, ptr %11, align 4, !tbaa !177
  br label %94

94:                                               ; preds = %84, %92
  %95 = phi i16 [ %93, %92 ], [ %89, %84 ]
  %96 = or i16 %95, 2048
  store i16 %96, ptr %11, align 4, !tbaa !177
  br label %97

97:                                               ; preds = %94, %90
  %98 = and i32 %1, 65536
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %97
  %101 = and i32 %78, 786432
  %102 = icmp ne i32 %101, 0
  %103 = and i32 %78, 196608
  %104 = icmp eq i32 %103, 196608
  %105 = or i1 %102, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i16, ptr %11, align 4, !tbaa !177
  %108 = or i16 %107, 2055
  store i16 %108, ptr %11, align 4, !tbaa !177
  %109 = and i32 %1, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = or i16 %107, 2567
  store i16 %112, ptr %11, align 4, !tbaa !177
  br label %113

113:                                              ; preds = %100, %111, %106, %97
  %114 = icmp eq ptr %2, null
  br i1 %114, label %129, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 16
  %117 = load float, ptr %116, align 4, !tbaa !47
  %118 = load float, ptr %2, align 4, !tbaa !34
  %119 = fmul float %117, %118
  %120 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 13
  store float %119, ptr %120, align 8, !tbaa !180
  %121 = getelementptr inbounds float, ptr %2, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = fmul float %117, %122
  %124 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 15
  store float %123, ptr %124, align 8, !tbaa !181
  %125 = getelementptr inbounds float, ptr %2, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = fmul float %117, %126
  %128 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 14
  store float %127, ptr %128, align 4, !tbaa !182
  br label %129

129:                                              ; preds = %115, %113
  %130 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 50
  %131 = load i16, ptr %130, align 2, !tbaa !74
  %132 = and i16 %131, 8
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %167, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !96
  %137 = icmp eq ptr %136, null
  br i1 %137, label %167, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 105
  %140 = load ptr, ptr %139, align 8, !tbaa !90
  %141 = icmp eq ptr %140, null
  br i1 %141, label %167, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ID, ptr %140, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !183
  %145 = icmp eq ptr %144, null
  br i1 %145, label %167, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr @G, align 8, !tbaa !94
  %148 = getelementptr inbounds %struct.Main, ptr %147, i64 0, i32 32
  %149 = load ptr, ptr %148, align 8, !tbaa !76
  %150 = icmp eq ptr %149, null
  br i1 %150, label %167, label %151

151:                                              ; preds = %146, %163
  %152 = phi ptr [ %164, %163 ], [ %140, %146 ]
  %153 = phi ptr [ %165, %163 ], [ %149, %146 ]
  %154 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !183
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 4
  %159 = getelementptr inbounds %struct.ID, ptr %152, i64 0, i32 4
  %160 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %158, ptr noundef nonnull dereferenceable(1) %159) #25
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store ptr %153, ptr %139, align 8, !tbaa !90
  br label %163

163:                                              ; preds = %151, %157, %162
  %164 = phi ptr [ %152, %151 ], [ %152, %157 ], [ %153, %162 ]
  %165 = load ptr, ptr %153, align 8, !tbaa !76
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %151, !llvm.loop !185

167:                                              ; preds = %163, %146, %142, %138, %134, %129
  ret void
}

; Function Attrs: optsize
declare void @ntreeShaderGetTexcoMode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_render_nodetree(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #13 !PGOFuncName !186 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !76
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
  %15 = load ptr, ptr %14, align 8, !tbaa !146
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i16 %19, 16717
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = icmp eq ptr %15, %1
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  tail call fastcc void @do_init_render_material(ptr noundef nonnull %15, i32 noundef %2, ptr noundef %3) #23
  %24 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 90
  %25 = load i16, ptr %24, align 4, !tbaa !177
  %26 = load i16, ptr %9, align 4, !tbaa !177
  %27 = or i16 %26, %25
  store i16 %27, ptr %9, align 4, !tbaa !177
  br label %28

28:                                               ; preds = %23, %21
  %29 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 51
  %30 = load i32, ptr %29, align 4, !tbaa !72
  %31 = and i32 %30, -42148678
  %32 = load i32, ptr %10, align 8, !tbaa !164
  %33 = or i32 %32, %31
  store i32 %33, ptr %10, align 8, !tbaa !164
  %34 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 53
  %35 = load i32, ptr %34, align 4, !tbaa !73
  %36 = and i32 %35, -2
  %37 = load i32, ptr %11, align 8, !tbaa !165
  %38 = or i32 %37, %36
  store i32 %38, ptr %11, align 8, !tbaa !165
  %39 = and i32 %30, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = and i32 %33, -5
  store i32 %42, ptr %10, align 8, !tbaa !164
  br label %43

43:                                               ; preds = %41, %28
  %44 = phi i32 [ %42, %41 ], [ %33, %28 ]
  %45 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 66
  %46 = load float, ptr %45, align 8, !tbaa !169
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = or i32 %44, -2147483648
  store i32 %49, ptr %10, align 8, !tbaa !164
  br label %55

50:                                               ; preds = %17
  %51 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 8
  %52 = load i16, ptr %51, align 4, !tbaa !187
  %53 = icmp eq i16 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call fastcc void @init_render_nodetree(ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2, ptr noundef %3) #23
  br label %55

55:                                               ; preds = %43, %48, %12, %50, %54
  %56 = load ptr, ptr %13, align 8, !tbaa !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %12, !llvm.loop !188

58:                                               ; preds = %55, %4
  ret void
}

; Function Attrs: optsize
declare ptr @ntreeShaderBeginExecTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_render_materials(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %8

7:                                                ; preds = %16
  br i1 %6, label %31, label %19

8:                                                ; preds = %3, %16
  %9 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !97
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 90
  store i16 0, ptr %14, align 4, !tbaa !177
  %15 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 91
  store i16 0, ptr %15, align 2, !tbaa !189
  br label %16

16:                                               ; preds = %8, %13
  %17 = load ptr, ptr %9, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %7, label %8, !llvm.loop !190

19:                                               ; preds = %7, %28
  %20 = phi ptr [ %29, %28 ], [ %5, %7 ]
  %21 = getelementptr inbounds %struct.Material, ptr %20, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !191
  %23 = and i16 %22, -2
  store i16 %23, ptr %21, align 2, !tbaa !191
  %24 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !97
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  tail call void @init_render_material(ptr noundef nonnull %20, i32 noundef %1, ptr noundef %2) #23
  br label %28

28:                                               ; preds = %19, %27
  %29 = load ptr, ptr %20, align 8, !tbaa !76
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !192

31:                                               ; preds = %28, %3, %7
  tail call void @init_render_material(ptr noundef nonnull @defmaterial, i32 noundef %1, ptr noundef %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @end_render_material(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %9 = load i8, ptr %8, align 1, !tbaa !145
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @ntreeShaderEndExecTree(ptr noundef nonnull %13) #24
  br label %16

16:                                               ; preds = %11, %15, %7, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @ntreeShaderEndExecTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @end_render_materials(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1, %11
  %6 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !97
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @end_render_material(ptr noundef nonnull %6) #23
  br label %11

11:                                               ; preds = %5, %10
  %12 = load ptr, ptr %6, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !193

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @material_in_material(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #14 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %10 = load i8, ptr %9, align 1, !tbaa !145
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc zeroext i8 @material_in_nodetree(ptr noundef nonnull %6, ptr noundef %1) #23, !range !156
  br label %14

14:                                               ; preds = %4, %8, %2, %12
  %15 = phi i8 [ %13, %12 ], [ 1, %2 ], [ 0, %8 ], [ 0, %4 ]
  ret i8 %15
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @material_in_nodetree(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #14 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !50
  %14 = icmp eq i16 %13, 16717
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, %1
  br i1 %16, label %27, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !187
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call fastcc zeroext i8 @material_in_nodetree(ptr noundef nonnull %9, ptr noundef %1) #23, !range !156
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6, %17, %21, %15
  %25 = load ptr, ptr %7, align 8, !tbaa !76
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !195

27:                                               ; preds = %15, %21, %24, %2
  %28 = phi i8 [ 0, %2 ], [ 0, %24 ], [ 1, %21 ], [ 1, %15 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @material_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !196
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = or disjoint i16 %5, 1024
  store i16 %9, ptr %4, align 2, !tbaa !196
  %10 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.AnimData, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !198
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11, float noundef %2, i16 noundef signext 1) #24
  br label %18

18:                                               ; preds = %17, %13, %8
  %19 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @material_node_drivers_update(ptr noundef %0, ptr noundef nonnull %20, float noundef %2) #23
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i16, ptr %4, align 2, !tbaa !196
  %25 = and i16 %24, -1025
  store i16 %25, ptr %4, align 2, !tbaa !196
  br label %26

26:                                               ; preds = %3, %23
  ret void
}

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @material_node_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !200 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %2, i16 noundef signext 1) #24
  br label %12

12:                                               ; preds = %11, %7, %3
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12, %31
  %17 = phi ptr [ %32, %31 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !50
  %24 = icmp eq i16 %23, 16717
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @material_drivers_update(ptr noundef %0, ptr noundef nonnull %19, float noundef %2) #23
  br label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %28 = load i16, ptr %27, align 4, !tbaa !187
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call fastcc void @material_node_drivers_update(ptr noundef %0, ptr noundef nonnull %19, float noundef %2) #23
  br label %31

31:                                               ; preds = %16, %26, %30, %25
  %32 = load ptr, ptr %17, align 8, !tbaa !76
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !llvm.loop !202

34:                                               ; preds = %31, %12
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_texpaint_slot_refresh_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #24
  %4 = tail call zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef %0) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %0) #24
  %8 = icmp ne i8 %7, 0
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i1 [ true, %2 ], [ %8, %6 ]
  %11 = icmp eq ptr %1, null
  br i1 %11, label %178, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 135
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %17(ptr noundef nonnull %14) #24
  %18 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 133
  store i16 0, ptr %18, align 8, !tbaa !203
  store ptr null, ptr %13, align 8, !tbaa !88
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !204
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %21, i64 0, i32 17, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !222
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %26, align 4, !tbaa !229
  %27 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %27, align 2, !tbaa !230
  br label %178

28:                                               ; preds = %19
  %29 = icmp eq i8 %3, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 77
  %32 = load i8, ptr %31, align 1, !tbaa !145
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %113, label %34

34:                                               ; preds = %30, %28
  %35 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %39, align 4, !tbaa !229
  %40 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %40, align 2, !tbaa !230
  br label %178

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %36, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %69, label %45

45:                                               ; preds = %41, %63
  %46 = phi ptr [ %65, %63 ], [ %43, %41 ]
  %47 = phi i16 [ %64, %63 ], [ 0, %41 ]
  %48 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !231
  %50 = getelementptr inbounds %struct.bNodeType, ptr %49, i64 0, i32 14
  %51 = load i16, ptr %50, align 4, !tbaa !232
  %52 = icmp eq i16 %51, 13
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.bNodeType, ptr %49, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !235
  %56 = icmp eq i32 %55, 143
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 20
  %59 = load ptr, ptr %58, align 8, !tbaa !146
  %60 = icmp ne ptr %59, null
  %61 = zext i1 %60 to i16
  %62 = add i16 %47, %61
  br label %63

63:                                               ; preds = %57, %45, %53
  %64 = phi i16 [ %47, %53 ], [ %47, %45 ], [ %62, %57 ]
  %65 = load ptr, ptr %46, align 8, !tbaa !76
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %45, !llvm.loop !236

67:                                               ; preds = %63
  %68 = icmp eq i16 %64, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %41, %67
  %70 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %70, align 4, !tbaa !229
  %71 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %71, align 2, !tbaa !230
  br label %178

72:                                               ; preds = %67
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %74 = sext i16 %64 to i64
  %75 = mul nsw i64 %74, 24
  %76 = tail call ptr %73(i64 noundef %75, ptr noundef nonnull @.str.8) #24
  store ptr %76, ptr %13, align 8, !tbaa !88
  %77 = load ptr, ptr %35, align 8, !tbaa !87
  %78 = tail call ptr @nodeGetActiveTexture(ptr noundef %77) #24
  %79 = load ptr, ptr %35, align 8, !tbaa !87
  %80 = getelementptr inbounds %struct.bNodeTree, ptr %79, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !76
  %82 = icmp eq ptr %81, null
  br i1 %82, label %164, label %83

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  br label %85

85:                                               ; preds = %83, %109
  %86 = phi ptr [ %81, %83 ], [ %111, %109 ]
  %87 = phi i16 [ 0, %83 ], [ %110, %109 ]
  %88 = getelementptr inbounds %struct.bNode, ptr %86, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !231
  %90 = getelementptr inbounds %struct.bNodeType, ptr %89, i64 0, i32 14
  %91 = load i16, ptr %90, align 4, !tbaa !232
  %92 = icmp eq i16 %91, 13
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.bNodeType, ptr %89, i64 0, i32 4
  %95 = load i32, ptr %94, align 4, !tbaa !235
  %96 = icmp eq i32 %95, 143
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.bNode, ptr %86, i64 0, i32 20
  %99 = load ptr, ptr %98, align 8, !tbaa !146
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = icmp eq ptr %78, %86
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  store i16 %87, ptr %84, align 4, !tbaa !229
  br label %104

104:                                              ; preds = %103, %101
  %105 = load ptr, ptr %13, align 8, !tbaa !88
  %106 = add i16 %87, 1
  %107 = sext i16 %87 to i64
  %108 = getelementptr inbounds %struct.TexPaintSlot, ptr %105, i64 %107
  store ptr %99, ptr %108, align 8, !tbaa !237
  br label %109

109:                                              ; preds = %85, %93, %97, %104
  %110 = phi i16 [ %106, %104 ], [ %87, %97 ], [ %87, %93 ], [ %87, %85 ]
  %111 = load ptr, ptr %86, align 8, !tbaa !76
  %112 = icmp eq ptr %111, null
  br i1 %112, label %164, label %85, !llvm.loop !239

113:                                              ; preds = %30
  br i1 %10, label %114, label %161

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 102
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi ptr [ %115, %114 ], [ %125, %116 ]
  %118 = phi i16 [ 0, %114 ], [ %123, %116 ]
  %119 = phi i16 [ 0, %114 ], [ %124, %116 ]
  %120 = load ptr, ptr %117, align 8, !tbaa !76
  %121 = tail call fastcc zeroext i8 @get_mtex_slot_valid_texpaint(ptr noundef %120) #23, !range !156
  %122 = zext nneg i8 %121 to i16
  %123 = add i16 %118, %122
  %124 = add nuw nsw i16 %119, 1
  %125 = getelementptr inbounds ptr, ptr %117, i64 1
  %126 = icmp eq i16 %124, 18
  br i1 %126, label %127, label %116, !llvm.loop !240

127:                                              ; preds = %116
  %128 = icmp eq i16 %123, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %130, align 4, !tbaa !229
  %131 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %131, align 2, !tbaa !230
  br label %178

132:                                              ; preds = %127
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %134 = sext i16 %123 to i64
  %135 = mul nsw i64 %134, 24
  %136 = tail call ptr %133(i64 noundef %135, ptr noundef nonnull @.str.8) #24
  store ptr %136, ptr %13, align 8, !tbaa !88
  br label %137

137:                                              ; preds = %132, %156
  %138 = phi i32 [ 0, %132 ], [ %158, %156 ]
  %139 = phi ptr [ %115, %132 ], [ %159, %156 ]
  %140 = phi i16 [ 0, %132 ], [ %157, %156 ]
  %141 = load ptr, ptr %139, align 8, !tbaa !76
  %142 = tail call fastcc zeroext i8 @get_mtex_slot_valid_texpaint(ptr noundef %141) #23, !range !156
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.MTex, ptr %141, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !77
  %147 = getelementptr inbounds %struct.Tex, ptr %146, i64 0, i32 54
  %148 = load ptr, ptr %147, align 8, !tbaa !241
  %149 = sext i16 %140 to i64
  %150 = getelementptr inbounds %struct.TexPaintSlot, ptr %136, i64 %149
  store ptr %148, ptr %150, align 8, !tbaa !237
  %151 = load ptr, ptr %139, align 8, !tbaa !76
  %152 = getelementptr inbounds %struct.MTex, ptr %151, i64 0, i32 6
  %153 = getelementptr inbounds %struct.TexPaintSlot, ptr %136, i64 %149, i32 1
  store ptr %152, ptr %153, align 8, !tbaa !242
  %154 = getelementptr inbounds %struct.TexPaintSlot, ptr %136, i64 %149, i32 2
  store i32 %138, ptr %154, align 8, !tbaa !243
  %155 = add i16 %140, 1
  br label %156

156:                                              ; preds = %137, %144
  %157 = phi i16 [ %155, %144 ], [ %140, %137 ]
  %158 = add nuw nsw i32 %138, 1
  %159 = getelementptr inbounds ptr, ptr %139, i64 1
  %160 = icmp eq i32 %158, 18
  br i1 %160, label %164, label %137, !llvm.loop !244

161:                                              ; preds = %113
  %162 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  store i16 0, ptr %162, align 4, !tbaa !229
  %163 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  store i16 0, ptr %163, align 2, !tbaa !230
  br label %178

164:                                              ; preds = %109, %156, %72
  %165 = phi i16 [ %64, %72 ], [ %123, %156 ], [ %64, %109 ]
  %166 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 133
  store i16 %165, ptr %166, align 8, !tbaa !203
  %167 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 131
  %168 = load i16, ptr %167, align 4, !tbaa !229
  %169 = icmp slt i16 %168, %165
  br i1 %169, label %172, label %170

170:                                              ; preds = %164
  %171 = add i16 %165, -1
  store i16 %171, ptr %167, align 4, !tbaa !229
  br label %172

172:                                              ; preds = %170, %164
  %173 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 132
  %174 = load i16, ptr %173, align 2, !tbaa !230
  %175 = icmp slt i16 %174, %165
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = add i16 %165, -1
  store i16 %177, ptr %173, align 2, !tbaa !230
  br label %178

178:                                              ; preds = %38, %69, %172, %176, %9, %161, %129, %25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_uses_blender_game(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @nodeGetActiveTexture(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @get_mtex_slot_valid_texpaint(ptr noundef readonly %0) unnamed_addr #10 !PGOFuncName !245 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 8, !tbaa !246
  %5 = icmp eq i16 %4, 16
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 32
  %12 = load i16, ptr %11, align 8, !tbaa !173
  %13 = icmp eq i16 %12, 8
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 54
  %16 = load ptr, ptr %15, align 8, !tbaa !241
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %10, %6, %3, %1
  %20 = phi i8 [ 0, %10 ], [ 0, %6 ], [ 0, %3 ], [ 0, %1 ], [ %18, %14 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_texpaint_slots_refresh_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %4 = load i32, ptr %3, align 8, !tbaa !102
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ 1, %2 ]
  %8 = trunc i32 %7 to i16
  %9 = tail call ptr @give_current_material(ptr noundef nonnull %1, i16 noundef signext %8) #23
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %0, ptr noundef %9) #23
  %10 = add nuw nsw i32 %7, 1
  %11 = load i32, ptr %3, align 8, !tbaa !102
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %6, label %13, !llvm.loop !247

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  switch i32 %0, label %535 [
    i32 0, label %36
    i32 1, label %53
    i32 2, label %67
    i32 4, label %84
    i32 9, label %110
    i32 3, label %158
    i32 5, label %173
    i32 6, label %201
    i32 7, label %224
    i32 8, label %244
    i32 10, label %266
    i32 11, label %312
    i32 12, label %360
    i32 13, label %393
    i32 14, label %414
    i32 15, label %431
    i32 16, label %464
    i32 17, label %504
  ]

36:                                               ; preds = %4
  %37 = load float, ptr %1, align 4, !tbaa !34
  %38 = load float, ptr %3, align 4, !tbaa !34
  %39 = fmul float %38, %2
  %40 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %39)
  store float %40, ptr %1, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %3, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fmul float %44, %2
  %46 = tail call float @llvm.fmuladd.f32(float %35, float %42, float %45)
  store float %46, ptr %41, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %1, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %3, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fmul float %50, %2
  %52 = tail call float @llvm.fmuladd.f32(float %35, float %48, float %51)
  store float %52, ptr %47, align 4, !tbaa !34
  br label %535

53:                                               ; preds = %4
  %54 = load float, ptr %3, align 4, !tbaa !34
  %55 = load float, ptr %1, align 4, !tbaa !34
  %56 = tail call float @llvm.fmuladd.f32(float %2, float %54, float %55)
  store float %56, ptr %1, align 4, !tbaa !34
  %57 = getelementptr inbounds float, ptr %3, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = tail call float @llvm.fmuladd.f32(float %2, float %58, float %60)
  store float %61, ptr %59, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %3, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %1, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = tail call float @llvm.fmuladd.f32(float %2, float %63, float %65)
  store float %66, ptr %64, align 4, !tbaa !34
  br label %535

67:                                               ; preds = %4
  %68 = load float, ptr %3, align 4, !tbaa !34
  %69 = tail call float @llvm.fmuladd.f32(float %2, float %68, float %35)
  %70 = load float, ptr %1, align 4, !tbaa !34
  %71 = fmul float %70, %69
  store float %71, ptr %1, align 4, !tbaa !34
  %72 = getelementptr inbounds float, ptr %3, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = tail call float @llvm.fmuladd.f32(float %2, float %73, float %35)
  %75 = getelementptr inbounds float, ptr %1, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = fmul float %76, %74
  store float %77, ptr %75, align 4, !tbaa !34
  %78 = getelementptr inbounds float, ptr %3, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = tail call float @llvm.fmuladd.f32(float %2, float %79, float %35)
  %81 = getelementptr inbounds float, ptr %1, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = fmul float %82, %80
  store float %83, ptr %81, align 4, !tbaa !34
  br label %535

84:                                               ; preds = %4
  %85 = load float, ptr %3, align 4, !tbaa !34
  %86 = fsub float 1.000000e+00, %85
  %87 = tail call float @llvm.fmuladd.f32(float %2, float %86, float %35)
  %88 = load float, ptr %1, align 4, !tbaa !34
  %89 = fsub float 1.000000e+00, %88
  %90 = fneg float %87
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %89, float 1.000000e+00)
  store float %91, ptr %1, align 4, !tbaa !34
  %92 = getelementptr inbounds float, ptr %3, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = fsub float 1.000000e+00, %93
  %95 = tail call float @llvm.fmuladd.f32(float %2, float %94, float %35)
  %96 = getelementptr inbounds float, ptr %1, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = fsub float 1.000000e+00, %97
  %99 = fneg float %95
  %100 = tail call float @llvm.fmuladd.f32(float %99, float %98, float 1.000000e+00)
  store float %100, ptr %96, align 4, !tbaa !34
  %101 = getelementptr inbounds float, ptr %3, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = fsub float 1.000000e+00, %102
  %104 = tail call float @llvm.fmuladd.f32(float %2, float %103, float %35)
  %105 = getelementptr inbounds float, ptr %1, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = fsub float 1.000000e+00, %106
  %108 = fneg float %104
  %109 = tail call float @llvm.fmuladd.f32(float %108, float %107, float 1.000000e+00)
  store float %109, ptr %105, align 4, !tbaa !34
  br label %535

110:                                              ; preds = %4
  %111 = load float, ptr %1, align 4, !tbaa !34
  %112 = fcmp olt float %111, 5.000000e-01
  %113 = fmul float %2, 2.000000e+00
  %114 = load float, ptr %3, align 4, !tbaa !34
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
  store float %125, ptr %1, align 4, !tbaa !34
  %126 = getelementptr inbounds float, ptr %1, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !34
  %128 = fcmp olt float %127, 5.000000e-01
  %129 = fmul float %2, 2.000000e+00
  %130 = getelementptr inbounds float, ptr %3, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !34
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
  store float %142, ptr %126, align 4, !tbaa !34
  %143 = getelementptr inbounds float, ptr %1, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !34
  %145 = fcmp olt float %144, 5.000000e-01
  %146 = fmul float %2, 2.000000e+00
  %147 = getelementptr inbounds float, ptr %3, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !34
  br i1 %145, label %149, label %152

149:                                              ; preds = %141
  %150 = tail call float @llvm.fmuladd.f32(float %146, float %148, float %35)
  %151 = fmul float %144, %150
  store float %151, ptr %143, align 4, !tbaa !34
  br label %535

152:                                              ; preds = %141
  %153 = fsub float 1.000000e+00, %148
  %154 = tail call float @llvm.fmuladd.f32(float %146, float %153, float %35)
  %155 = fsub float 1.000000e+00, %144
  %156 = fneg float %154
  %157 = tail call float @llvm.fmuladd.f32(float %156, float %155, float 1.000000e+00)
  store float %157, ptr %143, align 4, !tbaa !34
  br label %535

158:                                              ; preds = %4
  %159 = load float, ptr %3, align 4, !tbaa !34
  %160 = load float, ptr %1, align 4, !tbaa !34
  %161 = fneg float %2
  %162 = tail call float @llvm.fmuladd.f32(float %161, float %159, float %160)
  store float %162, ptr %1, align 4, !tbaa !34
  %163 = getelementptr inbounds float, ptr %3, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !34
  %165 = getelementptr inbounds float, ptr %1, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !34
  %167 = tail call float @llvm.fmuladd.f32(float %161, float %164, float %166)
  store float %167, ptr %165, align 4, !tbaa !34
  %168 = getelementptr inbounds float, ptr %3, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !34
  %170 = getelementptr inbounds float, ptr %1, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !34
  %172 = tail call float @llvm.fmuladd.f32(float %161, float %169, float %171)
  store float %172, ptr %170, align 4, !tbaa !34
  br label %535

173:                                              ; preds = %4
  %174 = load float, ptr %3, align 4, !tbaa !34
  %175 = fcmp une float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load float, ptr %1, align 4, !tbaa !34
  %178 = fmul float %177, %2
  %179 = fdiv float %178, %174
  %180 = tail call float @llvm.fmuladd.f32(float %35, float %177, float %179)
  store float %180, ptr %1, align 4, !tbaa !34
  br label %181

181:                                              ; preds = %176, %173
  %182 = getelementptr inbounds float, ptr %3, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !34
  %184 = fcmp une float %183, 0.000000e+00
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = getelementptr inbounds float, ptr %1, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = fmul float %187, %2
  %189 = fdiv float %188, %183
  %190 = tail call float @llvm.fmuladd.f32(float %35, float %187, float %189)
  store float %190, ptr %186, align 4, !tbaa !34
  br label %191

191:                                              ; preds = %185, %181
  %192 = getelementptr inbounds float, ptr %3, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !34
  %194 = fcmp une float %193, 0.000000e+00
  br i1 %194, label %195, label %535

195:                                              ; preds = %191
  %196 = getelementptr inbounds float, ptr %1, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !34
  %198 = fmul float %197, %2
  %199 = fdiv float %198, %193
  %200 = tail call float @llvm.fmuladd.f32(float %35, float %197, float %199)
  store float %200, ptr %196, align 4, !tbaa !34
  br label %535

201:                                              ; preds = %4
  %202 = load float, ptr %1, align 4, !tbaa !34
  %203 = load float, ptr %3, align 4, !tbaa !34
  %204 = fsub float %202, %203
  %205 = tail call float @llvm.fabs.f32(float %204)
  %206 = fmul float %205, %2
  %207 = tail call float @llvm.fmuladd.f32(float %35, float %202, float %206)
  store float %207, ptr %1, align 4, !tbaa !34
  %208 = getelementptr inbounds float, ptr %1, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !34
  %210 = getelementptr inbounds float, ptr %3, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !34
  %212 = fsub float %209, %211
  %213 = tail call float @llvm.fabs.f32(float %212)
  %214 = fmul float %213, %2
  %215 = tail call float @llvm.fmuladd.f32(float %35, float %209, float %214)
  store float %215, ptr %208, align 4, !tbaa !34
  %216 = getelementptr inbounds float, ptr %1, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !34
  %218 = getelementptr inbounds float, ptr %3, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !34
  %220 = fsub float %217, %219
  %221 = tail call float @llvm.fabs.f32(float %220)
  %222 = fmul float %221, %2
  %223 = tail call float @llvm.fmuladd.f32(float %35, float %217, float %222)
  store float %223, ptr %216, align 4, !tbaa !34
  br label %535

224:                                              ; preds = %4
  %225 = load float, ptr %1, align 4, !tbaa !34
  %226 = load float, ptr %3, align 4, !tbaa !34
  %227 = tail call fastcc float @min_ff(float noundef %225, float noundef %226) #23
  %228 = fmul float %35, %225
  %229 = tail call float @llvm.fmuladd.f32(float %227, float %2, float %228)
  store float %229, ptr %1, align 4, !tbaa !34
  %230 = getelementptr inbounds float, ptr %1, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !34
  %232 = getelementptr inbounds float, ptr %3, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !34
  %234 = tail call fastcc float @min_ff(float noundef %231, float noundef %233) #23
  %235 = fmul float %35, %231
  %236 = tail call float @llvm.fmuladd.f32(float %234, float %2, float %235)
  store float %236, ptr %230, align 4, !tbaa !34
  %237 = getelementptr inbounds float, ptr %1, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !34
  %239 = getelementptr inbounds float, ptr %3, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !34
  %241 = tail call fastcc float @min_ff(float noundef %238, float noundef %240) #23
  %242 = fmul float %35, %238
  %243 = tail call float @llvm.fmuladd.f32(float %241, float %2, float %242)
  store float %243, ptr %237, align 4, !tbaa !34
  br label %535

244:                                              ; preds = %4
  %245 = load float, ptr %3, align 4, !tbaa !34
  %246 = fmul float %245, %2
  %247 = load float, ptr %1, align 4, !tbaa !34
  %248 = fcmp ogt float %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  store float %246, ptr %1, align 4, !tbaa !34
  br label %250

250:                                              ; preds = %249, %244
  %251 = getelementptr inbounds float, ptr %3, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !34
  %253 = fmul float %252, %2
  %254 = getelementptr inbounds float, ptr %1, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !34
  %256 = fcmp ogt float %253, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %250
  store float %253, ptr %254, align 4, !tbaa !34
  br label %258

258:                                              ; preds = %257, %250
  %259 = getelementptr inbounds float, ptr %3, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !34
  %261 = fmul float %260, %2
  %262 = getelementptr inbounds float, ptr %1, i64 2
  %263 = load float, ptr %262, align 4, !tbaa !34
  %264 = fcmp ogt float %261, %263
  br i1 %264, label %265, label %535

265:                                              ; preds = %258
  store float %261, ptr %262, align 4, !tbaa !34
  br label %535

266:                                              ; preds = %4
  %267 = load float, ptr %1, align 4, !tbaa !34
  %268 = fcmp une float %267, 0.000000e+00
  br i1 %268, label %269, label %280

269:                                              ; preds = %266
  %270 = load float, ptr %3, align 4, !tbaa !34
  %271 = fneg float %2
  %272 = tail call float @llvm.fmuladd.f32(float %271, float %270, float 1.000000e+00)
  %273 = fcmp ugt float %272, 0.000000e+00
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = fdiv float %267, %272
  %276 = fcmp ogt float %275, 1.000000e+00
  %277 = select i1 %276, float 1.000000e+00, float %275
  br label %278

278:                                              ; preds = %274, %269
  %279 = phi float [ 1.000000e+00, %269 ], [ %277, %274 ]
  store float %279, ptr %1, align 4, !tbaa !34
  br label %280

280:                                              ; preds = %278, %266
  %281 = getelementptr inbounds float, ptr %1, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !34
  %283 = fcmp une float %282, 0.000000e+00
  br i1 %283, label %284, label %296

284:                                              ; preds = %280
  %285 = getelementptr inbounds float, ptr %3, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !34
  %287 = fneg float %2
  %288 = tail call float @llvm.fmuladd.f32(float %287, float %286, float 1.000000e+00)
  %289 = fcmp ugt float %288, 0.000000e+00
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = fdiv float %282, %288
  %292 = fcmp ogt float %291, 1.000000e+00
  %293 = select i1 %292, float 1.000000e+00, float %291
  br label %294

294:                                              ; preds = %290, %284
  %295 = phi float [ 1.000000e+00, %284 ], [ %293, %290 ]
  store float %295, ptr %281, align 4, !tbaa !34
  br label %296

296:                                              ; preds = %294, %280
  %297 = getelementptr inbounds float, ptr %1, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !34
  %299 = fcmp une float %298, 0.000000e+00
  br i1 %299, label %300, label %535

300:                                              ; preds = %296
  %301 = getelementptr inbounds float, ptr %3, i64 2
  %302 = load float, ptr %301, align 4, !tbaa !34
  %303 = fneg float %2
  %304 = tail call float @llvm.fmuladd.f32(float %303, float %302, float 1.000000e+00)
  %305 = fcmp ugt float %304, 0.000000e+00
  br i1 %305, label %307, label %306

306:                                              ; preds = %300
  store float 1.000000e+00, ptr %297, align 4, !tbaa !34
  br label %535

307:                                              ; preds = %300
  %308 = fdiv float %298, %304
  %309 = fcmp ogt float %308, 1.000000e+00
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store float 1.000000e+00, ptr %297, align 4, !tbaa !34
  br label %535

311:                                              ; preds = %307
  store float %308, ptr %297, align 4, !tbaa !34
  br label %535

312:                                              ; preds = %4
  %313 = load float, ptr %3, align 4, !tbaa !34
  %314 = tail call float @llvm.fmuladd.f32(float %2, float %313, float %35)
  %315 = fcmp ugt float %314, 0.000000e+00
  br i1 %315, label %316, label %325

316:                                              ; preds = %312
  %317 = load float, ptr %1, align 4, !tbaa !34
  %318 = fsub float 1.000000e+00, %317
  %319 = fdiv float %318, %314
  %320 = fsub float 1.000000e+00, %319
  %321 = fcmp olt float %320, 0.000000e+00
  br i1 %321, label %325, label %322

322:                                              ; preds = %316
  %323 = fcmp ogt float %320, 1.000000e+00
  %324 = select i1 %323, float 1.000000e+00, float %320
  br label %325

325:                                              ; preds = %322, %316, %312
  %326 = phi float [ 0.000000e+00, %312 ], [ 0.000000e+00, %316 ], [ %324, %322 ]
  store float %326, ptr %1, align 4, !tbaa !34
  %327 = getelementptr inbounds float, ptr %3, i64 1
  %328 = load float, ptr %327, align 4, !tbaa !34
  %329 = tail call float @llvm.fmuladd.f32(float %2, float %328, float %35)
  %330 = fcmp ugt float %329, 0.000000e+00
  %331 = getelementptr inbounds float, ptr %1, i64 1
  br i1 %330, label %332, label %341

332:                                              ; preds = %325
  %333 = load float, ptr %331, align 4, !tbaa !34
  %334 = fsub float 1.000000e+00, %333
  %335 = fdiv float %334, %329
  %336 = fsub float 1.000000e+00, %335
  %337 = fcmp olt float %336, 0.000000e+00
  br i1 %337, label %341, label %338

338:                                              ; preds = %332
  %339 = fcmp ogt float %336, 1.000000e+00
  %340 = select i1 %339, float 1.000000e+00, float %336
  br label %341

341:                                              ; preds = %338, %332, %325
  %342 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %332 ], [ %340, %338 ]
  store float %342, ptr %331, align 4, !tbaa !34
  %343 = getelementptr inbounds float, ptr %3, i64 2
  %344 = load float, ptr %343, align 4, !tbaa !34
  %345 = tail call float @llvm.fmuladd.f32(float %2, float %344, float %35)
  %346 = fcmp ugt float %345, 0.000000e+00
  %347 = getelementptr inbounds float, ptr %1, i64 2
  br i1 %346, label %349, label %348

348:                                              ; preds = %341
  store float 0.000000e+00, ptr %347, align 4, !tbaa !34
  br label %535

349:                                              ; preds = %341
  %350 = load float, ptr %347, align 4, !tbaa !34
  %351 = fsub float 1.000000e+00, %350
  %352 = fdiv float %351, %345
  %353 = fsub float 1.000000e+00, %352
  %354 = fcmp olt float %353, 0.000000e+00
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  store float 0.000000e+00, ptr %347, align 4, !tbaa !34
  br label %535

356:                                              ; preds = %349
  %357 = fcmp ogt float %353, 1.000000e+00
  br i1 %357, label %358, label %359

358:                                              ; preds = %356
  store float 1.000000e+00, ptr %347, align 4, !tbaa !34
  br label %535

359:                                              ; preds = %356
  store float %353, ptr %347, align 4, !tbaa !34
  br label %535

360:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #26
  %361 = load float, ptr %3, align 4, !tbaa !34
  %362 = getelementptr inbounds float, ptr %3, i64 1
  %363 = load float, ptr %362, align 4, !tbaa !34
  %364 = getelementptr inbounds float, ptr %3, i64 2
  %365 = load float, ptr %364, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %361, float noundef %363, float noundef %365, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  %366 = load float, ptr %9, align 4, !tbaa !34
  %367 = fcmp une float %366, 0.000000e+00
  br i1 %367, label %368, label %392

368:                                              ; preds = %360
  %369 = load float, ptr %1, align 4, !tbaa !34
  %370 = getelementptr inbounds float, ptr %1, i64 1
  %371 = load float, ptr %370, align 4, !tbaa !34
  %372 = getelementptr inbounds float, ptr %1, i64 2
  %373 = load float, ptr %372, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %369, float noundef %371, float noundef %373, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %374 = load float, ptr %8, align 4, !tbaa !34
  %375 = load float, ptr %6, align 4, !tbaa !34
  %376 = load float, ptr %7, align 4, !tbaa !34
  call void @hsv_to_rgb(float noundef %374, float noundef %375, float noundef %376, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %377 = load float, ptr %11, align 4, !tbaa !34
  %378 = load float, ptr %12, align 4, !tbaa !34
  %379 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %380 = insertelement <2 x float> poison, float %377, i64 0
  %381 = insertelement <2 x float> %380, float %378, i64 1
  %382 = insertelement <2 x float> poison, float %2, i64 0
  %383 = shufflevector <2 x float> %382, <2 x float> poison, <2 x i32> zeroinitializer
  %384 = fmul <2 x float> %381, %383
  %385 = insertelement <2 x float> poison, float %35, i64 0
  %386 = shufflevector <2 x float> %385, <2 x float> poison, <2 x i32> zeroinitializer
  %387 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %386, <2 x float> %379, <2 x float> %384)
  store <2 x float> %387, ptr %1, align 4, !tbaa !34
  %388 = load float, ptr %372, align 4, !tbaa !34
  %389 = load float, ptr %13, align 4, !tbaa !34
  %390 = fmul float %389, %2
  %391 = call float @llvm.fmuladd.f32(float %35, float %388, float %390)
  store float %391, ptr %372, align 4, !tbaa !34
  br label %392

392:                                              ; preds = %368, %360
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  br label %535

393:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #26
  %394 = load float, ptr %1, align 4, !tbaa !34
  %395 = getelementptr inbounds float, ptr %1, i64 1
  %396 = load float, ptr %395, align 4, !tbaa !34
  %397 = getelementptr inbounds float, ptr %1, i64 2
  %398 = load float, ptr %397, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %394, float noundef %396, float noundef %398, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #24
  %399 = load float, ptr %15, align 4, !tbaa !34
  %400 = fcmp une float %399, 0.000000e+00
  br i1 %400, label %401, label %413

401:                                              ; preds = %393
  %402 = load float, ptr %3, align 4, !tbaa !34
  %403 = getelementptr inbounds float, ptr %3, i64 1
  %404 = load float, ptr %403, align 4, !tbaa !34
  %405 = getelementptr inbounds float, ptr %3, i64 2
  %406 = load float, ptr %405, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %402, float noundef %404, float noundef %406, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #24
  %407 = load float, ptr %14, align 4, !tbaa !34
  %408 = load float, ptr %15, align 4, !tbaa !34
  %409 = load float, ptr %18, align 4, !tbaa !34
  %410 = fmul float %409, %2
  %411 = call float @llvm.fmuladd.f32(float %35, float %408, float %410)
  %412 = load float, ptr %16, align 4, !tbaa !34
  call void @hsv_to_rgb(float noundef %407, float noundef %411, float noundef %412, ptr noundef nonnull %1, ptr noundef nonnull %395, ptr noundef nonnull %397) #24
  br label %413

413:                                              ; preds = %401, %393
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #26
  br label %535

414:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #26
  %415 = load float, ptr %1, align 4, !tbaa !34
  %416 = getelementptr inbounds float, ptr %1, i64 1
  %417 = load float, ptr %416, align 4, !tbaa !34
  %418 = getelementptr inbounds float, ptr %1, i64 2
  %419 = load float, ptr %418, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %415, float noundef %417, float noundef %419, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #24
  %420 = load float, ptr %3, align 4, !tbaa !34
  %421 = getelementptr inbounds float, ptr %3, i64 1
  %422 = load float, ptr %421, align 4, !tbaa !34
  %423 = getelementptr inbounds float, ptr %3, i64 2
  %424 = load float, ptr %423, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %420, float noundef %422, float noundef %424, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #24
  %425 = load float, ptr %20, align 4, !tbaa !34
  %426 = load float, ptr %21, align 4, !tbaa !34
  %427 = load float, ptr %22, align 4, !tbaa !34
  %428 = load float, ptr %25, align 4, !tbaa !34
  %429 = fmul float %428, %2
  %430 = call float @llvm.fmuladd.f32(float %35, float %427, float %429)
  call void @hsv_to_rgb(float noundef %425, float noundef %426, float noundef %430, ptr noundef nonnull %1, ptr noundef nonnull %416, ptr noundef nonnull %418) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #26
  br label %535

431:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #26
  %432 = load float, ptr %3, align 4, !tbaa !34
  %433 = getelementptr inbounds float, ptr %3, i64 1
  %434 = load float, ptr %433, align 4, !tbaa !34
  %435 = getelementptr inbounds float, ptr %3, i64 2
  %436 = load float, ptr %435, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %432, float noundef %434, float noundef %436, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31) #24
  %437 = load float, ptr %30, align 4, !tbaa !34
  %438 = fcmp une float %437, 0.000000e+00
  br i1 %438, label %439, label %463

439:                                              ; preds = %431
  %440 = load float, ptr %1, align 4, !tbaa !34
  %441 = getelementptr inbounds float, ptr %1, i64 1
  %442 = load float, ptr %441, align 4, !tbaa !34
  %443 = getelementptr inbounds float, ptr %1, i64 2
  %444 = load float, ptr %443, align 4, !tbaa !34
  call void @rgb_to_hsv(float noundef %440, float noundef %442, float noundef %444, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #24
  %445 = load float, ptr %29, align 4, !tbaa !34
  %446 = load float, ptr %30, align 4, !tbaa !34
  %447 = load float, ptr %28, align 4, !tbaa !34
  call void @hsv_to_rgb(float noundef %445, float noundef %446, float noundef %447, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34) #24
  %448 = load float, ptr %32, align 4, !tbaa !34
  %449 = load float, ptr %33, align 4, !tbaa !34
  %450 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %451 = insertelement <2 x float> poison, float %448, i64 0
  %452 = insertelement <2 x float> %451, float %449, i64 1
  %453 = insertelement <2 x float> poison, float %2, i64 0
  %454 = shufflevector <2 x float> %453, <2 x float> poison, <2 x i32> zeroinitializer
  %455 = fmul <2 x float> %452, %454
  %456 = insertelement <2 x float> poison, float %35, i64 0
  %457 = shufflevector <2 x float> %456, <2 x float> poison, <2 x i32> zeroinitializer
  %458 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %457, <2 x float> %450, <2 x float> %455)
  store <2 x float> %458, ptr %1, align 4, !tbaa !34
  %459 = load float, ptr %443, align 4, !tbaa !34
  %460 = load float, ptr %34, align 4, !tbaa !34
  %461 = fmul float %460, %2
  %462 = call float @llvm.fmuladd.f32(float %35, float %459, float %461)
  store float %462, ptr %443, align 4, !tbaa !34
  br label %463

463:                                              ; preds = %439, %431
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #26
  br label %535

464:                                              ; preds = %4
  %465 = load float, ptr %3, align 4, !tbaa !34
  %466 = fsub float 1.000000e+00, %465
  %467 = load float, ptr %1, align 4, !tbaa !34
  %468 = fsub float 1.000000e+00, %467
  %469 = fneg float %466
  %470 = tail call float @llvm.fmuladd.f32(float %469, float %468, float 1.000000e+00)
  %471 = getelementptr inbounds float, ptr %3, i64 1
  %472 = load float, ptr %471, align 4, !tbaa !34
  %473 = fsub float 1.000000e+00, %472
  %474 = getelementptr inbounds float, ptr %1, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !34
  %476 = fsub float 1.000000e+00, %475
  %477 = fneg float %473
  %478 = tail call float @llvm.fmuladd.f32(float %477, float %476, float 1.000000e+00)
  %479 = getelementptr inbounds float, ptr %3, i64 2
  %480 = load float, ptr %479, align 4, !tbaa !34
  %481 = fsub float 1.000000e+00, %480
  %482 = getelementptr inbounds float, ptr %1, i64 2
  %483 = load float, ptr %482, align 4, !tbaa !34
  %484 = fsub float 1.000000e+00, %483
  %485 = fneg float %481
  %486 = tail call float @llvm.fmuladd.f32(float %485, float %484, float 1.000000e+00)
  %487 = fmul float %465, %468
  %488 = fmul float %467, %470
  %489 = tail call float @llvm.fmuladd.f32(float %487, float %467, float %488)
  %490 = fmul float %489, %2
  %491 = tail call float @llvm.fmuladd.f32(float %35, float %467, float %490)
  store float %491, ptr %1, align 4, !tbaa !34
  %492 = load float, ptr %471, align 4, !tbaa !34
  %493 = fmul float %476, %492
  %494 = fmul float %475, %478
  %495 = tail call float @llvm.fmuladd.f32(float %493, float %475, float %494)
  %496 = fmul float %495, %2
  %497 = tail call float @llvm.fmuladd.f32(float %35, float %475, float %496)
  store float %497, ptr %474, align 4, !tbaa !34
  %498 = load float, ptr %479, align 4, !tbaa !34
  %499 = fmul float %484, %498
  %500 = fmul float %483, %486
  %501 = tail call float @llvm.fmuladd.f32(float %499, float %483, float %500)
  %502 = fmul float %501, %2
  %503 = tail call float @llvm.fmuladd.f32(float %35, float %483, float %502)
  store float %503, ptr %482, align 4, !tbaa !34
  br label %535

504:                                              ; preds = %4
  %505 = load float, ptr %3, align 4, !tbaa !34
  %506 = fcmp ogt float %505, 5.000000e-01
  %507 = load float, ptr %1, align 4, !tbaa !34
  %508 = tail call float @llvm.fmuladd.f32(float %505, float 2.000000e+00, float -1.000000e+00)
  %509 = fadd float %505, -5.000000e-01
  %510 = fmul float %509, 2.000000e+00
  %511 = select i1 %506, float %510, float %508
  %512 = tail call float @llvm.fmuladd.f32(float %2, float %511, float %507)
  store float %512, ptr %1, align 4, !tbaa !34
  %513 = getelementptr inbounds float, ptr %3, i64 1
  %514 = load float, ptr %513, align 4, !tbaa !34
  %515 = fcmp ogt float %514, 5.000000e-01
  %516 = getelementptr inbounds float, ptr %1, i64 1
  %517 = load float, ptr %516, align 4, !tbaa !34
  %518 = tail call float @llvm.fmuladd.f32(float %514, float 2.000000e+00, float -1.000000e+00)
  %519 = fadd float %514, -5.000000e-01
  %520 = fmul float %519, 2.000000e+00
  %521 = select i1 %515, float %520, float %518
  %522 = tail call float @llvm.fmuladd.f32(float %2, float %521, float %517)
  store float %522, ptr %516, align 4, !tbaa !34
  %523 = getelementptr inbounds float, ptr %3, i64 2
  %524 = load float, ptr %523, align 4, !tbaa !34
  %525 = fcmp ogt float %524, 5.000000e-01
  %526 = getelementptr inbounds float, ptr %1, i64 2
  %527 = load float, ptr %526, align 4, !tbaa !34
  br i1 %525, label %528, label %532

528:                                              ; preds = %504
  %529 = fadd float %524, -5.000000e-01
  %530 = fmul float %529, 2.000000e+00
  %531 = tail call float @llvm.fmuladd.f32(float %2, float %530, float %527)
  store float %531, ptr %526, align 4, !tbaa !34
  br label %535

532:                                              ; preds = %504
  %533 = tail call float @llvm.fmuladd.f32(float %524, float 2.000000e+00, float -1.000000e+00)
  %534 = tail call float @llvm.fmuladd.f32(float %2, float %533, float %527)
  store float %534, ptr %526, align 4, !tbaa !34
  br label %535

535:                                              ; preds = %528, %532, %348, %358, %359, %355, %296, %310, %311, %306, %258, %265, %191, %195, %149, %152, %4, %464, %463, %414, %413, %392, %224, %201, %158, %84, %67, %53, %36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #16 !PGOFuncName !248 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @clear_matcopybuf() local_unnamed_addr #17 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) @matcopybuf, i8 0, i64 944, i1 false)
  store i1 false, ptr @matcopied, align 2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_matcopybuf() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %8
  %2 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %3 = getelementptr inbounds %struct.Material, ptr @matcopybuf, i64 0, i32 102, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %7(ptr noundef nonnull %4) #24
  store ptr null, ptr %3, align 8, !tbaa !76
  br label %8

8:                                                ; preds = %1, %6
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 18
  br i1 %10, label %11, label %1, !llvm.loop !249

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !84
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %15(ptr noundef nonnull %12) #24
  br label %16

16:                                               ; preds = %14, %11
  %17 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %20(ptr noundef nonnull %17) #24
  br label %21

21:                                               ; preds = %19, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), i8 0, i64 16, i1 false)
  %22 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !87
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %22, i8 noundef zeroext 0) #24
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %26 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !87
  tail call void %25(ptr noundef %26) #24
  store ptr null, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !87
  br label %27

27:                                               ; preds = %24, %21
  store i1 false, ptr @matcopied, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_matcopybuf(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i1, ptr @matcopied, align 2
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @free_matcopybuf() #23
  br label %4

4:                                                ; preds = %3, %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) @matcopybuf, ptr noundef nonnull align 8 dereferenceable(944) %0, i64 944, i1 false)
  %5 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %9 = tail call ptr %8(ptr noundef nonnull %5) #24
  store ptr %9, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !84
  br label %10

10:                                               ; preds = %7, %4
  %11 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %15 = tail call ptr %14(ptr noundef nonnull %11) #24
  store ptr %15, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !85
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %25
  %18 = phi i64 [ %26, %25 ], [ 0, %16 ]
  %19 = getelementptr inbounds %struct.Material, ptr @matcopybuf, i64 0, i32 102, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %24 = tail call ptr %23(ptr noundef nonnull %20) #24
  store ptr %24, ptr %19, align 8, !tbaa !76
  br label %25

25:                                               ; preds = %17, %22
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, 18
  br i1 %27, label %28, label %17, !llvm.loop !250

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = load ptr, ptr @G, align 8, !tbaa !94
  %32 = tail call ptr @ntreeCopyTree_ex(ptr noundef %30, ptr noundef %31, i8 noundef zeroext 0) #24
  store ptr %32, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !87
  store ptr null, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 106), align 8, !tbaa !75
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 136)) #23
  store i1 true, ptr @matcopied, align 2
  ret void
}

; Function Attrs: optsize
declare ptr @ntreeCopyTree_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paste_matcopybuf(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ID, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2)
  %3 = load i1, ptr @matcopied, align 2
  br i1 %3, label %4, label %83

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 92
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %9(ptr noundef nonnull %6) #24
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 93
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %15(ptr noundef nonnull %12) #24
  br label %16

16:                                               ; preds = %14, %10
  br label %17

17:                                               ; preds = %16, %32
  %18 = phi i64 [ %33, %32 ], [ 0, %16 ]
  %19 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !79
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !79
  br label %30

30:                                               ; preds = %22, %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %31(ptr noundef nonnull %20) #24
  br label %32

32:                                               ; preds = %17, %30
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, 18
  br i1 %34, label %35, label %17, !llvm.loop !251

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  tail call void @ntreeFreeTree(ptr noundef nonnull %37) #24
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %41 = load ptr, ptr %36, align 8, !tbaa !87
  tail call void %40(ptr noundef %41) #24
  br label %42

42:                                               ; preds = %39, %35
  tail call void @GPU_material_free(ptr noundef nonnull %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 120, i1 false), !tbaa.struct !252
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef nonnull align 8 dereferenceable(944) @matcopybuf, i64 944, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !tbaa.struct !252
  %43 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 92), align 8, !tbaa !84
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %47 = tail call ptr %46(ptr noundef nonnull %43) #24
  store ptr %47, ptr %5, align 8, !tbaa !84
  br label %48

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 93), align 8, !tbaa !85
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %53 = tail call ptr %52(ptr noundef nonnull %49) #24
  store ptr %53, ptr %11, align 8, !tbaa !85
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %76
  %56 = phi i64 [ %77, %76 ], [ 0, %54 ]
  %57 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !76
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %62 = tail call ptr %61(ptr noundef nonnull %58) #24
  store ptr %62, ptr %57, align 8, !tbaa !76
  %63 = getelementptr inbounds %struct.MTex, ptr %58, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !77
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr @G, align 8, !tbaa !94
  %68 = getelementptr inbounds %struct.Main, ptr %67, i64 0, i32 18
  %69 = tail call i32 @BLI_findindex(ptr noundef nonnull %68, ptr noundef nonnull %64) #24
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %63, align 8, !tbaa !77
  tail call void @id_us_plus(ptr noundef %72) #24
  br label %76

73:                                               ; preds = %66
  %74 = load ptr, ptr %57, align 8, !tbaa !76
  %75 = getelementptr inbounds %struct.MTex, ptr %74, i64 0, i32 5
  store ptr null, ptr %75, align 8, !tbaa !77
  br label %76

76:                                               ; preds = %55, %71, %73, %60
  %77 = add nuw nsw i64 %56, 1
  %78 = icmp eq i64 %77, 18
  br i1 %78, label %79, label %55, !llvm.loop !254

79:                                               ; preds = %76
  %80 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @matcopybuf, i64 0, i32 103), align 8, !tbaa !87
  %81 = load ptr, ptr @G, align 8, !tbaa !94
  %82 = tail call ptr @ntreeCopyTree_ex(ptr noundef %80, ptr noundef %81, i8 noundef zeroext 0) #24
  store ptr %82, ptr %36, align 8, !tbaa !87
  br label %83

83:                                               ; preds = %1, %79
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2)
  ret void
}

; Function Attrs: optsize
declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @do_version_tface(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %128, label %5

5:                                                ; preds = %1, %125
  %6 = phi ptr [ %126, %125 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %125

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 23
  %12 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %11, i32 noundef 5) #24
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %125, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !255
  %16 = sext i32 %12 to i64
  %17 = icmp eq ptr %15, null
  br i1 %17, label %125, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 47
  %20 = load i16, ptr %19, align 2, !tbaa !109
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 12
  %23 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 28
  %24 = load i32, ptr %23, align 8, !tbaa !256
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %18
  %27 = load ptr, ptr %22, align 8, !tbaa !257
  %28 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %16, i32 9
  %29 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 5
  br label %30

30:                                               ; preds = %26, %80
  %31 = phi i64 [ 0, %26 ], [ %81, %80 ]
  %32 = phi ptr [ %27, %26 ], [ %82, %80 ]
  %33 = load ptr, ptr %28, align 8, !tbaa !258
  %34 = getelementptr inbounds %struct.MTFace, ptr %33, i64 %31
  %35 = getelementptr inbounds %struct.MTFace, ptr %33, i64 %31, i32 4
  %36 = load i16, ptr %35, align 2, !tbaa !260
  %37 = and i16 %36, -33
  store i16 %37, ptr %35, align 2, !tbaa !260
  br i1 %21, label %38, label %47

38:                                               ; preds = %30
  %39 = tail call fastcc i32 @encode_tfaceflag(ptr noundef nonnull %34, i32 noundef 1) #23
  %40 = tail call fastcc i32 @check_tfaceneedmaterial(i32 noundef %39) #23, !range !262
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %34, i32 noundef %39) #23
  %44 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 4
  store i16 %43, ptr %44, align 4, !tbaa !263
  br label %80

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 4
  store i16 -1, ptr %46, align 4, !tbaa !263
  br label %80

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 4
  %49 = load i16, ptr %48, align 4, !tbaa !263
  %50 = load i16, ptr %19, align 2, !tbaa !109
  %51 = icmp slt i16 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = load ptr, ptr %29, align 8, !tbaa !106
  %54 = sext i16 %49 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = tail call fastcc i32 @encode_tfaceflag(ptr noundef nonnull %34, i32 noundef 1) #23
  %60 = tail call fastcc i32 @check_tfaceneedmaterial(i32 noundef %59) #23, !range !262
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %58
  %63 = tail call fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %34, i32 noundef %59) #23
  store i16 %63, ptr %48, align 4, !tbaa !263
  br label %80

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !96
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Material, ptr %56, i64 0, i32 28
  %70 = load i32, ptr %69, align 8, !tbaa !69
  %71 = icmp eq i32 %70, -99999
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = tail call fastcc i32 @encode_tfaceflag(ptr noundef nonnull %34, i32 noundef 0) #23
  %74 = icmp eq i32 %70, 0
  %75 = sub nsw i32 0, %73
  br i1 %74, label %76, label %77

76:                                               ; preds = %72
  store i32 %75, ptr %69, align 8, !tbaa !69
  br label %80

77:                                               ; preds = %72
  %78 = icmp eq i32 %70, %75
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  store i32 -99999, ptr %69, align 8, !tbaa !69
  br label %80

80:                                               ; preds = %77, %45, %42, %76, %47, %68, %64, %58, %62, %79
  %81 = add nuw nsw i64 %31, 1
  %82 = getelementptr inbounds %struct.MFace, ptr %32, i64 1
  %83 = load i32, ptr %23, align 8, !tbaa !256
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %30, label %86, !llvm.loop !265

86:                                               ; preds = %80, %18
  %87 = phi i32 [ %24, %18 ], [ %83, %80 ]
  br i1 %21, label %88, label %125

88:                                               ; preds = %86
  %89 = load i16, ptr %19, align 2, !tbaa !109
  %90 = icmp sgt i16 %89, 0
  %91 = icmp sgt i32 %87, 0
  br i1 %90, label %92, label %115

92:                                               ; preds = %88
  br i1 %91, label %93, label %125

93:                                               ; preds = %92
  %94 = load ptr, ptr %22, align 8, !tbaa !257
  %95 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %16, i32 9
  br label %96

96:                                               ; preds = %93, %109
  %97 = phi i32 [ %87, %93 ], [ %110, %109 ]
  %98 = phi i64 [ 0, %93 ], [ %111, %109 ]
  %99 = phi ptr [ %94, %93 ], [ %112, %109 ]
  %100 = getelementptr inbounds %struct.MFace, ptr %99, i64 0, i32 4
  %101 = load i16, ptr %100, align 4, !tbaa !263
  %102 = icmp eq i16 %101, -1
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load ptr, ptr %95, align 8, !tbaa !258
  %105 = getelementptr inbounds %struct.MTFace, ptr %104, i64 %98
  %106 = tail call fastcc i32 @encode_tfaceflag(ptr noundef %105, i32 noundef 1) #23
  %107 = tail call fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %105, i32 noundef %106) #23
  store i16 %107, ptr %100, align 4, !tbaa !263
  %108 = load i32, ptr %23, align 8, !tbaa !256
  br label %109

109:                                              ; preds = %96, %103
  %110 = phi i32 [ %97, %96 ], [ %108, %103 ]
  %111 = add nuw nsw i64 %98, 1
  %112 = getelementptr inbounds %struct.MFace, ptr %99, i64 1
  %113 = sext i32 %110 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %96, label %125, !llvm.loop !266

115:                                              ; preds = %88
  br i1 %91, label %116, label %125

116:                                              ; preds = %115
  %117 = load ptr, ptr %22, align 8, !tbaa !257
  br label %118

118:                                              ; preds = %116, %118
  %119 = phi i32 [ %122, %118 ], [ 0, %116 ]
  %120 = phi ptr [ %123, %118 ], [ %117, %116 ]
  %121 = getelementptr inbounds %struct.MFace, ptr %120, i64 0, i32 4
  store i16 0, ptr %121, align 4, !tbaa !263
  %122 = add nuw nsw i32 %119, 1
  %123 = getelementptr inbounds %struct.MFace, ptr %120, i64 1
  %124 = icmp eq i32 %122, %87
  br i1 %124, label %125, label %118, !llvm.loop !267

125:                                              ; preds = %118, %109, %115, %92, %10, %86, %14, %5
  %126 = load ptr, ptr %6, align 8, !tbaa !76
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %5, !llvm.loop !268

128:                                              ; preds = %125, %1
  %129 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %130 = load ptr, ptr %129, align 8, !tbaa !76
  %131 = icmp eq ptr %130, null
  br i1 %131, label %219, label %132

132:                                              ; preds = %128, %215
  %133 = phi ptr [ %217, %215 ], [ %130, %128 ]
  %134 = phi i32 [ %216, %215 ], [ 1, %128 ]
  %135 = getelementptr inbounds %struct.ID, ptr %133, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !96
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %215

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.Material, ptr %133, i64 0, i32 28
  %140 = load i32, ptr %139, align 8, !tbaa !69
  %141 = icmp eq i32 %140, -99999
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  store i32 0, ptr %139, align 8, !tbaa !69
  %143 = getelementptr inbounds %struct.ID, ptr %133, i64 0, i32 4, i64 2
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %143) #23
  br label %215

145:                                              ; preds = %138
  %146 = icmp slt i32 %140, 0
  br i1 %146, label %147, label %214

147:                                              ; preds = %145
  %148 = sub nsw i32 0, %140
  tail call fastcc void @decode_tfaceflag(ptr noundef nonnull %133, i32 noundef %148) #23
  %149 = load ptr, ptr %2, align 8, !tbaa !76
  %150 = icmp eq ptr %149, null
  br i1 %150, label %215, label %151

151:                                              ; preds = %147, %211
  %152 = phi ptr [ %212, %211 ], [ %149, %147 ]
  %153 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 47
  %154 = load i16, ptr %153, align 2, !tbaa !109
  %155 = sext i16 %154 to i32
  %156 = icmp sgt i16 %154, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !106
  %160 = zext nneg i32 %155 to i64
  br label %161

161:                                              ; preds = %157, %166
  %162 = phi i64 [ 0, %157 ], [ %167, %166 ]
  %163 = getelementptr inbounds ptr, ptr %159, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !76
  %165 = icmp eq ptr %164, %133
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = add nuw nsw i64 %162, 1
  %168 = icmp eq i64 %167, %160
  br i1 %168, label %211, label %161, !llvm.loop !269

169:                                              ; preds = %161
  %170 = trunc i64 %162 to i32
  br label %171

171:                                              ; preds = %169, %151
  %172 = phi i32 [ 0, %151 ], [ %170, %169 ]
  %173 = icmp eq i32 %172, %155
  br i1 %173, label %211, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 23
  %176 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %175, i32 noundef 5) #24
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %211, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %175, align 8, !tbaa !255
  %180 = sext i32 %176 to i64
  %181 = icmp eq ptr %179, null
  br i1 %181, label %211, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 28
  %184 = load i32, ptr %183, align 8, !tbaa !256
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %211

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 12
  %188 = load ptr, ptr %187, align 8, !tbaa !257
  %189 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 5
  %190 = load ptr, ptr %189, align 8, !tbaa !106
  %191 = getelementptr inbounds %struct.CustomDataLayer, ptr %179, i64 %180, i32 9
  %192 = zext nneg i32 %184 to i64
  br label %193

193:                                              ; preds = %186, %207
  %194 = phi i64 [ 0, %186 ], [ %208, %207 ]
  %195 = phi ptr [ %188, %186 ], [ %209, %207 ]
  %196 = getelementptr inbounds %struct.MFace, ptr %195, i64 0, i32 4
  %197 = load i16, ptr %196, align 4, !tbaa !263
  %198 = sext i16 %197 to i64
  %199 = getelementptr inbounds ptr, ptr %190, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !76
  %201 = icmp eq ptr %200, %133
  br i1 %201, label %202, label %207

202:                                              ; preds = %193
  %203 = load ptr, ptr %191, align 8, !tbaa !258
  %204 = getelementptr inbounds %struct.MTFace, ptr %203, i64 %194, i32 4
  %205 = load i16, ptr %204, align 2, !tbaa !260
  %206 = or i16 %205, 32
  store i16 %206, ptr %204, align 2, !tbaa !260
  br label %207

207:                                              ; preds = %193, %202
  %208 = add nuw nsw i64 %194, 1
  %209 = getelementptr inbounds %struct.MFace, ptr %195, i64 1
  %210 = icmp eq i64 %208, %192
  br i1 %210, label %211, label %193, !llvm.loop !270

211:                                              ; preds = %166, %207, %182, %174, %178, %171
  %212 = load ptr, ptr %152, align 8, !tbaa !76
  %213 = icmp eq ptr %212, null
  br i1 %213, label %215, label %151, !llvm.loop !271

214:                                              ; preds = %145
  store i32 16, ptr %139, align 8, !tbaa !69
  br label %215

215:                                              ; preds = %211, %147, %214, %142, %132
  %216 = phi i32 [ %134, %132 ], [ 0, %142 ], [ %134, %214 ], [ %134, %147 ], [ %134, %211 ]
  %217 = load ptr, ptr %133, align 8, !tbaa !76
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %132, !llvm.loop !272

219:                                              ; preds = %215, %128
  %220 = phi i32 [ 1, %128 ], [ %216, %215 ]
  ret i32 %220
}

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @encode_tfaceflag(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !273 {
  %3 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 2, !tbaa !260
  %5 = sext i16 %4 to i32
  %6 = icmp eq i32 %1, 0
  %7 = and i32 %5, -2173
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = and i32 %8, -125
  %10 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !274
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 15
  %14 = or i32 %9, %13
  %15 = add nuw nsw i32 %14, 1
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @check_tfaceneedmaterial(i32 noundef %0) unnamed_addr #16 !PGOFuncName !275 {
  %2 = add nsw i32 %0, -1
  %3 = and i32 %2, -67677
  %4 = icmp ne i32 %3, 1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @convert_tfacenomaterial(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #2 !PGOFuncName !276 {
  %5 = alloca [66 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %5) #26
  %6 = tail call fastcc i32 @integer_getdigits(i32 noundef %3) #23
  %7 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 66, ptr noundef nonnull @.str.10, i32 noundef %6, i32 noundef %3) #24
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %9 = getelementptr inbounds i8, ptr %5, i64 2
  %10 = call ptr @BLI_findstring(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 34) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = call fastcc signext i16 @mesh_getmaterialnumber(ptr noundef %1, ptr noundef nonnull %10) #23
  %14 = icmp eq i16 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call fastcc signext i16 @mesh_addmaterial(ptr noundef %1, ptr noundef nonnull %10) #23
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i16 [ %16, %15 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.MTFace, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !277
  call fastcc void @set_facetexture_flags(ptr noundef nonnull %10, ptr noundef %20) #23
  br label %34

21:                                               ; preds = %4
  %22 = call ptr @BKE_material_add(ptr noundef %0, ptr noundef nonnull %9) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %9) #23
  %26 = call fastcc signext i16 @mesh_addmaterial(ptr noundef %1, ptr noundef nonnull %22) #23
  %27 = getelementptr inbounds %struct.MTFace, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !277
  call fastcc void @set_facetexture_flags(ptr noundef nonnull %22, ptr noundef %28) #23
  call fastcc void @decode_tfaceflag(ptr noundef nonnull %22, i32 noundef %3) #23
  %29 = sub nsw i32 0, %3
  %30 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 28
  store i32 %29, ptr %30, align 8, !tbaa !69
  call void @id_us_min(ptr noundef nonnull %22) #24
  br label %34

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %9, ptr noundef nonnull %32) #23
  br label %34

34:                                               ; preds = %24, %31, %17
  %35 = phi i16 [ %18, %17 ], [ %26, %24 ], [ -1, %31 ]
  %36 = getelementptr inbounds %struct.MTFace, ptr %2, i64 0, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !260
  %38 = or i16 %37, 32
  store i16 %38, ptr %36, align 2, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %5) #26
  ret i16 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_facetexture_flags(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !278 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = or i32 %6, 2048
  store i32 %7, ptr %5, align 4, !tbaa !72
  %8 = tail call zeroext i8 @BKE_image_has_alpha(ptr noundef nonnull %1) #24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4, !tbaa !72
  %12 = or i32 %11, 536870912
  store i32 %12, ptr %5, align 4, !tbaa !72
  br label %13

13:                                               ; preds = %4, %10, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @decode_tfaceflag(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !279 {
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28
  %4 = add nsw i32 %1, -1
  %5 = ashr i32 %4, 15
  %6 = shl i32 %4, 7
  %7 = and i32 %6, 128
  %8 = xor i32 %7, 128
  store i32 %8, ptr %3, align 4, !tbaa !280
  %9 = and i32 %4, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 50
  %13 = load i16, ptr %12, align 2, !tbaa !74
  %14 = or i16 %13, 2
  store i16 %14, ptr %12, align 2, !tbaa !74
  br label %15

15:                                               ; preds = %2, %11
  %16 = and i32 %4, 17920
  %17 = icmp eq i32 %16, 512
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = lshr i32 %4, 5
  %20 = and i32 %19, 16
  %21 = lshr i32 %4, 2
  %22 = and i32 %21, 256
  %23 = or disjoint i32 %20, %22
  %24 = lshr i32 %4, 8
  %25 = and i32 %24, 64
  %26 = or disjoint i32 %23, %25
  %27 = or disjoint i32 %26, %8
  %28 = xor i32 %27, 16
  store i32 %28, ptr %3, align 4, !tbaa !280
  br label %29

29:                                               ; preds = %15, %18
  %30 = and i32 %4, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = and i32 %4, 4096
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = and i32 %4, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35, %32, %29
  %39 = phi i32 [ 512, %29 ], [ 1024, %32 ], [ 2048, %35 ]
  %40 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !281
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 4, !tbaa !281
  br label %43

43:                                               ; preds = %38, %35
  %44 = and i32 %4, 2
  %45 = icmp ne i32 %44, 0
  %46 = add nsw i32 %5, -1
  %47 = icmp ult i32 %46, 2
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = and i32 %4, 65536
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = and i32 %4, 32768
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = and i32 %4, 131072
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %52, %49, %43
  %59 = phi i32 [ 8, %43 ], [ 2, %49 ], [ 1, %52 ], [ 4, %55 ]
  %60 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 28, i32 1
  store i32 %59, ptr %60, align 4, !tbaa !282
  br label %61

61:                                               ; preds = %58, %55
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_material_index_remove(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_curve_material_index_remove(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_mesh_material_index_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_curve_material_index_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @integer_getdigits(i32 noundef %0) unnamed_addr #20 !PGOFuncName !283 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %1 ]
  %6 = sdiv i32 %5, 10
  %7 = add nuw nsw i32 %4, 1
  %8 = add i32 %5, 9
  %9 = icmp ult i32 %8, 19
  br i1 %9, label %10, label %3, !llvm.loop !284

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 1, %1 ], [ %7, %3 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i16 @mesh_getmaterialnumber(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #11 !PGOFuncName !285 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %4 = load i16, ptr %3, align 2, !tbaa !109
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = zext nneg i16 %4 to i64
  br label %10

10:                                               ; preds = %6, %15
  %11 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %20, label %10, !llvm.loop !286

18:                                               ; preds = %10
  %19 = trunc i64 %11 to i16
  br label %20

20:                                               ; preds = %15, %18, %2
  %21 = phi i16 [ -1, %2 ], [ %19, %18 ], [ -1, %15 ]
  ret i16 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @mesh_addmaterial(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !287 {
  tail call void @BKE_material_append_id(ptr noundef %0, ptr noundef null) #23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %6 = load i16, ptr %5, align 2, !tbaa !109
  %7 = sext i16 %6 to i64
  %8 = getelementptr ptr, ptr %4, i64 %7
  %9 = getelementptr ptr, ptr %8, i64 -1
  store ptr %1, ptr %9, align 8, !tbaa !76
  tail call void @id_us_plus(ptr noundef %1) #24
  %10 = load i16, ptr %5, align 2, !tbaa !109
  %11 = add i16 %10, -1
  ret i16 %11
}

; Function Attrs: optsize
declare zeroext i8 @BKE_image_has_alpha(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind }

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
!38 = !{!39, !35, i64 164}
!39 = !{!"Material", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !44, i64 224, !45, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !42, i64 372, !42, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !42, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !43, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !42, i64 588, !42, i64 590, !41, i64 592, !41, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !41, i64 768, !41, i64 776, !41, i64 784, !41, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !42, i64 876, !42, i64 878, !43, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !41, i64 920, !46, i64 928}
!40 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !41, i64 112}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!45 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!46 = !{!"ListBase", !41, i64 0, !41, i64 8}
!47 = !{!39, !35, i64 180}
!48 = !{!39, !35, i64 208}
!49 = !{!39, !42, i64 360}
!50 = !{!42, !42, i64 0}
!51 = !{!39, !36, i64 363}
!52 = !{!39, !35, i64 800}
!53 = !{!39, !42, i64 356}
!54 = !{!39, !42, i64 358}
!55 = !{!39, !35, i64 532}
!56 = !{!39, !42, i64 906}
!57 = !{!39, !42, i64 374}
!58 = !{!39, !42, i64 372}
!59 = !{!39, !35, i64 388}
!60 = !{!39, !42, i64 392}
!61 = !{!39, !42, i64 544}
!62 = !{!39, !36, i64 542}
!63 = !{!39, !35, i64 872}
!64 = !{!39, !35, i64 280}
!65 = !{!39, !42, i64 288}
!66 = !{!39, !42, i64 292}
!67 = !{!39, !42, i64 290}
!68 = !{!39, !42, i64 294}
!69 = !{!39, !43, i64 312}
!70 = !{!39, !43, i64 316}
!71 = !{!39, !43, i64 320}
!72 = !{!39, !43, i64 396}
!73 = !{!39, !43, i64 404}
!74 = !{!39, !42, i64 394}
!75 = !{!39, !41, i64 792}
!76 = !{!41, !41, i64 0}
!77 = !{!78, !41, i64 16}
!78 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!79 = !{!80, !43, i64 100}
!80 = !{!"Tex", !40, i64 0, !41, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !43, i64 252, !43, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !81, i64 296, !41, i64 336, !41, i64 344, !41, i64 352, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !36, i64 408, !36, i64 409}
!81 = !{!"ImageUser", !41, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !43, i64 36}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!39, !41, i64 592}
!85 = !{!39, !41, i64 600}
!86 = !{!39, !43, i64 104}
!87 = !{!39, !41, i64 768}
!88 = !{!39, !41, i64 920}
!89 = !{!39, !41, i64 928}
!90 = !{!39, !41, i64 784}
!91 = distinct !{!91, !83}
!92 = !{!"material.c:BLI_listbase_clear"}
!93 = distinct !{!93, !83}
!94 = !{!95, !41, i64 0}
!95 = !{!"Global", !41, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !46, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!96 = !{!39, !41, i64 24}
!97 = !{!39, !43, i64 100}
!98 = !{!99, !41, i64 440}
!99 = !{!"Object", !40, i64 0, !41, i64 120, !41, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !100, i64 312, !41, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !43, i64 432, !43, i64 436, !41, i64 440, !41, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !41, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !101, i64 1304, !101, i64 1312, !43, i64 1320, !43, i64 1324, !46, i64 1328, !46, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !36, i64 1384, !41, i64 1392, !46, i64 1400, !41, i64 1416}
!100 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!101 = !{!"long", !36, i64 0}
!102 = !{!99, !43, i64 456}
!103 = !{!99, !41, i64 24}
!104 = distinct !{!104, !83}
!105 = distinct !{!105, !83}
!106 = !{!107, !41, i64 152}
!107 = !{!"Mesh", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !108, i64 280, !108, i64 480, !108, i64 680, !108, i64 880, !108, i64 1080, !43, i64 1280, !43, i64 1284, !43, i64 1288, !43, i64 1292, !43, i64 1296, !43, i64 1300, !43, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !43, i64 1344, !42, i64 1348, !42, i64 1350, !35, i64 1352, !43, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !42, i64 1366, !41, i64 1368}
!108 = !{!"CustomData", !41, i64 0, !36, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !41, i64 184, !41, i64 192}
!109 = !{!107, !42, i64 1366}
!110 = !{!107, !41, i64 24}
!111 = distinct !{!111, !83}
!112 = distinct !{!112, !83}
!113 = !{!114, !41, i64 200}
!114 = !{!"Curve", !40, i64 0, !41, i64 120, !41, i64 128, !46, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !35, i64 252, !35, i64 256, !43, i64 260, !42, i64 264, !42, i64 266, !43, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !43, i64 292, !43, i64 296, !36, i64 300, !42, i64 304, !36, i64 306, !36, i64 307, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !43, i64 348, !43, i64 352, !43, i64 356, !43, i64 360, !43, i64 364, !41, i64 368, !41, i64 376, !36, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !43, i64 488, !43, i64 492, !41, i64 496, !115, i64 504, !35, i64 512, !35, i64 516, !35, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!115 = !{!"CharInfo", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !42, i64 6}
!116 = !{!114, !42, i64 266}
!117 = !{!114, !41, i64 24}
!118 = distinct !{!118, !83}
!119 = distinct !{!119, !83}
!120 = !{!121, !41, i64 176}
!121 = !{!"MetaBall", !40, i64 0, !41, i64 120, !46, i64 128, !46, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !36, i64 192, !36, i64 204, !36, i64 216, !35, i64 228, !35, i64 232, !35, i64 236, !41, i64 240}
!122 = !{!121, !42, i64 186}
!123 = !{!121, !41, i64 24}
!124 = distinct !{!124, !83}
!125 = distinct !{!125, !83}
!126 = distinct !{!126, !83}
!127 = distinct !{!127, !83}
!128 = distinct !{!128, !83}
!129 = distinct !{!129, !83}
!130 = distinct !{!130, !83}
!131 = distinct !{!131, !83}
!132 = distinct !{!132, !83}
!133 = distinct !{!133, !83}
!134 = !{!"material.c:extern_local_material"}
!135 = distinct !{!135, !83}
!136 = distinct !{!136, !83}
!137 = !{!99, !42, i64 136}
!138 = !{!99, !41, i64 296}
!139 = distinct !{!139, !83}
!140 = distinct !{!140, !83}
!141 = !{!"material.c:material_data_index_remove_id"}
!142 = !{!"material.c:material_data_index_clear_id"}
!143 = !{!99, !41, i64 448}
!144 = !{!36, !36, i64 0}
!145 = !{!39, !36, i64 543}
!146 = !{!147, !41, i64 240}
!147 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !36, i64 40, !36, i64 104, !43, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !36, i64 188, !46, i64 200, !46, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !46, i64 264, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !43, i64 308, !36, i64 312, !42, i64 376, !42, i64 378, !35, i64 380, !35, i64 384, !42, i64 388, !42, i64 390, !41, i64 392, !148, i64 400, !148, i64 416, !148, i64 432, !42, i64 448, !42, i64 450, !43, i64 452, !41, i64 456}
!148 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!149 = distinct !{!149, !83}
!150 = !{!99, !43, i64 460}
!151 = !{!40, !41, i64 24}
!152 = !{!153, !43, i64 8}
!153 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !43, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !42, i64 8496, !42, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !46, i64 8536, !46, i64 8552, !46, i64 8568, !46, i64 8584, !46, i64 8600, !46, i64 8616, !46, i64 8632, !36, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !36, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !43, i64 8912, !43, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !35, i64 8956, !35, i64 8960, !43, i64 8964, !42, i64 8968, !42, i64 8970, !35, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !154, i64 8984, !36, i64 9760, !36, i64 9772, !42, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !43, i64 10896, !43, i64 10900, !35, i64 10904, !35, i64 10908, !43, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !155, i64 10928}
!154 = !{!"ColorBand", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!155 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !42, i64 24, !36, i64 26}
!156 = !{i8 0, i8 2}
!157 = distinct !{!157, !83}
!158 = distinct !{!158, !83}
!159 = distinct !{!159, !83}
!160 = distinct !{!160, !83}
!161 = distinct !{!161, !83}
!162 = !{!99, !41, i64 1280}
!163 = distinct !{!163, !83}
!164 = !{!39, !43, i64 400}
!165 = !{!39, !43, i64 408}
!166 = !{!167, !41, i64 360}
!167 = !{!"bNodeTree", !40, i64 0, !41, i64 120, !41, i64 128, !36, i64 136, !41, i64 200, !41, i64 208, !36, i64 216, !46, i64 224, !46, i64 240, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !42, i64 276, !42, i64 278, !43, i64 280, !43, i64 284, !42, i64 288, !42, i64 290, !43, i64 292, !148, i64 296, !46, i64 312, !46, i64 328, !41, i64 344, !168, i64 352, !43, i64 356, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !41, i64 408, !41, i64 416, !41, i64 424}
!168 = !{!"bNodeInstanceKey", !43, i64 0}
!169 = !{!39, !35, i64 448}
!170 = !{!"material.c:do_init_render_material"}
!171 = !{!39, !42, i64 412}
!172 = !{!39, !43, i64 536}
!173 = !{!80, !42, i64 232}
!174 = !{!80, !36, i64 408}
!175 = !{!80, !41, i64 336}
!176 = !{!78, !42, i64 120}
!177 = !{!39, !42, i64 588}
!178 = !{!78, !42, i64 128}
!179 = distinct !{!179, !83}
!180 = !{!39, !35, i64 168}
!181 = !{!39, !35, i64 176}
!182 = !{!39, !35, i64 172}
!183 = !{!184, !41, i64 24}
!184 = !{!"Group", !40, i64 0, !46, i64 120, !43, i64 136, !36, i64 140}
!185 = distinct !{!185, !83}
!186 = !{!"material.c:init_render_nodetree"}
!187 = !{!147, !42, i64 172}
!188 = distinct !{!188, !83}
!189 = !{!39, !42, i64 590}
!190 = distinct !{!190, !83}
!191 = !{!39, !42, i64 130}
!192 = distinct !{!192, !83}
!193 = distinct !{!193, !83}
!194 = !{!"material.c:material_in_nodetree"}
!195 = distinct !{!195, !83}
!196 = !{!39, !42, i64 98}
!197 = !{!39, !41, i64 120}
!198 = !{!199, !41, i64 48}
!199 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !46, i64 24, !41, i64 40, !46, i64 48, !46, i64 64, !43, i64 80, !43, i64 84, !42, i64 88, !42, i64 90, !35, i64 92}
!200 = !{!"material.c:material_node_drivers_update"}
!201 = !{!167, !41, i64 120}
!202 = distinct !{!202, !83}
!203 = !{!39, !42, i64 912}
!204 = !{!205, !41, i64 264}
!205 = !{!"Scene", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !46, i64 152, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !206, i64 280, !214, i64 4264, !46, i64 4296, !46, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !42, i64 4376, !42, i64 4378, !43, i64 4380, !46, i64 4384, !215, i64 4400, !216, i64 4416, !219, i64 4600, !41, i64 4608, !220, i64 4616, !41, i64 4640, !101, i64 4648, !101, i64 4656, !208, i64 4664, !209, i64 4824, !221, i64 4888, !41, i64 4952}
!206 = !{!"RenderData", !207, i64 0, !41, i64 248, !41, i64 256, !210, i64 264, !211, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !35, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !42, i64 432, !42, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !43, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !43, i64 484, !43, i64 488, !42, i64 492, !42, i64 494, !43, i64 496, !43, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !148, i64 544, !148, i64 560, !212, i64 576, !46, i64 592, !42, i64 608, !42, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !43, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !35, i64 660, !35, i64 664, !42, i64 668, !42, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !43, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !42, i64 2524, !42, i64 2526, !35, i64 2528, !35, i64 2532, !42, i64 2536, !42, i64 2538, !35, i64 2540, !42, i64 2544, !42, i64 2546, !43, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !35, i64 2560, !35, i64 2564, !41, i64 2568, !43, i64 2576, !35, i64 2580, !36, i64 2584, !213, i64 2616, !43, i64 3976, !43, i64 3980}
!207 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !208, i64 24, !209, i64 184}
!208 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !41, i64 144, !41, i64 152}
!209 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!210 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !42, i64 48, !42, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!211 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !35, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !41, i64 64}
!212 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!213 = !{!"BakeData", !207, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!214 = !{!"AudioData", !43, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !43, i64 16, !42, i64 20, !42, i64 22, !35, i64 24, !35, i64 28}
!215 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!216 = !{!"GameData", !215, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !217, i64 40, !42, i64 64, !42, i64 66, !35, i64 68, !218, i64 72, !35, i64 128, !35, i64 132, !43, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!217 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !35, i64 8, !35, i64 12, !41, i64 16}
!218 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !43, i64 40, !35, i64 44, !35, i64 48, !42, i64 52, !42, i64 54}
!219 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!220 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!221 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!222 = !{!223, !43, i64 116}
!223 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !42, i64 56, !36, i64 58, !36, i64 59, !224, i64 64, !226, i64 168, !35, i64 336, !35, i64 340, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 349, !42, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !41, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !42, i64 434, !42, i64 436, !42, i64 438, !42, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !43, i64 448, !43, i64 452, !43, i64 456, !43, i64 460, !42, i64 464, !42, i64 466, !43, i64 468, !35, i64 472, !35, i64 476, !227, i64 480, !228, i64 608}
!224 = !{!"ImagePaintSettings", !225, i64 0, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !36, i64 48, !43, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !35, i64 100}
!225 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!226 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !41, i64 120, !35, i64 128, !35, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !41, i64 152, !41, i64 160}
!227 = !{!"UnifiedPaintSettings", !43, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !43, i64 40, !36, i64 44, !35, i64 52, !43, i64 56, !43, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !43, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !43, i64 108, !41, i64 112, !35, i64 120, !43, i64 124}
!228 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!229 = !{!39, !42, i64 908}
!230 = !{!39, !42, i64 910}
!231 = !{!147, !41, i64 32}
!232 = !{!233, !42, i64 436}
!233 = !{!"bNodeType", !41, i64 0, !41, i64 8, !42, i64 16, !36, i64 18, !43, i64 84, !36, i64 88, !36, i64 152, !43, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !42, i64 436, !42, i64 438, !42, i64 440, !41, i64 448, !41, i64 456, !36, i64 464, !41, i64 528, !41, i64 536, !41, i64 544, !41, i64 552, !41, i64 560, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !41, i64 616, !41, i64 624, !41, i64 632, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !41, i64 696, !41, i64 704, !41, i64 712, !234, i64 720}
!234 = !{!"ExtensionRNA", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!235 = !{!233, !43, i64 84}
!236 = distinct !{!236, !83}
!237 = !{!238, !41, i64 0}
!238 = !{!"TexPaintSlot", !41, i64 0, !41, i64 8, !43, i64 16, !43, i64 20}
!239 = distinct !{!239, !83}
!240 = distinct !{!240, !83}
!241 = !{!80, !41, i64 352}
!242 = !{!238, !41, i64 8}
!243 = !{!238, !43, i64 16}
!244 = distinct !{!244, !83}
!245 = !{!"material.c:get_mtex_slot_valid_texpaint"}
!246 = !{!78, !42, i64 0}
!247 = distinct !{!247, !83}
!248 = !{!"material.c:min_ff"}
!249 = distinct !{!249, !83}
!250 = distinct !{!250, !83}
!251 = distinct !{!251, !83}
!252 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76, i64 24, i64 8, !76, i64 32, i64 66, !144, i64 98, i64 2, !50, i64 100, i64 4, !253, i64 104, i64 4, !253, i64 108, i64 4, !253, i64 112, i64 8, !76}
!253 = !{!43, !43, i64 0}
!254 = distinct !{!254, !83}
!255 = !{!107, !41, i64 680}
!256 = !{!107, !43, i64 1288}
!257 = !{!107, !41, i64 208}
!258 = !{!259, !41, i64 96}
!259 = !{!"CustomDataLayer", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !41, i64 96}
!260 = !{!261, !42, i64 42}
!261 = !{!"MTFace", !36, i64 0, !41, i64 32, !36, i64 40, !36, i64 41, !42, i64 42, !42, i64 44, !42, i64 46}
!262 = !{i32 0, i32 2}
!263 = !{!264, !42, i64 16}
!264 = !{!"MFace", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !36, i64 18, !36, i64 19}
!265 = distinct !{!265, !83}
!266 = distinct !{!266, !83}
!267 = distinct !{!267, !83}
!268 = distinct !{!268, !83}
!269 = distinct !{!269, !83}
!270 = distinct !{!270, !83}
!271 = distinct !{!271, !83}
!272 = distinct !{!272, !83}
!273 = !{!"material.c:encode_tfaceflag"}
!274 = !{!261, !36, i64 41}
!275 = !{!"material.c:check_tfaceneedmaterial"}
!276 = !{!"material.c:convert_tfacenomaterial"}
!277 = !{!261, !41, i64 32}
!278 = !{!"material.c:set_facetexture_flags"}
!279 = !{!"material.c:decode_tfaceflag"}
!280 = !{!45, !43, i64 0}
!281 = !{!45, !43, i64 8}
!282 = !{!45, !43, i64 4}
!283 = !{!"material.c:integer_getdigits"}
!284 = distinct !{!284, !83}
!285 = !{!"material.c:mesh_getmaterialnumber"}
!286 = distinct !{!286, !83}
!287 = !{!"material.c:mesh_addmaterial"}
