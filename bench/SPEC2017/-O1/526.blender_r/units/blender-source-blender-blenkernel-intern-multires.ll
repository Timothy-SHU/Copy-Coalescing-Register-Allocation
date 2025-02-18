; ModuleID = 'blender/source/blender/blenkernel/intern/multires.c'
source_filename = "blender/source/blender/blenkernel/intern/multires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.CCGDerivedMesh = type { %struct.DerivedMesh, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32, i32, i32, ptr, ptr, i32 }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.anon.1 = type { i32, i32, ptr }
%struct.anon.2 = type { i32, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MDisps = type { i32, i32, ptr, ptr }
%struct.GridPaintMask = type { ptr, i32, i32 }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.MeshElemMap = type { ptr, i32 }
%struct.MLoop = type { i32, i32 }
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
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.Multires = type { %struct.ListBase, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.CustomData, %struct.CustomData, ptr, ptr }
%struct.MultiresLevel = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.MultiresEdge = type { [2 x i32], i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MultiresFace = type { [4 x i32], i32, i8, i8, [2 x i8] }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MultiresColFace = type { [4 x %struct.MultiresCol] }
%struct.MultiresCol = type { float, float, float, float }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.IndexNode = type { ptr, ptr, i32 }

@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"multiresReshape_deformVerts\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"multires apply base origco\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fake_loops\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fake_co\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"subGridData*\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"subGridData\00", align 1
@multires_side_tot = internal unnamed_addr constant [14 x i32] [i32 0, i32 2, i32 3, i32 5, i32 9, i32 17, i32 33, i32 65, i32 129, i32 257, i32 513, i32 1025, i32 2049, i32 4097], align 16
@.str.7 = private unnamed_addr constant [27 x i8] c"disp in multires_set_space\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"multires disp in conversion\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"mdisp topology\00", align 1
@multires_grid_tot = internal unnamed_addr constant [14 x i32] [i32 0, i32 4, i32 9, i32 25, i32 81, i32 289, i32 1089, i32 4225, i32 16641, i32 66049, i32 263169, i32 1050625, i32 4198401, i32 16785409], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"multires disps\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"downsample hidden\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"multires_grid_paint_mask_downsample\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"MDisps.hidden initialize\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"gpm.data\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"MDisps.hidden upsample\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"multires vvmap\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"multires fmap\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"multires emap\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"multires fmem\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"multires emem\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"vert face map\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"vert face map mem\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"vert edge map\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"vert edge map mem\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"multiresScale vertCos\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @multires_customdata_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  tail call void @CustomData_external_remove(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 19, i32 noundef 0) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  tail call void @BM_data_layer_free(ptr noundef %8, ptr noundef nonnull %9, i32 noundef 19) #14
  %10 = load ptr, ptr %3, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  tail call void @BM_data_layer_free(ptr noundef %10, ptr noundef nonnull %11, i32 noundef 35) #14
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %15 = load i32, ptr %14, align 4, !tbaa !47
  tail call void @CustomData_external_remove(ptr noundef nonnull %13, ptr noundef %0, i32 noundef 19, i32 noundef %15) #14
  %16 = load i32, ptr %14, align 4, !tbaa !47
  %17 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %13, i32 noundef 19, i32 noundef %16) #14
  %18 = load i32, ptr %14, align 4, !tbaa !47
  %19 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %13, i32 noundef 35, i32 noundef %18) #14
  br label %20

20:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @CustomData_external_remove(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_multires_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @modifierType_getInfo(i32 noundef %5) #14
  %7 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %8 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %2, i64 noundef %7) #14
  %9 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %6, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr %10(ptr noundef %1, ptr noundef %2, ptr noundef %8, i32 noundef 10) #14
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call ptr @CDDM_copy(ptr noundef %8) #14
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %11, %3 ]
  ret ptr %16
}

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @find_multires_modifier_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %12
  %5 = phi ptr [ %14, %12 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 29
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4, %9
  %13 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !54

16:                                               ; preds = %9, %12, %2
  %17 = phi ptr [ null, %2 ], [ %5, %9 ], [ null, %12 ]
  ret ptr %17
}

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_multires_modifier(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %20, %18 ], [ %5, %3 ]
  %9 = phi ptr [ %19, %18 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = icmp eq i32 %11, 29
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = icmp eq ptr %9, null
  %15 = select i1 %14, ptr %8, ptr %9
  %16 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1) #14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %7, %13
  %19 = phi ptr [ %15, %13 ], [ %9, %7 ]
  %20 = load ptr, ptr %8, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !58

22:                                               ; preds = %18, %13, %3
  %23 = phi ptr [ null, %3 ], [ null, %18 ], [ %8, %13 ]
  %24 = phi ptr [ null, %3 ], [ %19, %18 ], [ %15, %13 ]
  %25 = icmp eq ptr %23, null
  %26 = icmp ne i8 %2, 0
  %27 = and i1 %26, %25
  %28 = select i1 %27, ptr %24, ptr %23
  ret ptr %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @multires_set_tot_level(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = trunc i32 %2 to i8
  %5 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 4
  store i8 %4, ptr %5, align 1, !tbaa !59
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !65
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %12, %2
  %14 = tail call i32 @llvm.smax.i32(i32 %12, i32 %2)
  %15 = and i32 %2, 255
  %16 = icmp ugt i32 %14, %15
  %17 = select i1 %13, i8 %11, i8 %4
  %18 = select i1 %16, i8 %4, i8 %17
  store i8 %18, ptr %10, align 8, !tbaa !65
  br label %19

19:                                               ; preds = %9, %3
  %20 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 2
  %21 = load i8, ptr %20, align 1, !tbaa !66
  %22 = zext i8 %21 to i32
  %23 = icmp sgt i32 %22, %2
  %24 = tail call i32 @llvm.smax.i32(i32 %22, i32 %2)
  %25 = and i32 %2, 255
  %26 = icmp ugt i32 %24, %25
  %27 = select i1 %23, i8 %21, i8 %4
  %28 = select i1 %26, i8 %4, i8 %27
  store i8 %28, ptr %20, align 1, !tbaa !66
  %29 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 3
  %30 = load i8, ptr %29, align 2, !tbaa !67
  %31 = zext i8 %30 to i32
  %32 = icmp sgt i32 %31, %2
  %33 = tail call i32 @llvm.smax.i32(i32 %31, i32 %2)
  %34 = icmp ugt i32 %33, %25
  %35 = select i1 %32, i8 %30, i8 %4
  %36 = select i1 %34, i8 %4, i8 %35
  store i8 %36, ptr %29, align 2, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @multires_mark_as_modified(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %6, i64 0, i32 20, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = or i32 %10, %1
  store i32 %11, ptr %9, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @multires_force_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %0) #14
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  tail call void @BKE_pbvh_free(ptr noundef nonnull %9) #14
  %12 = load ptr, ptr %4, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  store ptr null, ptr %13, align 8, !tbaa !74
  br label %14

14:                                               ; preds = %3, %7, %11, %1
  ret void
}

declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multires_force_external_reload(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !47
  tail call void @CustomData_external_reload(ptr noundef nonnull %3, ptr noundef %2, i64 noundef 524288, i32 noundef %5) #14
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %0) #14
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  tail call void @BKE_pbvh_free(ptr noundef nonnull %13) #14
  %16 = load ptr, ptr %8, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.SculptSession, ptr %16, i64 0, i32 15
  store ptr null, ptr %17, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %1, %7, %11, %15
  ret void
}

declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @CustomData_external_reload(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multires_force_render_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @modifiers_findByType(ptr noundef nonnull %0, i32 noundef 29) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %0) #14
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @BKE_pbvh_free(ptr noundef nonnull %17) #14
  %20 = load ptr, ptr %12, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.SculptSession, ptr %20, i64 0, i32 15
  store ptr null, ptr %21, align 8, !tbaa !74
  br label %22

22:                                               ; preds = %19, %15, %11, %8, %3, %1
  ret void
}

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @multiresModifier_reshapeFromDM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @modifierType_getInfo(i32 noundef %6) #14
  %8 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %9 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %2, i64 noundef %8) #14
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = tail call ptr %11(ptr noundef %1, ptr noundef %2, ptr noundef %9, i32 noundef 10) #14
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = tail call ptr @CDDM_copy(ptr noundef %9) #14
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %4 ]
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %3, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = tail call i32 %23(ptr noundef nonnull %17) #14
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = tail call i32 %26(ptr noundef nonnull %3) #14
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 31
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = tail call ptr %31(ptr noundef nonnull %3) #14
  tail call fastcc void @multires_mvert_to_ss(ptr noundef nonnull %17, ptr noundef %32)
  %33 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %17, i64 0, i32 20, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !69
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !69
  %36 = icmp eq ptr %2, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %2) #14
  %38 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.SculptSession, ptr %39, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  tail call void @BKE_pbvh_free(ptr noundef nonnull %43) #14
  %46 = load ptr, ptr %38, align 8, !tbaa !73
  %47 = getelementptr inbounds %struct.SculptSession, ptr %46, i64 0, i32 15
  store ptr null, ptr %47, align 8, !tbaa !74
  br label %49

48:                                               ; preds = %21, %16
  br i1 %18, label %49, label %53

49:                                               ; preds = %48, %45, %41, %37, %29
  %50 = phi i32 [ 1, %29 ], [ 1, %37 ], [ 1, %41 ], [ 1, %45 ], [ 0, %48 ]
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 95
  %52 = load ptr, ptr %51, align 8, !tbaa !78
  tail call void %52(ptr noundef nonnull %17) #14
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i32 [ 0, %48 ], [ %50, %49 ]
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal fastcc void @multires_mvert_to_ss(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #14
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #14
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 68
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  call void %9(ptr noundef %0, ptr noundef nonnull %3) #14
  %10 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %5) #14
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %100

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %14 = add i32 %6, -1
  %15 = icmp sgt i32 %6, 2
  %16 = icmp sgt i32 %6, 2
  %17 = zext nneg i32 %10 to i64
  br label %18

18:                                               ; preds = %12, %96
  %19 = phi i64 [ 0, %12 ], [ %98, %96 ]
  %20 = phi i32 [ 0, %12 ], [ %97, %96 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.anon.0, ptr %21, i64 %19, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %23) #14
  %25 = call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %23) #14
  %26 = sext i32 %20 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %1, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !84
  store float %28, ptr %25, align 4, !tbaa !84
  %29 = getelementptr inbounds float, ptr %27, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !84
  %31 = getelementptr inbounds float, ptr %25, i64 1
  store float %30, ptr %31, align 4, !tbaa !84
  %32 = getelementptr inbounds float, ptr %27, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !84
  %34 = getelementptr inbounds float, ptr %25, i64 2
  store float %33, ptr %34, align 4, !tbaa !84
  %35 = add nsw i32 %20, 1
  %36 = icmp sgt i32 %24, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %62, %18
  %38 = phi i32 [ %35, %18 ], [ %63, %62 ]
  %39 = icmp sgt i32 %24, 0
  br i1 %39, label %66, label %96

40:                                               ; preds = %18, %62
  %41 = phi i32 [ %63, %62 ], [ %35, %18 ]
  %42 = phi i32 [ %64, %62 ], [ 0, %18 ]
  br i1 %15, label %43, label %62

43:                                               ; preds = %40
  %44 = sext i32 %41 to i64
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ %44, %43 ], [ %58, %45 ]
  %47 = phi i32 [ 1, %43 ], [ %57, %45 ]
  %48 = call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %5, ptr noundef %23, i32 noundef %42, i32 noundef %47) #14
  %49 = getelementptr inbounds %struct.MVert, ptr %1, i64 %46
  %50 = load float, ptr %49, align 4, !tbaa !84
  store float %50, ptr %48, align 4, !tbaa !84
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !84
  %53 = getelementptr inbounds float, ptr %48, i64 1
  store float %52, ptr %53, align 4, !tbaa !84
  %54 = getelementptr inbounds float, ptr %49, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !84
  %56 = getelementptr inbounds float, ptr %48, i64 2
  store float %55, ptr %56, align 4, !tbaa !84
  %57 = add nuw nsw i32 %47, 1
  %58 = add nsw i64 %46, 1
  %59 = icmp eq i32 %57, %14
  br i1 %59, label %60, label %45, !llvm.loop !85

60:                                               ; preds = %45
  %61 = trunc i64 %58 to i32
  br label %62

62:                                               ; preds = %60, %40
  %63 = phi i32 [ %41, %40 ], [ %61, %60 ]
  %64 = add nuw nsw i32 %42, 1
  %65 = icmp eq i32 %64, %24
  br i1 %65, label %37, label %40, !llvm.loop !86

66:                                               ; preds = %37, %92
  %67 = phi i32 [ %93, %92 ], [ %38, %37 ]
  %68 = phi i32 [ %94, %92 ], [ 0, %37 ]
  br i1 %16, label %69, label %92

69:                                               ; preds = %66, %88
  %70 = phi i32 [ %89, %88 ], [ %67, %66 ]
  %71 = phi i32 [ %90, %88 ], [ 1, %66 ]
  %72 = sext i32 %70 to i64
  br label %73

73:                                               ; preds = %69, %73
  %74 = phi i64 [ %72, %69 ], [ %86, %73 ]
  %75 = phi i32 [ 1, %69 ], [ %85, %73 ]
  %76 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %5, ptr noundef %23, i32 noundef %68, i32 noundef %75, i32 noundef %71) #14
  %77 = getelementptr inbounds %struct.MVert, ptr %1, i64 %74
  %78 = load float, ptr %77, align 4, !tbaa !84
  store float %78, ptr %76, align 4, !tbaa !84
  %79 = getelementptr inbounds float, ptr %77, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !84
  %81 = getelementptr inbounds float, ptr %76, i64 1
  store float %80, ptr %81, align 4, !tbaa !84
  %82 = getelementptr inbounds float, ptr %77, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !84
  %84 = getelementptr inbounds float, ptr %76, i64 2
  store float %83, ptr %84, align 4, !tbaa !84
  %85 = add nuw nsw i32 %75, 1
  %86 = add nsw i64 %74, 1
  %87 = icmp eq i32 %85, %14
  br i1 %87, label %88, label %73, !llvm.loop !87

88:                                               ; preds = %73
  %89 = trunc i64 %86 to i32
  %90 = add nuw nsw i32 %71, 1
  %91 = icmp eq i32 %90, %14
  br i1 %91, label %92, label %69, !llvm.loop !88

92:                                               ; preds = %88, %66
  %93 = phi i32 [ %67, %66 ], [ %89, %88 ]
  %94 = add nuw nsw i32 %68, 1
  %95 = icmp eq i32 %94, %24
  br i1 %95, label %96, label %66, !llvm.loop !89

96:                                               ; preds = %92, %37
  %97 = phi i32 [ %38, %37 ], [ %93, %92 ]
  %98 = add nuw nsw i64 %19, 1
  %99 = icmp eq i64 %98, %17
  br i1 %99, label %100, label %18, !llvm.loop !90

100:                                              ; preds = %96, %2
  %101 = phi i32 [ 0, %2 ], [ %97, %96 ]
  %102 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %5) #14
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %106 = icmp sgt i32 %7, 2
  %107 = zext nneg i32 %102 to i64
  %108 = add nsw i32 %7, -2
  br label %109

109:                                              ; preds = %104, %134
  %110 = phi i64 [ 0, %104 ], [ %136, %134 ]
  %111 = phi i32 [ %101, %104 ], [ %135, %134 ]
  %112 = load ptr, ptr %105, align 8, !tbaa !91
  %113 = getelementptr inbounds %struct.anon.1, ptr %112, i64 %110, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !92
  br i1 %106, label %115, label %134

115:                                              ; preds = %109
  %116 = sext i32 %111 to i64
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i64 [ %116, %115 ], [ %130, %117 ]
  %119 = phi i32 [ 1, %115 ], [ %129, %117 ]
  %120 = call ptr @ccgSubSurf_getEdgeData(ptr noundef %5, ptr noundef %114, i32 noundef %119) #14
  %121 = getelementptr inbounds %struct.MVert, ptr %1, i64 %118
  %122 = load float, ptr %121, align 4, !tbaa !84
  store float %122, ptr %120, align 4, !tbaa !84
  %123 = getelementptr inbounds float, ptr %121, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !84
  %125 = getelementptr inbounds float, ptr %120, i64 1
  store float %124, ptr %125, align 4, !tbaa !84
  %126 = getelementptr inbounds float, ptr %121, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !84
  %128 = getelementptr inbounds float, ptr %120, i64 2
  store float %127, ptr %128, align 4, !tbaa !84
  %129 = add nuw nsw i32 %119, 1
  %130 = add nsw i64 %118, 1
  %131 = icmp eq i32 %119, %108
  br i1 %131, label %132, label %117, !llvm.loop !94

132:                                              ; preds = %117
  %133 = trunc i64 %130 to i32
  br label %134

134:                                              ; preds = %132, %109
  %135 = phi i32 [ %111, %109 ], [ %133, %132 ]
  %136 = add nuw nsw i64 %110, 1
  %137 = icmp eq i64 %136, %107
  br i1 %137, label %138, label %109, !llvm.loop !95

138:                                              ; preds = %134, %100
  %139 = phi i32 [ %101, %100 ], [ %135, %134 ]
  %140 = call i32 @ccgSubSurf_getNumVerts(ptr noundef %5) #14
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %144 = sext i32 %139 to i64
  %145 = zext nneg i32 %140 to i64
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ %144, %142 ], [ %161, %146 ]
  %148 = phi i64 [ 0, %142 ], [ %162, %146 ]
  %149 = load ptr, ptr %143, align 8, !tbaa !96
  %150 = getelementptr inbounds %struct.anon.2, ptr %149, i64 %148, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !97
  %152 = call ptr @ccgSubSurf_getVertData(ptr noundef %5, ptr noundef %151) #14
  %153 = getelementptr inbounds %struct.MVert, ptr %1, i64 %147
  %154 = load float, ptr %153, align 4, !tbaa !84
  store float %154, ptr %152, align 4, !tbaa !84
  %155 = getelementptr inbounds float, ptr %153, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !84
  %157 = getelementptr inbounds float, ptr %152, i64 1
  store float %156, ptr %157, align 4, !tbaa !84
  %158 = getelementptr inbounds float, ptr %153, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !84
  %160 = getelementptr inbounds float, ptr %152, i64 2
  store float %159, ptr %160, align 4, !tbaa !84
  %161 = add nsw i64 %147, 1
  %162 = add nuw nsw i64 %148, 1
  %163 = icmp eq i64 %162, %145
  br i1 %163, label %164, label %146, !llvm.loop !99

164:                                              ; preds = %146, %138
  %165 = call i32 @ccgSubSurf_updateToFaces(ptr noundef %5, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @multiresModifier_reshape(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %6 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %3, i64 noundef %5) #14
  %7 = tail call i32 @multiresModifier_reshapeFromDM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6), !range !100
  ret i32 %7
}

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @multiresModifier_reshapeFromDeformMod(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @modifierType_getInfo(i32 noundef %6) #14
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = icmp eq i32 %9, 2
  %11 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %13 = select i1 %10, ptr %11, ptr %12
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = tail call ptr @modifierType_getInfo(i32 noundef %18) #14
  %20 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %21 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %2, i64 noundef %20) #14
  %22 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %19, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = tail call ptr %23(ptr noundef %1, ptr noundef %2, ptr noundef %21, i32 noundef 10) #14
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = tail call ptr @CDDM_copy(ptr noundef %21) #14
  br label %28

28:                                               ; preds = %16, %26
  %29 = phi ptr [ %27, %26 ], [ %24, %16 ]
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = tail call i32 %31(ptr noundef %29) #14
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %34 = sext i32 %32 to i64
  %35 = mul nsw i64 %34, 12
  %36 = tail call ptr %33(i64 noundef %35, ptr noundef nonnull @.str) #14
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 77
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  tail call void %38(ptr noundef %29, ptr noundef %36) #14
  %39 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  tail call void %40(ptr noundef %3, ptr noundef %2, ptr noundef %29, ptr noundef %36, i32 noundef %32, i32 noundef 0) #14
  %41 = tail call ptr @CDDM_copy(ptr noundef %29) #14
  tail call void @CDDM_apply_vert_coords(ptr noundef %41, ptr noundef %36) #14
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %42(ptr noundef %36) #14
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 95
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  tail call void %44(ptr noundef %29) #14
  %45 = tail call i32 @multiresModifier_reshapeFromDM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %41), !range !100
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 95
  %47 = load ptr, ptr %46, align 8, !tbaa !78
  tail call void %47(ptr noundef %41) #14
  br label %48

48:                                               ; preds = %4, %28
  %49 = phi i32 [ %45, %28 ], [ 0, %4 ]
  ret i32 %49
}

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multiresModifier_set_levels_from_disps(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %10, %8 ]
  %15 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %14, i32 noundef 19) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %78, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !tbaa !104
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 25
  %20 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %19, i32 noundef 19) #14
  %21 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !105
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = zext nneg i32 %22 to i64
  br label %28

28:                                               ; preds = %24, %59
  %29 = phi i64 [ 0, %24 ], [ %61, %59 ]
  %30 = phi i32 [ 0, %24 ], [ %60, %59 ]
  %31 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %29, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !107
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %29
  %36 = load i32, ptr %35, align 4, !tbaa !109
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MDisps, ptr %20, i64 %37
  br label %39

39:                                               ; preds = %34, %55
  %40 = phi ptr [ %57, %55 ], [ %38, %34 ]
  %41 = phi i32 [ %56, %55 ], [ 0, %34 ]
  %42 = load i32, ptr %40, align 8, !tbaa !110
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %54, %44 ], [ %30, %39 ]
  %46 = add nsw i32 %45, -1
  %47 = shl nuw i32 1, %46
  %48 = add nuw nsw i32 %47, 1
  %49 = mul nsw i32 %48, %48
  %50 = icmp eq i32 %42, %49
  %51 = icmp slt i32 %42, %49
  %52 = add nsw i32 %45, 1
  %53 = select i1 %51, i32 %46, i32 %52
  %54 = select i1 %50, i32 %45, i32 %53
  br i1 %50, label %59, label %44

55:                                               ; preds = %39
  %56 = add nuw nsw i32 %41, 1
  %57 = getelementptr inbounds %struct.MDisps, ptr %40, i64 1
  %58 = icmp eq i32 %56, %32
  br i1 %58, label %59, label %39, !llvm.loop !112

59:                                               ; preds = %55, %44, %28
  %60 = phi i32 [ %30, %28 ], [ %54, %44 ], [ %30, %55 ]
  %61 = add nuw nsw i64 %29, 1
  %62 = icmp eq i64 %61, %27
  br i1 %62, label %63, label %28, !llvm.loop !113

63:                                               ; preds = %59, %17
  %64 = phi i32 [ 0, %17 ], [ %60, %59 ]
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  store i8 %65, ptr %66, align 1, !tbaa !59
  %67 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 2
  %68 = load i8, ptr %67, align 1, !tbaa !66
  %69 = zext i8 %68 to i32
  %70 = and i32 %64, 255
  %71 = icmp ugt i32 %70, %69
  %72 = select i1 %71, i8 %68, i8 %65
  %73 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 1
  store i8 %72, ptr %73, align 8, !tbaa !65
  %74 = tail call i8 @llvm.umin.i8(i8 %68, i8 %65)
  store i8 %74, ptr %67, align 1, !tbaa !66
  %75 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 3
  %76 = load i8, ptr %75, align 2, !tbaa !67
  %77 = tail call i8 @llvm.umin.i8(i8 %76, i8 %65)
  store i8 %77, ptr %75, align 2, !tbaa !67
  br label %78

78:                                               ; preds = %63, %13
  ret void
}

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multiresModifier_del_levels(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 1
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = load i8, ptr %10, align 1, !tbaa !101
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !59
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25
  %17 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 19) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 31
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = zext i8 %14 to i64
  %25 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !114
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ 0, %23 ], [ %31, %27 ]
  %29 = phi ptr [ %17, %23 ], [ %32, %27 ]
  store i32 %26, ptr %29, align 8, !tbaa !110
  %30 = getelementptr inbounds %struct.MDisps, ptr %29, i64 0, i32 1
  store i32 %15, ptr %30, align 4, !tbaa !115
  %31 = add nuw nsw i32 %28, 1
  %32 = getelementptr inbounds %struct.MDisps, ptr %29, i64 1
  %33 = icmp eq i32 %31, %21
  br i1 %33, label %34, label %27, !llvm.loop !116

34:                                               ; preds = %27, %19, %3
  %35 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 31
  %36 = load i32, ptr %35, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %16, ptr noundef %4, i64 noundef 524288, i32 noundef %36) #14
  %37 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 19) #14
  %38 = icmp eq ptr %1, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %1) #14
  %40 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.SculptSession, ptr %41, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  tail call void @BKE_pbvh_free(ptr noundef nonnull %45) #14
  %48 = load ptr, ptr %40, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.SculptSession, ptr %48, i64 0, i32 15
  store ptr null, ptr %49, align 8, !tbaa !74
  br label %50

50:                                               ; preds = %34, %39, %43, %47
  %51 = icmp ne ptr %37, null
  %52 = icmp ult i8 %11, %14
  %53 = select i1 %51, i1 %52, i1 false
  %54 = icmp eq i32 %2, 1
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  tail call fastcc void @multires_del_higher(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  br label %57

57:                                               ; preds = %56, %50
  store i8 %11, ptr %13, align 1, !tbaa !59
  %58 = load i32, ptr %5, align 8, !tbaa !61
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 1
  store i8 %11, ptr %61, align 8, !tbaa !65
  br label %62

62:                                               ; preds = %57, %60
  %63 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 2
  store i8 %11, ptr %63, align 1, !tbaa !66
  %64 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 3
  store i8 %11, ptr %64, align 2, !tbaa !67
  ret void
}

declare void @CustomData_external_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @multires_del_higher(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !59
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 19) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 31
  %14 = load i32, ptr %13, align 4, !tbaa !47
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = zext i8 %7 to i64
  %18 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !114
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i32 [ 0, %16 ], [ %24, %20 ]
  %22 = phi ptr [ %10, %16 ], [ %25, %20 ]
  store i32 %19, ptr %22, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.MDisps, ptr %22, i64 0, i32 1
  store i32 %8, ptr %23, align 4, !tbaa !115
  %24 = add nuw nsw i32 %21, 1
  %25 = getelementptr inbounds %struct.MDisps, ptr %22, i64 1
  %26 = icmp eq i32 %24, %14
  br i1 %26, label %27, label %20, !llvm.loop !116

27:                                               ; preds = %20, %12, %3
  %28 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 31
  %29 = load i32, ptr %28, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %9, ptr noundef %5, i64 noundef 524288, i32 noundef %29) #14
  %30 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 19) #14
  %31 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 35) #14
  %32 = icmp eq ptr %1, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %1) #14
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.SculptSession, ptr %35, i64 0, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  tail call void @BKE_pbvh_free(ptr noundef nonnull %39) #14
  %42 = load ptr, ptr %34, align 8, !tbaa !73
  %43 = getelementptr inbounds %struct.SculptSession, ptr %42, i64 0, i32 15
  store ptr null, ptr %43, align 8, !tbaa !74
  br label %44

44:                                               ; preds = %27, %33, %37, %41
  %45 = icmp ne ptr %30, null
  %46 = icmp sgt i32 %8, %2
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %219

48:                                               ; preds = %44
  %49 = icmp sgt i32 %2, 0
  br i1 %49, label %50, label %218

50:                                               ; preds = %48
  %51 = zext nneg i32 %2 to i64
  %52 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !114
  %54 = load i8, ptr %6, align 1, !tbaa !59
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !114
  %58 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %59 = load i32, ptr %58, align 8, !tbaa !105
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %219

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 7
  %63 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %51
  %64 = icmp sgt i32 %53, %57
  %65 = add nsw i32 %57, -1
  %66 = add nsw i32 %53, -1
  %67 = add nsw i32 %53, -1
  %68 = add nsw i32 %57, -1
  %69 = icmp eq i8 %54, 0
  %70 = icmp eq ptr %31, null
  %71 = tail call i32 @llvm.smax.i32(i32 %53, i32 1)
  %72 = tail call i32 @llvm.smax.i32(i32 %57, i32 1)
  %73 = zext nneg i32 %71 to i64
  %74 = zext nneg i32 %72 to i64
  br label %75

75:                                               ; preds = %61, %213
  %76 = phi i64 [ 0, %61 ], [ %214, %213 ]
  %77 = load ptr, ptr %62, align 8, !tbaa !106
  %78 = getelementptr inbounds %struct.MPoly, ptr %77, i64 %76, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !107
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %213

81:                                               ; preds = %75
  %82 = load i32, ptr %63, align 4, !tbaa !114
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, 12
  br label %85

85:                                               ; preds = %81, %207
  %86 = phi ptr [ %77, %81 ], [ %209, %207 ]
  %87 = phi i32 [ 0, %81 ], [ %208, %207 ]
  %88 = getelementptr inbounds %struct.MPoly, ptr %86, i64 %76
  %89 = load i32, ptr %88, align 4, !tbaa !109
  %90 = add nsw i32 %89, %87
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MDisps, ptr %30, i64 %91
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %94 = tail call ptr %93(i64 noundef %84, ptr noundef nonnull @.str.10) #14
  %95 = getelementptr inbounds %struct.MDisps, ptr %30, i64 %91, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !117
  br i1 %64, label %97, label %127

97:                                               ; preds = %85
  %98 = sdiv i32 %67, %68
  br i1 %69, label %157, label %99

99:                                               ; preds = %97, %124
  %100 = phi i64 [ %122, %124 ], [ 0, %97 ]
  %101 = phi i32 [ %125, %124 ], [ 0, %97 ]
  %102 = mul i32 %101, %53
  %103 = shl i64 %100, 32
  %104 = ashr exact i64 %103, 32
  br label %105

105:                                              ; preds = %99, %105
  %106 = phi i64 [ 0, %99 ], [ %121, %105 ]
  %107 = phi i64 [ %104, %99 ], [ %122, %105 ]
  %108 = trunc i64 %106 to i32
  %109 = add i32 %102, %108
  %110 = mul i32 %109, %98
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x float], ptr %94, i64 %111
  %113 = getelementptr inbounds [3 x float], ptr %96, i64 %107
  %114 = load float, ptr %113, align 4, !tbaa !84
  store float %114, ptr %112, align 4, !tbaa !84
  %115 = getelementptr inbounds float, ptr %113, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !84
  %117 = getelementptr inbounds float, ptr %112, i64 1
  store float %116, ptr %117, align 4, !tbaa !84
  %118 = getelementptr inbounds float, ptr %113, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !84
  %120 = getelementptr inbounds float, ptr %112, i64 2
  store float %119, ptr %120, align 4, !tbaa !84
  %121 = add nuw nsw i64 %106, 1
  %122 = add nsw i64 %107, 1
  %123 = icmp eq i64 %121, %74
  br i1 %123, label %124, label %105, !llvm.loop !118

124:                                              ; preds = %105
  %125 = add nuw nsw i32 %101, 1
  %126 = icmp eq i32 %125, %72
  br i1 %126, label %157, label %99, !llvm.loop !119

127:                                              ; preds = %85
  %128 = sdiv i32 %65, %66
  br label %129

129:                                              ; preds = %127, %154
  %130 = phi i64 [ %152, %154 ], [ 0, %127 ]
  %131 = phi i32 [ %155, %154 ], [ 0, %127 ]
  %132 = mul i32 %131, %57
  %133 = shl i64 %130, 32
  %134 = ashr exact i64 %133, 32
  br label %135

135:                                              ; preds = %129, %135
  %136 = phi i64 [ 0, %129 ], [ %151, %135 ]
  %137 = phi i64 [ %134, %129 ], [ %152, %135 ]
  %138 = getelementptr inbounds [3 x float], ptr %94, i64 %137
  %139 = trunc i64 %136 to i32
  %140 = add i32 %132, %139
  %141 = mul i32 %140, %128
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [3 x float], ptr %96, i64 %142
  %144 = load float, ptr %143, align 4, !tbaa !84
  store float %144, ptr %138, align 4, !tbaa !84
  %145 = getelementptr inbounds float, ptr %143, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !84
  %147 = getelementptr inbounds float, ptr %138, i64 1
  store float %146, ptr %147, align 4, !tbaa !84
  %148 = getelementptr inbounds float, ptr %143, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !84
  %150 = getelementptr inbounds float, ptr %138, i64 2
  store float %149, ptr %150, align 4, !tbaa !84
  %151 = add nuw nsw i64 %136, 1
  %152 = add nsw i64 %137, 1
  %153 = icmp eq i64 %151, %73
  br i1 %153, label %154, label %135, !llvm.loop !120

154:                                              ; preds = %135
  %155 = add nuw nsw i32 %131, 1
  %156 = icmp eq i32 %155, %71
  br i1 %156, label %157, label %129, !llvm.loop !121

157:                                              ; preds = %154, %124, %97
  %158 = getelementptr inbounds %struct.MDisps, ptr %30, i64 %91, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !122
  %160 = icmp eq ptr %159, null
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.MDisps, ptr %30, i64 %91, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !115
  %164 = tail call fastcc ptr @multires_mdisps_downsample_hidden(ptr noundef nonnull %159, i32 noundef %163, i32 noundef %2)
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %166 = load ptr, ptr %158, align 8, !tbaa !122
  tail call void %165(ptr noundef %166) #14
  store ptr %164, ptr %158, align 8, !tbaa !122
  br label %167

167:                                              ; preds = %161, %157
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %169 = load ptr, ptr %95, align 8, !tbaa !117
  tail call void %168(ptr noundef %169) #14
  store ptr %94, ptr %95, align 8, !tbaa !117
  store i32 %82, ptr %92, align 8, !tbaa !110
  %170 = getelementptr inbounds %struct.MDisps, ptr %30, i64 %91, i32 1
  store i32 %2, ptr %170, align 4, !tbaa !115
  br i1 %70, label %207, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.GridPaintMask, ptr %31, i64 %91
  %173 = getelementptr inbounds %struct.GridPaintMask, ptr %31, i64 %91, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !123
  %175 = icmp ugt i32 %174, %2
  br i1 %175, label %176, label %207

176:                                              ; preds = %171
  %177 = tail call i32 @BKE_ccg_gridsize(i32 noundef %2) #14
  %178 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %179 = mul nsw i32 %177, %177
  %180 = zext nneg i32 %179 to i64
  %181 = shl nuw nsw i64 %180, 2
  %182 = tail call ptr %178(i64 noundef %181, ptr noundef nonnull @.str.12) #14
  %183 = icmp sgt i32 %177, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %176
  %185 = zext nneg i32 %177 to i64
  %186 = zext nneg i32 %177 to i64
  br label %187

187:                                              ; preds = %184, %201
  %188 = phi i64 [ 0, %184 ], [ %202, %201 ]
  %189 = trunc i64 %188 to i32
  %190 = mul i32 %177, %189
  %191 = zext i32 %190 to i64
  %192 = trunc i64 %188 to i32
  %193 = getelementptr float, ptr %182, i64 %191
  br label %194

194:                                              ; preds = %187, %194
  %195 = phi i64 [ 0, %187 ], [ %199, %194 ]
  %196 = trunc i64 %195 to i32
  %197 = tail call float @paint_grid_paint_mask(ptr noundef nonnull %172, i32 noundef %2, i32 noundef %196, i32 noundef %192) #14
  %198 = getelementptr float, ptr %193, i64 %195
  store float %197, ptr %198, align 4, !tbaa !84
  %199 = add nuw nsw i64 %195, 1
  %200 = icmp eq i64 %199, %186
  br i1 %200, label %201, label %194, !llvm.loop !125

201:                                              ; preds = %194
  %202 = add nuw nsw i64 %188, 1
  %203 = icmp eq i64 %202, %185
  br i1 %203, label %204, label %187, !llvm.loop !126

204:                                              ; preds = %201, %176
  %205 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %206 = load ptr, ptr %172, align 8, !tbaa !127
  tail call void %205(ptr noundef %206) #14
  store ptr %182, ptr %172, align 8, !tbaa !127
  store i32 %2, ptr %173, align 8, !tbaa !123
  br label %207

207:                                              ; preds = %204, %171, %167
  %208 = add nuw nsw i32 %87, 1
  %209 = load ptr, ptr %62, align 8, !tbaa !106
  %210 = getelementptr inbounds %struct.MPoly, ptr %209, i64 %76, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !107
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %85, label %213, !llvm.loop !128

213:                                              ; preds = %207, %75
  %214 = add nuw nsw i64 %76, 1
  %215 = load i32, ptr %58, align 8, !tbaa !105
  %216 = sext i32 %215 to i64
  %217 = icmp slt i64 %214, %216
  br i1 %217, label %75, label %219, !llvm.loop !129

218:                                              ; preds = %48
  tail call void @multires_customdata_delete(ptr noundef %5)
  br label %219

219:                                              ; preds = %213, %50, %218, %44
  %220 = trunc i32 %2 to i8
  store i8 %220, ptr %6, align 1, !tbaa !59
  %221 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %222 = load i32, ptr %221, align 8, !tbaa !61
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %234, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 1
  %226 = load i8, ptr %225, align 8, !tbaa !65
  %227 = zext i8 %226 to i32
  %228 = icmp sgt i32 %227, %2
  %229 = tail call i32 @llvm.smax.i32(i32 %227, i32 %2)
  %230 = and i32 %2, 255
  %231 = icmp ugt i32 %229, %230
  %232 = select i1 %228, i8 %226, i8 %220
  %233 = select i1 %231, i8 %220, i8 %232
  store i8 %233, ptr %225, align 8, !tbaa !65
  br label %234

234:                                              ; preds = %219, %224
  %235 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 2
  %236 = load i8, ptr %235, align 1, !tbaa !66
  %237 = zext i8 %236 to i32
  %238 = icmp sgt i32 %237, %2
  %239 = tail call i32 @llvm.smax.i32(i32 %237, i32 %2)
  %240 = and i32 %2, 255
  %241 = icmp ugt i32 %239, %240
  %242 = select i1 %238, i8 %236, i8 %220
  %243 = select i1 %241, i8 %220, i8 %242
  store i8 %243, ptr %235, align 1, !tbaa !66
  %244 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 3
  %245 = load i8, ptr %244, align 2, !tbaa !67
  %246 = zext i8 %245 to i32
  %247 = icmp sgt i32 %246, %2
  %248 = tail call i32 @llvm.smax.i32(i32 %246, i32 %2)
  %249 = icmp ugt i32 %248, %240
  %250 = select i1 %247, i8 %245, i8 %220
  %251 = select i1 %249, i8 %220, i8 %250
  store i8 %251, ptr %244, align 2, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @multiresModifier_base_apply(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SubsurfModifierData, align 8
  %4 = alloca %struct.MultiresModifierData, align 8
  %5 = alloca %struct.MPoly, align 4
  %6 = alloca [3 x float], align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %1) #14
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  tail call void @BKE_pbvh_free(ptr noundef nonnull %14) #14
  %17 = load ptr, ptr %9, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.SculptSession, ptr %17, i64 0, i32 15
  store ptr null, ptr %18, align 8, !tbaa !74
  br label %19

19:                                               ; preds = %2, %8, %12, %16
  %20 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #14
  %21 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %22 = load i8, ptr %21, align 1, !tbaa !59
  %23 = zext i8 %22 to i32
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %319, label %25

25:                                               ; preds = %19
  %26 = tail call ptr @CDDM_from_mesh(ptr noundef %20) #14
  %27 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %26, i64 noundef %27) #14
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %28 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 1
  store i8 %22, ptr %28, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 2
  store i8 %22, ptr %29, align 1, !tbaa !66
  %30 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 3
  store i8 %22, ptr %30, align 2, !tbaa !67
  %31 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  store i8 %22, ptr %31, align 1, !tbaa !59
  %32 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 5
  store i8 0, ptr %32, align 4, !tbaa !130
  %33 = call ptr @multires_make_derived_from_derived(ptr noundef %26, ptr noundef nonnull %4, ptr noundef %1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #14
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %26, i64 0, i32 95
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  call void %35(ptr noundef %26) #14
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = call i32 %37(ptr noundef %33) #14
  %39 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 26
  %40 = load i32, ptr %39, align 8, !tbaa !131
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %25
  %43 = sub i32 %38, %40
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 76
  %45 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 15
  br label %46

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %53, %46 ]
  %48 = load ptr, ptr %44, align 8, !tbaa !132
  %49 = load ptr, ptr %45, align 8, !tbaa !133
  %50 = getelementptr inbounds %struct.MVert, ptr %49, i64 %47
  %51 = trunc i64 %47 to i32
  %52 = add i32 %43, %51
  call void %48(ptr noundef %33, i32 noundef %52, ptr noundef %50) #14
  %53 = add nuw nsw i64 %47, 1
  %54 = load i32, ptr %39, align 8, !tbaa !131
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %46, label %57, !llvm.loop !134

57:                                               ; preds = %46, %25
  %58 = call ptr @CDDM_from_mesh(ptr noundef %20) #14
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 80
  %60 = load ptr, ptr %59, align 8, !tbaa !135
  %61 = call ptr %60(ptr noundef %1, ptr noundef %58) #14
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %63 = load i32, ptr %39, align 8, !tbaa !131
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, 12
  %66 = call ptr %62(i64 noundef %65, ptr noundef nonnull @.str.1) #14
  %67 = load i32, ptr %39, align 8, !tbaa !131
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 15
  %71 = load ptr, ptr %70, align 8, !tbaa !133
  %72 = zext nneg i32 %67 to i64
  br label %85

73:                                               ; preds = %85, %57
  %74 = load i32, ptr %39, align 8, !tbaa !131
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %288

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 7
  %78 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 9
  %79 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 7
  %80 = getelementptr inbounds %struct.MPoly, ptr %5, i64 0, i32 1
  %81 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 9
  %82 = getelementptr inbounds float, ptr %6, i64 1
  %83 = getelementptr inbounds float, ptr %6, i64 2
  %84 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 15
  br label %98

85:                                               ; preds = %69, %85
  %86 = phi i64 [ 0, %69 ], [ %96, %85 ]
  %87 = getelementptr inbounds [3 x float], ptr %66, i64 %86
  %88 = getelementptr inbounds %struct.MVert, ptr %71, i64 %86
  %89 = load float, ptr %88, align 4, !tbaa !84
  store float %89, ptr %87, align 4, !tbaa !84
  %90 = getelementptr inbounds float, ptr %88, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !84
  %92 = getelementptr inbounds float, ptr %87, i64 1
  store float %91, ptr %92, align 4, !tbaa !84
  %93 = getelementptr inbounds float, ptr %88, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !84
  %95 = getelementptr inbounds float, ptr %87, i64 2
  store float %94, ptr %95, align 4, !tbaa !84
  %96 = add nuw nsw i64 %86, 1
  %97 = icmp eq i64 %96, %72
  br i1 %97, label %73, label %85, !llvm.loop !136

98:                                               ; preds = %76, %283
  %99 = phi i64 [ 0, %76 ], [ %284, %283 ]
  %100 = getelementptr inbounds %struct.MeshElemMap, ptr %61, i64 %99
  %101 = getelementptr inbounds %struct.MeshElemMap, ptr %61, i64 %99, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !137
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %283, label %104

104:                                              ; preds = %98
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %106, label %165

106:                                              ; preds = %104
  %107 = load ptr, ptr %77, align 8, !tbaa !106
  %108 = load ptr, ptr %100, align 8, !tbaa !139
  %109 = zext nneg i32 %102 to i64
  br label %110

110:                                              ; preds = %106, %158
  %111 = phi i64 [ 0, %106 ], [ %163, %158 ]
  %112 = phi i32 [ 0, %106 ], [ %162, %158 ]
  %113 = phi float [ 0.000000e+00, %106 ], [ %161, %158 ]
  %114 = phi float [ 0.000000e+00, %106 ], [ %160, %158 ]
  %115 = phi float [ 0.000000e+00, %106 ], [ %159, %158 ]
  %116 = getelementptr inbounds i32, ptr %108, i64 %111
  %117 = load i32, ptr %116, align 4, !tbaa !114
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.MPoly, ptr %107, i64 %118, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !107
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.MPoly, ptr %107, i64 %118
  %124 = load ptr, ptr %78, align 8, !tbaa !140
  %125 = load i32, ptr %123, align 4, !tbaa !109
  %126 = sext i32 %125 to i64
  %127 = zext nneg i32 %120 to i64
  %128 = getelementptr %struct.MLoop, ptr %124, i64 %126
  br label %129

129:                                              ; preds = %122, %151
  %130 = phi i64 [ 0, %122 ], [ %156, %151 ]
  %131 = phi i32 [ %112, %122 ], [ %155, %151 ]
  %132 = phi float [ %113, %122 ], [ %154, %151 ]
  %133 = phi float [ %114, %122 ], [ %153, %151 ]
  %134 = phi float [ %115, %122 ], [ %152, %151 ]
  %135 = getelementptr %struct.MLoop, ptr %128, i64 %130
  %136 = load i32, ptr %135, align 4, !tbaa !141
  %137 = zext i32 %136 to i64
  %138 = icmp eq i64 %99, %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %129
  %140 = sext i32 %136 to i64
  %141 = getelementptr inbounds [3 x float], ptr %66, i64 %140
  %142 = load float, ptr %141, align 4, !tbaa !84
  %143 = fadd float %134, %142
  %144 = getelementptr inbounds float, ptr %141, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !84
  %146 = fadd float %133, %145
  %147 = getelementptr inbounds float, ptr %141, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !84
  %149 = fadd float %132, %148
  %150 = add nsw i32 %131, 1
  br label %151

151:                                              ; preds = %139, %129
  %152 = phi float [ %134, %129 ], [ %143, %139 ]
  %153 = phi float [ %133, %129 ], [ %146, %139 ]
  %154 = phi float [ %132, %129 ], [ %149, %139 ]
  %155 = phi i32 [ %131, %129 ], [ %150, %139 ]
  %156 = add nuw nsw i64 %130, 1
  %157 = icmp eq i64 %156, %127
  br i1 %157, label %158, label %129, !llvm.loop !143

158:                                              ; preds = %151, %110
  %159 = phi float [ %115, %110 ], [ %152, %151 ]
  %160 = phi float [ %114, %110 ], [ %153, %151 ]
  %161 = phi float [ %113, %110 ], [ %154, %151 ]
  %162 = phi i32 [ %112, %110 ], [ %155, %151 ]
  %163 = add nuw nsw i64 %111, 1
  %164 = icmp eq i64 %163, %109
  br i1 %164, label %165, label %110, !llvm.loop !144

165:                                              ; preds = %158, %104
  %166 = phi float [ 0.000000e+00, %104 ], [ %159, %158 ]
  %167 = phi float [ 0.000000e+00, %104 ], [ %160, %158 ]
  %168 = phi float [ 0.000000e+00, %104 ], [ %161, %158 ]
  %169 = phi i32 [ 0, %104 ], [ %162, %158 ]
  %170 = sitofp i32 %169 to float
  %171 = fdiv float 1.000000e+00, %170
  %172 = fmul float %166, %171
  %173 = fmul float %167, %171
  %174 = fmul float %168, %171
  %175 = load i32, ptr %101, align 8, !tbaa !137
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %246

177:                                              ; preds = %165, %233
  %178 = phi i64 [ %242, %233 ], [ 0, %165 ]
  %179 = phi float [ %237, %233 ], [ 0.000000e+00, %165 ]
  %180 = phi float [ %239, %233 ], [ 0.000000e+00, %165 ]
  %181 = phi float [ %241, %233 ], [ 0.000000e+00, %165 ]
  %182 = load ptr, ptr %79, align 8, !tbaa !106
  %183 = load ptr, ptr %100, align 8, !tbaa !139
  %184 = getelementptr inbounds i32, ptr %183, i64 %178
  %185 = load i32, ptr %184, align 4, !tbaa !114
  %186 = sext i32 %185 to i64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %187 = getelementptr inbounds %struct.MPoly, ptr %182, i64 %186, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !107
  store i32 %188, ptr %80, align 4, !tbaa !107
  store i32 0, ptr %5, align 4, !tbaa !109
  %189 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %190 = load i32, ptr %187, align 4, !tbaa !107
  %191 = sext i32 %190 to i64
  %192 = shl nsw i64 %191, 3
  %193 = call ptr %189(i64 noundef %192, ptr noundef nonnull @.str.2) #14
  %194 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %195 = load i32, ptr %187, align 4, !tbaa !107
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, 12
  %198 = call ptr %194(i64 noundef %197, ptr noundef nonnull @.str.3) #14
  %199 = load i32, ptr %187, align 4, !tbaa !107
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %233

201:                                              ; preds = %177
  %202 = getelementptr inbounds %struct.MPoly, ptr %182, i64 %186
  %203 = load ptr, ptr %81, align 8, !tbaa !140
  %204 = load i32, ptr %202, align 4, !tbaa !109
  %205 = sext i32 %204 to i64
  %206 = zext nneg i32 %199 to i64
  %207 = getelementptr %struct.MLoop, ptr %203, i64 %205
  br label %208

208:                                              ; preds = %201, %228
  %209 = phi i64 [ 0, %201 ], [ %231, %228 ]
  %210 = getelementptr %struct.MLoop, ptr %207, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !141
  %212 = getelementptr inbounds %struct.MLoop, ptr %193, i64 %209
  %213 = trunc i64 %209 to i32
  store i32 %213, ptr %212, align 4, !tbaa !141
  %214 = zext i32 %211 to i64
  %215 = icmp eq i64 %99, %214
  %216 = getelementptr inbounds [3 x float], ptr %198, i64 %209
  br i1 %215, label %217, label %219

217:                                              ; preds = %208
  store float %172, ptr %216, align 4, !tbaa !84
  %218 = getelementptr inbounds float, ptr %216, i64 1
  store float %173, ptr %218, align 4, !tbaa !84
  br label %228

219:                                              ; preds = %208
  %220 = sext i32 %211 to i64
  %221 = getelementptr inbounds [3 x float], ptr %66, i64 %220
  %222 = load float, ptr %221, align 4, !tbaa !84
  store float %222, ptr %216, align 4, !tbaa !84
  %223 = getelementptr inbounds float, ptr %221, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !84
  %225 = getelementptr inbounds float, ptr %216, i64 1
  store float %224, ptr %225, align 4, !tbaa !84
  %226 = getelementptr inbounds float, ptr %221, i64 2
  %227 = load float, ptr %226, align 4, !tbaa !84
  br label %228

228:                                              ; preds = %219, %217
  %229 = phi float [ %227, %219 ], [ %174, %217 ]
  %230 = getelementptr inbounds float, ptr %216, i64 2
  store float %229, ptr %230, align 4, !tbaa !84
  %231 = add nuw nsw i64 %209, 1
  %232 = icmp eq i64 %231, %206
  br i1 %232, label %233, label %208, !llvm.loop !145

233:                                              ; preds = %228, %177
  call void @BKE_mesh_calc_poly_normal_coords(ptr noundef nonnull %5, ptr noundef %193, ptr noundef %198, ptr noundef nonnull %6) #14
  %234 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %234(ptr noundef %193) #14
  %235 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %235(ptr noundef %198) #14
  %236 = load float, ptr %6, align 4, !tbaa !84
  %237 = fadd float %179, %236
  %238 = load float, ptr %82, align 4, !tbaa !84
  %239 = fadd float %180, %238
  %240 = load float, ptr %83, align 4, !tbaa !84
  %241 = fadd float %181, %240
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %242 = add nuw nsw i64 %178, 1
  %243 = load i32, ptr %101, align 8, !tbaa !137
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %242, %244
  br i1 %245, label %177, label %246, !llvm.loop !146

246:                                              ; preds = %233, %165
  %247 = phi float [ 0.000000e+00, %165 ], [ %241, %233 ]
  %248 = phi float [ 0.000000e+00, %165 ], [ %239, %233 ]
  %249 = phi float [ 0.000000e+00, %165 ], [ %237, %233 ]
  %250 = fmul float %248, %248
  %251 = call float @llvm.fmuladd.f32(float %249, float %249, float %250)
  %252 = call float @llvm.fmuladd.f32(float %247, float %247, float %251)
  %253 = fcmp ogt float %252, 0x38AA95A5C0000000
  br i1 %253, label %254, label %260

254:                                              ; preds = %246
  %255 = call float @sqrtf(float noundef %252) #14
  %256 = fdiv float 1.000000e+00, %255
  %257 = fmul float %249, %256
  %258 = fmul float %248, %256
  %259 = fmul float %247, %256
  br label %260

260:                                              ; preds = %246, %254
  %261 = phi float [ %258, %254 ], [ 0.000000e+00, %246 ]
  %262 = phi float [ %257, %254 ], [ 0.000000e+00, %246 ]
  %263 = phi float [ %259, %254 ], [ 0.000000e+00, %246 ]
  %264 = load ptr, ptr %84, align 8, !tbaa !133
  %265 = getelementptr inbounds %struct.MVert, ptr %264, i64 %99
  %266 = load float, ptr %265, align 4, !tbaa !84
  %267 = fsub float %266, %172
  %268 = getelementptr inbounds float, ptr %265, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !84
  %270 = fsub float %269, %173
  %271 = getelementptr inbounds float, ptr %265, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !84
  %273 = fsub float %272, %174
  %274 = fmul float %261, %270
  %275 = call float @llvm.fmuladd.f32(float %267, float %262, float %274)
  %276 = call float @llvm.fmuladd.f32(float %273, float %263, float %275)
  %277 = fmul float %262, %276
  %278 = fmul float %261, %276
  %279 = fmul float %263, %276
  %280 = fadd float %266, %277
  store float %280, ptr %265, align 4, !tbaa !84
  %281 = fadd float %269, %278
  store float %281, ptr %268, align 4, !tbaa !84
  %282 = fadd float %272, %279
  store float %282, ptr %271, align 4, !tbaa !84
  br label %283

283:                                              ; preds = %98, %260
  %284 = add nuw nsw i64 %99, 1
  %285 = load i32, ptr %39, align 8, !tbaa !131
  %286 = sext i32 %285 to i64
  %287 = icmp slt i64 %284, %286
  br i1 %287, label %98, label %288, !llvm.loop !147

288:                                              ; preds = %283, %73
  %289 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %289(ptr noundef %66) #14
  %290 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 95
  %291 = load ptr, ptr %290, align 8, !tbaa !78
  call void %291(ptr noundef %58) #14
  call void @BKE_mesh_calc_normals(ptr noundef %20) #14
  %292 = call ptr @CDDM_from_mesh(ptr noundef %20) #14
  call void @DM_set_only_copy(ptr noundef %292, i64 noundef %27) #14
  %293 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 6
  %294 = load i8, ptr %293, align 1, !tbaa !148
  %295 = and i8 %294, 2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %296 = zext i8 %22 to i16
  %297 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 3
  store i16 %296, ptr %297, align 4, !tbaa !149
  %298 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 2
  store i16 %296, ptr %298, align 2, !tbaa !151
  %299 = icmp eq i8 %295, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %288
  %301 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 4
  %302 = load i16, ptr %301, align 2, !tbaa !152
  %303 = or i16 %302, 8
  store i16 %303, ptr %301, align 2, !tbaa !152
  br label %304

304:                                              ; preds = %288, %300
  %305 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %306 = load i32, ptr %305, align 8, !tbaa !61
  %307 = shl i32 %306, 3
  %308 = and i32 %307, 8
  %309 = call ptr @subsurf_make_derived_from_derived(ptr noundef %292, ptr noundef nonnull %3, ptr noundef null, i32 noundef %308) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #14
  %310 = getelementptr inbounds %struct.DerivedMesh, ptr %292, i64 0, i32 95
  %311 = load ptr, ptr %310, align 8, !tbaa !78
  call void %311(ptr noundef %292) #14
  %312 = getelementptr inbounds %struct.DerivedMesh, ptr %309, i64 0, i32 65
  %313 = load ptr, ptr %312, align 8, !tbaa !153
  %314 = call ptr %313(ptr noundef %309) #14
  call fastcc void @multiresModifier_disp_run(ptr noundef %33, ptr noundef %20, ptr noundef null, i32 noundef 1, ptr noundef %314, i32 noundef %23)
  %315 = getelementptr inbounds %struct.DerivedMesh, ptr %309, i64 0, i32 95
  %316 = load ptr, ptr %315, align 8, !tbaa !78
  call void %316(ptr noundef %309) #14
  %317 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 95
  %318 = load ptr, ptr %317, align 8, !tbaa !78
  call void %318(ptr noundef %33) #14
  br label %319

319:                                              ; preds = %19, %304
  ret void
}

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

declare void @DM_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @BKE_mesh_calc_poly_normal_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @multiresModifier_disp_run(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.CCGKey, align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  %11 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %14 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 19) #14
  %15 = icmp eq ptr %2, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %18 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %17, i32 noundef 19) #14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %22 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 25) #14
  %23 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %17, i32 noundef 19) #14
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 8
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 9
  br label %29

26:                                               ; preds = %16, %6
  %27 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %28 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %25, %20 ], [ %28, %26 ]
  %31 = phi ptr [ %24, %20 ], [ %27, %26 ]
  %32 = phi ptr [ %23, %20 ], [ %14, %26 ]
  %33 = phi ptr [ %22, %20 ], [ %12, %26 ]
  %34 = load i32, ptr %31, align 4, !tbaa !114
  %35 = load i32, ptr %30, align 8, !tbaa !114
  %36 = icmp eq ptr %32, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = icmp eq i32 %3, 1
  br i1 %38, label %39, label %320

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %41 = load i32, ptr %40, align 4, !tbaa !47
  %42 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %13, i32 noundef 19, i32 noundef 2, ptr noundef null, i32 noundef %41) #14
  br label %43

43:                                               ; preds = %39, %29
  %44 = phi ptr [ %32, %29 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 64
  %46 = load ptr, ptr %45, align 8, !tbaa !154
  %47 = tail call i32 %46(ptr noundef %0) #14
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 65
  %49 = load ptr, ptr %48, align 8, !tbaa !153
  %50 = tail call ptr %49(ptr noundef %0) #14
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 67
  %52 = load ptr, ptr %51, align 8, !tbaa !155
  %53 = tail call ptr %52(ptr noundef %0) #14
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 68
  %55 = load ptr, ptr %54, align 8, !tbaa !80
  call void %55(ptr noundef %0, ptr noundef nonnull %7) #14
  %56 = icmp eq ptr %4, null
  %57 = select i1 %56, ptr %50, ptr %4
  %58 = zext nneg i32 %5 to i64
  %59 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !114
  %61 = add nsw i32 %60, -1
  %62 = add nsw i32 %47, -1
  %63 = sdiv i32 %61, %62
  %64 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 9
  %65 = load i32, ptr %64, align 4, !tbaa !156
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %43
  %68 = call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 35) #14
  br label %69

69:                                               ; preds = %67, %43
  %70 = phi ptr [ %68, %67 ], [ null, %43 ]
  %71 = icmp sgt i32 %35, 0
  br i1 %71, label %72, label %312

72:                                               ; preds = %69
  %73 = icmp eq ptr %70, null
  %74 = icmp sgt i32 %34, 0
  %75 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %58
  %76 = zext nneg i32 %34 to i64
  %77 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 3
  %78 = icmp sgt i32 %47, 0
  %79 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 2
  %80 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 1
  %81 = getelementptr inbounds float, ptr %10, i64 1
  %82 = getelementptr inbounds float, ptr %10, i64 2
  %83 = getelementptr inbounds float, ptr %9, i64 1
  %84 = getelementptr inbounds float, ptr %9, i64 2
  %85 = getelementptr inbounds float, ptr %9, i64 1
  %86 = getelementptr inbounds float, ptr %9, i64 2
  %87 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 6
  %88 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 6
  %89 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 6
  %90 = sext i32 %47 to i64
  %91 = sext i32 %47 to i64
  %92 = zext nneg i32 %35 to i64
  %93 = zext nneg i32 %47 to i64
  %94 = zext nneg i32 %47 to i64
  br label %95

95:                                               ; preds = %72, %309
  %96 = phi i64 [ 0, %72 ], [ %310, %309 ]
  %97 = getelementptr inbounds %struct.MPoly, ptr %33, i64 %96
  %98 = getelementptr inbounds %struct.MPoly, ptr %33, i64 %96, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !107
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %309

101:                                              ; preds = %95
  %102 = getelementptr inbounds i32, ptr %53, i64 %96
  %103 = load i32, ptr %102, align 4, !tbaa !114
  %104 = sext i32 %103 to i64
  br label %105

105:                                              ; preds = %101, %305
  %106 = phi i64 [ %104, %101 ], [ %307, %305 ]
  %107 = phi i32 [ 0, %101 ], [ %306, %305 ]
  %108 = getelementptr inbounds %struct.GridPaintMask, ptr %70, i64 %106
  %109 = select i1 %73, ptr null, ptr %108
  %110 = load i32, ptr %97, align 4, !tbaa !109
  %111 = add nsw i32 %110, %107
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %50, i64 %106
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  %115 = getelementptr inbounds ptr, ptr %57, i64 %106
  %116 = load ptr, ptr %115, align 8, !tbaa !57
  %117 = getelementptr inbounds %struct.MDisps, ptr %44, i64 %112, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !117
  %119 = icmp eq ptr %118, null
  %120 = select i1 %119, i1 %74, i1 false
  br i1 %120, label %121, label %152

121:                                              ; preds = %105
  %122 = load i32, ptr %75, align 4, !tbaa !114
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %123, 12
  br label %125

125:                                              ; preds = %149, %121
  %126 = phi i64 [ 0, %121 ], [ %150, %149 ]
  %127 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %128 = call ptr %127(i64 noundef %124, ptr noundef nonnull @.str.10) #14
  %129 = getelementptr inbounds %struct.MDisps, ptr %44, i64 %126
  %130 = getelementptr inbounds %struct.MDisps, ptr %44, i64 %126, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !117
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %134(ptr noundef nonnull %131) #14
  br label %135

135:                                              ; preds = %133, %125
  %136 = getelementptr inbounds %struct.MDisps, ptr %44, i64 %126, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !115
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.MDisps, ptr %44, i64 %126, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !122
  %142 = icmp ne ptr %141, null
  %143 = icmp slt i32 %137, %5
  %144 = and i1 %143, %142
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = call fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef nonnull %141, i32 noundef %137, i32 noundef %5, ptr noundef null)
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %148 = load ptr, ptr %140, align 8, !tbaa !122
  call void %147(ptr noundef %148) #14
  store ptr %146, ptr %140, align 8, !tbaa !122
  br label %149

149:                                              ; preds = %145, %139, %135
  store ptr %128, ptr %130, align 8, !tbaa !117
  store i32 %122, ptr %129, align 8, !tbaa !110
  store i32 %5, ptr %136, align 4, !tbaa !115
  %150 = add nuw nsw i64 %126, 1
  %151 = icmp eq i64 %150, %76
  br i1 %151, label %152, label %125, !llvm.loop !158

152:                                              ; preds = %149, %105
  %153 = load ptr, ptr %117, align 8, !tbaa !117
  %154 = icmp eq ptr %109, null
  br i1 %154, label %171, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.GridPaintMask, ptr %109, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !123
  %158 = load i32, ptr %7, align 4, !tbaa !159
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  store i32 %158, ptr %156, align 8, !tbaa !123
  %161 = load ptr, ptr %109, align 8, !tbaa !127
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %164(ptr noundef nonnull %161) #14
  br label %165

165:                                              ; preds = %163, %160
  %166 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %167 = load i32, ptr %77, align 4, !tbaa !160
  %168 = sext i32 %167 to i64
  %169 = shl nsw i64 %168, 2
  %170 = call ptr %166(i64 noundef %169, ptr noundef nonnull @.str.14) #14
  store ptr %170, ptr %109, align 8, !tbaa !127
  br label %171

171:                                              ; preds = %165, %155, %152
  br i1 %78, label %172, label %305

172:                                              ; preds = %171, %302
  %173 = phi i64 [ %303, %302 ], [ 0, %171 ]
  %174 = mul nsw i64 %173, %91
  %175 = mul nsw i64 %173, %90
  %176 = trunc i64 %173 to i32
  %177 = trunc i64 %173 to i32
  %178 = mul i32 %60, %177
  %179 = trunc i64 %173 to i32
  %180 = trunc i64 %173 to i32
  %181 = trunc i64 %173 to i32
  %182 = trunc i64 %173 to i32
  %183 = trunc i64 %173 to i32
  br label %184

184:                                              ; preds = %172, %299
  %185 = phi i64 [ 0, %172 ], [ %300, %299 ]
  %186 = load i32, ptr %79, align 4, !tbaa !161
  %187 = mul nsw i32 %186, %176
  %188 = trunc i64 %185 to i32
  %189 = add nsw i32 %187, %188
  %190 = load i32, ptr %80, align 4, !tbaa !162
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, ptr %114, i64 %192
  %194 = getelementptr inbounds i8, ptr %116, i64 %192
  %195 = trunc i64 %185 to i32
  %196 = add i32 %178, %195
  %197 = mul i32 %196, %63
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x float], ptr %153, i64 %198
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %200 = trunc i64 %185 to i32
  call fastcc void @grid_tangent_matrix(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %200, i32 noundef %179, ptr noundef %116)
  switch i32 %3, label %243 [
    i32 0, label %201
    i32 1, label %215
    i32 2, label %230
  ]

201:                                              ; preds = %184
  call void @mul_v3_m3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %199) #14
  %202 = load float, ptr %194, align 4, !tbaa !84
  %203 = load float, ptr %9, align 4, !tbaa !84
  %204 = fadd float %202, %203
  store float %204, ptr %193, align 4, !tbaa !84
  %205 = getelementptr inbounds float, ptr %194, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !84
  %207 = load float, ptr %85, align 4, !tbaa !84
  %208 = fadd float %206, %207
  %209 = getelementptr inbounds float, ptr %193, i64 1
  store float %208, ptr %209, align 4, !tbaa !84
  %210 = getelementptr inbounds float, ptr %194, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !84
  %212 = load float, ptr %86, align 4, !tbaa !84
  %213 = fadd float %211, %212
  %214 = getelementptr inbounds float, ptr %193, i64 2
  store float %213, ptr %214, align 4, !tbaa !84
  br label %244

215:                                              ; preds = %184
  %216 = load float, ptr %193, align 4, !tbaa !84
  %217 = load float, ptr %194, align 4, !tbaa !84
  %218 = fsub float %216, %217
  store float %218, ptr %9, align 4, !tbaa !84
  %219 = getelementptr inbounds float, ptr %193, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !84
  %221 = getelementptr inbounds float, ptr %194, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !84
  %223 = fsub float %220, %222
  store float %223, ptr %83, align 4, !tbaa !84
  %224 = getelementptr inbounds float, ptr %193, i64 2
  %225 = load float, ptr %224, align 4, !tbaa !84
  %226 = getelementptr inbounds float, ptr %194, i64 2
  %227 = load float, ptr %226, align 4, !tbaa !84
  %228 = fsub float %225, %227
  store float %228, ptr %84, align 4, !tbaa !84
  %229 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #14
  call void @mul_v3_m3v3(ptr noundef %199, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  br label %244

230:                                              ; preds = %184
  %231 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #14
  call void @mul_v3_m3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef %193) #14
  %232 = load float, ptr %10, align 4, !tbaa !84
  %233 = load float, ptr %199, align 4, !tbaa !84
  %234 = fadd float %232, %233
  store float %234, ptr %199, align 4, !tbaa !84
  %235 = load float, ptr %81, align 4, !tbaa !84
  %236 = getelementptr inbounds float, ptr %199, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !84
  %238 = fadd float %235, %237
  store float %238, ptr %236, align 4, !tbaa !84
  %239 = load float, ptr %82, align 4, !tbaa !84
  %240 = getelementptr inbounds float, ptr %199, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !84
  %242 = fadd float %239, %241
  store float %242, ptr %240, align 4, !tbaa !84
  br label %244

243:                                              ; preds = %245, %184
  unreachable

244:                                              ; preds = %230, %215, %201
  br i1 %154, label %299, label %245

245:                                              ; preds = %244
  switch i32 %3, label %243 [
    i32 0, label %246
    i32 1, label %261
    i32 2, label %281
  ]

246:                                              ; preds = %245
  %247 = load i32, ptr %7, align 4, !tbaa !159
  %248 = trunc i64 %185 to i32
  %249 = call float @paint_grid_paint_mask(ptr noundef nonnull %109, i32 noundef %247, i32 noundef %248, i32 noundef %182) #14
  %250 = load i32, ptr %79, align 4, !tbaa !161
  %251 = mul nsw i32 %250, %183
  %252 = trunc i64 %185 to i32
  %253 = add nsw i32 %251, %252
  %254 = load i32, ptr %80, align 4, !tbaa !162
  %255 = mul nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, ptr %114, i64 %256
  %258 = load i32, ptr %89, align 4, !tbaa !163
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %257, i64 %259
  store float %249, ptr %260, align 4, !tbaa !84
  br label %299

261:                                              ; preds = %245
  %262 = load i32, ptr %79, align 4, !tbaa !161
  %263 = mul nsw i32 %262, %181
  %264 = trunc i64 %185 to i32
  %265 = add nsw i32 %263, %264
  %266 = load i32, ptr %80, align 4, !tbaa !162
  %267 = mul nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %114, i64 %268
  %270 = load i32, ptr %88, align 4, !tbaa !163
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, ptr %269, i64 %271
  %273 = load float, ptr %272, align 4, !tbaa !84
  %274 = fcmp olt float %273, 0.000000e+00
  %275 = fcmp ogt float %273, 1.000000e+00
  %276 = select i1 %275, float 1.000000e+00, float %273
  %277 = select i1 %274, float 0.000000e+00, float %276
  %278 = load ptr, ptr %109, align 8, !tbaa !127
  %279 = getelementptr float, ptr %278, i64 %185
  %280 = getelementptr float, ptr %279, i64 %175
  store float %277, ptr %280, align 4, !tbaa !84
  br label %299

281:                                              ; preds = %245
  %282 = load i32, ptr %79, align 4, !tbaa !161
  %283 = mul nsw i32 %282, %180
  %284 = trunc i64 %185 to i32
  %285 = add nsw i32 %283, %284
  %286 = load i32, ptr %80, align 4, !tbaa !162
  %287 = mul nsw i32 %285, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, ptr %114, i64 %288
  %290 = load i32, ptr %87, align 4, !tbaa !163
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %289, i64 %291
  %293 = load float, ptr %292, align 4, !tbaa !84
  %294 = load ptr, ptr %109, align 8, !tbaa !127
  %295 = getelementptr float, ptr %294, i64 %185
  %296 = getelementptr float, ptr %295, i64 %174
  %297 = load float, ptr %296, align 4, !tbaa !84
  %298 = fadd float %293, %297
  store float %298, ptr %296, align 4, !tbaa !84
  br label %299

299:                                              ; preds = %246, %261, %281, %244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #14
  %300 = add nuw nsw i64 %185, 1
  %301 = icmp eq i64 %300, %94
  br i1 %301, label %302, label %184, !llvm.loop !164

302:                                              ; preds = %299
  %303 = add nuw nsw i64 %173, 1
  %304 = icmp eq i64 %303, %93
  br i1 %304, label %305, label %172, !llvm.loop !165

305:                                              ; preds = %302, %171
  %306 = add nuw nsw i32 %107, 1
  %307 = add nsw i64 %106, 1
  %308 = icmp eq i32 %306, %99
  br i1 %308, label %309, label %105, !llvm.loop !166

309:                                              ; preds = %305, %95
  %310 = add nuw nsw i64 %96, 1
  %311 = icmp eq i64 %310, %92
  br i1 %311, label %312, label %95, !llvm.loop !167

312:                                              ; preds = %309, %69
  %313 = icmp eq i32 %3, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %312
  %315 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !79
  %317 = call i32 @ccgSubSurf_stitchFaces(ptr noundef %316, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %318 = load ptr, ptr %315, align 8, !tbaa !79
  %319 = call i32 @ccgSubSurf_updateNormals(ptr noundef %318, ptr noundef null, i32 noundef 0) #14
  br label %320

320:                                              ; preds = %312, %314, %37
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @multiresModifier_subdivide(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 1, !tbaa !59
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 1
  tail call fastcc void @multires_subdivide(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @multires_subdivide(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.SubsurfModifierData, align 8
  %7 = alloca %struct.MultiresModifierData, align 8
  %8 = alloca %struct.CCGKey, align 4
  %9 = alloca %struct.CCGKey, align 4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !59
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %2, 13
  br i1 %15, label %411, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 30
  %18 = load i32, ptr %17, align 8, !tbaa !105
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %411, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %1) #14
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.SculptSession, ptr %24, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  tail call void @BKE_pbvh_free(ptr noundef nonnull %28) #14
  %31 = load ptr, ptr %23, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.SculptSession, ptr %31, i64 0, i32 15
  store ptr null, ptr %32, align 8, !tbaa !74
  br label %33

33:                                               ; preds = %20, %22, %26, %30
  %34 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 25
  %35 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %34, i32 noundef 19) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 31
  %39 = load i32, ptr %38, align 4, !tbaa !47
  %40 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %34, i32 noundef 19, i32 noundef 1, ptr noundef null, i32 noundef %39) #14
  %41 = tail call i32 @BKE_ccg_gridsize(i32 noundef %2) #14
  %42 = load i32, ptr %17, align 8, !tbaa !105
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %37
  %45 = mul nsw i32 %41, %41
  %46 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %47 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 15
  %48 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 9
  %49 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %50 = lshr i32 %45, 3
  %51 = and i32 %50, 268435452
  %52 = add nuw nsw i32 %51, 4
  %53 = zext nneg i32 %52 to i64
  br label %54

54:                                               ; preds = %44, %100
  %55 = phi i64 [ 0, %44 ], [ %101, %100 ]
  %56 = load ptr, ptr %46, align 8, !tbaa !106
  %57 = getelementptr inbounds %struct.MPoly, ptr %56, i64 %55, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !107
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.MPoly, ptr %56, i64 %55
  %62 = load ptr, ptr %47, align 8, !tbaa !133
  %63 = load ptr, ptr %48, align 8, !tbaa !140
  %64 = load i32, ptr %61, align 4, !tbaa !109
  %65 = sext i32 %64 to i64
  %66 = zext nneg i32 %58 to i64
  %67 = getelementptr %struct.MLoop, ptr %63, i64 %65
  br label %71

68:                                               ; preds = %71
  %69 = add nuw nsw i64 %72, 1
  %70 = icmp eq i64 %69, %66
  br i1 %70, label %100, label %71, !llvm.loop !168

71:                                               ; preds = %60, %68
  %72 = phi i64 [ 0, %60 ], [ %69, %68 ]
  %73 = getelementptr %struct.MLoop, ptr %67, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !141
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.MVert, ptr %62, i64 %75, i32 2
  %77 = load i8, ptr %76, align 2, !tbaa !169
  %78 = and i8 %77, 16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %68, label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr %49, align 8, !tbaa !106
  %82 = getelementptr inbounds %struct.MPoly, ptr %81, i64 %55, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !107
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80, %85
  %86 = phi ptr [ %96, %85 ], [ %81, %80 ]
  %87 = phi i32 [ %95, %85 ], [ 0, %80 ]
  %88 = getelementptr inbounds %struct.MPoly, ptr %86, i64 %55
  %89 = load i32, ptr %88, align 4, !tbaa !109
  %90 = add nsw i32 %89, %87
  %91 = sext i32 %90 to i64
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %93 = tail call ptr %92(i64 noundef %53, ptr noundef nonnull @.str.13) #14
  %94 = getelementptr inbounds %struct.MDisps, ptr %40, i64 %91, i32 3
  store ptr %93, ptr %94, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %93, i8 -1, i64 %53, i1 false)
  %95 = add nuw nsw i32 %87, 1
  %96 = load ptr, ptr %49, align 8, !tbaa !106
  %97 = getelementptr inbounds %struct.MPoly, ptr %96, i64 %55, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !107
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %85, label %100, !llvm.loop !171

100:                                              ; preds = %68, %85, %54, %80
  %101 = add nuw nsw i64 %55, 1
  %102 = load i32, ptr %17, align 8, !tbaa !105
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %54, label %105, !llvm.loop !172

105:                                              ; preds = %100, %37, %33
  %106 = phi ptr [ %35, %33 ], [ %40, %37 ], [ %40, %100 ]
  %107 = getelementptr inbounds %struct.MDisps, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !117
  %109 = icmp ne ptr %108, null
  %110 = icmp eq i32 %3, 0
  %111 = and i1 %110, %109
  %112 = icmp sgt i32 %2, 1
  %113 = and i1 %112, %111
  br i1 %113, label %114, label %340

114:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #14
  %115 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %34, i32 noundef 35) #14
  %116 = tail call ptr @CDDM_from_mesh(ptr noundef %11) #14
  %117 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %116, i64 noundef %117) #14
  %118 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 6
  %119 = load i8, ptr %118, align 1, !tbaa !148
  %120 = and i8 %119, 2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i64 136, i1 false)
  %121 = trunc i32 %2 to i16
  %122 = getelementptr inbounds %struct.SubsurfModifierData, ptr %6, i64 0, i32 3
  store i16 %121, ptr %122, align 4, !tbaa !149
  %123 = getelementptr inbounds %struct.SubsurfModifierData, ptr %6, i64 0, i32 2
  store i16 %121, ptr %123, align 2, !tbaa !151
  %124 = icmp eq i8 %120, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.SubsurfModifierData, ptr %6, i64 0, i32 4
  %127 = load i16, ptr %126, align 2, !tbaa !152
  %128 = or i16 %127, 8
  store i16 %128, ptr %126, align 2, !tbaa !152
  br label %129

129:                                              ; preds = %125, %114
  %130 = icmp eq i32 %4, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.SubsurfModifierData, ptr %6, i64 0, i32 1
  store i16 1, ptr %132, align 8, !tbaa !173
  br label %133

133:                                              ; preds = %129, %131
  %134 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %135 = load i32, ptr %134, align 8, !tbaa !61
  %136 = shl i32 %135, 3
  %137 = and i32 %136, 8
  %138 = icmp eq i8 %115, 0
  %139 = or disjoint i32 %137, 16
  %140 = select i1 %138, i32 %137, i32 %139
  %141 = call ptr @subsurf_make_derived_from_derived(ptr noundef %116, ptr noundef nonnull %6, ptr noundef null, i32 noundef %140) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #14
  %142 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, i8 0, i64 120, i1 false)
  %144 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 1
  store i8 %13, ptr %144, align 8, !tbaa !65
  %145 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 2
  store i8 %13, ptr %145, align 1, !tbaa !66
  %146 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 3
  store i8 %13, ptr %146, align 2, !tbaa !67
  %147 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 4
  store i8 %13, ptr %147, align 1, !tbaa !59
  %148 = trunc i32 %4 to i8
  %149 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 5
  store i8 %148, ptr %149, align 4, !tbaa !130
  %150 = icmp eq i8 %115, 0
  %151 = select i1 %150, i32 1, i32 5
  %152 = call ptr @multires_make_derived_from_derived(ptr noundef %116, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %151)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #14
  %153 = getelementptr inbounds %struct.DerivedMesh, ptr %116, i64 0, i32 95
  %154 = load ptr, ptr %153, align 8, !tbaa !78
  call void %154(ptr noundef %116) #14
  %155 = getelementptr inbounds %struct.DerivedMesh, ptr %141, i64 0, i32 63
  %156 = load ptr, ptr %155, align 8, !tbaa !174
  %157 = call i32 %156(ptr noundef %141) #14
  %158 = getelementptr inbounds %struct.DerivedMesh, ptr %141, i64 0, i32 64
  %159 = load ptr, ptr %158, align 8, !tbaa !154
  %160 = call i32 %159(ptr noundef %141) #14
  %161 = getelementptr inbounds %struct.DerivedMesh, ptr %141, i64 0, i32 65
  %162 = load ptr, ptr %161, align 8, !tbaa !153
  %163 = call ptr %162(ptr noundef %141) #14
  %164 = getelementptr inbounds %struct.DerivedMesh, ptr %141, i64 0, i32 68
  %165 = load ptr, ptr %164, align 8, !tbaa !80
  call void %165(ptr noundef %141, ptr noundef nonnull %8) #14
  %166 = getelementptr inbounds %struct.DerivedMesh, ptr %152, i64 0, i32 65
  %167 = load ptr, ptr %166, align 8, !tbaa !153
  %168 = call ptr %167(ptr noundef %152) #14
  %169 = getelementptr inbounds %struct.DerivedMesh, ptr %152, i64 0, i32 68
  %170 = load ptr, ptr %169, align 8, !tbaa !80
  call void %170(ptr noundef %152, ptr noundef nonnull %9) #14
  %171 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %172 = sext i32 %157 to i64
  %173 = shl nsw i64 %172, 3
  %174 = call ptr %171(i64 noundef %173, ptr noundef nonnull @.str.4) #14
  %175 = icmp sgt i32 %157, 0
  br i1 %175, label %176, label %283

176:                                              ; preds = %133
  %177 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %178 = mul i32 %160, %160
  %179 = mul i32 %160, %160
  %180 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %181 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 2
  %182 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 1
  %183 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 7
  %184 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 1
  %185 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 7
  %186 = zext nneg i32 %157 to i64
  br label %187

187:                                              ; preds = %176, %280
  %188 = phi i64 [ 0, %176 ], [ %281, %280 ]
  %189 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %190 = load i32, ptr %177, align 4, !tbaa !162
  %191 = mul i32 %178, %190
  %192 = sext i32 %191 to i64
  %193 = call ptr %189(i64 noundef %192, ptr noundef nonnull @.str.6) #14
  %194 = getelementptr inbounds ptr, ptr %174, i64 %188
  store ptr %193, ptr %194, align 8, !tbaa !57
  %195 = getelementptr inbounds ptr, ptr %163, i64 %188
  %196 = load ptr, ptr %195, align 8, !tbaa !57
  %197 = load i32, ptr %177, align 4, !tbaa !162
  %198 = mul i32 %179, %197
  %199 = sext i32 %198 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %193, ptr align 1 %196, i64 %199, i1 false)
  %200 = load ptr, ptr %195, align 8, !tbaa !57
  %201 = getelementptr inbounds ptr, ptr %168, i64 %188
  %202 = load ptr, ptr %201, align 8, !tbaa !57
  %203 = load i32, ptr %180, align 4, !tbaa !161
  %204 = load i32, ptr %181, align 4, !tbaa !161
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %243

206:                                              ; preds = %187
  %207 = add nsw i32 %203, -1
  %208 = add nsw i32 %204, -1
  %209 = sdiv i32 %207, %208
  %210 = icmp sgt i32 %204, 0
  br i1 %210, label %211, label %280

211:                                              ; preds = %206, %238
  %212 = phi i32 [ %239, %238 ], [ 0, %206 ]
  %213 = phi i32 [ %240, %238 ], [ 0, %206 ]
  %214 = load i32, ptr %181, align 4, !tbaa !161
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %211, %216
  %217 = phi i32 [ %235, %216 ], [ %212, %211 ]
  %218 = phi i32 [ %234, %216 ], [ 0, %211 ]
  %219 = load i32, ptr %180, align 4, !tbaa !161
  %220 = mul i32 %219, %213
  %221 = add i32 %220, %218
  %222 = load i32, ptr %177, align 4, !tbaa !162
  %223 = mul i32 %222, %209
  %224 = mul i32 %223, %221
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %200, i64 %225
  %227 = load i32, ptr %184, align 4, !tbaa !162
  %228 = mul nsw i32 %227, %217
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, ptr %202, i64 %229
  %231 = load i32, ptr %185, align 4, !tbaa !175
  %232 = sext i32 %231 to i64
  %233 = shl nsw i64 %232, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %226, ptr align 4 %230, i64 %233, i1 false)
  %234 = add nuw nsw i32 %218, 1
  %235 = add nsw i32 %217, 1
  %236 = load i32, ptr %181, align 4, !tbaa !161
  %237 = icmp slt i32 %234, %236
  br i1 %237, label %216, label %238, !llvm.loop !176

238:                                              ; preds = %216, %211
  %239 = phi i32 [ %212, %211 ], [ %235, %216 ]
  %240 = add nuw nsw i32 %213, 1
  %241 = load i32, ptr %181, align 4, !tbaa !161
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %211, label %280, !llvm.loop !177

243:                                              ; preds = %187
  %244 = add nsw i32 %204, -1
  %245 = add nsw i32 %203, -1
  %246 = sdiv i32 %244, %245
  %247 = icmp sgt i32 %203, 0
  br i1 %247, label %248, label %280

248:                                              ; preds = %243, %275
  %249 = phi i32 [ %276, %275 ], [ 0, %243 ]
  %250 = phi i32 [ %277, %275 ], [ 0, %243 ]
  %251 = load i32, ptr %180, align 4, !tbaa !161
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %275

253:                                              ; preds = %248, %253
  %254 = phi i32 [ %272, %253 ], [ %249, %248 ]
  %255 = phi i32 [ %271, %253 ], [ 0, %248 ]
  %256 = load i32, ptr %177, align 4, !tbaa !162
  %257 = mul nsw i32 %256, %254
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, ptr %200, i64 %258
  %260 = load i32, ptr %181, align 4, !tbaa !161
  %261 = mul i32 %260, %250
  %262 = add i32 %261, %255
  %263 = load i32, ptr %182, align 4, !tbaa !162
  %264 = mul i32 %263, %246
  %265 = mul i32 %264, %262
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, ptr %202, i64 %266
  %268 = load i32, ptr %183, align 4, !tbaa !175
  %269 = sext i32 %268 to i64
  %270 = shl nsw i64 %269, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %259, ptr align 4 %267, i64 %270, i1 false)
  %271 = add nuw nsw i32 %255, 1
  %272 = add nsw i32 %254, 1
  %273 = load i32, ptr %180, align 4, !tbaa !161
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %253, label %275, !llvm.loop !178

275:                                              ; preds = %253, %248
  %276 = phi i32 [ %249, %248 ], [ %272, %253 ]
  %277 = add nuw nsw i32 %250, 1
  %278 = load i32, ptr %180, align 4, !tbaa !161
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %248, label %280, !llvm.loop !179

280:                                              ; preds = %275, %238, %206, %243
  %281 = add nuw nsw i64 %188, 1
  %282 = icmp eq i64 %281, %186
  br i1 %282, label %283, label %187, !llvm.loop !180

283:                                              ; preds = %280, %133
  %284 = getelementptr inbounds %struct.DerivedMesh, ptr %152, i64 0, i32 95
  %285 = load ptr, ptr %284, align 8, !tbaa !78
  call void %285(ptr noundef %152) #14
  %286 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %143, i32 noundef %14, ptr noundef null, i32 noundef 0) #14
  %287 = call i32 @ccgSubSurf_updateLevels(ptr noundef %143, i32 noundef %14, ptr noundef null, i32 noundef 0) #14
  %288 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 31
  %289 = load i32, ptr %288, align 4, !tbaa !47
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %325

291:                                              ; preds = %283
  %292 = zext nneg i32 %2 to i64
  %293 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !114
  %295 = sext i32 %294 to i64
  %296 = mul nsw i64 %295, 12
  %297 = zext nneg i32 %289 to i64
  br label %298

298:                                              ; preds = %322, %291
  %299 = phi i64 [ 0, %291 ], [ %323, %322 ]
  %300 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %301 = call ptr %300(i64 noundef %296, ptr noundef nonnull @.str.10) #14
  %302 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %299
  %303 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %299, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !117
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %298
  %307 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %307(ptr noundef nonnull %304) #14
  br label %308

308:                                              ; preds = %306, %298
  %309 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %299, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !115
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %322, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %299, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !122
  %315 = icmp ne ptr %314, null
  %316 = icmp slt i32 %310, %2
  %317 = and i1 %316, %315
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = call fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef nonnull %314, i32 noundef %310, i32 noundef %2, ptr noundef null)
  %320 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %321 = load ptr, ptr %313, align 8, !tbaa !122
  call void %320(ptr noundef %321) #14
  store ptr %319, ptr %313, align 8, !tbaa !122
  br label %322

322:                                              ; preds = %318, %312, %308
  store ptr %301, ptr %303, align 8, !tbaa !117
  store i32 %294, ptr %302, align 8, !tbaa !110
  store i32 %2, ptr %309, align 4, !tbaa !115
  %323 = add nuw nsw i64 %299, 1
  %324 = icmp eq i64 %323, %297
  br i1 %324, label %325, label %298, !llvm.loop !158

325:                                              ; preds = %322, %283
  call fastcc void @multiresModifier_disp_run(ptr noundef %141, ptr noundef %11, ptr noundef null, i32 noundef 1, ptr noundef %174, i32 noundef %2)
  %326 = getelementptr inbounds %struct.DerivedMesh, ptr %141, i64 0, i32 95
  %327 = load ptr, ptr %326, align 8, !tbaa !78
  call void %327(ptr noundef %141) #14
  %328 = icmp sgt i32 %157, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %325
  %330 = zext nneg i32 %157 to i64
  br label %331

331:                                              ; preds = %329, %331
  %332 = phi i64 [ 0, %329 ], [ %336, %331 ]
  %333 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %334 = getelementptr inbounds ptr, ptr %174, i64 %332
  %335 = load ptr, ptr %334, align 8, !tbaa !57
  call void %333(ptr noundef %335) #14
  %336 = add nuw nsw i64 %332, 1
  %337 = icmp eq i64 %336, %330
  br i1 %337, label %338, label %331, !llvm.loop !181

338:                                              ; preds = %331, %325
  %339 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %339(ptr noundef %174) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #14
  br label %378

340:                                              ; preds = %105
  %341 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 31
  %342 = load i32, ptr %341, align 4, !tbaa !47
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %378

344:                                              ; preds = %340
  %345 = zext nneg i32 %2 to i64
  %346 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %345
  %347 = load i32, ptr %346, align 4, !tbaa !114
  %348 = sext i32 %347 to i64
  %349 = mul nsw i64 %348, 12
  %350 = zext nneg i32 %342 to i64
  br label %351

351:                                              ; preds = %375, %344
  %352 = phi i64 [ 0, %344 ], [ %376, %375 ]
  %353 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %354 = tail call ptr %353(i64 noundef %349, ptr noundef nonnull @.str.10) #14
  %355 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %352
  %356 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %352, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !117
  %358 = icmp eq ptr %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %351
  %360 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %360(ptr noundef nonnull %357) #14
  br label %361

361:                                              ; preds = %359, %351
  %362 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %352, i32 1
  %363 = load i32, ptr %362, align 4, !tbaa !115
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %375, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.MDisps, ptr %106, i64 %352, i32 3
  %367 = load ptr, ptr %366, align 8, !tbaa !122
  %368 = icmp ne ptr %367, null
  %369 = icmp slt i32 %363, %2
  %370 = and i1 %369, %368
  br i1 %370, label %371, label %375

371:                                              ; preds = %365
  %372 = tail call fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef nonnull %367, i32 noundef %363, i32 noundef %2, ptr noundef null)
  %373 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %374 = load ptr, ptr %366, align 8, !tbaa !122
  tail call void %373(ptr noundef %374) #14
  store ptr %372, ptr %366, align 8, !tbaa !122
  br label %375

375:                                              ; preds = %371, %365, %361
  store ptr %354, ptr %356, align 8, !tbaa !117
  store i32 %347, ptr %355, align 8, !tbaa !110
  store i32 %2, ptr %362, align 4, !tbaa !115
  %376 = add nuw nsw i64 %352, 1
  %377 = icmp eq i64 %376, %350
  br i1 %377, label %378, label %351, !llvm.loop !158

378:                                              ; preds = %375, %340, %338
  %379 = trunc i32 %2 to i8
  store i8 %379, ptr %12, align 1, !tbaa !59
  %380 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %381 = load i32, ptr %380, align 8, !tbaa !61
  %382 = icmp eq i32 %381, 2
  br i1 %382, label %393, label %383

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 1
  %385 = load i8, ptr %384, align 8, !tbaa !65
  %386 = zext i8 %385 to i32
  %387 = icmp sgt i32 %386, %2
  %388 = call i32 @llvm.smax.i32(i32 %386, i32 %2)
  %389 = and i32 %2, 255
  %390 = icmp ugt i32 %388, %389
  %391 = select i1 %387, i8 %385, i8 %379
  %392 = select i1 %390, i8 %379, i8 %391
  store i8 %392, ptr %384, align 8, !tbaa !65
  br label %393

393:                                              ; preds = %378, %383
  %394 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 2
  %395 = load i8, ptr %394, align 1, !tbaa !66
  %396 = zext i8 %395 to i32
  %397 = icmp sgt i32 %396, %2
  %398 = call i32 @llvm.smax.i32(i32 %396, i32 %2)
  %399 = and i32 %2, 255
  %400 = icmp ugt i32 %398, %399
  %401 = select i1 %397, i8 %395, i8 %379
  %402 = select i1 %400, i8 %379, i8 %401
  store i8 %402, ptr %394, align 1, !tbaa !66
  %403 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 3
  %404 = load i8, ptr %403, align 2, !tbaa !67
  %405 = zext i8 %404 to i32
  %406 = icmp sgt i32 %405, %2
  %407 = call i32 @llvm.smax.i32(i32 %405, i32 %2)
  %408 = icmp ugt i32 %407, %399
  %409 = select i1 %406, i8 %404, i8 %379
  %410 = select i1 %408, i8 %379, i8 %409
  store i8 %410, ptr %403, align 2, !tbaa !67
  br label %411

411:                                              ; preds = %5, %16, %393
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @multires_modifier_update_mdisps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.SubsurfModifierData, align 8
  %3 = alloca %struct.SubsurfModifierData, align 8
  %4 = alloca %struct.MultiresModifierData, align 8
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca %struct.CCGKey, align 4
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = load ptr, ptr %7, align 8, !tbaa !183
  %13 = getelementptr inbounds %struct.MultiresModifierData, ptr %12, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !59
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 25
  %17 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 19) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 31
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = zext i8 %14 to i64
  %25 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !114
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ 0, %23 ], [ %31, %27 ]
  %29 = phi ptr [ %17, %23 ], [ %32, %27 ]
  store i32 %26, ptr %29, align 8, !tbaa !110
  %30 = getelementptr inbounds %struct.MDisps, ptr %29, i64 0, i32 1
  store i32 %15, ptr %30, align 4, !tbaa !115
  %31 = add nuw nsw i32 %28, 1
  %32 = getelementptr inbounds %struct.MDisps, ptr %29, i64 1
  %33 = icmp eq i32 %31, %21
  br i1 %33, label %34, label %27, !llvm.loop !116

34:                                               ; preds = %27, %19, %1
  %35 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 31
  %36 = load i32, ptr %35, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %16, ptr noundef %11, i64 noundef 524288, i32 noundef %36) #14
  %37 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 19) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %346, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !184
  %42 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !185
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %298

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  %46 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %16, i32 noundef 35) #14
  %47 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 119
  %48 = load ptr, ptr %47, align 8, !tbaa !186
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = tail call ptr @CDDM_copy(ptr noundef nonnull %48) #14
  br label %54

52:                                               ; preds = %45
  %53 = tail call ptr @CDDM_from_mesh(ptr noundef %11) #14
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  %56 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %55, i64 noundef %56) #14
  %57 = getelementptr inbounds %struct.MultiresModifierData, ptr %12, i64 0, i32 5
  %58 = load i8, ptr %57, align 4, !tbaa !130
  %59 = getelementptr inbounds %struct.MultiresModifierData, ptr %12, i64 0, i32 6
  %60 = load i8, ptr %59, align 1, !tbaa !148
  %61 = and i8 %60, 2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %62 = trunc i32 %43 to i16
  %63 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 3
  store i16 %62, ptr %63, align 4, !tbaa !149
  %64 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 2
  store i16 %62, ptr %64, align 2, !tbaa !151
  %65 = icmp eq i8 %61, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 4
  %68 = load i16, ptr %67, align 2, !tbaa !152
  %69 = or i16 %68, 8
  store i16 %69, ptr %67, align 2, !tbaa !152
  br label %70

70:                                               ; preds = %66, %54
  %71 = icmp eq i8 %58, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 1
  store i16 1, ptr %73, align 8, !tbaa !173
  br label %74

74:                                               ; preds = %70, %72
  %75 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 27
  %76 = load i32, ptr %75, align 8, !tbaa !61
  %77 = shl i32 %76, 3
  %78 = and i32 %77, 8
  %79 = icmp eq i8 %46, 0
  %80 = or disjoint i32 %78, 16
  %81 = select i1 %79, i32 %78, i32 %80
  %82 = call ptr @subsurf_make_derived_from_derived(ptr noundef %55, ptr noundef nonnull %3, ptr noundef null, i32 noundef %81) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #14
  %83 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !79
  %85 = load i8, ptr %57, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %86 = trunc i32 %41 to i8
  %87 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 1
  store i8 %86, ptr %87, align 8, !tbaa !65
  %88 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 2
  store i8 %86, ptr %88, align 1, !tbaa !66
  %89 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 3
  store i8 %86, ptr %89, align 2, !tbaa !67
  %90 = trunc i32 %43 to i8
  %91 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  store i8 %90, ptr %91, align 1, !tbaa !59
  %92 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 5
  store i8 %85, ptr %92, align 4, !tbaa !130
  %93 = icmp eq i8 %46, 0
  %94 = select i1 %93, i32 1, i32 5
  %95 = call ptr @multires_make_derived_from_derived(ptr noundef %55, ptr noundef nonnull %4, ptr noundef %9, i32 noundef %94)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #14
  %96 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 95
  %97 = load ptr, ptr %96, align 8, !tbaa !78
  call void %97(ptr noundef %55) #14
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %82, i64 0, i32 63
  %99 = load ptr, ptr %98, align 8, !tbaa !174
  %100 = call i32 %99(ptr noundef %82) #14
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %82, i64 0, i32 64
  %102 = load ptr, ptr %101, align 8, !tbaa !154
  %103 = call i32 %102(ptr noundef %82) #14
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %82, i64 0, i32 65
  %105 = load ptr, ptr %104, align 8, !tbaa !153
  %106 = call ptr %105(ptr noundef %82) #14
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %82, i64 0, i32 68
  %108 = load ptr, ptr %107, align 8, !tbaa !80
  call void %108(ptr noundef %82, ptr noundef nonnull %5) #14
  %109 = getelementptr inbounds %struct.DerivedMesh, ptr %95, i64 0, i32 64
  %110 = load ptr, ptr %109, align 8, !tbaa !154
  %111 = call i32 %110(ptr noundef %95) #14
  %112 = getelementptr inbounds %struct.DerivedMesh, ptr %95, i64 0, i32 65
  %113 = load ptr, ptr %112, align 8, !tbaa !153
  %114 = call ptr %113(ptr noundef %95) #14
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %95, i64 0, i32 68
  %116 = load ptr, ptr %115, align 8, !tbaa !80
  call void %116(ptr noundef %95, ptr noundef nonnull %6) #14
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 65
  %118 = load ptr, ptr %117, align 8, !tbaa !153
  %119 = call ptr %118(ptr noundef %0) #14
  %120 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %121 = sext i32 %100 to i64
  %122 = shl nsw i64 %121, 3
  %123 = call ptr %120(i64 noundef %122, ptr noundef nonnull @.str.4) #14
  %124 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %125 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !162
  %127 = mul i32 %111, %111
  %128 = mul i32 %127, %126
  %129 = sext i32 %128 to i64
  %130 = call ptr %124(i64 noundef %129, ptr noundef nonnull @.str.5) #14
  %131 = icmp sgt i32 %100, 0
  br i1 %131, label %132, label %276

132:                                              ; preds = %74
  %133 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 1
  %134 = mul i32 %103, %103
  %135 = mul i32 %103, %103
  %136 = mul i32 %111, %111
  %137 = icmp eq i32 %111, 0
  %138 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 2
  %139 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 2
  %140 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 7
  %141 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 7
  %142 = call i32 @llvm.umax.i32(i32 %136, i32 1)
  %143 = zext nneg i32 %100 to i64
  %144 = zext i32 %142 to i64
  br label %145

145:                                              ; preds = %132, %273
  %146 = phi i64 [ 0, %132 ], [ %274, %273 ]
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %148 = load i32, ptr %133, align 4, !tbaa !162
  %149 = mul i32 %134, %148
  %150 = sext i32 %149 to i64
  %151 = call ptr %147(i64 noundef %150, ptr noundef nonnull @.str.6) #14
  %152 = getelementptr inbounds ptr, ptr %123, i64 %146
  store ptr %151, ptr %152, align 8, !tbaa !57
  %153 = getelementptr inbounds ptr, ptr %106, i64 %146
  %154 = load ptr, ptr %153, align 8, !tbaa !57
  %155 = load i32, ptr %133, align 4, !tbaa !162
  %156 = mul i32 %135, %155
  %157 = sext i32 %156 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %154, i64 %157, i1 false)
  br i1 %137, label %194, label %158

158:                                              ; preds = %145
  %159 = load i32, ptr %125, align 4, !tbaa !162
  %160 = getelementptr inbounds ptr, ptr %119, i64 %146
  %161 = load ptr, ptr %160, align 8, !tbaa !57
  %162 = getelementptr inbounds ptr, ptr %114, i64 %146
  %163 = load ptr, ptr %162, align 8, !tbaa !57
  %164 = sext i32 %159 to i64
  br label %165

165:                                              ; preds = %158, %165
  %166 = phi i64 [ 0, %158 ], [ %192, %165 ]
  %167 = mul nsw i64 %166, %164
  %168 = getelementptr inbounds i8, ptr %130, i64 %167
  %169 = getelementptr inbounds i8, ptr %161, i64 %167
  %170 = getelementptr inbounds i8, ptr %163, i64 %167
  %171 = load float, ptr %169, align 4, !tbaa !84
  %172 = load float, ptr %170, align 4, !tbaa !84
  %173 = fsub float %171, %172
  store float %173, ptr %168, align 4, !tbaa !84
  %174 = getelementptr inbounds float, ptr %169, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !84
  %176 = getelementptr inbounds float, ptr %170, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !84
  %178 = fsub float %175, %177
  %179 = getelementptr inbounds float, ptr %168, i64 1
  store float %178, ptr %179, align 4, !tbaa !84
  %180 = getelementptr inbounds float, ptr %169, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !84
  %182 = getelementptr inbounds float, ptr %170, i64 2
  %183 = load float, ptr %182, align 4, !tbaa !84
  %184 = fsub float %181, %183
  %185 = getelementptr inbounds float, ptr %168, i64 2
  store float %184, ptr %185, align 4, !tbaa !84
  %186 = getelementptr inbounds float, ptr %169, i64 3
  %187 = load float, ptr %186, align 4, !tbaa !84
  %188 = getelementptr inbounds float, ptr %170, i64 3
  %189 = load float, ptr %188, align 4, !tbaa !84
  %190 = fsub float %187, %189
  %191 = getelementptr inbounds float, ptr %168, i64 3
  store float %190, ptr %191, align 4, !tbaa !84
  %192 = add nuw nsw i64 %166, 1
  %193 = icmp eq i64 %192, %144
  br i1 %193, label %194, label %165, !llvm.loop !187

194:                                              ; preds = %165, %145
  %195 = load ptr, ptr %153, align 8, !tbaa !57
  %196 = load i32, ptr %138, align 4, !tbaa !161
  %197 = load i32, ptr %139, align 4, !tbaa !161
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %236

199:                                              ; preds = %194
  %200 = add nsw i32 %196, -1
  %201 = add nsw i32 %197, -1
  %202 = sdiv i32 %200, %201
  %203 = icmp sgt i32 %197, 0
  br i1 %203, label %204, label %273

204:                                              ; preds = %199, %231
  %205 = phi i32 [ %232, %231 ], [ 0, %199 ]
  %206 = phi i32 [ %233, %231 ], [ 0, %199 ]
  %207 = load i32, ptr %139, align 4, !tbaa !161
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %204, %209
  %210 = phi i32 [ %228, %209 ], [ %205, %204 ]
  %211 = phi i32 [ %227, %209 ], [ 0, %204 ]
  %212 = load i32, ptr %138, align 4, !tbaa !161
  %213 = mul i32 %212, %206
  %214 = add i32 %213, %211
  %215 = load i32, ptr %133, align 4, !tbaa !162
  %216 = mul i32 %215, %202
  %217 = mul i32 %216, %214
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %195, i64 %218
  %220 = load i32, ptr %125, align 4, !tbaa !162
  %221 = mul nsw i32 %220, %210
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %130, i64 %222
  %224 = load i32, ptr %141, align 4, !tbaa !175
  %225 = sext i32 %224 to i64
  %226 = shl nsw i64 %225, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %219, ptr align 4 %223, i64 %226, i1 false)
  %227 = add nuw nsw i32 %211, 1
  %228 = add nsw i32 %210, 1
  %229 = load i32, ptr %139, align 4, !tbaa !161
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %209, label %231, !llvm.loop !176

231:                                              ; preds = %209, %204
  %232 = phi i32 [ %205, %204 ], [ %228, %209 ]
  %233 = add nuw nsw i32 %206, 1
  %234 = load i32, ptr %139, align 4, !tbaa !161
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %204, label %273, !llvm.loop !177

236:                                              ; preds = %194
  %237 = add nsw i32 %197, -1
  %238 = add nsw i32 %196, -1
  %239 = sdiv i32 %237, %238
  %240 = icmp sgt i32 %196, 0
  br i1 %240, label %241, label %273

241:                                              ; preds = %236, %268
  %242 = phi i32 [ %269, %268 ], [ 0, %236 ]
  %243 = phi i32 [ %270, %268 ], [ 0, %236 ]
  %244 = load i32, ptr %138, align 4, !tbaa !161
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %268

246:                                              ; preds = %241, %246
  %247 = phi i32 [ %265, %246 ], [ %242, %241 ]
  %248 = phi i32 [ %264, %246 ], [ 0, %241 ]
  %249 = load i32, ptr %133, align 4, !tbaa !162
  %250 = mul nsw i32 %249, %247
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %195, i64 %251
  %253 = load i32, ptr %139, align 4, !tbaa !161
  %254 = mul i32 %253, %243
  %255 = add i32 %254, %248
  %256 = load i32, ptr %125, align 4, !tbaa !162
  %257 = mul i32 %256, %239
  %258 = mul i32 %257, %255
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %130, i64 %259
  %261 = load i32, ptr %140, align 4, !tbaa !175
  %262 = sext i32 %261 to i64
  %263 = shl nsw i64 %262, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %252, ptr align 4 %260, i64 %263, i1 false)
  %264 = add nuw nsw i32 %248, 1
  %265 = add nsw i32 %247, 1
  %266 = load i32, ptr %138, align 4, !tbaa !161
  %267 = icmp slt i32 %264, %266
  br i1 %267, label %246, label %268, !llvm.loop !178

268:                                              ; preds = %246, %241
  %269 = phi i32 [ %242, %241 ], [ %265, %246 ]
  %270 = add nuw nsw i32 %243, 1
  %271 = load i32, ptr %138, align 4, !tbaa !161
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %241, label %273, !llvm.loop !179

273:                                              ; preds = %268, %231, %199, %236
  %274 = add nuw nsw i64 %146, 1
  %275 = icmp eq i64 %274, %143
  br i1 %275, label %276, label %145, !llvm.loop !188

276:                                              ; preds = %273, %74
  %277 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %277(ptr noundef %130) #14
  %278 = getelementptr inbounds %struct.DerivedMesh, ptr %95, i64 0, i32 95
  %279 = load ptr, ptr %278, align 8, !tbaa !78
  call void %279(ptr noundef %95) #14
  %280 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %84, i32 noundef %41, ptr noundef null, i32 noundef 0) #14
  %281 = call i32 @ccgSubSurf_updateLevels(ptr noundef %84, i32 noundef %41, ptr noundef null, i32 noundef 0) #14
  %282 = load i8, ptr %13, align 1, !tbaa !59
  %283 = zext i8 %282 to i32
  call fastcc void @multiresModifier_disp_run(ptr noundef %82, ptr noundef %11, ptr noundef null, i32 noundef 2, ptr noundef %123, i32 noundef %283)
  %284 = getelementptr inbounds %struct.DerivedMesh, ptr %82, i64 0, i32 95
  %285 = load ptr, ptr %284, align 8, !tbaa !78
  call void %285(ptr noundef %82) #14
  %286 = icmp sgt i32 %100, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %276
  %288 = zext nneg i32 %100 to i64
  br label %289

289:                                              ; preds = %287, %289
  %290 = phi i64 [ 0, %287 ], [ %294, %289 ]
  %291 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %292 = getelementptr inbounds ptr, ptr %123, i64 %290
  %293 = load ptr, ptr %292, align 8, !tbaa !57
  call void %291(ptr noundef %293) #14
  %294 = add nuw nsw i64 %290, 1
  %295 = icmp eq i64 %294, %288
  br i1 %295, label %296, label %289, !llvm.loop !189

296:                                              ; preds = %289, %276
  %297 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %297(ptr noundef %123) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %346

298:                                              ; preds = %39
  %299 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %16, i32 noundef 35) #14
  %300 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 119
  %301 = load ptr, ptr %300, align 8, !tbaa !186
  %302 = icmp eq ptr %301, null
  br i1 %302, label %305, label %303

303:                                              ; preds = %298
  %304 = tail call ptr @CDDM_copy(ptr noundef nonnull %301) #14
  br label %307

305:                                              ; preds = %298
  %306 = tail call ptr @CDDM_from_mesh(ptr noundef %11) #14
  br label %307

307:                                              ; preds = %305, %303
  %308 = phi ptr [ %304, %303 ], [ %306, %305 ]
  %309 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %308, i64 noundef %309) #14
  %310 = load i8, ptr %13, align 1, !tbaa !59
  %311 = getelementptr inbounds %struct.MultiresModifierData, ptr %12, i64 0, i32 5
  %312 = load i8, ptr %311, align 4, !tbaa !130
  %313 = getelementptr inbounds %struct.MultiresModifierData, ptr %12, i64 0, i32 6
  %314 = load i8, ptr %313, align 1, !tbaa !148
  %315 = and i8 %314, 2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, i8 0, i64 136, i1 false)
  %316 = zext i8 %310 to i16
  %317 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2, i64 0, i32 3
  store i16 %316, ptr %317, align 4, !tbaa !149
  %318 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2, i64 0, i32 2
  store i16 %316, ptr %318, align 2, !tbaa !151
  %319 = icmp eq i8 %315, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %307
  %321 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2, i64 0, i32 4
  %322 = load i16, ptr %321, align 2, !tbaa !152
  %323 = or i16 %322, 8
  store i16 %323, ptr %321, align 2, !tbaa !152
  br label %324

324:                                              ; preds = %320, %307
  %325 = icmp eq i8 %312, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %324
  %327 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2, i64 0, i32 1
  store i16 1, ptr %327, align 8, !tbaa !173
  br label %328

328:                                              ; preds = %324, %326
  %329 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 27
  %330 = load i32, ptr %329, align 8, !tbaa !61
  %331 = shl i32 %330, 3
  %332 = and i32 %331, 8
  %333 = icmp eq i8 %299, 0
  %334 = or disjoint i32 %332, 16
  %335 = select i1 %333, i32 %332, i32 %334
  %336 = call ptr @subsurf_make_derived_from_derived(ptr noundef %308, ptr noundef nonnull %2, ptr noundef null, i32 noundef %335) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #14
  %337 = getelementptr inbounds %struct.DerivedMesh, ptr %308, i64 0, i32 95
  %338 = load ptr, ptr %337, align 8, !tbaa !78
  call void %338(ptr noundef %308) #14
  %339 = getelementptr inbounds %struct.DerivedMesh, ptr %336, i64 0, i32 65
  %340 = load ptr, ptr %339, align 8, !tbaa !153
  %341 = call ptr %340(ptr noundef %336) #14
  %342 = load i8, ptr %13, align 1, !tbaa !59
  %343 = zext i8 %342 to i32
  call fastcc void @multiresModifier_disp_run(ptr noundef %0, ptr noundef %11, ptr noundef null, i32 noundef 1, ptr noundef %341, i32 noundef %343)
  %344 = getelementptr inbounds %struct.DerivedMesh, ptr %336, i64 0, i32 95
  %345 = load ptr, ptr %344, align 8, !tbaa !78
  call void %345(ptr noundef %336) #14
  br label %346

346:                                              ; preds = %296, %328, %34
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @ccgSubSurf_updateFromFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_updateLevels(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multires_modifier_update_hidden(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 25
  %9 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %8, i32 noundef 19) #14
  %10 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !185
  %12 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !184
  %14 = icmp eq ptr %9, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 31
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %15, %38
  %20 = phi i64 [ %39, %38 ], [ 0, %15 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.MDisps, ptr %9, i64 %20, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  br i1 %23, label %26, label %28

26:                                               ; preds = %19
  %27 = icmp eq ptr %25, null
  br i1 %27, label %38, label %32

28:                                               ; preds = %19
  %29 = tail call fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef nonnull %22, i32 noundef %13, i32 noundef %11, ptr noundef %25)
  %30 = load ptr, ptr %24, align 8, !tbaa !122
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %26
  %33 = phi ptr [ %25, %26 ], [ %30, %28 ]
  %34 = phi ptr [ null, %26 ], [ %29, %28 ]
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %35(ptr noundef nonnull %33) #14
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %29, %28 ], [ %34, %32 ]
  store ptr %37, ptr %24, align 8, !tbaa !122
  br label %38

38:                                               ; preds = %36, %26
  %39 = add nuw nsw i64 %20, 1
  %40 = load i32, ptr %16, align 4, !tbaa !47
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %19, label %43, !llvm.loop !191

43:                                               ; preds = %38, %15, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = tail call i32 @BKE_ccg_gridsize(i32 noundef %2) #14
  %6 = tail call i32 @BKE_ccg_gridsize(i32 noundef %1) #14
  %7 = icmp eq i32 %1, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !57
  %10 = tail call ptr %9(ptr noundef %0) #14
  br label %150

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %13 = mul nsw i32 %5, %5
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 268435452
  %16 = add nuw nsw i32 %15, 4
  %17 = zext nneg i32 %16 to i64
  %18 = tail call ptr %12(i64 noundef %17, ptr noundef nonnull @.str.15) #14
  %19 = tail call i32 @BKE_ccg_factor(i32 noundef %1, i32 noundef %2) #14
  %20 = icmp sgt i32 %6, 0
  br i1 %20, label %21, label %150

21:                                               ; preds = %11
  %22 = xor i32 %1, -1
  %23 = add i32 %22, %2
  %24 = shl nuw i32 1, %23
  %25 = sub i32 0, %24
  %26 = icmp eq i32 %23, 31
  %27 = icmp eq ptr %3, null
  %28 = sext i32 %25 to i64
  %29 = sext i32 %5 to i64
  %30 = tail call i32 @llvm.abs.i32(i32 %24, i1 false)
  %31 = add nuw i32 %30, 1
  %32 = sext i32 %5 to i64
  %33 = sext i32 %5 to i64
  %34 = sext i32 %19 to i64
  %35 = zext nneg i32 %6 to i64
  %36 = sext i32 %19 to i64
  %37 = zext nneg i32 %6 to i64
  %38 = zext nneg i32 %6 to i64
  br label %39

39:                                               ; preds = %21, %147
  %40 = phi i64 [ 0, %21 ], [ %148, %147 ]
  %41 = mul i64 %40, %35
  %42 = mul nsw i64 %40, %36
  br label %43

43:                                               ; preds = %39, %144
  %44 = phi i64 [ 0, %39 ], [ %145, %144 ]
  %45 = add i64 %44, %41
  %46 = lshr i64 %45, 5
  %47 = and i64 %46, 134217727
  %48 = getelementptr inbounds i32, ptr %0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !114
  %50 = trunc i64 %45 to i32
  %51 = and i32 %50, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %49, %52
  br i1 %26, label %144, label %54

54:                                               ; preds = %43
  %55 = mul nsw i64 %44, %34
  %56 = icmp eq i32 %53, 0
  %57 = icmp eq i32 %53, 0
  br label %58

58:                                               ; preds = %54, %140
  %59 = phi i64 [ %28, %54 ], [ %141, %140 ]
  %60 = add nsw i64 %59, %42
  %61 = icmp sgt i64 %60, -1
  %62 = icmp slt i64 %60, %33
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %140

64:                                               ; preds = %58
  %65 = mul nsw i64 %60, %32
  br label %66

66:                                               ; preds = %64, %136
  %67 = phi i64 [ %28, %64 ], [ %137, %136 ]
  %68 = add nsw i64 %67, %55
  %69 = icmp sgt i64 %68, -1
  %70 = icmp slt i64 %68, %29
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %136

72:                                               ; preds = %66
  %73 = add nsw i64 %68, %65
  br i1 %27, label %117, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds i32, ptr %3, i64 %73
  %76 = load i32, ptr %75, align 4, !tbaa !114
  %77 = icmp eq i32 %53, %76
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = trunc i64 %73 to i32
  %80 = and i32 %79, 31
  %81 = shl nuw i32 1, %80
  br i1 %56, label %89, label %82

82:                                               ; preds = %78
  %83 = trunc i64 %73 to i32
  %84 = ashr i32 %83, 5
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %18, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !114
  %88 = or i32 %87, %81
  store i32 %88, ptr %86, align 4, !tbaa !114
  br label %136

89:                                               ; preds = %78
  %90 = xor i32 %81, -1
  %91 = trunc i64 %73 to i32
  %92 = ashr i32 %91, 5
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %18, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !114
  %96 = and i32 %95, %90
  store i32 %96, ptr %94, align 4, !tbaa !114
  br label %136

97:                                               ; preds = %74
  %98 = icmp eq i32 %76, 0
  %99 = trunc i64 %73 to i32
  %100 = and i32 %99, 31
  %101 = shl nuw i32 1, %100
  br i1 %98, label %109, label %102

102:                                              ; preds = %97
  %103 = trunc i64 %73 to i32
  %104 = ashr i32 %103, 5
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %18, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !114
  %108 = or i32 %107, %101
  store i32 %108, ptr %106, align 4, !tbaa !114
  br label %136

109:                                              ; preds = %97
  %110 = xor i32 %101, -1
  %111 = trunc i64 %73 to i32
  %112 = ashr i32 %111, 5
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %18, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !114
  %116 = and i32 %115, %110
  store i32 %116, ptr %114, align 4, !tbaa !114
  br label %136

117:                                              ; preds = %72
  %118 = trunc i64 %73 to i32
  %119 = and i32 %118, 31
  %120 = shl nuw i32 1, %119
  br i1 %57, label %128, label %121

121:                                              ; preds = %117
  %122 = trunc i64 %73 to i32
  %123 = ashr i32 %122, 5
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %18, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !114
  %127 = or i32 %126, %120
  store i32 %127, ptr %125, align 4, !tbaa !114
  br label %136

128:                                              ; preds = %117
  %129 = xor i32 %120, -1
  %130 = trunc i64 %73 to i32
  %131 = ashr i32 %130, 5
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %18, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !114
  %135 = and i32 %134, %129
  store i32 %135, ptr %133, align 4, !tbaa !114
  br label %136

136:                                              ; preds = %102, %109, %82, %89, %128, %121, %66
  %137 = add nsw i64 %67, 1
  %138 = trunc i64 %137 to i32
  %139 = icmp eq i32 %31, %138
  br i1 %139, label %140, label %66, !llvm.loop !192

140:                                              ; preds = %136, %58
  %141 = add nsw i64 %59, 1
  %142 = trunc i64 %141 to i32
  %143 = icmp eq i32 %31, %142
  br i1 %143, label %144, label %58, !llvm.loop !193

144:                                              ; preds = %140, %43
  %145 = add nuw nsw i64 %44, 1
  %146 = icmp eq i64 %145, %38
  br i1 %146, label %147, label %43, !llvm.loop !194

147:                                              ; preds = %144
  %148 = add nuw nsw i64 %40, 1
  %149 = icmp eq i64 %148, %37
  br i1 %149, label %150, label %39, !llvm.loop !195

150:                                              ; preds = %147, %11, %8
  %151 = phi ptr [ %10, %8 ], [ %18, %11 ], [ %18, %147 ]
  ret ptr %151
}

; Function Attrs: nounwind uwtable
define dso_local void @multires_set_space(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.SubsurfModifierData, align 8
  %6 = alloca %struct.MultiresModifierData, align 8
  %7 = alloca %struct.CCGKey, align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %11 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %10, i32 noundef 25) #14
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %4, %26
  %16 = phi ptr [ %28, %26 ], [ %13, %4 ]
  %17 = phi ptr [ %27, %26 ], [ null, %4 ]
  %18 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = icmp eq i32 %19, 29
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = icmp eq ptr %17, null
  %23 = select i1 %22, ptr %16, ptr %17
  %24 = tail call zeroext i8 @modifier_isEnabled(ptr noundef null, ptr noundef nonnull %16, i32 noundef 1) #14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %15
  %27 = phi ptr [ %23, %21 ], [ %17, %15 ]
  %28 = load ptr, ptr %16, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %15, !llvm.loop !58

30:                                               ; preds = %21, %26, %4
  %31 = phi ptr [ null, %4 ], [ %16, %21 ], [ null, %26 ]
  %32 = phi ptr [ null, %4 ], [ %23, %21 ], [ %27, %26 ]
  %33 = icmp eq ptr %31, null
  %34 = select i1 %33, ptr %32, ptr %31
  %35 = icmp eq ptr %34, null
  br i1 %35, label %297, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %38 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %37, i32 noundef 19) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %283, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.MultiresModifierData, ptr %34, i64 0, i32 4
  %42 = load i8, ptr %41, align 1, !tbaa !59
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.MultiresModifierData, ptr %34, i64 0, i32 5
  %45 = load i8, ptr %44, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, i8 0, i64 120, i1 false)
  %46 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 1
  store i8 %42, ptr %46, align 8, !tbaa !65
  %47 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 2
  store i8 %42, ptr %47, align 1, !tbaa !66
  %48 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 3
  store i8 %42, ptr %48, align 2, !tbaa !67
  %49 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 4
  store i8 %42, ptr %49, align 1, !tbaa !59
  %50 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 5
  store i8 %45, ptr %50, align 4, !tbaa !130
  %51 = call ptr @multires_make_derived_from_derived(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #14
  %52 = load i8, ptr %44, align 4, !tbaa !130
  %53 = getelementptr inbounds %struct.MultiresModifierData, ptr %34, i64 0, i32 6
  %54 = load i8, ptr %53, align 1, !tbaa !148
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 1
  %57 = and i32 %55, 2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i64 136, i1 false)
  %58 = zext i8 %42 to i16
  %59 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 3
  store i16 %58, ptr %59, align 4, !tbaa !149
  %60 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 2
  store i16 %58, ptr %60, align 2, !tbaa !151
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 4
  %64 = load i16, ptr %63, align 2, !tbaa !152
  %65 = or i16 %64, 8
  store i16 %65, ptr %63, align 2, !tbaa !152
  br label %66

66:                                               ; preds = %62, %40
  %67 = icmp eq i8 %52, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 1
  store i16 1, ptr %69, align 8, !tbaa !173
  br label %70

70:                                               ; preds = %68, %66
  %71 = icmp eq i32 %56, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 4
  %74 = load i16, ptr %73, align 2, !tbaa !152
  %75 = or i16 %74, 4
  store i16 %75, ptr %73, align 2, !tbaa !152
  br label %76

76:                                               ; preds = %70, %72
  %77 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %78 = load i32, ptr %77, align 8, !tbaa !61
  %79 = shl i32 %78, 3
  %80 = and i32 %79, 8
  %81 = call ptr @subsurf_make_derived_from_derived(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, i32 noundef %80) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 63
  %83 = load ptr, ptr %82, align 8, !tbaa !174
  %84 = call i32 %83(ptr noundef %81) #14
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 64
  %86 = load ptr, ptr %85, align 8, !tbaa !154
  %87 = call i32 %86(ptr noundef %81) #14
  %88 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 65
  %89 = load ptr, ptr %88, align 8, !tbaa !153
  %90 = call ptr %89(ptr noundef %81) #14
  %91 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 68
  %92 = load ptr, ptr %91, align 8, !tbaa !80
  call void %92(ptr noundef %81, ptr noundef nonnull %7) #14
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %94 = sext i32 %84 to i64
  %95 = shl nsw i64 %94, 3
  %96 = call ptr %93(i64 noundef %95, ptr noundef nonnull @.str.4) #14
  %97 = icmp sgt i32 %84, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %76
  %99 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 1
  %100 = mul i32 %87, %87
  %101 = mul i32 %87, %87
  %102 = zext nneg i32 %84 to i64
  br label %103

103:                                              ; preds = %98, %103
  %104 = phi i64 [ 0, %98 ], [ %116, %103 ]
  %105 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %106 = load i32, ptr %99, align 4, !tbaa !162
  %107 = mul i32 %100, %106
  %108 = sext i32 %107 to i64
  %109 = call ptr %105(i64 noundef %108, ptr noundef nonnull @.str.6) #14
  %110 = getelementptr inbounds ptr, ptr %96, i64 %104
  store ptr %109, ptr %110, align 8, !tbaa !57
  %111 = getelementptr inbounds ptr, ptr %90, i64 %104
  %112 = load ptr, ptr %111, align 8, !tbaa !57
  %113 = load i32, ptr %99, align 4, !tbaa !162
  %114 = mul i32 %101, %113
  %115 = sext i32 %114 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %112, i64 %115, i1 false)
  %116 = add nuw nsw i64 %104, 1
  %117 = icmp eq i64 %116, %102
  br i1 %117, label %118, label %103, !llvm.loop !196

118:                                              ; preds = %103, %76
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %51, i64 0, i32 64
  %120 = load ptr, ptr %119, align 8, !tbaa !154
  %121 = call i32 %120(ptr noundef %51) #14
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %51, i64 0, i32 65
  %123 = load ptr, ptr %122, align 8, !tbaa !153
  %124 = call ptr %123(ptr noundef %51) #14
  %125 = getelementptr inbounds %struct.DerivedMesh, ptr %51, i64 0, i32 67
  %126 = load ptr, ptr %125, align 8, !tbaa !155
  %127 = call ptr %126(ptr noundef %51) #14
  %128 = zext i8 %42 to i64
  %129 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !114
  %131 = add nsw i32 %130, -1
  %132 = add nsw i32 %121, -1
  %133 = sdiv i32 %131, %132
  %134 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !197
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %283

137:                                              ; preds = %118
  %138 = mul nsw i32 %121, %121
  %139 = zext nneg i32 %138 to i64
  %140 = mul nuw nsw i64 %139, 12
  %141 = icmp sgt i32 %121, 0
  %142 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 2
  %143 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 1
  %144 = getelementptr inbounds float, ptr %9, i64 1
  %145 = getelementptr inbounds float, ptr %9, i64 2
  %146 = getelementptr inbounds float, ptr %9, i64 1
  %147 = getelementptr inbounds float, ptr %9, i64 2
  %148 = getelementptr inbounds float, ptr %9, i64 1
  %149 = getelementptr inbounds float, ptr %9, i64 2
  %150 = getelementptr inbounds float, ptr %9, i64 1
  %151 = getelementptr inbounds float, ptr %9, i64 2
  %152 = getelementptr inbounds float, ptr %9, i64 1
  %153 = getelementptr inbounds float, ptr %9, i64 2
  %154 = getelementptr inbounds float, ptr %9, i64 1
  %155 = getelementptr inbounds float, ptr %9, i64 2
  %156 = zext nneg i32 %121 to i64
  br label %157

157:                                              ; preds = %137, %278
  %158 = phi i64 [ 0, %137 ], [ %279, %278 ]
  %159 = getelementptr inbounds %struct.MPoly, ptr %11, i64 %158
  %160 = getelementptr inbounds %struct.MPoly, ptr %11, i64 %158, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !107
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %278

163:                                              ; preds = %157
  %164 = getelementptr inbounds i32, ptr %127, i64 %158
  %165 = load i32, ptr %164, align 4, !tbaa !114
  %166 = sext i32 %165 to i64
  br label %167

167:                                              ; preds = %163, %274
  %168 = phi i64 [ %166, %163 ], [ %276, %274 ]
  %169 = phi i32 [ 0, %163 ], [ %275, %274 ]
  %170 = load i32, ptr %159, align 4, !tbaa !109
  %171 = add nsw i32 %170, %169
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %96, i64 %168
  %174 = load ptr, ptr %173, align 8, !tbaa !57
  %175 = getelementptr inbounds %struct.MDisps, ptr %38, i64 %172, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !117
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.MDisps, ptr %38, i64 %172
  store i32 %138, ptr %179, align 8, !tbaa !110
  %180 = getelementptr inbounds %struct.MDisps, ptr %38, i64 %172, i32 1
  store i32 %43, ptr %180, align 4, !tbaa !115
  %181 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %182 = call ptr %181(i64 noundef %140, ptr noundef nonnull @.str.7) #14
  store ptr %182, ptr %175, align 8, !tbaa !117
  br label %183

183:                                              ; preds = %178, %167
  %184 = load ptr, ptr %175, align 8, !tbaa !117
  br i1 %141, label %185, label %274

185:                                              ; preds = %183, %271
  %186 = phi i32 [ %272, %271 ], [ 0, %183 ]
  %187 = mul nsw i32 %186, %130
  br label %188

188:                                              ; preds = %185, %268
  %189 = phi i64 [ 0, %185 ], [ %269, %268 ]
  %190 = trunc i64 %189 to i32
  %191 = add i32 %187, %190
  %192 = mul i32 %191, %133
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x float], ptr %184, i64 %193
  %195 = load i32, ptr %142, align 4, !tbaa !161
  %196 = mul nsw i32 %195, %186
  %197 = trunc i64 %189 to i32
  %198 = add nsw i32 %196, %197
  %199 = load i32, ptr %143, align 4, !tbaa !162
  %200 = mul nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %174, i64 %201
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %203 = trunc i64 %189 to i32
  call fastcc void @grid_tangent_matrix(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %203, i32 noundef %186, ptr noundef %174)
  switch i32 %2, label %236 [
    i32 0, label %204
    i32 1, label %216
    i32 2, label %230
  ]

204:                                              ; preds = %188
  call void @mul_v3_m3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %194) #14
  %205 = load float, ptr %202, align 4, !tbaa !84
  %206 = load float, ptr %9, align 4, !tbaa !84
  %207 = fadd float %205, %206
  store float %207, ptr %9, align 4, !tbaa !84
  %208 = getelementptr inbounds float, ptr %202, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !84
  %210 = load float, ptr %148, align 4, !tbaa !84
  %211 = fadd float %209, %210
  store float %211, ptr %148, align 4, !tbaa !84
  %212 = getelementptr inbounds float, ptr %202, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !84
  %214 = load float, ptr %149, align 4, !tbaa !84
  %215 = fadd float %213, %214
  store float %215, ptr %149, align 4, !tbaa !84
  br label %236

216:                                              ; preds = %188
  %217 = load float, ptr %202, align 4, !tbaa !84
  %218 = load float, ptr %194, align 4, !tbaa !84
  %219 = fadd float %217, %218
  store float %219, ptr %9, align 4, !tbaa !84
  %220 = getelementptr inbounds float, ptr %202, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !84
  %222 = getelementptr inbounds float, ptr %194, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !84
  %224 = fadd float %221, %223
  store float %224, ptr %146, align 4, !tbaa !84
  %225 = getelementptr inbounds float, ptr %202, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !84
  %227 = getelementptr inbounds float, ptr %194, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !84
  %229 = fadd float %226, %228
  store float %229, ptr %147, align 4, !tbaa !84
  br label %236

230:                                              ; preds = %188
  %231 = load float, ptr %194, align 4, !tbaa !84
  store float %231, ptr %9, align 4, !tbaa !84
  %232 = getelementptr inbounds float, ptr %194, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !84
  store float %233, ptr %144, align 4, !tbaa !84
  %234 = getelementptr inbounds float, ptr %194, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !84
  store float %235, ptr %145, align 4, !tbaa !84
  br label %236

236:                                              ; preds = %188, %216, %230, %204
  switch i32 %3, label %268 [
    i32 0, label %237
    i32 1, label %250
    i32 2, label %262
  ]

237:                                              ; preds = %236
  %238 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #14
  %239 = load float, ptr %202, align 4, !tbaa !84
  %240 = load float, ptr %9, align 4, !tbaa !84
  %241 = fsub float %240, %239
  store float %241, ptr %9, align 4, !tbaa !84
  %242 = getelementptr inbounds float, ptr %202, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !84
  %244 = load float, ptr %154, align 4, !tbaa !84
  %245 = fsub float %244, %243
  store float %245, ptr %154, align 4, !tbaa !84
  %246 = getelementptr inbounds float, ptr %202, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !84
  %248 = load float, ptr %155, align 4, !tbaa !84
  %249 = fsub float %248, %247
  store float %249, ptr %155, align 4, !tbaa !84
  call void @mul_v3_m3v3(ptr noundef %194, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  br label %268

250:                                              ; preds = %236
  %251 = load float, ptr %202, align 4, !tbaa !84
  %252 = load float, ptr %9, align 4, !tbaa !84
  %253 = fsub float %252, %251
  store float %253, ptr %9, align 4, !tbaa !84
  %254 = getelementptr inbounds float, ptr %202, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !84
  %256 = load float, ptr %152, align 4, !tbaa !84
  %257 = fsub float %256, %255
  store float %257, ptr %152, align 4, !tbaa !84
  %258 = getelementptr inbounds float, ptr %202, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !84
  %260 = load float, ptr %153, align 4, !tbaa !84
  %261 = fsub float %260, %259
  store float %261, ptr %153, align 4, !tbaa !84
  call void @mul_v3_m3v3(ptr noundef %194, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  br label %268

262:                                              ; preds = %236
  %263 = load float, ptr %9, align 4, !tbaa !84
  store float %263, ptr %194, align 4, !tbaa !84
  %264 = load float, ptr %150, align 4, !tbaa !84
  %265 = getelementptr inbounds float, ptr %194, i64 1
  store float %264, ptr %265, align 4, !tbaa !84
  %266 = load float, ptr %151, align 4, !tbaa !84
  %267 = getelementptr inbounds float, ptr %194, i64 2
  store float %266, ptr %267, align 4, !tbaa !84
  br label %268

268:                                              ; preds = %236, %250, %262, %237
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #14
  %269 = add nuw nsw i64 %189, 1
  %270 = icmp eq i64 %269, %156
  br i1 %270, label %271, label %188, !llvm.loop !198

271:                                              ; preds = %268
  %272 = add nuw nsw i32 %186, 1
  %273 = icmp eq i32 %272, %121
  br i1 %273, label %274, label %185, !llvm.loop !199

274:                                              ; preds = %271, %183
  %275 = add nuw nsw i32 %169, 1
  %276 = add nsw i64 %168, 1
  %277 = icmp eq i32 %275, %161
  br i1 %277, label %278, label %167, !llvm.loop !200

278:                                              ; preds = %274, %157
  %279 = add nuw nsw i64 %158, 1
  %280 = load i32, ptr %134, align 8, !tbaa !197
  %281 = sext i32 %280 to i64
  %282 = icmp slt i64 %279, %281
  br i1 %282, label %157, label %283, !llvm.loop !201

283:                                              ; preds = %278, %118, %36
  %284 = phi ptr [ null, %36 ], [ %81, %118 ], [ %81, %278 ]
  %285 = phi ptr [ null, %36 ], [ %51, %118 ], [ %51, %278 ]
  %286 = icmp eq ptr %284, null
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.DerivedMesh, ptr %284, i64 0, i32 10
  store i32 1, ptr %288, align 4, !tbaa !202
  %289 = getelementptr inbounds %struct.DerivedMesh, ptr %284, i64 0, i32 95
  %290 = load ptr, ptr %289, align 8, !tbaa !78
  call void %290(ptr noundef nonnull %284) #14
  br label %291

291:                                              ; preds = %287, %283
  %292 = icmp eq ptr %285, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct.DerivedMesh, ptr %285, i64 0, i32 10
  store i32 1, ptr %294, align 4, !tbaa !202
  %295 = getelementptr inbounds %struct.DerivedMesh, ptr %285, i64 0, i32 95
  %296 = load ptr, ptr %295, align 8, !tbaa !78
  call void %296(ptr noundef nonnull %285) #14
  br label %297

297:                                              ; preds = %291, %293, %30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @grid_tangent_matrix(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #7 {
  tail call fastcc void @grid_tangent(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4, ptr noundef %0)
  %6 = load float, ptr %0, align 4, !tbaa !84
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !84
  %9 = fmul float %8, %8
  %10 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !84
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %10)
  %14 = fcmp ogt float %13, 0x38AA95A5C0000000
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = tail call float @sqrtf(float noundef %13) #14
  %17 = fdiv float 1.000000e+00, %16
  %18 = load float, ptr %0, align 4, !tbaa !84
  %19 = fmul float %18, %17
  store float %19, ptr %0, align 4, !tbaa !84
  %20 = load float, ptr %7, align 4, !tbaa !84
  %21 = fmul float %17, %20
  store float %21, ptr %7, align 4, !tbaa !84
  %22 = load float, ptr %11, align 4, !tbaa !84
  %23 = fmul float %17, %22
  br label %25

24:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !84
  store float 0.000000e+00, ptr %7, align 4, !tbaa !84
  br label %25

25:                                               ; preds = %15, %24
  %26 = phi float [ 0.000000e+00, %24 ], [ %23, %15 ]
  store float %26, ptr %11, align 4, !tbaa !84
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call fastcc void @grid_tangent(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4, ptr noundef nonnull %27)
  %28 = load float, ptr %27, align 4, !tbaa !84
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !84
  %31 = fmul float %30, %30
  %32 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %31)
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !84
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %32)
  %36 = fcmp ogt float %35, 0x38AA95A5C0000000
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = tail call float @sqrtf(float noundef %35) #14
  %39 = fdiv float 1.000000e+00, %38
  %40 = load float, ptr %27, align 4, !tbaa !84
  %41 = fmul float %40, %39
  store float %41, ptr %27, align 4, !tbaa !84
  %42 = load float, ptr %29, align 4, !tbaa !84
  %43 = fmul float %39, %42
  store float %43, ptr %29, align 4, !tbaa !84
  %44 = load float, ptr %33, align 4, !tbaa !84
  %45 = fmul float %39, %44
  br label %47

46:                                               ; preds = %25
  store float 0.000000e+00, ptr %27, align 4, !tbaa !84
  store float 0.000000e+00, ptr %29, align 4, !tbaa !84
  br label %47

47:                                               ; preds = %37, %46
  %48 = phi float [ 0.000000e+00, %46 ], [ %45, %37 ]
  store float %48, ptr %33, align 4, !tbaa !84
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %50 = getelementptr inbounds %struct.CCGKey, ptr %1, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !161
  %52 = mul nsw i32 %51, %3
  %53 = add nsw i32 %52, %2
  %54 = getelementptr inbounds %struct.CCGKey, ptr %1, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !162
  %56 = mul nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %4, i64 %57
  %59 = getelementptr inbounds %struct.CCGKey, ptr %1, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !203
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !84
  store float %63, ptr %49, align 4, !tbaa !84
  %64 = getelementptr inbounds float, ptr %62, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !84
  %66 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %65, ptr %66, align 4, !tbaa !84
  %67 = getelementptr inbounds float, ptr %62, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !84
  %69 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %68, ptr %69, align 4, !tbaa !84
  ret void
}

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multires_stitch_grids(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %10 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %7, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !204
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %11, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  %14 = load i32, ptr %3, align 4, !tbaa !114
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = load ptr, ptr %2, align 8, !tbaa !57
  %20 = call i32 @ccgSubSurf_stitchFaces(ptr noundef %18, i32 noundef 0, ptr noundef %19, i32 noundef %14) #14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %22 = load ptr, ptr %2, align 8, !tbaa !57
  call void %21(ptr noundef %22) #14
  br label %23

23:                                               ; preds = %13, %16, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %24

24:                                               ; preds = %23, %5, %1
  ret void
}

declare void @BKE_pbvh_get_grid_updates(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_stitchFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @multires_make_derived_from_derived(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.SubsurfModifierData, align 8
  %6 = alloca %struct.CCGKey, align 4
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  %9 = trunc i32 %3 to i8
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22
  %18 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 3
  %19 = load i8, ptr %18, align 2, !tbaa !67
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %17, i32 noundef %20) #14
  br label %55

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 3
  %24 = load i8, ptr %23, align 2, !tbaa !67
  %25 = zext i8 %24 to i32
  br label %55

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 2
  %32 = load i8, ptr %31, align 1, !tbaa !66
  %33 = zext i8 %32 to i32
  br label %55

34:                                               ; preds = %26
  %35 = and i8 %9, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %39 = load i8, ptr %38, align 8, !tbaa !65
  %40 = zext i8 %39 to i32
  br label %55

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !205
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Scene, ptr %43, i64 0, i32 22
  %47 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %48 = load i8, ptr %47, align 8, !tbaa !65
  %49 = zext i8 %48 to i32
  %50 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %46, i32 noundef %49) #14
  br label %55

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %53 = load i8, ptr %52, align 8, !tbaa !65
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %16, %22, %30, %37, %45, %51
  %56 = phi i32 [ %33, %30 ], [ %40, %37 ], [ %21, %16 ], [ %25, %22 ], [ %50, %45 ], [ %54, %51 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %229, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 5
  %60 = load i8, ptr %59, align 4, !tbaa !130
  %61 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 6
  %62 = load i8, ptr %61, align 1, !tbaa !148
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 1
  %65 = and i32 %63, 2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i64 136, i1 false)
  %66 = trunc i32 %56 to i16
  %67 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 3
  store i16 %66, ptr %67, align 4, !tbaa !149
  %68 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 2
  store i16 %66, ptr %68, align 2, !tbaa !151
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 4
  %72 = load i16, ptr %71, align 2, !tbaa !152
  %73 = or i16 %72, 8
  store i16 %73, ptr %71, align 2, !tbaa !152
  br label %74

74:                                               ; preds = %70, %58
  %75 = icmp eq i8 %60, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 1
  store i16 1, ptr %77, align 8, !tbaa !173
  br label %78

78:                                               ; preds = %76, %74
  %79 = icmp eq i32 %64, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.SubsurfModifierData, ptr %5, i64 0, i32 4
  %82 = load i16, ptr %81, align 2, !tbaa !152
  %83 = or i16 %82, 4
  store i16 %83, ptr %81, align 2, !tbaa !152
  br label %84

84:                                               ; preds = %78, %80
  %85 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %86 = load i32, ptr %85, align 8, !tbaa !61
  %87 = shl i32 %86, 3
  %88 = and i32 %87, 8
  %89 = shl i32 %3, 2
  %90 = and i32 %89, 16
  %91 = or disjoint i32 %88, %90
  %92 = call ptr @subsurf_make_derived_from_derived(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, i32 noundef %91) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  %93 = and i32 %3, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %92, i64 0, i32 20
  %97 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %92, i64 0, i32 20, i32 5
  store ptr %2, ptr %97, align 8, !tbaa !182
  store ptr %1, ptr %96, align 8, !tbaa !183
  %98 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %92, i64 0, i32 20, i32 1
  store i32 0, ptr %98, align 8, !tbaa !206
  %99 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %92, i64 0, i32 20, i32 2
  store i32 %56, ptr %99, align 4, !tbaa !184
  %100 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 4
  %101 = load i8, ptr %100, align 1, !tbaa !59
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %92, i64 0, i32 20, i32 3
  store i32 %102, ptr %103, align 8, !tbaa !185
  %104 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %92, i64 0, i32 20, i32 6
  store i32 0, ptr %104, align 8, !tbaa !69
  br label %105

105:                                              ; preds = %95, %84
  %106 = phi ptr [ null, %84 ], [ %92, %95 ]
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 63
  %108 = load ptr, ptr %107, align 8, !tbaa !174
  %109 = call i32 %108(ptr noundef %92) #14
  %110 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 64
  %111 = load ptr, ptr %110, align 8, !tbaa !154
  %112 = call i32 %111(ptr noundef %92) #14
  %113 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 65
  %114 = load ptr, ptr %113, align 8, !tbaa !153
  %115 = call ptr %114(ptr noundef %92) #14
  %116 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 68
  %117 = load ptr, ptr %116, align 8, !tbaa !80
  call void %117(ptr noundef %92, ptr noundef nonnull %6) #14
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %119 = sext i32 %109 to i64
  %120 = shl nsw i64 %119, 3
  %121 = call ptr %118(i64 noundef %120, ptr noundef nonnull @.str.4) #14
  %122 = icmp sgt i32 %109, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %105
  %124 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %125 = mul i32 %112, %112
  %126 = mul i32 %112, %112
  %127 = zext nneg i32 %109 to i64
  br label %128

128:                                              ; preds = %123, %128
  %129 = phi i64 [ 0, %123 ], [ %141, %128 ]
  %130 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %131 = load i32, ptr %124, align 4, !tbaa !162
  %132 = mul i32 %125, %131
  %133 = sext i32 %132 to i64
  %134 = call ptr %130(i64 noundef %133, ptr noundef nonnull @.str.6) #14
  %135 = getelementptr inbounds ptr, ptr %121, i64 %129
  store ptr %134, ptr %135, align 8, !tbaa !57
  %136 = getelementptr inbounds ptr, ptr %115, i64 %129
  %137 = load ptr, ptr %136, align 8, !tbaa !57
  %138 = load i32, ptr %124, align 4, !tbaa !162
  %139 = mul i32 %126, %138
  %140 = sext i32 %139 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %134, ptr align 1 %137, i64 %140, i1 false)
  %141 = add nuw nsw i64 %129, 1
  %142 = icmp eq i64 %141, %127
  br i1 %142, label %143, label %128, !llvm.loop !207

143:                                              ; preds = %128, %105
  %144 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 4
  %145 = load i8, ptr %144, align 1, !tbaa !59
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 25
  %148 = call ptr @CustomData_get_layer(ptr noundef nonnull %147, i32 noundef 19) #14
  %149 = icmp eq ptr %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 31
  %152 = load i32, ptr %151, align 4, !tbaa !47
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = zext i8 %145 to i64
  %156 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !114
  br label %158

158:                                              ; preds = %154, %158
  %159 = phi i32 [ 0, %154 ], [ %162, %158 ]
  %160 = phi ptr [ %148, %154 ], [ %163, %158 ]
  store i32 %157, ptr %160, align 8, !tbaa !110
  %161 = getelementptr inbounds %struct.MDisps, ptr %160, i64 0, i32 1
  store i32 %146, ptr %161, align 4, !tbaa !115
  %162 = add nuw nsw i32 %159, 1
  %163 = getelementptr inbounds %struct.MDisps, ptr %160, i64 1
  %164 = icmp eq i32 %162, %152
  br i1 %164, label %165, label %158, !llvm.loop !116

165:                                              ; preds = %158, %150, %143
  %166 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 31
  %167 = load i32, ptr %166, align 4, !tbaa !47
  call void @CustomData_external_read(ptr noundef nonnull %147, ptr noundef %8, i64 noundef 524288, i32 noundef %167) #14
  %168 = load ptr, ptr %7, align 8, !tbaa !104
  %169 = load i8, ptr %144, align 1, !tbaa !59
  %170 = zext i8 %169 to i32
  call fastcc void @multiresModifier_disp_run(ptr noundef %92, ptr noundef %168, ptr noundef %0, i32 noundef 0, ptr noundef %121, i32 noundef %170)
  %171 = icmp eq ptr %106, null
  br i1 %171, label %216, label %172

172:                                              ; preds = %165
  %173 = call ptr @CustomData_get_layer(ptr noundef nonnull %147, i32 noundef 19) #14
  %174 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %106, i64 0, i32 19
  %175 = load ptr, ptr %174, align 8, !tbaa !190
  %176 = getelementptr inbounds %struct.DerivedMesh, ptr %106, i64 0, i32 67
  %177 = load ptr, ptr %176, align 8, !tbaa !208
  %178 = call ptr %177(ptr noundef nonnull %106) #14
  %179 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %180 = load i32, ptr %179, align 8, !tbaa !105
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 7
  br label %184

184:                                              ; preds = %182, %211
  %185 = phi i64 [ 0, %182 ], [ %212, %211 ]
  %186 = load ptr, ptr %183, align 8, !tbaa !106
  %187 = getelementptr inbounds %struct.MPoly, ptr %186, i64 %185, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !107
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %184
  %191 = getelementptr inbounds i32, ptr %178, i64 %185
  br label %192

192:                                              ; preds = %190, %205
  %193 = phi i32 [ 0, %190 ], [ %206, %205 ]
  %194 = load i32, ptr %191, align 4, !tbaa !114
  %195 = add nsw i32 %194, %193
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.MDisps, ptr %173, i64 %196, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !122
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.MDisps, ptr %173, i64 %196, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !115
  %203 = call fastcc ptr @multires_mdisps_downsample_hidden(ptr noundef nonnull %198, i32 noundef %202, i32 noundef %56)
  %204 = getelementptr inbounds ptr, ptr %175, i64 %196
  store ptr %203, ptr %204, align 8, !tbaa !57
  br label %205

205:                                              ; preds = %200, %192
  %206 = add nuw nsw i32 %193, 1
  %207 = load ptr, ptr %183, align 8, !tbaa !106
  %208 = getelementptr inbounds %struct.MPoly, ptr %207, i64 %185, i32 1
  %209 = load i32, ptr %208, align 4, !tbaa !107
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %192, label %211, !llvm.loop !209

211:                                              ; preds = %205, %184
  %212 = add nuw nsw i64 %185, 1
  %213 = load i32, ptr %179, align 8, !tbaa !105
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %212, %214
  br i1 %215, label %184, label %216, !llvm.loop !210

216:                                              ; preds = %211, %172, %165
  %217 = icmp sgt i32 %109, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %216
  %219 = zext nneg i32 %109 to i64
  br label %220

220:                                              ; preds = %218, %220
  %221 = phi i64 [ 0, %218 ], [ %225, %220 ]
  %222 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %223 = getelementptr inbounds ptr, ptr %121, i64 %221
  %224 = load ptr, ptr %223, align 8, !tbaa !57
  call void %222(ptr noundef %224) #14
  %225 = add nuw nsw i64 %221, 1
  %226 = icmp eq i64 %225, %219
  br i1 %226, label %227, label %220, !llvm.loop !211

227:                                              ; preds = %220, %216
  %228 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %228(ptr noundef %121) #14
  br label %229

229:                                              ; preds = %55, %227
  %230 = phi ptr [ %92, %227 ], [ %0, %55 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  ret ptr %230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @old_mdisps_bilinear(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = add nsw i32 %2, -1
  %7 = icmp eq ptr %1, null
  %8 = fcmp uno float %4, %3
  %9 = or i1 %7, %8
  br i1 %9, label %106, label %10

10:                                               ; preds = %5
  %11 = fcmp olt float %3, 0.000000e+00
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = sitofp i32 %2 to float
  %14 = fcmp ugt float %13, %3
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = sitofp i32 %6 to float
  br label %17

17:                                               ; preds = %10, %12, %15
  %18 = phi float [ %16, %15 ], [ %3, %12 ], [ 0.000000e+00, %10 ]
  %19 = fcmp olt float %4, 0.000000e+00
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = sitofp i32 %2 to float
  %22 = fcmp ugt float %21, %4
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = sitofp i32 %6 to float
  br label %25

25:                                               ; preds = %17, %20, %23
  %26 = phi float [ %24, %23 ], [ %4, %20 ], [ 0.000000e+00, %17 ]
  %27 = tail call float @llvm.floor.f32(float %18)
  %28 = fptosi float %27 to i32
  %29 = tail call float @llvm.floor.f32(float %26)
  %30 = fptosi float %29 to i32
  %31 = add nsw i32 %28, 1
  %32 = add nsw i32 %30, 1
  %33 = icmp slt i32 %31, %2
  %34 = select i1 %33, i32 %31, i32 %6
  %35 = icmp slt i32 %32, %2
  %36 = select i1 %35, i32 %32, i32 %6
  %37 = sitofp i32 %28 to float
  %38 = fsub float %18, %37
  %39 = sitofp i32 %30 to float
  %40 = fsub float %26, %39
  %41 = fsub float 1.000000e+00, %38
  %42 = mul nsw i32 %30, %2
  %43 = add nsw i32 %42, %28
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x float], ptr %1, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !84
  %47 = fmul float %41, %46
  %48 = getelementptr inbounds float, ptr %45, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !84
  %50 = fmul float %41, %49
  %51 = getelementptr inbounds float, ptr %45, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !84
  %53 = fmul float %41, %52
  %54 = add nsw i32 %42, %34
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x float], ptr %1, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !84
  %58 = fmul float %38, %57
  %59 = getelementptr inbounds float, ptr %56, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !84
  %61 = fmul float %38, %60
  %62 = getelementptr inbounds float, ptr %56, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !84
  %64 = fmul float %38, %63
  %65 = mul nsw i32 %36, %2
  %66 = add nsw i32 %65, %28
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x float], ptr %1, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !84
  %70 = fmul float %41, %69
  %71 = getelementptr inbounds float, ptr %68, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !84
  %73 = fmul float %41, %72
  %74 = getelementptr inbounds float, ptr %68, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !84
  %76 = fmul float %41, %75
  %77 = add nsw i32 %65, %34
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x float], ptr %1, i64 %78
  %80 = load float, ptr %79, align 4, !tbaa !84
  %81 = fmul float %38, %80
  %82 = getelementptr inbounds float, ptr %79, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !84
  %84 = fmul float %38, %83
  %85 = getelementptr inbounds float, ptr %79, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !84
  %87 = fmul float %38, %86
  %88 = fadd float %47, %58
  %89 = fadd float %50, %61
  %90 = fadd float %53, %64
  %91 = fadd float %70, %81
  %92 = fadd float %73, %84
  %93 = fadd float %76, %87
  %94 = fsub float 1.000000e+00, %40
  %95 = fmul float %94, %88
  %96 = fmul float %94, %89
  %97 = fmul float %94, %90
  %98 = fmul float %40, %91
  %99 = fmul float %40, %92
  %100 = fmul float %40, %93
  %101 = fadd float %95, %98
  store float %101, ptr %0, align 4, !tbaa !84
  %102 = fadd float %96, %99
  %103 = getelementptr inbounds float, ptr %0, i64 1
  store float %102, ptr %103, align 4, !tbaa !84
  %104 = fadd float %97, %100
  %105 = getelementptr inbounds float, ptr %0, i64 2
  store float %104, ptr %105, align 4, !tbaa !84
  br label %106

106:                                              ; preds = %5, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @multires_load_old_250(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 19) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %161, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !212
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %126

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  br label %11

11:                                               ; preds = %9, %121
  %12 = phi i64 [ 0, %9 ], [ %122, %121 ]
  %13 = getelementptr inbounds %struct.MDisps, ptr %3, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !110
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %121, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %10, align 8, !tbaa !213
  %18 = sitofp i32 %14 to double
  %19 = tail call double @sqrt(double noundef %18) #14
  %20 = fadd double %19, -1.000000e+00
  %21 = tail call double @log(double noundef %20) #14
  %22 = fdiv double %21, 0x3FE62E42FEFA39EF
  %23 = fptosi double %22 to i32
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !114
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !114
  %31 = getelementptr inbounds %struct.MFace, ptr %17, i64 %12, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !214
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 3, i32 4
  %35 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %28
  %36 = load i32, ptr %35, align 4, !tbaa !114
  %37 = mul nsw i32 %34, %36
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %39 = sext i32 %37 to i64
  %40 = mul nsw i64 %39, 12
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.10) #14
  %42 = icmp eq i32 %23, 0
  %43 = sitofp i32 %27 to float
  %44 = tail call float @llvm.fmuladd.f32(float %43, float 5.000000e-01, float -5.000000e-01)
  %45 = getelementptr inbounds %struct.MDisps, ptr %3, i64 %12, i32 2
  %46 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %47

47:                                               ; preds = %16, %110
  %48 = phi ptr [ %41, %16 ], [ %113, %110 ]
  %49 = phi i32 [ 0, %16 ], [ %114, %110 ]
  %50 = phi float [ 0.000000e+00, %16 ], [ %112, %110 ]
  %51 = phi float [ 0.000000e+00, %16 ], [ %111, %110 ]
  br i1 %42, label %110, label %52

52:                                               ; preds = %47, %107
  %53 = phi i32 [ %108, %107 ], [ 0, %47 ]
  %54 = phi ptr [ %105, %107 ], [ %48, %47 ]
  %55 = phi float [ %84, %107 ], [ %50, %47 ]
  %56 = phi float [ %83, %107 ], [ %51, %47 ]
  %57 = sitofp i32 %53 to float
  %58 = fsub float %44, %57
  %59 = sitofp i32 %53 to float
  %60 = fadd float %44, %59
  %61 = sitofp i32 %53 to float
  %62 = fadd float %44, %61
  %63 = sitofp i32 %53 to float
  %64 = fsub float %44, %63
  br label %65

65:                                               ; preds = %52, %103
  %66 = phi i32 [ 0, %52 ], [ %104, %103 ]
  %67 = phi ptr [ %54, %52 ], [ %105, %103 ]
  %68 = phi float [ %55, %52 ], [ %84, %103 ]
  %69 = phi float [ %56, %52 ], [ %83, %103 ]
  switch i32 %49, label %82 [
    i32 1, label %70
    i32 2, label %73
    i32 3, label %76
    i32 0, label %79
  ]

70:                                               ; preds = %65
  %71 = sitofp i32 %66 to float
  %72 = fadd float %44, %71
  br label %82

73:                                               ; preds = %65
  %74 = sitofp i32 %66 to float
  %75 = fadd float %44, %74
  br label %82

76:                                               ; preds = %65
  %77 = sitofp i32 %66 to float
  %78 = fsub float %44, %77
  br label %82

79:                                               ; preds = %65
  %80 = sitofp i32 %66 to float
  %81 = fsub float %44, %80
  br label %82

82:                                               ; preds = %79, %76, %73, %70, %65
  %83 = phi float [ %69, %65 ], [ %58, %79 ], [ %78, %76 ], [ %62, %73 ], [ %72, %70 ]
  %84 = phi float [ %68, %65 ], [ %81, %79 ], [ %60, %76 ], [ %75, %73 ], [ %64, %70 ]
  %85 = load ptr, ptr %45, align 8, !tbaa !117
  tail call void @old_mdisps_bilinear(ptr noundef %67, ptr noundef %85, i32 noundef %27, float noundef %83, float noundef %84)
  switch i32 %49, label %103 [
    i32 1, label %86
    i32 2, label %90
    i32 3, label %94
    i32 0, label %97
  ]

86:                                               ; preds = %82
  %87 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !84
  %89 = fneg float %88
  store float %89, ptr %87, align 4, !tbaa !84
  br label %103

90:                                               ; preds = %82
  %91 = load float, ptr %67, align 4, !tbaa !84
  %92 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !84
  store float %93, ptr %67, align 4, !tbaa !84
  store float %91, ptr %92, align 4, !tbaa !84
  br label %103

94:                                               ; preds = %82
  %95 = load float, ptr %67, align 4, !tbaa !84
  %96 = fneg float %95
  store float %96, ptr %67, align 4, !tbaa !84
  br label %103

97:                                               ; preds = %82
  %98 = load float, ptr %67, align 4, !tbaa !84
  %99 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !84
  store float %100, ptr %67, align 4, !tbaa !84
  store float %98, ptr %99, align 4, !tbaa !84
  %101 = fneg float %100
  store float %101, ptr %67, align 4, !tbaa !84
  %102 = fneg float %98
  store float %102, ptr %99, align 4, !tbaa !84
  br label %103

103:                                              ; preds = %97, %94, %90, %86, %82
  %104 = add nuw nsw i32 %66, 1
  %105 = getelementptr inbounds [3 x float], ptr %67, i64 1
  %106 = icmp eq i32 %104, %46
  br i1 %106, label %107, label %65, !llvm.loop !216

107:                                              ; preds = %103
  %108 = add nuw nsw i32 %53, 1
  %109 = icmp eq i32 %108, %46
  br i1 %109, label %110, label %52, !llvm.loop !217

110:                                              ; preds = %107, %47
  %111 = phi float [ %51, %47 ], [ %83, %107 ]
  %112 = phi float [ %50, %47 ], [ %84, %107 ]
  %113 = phi ptr [ %48, %47 ], [ %105, %107 ]
  %114 = add nuw nsw i32 %49, 1
  %115 = icmp eq i32 %114, %34
  br i1 %115, label %116, label %47, !llvm.loop !218

116:                                              ; preds = %110
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %118 = getelementptr inbounds %struct.MDisps, ptr %3, i64 %12, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !117
  tail call void %117(ptr noundef %119) #14
  store i32 %37, ptr %13, align 8, !tbaa !110
  %120 = getelementptr inbounds %struct.MDisps, ptr %3, i64 %12, i32 1
  store i32 %23, ptr %120, align 4, !tbaa !115
  store ptr %41, ptr %118, align 8, !tbaa !117
  br label %121

121:                                              ; preds = %11, %116
  %122 = add nuw nsw i64 %12, 1
  %123 = load i32, ptr %6, align 8, !tbaa !212
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %122, %124
  br i1 %125, label %11, label %126, !llvm.loop !219

126:                                              ; preds = %121, %5
  %127 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %128 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %129 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %130 = load i32, ptr %129, align 4, !tbaa !47
  %131 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %128, i32 noundef 19, i32 noundef 1, ptr noundef null, i32 noundef %130) #14
  %132 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %128, i32 noundef 19) #14
  %133 = load i32, ptr %127, align 8, !tbaa !212
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %137 = load ptr, ptr %136, align 8, !tbaa !213
  %138 = getelementptr inbounds %struct.MFace, ptr %137, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !214
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 3, i32 4
  %142 = load i32, ptr %3, align 8, !tbaa !110
  %143 = sdiv i32 %142, %141
  %144 = sext i32 %143 to i64
  %145 = mul nsw i64 %144, 12
  %146 = getelementptr inbounds %struct.MDisps, ptr %3, i64 0, i32 1
  %147 = getelementptr inbounds %struct.MDisps, ptr %3, i64 0, i32 2
  %148 = sext i32 %143 to i64
  br label %149

149:                                              ; preds = %149, %135
  %150 = phi i64 [ %160, %149 ], [ 0, %135 ]
  %151 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %152 = tail call ptr %151(i64 noundef %145, ptr noundef nonnull @.str.8) #14
  %153 = getelementptr inbounds %struct.MDisps, ptr %132, i64 %150
  %154 = getelementptr inbounds %struct.MDisps, ptr %132, i64 %150, i32 2
  store ptr %152, ptr %154, align 8, !tbaa !117
  store i32 %143, ptr %153, align 8, !tbaa !110
  %155 = load i32, ptr %146, align 4, !tbaa !115
  %156 = getelementptr inbounds %struct.MDisps, ptr %132, i64 %150, i32 1
  store i32 %155, ptr %156, align 4, !tbaa !115
  %157 = load ptr, ptr %147, align 8, !tbaa !117
  %158 = mul nsw i64 %150, %148
  %159 = getelementptr inbounds [3 x float], ptr %157, i64 %158
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %152, ptr align 4 %159, i64 %144, i1 false)
  %160 = add nuw i64 %150, 1
  br label %149, !llvm.loop !220

161:                                              ; preds = %126, %1
  ret void
}

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multires_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !221
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.MultiresLevel, ptr %4, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !223
  tail call void @CustomData_free(ptr noundef nonnull %7, i32 noundef %9) #14
  %10 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 11
  %11 = getelementptr inbounds %struct.MultiresLevel, ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !225
  tail call void @CustomData_free(ptr noundef nonnull %10, i32 noundef %12) #14
  %13 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %14) #14
  br label %18

18:                                               ; preds = %16, %6
  %19 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !227
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %23(ptr noundef nonnull %20) #14
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %44
  %26 = phi ptr [ %45, %44 ], [ %4, %24 ]
  %27 = getelementptr inbounds %struct.MultiresLevel, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !228
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %31(ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %30, %25
  %33 = getelementptr inbounds %struct.MultiresLevel, ptr %26, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !229
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %37(ptr noundef nonnull %34) #14
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.MultiresLevel, ptr %26, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !230
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %43(ptr noundef nonnull %40) #14
  br label %44

44:                                               ; preds = %38, %42
  %45 = load ptr, ptr %26, align 8, !tbaa !231
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %25, !llvm.loop !232

47:                                               ; preds = %44, %3
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !233
  tail call void %48(ptr noundef %50) #14
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #14
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %51(ptr noundef nonnull %0) #14
  br label %52

52:                                               ; preds = %47, %1
  ret void
}

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multires_load_old(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 48
  %4 = load ptr, ptr %3, align 8, !tbaa !234
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %7 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !223
  tail call void @CustomData_free_layers(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %8) #14
  %9 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %10 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !235
  tail call void @CustomData_free_layers(ptr noundef nonnull %9, i32 noundef 3, i32 noundef %11) #14
  %12 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %13 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !225
  tail call void @CustomData_free_layers(ptr noundef nonnull %12, i32 noundef 4, i32 noundef %14) #14
  %15 = load i32, ptr %7, align 8, !tbaa !223
  %16 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  store i32 %15, ptr %16, align 8, !tbaa !131
  %17 = load i32, ptr %10, align 8, !tbaa !235
  %18 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  store i32 %17, ptr %18, align 4, !tbaa !236
  %19 = load i32, ptr %13, align 4, !tbaa !225
  %20 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  store i32 %19, ptr %20, align 8, !tbaa !212
  %21 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %15) #14
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  store ptr %21, ptr %22, align 8, !tbaa !133
  %23 = load i32, ptr %18, align 4, !tbaa !236
  %24 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %23) #14
  %25 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 16
  store ptr %24, ptr %25, align 8, !tbaa !237
  %26 = load i32, ptr %20, align 8, !tbaa !212
  %27 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %12, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %26) #14
  %28 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 12
  store ptr %27, ptr %28, align 8, !tbaa !213
  %29 = load ptr, ptr %22, align 8, !tbaa !133
  %30 = load ptr, ptr %3, align 8, !tbaa !234
  %31 = getelementptr inbounds %struct.Multires, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !233
  %33 = load i32, ptr %16, align 8, !tbaa !131
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %32, i64 %35, i1 false)
  %36 = load i32, ptr %18, align 4, !tbaa !236
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !229
  %41 = load ptr, ptr %25, align 8, !tbaa !237
  %42 = zext nneg i32 %36 to i64
  br label %51

43:                                               ; preds = %51, %2
  %44 = load i32, ptr %20, align 8, !tbaa !212
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !228
  %49 = load ptr, ptr %28, align 8, !tbaa !213
  %50 = zext nneg i32 %44 to i64
  br label %61

51:                                               ; preds = %38, %51
  %52 = phi i64 [ 0, %38 ], [ %59, %51 ]
  %53 = getelementptr inbounds %struct.MultiresEdge, ptr %40, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !114
  %55 = getelementptr inbounds %struct.MEdge, ptr %41, i64 %52
  store i32 %54, ptr %55, align 4, !tbaa !238
  %56 = getelementptr inbounds %struct.MultiresEdge, ptr %40, i64 %52, i32 0, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !114
  %58 = getelementptr inbounds %struct.MEdge, ptr %41, i64 %52, i32 1
  store i32 %57, ptr %58, align 4, !tbaa !240
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %42
  br i1 %60, label %43, label %51, !llvm.loop !241

61:                                               ; preds = %46, %61
  %62 = phi i64 [ 0, %46 ], [ %79, %61 ]
  %63 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !114
  %65 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62
  store i32 %64, ptr %65, align 4, !tbaa !242
  %66 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 0, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !114
  %68 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 1
  store i32 %67, ptr %68, align 4, !tbaa !243
  %69 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 0, i64 2
  %70 = load i32, ptr %69, align 4, !tbaa !114
  %71 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 2
  store i32 %70, ptr %71, align 4, !tbaa !244
  %72 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 0, i64 3
  %73 = load i32, ptr %72, align 4, !tbaa !114
  %74 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 3
  store i32 %73, ptr %74, align 4, !tbaa !214
  %75 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !245
  %77 = zext i8 %76 to i16
  %78 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 4
  store i16 %77, ptr %78, align 4, !tbaa !247
  %79 = add nuw nsw i64 %62, 1
  %80 = icmp eq i64 %79, %50
  br i1 %80, label %81, label %61, !llvm.loop !248

81:                                               ; preds = %61, %43
  %82 = load ptr, ptr %3, align 8, !tbaa !234
  %83 = getelementptr inbounds %struct.Multires, ptr %82, i64 0, i32 10, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !249
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.Multires, ptr %82, i64 0, i32 10
  %88 = load ptr, ptr %87, align 8, !tbaa !250
  br label %89

89:                                               ; preds = %86, %89
  %90 = phi i32 [ %97, %89 ], [ 0, %86 ]
  %91 = phi ptr [ %98, %89 ], [ %88, %86 ]
  %92 = load i32, ptr %91, align 8, !tbaa !251
  %93 = getelementptr inbounds %struct.CustomDataLayer, ptr %91, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !253
  %95 = load i32, ptr %16, align 8, !tbaa !131
  %96 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef %92, i32 noundef 3, ptr noundef %94, i32 noundef %95) #14
  %97 = add nuw nsw i32 %90, 1
  %98 = getelementptr inbounds %struct.CustomDataLayer, ptr %91, i64 1
  %99 = load ptr, ptr %3, align 8, !tbaa !234
  %100 = getelementptr inbounds %struct.Multires, ptr %99, i64 0, i32 10, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !249
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %89, label %103, !llvm.loop !254

103:                                              ; preds = %89, %81
  %104 = phi ptr [ %82, %81 ], [ %99, %89 ]
  %105 = load ptr, ptr %3, align 8, !tbaa !234
  %106 = getelementptr inbounds %struct.Multires, ptr %105, i64 0, i32 11, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !255
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.Multires, ptr %104, i64 0, i32 11
  %111 = load ptr, ptr %110, align 8, !tbaa !256
  br label %112

112:                                              ; preds = %109, %112
  %113 = phi i32 [ %120, %112 ], [ 0, %109 ]
  %114 = phi ptr [ %121, %112 ], [ %111, %109 ]
  %115 = load i32, ptr %114, align 8, !tbaa !251
  %116 = getelementptr inbounds %struct.CustomDataLayer, ptr %114, i64 0, i32 9
  %117 = load ptr, ptr %116, align 8, !tbaa !253
  %118 = load i32, ptr %20, align 8, !tbaa !212
  %119 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %12, i32 noundef %115, i32 noundef 3, ptr noundef %117, i32 noundef %118) #14
  %120 = add nuw nsw i32 %113, 1
  %121 = getelementptr inbounds %struct.CustomDataLayer, ptr %114, i64 1
  %122 = load ptr, ptr %3, align 8, !tbaa !234
  %123 = getelementptr inbounds %struct.Multires, ptr %122, i64 0, i32 11, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !255
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %112, label %126, !llvm.loop !257

126:                                              ; preds = %112, %103
  %127 = phi ptr [ %105, %103 ], [ %122, %112 ]
  %128 = getelementptr inbounds %struct.Multires, ptr %127, i64 0, i32 10
  tail call void @CustomData_reset(ptr noundef nonnull %128) #14
  %129 = load ptr, ptr %3, align 8, !tbaa !234
  %130 = getelementptr inbounds %struct.Multires, ptr %129, i64 0, i32 11
  tail call void @CustomData_reset(ptr noundef nonnull %130) #14
  %131 = load ptr, ptr %3, align 8, !tbaa !234
  %132 = load ptr, ptr %131, align 8, !tbaa !221
  %133 = icmp eq ptr %132, null
  br i1 %133, label %174, label %134

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.MultiresLevel, ptr %132, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !230
  %137 = icmp eq ptr %136, null
  br i1 %137, label %174, label %138

138:                                              ; preds = %134
  %139 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %12, i32 noundef 6) #14
  %140 = icmp eq ptr %139, null
  br i1 %140, label %174, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %20, align 8, !tbaa !212
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %174

144:                                              ; preds = %141
  %145 = zext nneg i32 %142 to i64
  br label %146

146:                                              ; preds = %144, %171
  %147 = phi i64 [ 0, %144 ], [ %172, %171 ]
  %148 = getelementptr inbounds %struct.MultiresColFace, ptr %136, i64 %147
  %149 = shl nsw i64 %147, 2
  br label %150

150:                                              ; preds = %146, %150
  %151 = phi i64 [ 0, %146 ], [ %169, %150 ]
  %152 = getelementptr inbounds [4 x %struct.MultiresCol], ptr %148, i64 0, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !258
  %154 = fptoui float %153 to i8
  %155 = add nuw nsw i64 %151, %149
  %156 = getelementptr inbounds %struct.MCol, ptr %139, i64 %155
  store i8 %154, ptr %156, align 1, !tbaa !260
  %157 = getelementptr inbounds [4 x %struct.MultiresCol], ptr %148, i64 0, i64 %151, i32 1
  %158 = load float, ptr %157, align 4, !tbaa !262
  %159 = fptoui float %158 to i8
  %160 = getelementptr inbounds %struct.MCol, ptr %139, i64 %155, i32 1
  store i8 %159, ptr %160, align 1, !tbaa !263
  %161 = getelementptr inbounds [4 x %struct.MultiresCol], ptr %148, i64 0, i64 %151, i32 2
  %162 = load float, ptr %161, align 4, !tbaa !264
  %163 = fptoui float %162 to i8
  %164 = getelementptr inbounds %struct.MCol, ptr %139, i64 %155, i32 2
  store i8 %163, ptr %164, align 1, !tbaa !265
  %165 = getelementptr inbounds [4 x %struct.MultiresCol], ptr %148, i64 0, i64 %151, i32 3
  %166 = load float, ptr %165, align 4, !tbaa !266
  %167 = fptoui float %166 to i8
  %168 = getelementptr inbounds %struct.MCol, ptr %139, i64 %155, i32 3
  store i8 %167, ptr %168, align 1, !tbaa !267
  %169 = add nuw nsw i64 %151, 1
  %170 = icmp eq i64 %169, 4
  br i1 %170, label %171, label %150, !llvm.loop !268

171:                                              ; preds = %150
  %172 = add nuw nsw i64 %147, 1
  %173 = icmp eq i64 %172, %145
  br i1 %173, label %174, label %146, !llvm.loop !269

174:                                              ; preds = %171, %141, %126, %134, %138
  %175 = load ptr, ptr %3, align 8, !tbaa !234
  %176 = load ptr, ptr %175, align 8, !tbaa !221
  %177 = icmp eq ptr %176, null
  br i1 %177, label %195, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.MultiresLevel, ptr %176, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !228
  %181 = icmp eq ptr %180, null
  br i1 %181, label %195, label %182

182:                                              ; preds = %178
  %183 = load i32, ptr %20, align 8, !tbaa !212
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load ptr, ptr %28, align 8, !tbaa !213
  %187 = zext nneg i32 %183 to i64
  br label %188

188:                                              ; preds = %185, %188
  %189 = phi i64 [ 0, %185 ], [ %193, %188 ]
  %190 = getelementptr inbounds %struct.MultiresFace, ptr %180, i64 %189, i32 2
  %191 = load i8, ptr %190, align 4, !tbaa !270
  %192 = getelementptr inbounds %struct.MFace, ptr %186, i64 %189, i32 6
  store i8 %191, ptr %192, align 1, !tbaa !271
  %193 = add nuw nsw i64 %189, 1
  %194 = icmp eq i64 %193, %187
  br i1 %194, label %195, label %188, !llvm.loop !272

195:                                              ; preds = %188, %182, %174, %178
  tail call void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef %1) #14
  %196 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %197

197:                                              ; preds = %201, %195
  %198 = phi ptr [ %196, %195 ], [ %199, %201 ]
  %199 = load ptr, ptr %198, align 8, !tbaa !57
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.ModifierData, ptr %199, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !48
  %204 = tail call ptr @modifierType_getInfo(i32 noundef %203) #14
  %205 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %204, i64 0, i32 3
  %206 = load i32, ptr %205, align 4, !tbaa !273
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %197, label %208, !llvm.loop !274

208:                                              ; preds = %197, %201
  %209 = tail call ptr @modifier_new(i32 noundef 29) #14
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %196, ptr noundef %199, ptr noundef %209) #14
  %210 = load ptr, ptr %3, align 8, !tbaa !234
  %211 = getelementptr inbounds %struct.Multires, ptr %210, i64 0, i32 2
  %212 = load i8, ptr %211, align 8, !tbaa !275
  %213 = icmp ugt i8 %212, 1
  br i1 %213, label %214, label %228

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.MultiresModifierData, ptr %209, i64 0, i32 4
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi i32 [ 0, %214 ], [ %221, %216 ]
  %218 = load i8, ptr %215, align 1, !tbaa !59
  %219 = zext i8 %218 to i32
  %220 = add nuw nsw i32 %219, 1
  tail call fastcc void @multires_subdivide(ptr noundef %209, ptr noundef %0, i32 noundef %220, i32 noundef 1, i32 noundef 0)
  %221 = add nuw nsw i32 %217, 1
  %222 = load ptr, ptr %3, align 8, !tbaa !234
  %223 = getelementptr inbounds %struct.Multires, ptr %222, i64 0, i32 2
  %224 = load i8, ptr %223, align 8, !tbaa !275
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %225, -1
  %227 = icmp slt i32 %221, %226
  br i1 %227, label %216, label %228, !llvm.loop !276

228:                                              ; preds = %216, %208
  %229 = getelementptr inbounds %struct.MultiresModifierData, ptr %209, i64 0, i32 4
  %230 = load i8, ptr %229, align 1, !tbaa !59
  %231 = getelementptr inbounds %struct.MultiresModifierData, ptr %209, i64 0, i32 1
  store i8 %230, ptr %231, align 8, !tbaa !65
  %232 = tail call ptr @CDDM_from_mesh(ptr noundef %1) #14
  %233 = tail call ptr @multires_make_derived_from_derived(ptr noundef %232, ptr noundef %209, ptr noundef %0, i32 noundef 0)
  %234 = load i8, ptr %229, align 1, !tbaa !59
  %235 = zext i8 %234 to i32
  %236 = add nuw nsw i32 %235, 1
  %237 = load ptr, ptr %3, align 8, !tbaa !234
  %238 = zext i8 %234 to i64
  %239 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !114
  %241 = add nsw i32 %240, -1
  %242 = zext nneg i32 %236 to i64
  %243 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !114
  %245 = add nsw i32 %244, -2
  %246 = getelementptr inbounds %struct.Multires, ptr %237, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !233
  %248 = getelementptr inbounds %struct.DerivedMesh, ptr %233, i64 0, i32 31
  %249 = load ptr, ptr %248, align 8, !tbaa !77
  %250 = tail call ptr %249(ptr noundef %233) #14
  %251 = getelementptr inbounds %struct.DerivedMesh, ptr %233, i64 0, i32 23
  %252 = load ptr, ptr %251, align 8, !tbaa !76
  %253 = tail call i32 %252(ptr noundef %233) #14
  %254 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %255 = zext i32 %253 to i64
  %256 = shl nuw nsw i64 %255, 2
  %257 = tail call ptr %254(i64 noundef %256, ptr noundef nonnull @.str.16) #14
  %258 = load ptr, ptr %237, align 8, !tbaa !221
  %259 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 5
  %260 = load i32, ptr %259, align 8, !tbaa !223
  %261 = sub i32 0, %260
  %262 = icmp eq i32 %260, 0
  br i1 %262, label %274, label %263

263:                                              ; preds = %228, %263
  %264 = phi i32 [ %272, %263 ], [ %261, %228 ]
  %265 = phi i32 [ %270, %263 ], [ 0, %228 ]
  %266 = add i32 %265, %253
  %267 = add i32 %266, %264
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32, ptr %257, i64 %268
  store i32 %265, ptr %269, align 4, !tbaa !114
  %270 = add nuw i32 %265, 1
  %271 = load i32, ptr %259, align 8, !tbaa !223
  %272 = sub i32 0, %271
  %273 = icmp ult i32 %270, %271
  br i1 %273, label %263, label %274, !llvm.loop !277

274:                                              ; preds = %263, %228
  %275 = phi i32 [ 0, %228 ], [ %270, %263 ]
  %276 = phi i32 [ %261, %228 ], [ %272, %263 ]
  %277 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 7
  %278 = load i32, ptr %277, align 8, !tbaa !235
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %289, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.Multires, ptr %237, i64 0, i32 2
  %282 = load i8, ptr %281, align 8, !tbaa !275
  %283 = zext i8 %282 to i64
  %284 = load ptr, ptr %258, align 8, !tbaa !231
  %285 = icmp ult i8 %282, 2
  %286 = add i32 %253, -2
  %287 = add i32 %286, %276
  %288 = zext nneg i32 %236 to i64
  br label %298

289:                                              ; preds = %350, %274
  %290 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 6
  %291 = load i32, ptr %290, align 4, !tbaa !225
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %374, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !228
  %296 = add nsw i32 %240, -2
  %297 = mul i32 %241, %296
  br label %354

298:                                              ; preds = %280, %350
  %299 = phi i32 [ 0, %280 ], [ %351, %350 ]
  br i1 %285, label %350, label %300

300:                                              ; preds = %298
  %301 = sub i32 %299, %278
  %302 = mul i32 %301, %245
  %303 = add i32 %287, %302
  br label %304

304:                                              ; preds = %300, %338
  %305 = phi i64 [ 2, %300 ], [ %347, %338 ]
  %306 = phi ptr [ %284, %300 ], [ %348, %338 ]
  %307 = phi i32 [ %275, %300 ], [ %346, %338 ]
  %308 = add nsw i64 %305, -1
  %309 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !114
  %311 = add i32 %310, -1
  %312 = sub nsw i64 %288, %305
  %313 = add i64 %312, 2
  %314 = and i64 %313, 4294967295
  %315 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !114
  %317 = add nsw i32 %316, -1
  %318 = add i64 %312, 1
  %319 = and i64 %318, 4294967295
  %320 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !114
  %322 = mul i32 %311, %299
  %323 = add i32 %322, %307
  %324 = add i32 %303, %321
  %325 = tail call i32 @llvm.smax.i32(i32 %311, i32 1)
  %326 = zext nneg i32 %325 to i64
  br label %327

327:                                              ; preds = %304, %327
  %328 = phi i64 [ 0, %304 ], [ %336, %327 ]
  %329 = trunc i64 %328 to i32
  %330 = add i32 %323, %329
  %331 = trunc i64 %328 to i32
  %332 = mul i32 %317, %331
  %333 = add i32 %324, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, ptr %257, i64 %334
  store i32 %330, ptr %335, align 4, !tbaa !114
  %336 = add nuw nsw i64 %328, 1
  %337 = icmp eq i64 %336, %326
  br i1 %337, label %338, label %327, !llvm.loop !278

338:                                              ; preds = %327
  %339 = getelementptr inbounds %struct.MultiresLevel, ptr %306, i64 0, i32 5
  %340 = load i32, ptr %339, align 8, !tbaa !223
  %341 = getelementptr inbounds %struct.MultiresLevel, ptr %306, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !279
  %343 = getelementptr inbounds %struct.MultiresLevel, ptr %342, i64 0, i32 5
  %344 = load i32, ptr %343, align 8, !tbaa !223
  %345 = add i32 %340, %307
  %346 = sub i32 %345, %344
  %347 = add nuw nsw i64 %305, 1
  %348 = load ptr, ptr %306, align 8, !tbaa !231
  %349 = icmp eq i64 %305, %283
  br i1 %349, label %350, label %304, !llvm.loop !280

350:                                              ; preds = %338, %298
  %351 = add nuw i32 %299, 1
  %352 = load i32, ptr %277, align 8, !tbaa !235
  %353 = icmp ult i32 %351, %352
  br i1 %353, label %298, label %289, !llvm.loop !281

354:                                              ; preds = %293, %354
  %355 = phi i64 [ 0, %293 ], [ %370, %354 ]
  %356 = phi i32 [ 0, %293 ], [ %369, %354 ]
  %357 = getelementptr inbounds %struct.MultiresFace, ptr %295, i64 %355, i32 0, i64 3
  %358 = load i32, ptr %357, align 4, !tbaa !114
  %359 = icmp eq i32 %358, 0
  %360 = select i1 %359, i32 3, i32 4
  %361 = load i32, ptr %277, align 8, !tbaa !235
  %362 = trunc i64 %355 to i32
  %363 = add i32 %275, %362
  %364 = add i32 %363, %361
  %365 = zext i32 %356 to i64
  %366 = getelementptr inbounds i32, ptr %257, i64 %365
  store i32 %364, ptr %366, align 4, !tbaa !114
  %367 = mul i32 %297, %360
  %368 = add i32 %356, 1
  %369 = add i32 %368, %367
  %370 = add nuw nsw i64 %355, 1
  %371 = load i32, ptr %290, align 4, !tbaa !225
  %372 = zext i32 %371 to i64
  %373 = icmp ult i64 %370, %372
  br i1 %373, label %354, label %374, !llvm.loop !282

374:                                              ; preds = %354, %289
  %375 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 6
  %376 = load ptr, ptr %258, align 8, !tbaa !231
  %377 = icmp eq ptr %376, null
  br i1 %377, label %739, label %378

378:                                              ; preds = %374
  %379 = load ptr, ptr %376, align 8, !tbaa !231
  %380 = icmp eq ptr %379, null
  br i1 %380, label %739, label %381

381:                                              ; preds = %378
  %382 = add nsw i32 %240, -2
  %383 = load i32, ptr %375, align 4, !tbaa !225
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %484, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 2
  %387 = getelementptr inbounds %struct.Multires, ptr %237, i64 0, i32 2
  %388 = mul i32 %241, %382
  %389 = zext nneg i32 %236 to i64
  br label %390

390:                                              ; preds = %385, %472
  %391 = phi i64 [ 0, %385 ], [ %480, %472 ]
  %392 = phi i32 [ 0, %385 ], [ %474, %472 ]
  %393 = phi i32 [ 0, %385 ], [ %479, %472 ]
  %394 = phi i32 [ 0, %385 ], [ %476, %472 ]
  %395 = load ptr, ptr %386, align 8, !tbaa !228
  %396 = getelementptr inbounds %struct.MultiresFace, ptr %395, i64 %391, i32 0, i64 3
  %397 = load i32, ptr %396, align 4, !tbaa !114
  %398 = icmp ne i32 %397, 0
  %399 = select i1 %398, i32 4, i32 3
  %400 = add i32 %392, 1
  %401 = load i8, ptr %387, align 8, !tbaa !275
  %402 = icmp ult i8 %401, 3
  br i1 %402, label %472, label %403

403:                                              ; preds = %390
  %404 = load ptr, ptr %258, align 8, !tbaa !231
  %405 = mul nsw i32 %393, 3
  %406 = shl nsw i32 %394, 2
  %407 = add nuw nsw i32 %405, %406
  %408 = add i32 %392, 2
  br label %409

409:                                              ; preds = %403, %467
  %410 = phi i64 [ 3, %403 ], [ %468, %467 ]
  %411 = phi ptr [ %404, %403 ], [ %412, %467 ]
  %412 = load ptr, ptr %411, align 8, !tbaa !231
  %413 = sub nsw i64 %389, %410
  %414 = add i64 %413, 1
  %415 = and i64 %414, 4294967295
  %416 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !114
  %418 = add i64 %413, 2
  %419 = and i64 %418, 4294967295
  %420 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !114
  %422 = sub i32 1, %421
  %423 = trunc i64 %410 to i32
  %424 = add i32 %423, -2
  %425 = uitofp i32 %424 to double
  %426 = tail call double @exp2(double %425) #14
  %427 = fptosi double %426 to i32
  %428 = trunc i64 %410 to i32
  %429 = add i32 %428, -3
  %430 = uitofp i32 %429 to double
  %431 = tail call double @exp2(double %430) #14
  %432 = fptosi double %431 to i32
  %433 = getelementptr inbounds %struct.MultiresLevel, ptr %412, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !279
  %435 = getelementptr inbounds %struct.MultiresLevel, ptr %434, i64 0, i32 5
  %436 = load i32, ptr %435, align 8, !tbaa !223
  %437 = load i32, ptr %277, align 8, !tbaa !235
  %438 = mul i32 %437, %427
  %439 = mul nsw i32 %407, %432
  %440 = add i32 %439, %436
  %441 = add i32 %440, %438
  %442 = icmp sgt i32 %432, 0
  %443 = sub i32 %408, %417
  %444 = zext nneg i32 %432 to i64
  br label %445

445:                                              ; preds = %409, %463
  %446 = phi i32 [ 0, %409 ], [ %465, %463 ]
  %447 = phi i32 [ %441, %409 ], [ %464, %463 ]
  br i1 %442, label %448, label %463

448:                                              ; preds = %445
  %449 = add nuw nsw i32 %446, 1
  %450 = mul nsw i32 %449, %382
  %451 = add i32 %443, %450
  br label %452

452:                                              ; preds = %448, %452
  %453 = phi i64 [ 0, %448 ], [ %461, %452 ]
  %454 = phi i32 [ %447, %448 ], [ %460, %452 ]
  %455 = trunc i64 %453 to i32
  %456 = mul i32 %422, %455
  %457 = add i32 %451, %456
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds i32, ptr %257, i64 %458
  store i32 %454, ptr %459, align 4, !tbaa !114
  %460 = add nsw i32 %454, 1
  %461 = add nuw nsw i64 %453, 1
  %462 = icmp eq i64 %461, %444
  br i1 %462, label %463, label %452, !llvm.loop !283

463:                                              ; preds = %452, %445
  %464 = phi i32 [ %447, %445 ], [ %460, %452 ]
  %465 = add nuw nsw i32 %446, 1
  %466 = icmp eq i32 %465, %399
  br i1 %466, label %467, label %445, !llvm.loop !284

467:                                              ; preds = %463
  %468 = add nuw nsw i64 %410, 1
  %469 = load i8, ptr %387, align 8, !tbaa !275
  %470 = zext i8 %469 to i64
  %471 = icmp ult i64 %410, %470
  br i1 %471, label %409, label %472, !llvm.loop !285

472:                                              ; preds = %467, %390
  %473 = mul i32 %388, %399
  %474 = add i32 %473, %400
  %475 = zext i1 %398 to i32
  %476 = add nuw nsw i32 %394, %475
  %477 = xor i1 %398, true
  %478 = zext i1 %477 to i32
  %479 = add nuw nsw i32 %393, %478
  %480 = add nuw nsw i64 %391, 1
  %481 = load i32, ptr %375, align 4, !tbaa !225
  %482 = zext i32 %481 to i64
  %483 = icmp ult i64 %480, %482
  br i1 %483, label %390, label %484, !llvm.loop !286

484:                                              ; preds = %472, %381
  %485 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %486 = getelementptr inbounds %struct.Multires, ptr %237, i64 0, i32 2
  %487 = load i8, ptr %486, align 8, !tbaa !275
  %488 = zext i8 %487 to i64
  %489 = shl nuw nsw i64 %488, 3
  %490 = add nsw i64 %489, -8
  %491 = tail call ptr %485(i64 noundef %490, ptr noundef nonnull @.str.17) #14
  %492 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %493 = load i8, ptr %486, align 8, !tbaa !275
  %494 = zext i8 %493 to i64
  %495 = shl nuw nsw i64 %494, 3
  %496 = add nsw i64 %495, -8
  %497 = tail call ptr %492(i64 noundef %496, ptr noundef nonnull @.str.18) #14
  %498 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %499 = load i8, ptr %486, align 8, !tbaa !275
  %500 = zext i8 %499 to i64
  %501 = shl nuw nsw i64 %500, 3
  %502 = add nsw i64 %501, -8
  %503 = tail call ptr %498(i64 noundef %502, ptr noundef nonnull @.str.19) #14
  %504 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %505 = load i8, ptr %486, align 8, !tbaa !275
  %506 = zext i8 %505 to i64
  %507 = shl nuw nsw i64 %506, 3
  %508 = add nsw i64 %507, -8
  %509 = tail call ptr %504(i64 noundef %508, ptr noundef nonnull @.str.20) #14
  %510 = load i8, ptr %486, align 8, !tbaa !275
  %511 = icmp eq i8 %510, 1
  br i1 %511, label %512, label %529

512:                                              ; preds = %614, %484
  %513 = load i32, ptr %375, align 4, !tbaa !225
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %622, label %515

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 2
  %517 = add nsw i32 %235, -1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !114
  %521 = add nsw i32 %520, -2
  %522 = icmp eq i32 %521, 0
  %523 = mul nsw i32 %521, %382
  %524 = getelementptr inbounds %struct.MultiresLevel, ptr %258, i64 0, i32 4
  %525 = add nsw i32 %520, -1
  %526 = sdiv i32 %525, 2
  %527 = mul nsw i32 %382, %382
  %528 = select i1 %522, i32 1, i32 %526
  br label %625

529:                                              ; preds = %484, %614
  %530 = phi i64 [ %616, %614 ], [ 0, %484 ]
  %531 = phi ptr [ %615, %614 ], [ %258, %484 ]
  %532 = getelementptr inbounds ptr, ptr %491, i64 %530
  %533 = getelementptr inbounds ptr, ptr %503, i64 %530
  %534 = getelementptr inbounds %struct.MultiresLevel, ptr %531, i64 0, i32 2
  %535 = load ptr, ptr %534, align 8, !tbaa !228
  %536 = getelementptr inbounds %struct.MultiresLevel, ptr %531, i64 0, i32 5
  %537 = load i32, ptr %536, align 8, !tbaa !223
  %538 = getelementptr inbounds %struct.MultiresLevel, ptr %531, i64 0, i32 6
  %539 = load i32, ptr %538, align 4, !tbaa !225
  %540 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %541 = sext i32 %537 to i64
  %542 = shl nsw i64 %541, 4
  %543 = tail call ptr %540(i64 noundef %542, ptr noundef nonnull @.str.21) #14
  store ptr %543, ptr %532, align 8, !tbaa !57
  %544 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %545 = sext i32 %539 to i64
  %546 = mul nsw i64 %545, 96
  %547 = tail call ptr %544(i64 noundef %546, ptr noundef nonnull @.str.22) #14
  store ptr %547, ptr %533, align 8, !tbaa !57
  %548 = icmp sgt i32 %539, 0
  br i1 %548, label %549, label %575

549:                                              ; preds = %529
  %550 = zext nneg i32 %539 to i64
  br label %551

551:                                              ; preds = %549, %572
  %552 = phi i64 [ 0, %549 ], [ %573, %572 ]
  %553 = phi ptr [ %547, %549 ], [ %567, %572 ]
  %554 = getelementptr inbounds %struct.MultiresFace, ptr %535, i64 %552
  %555 = getelementptr inbounds [4 x i32], ptr %554, i64 0, i64 3
  %556 = trunc i64 %552 to i32
  br label %557

557:                                              ; preds = %551, %557
  %558 = phi i64 [ 0, %551 ], [ %566, %557 ]
  %559 = phi ptr [ %553, %551 ], [ %567, %557 ]
  %560 = getelementptr inbounds %struct.IndexNode, ptr %559, i64 0, i32 2
  store i32 %556, ptr %560, align 8, !tbaa !287
  %561 = load ptr, ptr %532, align 8, !tbaa !57
  %562 = getelementptr inbounds [4 x i32], ptr %554, i64 0, i64 %558
  %563 = load i32, ptr %562, align 4, !tbaa !114
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds %struct.ListBase, ptr %561, i64 %564
  tail call void @BLI_addtail(ptr noundef %565, ptr noundef %559) #14
  %566 = add nuw nsw i64 %558, 1
  %567 = getelementptr inbounds %struct.IndexNode, ptr %559, i64 1
  %568 = load i32, ptr %555, align 4, !tbaa !114
  %569 = icmp eq i32 %568, 0
  %570 = select i1 %569, i64 3, i64 4
  %571 = icmp ult i64 %566, %570
  br i1 %571, label %557, label %572, !llvm.loop !289

572:                                              ; preds = %557
  %573 = add nuw nsw i64 %552, 1
  %574 = icmp eq i64 %573, %550
  br i1 %574, label %575, label %551, !llvm.loop !290

575:                                              ; preds = %572, %529
  %576 = getelementptr inbounds ptr, ptr %497, i64 %530
  %577 = getelementptr inbounds ptr, ptr %509, i64 %530
  %578 = getelementptr inbounds %struct.MultiresLevel, ptr %531, i64 0, i32 4
  %579 = load ptr, ptr %578, align 8, !tbaa !229
  %580 = load i32, ptr %536, align 8, !tbaa !223
  %581 = getelementptr inbounds %struct.MultiresLevel, ptr %531, i64 0, i32 7
  %582 = load i32, ptr %581, align 8, !tbaa !235
  %583 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %584 = sext i32 %580 to i64
  %585 = shl nsw i64 %584, 4
  %586 = tail call ptr %583(i64 noundef %585, ptr noundef nonnull @.str.23) #14
  store ptr %586, ptr %576, align 8, !tbaa !57
  %587 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %588 = sext i32 %582 to i64
  %589 = mul nsw i64 %588, 48
  %590 = tail call ptr %587(i64 noundef %589, ptr noundef nonnull @.str.24) #14
  store ptr %590, ptr %577, align 8, !tbaa !57
  %591 = icmp sgt i32 %582, 0
  br i1 %591, label %592, label %614

592:                                              ; preds = %575
  %593 = zext nneg i32 %582 to i64
  br label %594

594:                                              ; preds = %592, %611
  %595 = phi i64 [ 0, %592 ], [ %612, %611 ]
  %596 = phi ptr [ %590, %592 ], [ %609, %611 ]
  %597 = getelementptr inbounds %struct.MultiresEdge, ptr %579, i64 %595
  %598 = trunc i64 %595 to i32
  br label %599

599:                                              ; preds = %594, %599
  %600 = phi i64 [ 0, %594 ], [ %608, %599 ]
  %601 = phi ptr [ %596, %594 ], [ %609, %599 ]
  %602 = getelementptr inbounds %struct.IndexNode, ptr %601, i64 0, i32 2
  store i32 %598, ptr %602, align 8, !tbaa !287
  %603 = load ptr, ptr %576, align 8, !tbaa !57
  %604 = getelementptr inbounds [2 x i32], ptr %597, i64 0, i64 %600
  %605 = load i32, ptr %604, align 4, !tbaa !114
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds %struct.ListBase, ptr %603, i64 %606
  tail call void @BLI_addtail(ptr noundef %607, ptr noundef %601) #14
  %608 = add nuw nsw i64 %600, 1
  %609 = getelementptr inbounds %struct.IndexNode, ptr %601, i64 1
  %610 = icmp eq i64 %600, 0
  br i1 %610, label %599, label %611, !llvm.loop !291

611:                                              ; preds = %599
  %612 = add nuw nsw i64 %595, 1
  %613 = icmp eq i64 %612, %593
  br i1 %613, label %614, label %594, !llvm.loop !292

614:                                              ; preds = %611, %575
  %615 = load ptr, ptr %531, align 8, !tbaa !231
  %616 = add nuw nsw i64 %530, 1
  %617 = load i8, ptr %486, align 8, !tbaa !275
  %618 = zext i8 %617 to i64
  %619 = add nuw nsw i64 %618, 4294967295
  %620 = and i64 %619, 4294967295
  %621 = icmp ult i64 %616, %620
  br i1 %621, label %529, label %512, !llvm.loop !293

622:                                              ; preds = %709, %512
  %623 = load i8, ptr %486, align 8, !tbaa !275
  %624 = icmp eq i8 %623, 1
  br i1 %624, label %734, label %714

625:                                              ; preds = %515, %709
  %626 = phi i64 [ 0, %515 ], [ %710, %709 ]
  %627 = phi i32 [ 0, %515 ], [ %707, %709 ]
  %628 = load ptr, ptr %516, align 8, !tbaa !228
  %629 = getelementptr inbounds %struct.MultiresFace, ptr %628, i64 %626, i32 0, i64 3
  %630 = load i32, ptr %629, align 4, !tbaa !114
  %631 = icmp eq i32 %630, 0
  %632 = select i1 %631, i32 3, i32 4
  %633 = add i32 %627, 1
  %634 = mul nsw i32 %632, %382
  %635 = add i32 %633, %634
  %636 = add nsw i32 %632, -1
  %637 = zext i32 %627 to i64
  %638 = getelementptr inbounds i32, ptr %257, i64 %637
  %639 = zext nneg i32 %636 to i64
  %640 = zext nneg i32 %632 to i64
  br label %641

641:                                              ; preds = %625, %702
  %642 = phi i64 [ 0, %625 ], [ %650, %702 ]
  %643 = phi i32 [ %635, %625 ], [ %707, %702 ]
  %644 = add i32 %521, %643
  %645 = load ptr, ptr %516, align 8, !tbaa !228
  %646 = getelementptr inbounds %struct.MultiresFace, ptr %645, i64 %626
  %647 = getelementptr inbounds [4 x i32], ptr %646, i64 0, i64 %642
  %648 = load i32, ptr %647, align 4, !tbaa !114
  %649 = icmp eq i64 %642, %639
  %650 = add nuw nsw i64 %642, 1
  %651 = and i64 %650, 4294967295
  %652 = select i1 %649, i64 0, i64 %651
  %653 = getelementptr inbounds [4 x i32], ptr %646, i64 0, i64 %652
  %654 = load i32, ptr %653, align 4, !tbaa !114
  %655 = icmp eq i64 %642, 0
  %656 = trunc i64 %642 to i32
  %657 = add i32 %656, -1
  %658 = select i1 %655, i32 %636, i32 %657
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [4 x i32], ptr %646, i64 0, i64 %659
  %661 = load i32, ptr %660, align 4, !tbaa !114
  %662 = load ptr, ptr %258, align 8, !tbaa !231
  %663 = load i32, ptr %638, align 4, !tbaa !114
  %664 = load ptr, ptr %497, align 8, !tbaa !57
  %665 = load ptr, ptr %524, align 8, !tbaa !229
  %666 = sext i32 %661 to i64
  %667 = getelementptr inbounds %struct.ListBase, ptr %664, i64 %666
  %668 = sext i32 %648 to i64
  %669 = getelementptr inbounds %struct.ListBase, ptr %664, i64 %668
  br label %670

670:                                              ; preds = %674, %641
  %671 = phi ptr [ %667, %641 ], [ %672, %674 ]
  %672 = load ptr, ptr %671, align 8, !tbaa !57, !nonnull !294, !noundef !294
  %673 = getelementptr inbounds %struct.IndexNode, ptr %672, i64 0, i32 2
  br label %674

674:                                              ; preds = %678, %670
  %675 = phi ptr [ %669, %670 ], [ %676, %678 ]
  %676 = load ptr, ptr %675, align 8, !tbaa !57
  %677 = icmp eq ptr %676, null
  br i1 %677, label %670, label %678, !llvm.loop !295

678:                                              ; preds = %674
  %679 = load i32, ptr %673, align 8, !tbaa !287
  %680 = getelementptr inbounds %struct.IndexNode, ptr %676, i64 0, i32 2
  %681 = load i32, ptr %680, align 8, !tbaa !287
  %682 = icmp eq i32 %679, %681
  br i1 %682, label %683, label %674, !llvm.loop !296

683:                                              ; preds = %678
  %684 = sext i32 %679 to i64
  %685 = getelementptr inbounds %struct.MultiresEdge, ptr %665, i64 %684, i32 1
  %686 = load i32, ptr %685, align 4, !tbaa !297
  %687 = sext i32 %654 to i64
  %688 = getelementptr inbounds %struct.ListBase, ptr %664, i64 %687
  br label %689

689:                                              ; preds = %693, %683
  %690 = phi ptr [ %669, %683 ], [ %691, %693 ]
  %691 = load ptr, ptr %690, align 8, !tbaa !57, !nonnull !294, !noundef !294
  %692 = getelementptr inbounds %struct.IndexNode, ptr %691, i64 0, i32 2
  br label %693

693:                                              ; preds = %697, %689
  %694 = phi ptr [ %688, %689 ], [ %695, %697 ]
  %695 = load ptr, ptr %694, align 8, !tbaa !57
  %696 = icmp eq ptr %695, null
  br i1 %696, label %689, label %697, !llvm.loop !295

697:                                              ; preds = %693
  %698 = load i32, ptr %692, align 8, !tbaa !287
  %699 = getelementptr inbounds %struct.IndexNode, ptr %695, i64 0, i32 2
  %700 = load i32, ptr %699, align 8, !tbaa !287
  %701 = icmp eq i32 %698, %700
  br i1 %701, label %702, label %693, !llvm.loop !296

702:                                              ; preds = %697
  %703 = add i32 %644, %523
  %704 = sext i32 %698 to i64
  %705 = getelementptr inbounds %struct.MultiresEdge, ptr %665, i64 %704, i32 1
  %706 = load i32, ptr %705, align 4, !tbaa !297
  tail call fastcc void @multires_load_old_faces(ptr noundef %491, ptr noundef nonnull %497, ptr noundef %662, ptr noundef %257, i32 noundef %703, i32 noundef %663, i32 noundef %648, i32 noundef %686, i32 noundef %706, i32 noundef %382, i32 noundef %528)
  %707 = add nsw i32 %643, %527
  %708 = icmp eq i64 %650, %640
  br i1 %708, label %709, label %641, !llvm.loop !299

709:                                              ; preds = %702
  %710 = add nuw nsw i64 %626, 1
  %711 = load i32, ptr %375, align 4, !tbaa !225
  %712 = zext i32 %711 to i64
  %713 = icmp ult i64 %710, %712
  br i1 %713, label %625, label %622, !llvm.loop !300

714:                                              ; preds = %622, %714
  %715 = phi i64 [ %728, %714 ], [ 0, %622 ]
  %716 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %717 = getelementptr inbounds ptr, ptr %491, i64 %715
  %718 = load ptr, ptr %717, align 8, !tbaa !57
  tail call void %716(ptr noundef %718) #14
  %719 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %720 = getelementptr inbounds ptr, ptr %503, i64 %715
  %721 = load ptr, ptr %720, align 8, !tbaa !57
  tail call void %719(ptr noundef %721) #14
  %722 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %723 = getelementptr inbounds ptr, ptr %497, i64 %715
  %724 = load ptr, ptr %723, align 8, !tbaa !57
  tail call void %722(ptr noundef %724) #14
  %725 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %726 = getelementptr inbounds ptr, ptr %509, i64 %715
  %727 = load ptr, ptr %726, align 8, !tbaa !57
  tail call void %725(ptr noundef %727) #14
  %728 = add nuw nsw i64 %715, 1
  %729 = load i8, ptr %486, align 8, !tbaa !275
  %730 = zext i8 %729 to i64
  %731 = add nuw nsw i64 %730, 4294967295
  %732 = and i64 %731, 4294967295
  %733 = icmp ult i64 %728, %732
  br i1 %733, label %714, label %734, !llvm.loop !301

734:                                              ; preds = %714, %622
  %735 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %735(ptr noundef %491) #14
  %736 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %736(ptr noundef %497) #14
  %737 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %737(ptr noundef %503) #14
  %738 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %738(ptr noundef %509) #14
  br label %739

739:                                              ; preds = %734, %378, %374
  %740 = icmp eq i32 %253, 0
  br i1 %740, label %759, label %741

741:                                              ; preds = %739
  %742 = zext i32 %253 to i64
  br label %743

743:                                              ; preds = %741, %743
  %744 = phi i64 [ 0, %741 ], [ %757, %743 ]
  %745 = getelementptr inbounds %struct.MVert, ptr %250, i64 %744
  %746 = getelementptr inbounds i32, ptr %257, i64 %744
  %747 = load i32, ptr %746, align 4, !tbaa !114
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.MVert, ptr %247, i64 %748
  %750 = load float, ptr %749, align 4, !tbaa !84
  store float %750, ptr %745, align 4, !tbaa !84
  %751 = getelementptr inbounds float, ptr %749, i64 1
  %752 = load float, ptr %751, align 4, !tbaa !84
  %753 = getelementptr inbounds float, ptr %745, i64 1
  store float %752, ptr %753, align 4, !tbaa !84
  %754 = getelementptr inbounds float, ptr %749, i64 2
  %755 = load float, ptr %754, align 4, !tbaa !84
  %756 = getelementptr inbounds float, ptr %745, i64 2
  store float %755, ptr %756, align 4, !tbaa !84
  %757 = add nuw nsw i64 %744, 1
  %758 = icmp eq i64 %757, %742
  br i1 %758, label %759, label %743, !llvm.loop !302

759:                                              ; preds = %743, %739
  %760 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %760(ptr noundef %257) #14
  tail call fastcc void @multires_mvert_to_ss(ptr noundef %233, ptr noundef %250)
  %761 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %233, i64 0, i32 20, i32 6
  %762 = load i32, ptr %761, align 8, !tbaa !69
  %763 = or i32 %762, 1
  store i32 %763, ptr %761, align 8, !tbaa !69
  %764 = getelementptr inbounds %struct.DerivedMesh, ptr %233, i64 0, i32 95
  %765 = load ptr, ptr %764, align 8, !tbaa !78
  tail call void %765(ptr noundef %233) #14
  %766 = getelementptr inbounds %struct.DerivedMesh, ptr %232, i64 0, i32 95
  %767 = load ptr, ptr %766, align 8, !tbaa !78
  tail call void %767(ptr noundef %232) #14
  %768 = load ptr, ptr %3, align 8, !tbaa !234
  tail call void @multires_free(ptr noundef %768)
  store ptr null, ptr %3, align 8, !tbaa !234
  ret void
}

declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef) local_unnamed_addr #2

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @multires_mdisp_corners(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi i32 [ 13, %1 ], [ %15, %6 ]
  %4 = phi i32 [ undef, %1 ], [ %16, %6 ]
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = add nsw i32 %3, -1
  %8 = shl nuw i32 1, %7
  %9 = add nuw nsw i32 %8, 1
  %10 = load i32, ptr %0, align 8, !tbaa !110
  %11 = mul nsw i32 %9, %9
  %12 = srem i32 %10, %11
  %13 = sdiv i32 %10, %11
  %14 = icmp eq i32 %12, 0
  %15 = select i1 %14, i32 %3, i32 %7
  %16 = select i1 %14, i32 %13, i32 %4
  br i1 %14, label %17, label %2, !llvm.loop !303

17:                                               ; preds = %2, %6
  %18 = phi i32 [ %16, %6 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @multiresModifier_scale_disp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #14
  call void @BKE_object_scale_to_mat3(ptr noundef %1, ptr noundef nonnull %3) #14
  call fastcc void @multires_apply_smat(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #14
  ret void
}

declare void @BKE_object_scale_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @multires_apply_smat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.SubsurfModifierData, align 8
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca %struct.CCGKey, align 4
  %7 = alloca %struct.MultiresModifierData, align 8
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %3, %28
  %18 = phi ptr [ %30, %28 ], [ %15, %3 ]
  %19 = phi ptr [ %29, %28 ], [ null, %3 ]
  %20 = getelementptr inbounds %struct.ModifierData, ptr %18, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = icmp eq i32 %21, 29
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = icmp eq ptr %19, null
  %25 = select i1 %24, ptr %18, ptr %19
  %26 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 1) #14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23, %17
  %29 = phi ptr [ %25, %23 ], [ %19, %17 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !58

32:                                               ; preds = %23, %28, %3
  %33 = phi ptr [ null, %3 ], [ %18, %23 ], [ null, %28 ]
  %34 = phi ptr [ null, %3 ], [ %25, %23 ], [ %29, %28 ]
  %35 = icmp eq ptr %33, null
  %36 = select i1 %35, ptr %34, ptr %33
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #14
  %37 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 25
  %38 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 31
  %39 = load i32, ptr %38, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %37, ptr noundef %11, i64 noundef 524288, i32 noundef %39) #14
  %40 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %37, i32 noundef 19) #14
  %41 = icmp ne ptr %40, null
  %42 = icmp ne ptr %36, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %230

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.MultiresModifierData, ptr %36, i64 0, i32 4
  %46 = load i8, ptr %45, align 1, !tbaa !59
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %230, label %48

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(120) %36, i64 120, i1 false), !tbaa.struct !304
  %49 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 4
  %50 = load i8, ptr %49, align 1, !tbaa !59
  %51 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 1
  store i8 %50, ptr %51, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !48
  %54 = tail call ptr @modifierType_getInfo(i32 noundef %53) #14
  %55 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %56 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %55) #14
  %57 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %54, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = call ptr %58(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %56, i32 noundef 10) #14
  %60 = icmp eq ptr %59, %56
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = call ptr @CDDM_copy(ptr noundef %56) #14
  br label %63

63:                                               ; preds = %48, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %48 ]
  %65 = call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %55) #14
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 23
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  %68 = call i32 %67(ptr noundef %65) #14
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %70 = sext i32 %68 to i64
  %71 = mul nsw i64 %70, 12
  %72 = call ptr %69(i64 noundef %71, ptr noundef nonnull @.str.25) #14
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 77
  %74 = load ptr, ptr %73, align 8, !tbaa !102
  call void %74(ptr noundef %65, ptr noundef %72) #14
  %75 = icmp sgt i32 %68, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %63
  %77 = zext nneg i32 %68 to i64
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ 0, %76 ], [ %81, %78 ]
  %80 = getelementptr inbounds [3 x float], ptr %72, i64 %79
  call void @mul_m3_v3(ptr noundef %2, ptr noundef %80) #14
  %81 = add nuw nsw i64 %79, 1
  %82 = icmp eq i64 %81, %77
  br i1 %82, label %83, label %78, !llvm.loop !305

83:                                               ; preds = %78, %63
  call void @CDDM_apply_vert_coords(ptr noundef %65, ptr noundef %72) #14
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %84(ptr noundef %72) #14
  %85 = load i8, ptr %49, align 1, !tbaa !59
  %86 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 5
  %87 = load i8, ptr %86, align 4, !tbaa !130
  %88 = getelementptr inbounds %struct.MultiresModifierData, ptr %36, i64 0, i32 6
  %89 = load i8, ptr %88, align 1, !tbaa !148
  %90 = and i8 %89, 2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  %91 = zext i8 %85 to i16
  %92 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 3
  store i16 %91, ptr %92, align 4, !tbaa !149
  %93 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 2
  store i16 %91, ptr %93, align 2, !tbaa !151
  %94 = icmp eq i8 %90, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 4
  %97 = load i16, ptr %96, align 2, !tbaa !152
  %98 = or i16 %97, 8
  store i16 %98, ptr %96, align 2, !tbaa !152
  br label %99

99:                                               ; preds = %95, %83
  %100 = icmp eq i8 %87, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 1
  store i16 1, ptr %102, align 8, !tbaa !173
  br label %103

103:                                              ; preds = %99, %101
  %104 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %105 = load i32, ptr %104, align 8, !tbaa !61
  %106 = shl i32 %105, 3
  %107 = and i32 %106, 8
  %108 = call ptr @subsurf_make_derived_from_derived(ptr noundef %65, ptr noundef nonnull %4, ptr noundef null, i32 noundef %107) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  %109 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 95
  %110 = load ptr, ptr %109, align 8, !tbaa !78
  call void %110(ptr noundef %65) #14
  %111 = getelementptr inbounds %struct.DerivedMesh, ptr %108, i64 0, i32 64
  %112 = load ptr, ptr %111, align 8, !tbaa !154
  %113 = call i32 %112(ptr noundef %108) #14
  %114 = getelementptr inbounds %struct.DerivedMesh, ptr %108, i64 0, i32 65
  %115 = load ptr, ptr %114, align 8, !tbaa !153
  %116 = call ptr %115(ptr noundef %108) #14
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %108, i64 0, i32 67
  %118 = load ptr, ptr %117, align 8, !tbaa !155
  %119 = call ptr %118(ptr noundef %108) #14
  %120 = getelementptr inbounds %struct.DerivedMesh, ptr %108, i64 0, i32 68
  %121 = load ptr, ptr %120, align 8, !tbaa !80
  call void %121(ptr noundef %108, ptr noundef nonnull %5) #14
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 65
  %123 = load ptr, ptr %122, align 8, !tbaa !153
  %124 = call ptr %123(ptr noundef %64) #14
  %125 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 68
  %126 = load ptr, ptr %125, align 8, !tbaa !80
  call void %126(ptr noundef %64, ptr noundef nonnull %6) #14
  %127 = load i8, ptr %49, align 1, !tbaa !59
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !114
  %131 = add nsw i32 %130, -1
  %132 = add nsw i32 %113, -1
  %133 = sdiv i32 %131, %132
  %134 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 30
  %135 = load i32, ptr %134, align 8, !tbaa !105
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %225

137:                                              ; preds = %103
  %138 = icmp sgt i32 %113, 0
  %139 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 2
  %140 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 1
  %141 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 2
  %142 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %143 = getelementptr inbounds float, ptr %9, i64 1
  %144 = getelementptr inbounds float, ptr %9, i64 2
  %145 = zext nneg i32 %113 to i64
  br label %146

146:                                              ; preds = %137, %220
  %147 = phi i64 [ 0, %137 ], [ %221, %220 ]
  %148 = getelementptr inbounds %struct.MPoly, ptr %13, i64 %147, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !107
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %220

151:                                              ; preds = %146
  %152 = getelementptr inbounds i32, ptr %119, i64 %147
  %153 = load i32, ptr %152, align 4, !tbaa !114
  %154 = getelementptr inbounds %struct.MPoly, ptr %13, i64 %147
  %155 = load i32, ptr %154, align 4, !tbaa !109
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.MDisps, ptr %40, i64 %156
  %158 = sext i32 %153 to i64
  br label %159

159:                                              ; preds = %151, %215
  %160 = phi i64 [ %158, %151 ], [ %217, %215 ]
  %161 = phi i32 [ 0, %151 ], [ %216, %215 ]
  %162 = phi ptr [ %157, %151 ], [ %218, %215 ]
  %163 = getelementptr inbounds ptr, ptr %116, i64 %160
  %164 = load ptr, ptr %163, align 8, !tbaa !57
  %165 = getelementptr inbounds ptr, ptr %124, i64 %160
  %166 = load ptr, ptr %165, align 8, !tbaa !57
  %167 = getelementptr inbounds %struct.MDisps, ptr %162, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !117
  br i1 %138, label %169, label %215

169:                                              ; preds = %159, %212
  %170 = phi i32 [ %213, %212 ], [ 0, %159 ]
  %171 = mul nsw i32 %170, %130
  br label %172

172:                                              ; preds = %169, %172
  %173 = phi i64 [ 0, %169 ], [ %210, %172 ]
  %174 = load i32, ptr %139, align 4, !tbaa !161
  %175 = mul nsw i32 %174, %170
  %176 = trunc i64 %173 to i32
  %177 = add nsw i32 %175, %176
  %178 = load i32, ptr %140, align 4, !tbaa !162
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %164, i64 %180
  %182 = load i32, ptr %141, align 4, !tbaa !161
  %183 = mul nsw i32 %182, %170
  %184 = trunc i64 %173 to i32
  %185 = add nsw i32 %183, %184
  %186 = load i32, ptr %142, align 4, !tbaa !162
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %166, i64 %188
  %190 = trunc i64 %173 to i32
  %191 = add i32 %171, %190
  %192 = mul i32 %191, %133
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x float], ptr %168, i64 %193
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %195 = trunc i64 %173 to i32
  call fastcc void @grid_tangent_matrix(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %195, i32 noundef %170, ptr noundef %164)
  call void @mul_m3_v3(ptr noundef %2, ptr noundef %189) #14
  %196 = load float, ptr %189, align 4, !tbaa !84
  %197 = load float, ptr %181, align 4, !tbaa !84
  %198 = fsub float %196, %197
  store float %198, ptr %9, align 4, !tbaa !84
  %199 = getelementptr inbounds float, ptr %189, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !84
  %201 = getelementptr inbounds float, ptr %181, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !84
  %203 = fsub float %200, %202
  store float %203, ptr %143, align 4, !tbaa !84
  %204 = getelementptr inbounds float, ptr %189, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !84
  %206 = getelementptr inbounds float, ptr %181, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !84
  %208 = fsub float %205, %207
  store float %208, ptr %144, align 4, !tbaa !84
  %209 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #14
  call void @mul_v3_m3v3(ptr noundef %194, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #14
  %210 = add nuw nsw i64 %173, 1
  %211 = icmp eq i64 %210, %145
  br i1 %211, label %212, label %172, !llvm.loop !306

212:                                              ; preds = %172
  %213 = add nuw nsw i32 %170, 1
  %214 = icmp eq i32 %213, %113
  br i1 %214, label %215, label %169, !llvm.loop !307

215:                                              ; preds = %212, %159
  %216 = add nuw nsw i32 %161, 1
  %217 = add nsw i64 %160, 1
  %218 = getelementptr inbounds %struct.MDisps, ptr %162, i64 1
  %219 = icmp eq i32 %216, %149
  br i1 %219, label %220, label %159, !llvm.loop !308

220:                                              ; preds = %215, %146
  %221 = add nuw nsw i64 %147, 1
  %222 = load i32, ptr %134, align 8, !tbaa !105
  %223 = sext i32 %222 to i64
  %224 = icmp slt i64 %221, %223
  br i1 %224, label %146, label %225, !llvm.loop !309

225:                                              ; preds = %220, %103
  %226 = getelementptr inbounds %struct.DerivedMesh, ptr %108, i64 0, i32 95
  %227 = load ptr, ptr %226, align 8, !tbaa !78
  call void %227(ptr noundef %108) #14
  %228 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 95
  %229 = load ptr, ptr %228, align 8, !tbaa !78
  call void %229(ptr noundef %64) #14
  br label %230

230:                                              ; preds = %32, %44, %225
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @multiresModifier_prepare_join(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3, %21
  %11 = phi ptr [ %23, %21 ], [ %8, %3 ]
  %12 = phi ptr [ %22, %21 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i32 %14, 29
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = icmp eq ptr %12, null
  %18 = select i1 %17, ptr %11, ptr %12
  %19 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 1) #14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %10
  %22 = phi ptr [ %18, %16 ], [ %12, %10 ]
  %23 = load ptr, ptr %11, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10, !llvm.loop !58

25:                                               ; preds = %21, %16, %3
  %26 = phi ptr [ null, %3 ], [ null, %21 ], [ %11, %16 ]
  %27 = phi ptr [ null, %3 ], [ %22, %21 ], [ %18, %16 ]
  %28 = icmp eq ptr %26, null
  %29 = select i1 %28, ptr %27, ptr %26
  %30 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %25, %44
  %34 = phi ptr [ %46, %44 ], [ %31, %25 ]
  %35 = phi ptr [ %45, %44 ], [ null, %25 ]
  %36 = getelementptr inbounds %struct.ModifierData, ptr %34, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !48
  %38 = icmp eq i32 %37, 29
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = icmp eq ptr %35, null
  %41 = select i1 %40, ptr %34, ptr %35
  %42 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %34, i32 noundef 1) #14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %33
  %45 = phi ptr [ %41, %39 ], [ %35, %33 ]
  %46 = load ptr, ptr %34, align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %33, !llvm.loop !58

48:                                               ; preds = %44, %39, %25
  %49 = phi ptr [ null, %25 ], [ null, %44 ], [ %34, %39 ]
  %50 = phi ptr [ null, %25 ], [ %45, %44 ], [ %41, %39 ]
  %51 = icmp eq ptr %49, null
  %52 = select i1 %51, ptr %50, ptr %49
  %53 = icmp ne ptr %29, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !104
  tail call void @multires_customdata_delete(ptr noundef %56)
  br label %57

57:                                               ; preds = %54, %48
  %58 = icmp ne ptr %52, null
  %59 = select i1 %53, i1 %58, i1 false
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.MultiresModifierData, ptr %29, i64 0, i32 4
  %62 = load i8, ptr %61, align 1, !tbaa !59
  %63 = getelementptr inbounds %struct.MultiresModifierData, ptr %52, i64 0, i32 4
  %64 = load i8, ptr %63, align 1, !tbaa !59
  %65 = zext i8 %64 to i32
  %66 = icmp ugt i8 %62, %64
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call fastcc void @multires_del_higher(ptr noundef nonnull %29, ptr noundef %1, i32 noundef %65)
  br label %72

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.MultiresModifierData, ptr %29, i64 0, i32 5
  %70 = load i8, ptr %69, align 4, !tbaa !130
  %71 = zext i8 %70 to i32
  tail call fastcc void @multires_subdivide(ptr noundef nonnull %29, ptr noundef %1, i32 noundef %65, i32 noundef 0, i32 noundef %71)
  br label %72

72:                                               ; preds = %57, %67, %68
  call void @BKE_object_scale_to_mat3(ptr noundef %2, ptr noundef nonnull %5) #14
  %73 = call zeroext i8 @invert_m3(ptr noundef nonnull %5) #14
  call void @BKE_object_scale_to_mat3(ptr noundef %1, ptr noundef nonnull %4) #14
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  call fastcc void @multires_apply_smat(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  ret void
}

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @multires_topology_changed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 524288, i32 noundef %4) #14
  %5 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 19) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !tbaa !47
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7, %17
  %11 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %12 = phi ptr [ %19, %17 ], [ %5, %7 ]
  %13 = load i32, ptr %12, align 8, !tbaa !110
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %5, align 8, !tbaa !110
  br label %21

17:                                               ; preds = %10
  %18 = add nuw nsw i32 %11, 1
  %19 = getelementptr inbounds %struct.MDisps, ptr %12, i64 1
  %20 = icmp eq i32 %18, %8
  br i1 %20, label %21, label %10, !llvm.loop !310

21:                                               ; preds = %17, %7, %15
  %22 = phi i32 [ %16, %15 ], [ 0, %7 ], [ 0, %17 ]
  %23 = load i32, ptr %3, align 4, !tbaa !47
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = icmp ne i32 %22, 0
  %27 = icmp eq i32 %22, 0
  %28 = mul nsw i32 %22, 3
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  br label %31

31:                                               ; preds = %25, %46
  %32 = phi i32 [ 0, %25 ], [ %47, %46 ]
  %33 = phi ptr [ %5, %25 ], [ %48, %46 ]
  %34 = load i32, ptr %33, align 8, !tbaa !110
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.MDisps, ptr %33, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !117
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, i1 %26, i1 false
  br i1 %40, label %42, label %46

41:                                               ; preds = %31
  br i1 %27, label %46, label %42

42:                                               ; preds = %36, %41
  store i32 %22, ptr %33, align 8, !tbaa !110
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %44 = tail call ptr %43(i64 noundef %30, ptr noundef nonnull @.str.9) #14
  %45 = getelementptr inbounds %struct.MDisps, ptr %33, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !117
  br label %46

46:                                               ; preds = %36, %41, %42
  %47 = add nuw nsw i32 %32, 1
  %48 = getelementptr inbounds %struct.MDisps, ptr %33, i64 1
  %49 = load i32, ptr %3, align 4, !tbaa !47
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %31, label %51, !llvm.loop !311

51:                                               ; preds = %46, %21, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @mdisp_rot_face_to_crn(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = sitofp i32 %1 to float
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 5.000000e-01, float -5.000000e-01)
  %9 = icmp eq i32 %0, 4
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = fcmp ult float %8, %2
  %12 = fcmp ult float %8, %3
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = fcmp olt float %8, %2
  %16 = xor i1 %15, true
  %17 = or i1 %12, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = fcmp olt float %8, %3
  %20 = and i1 %15, %19
  %21 = or i1 %11, %20
  %22 = xor i1 %20, true
  br i1 %21, label %26, label %23

23:                                               ; preds = %18
  %24 = fcmp ugt float %8, %3
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %18, %14, %10, %23, %25
  %27 = phi i1 [ false, %25 ], [ true, %23 ], [ true, %10 ], [ false, %14 ], [ %22, %18 ]
  %28 = phi i1 [ false, %25 ], [ false, %23 ], [ false, %10 ], [ true, %14 ], [ false, %18 ]
  %29 = phi i1 [ false, %25 ], [ false, %23 ], [ false, %10 ], [ false, %14 ], [ %20, %18 ]
  br i1 %27, label %30, label %33

30:                                               ; preds = %26
  %31 = fsub float %8, %2
  store float %31, ptr %5, align 4, !tbaa !84
  %32 = fsub float %8, %3
  store float %32, ptr %4, align 4, !tbaa !84
  br label %74

33:                                               ; preds = %26
  br i1 %28, label %34, label %37

34:                                               ; preds = %33
  %35 = fsub float %2, %8
  store float %35, ptr %4, align 4, !tbaa !84
  %36 = fsub float %8, %3
  store float %36, ptr %5, align 4, !tbaa !84
  br label %74

37:                                               ; preds = %33
  %38 = fsub float %3, %8
  br i1 %29, label %39, label %41

39:                                               ; preds = %37
  %40 = fsub float %2, %8
  store float %40, ptr %5, align 4, !tbaa !84
  store float %38, ptr %4, align 4, !tbaa !84
  br label %74

41:                                               ; preds = %37
  %42 = fsub float %8, %2
  store float %42, ptr %4, align 4, !tbaa !84
  store float %38, ptr %5, align 4, !tbaa !84
  br label %74

43:                                               ; preds = %6
  %44 = fptosi float %8 to i32
  %45 = add nsw i32 %1, -1
  %46 = sitofp i32 %45 to float
  %47 = fsub float %46, %2
  %48 = fsub float %47, %3
  %49 = fcmp ult float %2, %3
  %50 = fcmp ugt float %48, %2
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = fcmp ult float %3, %2
  %54 = fcmp ugt float %48, %3
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %52, %43, %56
  %58 = phi i32 [ 2, %56 ], [ 0, %43 ], [ 1, %52 ]
  %59 = phi float [ %3, %56 ], [ %48, %43 ], [ %2, %52 ]
  %60 = phi float [ %2, %56 ], [ %3, %43 ], [ %48, %52 ]
  %61 = fdiv float %59, %46
  %62 = fdiv float %60, %46
  %63 = fmul float %61, 2.000000e+00
  %64 = fsub float 1.000000e+00, %62
  %65 = fdiv float %63, %64
  %66 = fsub float 1.000000e+00, %65
  %67 = sitofp i32 %44 to float
  %68 = fmul float %66, %67
  store float %68, ptr %4, align 4, !tbaa !84
  %69 = fmul float %62, 2.000000e+00
  %70 = fsub float 1.000000e+00, %61
  %71 = fdiv float %69, %70
  %72 = fsub float 1.000000e+00, %71
  %73 = fmul float %72, %67
  store float %73, ptr %5, align 4, !tbaa !84
  br label %74

74:                                               ; preds = %30, %39, %41, %34, %57
  %75 = phi i32 [ 0, %30 ], [ 1, %34 ], [ 2, %39 ], [ 3, %41 ], [ %58, %57 ]
  ret i32 %75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare i32 @get_render_subsurf_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multires_mdisps_downsample_hidden(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @BKE_ccg_gridsize(i32 noundef %2) #14
  %5 = tail call i32 @BKE_ccg_gridsize(i32 noundef %1) #14
  %6 = tail call i32 @BKE_ccg_factor(i32 noundef %2, i32 noundef %1) #14
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %8 = mul nsw i32 %4, %4
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 268435452
  %11 = add nuw nsw i32 %10, 4
  %12 = zext nneg i32 %11 to i64
  %13 = tail call ptr %7(i64 noundef %12, ptr noundef nonnull @.str.11) #14
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %3, %54
  %16 = phi i32 [ %55, %54 ], [ 0, %3 ]
  %17 = mul i32 %16, %5
  %18 = mul nsw i32 %16, %4
  %19 = mul nsw i32 %16, %4
  br label %20

20:                                               ; preds = %15, %51
  %21 = phi i32 [ 0, %15 ], [ %52, %51 ]
  %22 = add i32 %21, %17
  %23 = mul i32 %22, %6
  %24 = ashr i32 %23, 5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !114
  %28 = and i32 %23, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %20
  %33 = add nuw nsw i32 %21, %18
  %34 = and i32 %33, 31
  %35 = shl nuw i32 1, %34
  %36 = lshr i32 %33, 5
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %13, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !114
  %40 = or i32 %39, %35
  store i32 %40, ptr %38, align 4, !tbaa !114
  br label %51

41:                                               ; preds = %20
  %42 = add nuw nsw i32 %21, %19
  %43 = and i32 %42, 31
  %44 = shl nuw i32 1, %43
  %45 = xor i32 %44, -1
  %46 = lshr i32 %42, 5
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %13, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !114
  %50 = and i32 %49, %45
  store i32 %50, ptr %48, align 4, !tbaa !114
  br label %51

51:                                               ; preds = %32, %41
  %52 = add nuw nsw i32 %21, 1
  %53 = icmp eq i32 %52, %4
  br i1 %53, label %54, label %20, !llvm.loop !312

54:                                               ; preds = %51
  %55 = add nuw nsw i32 %16, 1
  %56 = icmp eq i32 %55, %4
  br i1 %56, label %57, label %15, !llvm.loop !313

57:                                               ; preds = %54, %3
  ret ptr %13
}

declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #2

declare i32 @BKE_ccg_factor(i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @paint_grid_paint_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_updateNormals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @grid_tangent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #3 {
  %7 = icmp eq i32 %3, 0
  %8 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !161
  %10 = add nsw i32 %9, -1
  br i1 %7, label %11, label %49

11:                                               ; preds = %6
  %12 = icmp eq i32 %10, %1
  br i1 %12, label %13, label %38

13:                                               ; preds = %11
  %14 = icmp eq i32 %10, %2
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = add nsw i32 %2, -1
  %17 = mul nsw i32 %9, %16
  %18 = add nsw i32 %17, %1
  %19 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !162
  %21 = mul nsw i32 %20, %18
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %4, i64 %22
  %24 = add nsw i32 %1, -1
  %25 = add nsw i32 %24, %17
  %26 = mul nsw i32 %20, %25
  br label %90

27:                                               ; preds = %13
  %28 = mul nsw i32 %9, %2
  %29 = add nsw i32 %28, %1
  %30 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !162
  %32 = mul nsw i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = add nsw i32 %1, -1
  %36 = add nsw i32 %35, %28
  %37 = mul nsw i32 %31, %36
  br label %90

38:                                               ; preds = %11
  %39 = add nsw i32 %1, 1
  %40 = mul nsw i32 %9, %2
  %41 = add nsw i32 %39, %40
  %42 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !162
  %44 = mul nsw i32 %43, %41
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %4, i64 %45
  %47 = add nsw i32 %40, %1
  %48 = mul nsw i32 %43, %47
  br label %90

49:                                               ; preds = %6
  %50 = icmp eq i32 %10, %2
  br i1 %50, label %51, label %78

51:                                               ; preds = %49
  %52 = icmp eq i32 %10, %1
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = add nsw i32 %1, -1
  %55 = mul nsw i32 %9, %2
  %56 = add nsw i32 %55, %54
  %57 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !162
  %59 = mul nsw i32 %58, %56
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %4, i64 %60
  %62 = add nsw i32 %2, -1
  %63 = mul nsw i32 %9, %62
  %64 = add nsw i32 %63, %54
  %65 = mul nsw i32 %58, %64
  br label %90

66:                                               ; preds = %51
  %67 = mul nsw i32 %9, %2
  %68 = add nsw i32 %67, %1
  %69 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !162
  %71 = mul nsw i32 %70, %68
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %4, i64 %72
  %74 = add nsw i32 %2, -1
  %75 = mul nsw i32 %9, %74
  %76 = add nsw i32 %75, %1
  %77 = mul nsw i32 %70, %76
  br label %90

78:                                               ; preds = %49
  %79 = add nsw i32 %2, 1
  %80 = mul nsw i32 %9, %79
  %81 = add nsw i32 %80, %1
  %82 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !162
  %84 = mul nsw i32 %83, %81
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %4, i64 %85
  %87 = mul nsw i32 %9, %2
  %88 = add nsw i32 %87, %1
  %89 = mul nsw i32 %83, %88
  br label %90

90:                                               ; preds = %53, %66, %78, %38, %27, %15
  %91 = phi i32 [ %65, %53 ], [ %77, %66 ], [ %89, %78 ], [ %48, %38 ], [ %37, %27 ], [ %26, %15 ]
  %92 = phi ptr [ %61, %53 ], [ %73, %66 ], [ %86, %78 ], [ %46, %38 ], [ %34, %27 ], [ %23, %15 ]
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, ptr %4, i64 %93
  %95 = load float, ptr %92, align 4, !tbaa !84
  %96 = load float, ptr %94, align 4, !tbaa !84
  %97 = fsub float %95, %96
  store float %97, ptr %5, align 4, !tbaa !84
  %98 = getelementptr inbounds float, ptr %92, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !84
  %100 = getelementptr inbounds float, ptr %94, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !84
  %102 = fsub float %99, %101
  %103 = getelementptr inbounds float, ptr %5, i64 1
  store float %102, ptr %103, align 4, !tbaa !84
  %104 = getelementptr inbounds float, ptr %92, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !84
  %106 = getelementptr inbounds float, ptr %94, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !84
  %108 = fsub float %105, %107
  %109 = getelementptr inbounds float, ptr %5, i64 2
  store float %108, ptr %109, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

declare i32 @ccgSubSurf_getGridSize(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getEdgeSize(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumFaces(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getFaceNumVerts(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceCenterData(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceGridData(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumEdges(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumVerts(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getVertData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_updateToFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @multires_load_old_faces(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #12 {
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = icmp eq ptr %2, null
  br i1 %14, label %179, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8, !tbaa !231
  %17 = icmp eq ptr %16, null
  br i1 %17, label %179, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds ptr, ptr %0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.MultiresLevel, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  store i32 %5, ptr %12, align 16, !tbaa !114
  %23 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 1
  store i32 %6, ptr %23, align 4, !tbaa !114
  %24 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 2
  store i32 %7, ptr %24, align 8, !tbaa !114
  %25 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 3
  store i32 %8, ptr %25, align 4, !tbaa !114
  %26 = sext i32 %5 to i64
  %27 = getelementptr inbounds %struct.ListBase, ptr %20, i64 %26
  %28 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 1
  %29 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 2
  %30 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 3
  br label %31

31:                                               ; preds = %73, %18
  %32 = phi ptr [ undef, %18 ], [ %74, %73 ]
  %33 = phi ptr [ %27, %18 ], [ %34, %73 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !57, !nonnull !294, !noundef !294
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %35 = getelementptr inbounds %struct.IndexNode, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !287
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MultiresFace, ptr %22, i64 %37
  br label %39

39:                                               ; preds = %31, %53
  %40 = phi i64 [ 0, %31 ], [ %54, %53 ]
  %41 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !114
  %43 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 %40
  br label %44

44:                                               ; preds = %39, %50
  %45 = phi i64 [ 0, %39 ], [ %51, %50 ]
  %46 = getelementptr inbounds [4 x i32], ptr %38, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !114
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, ptr %43, align 4, !tbaa !114
  br label %50

50:                                               ; preds = %49, %44
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %44, !llvm.loop !314

53:                                               ; preds = %50
  %54 = add nuw nsw i64 %40, 1
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %39, !llvm.loop !315

56:                                               ; preds = %53
  %57 = load i32, ptr %13, align 16, !tbaa !114
  %58 = icmp ne i32 %57, 0
  %59 = load i32, ptr %28, align 4
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  %62 = load i32, ptr %29, align 8
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  %65 = load i32, ptr %30, align 4
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.IndexNode, ptr %34, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !287
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.MultiresFace, ptr %22, i64 %71
  br label %73

73:                                               ; preds = %68, %56
  %74 = phi ptr [ %72, %68 ], [ %32, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  br i1 %67, label %75, label %31, !llvm.loop !316

75:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  %76 = getelementptr inbounds %struct.MultiresFace, ptr %74, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !317
  %78 = sext i32 %4 to i64
  %79 = getelementptr inbounds i32, ptr %3, i64 %78
  store i32 %77, ptr %79, align 4, !tbaa !114
  %80 = getelementptr inbounds ptr, ptr %1, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = getelementptr inbounds %struct.MultiresLevel, ptr %2, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !229
  %84 = getelementptr inbounds %struct.ListBase, ptr %81, i64 %26
  %85 = sext i32 %7 to i64
  %86 = getelementptr inbounds %struct.ListBase, ptr %81, i64 %85
  br label %87

87:                                               ; preds = %91, %75
  %88 = phi ptr [ %84, %75 ], [ %89, %91 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !57, !nonnull !294, !noundef !294
  %90 = getelementptr inbounds %struct.IndexNode, ptr %89, i64 0, i32 2
  br label %91

91:                                               ; preds = %95, %87
  %92 = phi ptr [ %86, %87 ], [ %93, %95 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !57
  %94 = icmp eq ptr %93, null
  br i1 %94, label %87, label %95, !llvm.loop !295

95:                                               ; preds = %91
  %96 = load i32, ptr %90, align 8, !tbaa !287
  %97 = getelementptr inbounds %struct.IndexNode, ptr %93, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !287
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %91, !llvm.loop !296

100:                                              ; preds = %95
  %101 = sext i32 %96 to i64
  %102 = getelementptr inbounds %struct.MultiresEdge, ptr %83, i64 %101, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !297
  %104 = sext i32 %8 to i64
  %105 = getelementptr inbounds %struct.ListBase, ptr %81, i64 %104
  br label %106

106:                                              ; preds = %110, %100
  %107 = phi ptr [ %84, %100 ], [ %108, %110 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !57, !nonnull !294, !noundef !294
  %109 = getelementptr inbounds %struct.IndexNode, ptr %108, i64 0, i32 2
  br label %110

110:                                              ; preds = %114, %106
  %111 = phi ptr [ %105, %106 ], [ %112, %114 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !57
  %113 = icmp eq ptr %112, null
  br i1 %113, label %106, label %114, !llvm.loop !295

114:                                              ; preds = %110
  %115 = load i32, ptr %109, align 8, !tbaa !287
  %116 = getelementptr inbounds %struct.IndexNode, ptr %112, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !287
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %110, !llvm.loop !296

119:                                              ; preds = %114
  %120 = sext i32 %115 to i64
  %121 = getelementptr inbounds %struct.MultiresEdge, ptr %83, i64 %120, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !297
  %123 = sext i32 %6 to i64
  %124 = getelementptr inbounds %struct.ListBase, ptr %81, i64 %123
  br label %125

125:                                              ; preds = %129, %119
  %126 = phi ptr [ %124, %119 ], [ %127, %129 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !57, !nonnull !294, !noundef !294
  %128 = getelementptr inbounds %struct.IndexNode, ptr %127, i64 0, i32 2
  br label %129

129:                                              ; preds = %133, %125
  %130 = phi ptr [ %86, %125 ], [ %131, %133 ]
  %131 = load ptr, ptr %130, align 8, !tbaa !57
  %132 = icmp eq ptr %131, null
  br i1 %132, label %125, label %133, !llvm.loop !295

133:                                              ; preds = %129
  %134 = load i32, ptr %128, align 8, !tbaa !287
  %135 = getelementptr inbounds %struct.IndexNode, ptr %131, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !287
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %129, !llvm.loop !296

138:                                              ; preds = %133
  %139 = sext i32 %134 to i64
  %140 = getelementptr inbounds %struct.MultiresEdge, ptr %83, i64 %139, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !297
  br label %142

142:                                              ; preds = %146, %138
  %143 = phi ptr [ %124, %138 ], [ %144, %146 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !57, !nonnull !294, !noundef !294
  %145 = getelementptr inbounds %struct.IndexNode, ptr %144, i64 0, i32 2
  br label %146

146:                                              ; preds = %150, %142
  %147 = phi ptr [ %105, %142 ], [ %148, %150 ]
  %148 = load ptr, ptr %147, align 8, !tbaa !57
  %149 = icmp eq ptr %148, null
  br i1 %149, label %142, label %150, !llvm.loop !295

150:                                              ; preds = %146
  %151 = load i32, ptr %145, align 8, !tbaa !287
  %152 = getelementptr inbounds %struct.IndexNode, ptr %148, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !287
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %146, !llvm.loop !296

155:                                              ; preds = %150
  %156 = sext i32 %151 to i64
  %157 = getelementptr inbounds %struct.MultiresEdge, ptr %83, i64 %156, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !297
  %159 = mul nsw i32 %10, %9
  %160 = add nsw i32 %159, %4
  %161 = add nsw i32 %160, %10
  %162 = sdiv i32 %10, 2
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %19, ptr noundef nonnull %80, ptr noundef nonnull %16, ptr noundef %3, i32 noundef %161, i32 noundef %77, i32 noundef %6, i32 noundef %141, i32 noundef %158, i32 noundef %9, i32 noundef %162)
  %163 = load ptr, ptr %2, align 8, !tbaa !231
  %164 = sub nsw i32 %4, %159
  %165 = add nsw i32 %164, %10
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %19, ptr noundef nonnull %80, ptr noundef %163, ptr noundef %3, i32 noundef %165, i32 noundef %122, i32 noundef %158, i32 noundef %77, i32 noundef %8, i32 noundef %9, i32 noundef %162)
  %166 = load ptr, ptr %2, align 8, !tbaa !231
  %167 = sub nsw i32 %160, %10
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %19, ptr noundef nonnull %80, ptr noundef %166, ptr noundef %3, i32 noundef %167, i32 noundef %103, i32 noundef %141, i32 noundef %7, i32 noundef %77, i32 noundef %9, i32 noundef %162)
  %168 = load ptr, ptr %2, align 8, !tbaa !231
  %169 = sub nsw i32 %164, %10
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %19, ptr noundef nonnull %80, ptr noundef %168, ptr noundef %3, i32 noundef %169, i32 noundef %5, i32 noundef %77, i32 noundef %103, i32 noundef %122, i32 noundef %9, i32 noundef %162)
  %170 = load ptr, ptr %2, align 8, !tbaa !231
  %171 = load ptr, ptr %170, align 8, !tbaa !231
  %172 = icmp eq ptr %171, null
  br i1 %172, label %179, label %173

173:                                              ; preds = %155
  tail call fastcc void @multires_load_old_edges(ptr noundef %1, ptr noundef nonnull %170, ptr noundef %3, i32 noundef %4, i32 noundef %158, i32 noundef %77, i32 noundef %10)
  %174 = load ptr, ptr %2, align 8, !tbaa !231
  %175 = sub nsw i32 0, %10
  tail call fastcc void @multires_load_old_edges(ptr noundef %1, ptr noundef %174, ptr noundef %3, i32 noundef %4, i32 noundef %103, i32 noundef %77, i32 noundef %175)
  %176 = load ptr, ptr %2, align 8, !tbaa !231
  %177 = sub i32 0, %159
  tail call fastcc void @multires_load_old_edges(ptr noundef %1, ptr noundef %176, ptr noundef %3, i32 noundef %4, i32 noundef %122, i32 noundef %77, i32 noundef %177)
  %178 = load ptr, ptr %2, align 8, !tbaa !231
  tail call fastcc void @multires_load_old_edges(ptr noundef %1, ptr noundef %178, ptr noundef %3, i32 noundef %4, i32 noundef %141, i32 noundef %77, i32 noundef %159)
  br label %179

179:                                              ; preds = %155, %173, %15, %11
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @multires_load_old_edges(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #12 {
  br label %8

8:                                                ; preds = %46, %7
  %9 = phi ptr [ %0, %7 ], [ %47, %46 ]
  %10 = phi ptr [ %1, %7 ], [ %49, %46 ]
  %11 = phi i32 [ %3, %7 ], [ %40, %46 ]
  %12 = phi i32 [ %4, %7 ], [ %13, %46 ]
  %13 = phi i32 [ %5, %7 ], [ %39, %46 ]
  %14 = phi i32 [ %6, %7 ], [ %50, %46 ]
  %15 = getelementptr inbounds ptr, ptr %9, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.MultiresLevel, ptr %10, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !229
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds %struct.ListBase, ptr %16, i64 %19
  %21 = sext i32 %13 to i64
  %22 = getelementptr inbounds %struct.ListBase, ptr %16, i64 %21
  br label %23

23:                                               ; preds = %27, %8
  %24 = phi ptr [ %20, %8 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !57, !nonnull !294, !noundef !294
  %26 = getelementptr inbounds %struct.IndexNode, ptr %25, i64 0, i32 2
  br label %27

27:                                               ; preds = %31, %23
  %28 = phi ptr [ %22, %23 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = icmp eq ptr %29, null
  br i1 %30, label %23, label %31, !llvm.loop !295

31:                                               ; preds = %27
  %32 = load i32, ptr %26, align 8, !tbaa !287
  %33 = getelementptr inbounds %struct.IndexNode, ptr %29, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !287
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %27, !llvm.loop !296

36:                                               ; preds = %31
  %37 = sext i32 %32 to i64
  %38 = getelementptr inbounds %struct.MultiresEdge, ptr %18, i64 %37, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !297
  %40 = add nsw i32 %14, %11
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %2, i64 %41
  store i32 %39, ptr %42, align 4, !tbaa !114
  %43 = load ptr, ptr %10, align 8, !tbaa !231
  %44 = load ptr, ptr %43, align 8, !tbaa !231
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds ptr, ptr %9, i64 1
  %48 = sdiv i32 %14, 2
  tail call fastcc void @multires_load_old_edges(ptr noundef nonnull %47, ptr noundef nonnull %43, ptr noundef %2, i32 noundef %40, i32 noundef %12, i32 noundef %39, i32 noundef %48)
  %49 = load ptr, ptr %10, align 8, !tbaa !231
  %50 = sdiv i32 %14, -2
  br label %8

51:                                               ; preds = %36
  ret void
}

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

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
!34 = !{!35, !37, i64 272}
!35 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !42, i64 280, !42, i64 480, !42, i64 680, !42, i64 880, !42, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !43, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!43 = !{!"float", !38, i64 0}
!44 = !{!45, !37, i64 0}
!45 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !46, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!46 = !{!"long", !38, i64 0}
!47 = !{!35, !41, i64 1300}
!48 = !{!49, !41, i64 16}
!49 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!50 = !{!46, !46, i64 0}
!51 = !{!52, !37, i64 120}
!52 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!53 = !{!49, !37, i64 8}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!37, !37, i64 0}
!58 = distinct !{!58, !55, !56}
!59 = !{!60, !38, i64 115}
!60 = !{!"MultiresModifierData", !49, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!61 = !{!62, !41, i64 432}
!62 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !63, i64 312, !37, i64 360, !64, i64 368, !64, i64 384, !64, i64 400, !64, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !64, i64 1056, !64, i64 1072, !64, i64 1088, !64, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !64, i64 1176, !64, i64 1192, !64, i64 1208, !64, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !46, i64 1304, !46, i64 1312, !41, i64 1320, !41, i64 1324, !64, i64 1328, !64, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !64, i64 1400, !37, i64 1416}
!63 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!64 = !{!"ListBase", !37, i64 0, !37, i64 8}
!65 = !{!60, !38, i64 112}
!66 = !{!60, !38, i64 113}
!67 = !{!60, !38, i64 114}
!68 = !{!62, !37, i64 1296}
!69 = !{!70, !41, i64 1872}
!70 = !{!"CCGDerivedMesh", !71, i64 0, !37, i64 1688, !41, i64 1696, !41, i64 1700, !41, i64 1704, !37, i64 1712, !37, i64 1720, !37, i64 1728, !37, i64 1736, !37, i64 1744, !37, i64 1752, !37, i64 1760, !37, i64 1768, !37, i64 1776, !37, i64 1784, !37, i64 1792, !37, i64 1800, !37, i64 1808, !37, i64 1816, !37, i64 1824, !72, i64 1832, !37, i64 1880}
!71 = !{!"DerivedMesh", !42, i64 0, !42, i64 200, !42, i64 400, !42, i64 600, !42, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!72 = !{!"", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 24, !37, i64 32, !41, i64 40}
!73 = !{!62, !37, i64 128}
!74 = !{!75, !37, i64 104}
!75 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !41, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !41, i64 148, !37, i64 152, !41, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !41, i64 228}
!76 = !{!71, !37, i64 1104}
!77 = !{!71, !37, i64 1168}
!78 = !{!71, !37, i64 1680}
!79 = !{!70, !37, i64 1688}
!80 = !{!71, !37, i64 1464}
!81 = !{!70, !37, i64 1728}
!82 = !{!83, !37, i64 16}
!83 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !37, i64 16}
!84 = !{!43, !43, i64 0}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = distinct !{!88, !55, !56}
!89 = distinct !{!89, !55, !56}
!90 = distinct !{!90, !55, !56}
!91 = !{!70, !37, i64 1720}
!92 = !{!93, !37, i64 8}
!93 = !{!"", !41, i64 0, !41, i64 4, !37, i64 8}
!94 = distinct !{!94, !55, !56}
!95 = distinct !{!95, !55, !56}
!96 = !{!70, !37, i64 1712}
!97 = !{!98, !37, i64 8}
!98 = !{!"", !41, i64 0, !37, i64 8}
!99 = distinct !{!99, !55, !56}
!100 = !{i32 0, i32 2}
!101 = !{!38, !38, i64 0}
!102 = !{!71, !37, i64 1536}
!103 = !{!52, !37, i64 88}
!104 = !{!62, !37, i64 296}
!105 = !{!35, !41, i64 1296}
!106 = !{!35, !37, i64 168}
!107 = !{!108, !41, i64 4}
!108 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!109 = !{!108, !41, i64 0}
!110 = !{!111, !41, i64 0}
!111 = !{!"MDisps", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 16}
!112 = distinct !{!112, !55, !56}
!113 = distinct !{!113, !55, !56}
!114 = !{!41, !41, i64 0}
!115 = !{!111, !41, i64 4}
!116 = distinct !{!116, !55, !56}
!117 = !{!111, !37, i64 8}
!118 = distinct !{!118, !55, !56}
!119 = distinct !{!119, !55, !56}
!120 = distinct !{!120, !55, !56}
!121 = distinct !{!121, !55, !56}
!122 = !{!111, !37, i64 16}
!123 = !{!124, !41, i64 8}
!124 = !{!"GridPaintMask", !37, i64 0, !41, i64 8, !41, i64 12}
!125 = distinct !{!125, !55, !56}
!126 = distinct !{!126, !55, !56}
!127 = !{!124, !37, i64 0}
!128 = distinct !{!128, !55, !56}
!129 = distinct !{!129, !55, !56}
!130 = !{!60, !38, i64 116}
!131 = !{!35, !41, i64 1280}
!132 = !{!71, !37, i64 1528}
!133 = !{!35, !37, i64 232}
!134 = distinct !{!134, !55, !56}
!135 = !{!71, !37, i64 1560}
!136 = distinct !{!136, !55, !56}
!137 = !{!138, !41, i64 8}
!138 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!139 = !{!138, !37, i64 0}
!140 = !{!35, !37, i64 184}
!141 = !{!142, !41, i64 0}
!142 = !{!"MLoop", !41, i64 0, !41, i64 4}
!143 = distinct !{!143, !55, !56}
!144 = distinct !{!144, !55, !56}
!145 = distinct !{!145, !55, !56}
!146 = distinct !{!146, !55, !56}
!147 = distinct !{!147, !55, !56}
!148 = !{!60, !38, i64 117}
!149 = !{!150, !40, i64 116}
!150 = !{!"SubsurfModifierData", !49, i64 0, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !37, i64 120, !37, i64 128}
!151 = !{!150, !40, i64 114}
!152 = !{!150, !40, i64 118}
!153 = !{!71, !37, i64 1440}
!154 = !{!71, !37, i64 1432}
!155 = !{!71, !37, i64 1456}
!156 = !{!157, !41, i64 36}
!157 = !{!"CCGKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!158 = distinct !{!158, !55, !56}
!159 = !{!157, !41, i64 0}
!160 = !{!157, !41, i64 12}
!161 = !{!157, !41, i64 8}
!162 = !{!157, !41, i64 4}
!163 = !{!157, !41, i64 24}
!164 = distinct !{!164, !55, !56}
!165 = distinct !{!165, !55, !56}
!166 = distinct !{!166, !55, !56}
!167 = distinct !{!167, !55, !56}
!168 = distinct !{!168, !55, !56}
!169 = !{!170, !38, i64 18}
!170 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!171 = distinct !{!171, !55, !56}
!172 = distinct !{!172, !55, !56}
!173 = !{!150, !40, i64 112}
!174 = !{!71, !37, i64 1424}
!175 = !{!157, !41, i64 28}
!176 = distinct !{!176, !55, !56}
!177 = distinct !{!177, !55, !56}
!178 = distinct !{!178, !55, !56}
!179 = distinct !{!179, !55, !56}
!180 = distinct !{!180, !55, !56}
!181 = distinct !{!181, !55, !56}
!182 = !{!70, !37, i64 1864}
!183 = !{!70, !37, i64 1832}
!184 = !{!70, !41, i64 1844}
!185 = !{!70, !41, i64 1848}
!186 = !{!62, !37, i64 1288}
!187 = distinct !{!187, !55, !56}
!188 = distinct !{!188, !55, !56}
!189 = distinct !{!189, !55, !56}
!190 = !{!70, !37, i64 1824}
!191 = distinct !{!191, !55, !56}
!192 = distinct !{!192, !55, !56}
!193 = distinct !{!193, !55, !56}
!194 = distinct !{!194, !55, !56}
!195 = distinct !{!195, !55, !56}
!196 = distinct !{!196, !55, !56}
!197 = !{!71, !41, i64 1016}
!198 = distinct !{!198, !55, !56}
!199 = distinct !{!199, !55, !56}
!200 = distinct !{!200, !55, !56}
!201 = distinct !{!201, !55, !56}
!202 = !{!71, !41, i64 1020}
!203 = !{!157, !41, i64 20}
!204 = !{!70, !37, i64 1760}
!205 = !{!60, !37, i64 96}
!206 = !{!70, !41, i64 1840}
!207 = distinct !{!207, !55, !56}
!208 = !{!70, !37, i64 1456}
!209 = distinct !{!209, !55, !56}
!210 = distinct !{!210, !55, !56}
!211 = distinct !{!211, !55, !56}
!212 = !{!35, !41, i64 1288}
!213 = !{!35, !37, i64 208}
!214 = !{!215, !41, i64 12}
!215 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!216 = distinct !{!216, !55, !56}
!217 = distinct !{!217, !55, !56}
!218 = distinct !{!218, !55, !56}
!219 = distinct !{!219, !55, !56}
!220 = distinct !{!220, !55, !56}
!221 = !{!222, !37, i64 0}
!222 = !{!"Multires", !64, i64 0, !37, i64 16, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !38, i64 28, !38, i64 29, !38, i64 30, !38, i64 31, !42, i64 32, !42, i64 232, !37, i64 432, !37, i64 440}
!223 = !{!224, !41, i64 40}
!224 = !{!"MultiresLevel", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56}
!225 = !{!224, !41, i64 44}
!226 = !{!222, !37, i64 432}
!227 = !{!222, !37, i64 440}
!228 = !{!224, !37, i64 16}
!229 = !{!224, !37, i64 32}
!230 = !{!224, !37, i64 24}
!231 = !{!224, !37, i64 0}
!232 = distinct !{!232, !55, !56}
!233 = !{!222, !37, i64 16}
!234 = !{!35, !37, i64 1368}
!235 = !{!224, !41, i64 48}
!236 = !{!35, !41, i64 1284}
!237 = !{!35, !37, i64 240}
!238 = !{!239, !41, i64 0}
!239 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!240 = !{!239, !41, i64 4}
!241 = distinct !{!241, !55, !56}
!242 = !{!215, !41, i64 0}
!243 = !{!215, !41, i64 4}
!244 = !{!215, !41, i64 8}
!245 = !{!246, !38, i64 21}
!246 = !{!"MultiresFace", !38, i64 0, !41, i64 16, !38, i64 20, !38, i64 21, !38, i64 22}
!247 = !{!215, !40, i64 16}
!248 = distinct !{!248, !55, !56}
!249 = !{!222, !41, i64 204}
!250 = !{!222, !37, i64 32}
!251 = !{!252, !41, i64 0}
!252 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96}
!253 = !{!252, !37, i64 96}
!254 = distinct !{!254, !55, !56}
!255 = !{!222, !41, i64 404}
!256 = !{!222, !37, i64 232}
!257 = distinct !{!257, !55, !56}
!258 = !{!259, !43, i64 0}
!259 = !{!"MultiresCol", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!260 = !{!261, !38, i64 0}
!261 = !{!"MCol", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3}
!262 = !{!259, !43, i64 4}
!263 = !{!261, !38, i64 1}
!264 = !{!259, !43, i64 8}
!265 = !{!261, !38, i64 2}
!266 = !{!259, !43, i64 12}
!267 = !{!261, !38, i64 3}
!268 = distinct !{!268, !55, !56}
!269 = distinct !{!269, !55, !56}
!270 = !{!246, !38, i64 20}
!271 = !{!215, !38, i64 19}
!272 = distinct !{!272, !55, !56}
!273 = !{!52, !41, i64 68}
!274 = distinct !{!274, !55, !56}
!275 = !{!222, !38, i64 24}
!276 = distinct !{!276, !55, !56}
!277 = distinct !{!277, !55, !56}
!278 = distinct !{!278, !55, !56}
!279 = !{!224, !37, i64 8}
!280 = distinct !{!280, !55, !56}
!281 = distinct !{!281, !55, !56}
!282 = distinct !{!282, !55, !56}
!283 = distinct !{!283, !55, !56}
!284 = distinct !{!284, !55, !56}
!285 = distinct !{!285, !55, !56}
!286 = distinct !{!286, !55, !56}
!287 = !{!288, !41, i64 16}
!288 = !{!"IndexNode", !37, i64 0, !37, i64 8, !41, i64 16}
!289 = distinct !{!289, !55, !56}
!290 = distinct !{!290, !55, !56}
!291 = distinct !{!291, !55, !56}
!292 = distinct !{!292, !55, !56}
!293 = distinct !{!293, !55, !56}
!294 = !{}
!295 = distinct !{!295, !55, !56}
!296 = distinct !{!296, !55, !56}
!297 = !{!298, !41, i64 8}
!298 = !{!"MultiresEdge", !38, i64 0, !41, i64 8}
!299 = distinct !{!299, !55, !56}
!300 = distinct !{!300, !55, !56}
!301 = distinct !{!301, !55, !56}
!302 = distinct !{!302, !55, !56}
!303 = distinct !{!303, !55, !56}
!304 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 4, !114, i64 20, i64 4, !114, i64 24, i64 4, !114, i64 28, i64 4, !114, i64 32, i64 64, !101, i64 96, i64 8, !57, i64 104, i64 8, !57, i64 112, i64 1, !101, i64 113, i64 1, !101, i64 114, i64 1, !101, i64 115, i64 1, !101, i64 116, i64 1, !101, i64 117, i64 1, !101, i64 118, i64 2, !101}
!305 = distinct !{!305, !55, !56}
!306 = distinct !{!306, !55, !56}
!307 = distinct !{!307, !55, !56}
!308 = distinct !{!308, !55, !56}
!309 = distinct !{!309, !55, !56}
!310 = distinct !{!310, !55, !56}
!311 = distinct !{!311, !55, !56}
!312 = distinct !{!312, !55, !56}
!313 = distinct !{!313, !55, !56}
!314 = distinct !{!314, !55, !56}
!315 = distinct !{!315, !55, !56}
!316 = distinct !{!316, !55, !56}
!317 = !{!246, !41, i64 16}
