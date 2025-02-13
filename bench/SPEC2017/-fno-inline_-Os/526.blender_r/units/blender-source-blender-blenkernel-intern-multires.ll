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
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MDisps = type { i32, i32, ptr, ptr }
%struct.GridPaintMask = type { ptr, i32, i32 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.MLoop = type { i32, i32 }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_customdata_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  tail call void @CustomData_external_remove(ptr noundef nonnull %7, ptr noundef nonnull %0, i32 noundef 19, i32 noundef 0) #20
  %8 = load ptr, ptr %3, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  tail call void @BM_data_layer_free(ptr noundef %8, ptr noundef nonnull %9, i32 noundef 19) #20
  %10 = load ptr, ptr %3, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  tail call void @BM_data_layer_free(ptr noundef %10, ptr noundef nonnull %11, i32 noundef 35) #20
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %15 = load i32, ptr %14, align 4, !tbaa !47
  tail call void @CustomData_external_remove(ptr noundef nonnull %13, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %15) #20
  %16 = load i32, ptr %14, align 4, !tbaa !47
  %17 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %13, i32 noundef 19, i32 noundef %16) #20
  %18 = load i32, ptr %14, align 4, !tbaa !47
  %19 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %13, i32 noundef 35, i32 noundef %18) #20
  br label %20

20:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @CustomData_external_remove(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_multires_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @modifierType_getInfo(i32 noundef %5) #20
  %7 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %8 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %2, i64 noundef %7) #20
  %9 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %6, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr %10(ptr noundef %1, ptr noundef %2, ptr noundef %8, i32 noundef 10) #20
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call ptr @CDDM_copy(ptr noundef %8) #20
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %11, %3 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4, %9
  %13 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !54

16:                                               ; preds = %9, %12, %2
  %17 = phi ptr [ null, %2 ], [ null, %12 ], [ %5, %9 ]
  ret ptr %17
}

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_multires_modifier(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !56
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
  %16 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %7, %13
  %19 = phi ptr [ %15, %13 ], [ %9, %7 ]
  %20 = load ptr, ptr %8, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !57

22:                                               ; preds = %18, %13, %3
  %23 = phi ptr [ null, %3 ], [ %8, %13 ], [ null, %18 ]
  %24 = phi ptr [ null, %3 ], [ %15, %13 ], [ %19, %18 ]
  %25 = icmp eq ptr %23, null
  %26 = icmp ne i8 %2, 0
  %27 = and i1 %26, %25
  %28 = select i1 %27, ptr %24, ptr %23
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @multires_set_tot_level(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = trunc i32 %2 to i8
  %5 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 4
  store i8 %4, ptr %5, align 1, !tbaa !58
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = and i32 %2, 255
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !64
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, %2
  %16 = tail call i32 @llvm.smax.i32(i32 %14, i32 %2)
  %17 = and i32 %2, 255
  %18 = icmp ugt i32 %16, %17
  %19 = select i1 %15, i8 %13, i8 %4
  %20 = select i1 %18, i8 %4, i8 %19
  store i8 %20, ptr %12, align 8, !tbaa !64
  br label %21

21:                                               ; preds = %9, %11
  %22 = phi i32 [ %10, %9 ], [ %17, %11 ]
  %23 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !65
  %25 = zext i8 %24 to i32
  %26 = icmp sgt i32 %25, %2
  %27 = tail call i32 @llvm.smax.i32(i32 %25, i32 %2)
  %28 = icmp ugt i32 %27, %22
  %29 = select i1 %26, i8 %24, i8 %4
  %30 = select i1 %28, i8 %4, i8 %29
  store i8 %30, ptr %23, align 1, !tbaa !65
  %31 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 3
  %32 = load i8, ptr %31, align 2, !tbaa !66
  %33 = zext i8 %32 to i32
  %34 = icmp sgt i32 %33, %2
  %35 = tail call i32 @llvm.smax.i32(i32 %33, i32 %2)
  %36 = icmp ugt i32 %35, %22
  %37 = select i1 %34, i8 %32, i8 %4
  %38 = select i1 %36, i8 %4, i8 %37
  store i8 %38, ptr %31, align 2, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @multires_mark_as_modified(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @multires_dm_mark_as_modified(ptr noundef nonnull %6, i32 noundef %1) #21
  br label %9

9:                                                ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @multires_dm_mark_as_modified(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_force_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %0) #20
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
  tail call void @BKE_pbvh_free(ptr noundef nonnull %9) #20
  %12 = load ptr, ptr %4, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  store ptr null, ptr %13, align 8, !tbaa !74
  br label %14

14:                                               ; preds = %3, %7, %11, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_force_external_reload(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !47
  tail call void @CustomData_external_reload(ptr noundef nonnull %3, ptr noundef %2, i64 noundef 524288, i32 noundef %5) #20
  tail call void @multires_force_update(ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_external_reload(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_force_render_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @modifiers_findByType(ptr noundef nonnull %0, i32 noundef 29) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @multires_force_update(ptr noundef nonnull %0) #21
  br label %12

12:                                               ; preds = %11, %8, %3, %1
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @multiresModifier_reshapeFromDM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @get_multires_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = tail call i32 %11(ptr noundef nonnull %5) #20
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = tail call i32 %14(ptr noundef nonnull %3) #20
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 31
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = tail call ptr %19(ptr noundef nonnull %3) #20
  tail call fastcc void @multires_mvert_to_ss(ptr noundef nonnull %5, ptr noundef %20) #21
  tail call fastcc void @multires_dm_mark_as_modified(ptr noundef nonnull %5, i32 noundef 1) #21
  tail call void @multires_force_update(ptr noundef %2) #21
  br label %22

21:                                               ; preds = %4
  br i1 %6, label %22, label %26

22:                                               ; preds = %21, %9, %17
  %23 = phi i32 [ 1, %17 ], [ 0, %9 ], [ 0, %21 ]
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 95
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  tail call void %25(ptr noundef nonnull %5) #20
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i32 [ 0, %21 ], [ %23, %22 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_mvert_to_ss(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #20
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #20
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 68
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  call void %9(ptr noundef %0, ptr noundef nonnull %3) #20
  %10 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %5) #20
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %76

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %14 = add i32 %6, -1
  %15 = icmp sgt i32 %6, 2
  %16 = zext nneg i32 %10 to i64
  br label %17

17:                                               ; preds = %12, %72
  %18 = phi i64 [ 0, %12 ], [ %74, %72 ]
  %19 = phi i32 [ 0, %12 ], [ %73, %72 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.anon.0, ptr %20, i64 %18, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %22) #20
  %24 = call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %22) #20
  %25 = sext i32 %19 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %1, i64 %25
  call fastcc void @copy_v3_v3(ptr noundef %24, ptr noundef %26) #21
  %27 = add nsw i32 %19, 1
  %28 = icmp sgt i32 %23, 0
  br i1 %28, label %30, label %72

29:                                               ; preds = %45
  br i1 %28, label %49, label %72

30:                                               ; preds = %17, %45
  %31 = phi i32 [ %46, %45 ], [ %27, %17 ]
  %32 = phi i32 [ %47, %45 ], [ 0, %17 ]
  br i1 %15, label %33, label %45

33:                                               ; preds = %30
  %34 = sext i32 %31 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ %34, %33 ], [ %41, %35 ]
  %37 = phi i32 [ 1, %33 ], [ %40, %35 ]
  %38 = call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %5, ptr noundef %22, i32 noundef %32, i32 noundef %37) #20
  %39 = getelementptr inbounds %struct.MVert, ptr %1, i64 %36
  call fastcc void @copy_v3_v3(ptr noundef %38, ptr noundef %39) #21
  %40 = add nuw nsw i32 %37, 1
  %41 = add nsw i64 %36, 1
  %42 = icmp eq i32 %40, %14
  br i1 %42, label %43, label %35, !llvm.loop !85

43:                                               ; preds = %35
  %44 = trunc i64 %41 to i32
  br label %45

45:                                               ; preds = %43, %30
  %46 = phi i32 [ %31, %30 ], [ %44, %43 ]
  %47 = add nuw nsw i32 %32, 1
  %48 = icmp eq i32 %47, %23
  br i1 %48, label %29, label %30, !llvm.loop !86

49:                                               ; preds = %29, %68
  %50 = phi i32 [ %69, %68 ], [ %46, %29 ]
  %51 = phi i32 [ %70, %68 ], [ 0, %29 ]
  br i1 %15, label %52, label %68

52:                                               ; preds = %49, %64
  %53 = phi i32 [ %65, %64 ], [ %50, %49 ]
  %54 = phi i32 [ %66, %64 ], [ 1, %49 ]
  %55 = sext i32 %53 to i64
  br label %56

56:                                               ; preds = %52, %56
  %57 = phi i64 [ %55, %52 ], [ %62, %56 ]
  %58 = phi i32 [ 1, %52 ], [ %61, %56 ]
  %59 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %5, ptr noundef %22, i32 noundef %51, i32 noundef %58, i32 noundef %54) #20
  %60 = getelementptr inbounds %struct.MVert, ptr %1, i64 %57
  call fastcc void @copy_v3_v3(ptr noundef %59, ptr noundef %60) #21
  %61 = add nuw nsw i32 %58, 1
  %62 = add nsw i64 %57, 1
  %63 = icmp eq i32 %61, %14
  br i1 %63, label %64, label %56, !llvm.loop !87

64:                                               ; preds = %56
  %65 = trunc i64 %62 to i32
  %66 = add nuw nsw i32 %54, 1
  %67 = icmp eq i32 %66, %14
  br i1 %67, label %68, label %52, !llvm.loop !88

68:                                               ; preds = %64, %49
  %69 = phi i32 [ %50, %49 ], [ %65, %64 ]
  %70 = add nuw nsw i32 %51, 1
  %71 = icmp eq i32 %70, %23
  br i1 %71, label %72, label %49, !llvm.loop !89

72:                                               ; preds = %68, %17, %29
  %73 = phi i32 [ %46, %29 ], [ %27, %17 ], [ %69, %68 ]
  %74 = add nuw nsw i64 %18, 1
  %75 = icmp eq i64 %74, %16
  br i1 %75, label %76, label %17, !llvm.loop !90

76:                                               ; preds = %72, %2
  %77 = phi i32 [ 0, %2 ], [ %73, %72 ]
  %78 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %5) #20
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %82 = icmp sgt i32 %7, 2
  %83 = zext nneg i32 %78 to i64
  %84 = add nsw i32 %7, -2
  br label %85

85:                                               ; preds = %80, %103
  %86 = phi i64 [ 0, %80 ], [ %105, %103 ]
  %87 = phi i32 [ %77, %80 ], [ %104, %103 ]
  %88 = load ptr, ptr %81, align 8, !tbaa !91
  %89 = getelementptr inbounds %struct.anon.1, ptr %88, i64 %86, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !92
  br i1 %82, label %91, label %103

91:                                               ; preds = %85
  %92 = sext i32 %87 to i64
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i64 [ %92, %91 ], [ %99, %93 ]
  %95 = phi i32 [ 1, %91 ], [ %98, %93 ]
  %96 = call ptr @ccgSubSurf_getEdgeData(ptr noundef %5, ptr noundef %90, i32 noundef %95) #20
  %97 = getelementptr inbounds %struct.MVert, ptr %1, i64 %94
  call fastcc void @copy_v3_v3(ptr noundef %96, ptr noundef %97) #21
  %98 = add nuw nsw i32 %95, 1
  %99 = add nsw i64 %94, 1
  %100 = icmp eq i32 %95, %84
  br i1 %100, label %101, label %93, !llvm.loop !94

101:                                              ; preds = %93
  %102 = trunc i64 %99 to i32
  br label %103

103:                                              ; preds = %101, %85
  %104 = phi i32 [ %87, %85 ], [ %102, %101 ]
  %105 = add nuw nsw i64 %86, 1
  %106 = icmp eq i64 %105, %83
  br i1 %106, label %107, label %85, !llvm.loop !95

107:                                              ; preds = %103, %76
  %108 = phi i32 [ %77, %76 ], [ %104, %103 ]
  %109 = call i32 @ccgSubSurf_getNumVerts(ptr noundef %5) #20
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %113 = sext i32 %108 to i64
  %114 = zext nneg i32 %109 to i64
  br label %115

115:                                              ; preds = %111, %115
  %116 = phi i64 [ %113, %111 ], [ %123, %115 ]
  %117 = phi i64 [ 0, %111 ], [ %124, %115 ]
  %118 = load ptr, ptr %112, align 8, !tbaa !96
  %119 = getelementptr inbounds %struct.anon.2, ptr %118, i64 %117, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !97
  %121 = call ptr @ccgSubSurf_getVertData(ptr noundef %5, ptr noundef %120) #20
  %122 = getelementptr inbounds %struct.MVert, ptr %1, i64 %116
  call fastcc void @copy_v3_v3(ptr noundef %121, ptr noundef %122) #21
  %123 = add nsw i64 %116, 1
  %124 = add nuw nsw i64 %117, 1
  %125 = icmp eq i64 %124, %114
  br i1 %125, label %126, label %115, !llvm.loop !99

126:                                              ; preds = %115, %107
  %127 = call i32 @ccgSubSurf_updateToFaces(ptr noundef %5, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @multiresModifier_reshape(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %6 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %3, i64 noundef %5) #20
  %7 = tail call i32 @multiresModifier_reshapeFromDM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6) #21, !range !100
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @multiresModifier_reshapeFromDeformMod(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @modifierType_getInfo(i32 noundef %6) #20
  %8 = tail call fastcc i32 @multires_get_level(ptr noundef %2, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @get_multires_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = tail call i32 %13(ptr noundef %11) #20
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %16 = sext i32 %14 to i64
  %17 = mul nsw i64 %16, 12
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str) #20
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 77
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  tail call void %20(ptr noundef %11, ptr noundef %18) #20
  %21 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  tail call void %22(ptr noundef nonnull %3, ptr noundef %2, ptr noundef %11, ptr noundef %18, i32 noundef %14, i32 noundef 0) #20
  %23 = tail call ptr @CDDM_copy(ptr noundef %11) #20
  tail call void @CDDM_apply_vert_coords(ptr noundef %23, ptr noundef %18) #20
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %24(ptr noundef %18) #20
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  tail call void %26(ptr noundef %11) #20
  %27 = tail call i32 @multiresModifier_reshapeFromDM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %23) #21, !range !100
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  tail call void %29(ptr noundef %23) #20
  br label %30

30:                                               ; preds = %4, %10
  %31 = phi i32 [ %27, %10 ], [ 0, %4 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @multires_get_level(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !103 {
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22
  %12 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 3
  %13 = load i8, ptr %12, align 2, !tbaa !66
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %11, i32 noundef %14) #20
  br label %48

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 3
  %18 = load i8, ptr %17, align 2, !tbaa !66
  %19 = zext i8 %18 to i32
  br label %48

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !60
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 2
  %26 = load i8, ptr %25, align 1, !tbaa !65
  %27 = zext i8 %26 to i32
  br label %48

28:                                               ; preds = %20
  %29 = icmp eq i8 %3, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %32 = load i8, ptr %31, align 8, !tbaa !64
  %33 = zext i8 %32 to i32
  br label %48

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 22
  %40 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !64
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %39, i32 noundef %42) #20
  br label %48

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !64
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %38, %44, %10, %16, %30, %24
  %49 = phi i32 [ %27, %24 ], [ %33, %30 ], [ %15, %10 ], [ %19, %16 ], [ %43, %38 ], [ %47, %44 ]
  ret i32 %49
}

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multiresModifier_set_levels_from_disps(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !105
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
  %15 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %14, i32 noundef 19) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @get_levels_from_disps(ptr noundef nonnull %1) #21
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  store i8 %19, ptr %20, align 1, !tbaa !58
  %21 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 2
  %22 = load i8, ptr %21, align 1, !tbaa !65
  %23 = zext i8 %22 to i32
  %24 = and i32 %18, 255
  %25 = icmp ugt i32 %24, %23
  %26 = select i1 %25, i8 %22, i8 %19
  %27 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 1
  store i8 %26, ptr %27, align 8, !tbaa !64
  %28 = tail call i8 @llvm.umin.i8(i8 %22, i8 %19)
  store i8 %28, ptr %21, align 1, !tbaa !65
  %29 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 3
  %30 = load i8, ptr %29, align 2, !tbaa !66
  %31 = tail call i8 @llvm.umin.i8(i8 %30, i8 %19)
  store i8 %31, ptr %29, align 2, !tbaa !66
  br label %32

32:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_levels_from_disps(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 25
  %5 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %4, i32 noundef 19) #20
  %6 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %43
  %14 = phi i64 [ 0, %9 ], [ %45, %43 ]
  %15 = phi i32 [ 0, %9 ], [ %44, %43 ]
  %16 = getelementptr inbounds %struct.MPoly, ptr %11, i64 %14, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !109
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.MPoly, ptr %11, i64 %14
  %21 = load i32, ptr %20, align 4, !tbaa !111
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.MDisps, ptr %5, i64 %22
  br label %24

24:                                               ; preds = %19, %39
  %25 = phi ptr [ %41, %39 ], [ %23, %19 ]
  %26 = phi i32 [ %40, %39 ], [ 0, %19 ]
  %27 = load i32, ptr %25, align 8, !tbaa !112
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24, %29
  %30 = phi i32 [ %38, %29 ], [ %15, %24 ]
  %31 = add nsw i32 %30, -1
  %32 = shl nuw i32 1, %31
  %33 = add nuw nsw i32 %32, 1
  %34 = mul nsw i32 %33, %33
  %35 = icmp eq i32 %27, %34
  %36 = icmp slt i32 %27, %34
  %37 = add nsw i32 %30, 1
  %38 = select i1 %36, i32 %31, i32 %37
  br i1 %35, label %43, label %29

39:                                               ; preds = %24
  %40 = add nuw nsw i32 %26, 1
  %41 = getelementptr inbounds %struct.MDisps, ptr %25, i64 1
  %42 = icmp eq i32 %40, %17
  br i1 %42, label %43, label %24, !llvm.loop !114

43:                                               ; preds = %39, %29, %13
  %44 = phi i32 [ %15, %13 ], [ %30, %29 ], [ %15, %39 ]
  %45 = add nuw nsw i64 %14, 1
  %46 = icmp eq i64 %45, %12
  br i1 %46, label %47, label %13, !llvm.loop !115

47:                                               ; preds = %43, %1
  %48 = phi i32 [ 0, %1 ], [ %44, %43 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multiresModifier_del_levels(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #20
  %5 = tail call fastcc i32 @multires_get_level(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #21
  %6 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !58
  %8 = zext i8 %7 to i32
  tail call fastcc void @multires_set_tot_mdisps(ptr noundef %4, i32 noundef %8) #21
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25
  %10 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 31
  %11 = load i32, ptr %10, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %9, ptr noundef %4, i64 noundef 524288, i32 noundef %11) #20
  %12 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 19) #20
  tail call void @multires_force_update(ptr noundef %1) #21
  %13 = icmp ne ptr %12, null
  %14 = icmp slt i32 %5, %8
  %15 = select i1 %13, i1 %14, i1 false
  %16 = icmp eq i32 %2, 1
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  tail call fastcc void @multires_del_higher(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %5) #21
  br label %19

19:                                               ; preds = %18, %3
  tail call void @multires_set_tot_level(ptr noundef %1, ptr noundef nonnull %0, i32 noundef %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_set_tot_mdisps(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef 19) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !117
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ 0, %10 ], [ %18, %14 ]
  %16 = phi ptr [ %4, %10 ], [ %19, %14 ]
  store i32 %13, ptr %16, align 8, !tbaa !112
  %17 = getelementptr inbounds %struct.MDisps, ptr %16, i64 0, i32 1
  store i32 %1, ptr %17, align 4, !tbaa !118
  %18 = add nuw nsw i32 %15, 1
  %19 = getelementptr inbounds %struct.MDisps, ptr %16, i64 1
  %20 = icmp eq i32 %18, %8
  br i1 %20, label %21, label %14, !llvm.loop !119

21:                                               ; preds = %14, %6, %2
  ret void
}

; Function Attrs: optsize
declare void @CustomData_external_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_del_higher(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !120 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !58
  %8 = zext i8 %7 to i32
  tail call fastcc void @multires_set_tot_mdisps(ptr noundef %5, i32 noundef %8) #21
  %9 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 31
  %11 = load i32, ptr %10, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %9, ptr noundef %5, i64 noundef 524288, i32 noundef %11) #20
  %12 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 19) #20
  %13 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 35) #20
  tail call void @multires_force_update(ptr noundef %1) #21
  %14 = icmp ne ptr %12, null
  %15 = icmp sgt i32 %8, %2
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %88

17:                                               ; preds = %3
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %87

19:                                               ; preds = %17
  %20 = zext nneg i32 %2 to i64
  %21 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !117
  %23 = load i8, ptr %6, align 1, !tbaa !58
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !117
  %27 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %28 = load i32, ptr %27, align 8, !tbaa !107
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %88

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 7
  %32 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %20
  %33 = icmp eq ptr %13, null
  %34 = load ptr, ptr %31, align 8, !tbaa !108
  br label %35

35:                                               ; preds = %30, %81
  %36 = phi i32 [ %28, %30 ], [ %82, %81 ]
  %37 = phi ptr [ %34, %30 ], [ %83, %81 ]
  %38 = phi i64 [ 0, %30 ], [ %84, %81 ]
  %39 = getelementptr inbounds %struct.MPoly, ptr %37, i64 %38, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !109
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %35
  %43 = load i32, ptr %32, align 4, !tbaa !117
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, 12
  br label %46

46:                                               ; preds = %42, %73
  %47 = phi ptr [ %37, %42 ], [ %75, %73 ]
  %48 = phi i32 [ 0, %42 ], [ %74, %73 ]
  %49 = getelementptr inbounds %struct.MPoly, ptr %47, i64 %38
  %50 = load i32, ptr %49, align 4, !tbaa !111
  %51 = add nsw i32 %50, %48
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.MDisps, ptr %12, i64 %52
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %55 = tail call ptr %54(i64 noundef %45, ptr noundef nonnull @.str.10) #20
  %56 = getelementptr inbounds %struct.MDisps, ptr %12, i64 %52, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !121
  tail call fastcc void @multires_copy_grid(ptr noundef %55, ptr noundef %57, i32 noundef %22, i32 noundef %26) #21
  %58 = getelementptr inbounds %struct.MDisps, ptr %12, i64 %52, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !122
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.MDisps, ptr %12, i64 %52, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !118
  %64 = tail call fastcc ptr @multires_mdisps_downsample_hidden(ptr noundef nonnull %59, i32 noundef %63, i32 noundef %2) #21
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %66 = load ptr, ptr %58, align 8, !tbaa !122
  tail call void %65(ptr noundef %66) #20
  store ptr %64, ptr %58, align 8, !tbaa !122
  br label %67

67:                                               ; preds = %61, %46
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %69 = load ptr, ptr %56, align 8, !tbaa !121
  tail call void %68(ptr noundef %69) #20
  store ptr %55, ptr %56, align 8, !tbaa !121
  store i32 %43, ptr %53, align 8, !tbaa !112
  %70 = getelementptr inbounds %struct.MDisps, ptr %12, i64 %52, i32 1
  store i32 %2, ptr %70, align 4, !tbaa !118
  br i1 %33, label %73, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.GridPaintMask, ptr %13, i64 %52
  tail call fastcc void @multires_grid_paint_mask_downsample(ptr noundef nonnull %72, i32 noundef %2) #21
  br label %73

73:                                               ; preds = %71, %67
  %74 = add nuw nsw i32 %48, 1
  %75 = load ptr, ptr %31, align 8, !tbaa !108
  %76 = getelementptr inbounds %struct.MPoly, ptr %75, i64 %38, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !109
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %46, label %79, !llvm.loop !123

79:                                               ; preds = %73
  %80 = load i32, ptr %27, align 8, !tbaa !107
  br label %81

81:                                               ; preds = %79, %35
  %82 = phi i32 [ %80, %79 ], [ %36, %35 ]
  %83 = phi ptr [ %75, %79 ], [ %37, %35 ]
  %84 = add nuw nsw i64 %38, 1
  %85 = sext i32 %82 to i64
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %35, label %88, !llvm.loop !124

87:                                               ; preds = %17
  tail call void @multires_customdata_delete(ptr noundef nonnull %5) #21
  br label %88

88:                                               ; preds = %81, %19, %87, %3
  tail call void @multires_set_tot_level(ptr noundef %1, ptr noundef %0, i32 noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multiresModifier_base_apply(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.MPoly, align 4
  %7 = alloca [3 x float], align 4
  tail call void @multires_force_update(ptr noundef %1) #21
  %8 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %10 = load i8, ptr %9, align 1, !tbaa !58
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %201, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @CDDM_from_mesh(ptr noundef %8) #20
  %15 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %14, i64 noundef %15) #20
  %16 = tail call fastcc ptr @multires_dm_create_local(ptr noundef %1, ptr noundef %14, i32 noundef %11, i32 noundef %11, i32 noundef 0, i8 noundef zeroext 0) #21
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 95
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void %18(ptr noundef %14) #20
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = tail call i32 %20(ptr noundef %16) #20
  %22 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 26
  %23 = load i32, ptr %22, align 8, !tbaa !125
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %13
  %26 = sub i32 %21, %23
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 76
  %28 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 15
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ 0, %25 ], [ %36, %29 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !126
  %32 = load ptr, ptr %28, align 8, !tbaa !127
  %33 = getelementptr inbounds %struct.MVert, ptr %32, i64 %30
  %34 = trunc i64 %30 to i32
  %35 = add i32 %26, %34
  tail call void %31(ptr noundef nonnull %16, i32 noundef %35, ptr noundef %33) #20
  %36 = add nuw nsw i64 %30, 1
  %37 = load i32, ptr %22, align 8, !tbaa !125
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %29, label %40, !llvm.loop !128

40:                                               ; preds = %29, %13
  %41 = tail call ptr @CDDM_from_mesh(ptr noundef nonnull %8) #20
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 80
  %43 = load ptr, ptr %42, align 8, !tbaa !129
  %44 = tail call ptr %43(ptr noundef %1, ptr noundef %41) #20
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %46 = load i32, ptr %22, align 8, !tbaa !125
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 12
  %49 = tail call ptr %45(i64 noundef %48, ptr noundef nonnull @.str.1) #20
  %50 = load i32, ptr %22, align 8, !tbaa !125
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %182

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 15
  br label %61

54:                                               ; preds = %61
  %55 = icmp sgt i32 %67, 0
  br i1 %55, label %56, label %182

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 7
  %58 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 9
  %59 = getelementptr inbounds %struct.MPoly, ptr %6, i64 0, i32 1
  %60 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 15
  br label %70

61:                                               ; preds = %52, %61
  %62 = phi i64 [ 0, %52 ], [ %66, %61 ]
  %63 = getelementptr inbounds [3 x float], ptr %49, i64 %62
  %64 = load ptr, ptr %53, align 8, !tbaa !127
  %65 = getelementptr inbounds %struct.MVert, ptr %64, i64 %62
  tail call fastcc void @copy_v3_v3(ptr noundef %63, ptr noundef %65) #21
  %66 = add nuw nsw i64 %62, 1
  %67 = load i32, ptr %22, align 8, !tbaa !125
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %61, label %54, !llvm.loop !130

70:                                               ; preds = %56, %177
  %71 = phi i32 [ %67, %56 ], [ %178, %177 ]
  %72 = phi i64 [ 0, %56 ], [ %179, %177 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %73 = getelementptr inbounds %struct.MeshElemMap, ptr %44, i64 %72
  %74 = getelementptr inbounds %struct.MeshElemMap, ptr %44, i64 %72, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !131
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %177, label %77

77:                                               ; preds = %70
  %78 = icmp sgt i32 %75, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef 0x7FF0000000000000) #21
  br label %172

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !108
  %82 = load ptr, ptr %73, align 8, !tbaa !133
  %83 = zext nneg i32 %75 to i64
  br label %84

84:                                               ; preds = %80, %115
  %85 = phi i64 [ 0, %80 ], [ %117, %115 ]
  %86 = phi i32 [ 0, %80 ], [ %116, %115 ]
  %87 = getelementptr inbounds i32, ptr %82, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !117
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.MPoly, ptr %81, i64 %89, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !109
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.MPoly, ptr %81, i64 %89
  %95 = load ptr, ptr %58, align 8, !tbaa !134
  %96 = load i32, ptr %94, align 4, !tbaa !111
  %97 = sext i32 %96 to i64
  %98 = zext nneg i32 %91 to i64
  %99 = getelementptr %struct.MLoop, ptr %95, i64 %97
  br label %100

100:                                              ; preds = %93, %111
  %101 = phi i64 [ 0, %93 ], [ %113, %111 ]
  %102 = phi i32 [ %86, %93 ], [ %112, %111 ]
  %103 = getelementptr %struct.MLoop, ptr %99, i64 %101
  %104 = load i32, ptr %103, align 4, !tbaa !135
  %105 = zext i32 %104 to i64
  %106 = icmp eq i64 %72, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = sext i32 %104 to i64
  %109 = getelementptr inbounds [3 x float], ptr %49, i64 %108
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %109) #21
  %110 = add nsw i32 %102, 1
  br label %111

111:                                              ; preds = %107, %100
  %112 = phi i32 [ %110, %107 ], [ %102, %100 ]
  %113 = add nuw nsw i64 %101, 1
  %114 = icmp eq i64 %113, %98
  br i1 %114, label %115, label %100, !llvm.loop !137

115:                                              ; preds = %111, %84
  %116 = phi i32 [ %86, %84 ], [ %112, %111 ]
  %117 = add nuw nsw i64 %85, 1
  %118 = icmp eq i64 %117, %83
  br i1 %118, label %119, label %84, !llvm.loop !138

119:                                              ; preds = %115
  %120 = sitofp i32 %116 to float
  %121 = fdiv float 1.000000e+00, %120
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %121) #21
  br i1 %78, label %122, label %172

122:                                              ; preds = %119, %165
  %123 = phi i64 [ %168, %165 ], [ 0, %119 ]
  %124 = load ptr, ptr %57, align 8, !tbaa !108
  %125 = load ptr, ptr %73, align 8, !tbaa !133
  %126 = getelementptr inbounds i32, ptr %125, i64 %123
  %127 = load i32, ptr %126, align 4, !tbaa !117
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.MPoly, ptr %124, i64 %128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %130 = getelementptr inbounds %struct.MPoly, ptr %124, i64 %128, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !109
  store i32 %131, ptr %59, align 4, !tbaa !109
  store i32 0, ptr %6, align 4, !tbaa !111
  %132 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %133 = sext i32 %131 to i64
  %134 = shl nsw i64 %133, 3
  %135 = call ptr %132(i64 noundef %134, ptr noundef nonnull @.str.2) #20
  %136 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %137 = load i32, ptr %130, align 4, !tbaa !109
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, 12
  %140 = call ptr %136(i64 noundef %139, ptr noundef nonnull @.str.3) #20
  %141 = load i32, ptr %130, align 4, !tbaa !109
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %122, %160
  %144 = phi i64 [ %161, %160 ], [ 0, %122 ]
  %145 = load ptr, ptr %58, align 8, !tbaa !134
  %146 = load i32, ptr %129, align 4, !tbaa !111
  %147 = trunc i64 %144 to i32
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.MLoop, ptr %145, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !135
  %152 = getelementptr inbounds %struct.MLoop, ptr %135, i64 %144
  store i32 %147, ptr %152, align 4, !tbaa !135
  %153 = zext i32 %151 to i64
  %154 = icmp eq i64 %72, %153
  %155 = getelementptr inbounds [3 x float], ptr %140, i64 %144
  br i1 %154, label %156, label %157

156:                                              ; preds = %143
  call fastcc void @copy_v3_v3(ptr noundef %155, ptr noundef nonnull %4) #21
  br label %160

157:                                              ; preds = %143
  %158 = sext i32 %151 to i64
  %159 = getelementptr inbounds [3 x float], ptr %49, i64 %158
  call fastcc void @copy_v3_v3(ptr noundef %155, ptr noundef %159) #21
  br label %160

160:                                              ; preds = %157, %156
  %161 = add nuw nsw i64 %144, 1
  %162 = load i32, ptr %130, align 4, !tbaa !109
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %143, label %165, !llvm.loop !139

165:                                              ; preds = %160, %122
  call void @BKE_mesh_calc_poly_normal_coords(ptr noundef nonnull %6, ptr noundef %135, ptr noundef %140, ptr noundef nonnull %7) #20
  %166 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %166(ptr noundef %135) #20
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %167(ptr noundef %140) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  %168 = add nuw nsw i64 %123, 1
  %169 = load i32, ptr %74, align 8, !tbaa !131
  %170 = sext i32 %169 to i64
  %171 = icmp slt i64 %168, %170
  br i1 %171, label %122, label %172, !llvm.loop !140

172:                                              ; preds = %165, %79, %119
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #21
  %173 = load ptr, ptr %60, align 8, !tbaa !127
  %174 = getelementptr inbounds %struct.MVert, ptr %173, i64 %72
  %175 = call fastcc float @v3_dist_from_plane(ptr noundef %174, ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %175) #21
  call fastcc void @add_v3_v3(ptr noundef %174, ptr noundef nonnull %5) #21
  %176 = load i32, ptr %22, align 8, !tbaa !125
  br label %177

177:                                              ; preds = %70, %172
  %178 = phi i32 [ %71, %70 ], [ %176, %172 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  %179 = add nuw nsw i64 %72, 1
  %180 = sext i32 %178 to i64
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %70, label %182, !llvm.loop !141

182:                                              ; preds = %177, %40, %54
  %183 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %183(ptr noundef %49) #20
  %184 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 95
  %185 = load ptr, ptr %184, align 8, !tbaa !78
  call void %185(ptr noundef %41) #20
  call void @BKE_mesh_calc_normals(ptr noundef nonnull %8) #20
  %186 = call ptr @CDDM_from_mesh(ptr noundef nonnull %8) #20
  call void @DM_set_only_copy(ptr noundef %186, i64 noundef %15) #20
  %187 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 6
  %188 = load i8, ptr %187, align 1, !tbaa !142
  %189 = and i8 %188, 2
  %190 = zext nneg i8 %189 to i32
  %191 = call fastcc ptr @subsurf_dm_create_local(ptr noundef %1, ptr noundef %186, i32 noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef %190, i32 noundef 0) #21
  %192 = getelementptr inbounds %struct.DerivedMesh, ptr %186, i64 0, i32 95
  %193 = load ptr, ptr %192, align 8, !tbaa !78
  call void %193(ptr noundef %186) #20
  %194 = getelementptr inbounds %struct.DerivedMesh, ptr %191, i64 0, i32 65
  %195 = load ptr, ptr %194, align 8, !tbaa !143
  %196 = call ptr %195(ptr noundef %191) #20
  call fastcc void @multiresModifier_disp_run(ptr noundef %16, ptr noundef nonnull %8, ptr noundef null, i32 noundef 1, ptr noundef %196, i32 noundef %11) #21
  %197 = getelementptr inbounds %struct.DerivedMesh, ptr %191, i64 0, i32 95
  %198 = load ptr, ptr %197, align 8, !tbaa !78
  call void %198(ptr noundef %191) #20
  %199 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 95
  %200 = load ptr, ptr %199, align 8, !tbaa !78
  call void %200(ptr noundef %16) #20
  br label %201

201:                                              ; preds = %2, %182
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @multires_dm_create_local(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !144 {
  %7 = alloca %struct.MultiresModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, i8 0, i64 120, i1 false)
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 1
  store i8 %8, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 2
  store i8 %8, ptr %10, align 1, !tbaa !65
  %11 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 3
  store i8 %8, ptr %11, align 2, !tbaa !66
  %12 = trunc i32 %3 to i8
  %13 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 4
  store i8 %12, ptr %13, align 1, !tbaa !58
  %14 = trunc i32 %4 to i8
  %15 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 5
  store i8 %14, ptr %15, align 4, !tbaa !145
  %16 = icmp eq i8 %5, 0
  %17 = select i1 %16, i32 1, i32 5
  %18 = call ptr @multires_make_derived_from_derived(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %0, i32 noundef %17) #21
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #22
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !146 {
  %3 = load float, ptr %1, align 4, !tbaa !147
  store float %3, ptr %0, align 4, !tbaa !147
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !147
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !147
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !147
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !148 {
  %3 = load float, ptr %1, align 4, !tbaa !147
  %4 = load float, ptr %0, align 4, !tbaa !147
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !147
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !147
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !147
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !147
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !147
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !147
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !149 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !147
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !147
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !147
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !147
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_poly_normal_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !150 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @v3_dist_from_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !151 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #21
  %5 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret float %5
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @subsurf_dm_create_local(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !152 {
  %8 = alloca %struct.SubsurfModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %8, i8 0, i64 136, i1 false)
  %9 = trunc i32 %2 to i16
  %10 = getelementptr inbounds %struct.SubsurfModifierData, ptr %8, i64 0, i32 3
  store i16 %9, ptr %10, align 4, !tbaa !153
  %11 = getelementptr inbounds %struct.SubsurfModifierData, ptr %8, i64 0, i32 2
  store i16 %9, ptr %11, align 2, !tbaa !155
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.SubsurfModifierData, ptr %8, i64 0, i32 4
  store i16 8, ptr %14, align 2, !tbaa !156
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i16 [ 12, %13 ], [ 4, %7 ]
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.SubsurfModifierData, ptr %8, i64 0, i32 1
  store i16 1, ptr %19, align 8, !tbaa !157
  br label %20

20:                                               ; preds = %18, %15
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.SubsurfModifierData, ptr %8, i64 0, i32 4
  store i16 %16, ptr %23, align 2, !tbaa !156
  br label %24

24:                                               ; preds = %22, %20
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %26 = load i32, ptr %25, align 8, !tbaa !60
  %27 = shl i32 %26, 3
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %6, 0
  %30 = or disjoint i32 %28, 16
  %31 = select i1 %29, i32 %28, i32 %30
  %32 = call ptr @subsurf_make_derived_from_derived(ptr noundef %1, ptr noundef nonnull %8, ptr noundef null, i32 noundef %31) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #22
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multiresModifier_disp_run(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !158 {
  %7 = alloca %struct.CCGKey, align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %11 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %14 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 19) #20
  %15 = icmp eq ptr %2, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %18 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %17, i32 noundef 19) #20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %22 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 25) #20
  %23 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %17, i32 noundef 19) #20
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
  %34 = load i32, ptr %31, align 4, !tbaa !117
  %35 = load i32, ptr %30, align 8, !tbaa !117
  %36 = icmp eq ptr %32, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = icmp eq i32 %3, 1
  br i1 %38, label %39, label %192

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %41 = load i32, ptr %40, align 4, !tbaa !47
  %42 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %13, i32 noundef 19, i32 noundef 2, ptr noundef null, i32 noundef %41) #20
  br label %43

43:                                               ; preds = %39, %29
  %44 = phi ptr [ %32, %29 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 64
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = tail call i32 %46(ptr noundef %0) #20
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 65
  %49 = load ptr, ptr %48, align 8, !tbaa !143
  %50 = tail call ptr %49(ptr noundef %0) #20
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 67
  %52 = load ptr, ptr %51, align 8, !tbaa !160
  %53 = tail call ptr %52(ptr noundef %0) #20
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 68
  %55 = load ptr, ptr %54, align 8, !tbaa !81
  call void %55(ptr noundef %0, ptr noundef nonnull %7) #20
  %56 = icmp eq ptr %4, null
  %57 = select i1 %56, ptr %50, ptr %4
  %58 = zext nneg i32 %5 to i64
  %59 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !117
  %61 = add nsw i32 %60, -1
  %62 = add nsw i32 %47, -1
  %63 = sdiv i32 %61, %62
  %64 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 9
  %65 = load i32, ptr %64, align 4, !tbaa !161
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %43
  %68 = call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 35) #20
  br label %69

69:                                               ; preds = %67, %43
  %70 = phi ptr [ %68, %67 ], [ null, %43 ]
  %71 = icmp sgt i32 %35, 0
  br i1 %71, label %72, label %184

72:                                               ; preds = %69
  %73 = icmp eq ptr %70, null
  %74 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 3
  %75 = icmp sgt i32 %47, 0
  %76 = sext i32 %47 to i64
  %77 = zext nneg i32 %35 to i64
  %78 = zext nneg i32 %47 to i64
  br label %79

79:                                               ; preds = %72, %181
  %80 = phi i64 [ 0, %72 ], [ %182, %181 ]
  %81 = getelementptr inbounds %struct.MPoly, ptr %33, i64 %80
  %82 = getelementptr inbounds %struct.MPoly, ptr %33, i64 %80, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !109
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %181

85:                                               ; preds = %79
  %86 = getelementptr inbounds i32, ptr %53, i64 %80
  %87 = load i32, ptr %86, align 4, !tbaa !117
  %88 = sext i32 %87 to i64
  br label %89

89:                                               ; preds = %85, %177
  %90 = phi i64 [ %88, %85 ], [ %179, %177 ]
  %91 = phi i32 [ 0, %85 ], [ %178, %177 ]
  %92 = getelementptr inbounds %struct.GridPaintMask, ptr %70, i64 %90
  %93 = select i1 %73, ptr null, ptr %92
  %94 = load i32, ptr %81, align 4, !tbaa !111
  %95 = add nsw i32 %94, %91
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %50, i64 %90
  %98 = load ptr, ptr %97, align 8, !tbaa !56
  %99 = getelementptr inbounds ptr, ptr %57, i64 %90
  %100 = load ptr, ptr %99, align 8, !tbaa !56
  %101 = getelementptr inbounds %struct.MDisps, ptr %44, i64 %96, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !121
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  call fastcc void @multires_reallocate_mdisps(i32 noundef %34, ptr noundef nonnull %44, i32 noundef %5) #21
  %105 = load ptr, ptr %101, align 8, !tbaa !121
  br label %106

106:                                              ; preds = %104, %89
  %107 = phi ptr [ %105, %104 ], [ %102, %89 ]
  %108 = icmp eq ptr %93, null
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.GridPaintMask, ptr %93, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !163
  %112 = load i32, ptr %7, align 4, !tbaa !165
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  store i32 %112, ptr %110, align 8, !tbaa !163
  %115 = load ptr, ptr %93, align 8, !tbaa !166
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %118(ptr noundef nonnull %115) #20
  br label %119

119:                                              ; preds = %117, %114
  %120 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %121 = load i32, ptr %74, align 4, !tbaa !167
  %122 = sext i32 %121 to i64
  %123 = shl nsw i64 %122, 2
  %124 = call ptr %120(i64 noundef %123, ptr noundef nonnull @.str.14) #20
  store ptr %124, ptr %93, align 8, !tbaa !166
  br label %125

125:                                              ; preds = %119, %109, %106
  br i1 %75, label %126, label %177

126:                                              ; preds = %125, %174
  %127 = phi i64 [ %175, %174 ], [ 0, %125 ]
  %128 = mul nsw i64 %127, %76
  %129 = trunc i64 %127 to i32
  %130 = trunc i64 %127 to i32
  %131 = mul i32 %60, %130
  br label %132

132:                                              ; preds = %126, %171
  %133 = phi i64 [ 0, %126 ], [ %172, %171 ]
  %134 = trunc i64 %133 to i32
  %135 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %98, i32 noundef %134, i32 noundef %129) #21
  %136 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %100, i32 noundef %134, i32 noundef %129) #21
  %137 = add i32 %131, %134
  %138 = mul i32 %137, %63
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x float], ptr %107, i64 %139
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call fastcc void @grid_tangent_matrix(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %134, i32 noundef %129, ptr noundef %100) #21
  switch i32 %3, label %146 [
    i32 0, label %141
    i32 1, label %142
    i32 2, label %144
  ]

141:                                              ; preds = %132
  call void @mul_v3_m3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %140) #20
  call fastcc void @add_v3_v3v3(ptr noundef %135, ptr noundef %136, ptr noundef nonnull %9) #21
  br label %147

142:                                              ; preds = %132
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %135, ptr noundef %136) #21
  %143 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #20
  call void @mul_v3_m3v3(ptr noundef %140, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  br label %147

144:                                              ; preds = %132
  %145 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #20
  call void @mul_v3_m3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef %135) #20
  call fastcc void @add_v3_v3(ptr noundef %140, ptr noundef nonnull %10) #21
  br label %147

146:                                              ; preds = %148, %132
  unreachable

147:                                              ; preds = %144, %142, %141
  br i1 %108, label %171, label %148

148:                                              ; preds = %147
  switch i32 %3, label %146 [
    i32 0, label %149
    i32 1, label %153
    i32 2, label %163
  ]

149:                                              ; preds = %148
  %150 = load i32, ptr %7, align 4, !tbaa !165
  %151 = call float @paint_grid_paint_mask(ptr noundef nonnull %93, i32 noundef %150, i32 noundef %134, i32 noundef %129) #20
  %152 = call fastcc ptr @CCG_grid_elem_mask(ptr noundef nonnull %7, ptr noundef %98, i32 noundef %134, i32 noundef %129) #21
  store float %151, ptr %152, align 4, !tbaa !147
  br label %171

153:                                              ; preds = %148
  %154 = call fastcc ptr @CCG_grid_elem_mask(ptr noundef nonnull %7, ptr noundef %98, i32 noundef %134, i32 noundef %129) #21
  %155 = load float, ptr %154, align 4, !tbaa !147
  %156 = fcmp olt float %155, 0.000000e+00
  %157 = fcmp ogt float %155, 1.000000e+00
  %158 = select i1 %157, float 1.000000e+00, float %155
  %159 = select i1 %156, float 0.000000e+00, float %158
  %160 = load ptr, ptr %93, align 8, !tbaa !166
  %161 = getelementptr float, ptr %160, i64 %133
  %162 = getelementptr float, ptr %161, i64 %128
  store float %159, ptr %162, align 4, !tbaa !147
  br label %171

163:                                              ; preds = %148
  %164 = call fastcc ptr @CCG_grid_elem_mask(ptr noundef nonnull %7, ptr noundef %98, i32 noundef %134, i32 noundef %129) #21
  %165 = load float, ptr %164, align 4, !tbaa !147
  %166 = load ptr, ptr %93, align 8, !tbaa !166
  %167 = getelementptr float, ptr %166, i64 %133
  %168 = getelementptr float, ptr %167, i64 %128
  %169 = load float, ptr %168, align 4, !tbaa !147
  %170 = fadd float %165, %169
  store float %170, ptr %168, align 4, !tbaa !147
  br label %171

171:                                              ; preds = %149, %153, %163, %147
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  %172 = add nuw nsw i64 %133, 1
  %173 = icmp eq i64 %172, %78
  br i1 %173, label %174, label %132, !llvm.loop !168

174:                                              ; preds = %171
  %175 = add nuw nsw i64 %127, 1
  %176 = icmp eq i64 %175, %78
  br i1 %176, label %177, label %126, !llvm.loop !169

177:                                              ; preds = %174, %125
  %178 = add nuw nsw i32 %91, 1
  %179 = add nsw i64 %90, 1
  %180 = icmp eq i32 %178, %83
  br i1 %180, label %181, label %89, !llvm.loop !170

181:                                              ; preds = %177, %79
  %182 = add nuw nsw i64 %80, 1
  %183 = icmp eq i64 %182, %77
  br i1 %183, label %184, label %79, !llvm.loop !171

184:                                              ; preds = %181, %69
  %185 = icmp eq i32 %3, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !80
  %189 = call i32 @ccgSubSurf_stitchFaces(ptr noundef %188, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  %190 = load ptr, ptr %187, align 8, !tbaa !80
  %191 = call i32 @ccgSubSurf_updateNormals(ptr noundef %190, ptr noundef null, i32 noundef 0) #20
  br label %192

192:                                              ; preds = %184, %186, %37
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multiresModifier_subdivide(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 1, !tbaa !58
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 1
  tail call fastcc void @multires_subdivide(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %2, i32 noundef %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_subdivide(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !172 {
  %6 = alloca %struct.CCGKey, align 4
  %7 = alloca %struct.CCGKey, align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %10, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %2, 13
  br i1 %13, label %115, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 30
  %16 = load i32, ptr %15, align 8, !tbaa !107
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %115, label %18

18:                                               ; preds = %14
  tail call void @multires_force_update(ptr noundef nonnull %1) #21
  %19 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 25
  %20 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %19, i32 noundef 19) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @multires_mdisps_initialize_hidden(ptr noundef nonnull %9, i32 noundef %2) #21
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %20, %18 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.MDisps, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !121
  %28 = icmp ne ptr %27, null
  %29 = icmp eq i32 %3, 0
  %30 = and i1 %29, %28
  %31 = icmp sgt i32 %2, 1
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %111

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %34 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %19, i32 noundef 35) #20
  %35 = tail call ptr @CDDM_from_mesh(ptr noundef nonnull %9) #20
  %36 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %35, i64 noundef %36) #20
  %37 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 6
  %38 = load i8, ptr %37, align 1, !tbaa !142
  %39 = and i8 %38, 2
  %40 = zext nneg i8 %39 to i32
  %41 = zext i8 %34 to i32
  %42 = tail call fastcc ptr @subsurf_dm_create_local(ptr noundef nonnull %1, ptr noundef %35, i32 noundef %2, i32 noundef %4, i32 noundef 0, i32 noundef %40, i32 noundef %41) #21
  %43 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !80
  %45 = tail call fastcc ptr @multires_dm_create_local(ptr noundef nonnull %1, ptr noundef %35, i32 noundef %12, i32 noundef %12, i32 noundef %4, i8 noundef zeroext %34) #21
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %35, i64 0, i32 95
  %47 = load ptr, ptr %46, align 8, !tbaa !78
  tail call void %47(ptr noundef %35) #20
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 63
  %49 = load ptr, ptr %48, align 8, !tbaa !173
  %50 = tail call i32 %49(ptr noundef %42) #20
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 64
  %52 = load ptr, ptr %51, align 8, !tbaa !159
  %53 = tail call i32 %52(ptr noundef %42) #20
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 65
  %55 = load ptr, ptr %54, align 8, !tbaa !143
  %56 = tail call ptr %55(ptr noundef %42) #20
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 68
  %58 = load ptr, ptr %57, align 8, !tbaa !81
  call void %58(ptr noundef %42, ptr noundef nonnull %6) #20
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %45, i64 0, i32 65
  %60 = load ptr, ptr %59, align 8, !tbaa !143
  %61 = call ptr %60(ptr noundef %45) #20
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %45, i64 0, i32 68
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  call void %63(ptr noundef %45, ptr noundef nonnull %7) #20
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %65 = sext i32 %50 to i64
  %66 = shl nsw i64 %65, 3
  %67 = call ptr %64(i64 noundef %66, ptr noundef nonnull @.str.4) #20
  %68 = icmp sgt i32 %50, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %33
  %70 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %71 = mul i32 %53, %53
  %72 = zext nneg i32 %50 to i64
  br label %73

73:                                               ; preds = %69, %73
  %74 = phi i64 [ 0, %69 ], [ %89, %73 ]
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %76 = load i32, ptr %70, align 4, !tbaa !174
  %77 = mul i32 %71, %76
  %78 = sext i32 %77 to i64
  %79 = call ptr %75(i64 noundef %78, ptr noundef nonnull @.str.6) #20
  %80 = getelementptr inbounds ptr, ptr %67, i64 %74
  store ptr %79, ptr %80, align 8, !tbaa !56
  %81 = getelementptr inbounds ptr, ptr %56, i64 %74
  %82 = load ptr, ptr %81, align 8, !tbaa !56
  %83 = load i32, ptr %70, align 4, !tbaa !174
  %84 = mul i32 %71, %83
  %85 = sext i32 %84 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %79, ptr align 1 %82, i64 %85, i1 false)
  %86 = load ptr, ptr %81, align 8, !tbaa !56
  %87 = getelementptr inbounds ptr, ptr %61, i64 %74
  %88 = load ptr, ptr %87, align 8, !tbaa !56
  call fastcc void @multires_copy_dm_grid(ptr noundef %86, ptr noundef %88, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %89 = add nuw nsw i64 %74, 1
  %90 = icmp eq i64 %89, %72
  br i1 %90, label %91, label %73, !llvm.loop !175

91:                                               ; preds = %73, %33
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %45, i64 0, i32 95
  %93 = load ptr, ptr %92, align 8, !tbaa !78
  call void %93(ptr noundef %45) #20
  %94 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %44, i32 noundef %12, ptr noundef null, i32 noundef 0) #20
  %95 = call i32 @ccgSubSurf_updateLevels(ptr noundef %44, i32 noundef %12, ptr noundef null, i32 noundef 0) #20
  %96 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 31
  %97 = load i32, ptr %96, align 4, !tbaa !47
  call fastcc void @multires_reallocate_mdisps(i32 noundef %97, ptr noundef %25, i32 noundef %2) #21
  call fastcc void @multiresModifier_disp_run(ptr noundef %42, ptr noundef %9, ptr noundef null, i32 noundef 1, ptr noundef %67, i32 noundef %2) #21
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 95
  %99 = load ptr, ptr %98, align 8, !tbaa !78
  call void %99(ptr noundef %42) #20
  br i1 %68, label %100, label %109

100:                                              ; preds = %91
  %101 = zext nneg i32 %50 to i64
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ 0, %100 ], [ %107, %102 ]
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %105 = getelementptr inbounds ptr, ptr %67, i64 %103
  %106 = load ptr, ptr %105, align 8, !tbaa !56
  call void %104(ptr noundef %106) #20
  %107 = add nuw nsw i64 %103, 1
  %108 = icmp eq i64 %107, %101
  br i1 %108, label %109, label %102, !llvm.loop !176

109:                                              ; preds = %102, %91
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %110(ptr noundef %67) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #22
  br label %114

111:                                              ; preds = %24
  %112 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 31
  %113 = load i32, ptr %112, align 4, !tbaa !47
  tail call fastcc void @multires_reallocate_mdisps(i32 noundef %113, ptr noundef nonnull %25, i32 noundef %2) #21
  br label %114

114:                                              ; preds = %111, %109
  call void @multires_set_tot_level(ptr noundef %1, ptr noundef %0, i32 noundef %2) #21
  br label %115

115:                                              ; preds = %5, %14, %114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_modifier_update_mdisps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CCGKey, align 4
  %3 = alloca %struct.CCGKey, align 4
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = load ptr, ptr %4, align 8, !tbaa !178
  %10 = getelementptr inbounds %struct.MultiresModifierData, ptr %9, i64 0, i32 4
  %11 = load i8, ptr %10, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  tail call fastcc void @multires_set_tot_mdisps(ptr noundef %8, i32 noundef %12) #21
  %13 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 25
  %14 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 31
  %15 = load i32, ptr %14, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %13, ptr noundef %8, i64 noundef 524288, i32 noundef %15) #20
  %16 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 19) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %174, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !179
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !180
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %142

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %25 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %13, i32 noundef 35) #20
  %26 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 119
  %27 = load ptr, ptr %26, align 8, !tbaa !181
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @CDDM_copy(ptr noundef nonnull %27) #20
  br label %33

31:                                               ; preds = %24
  %32 = tail call ptr @CDDM_from_mesh(ptr noundef nonnull %8) #20
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %34, i64 noundef %35) #20
  %36 = getelementptr inbounds %struct.MultiresModifierData, ptr %9, i64 0, i32 5
  %37 = load i8, ptr %36, align 4, !tbaa !145
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.MultiresModifierData, ptr %9, i64 0, i32 6
  %40 = load i8, ptr %39, align 1, !tbaa !142
  %41 = and i8 %40, 2
  %42 = zext nneg i8 %41 to i32
  %43 = zext i8 %25 to i32
  %44 = tail call fastcc ptr @subsurf_dm_create_local(ptr noundef nonnull %6, ptr noundef %34, i32 noundef %22, i32 noundef %38, i32 noundef 0, i32 noundef %42, i32 noundef %43) #21
  %45 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !80
  %47 = load i8, ptr %36, align 4, !tbaa !145
  %48 = zext i8 %47 to i32
  %49 = tail call fastcc ptr @multires_dm_create_local(ptr noundef nonnull %6, ptr noundef %34, i32 noundef %20, i32 noundef %22, i32 noundef %48, i8 noundef zeroext %25) #21
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 95
  %51 = load ptr, ptr %50, align 8, !tbaa !78
  tail call void %51(ptr noundef %34) #20
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %44, i64 0, i32 63
  %53 = load ptr, ptr %52, align 8, !tbaa !173
  %54 = tail call i32 %53(ptr noundef %44) #20
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %44, i64 0, i32 64
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = tail call i32 %56(ptr noundef %44) #20
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %44, i64 0, i32 65
  %59 = load ptr, ptr %58, align 8, !tbaa !143
  %60 = tail call ptr %59(ptr noundef %44) #20
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %44, i64 0, i32 68
  %62 = load ptr, ptr %61, align 8, !tbaa !81
  call void %62(ptr noundef %44, ptr noundef nonnull %2) #20
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 64
  %64 = load ptr, ptr %63, align 8, !tbaa !159
  %65 = call i32 %64(ptr noundef %49) #20
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 65
  %67 = load ptr, ptr %66, align 8, !tbaa !143
  %68 = call ptr %67(ptr noundef %49) #20
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 68
  %70 = load ptr, ptr %69, align 8, !tbaa !81
  call void %70(ptr noundef %49, ptr noundef nonnull %3) #20
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 65
  %72 = load ptr, ptr %71, align 8, !tbaa !143
  %73 = call ptr %72(ptr noundef nonnull %0) #20
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %75 = sext i32 %54 to i64
  %76 = shl nsw i64 %75, 3
  %77 = call ptr %74(i64 noundef %76, ptr noundef nonnull @.str.4) #20
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %79 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !174
  %81 = mul i32 %65, %65
  %82 = mul i32 %81, %80
  %83 = sext i32 %82 to i64
  %84 = call ptr %78(i64 noundef %83, ptr noundef nonnull @.str.5) #20
  %85 = icmp sgt i32 %54, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %33
  %87 = getelementptr inbounds %struct.CCGKey, ptr %2, i64 0, i32 1
  %88 = mul i32 %57, %57
  %89 = icmp eq i32 %65, 0
  %90 = call i32 @llvm.umax.i32(i32 %81, i32 1)
  %91 = zext nneg i32 %54 to i64
  br label %92

92:                                               ; preds = %86, %117
  %93 = phi i64 [ 0, %86 ], [ %119, %117 ]
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %95 = load i32, ptr %87, align 4, !tbaa !174
  %96 = mul i32 %88, %95
  %97 = sext i32 %96 to i64
  %98 = call ptr %94(i64 noundef %97, ptr noundef nonnull @.str.6) #20
  %99 = getelementptr inbounds ptr, ptr %77, i64 %93
  store ptr %98, ptr %99, align 8, !tbaa !56
  %100 = getelementptr inbounds ptr, ptr %60, i64 %93
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = load i32, ptr %87, align 4, !tbaa !174
  %103 = mul i32 %88, %102
  %104 = sext i32 %103 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %98, ptr align 1 %101, i64 %104, i1 false)
  br i1 %89, label %117, label %105

105:                                              ; preds = %92
  %106 = getelementptr inbounds ptr, ptr %73, i64 %93
  %107 = getelementptr inbounds ptr, ptr %68, i64 %93
  br label %108

108:                                              ; preds = %105, %108
  %109 = phi i32 [ 0, %105 ], [ %115, %108 ]
  %110 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %3, ptr noundef %84, i32 noundef %109) #21
  %111 = load ptr, ptr %106, align 8, !tbaa !56
  %112 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %3, ptr noundef %111, i32 noundef %109) #21
  %113 = load ptr, ptr %107, align 8, !tbaa !56
  %114 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %3, ptr noundef %113, i32 noundef %109) #21
  call fastcc void @sub_v4_v4v4(ptr noundef %110, ptr noundef %112, ptr noundef %114) #21
  %115 = add nuw nsw i32 %109, 1
  %116 = icmp eq i32 %115, %90
  br i1 %116, label %117, label %108, !llvm.loop !182

117:                                              ; preds = %108, %92
  %118 = load ptr, ptr %100, align 8, !tbaa !56
  call fastcc void @multires_copy_dm_grid(ptr noundef %118, ptr noundef %84, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %119 = add nuw nsw i64 %93, 1
  %120 = icmp eq i64 %119, %91
  br i1 %120, label %121, label %92, !llvm.loop !183

121:                                              ; preds = %117, %33
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %122(ptr noundef %84) #20
  %123 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 95
  %124 = load ptr, ptr %123, align 8, !tbaa !78
  call void %124(ptr noundef %49) #20
  %125 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %46, i32 noundef %20, ptr noundef null, i32 noundef 0) #20
  %126 = call i32 @ccgSubSurf_updateLevels(ptr noundef %46, i32 noundef %20, ptr noundef null, i32 noundef 0) #20
  %127 = load i8, ptr %10, align 1, !tbaa !58
  %128 = zext i8 %127 to i32
  call fastcc void @multiresModifier_disp_run(ptr noundef %44, ptr noundef %8, ptr noundef null, i32 noundef 2, ptr noundef %77, i32 noundef %128) #21
  %129 = getelementptr inbounds %struct.DerivedMesh, ptr %44, i64 0, i32 95
  %130 = load ptr, ptr %129, align 8, !tbaa !78
  call void %130(ptr noundef %44) #20
  br i1 %85, label %131, label %140

131:                                              ; preds = %121
  %132 = zext nneg i32 %54 to i64
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi i64 [ 0, %131 ], [ %138, %133 ]
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %136 = getelementptr inbounds ptr, ptr %77, i64 %134
  %137 = load ptr, ptr %136, align 8, !tbaa !56
  call void %135(ptr noundef %137) #20
  %138 = add nuw nsw i64 %134, 1
  %139 = icmp eq i64 %138, %132
  br i1 %139, label %140, label %133, !llvm.loop !184

140:                                              ; preds = %133, %121
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %141(ptr noundef %77) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  br label %174

142:                                              ; preds = %18
  %143 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %13, i32 noundef 35) #20
  %144 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 119
  %145 = load ptr, ptr %144, align 8, !tbaa !181
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = tail call ptr @CDDM_copy(ptr noundef nonnull %145) #20
  br label %151

149:                                              ; preds = %142
  %150 = tail call ptr @CDDM_from_mesh(ptr noundef nonnull %8) #20
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi ptr [ %148, %147 ], [ %150, %149 ]
  %153 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  tail call void @DM_set_only_copy(ptr noundef %152, i64 noundef %153) #20
  %154 = load i8, ptr %10, align 1, !tbaa !58
  %155 = zext i8 %154 to i32
  %156 = getelementptr inbounds %struct.MultiresModifierData, ptr %9, i64 0, i32 5
  %157 = load i8, ptr %156, align 4, !tbaa !145
  %158 = zext i8 %157 to i32
  %159 = getelementptr inbounds %struct.MultiresModifierData, ptr %9, i64 0, i32 6
  %160 = load i8, ptr %159, align 1, !tbaa !142
  %161 = and i8 %160, 2
  %162 = zext nneg i8 %161 to i32
  %163 = zext i8 %143 to i32
  %164 = tail call fastcc ptr @subsurf_dm_create_local(ptr noundef nonnull %6, ptr noundef %152, i32 noundef %155, i32 noundef %158, i32 noundef 0, i32 noundef %162, i32 noundef %163) #21
  %165 = getelementptr inbounds %struct.DerivedMesh, ptr %152, i64 0, i32 95
  %166 = load ptr, ptr %165, align 8, !tbaa !78
  tail call void %166(ptr noundef %152) #20
  %167 = getelementptr inbounds %struct.DerivedMesh, ptr %164, i64 0, i32 65
  %168 = load ptr, ptr %167, align 8, !tbaa !143
  %169 = tail call ptr %168(ptr noundef %164) #20
  %170 = load i8, ptr %10, align 1, !tbaa !58
  %171 = zext i8 %170 to i32
  tail call fastcc void @multiresModifier_disp_run(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef null, i32 noundef 1, ptr noundef %169, i32 noundef %171) #21
  %172 = getelementptr inbounds %struct.DerivedMesh, ptr %164, i64 0, i32 95
  %173 = load ptr, ptr %172, align 8, !tbaa !78
  tail call void %173(ptr noundef %164) #20
  br label %174

174:                                              ; preds = %140, %151, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v4_v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !185 {
  %4 = load float, ptr %1, align 4, !tbaa !147
  %5 = load float, ptr %2, align 4, !tbaa !147
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !147
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !147
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !147
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !147
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !147
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !147
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !147
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !147
  %21 = getelementptr inbounds float, ptr %2, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !147
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds float, ptr %0, i64 3
  store float %23, ptr %24, align 4, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !186 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @multires_copy_dm_grid(ptr noundef writeonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !PGOFuncName !187 {
  %5 = getelementptr inbounds %struct.CCGKey, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !188
  %7 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !188
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %4
  %11 = add nsw i32 %6, -1
  %12 = add nsw i32 %8, -1
  %13 = sdiv i32 %11, %12
  %14 = icmp sgt i32 %8, 0
  br i1 %14, label %15, label %76

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CCGKey, ptr %2, i64 0, i32 7
  br label %17

17:                                               ; preds = %15, %38
  %18 = phi i32 [ %8, %15 ], [ %39, %38 ]
  %19 = phi i32 [ 0, %15 ], [ %40, %38 ]
  %20 = phi i32 [ 0, %15 ], [ %41, %38 ]
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17, %22
  %23 = phi i32 [ %35, %22 ], [ %19, %17 ]
  %24 = phi i32 [ %34, %22 ], [ 0, %17 ]
  %25 = load i32, ptr %5, align 4, !tbaa !188
  %26 = mul i32 %25, %20
  %27 = add i32 %26, %24
  %28 = mul i32 %27, %13
  %29 = tail call fastcc ptr @CCG_elem_offset_co(ptr noundef %2, ptr noundef %0, i32 noundef %28) #21
  %30 = tail call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %23) #21
  %31 = load i32, ptr %16, align 4, !tbaa !189
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %30, i64 %33, i1 false)
  %34 = add nuw nsw i32 %24, 1
  %35 = add nsw i32 %23, 1
  %36 = load i32, ptr %7, align 4, !tbaa !188
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %22, label %38, !llvm.loop !190

38:                                               ; preds = %22, %17
  %39 = phi i32 [ %18, %17 ], [ %36, %22 ]
  %40 = phi i32 [ %19, %17 ], [ %35, %22 ]
  %41 = add nuw nsw i32 %20, 1
  %42 = icmp slt i32 %41, %39
  br i1 %42, label %17, label %76, !llvm.loop !191

43:                                               ; preds = %4
  %44 = add nsw i32 %8, -1
  %45 = add nsw i32 %6, -1
  %46 = sdiv i32 %44, %45
  %47 = icmp sgt i32 %6, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.CCGKey, ptr %2, i64 0, i32 7
  br label %50

50:                                               ; preds = %48, %71
  %51 = phi i32 [ %6, %48 ], [ %72, %71 ]
  %52 = phi i32 [ 0, %48 ], [ %73, %71 ]
  %53 = phi i32 [ 0, %48 ], [ %74, %71 ]
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50, %55
  %56 = phi i32 [ %68, %55 ], [ %52, %50 ]
  %57 = phi i32 [ %67, %55 ], [ 0, %50 ]
  %58 = tail call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %56) #21
  %59 = load i32, ptr %7, align 4, !tbaa !188
  %60 = mul i32 %59, %53
  %61 = add i32 %60, %57
  %62 = mul i32 %61, %46
  %63 = tail call fastcc ptr @CCG_elem_offset_co(ptr noundef %3, ptr noundef %1, i32 noundef %62) #21
  %64 = load i32, ptr %49, align 4, !tbaa !189
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr align 4 %63, i64 %66, i1 false)
  %67 = add nuw nsw i32 %57, 1
  %68 = add nsw i32 %56, 1
  %69 = load i32, ptr %5, align 4, !tbaa !188
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %55, label %71, !llvm.loop !192

71:                                               ; preds = %55, %50
  %72 = phi i32 [ %51, %50 ], [ %69, %55 ]
  %73 = phi i32 [ %52, %50 ], [ %68, %55 ]
  %74 = add nuw nsw i32 %53, 1
  %75 = icmp slt i32 %74, %72
  br i1 %75, label %50, label %76, !llvm.loop !193

76:                                               ; preds = %71, %38, %43, %10
  ret void
}

; Function Attrs: optsize
declare i32 @ccgSubSurf_updateFromFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_updateLevels(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_modifier_update_hidden(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 25
  %9 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %8, i32 noundef 19) #20
  %10 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !180
  %12 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !179
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
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.MDisps, ptr %9, i64 %20, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  br i1 %23, label %26, label %28

26:                                               ; preds = %19
  %27 = icmp eq ptr %25, null
  br i1 %27, label %38, label %32

28:                                               ; preds = %19
  %29 = tail call fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef nonnull %22, i32 noundef %13, i32 noundef %11, ptr noundef %25) #21
  %30 = load ptr, ptr %24, align 8, !tbaa !122
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %26
  %33 = phi ptr [ %25, %26 ], [ %30, %28 ]
  %34 = phi ptr [ null, %26 ], [ %29, %28 ]
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %35(ptr noundef nonnull %33) #20
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
  br i1 %42, label %19, label %43, !llvm.loop !195

43:                                               ; preds = %38, %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 !PGOFuncName !196 {
  %5 = tail call i32 @BKE_ccg_gridsize(i32 noundef %2) #20
  %6 = tail call i32 @BKE_ccg_gridsize(i32 noundef %1) #20
  %7 = icmp eq i32 %1, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %10 = tail call ptr %9(ptr noundef %0) #20
  br label %135

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %13 = mul nsw i32 %5, %5
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 268435452
  %16 = add nuw nsw i32 %15, 4
  %17 = zext nneg i32 %16 to i64
  %18 = tail call ptr %12(i64 noundef %17, ptr noundef nonnull @.str.15) #20
  %19 = tail call i32 @BKE_ccg_factor(i32 noundef %1, i32 noundef %2) #20
  %20 = icmp sgt i32 %6, 0
  br i1 %20, label %21, label %135

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
  %32 = sext i32 %19 to i64
  %33 = zext nneg i32 %6 to i64
  %34 = zext nneg i32 %6 to i64
  br label %35

35:                                               ; preds = %132, %21
  %36 = phi i64 [ 0, %21 ], [ %133, %132 ]
  %37 = mul i64 %36, %33
  %38 = mul nsw i64 %36, %32
  br label %39

39:                                               ; preds = %35, %129
  %40 = phi i64 [ 0, %35 ], [ %130, %129 ]
  %41 = add i64 %40, %37
  %42 = trunc i64 %41 to i32
  %43 = lshr i64 %41, 5
  %44 = and i64 %43, 134217727
  %45 = getelementptr inbounds i32, ptr %0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !117
  %47 = and i32 %42, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %46, %48
  br i1 %26, label %129, label %50

50:                                               ; preds = %39
  %51 = mul nsw i64 %40, %32
  %52 = icmp eq i32 %49, 0
  br label %53

53:                                               ; preds = %50, %125
  %54 = phi i64 [ %28, %50 ], [ %126, %125 ]
  %55 = add nsw i64 %54, %38
  %56 = icmp sgt i64 %55, -1
  %57 = icmp slt i64 %55, %29
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %125

59:                                               ; preds = %53
  %60 = mul nsw i64 %55, %29
  br label %61

61:                                               ; preds = %59, %121
  %62 = phi i64 [ %28, %59 ], [ %122, %121 ]
  %63 = add nsw i64 %62, %51
  %64 = icmp sgt i64 %63, -1
  %65 = icmp slt i64 %63, %29
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %121

67:                                               ; preds = %61
  %68 = add nsw i64 %63, %60
  br i1 %27, label %104, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds i32, ptr %3, i64 %68
  %71 = load i32, ptr %70, align 4, !tbaa !117
  %72 = icmp eq i32 %49, %71
  %73 = trunc i64 %68 to i32
  %74 = and i32 %73, 31
  %75 = shl nuw i32 1, %74
  br i1 %72, label %90, label %76

76:                                               ; preds = %69
  br i1 %52, label %83, label %77

77:                                               ; preds = %76
  %78 = ashr i32 %73, 5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %18, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !117
  %82 = or i32 %81, %75
  store i32 %82, ptr %80, align 4, !tbaa !117
  br label %121

83:                                               ; preds = %76
  %84 = xor i32 %75, -1
  %85 = ashr i32 %73, 5
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %18, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !117
  %89 = and i32 %88, %84
  store i32 %89, ptr %87, align 4, !tbaa !117
  br label %121

90:                                               ; preds = %69
  br i1 %52, label %97, label %91

91:                                               ; preds = %90
  %92 = ashr i32 %73, 5
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %18, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !117
  %96 = or i32 %95, %75
  store i32 %96, ptr %94, align 4, !tbaa !117
  br label %121

97:                                               ; preds = %90
  %98 = xor i32 %75, -1
  %99 = ashr i32 %73, 5
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %18, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !117
  %103 = and i32 %102, %98
  store i32 %103, ptr %101, align 4, !tbaa !117
  br label %121

104:                                              ; preds = %67
  %105 = trunc i64 %68 to i32
  %106 = and i32 %105, 31
  %107 = shl nuw i32 1, %106
  br i1 %52, label %114, label %108

108:                                              ; preds = %104
  %109 = ashr i32 %105, 5
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %18, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !117
  %113 = or i32 %112, %107
  store i32 %113, ptr %111, align 4, !tbaa !117
  br label %121

114:                                              ; preds = %104
  %115 = xor i32 %107, -1
  %116 = ashr i32 %105, 5
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %18, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !117
  %120 = and i32 %119, %115
  store i32 %120, ptr %118, align 4, !tbaa !117
  br label %121

121:                                              ; preds = %91, %97, %77, %83, %114, %108, %61
  %122 = add nsw i64 %62, 1
  %123 = trunc i64 %122 to i32
  %124 = icmp eq i32 %31, %123
  br i1 %124, label %125, label %61, !llvm.loop !197

125:                                              ; preds = %121, %53
  %126 = add nsw i64 %54, 1
  %127 = trunc i64 %126 to i32
  %128 = icmp eq i32 %31, %127
  br i1 %128, label %129, label %53, !llvm.loop !198

129:                                              ; preds = %125, %39
  %130 = add nuw nsw i64 %40, 1
  %131 = icmp eq i64 %130, %34
  br i1 %131, label %132, label %39, !llvm.loop !199

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %36, 1
  %134 = icmp eq i64 %133, %34
  br i1 %134, label %135, label %35, !llvm.loop !200

135:                                              ; preds = %132, %11, %8
  %136 = phi ptr [ %10, %8 ], [ %18, %11 ], [ %18, %132 ]
  ret ptr %136
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_set_space(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %9 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %8, i32 noundef 25) #20
  %10 = tail call ptr @get_multires_modifier(ptr noundef null, ptr noundef %1, i8 noundef zeroext 1) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %169, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %14 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 19) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %169, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MultiresModifierData, ptr %10, i64 0, i32 4
  %18 = load i8, ptr %17, align 1, !tbaa !58
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.MultiresModifierData, ptr %10, i64 0, i32 5
  %21 = load i8, ptr %20, align 4, !tbaa !145
  %22 = zext i8 %21 to i32
  %23 = tail call fastcc ptr @multires_dm_create_local(ptr noundef %1, ptr noundef %0, i32 noundef %19, i32 noundef %19, i32 noundef %22, i8 noundef zeroext 0) #21
  %24 = load i8, ptr %20, align 4, !tbaa !145
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.MultiresModifierData, ptr %10, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !142
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 1
  %30 = and i32 %28, 2
  %31 = tail call fastcc ptr @subsurf_dm_create_local(ptr noundef %1, ptr noundef %0, i32 noundef %19, i32 noundef %25, i32 noundef %29, i32 noundef %30, i32 noundef 0) #21
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 63
  %33 = load ptr, ptr %32, align 8, !tbaa !173
  %34 = tail call i32 %33(ptr noundef %31) #20
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 64
  %36 = load ptr, ptr %35, align 8, !tbaa !159
  %37 = tail call i32 %36(ptr noundef %31) #20
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 65
  %39 = load ptr, ptr %38, align 8, !tbaa !143
  %40 = tail call ptr %39(ptr noundef %31) #20
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 68
  %42 = load ptr, ptr %41, align 8, !tbaa !81
  call void %42(ptr noundef %31, ptr noundef nonnull %5) #20
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %44 = sext i32 %34 to i64
  %45 = shl nsw i64 %44, 3
  %46 = call ptr %43(i64 noundef %45, ptr noundef nonnull @.str.4) #20
  %47 = icmp sgt i32 %34, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %16
  %49 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 1
  %50 = mul i32 %37, %37
  %51 = zext nneg i32 %34 to i64
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi i64 [ 0, %48 ], [ %65, %52 ]
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %55 = load i32, ptr %49, align 4, !tbaa !174
  %56 = mul i32 %50, %55
  %57 = sext i32 %56 to i64
  %58 = call ptr %54(i64 noundef %57, ptr noundef nonnull @.str.6) #20
  %59 = getelementptr inbounds ptr, ptr %46, i64 %53
  store ptr %58, ptr %59, align 8, !tbaa !56
  %60 = getelementptr inbounds ptr, ptr %40, i64 %53
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = load i32, ptr %49, align 4, !tbaa !174
  %63 = mul i32 %50, %62
  %64 = sext i32 %63 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %61, i64 %64, i1 false)
  %65 = add nuw nsw i64 %53, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %67, label %52, !llvm.loop !201

67:                                               ; preds = %52, %16
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 64
  %69 = load ptr, ptr %68, align 8, !tbaa !159
  %70 = call i32 %69(ptr noundef %23) #20
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 65
  %72 = load ptr, ptr %71, align 8, !tbaa !143
  %73 = call ptr %72(ptr noundef %23) #20
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 67
  %75 = load ptr, ptr %74, align 8, !tbaa !160
  %76 = call ptr %75(ptr noundef %23) #20
  %77 = zext i8 %18 to i64
  %78 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !117
  %80 = add nsw i32 %79, -1
  %81 = add nsw i32 %70, -1
  %82 = sdiv i32 %80, %81
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !202
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %157

86:                                               ; preds = %67
  %87 = mul nsw i32 %70, %70
  %88 = zext nneg i32 %87 to i64
  %89 = mul nuw nsw i64 %88, 12
  %90 = icmp sgt i32 %70, 0
  %91 = zext nneg i32 %70 to i64
  br label %92

92:                                               ; preds = %86, %152
  %93 = phi i32 [ %84, %86 ], [ %153, %152 ]
  %94 = phi i64 [ 0, %86 ], [ %154, %152 ]
  %95 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %94
  %96 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %94, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !109
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %152

99:                                               ; preds = %92
  %100 = getelementptr inbounds i32, ptr %76, i64 %94
  %101 = load i32, ptr %100, align 4, !tbaa !117
  %102 = sext i32 %101 to i64
  br label %103

103:                                              ; preds = %99, %146
  %104 = phi i64 [ %102, %99 ], [ %148, %146 ]
  %105 = phi i32 [ 0, %99 ], [ %147, %146 ]
  %106 = load i32, ptr %95, align 4, !tbaa !111
  %107 = add nsw i32 %106, %105
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %46, i64 %104
  %110 = load ptr, ptr %109, align 8, !tbaa !56
  %111 = getelementptr inbounds %struct.MDisps, ptr %14, i64 %108, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !121
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.MDisps, ptr %14, i64 %108
  store i32 %87, ptr %115, align 8, !tbaa !112
  %116 = getelementptr inbounds %struct.MDisps, ptr %14, i64 %108, i32 1
  store i32 %19, ptr %116, align 4, !tbaa !118
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %118 = call ptr %117(i64 noundef %89, ptr noundef nonnull @.str.7) #20
  store ptr %118, ptr %111, align 8, !tbaa !121
  br label %119

119:                                              ; preds = %114, %103
  %120 = phi ptr [ %118, %114 ], [ %112, %103 ]
  br i1 %90, label %121, label %146

121:                                              ; preds = %119, %143
  %122 = phi i32 [ %144, %143 ], [ 0, %119 ]
  %123 = mul nsw i32 %122, %79
  br label %124

124:                                              ; preds = %121, %140
  %125 = phi i64 [ 0, %121 ], [ %141, %140 ]
  %126 = trunc i64 %125 to i32
  %127 = add i32 %123, %126
  %128 = mul i32 %127, %82
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x float], ptr %120, i64 %129
  %131 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %110, i32 noundef %126, i32 noundef %122) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call fastcc void @grid_tangent_matrix(ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %126, i32 noundef %122, ptr noundef %110) #21
  switch i32 %2, label %135 [
    i32 0, label %132
    i32 1, label %133
    i32 2, label %134
  ]

132:                                              ; preds = %124
  call void @mul_v3_m3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %130) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef %131) #21
  br label %135

133:                                              ; preds = %124
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef %131, ptr noundef %130) #21
  br label %135

134:                                              ; preds = %124
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %130) #21
  br label %135

135:                                              ; preds = %124, %133, %134, %132
  switch i32 %3, label %140 [
    i32 0, label %136
    i32 1, label %138
    i32 2, label %139
  ]

136:                                              ; preds = %135
  %137 = call zeroext i8 @invert_m3(ptr noundef nonnull %6) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef %131) #21
  call void @mul_v3_m3v3(ptr noundef %130, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  br label %140

138:                                              ; preds = %135
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef %131) #21
  call void @mul_v3_m3v3(ptr noundef %130, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  br label %140

139:                                              ; preds = %135
  call fastcc void @copy_v3_v3(ptr noundef %130, ptr noundef nonnull %7) #21
  br label %140

140:                                              ; preds = %135, %138, %139, %136
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #22
  %141 = add nuw nsw i64 %125, 1
  %142 = icmp eq i64 %141, %91
  br i1 %142, label %143, label %124, !llvm.loop !203

143:                                              ; preds = %140
  %144 = add nuw nsw i32 %122, 1
  %145 = icmp eq i32 %144, %70
  br i1 %145, label %146, label %121, !llvm.loop !204

146:                                              ; preds = %143, %119
  %147 = add nuw nsw i32 %105, 1
  %148 = add nsw i64 %104, 1
  %149 = icmp eq i32 %147, %97
  br i1 %149, label %150, label %103, !llvm.loop !205

150:                                              ; preds = %146
  %151 = load i32, ptr %83, align 8, !tbaa !202
  br label %152

152:                                              ; preds = %150, %92
  %153 = phi i32 [ %93, %92 ], [ %151, %150 ]
  %154 = add nuw nsw i64 %94, 1
  %155 = sext i32 %153 to i64
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %92, label %157, !llvm.loop !206

157:                                              ; preds = %152, %67
  %158 = icmp eq ptr %31, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 10
  store i32 1, ptr %160, align 4, !tbaa !207
  %161 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 95
  %162 = load ptr, ptr %161, align 8, !tbaa !78
  call void %162(ptr noundef nonnull %31) #20
  br label %163

163:                                              ; preds = %159, %157
  %164 = icmp eq ptr %23, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 10
  store i32 1, ptr %166, align 4, !tbaa !207
  %167 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %168 = load ptr, ptr %167, align 8, !tbaa !78
  call void %168(ptr noundef nonnull %23) #20
  br label %169

169:                                              ; preds = %12, %163, %165, %4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !208 {
  %5 = tail call fastcc ptr @CCG_grid_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @grid_tangent_matrix(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #10 !PGOFuncName !209 {
  tail call fastcc void @grid_tangent(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4, ptr noundef %0) #21
  tail call fastcc void @normalize_v3(ptr noundef %0) #21
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call fastcc void @grid_tangent(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4, ptr noundef nonnull %6) #21
  tail call fastcc void @normalize_v3(ptr noundef nonnull %6) #21
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %8 = tail call fastcc ptr @CCG_grid_elem_no(ptr noundef %1, ptr noundef %4, i32 noundef %2, i32 noundef %3) #21
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %8) #21
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !210 {
  %4 = load float, ptr %1, align 4, !tbaa !147
  %5 = load float, ptr %2, align 4, !tbaa !147
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !147
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !147
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !147
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !147
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !147
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !147
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !147
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !211 {
  %3 = load float, ptr %1, align 4, !tbaa !147
  %4 = load float, ptr %0, align 4, !tbaa !147
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !147
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !147
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !147
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !147
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !147
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !147
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_stitch_grids(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %10 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %7, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !212
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %11, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %14 = load i32, ptr %3, align 4, !tbaa !117
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !80
  %19 = load ptr, ptr %2, align 8, !tbaa !56
  %20 = call i32 @ccgSubSurf_stitchFaces(ptr noundef %18, i32 noundef 0, ptr noundef %19, i32 noundef %14) #20
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %22 = load ptr, ptr %2, align 8, !tbaa !56
  call void %21(ptr noundef %22) #20
  br label %23

23:                                               ; preds = %13, %16, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %24

24:                                               ; preds = %23, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_get_grid_updates(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_stitchFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @multires_make_derived_from_derived(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %8 = trunc i32 %3 to i8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  %11 = lshr i8 %8, 3
  %12 = and i8 %11, 1
  %13 = tail call fastcc i32 @multires_get_level(ptr noundef %2, ptr noundef %1, i8 noundef zeroext %10, i8 noundef zeroext %12) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %99, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 5
  %17 = load i8, ptr %16, align 4, !tbaa !145
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !142
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = and i32 %21, 2
  %24 = and i32 %3, 4
  %25 = tail call fastcc ptr @subsurf_dm_create_local(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %13, i32 noundef %18, i32 noundef %22, i32 noundef %23, i32 noundef %24) #21
  %26 = and i32 %3, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %25, i64 0, i32 20
  %30 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %25, i64 0, i32 20, i32 5
  store ptr %2, ptr %30, align 8, !tbaa !177
  store ptr %1, ptr %29, align 8, !tbaa !178
  %31 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %25, i64 0, i32 20, i32 1
  store i32 0, ptr %31, align 8, !tbaa !213
  %32 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %25, i64 0, i32 20, i32 2
  store i32 %13, ptr %32, align 4, !tbaa !179
  %33 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 4
  %34 = load i8, ptr %33, align 1, !tbaa !58
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %25, i64 0, i32 20, i32 3
  store i32 %35, ptr %36, align 8, !tbaa !180
  %37 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %25, i64 0, i32 20, i32 6
  store i32 0, ptr %37, align 8, !tbaa !69
  br label %38

38:                                               ; preds = %28, %15
  %39 = phi ptr [ null, %15 ], [ %25, %28 ]
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %25, i64 0, i32 63
  %41 = load ptr, ptr %40, align 8, !tbaa !173
  %42 = tail call i32 %41(ptr noundef %25) #20
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %25, i64 0, i32 64
  %44 = load ptr, ptr %43, align 8, !tbaa !159
  %45 = tail call i32 %44(ptr noundef %25) #20
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %25, i64 0, i32 65
  %47 = load ptr, ptr %46, align 8, !tbaa !143
  %48 = tail call ptr %47(ptr noundef %25) #20
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %25, i64 0, i32 68
  %50 = load ptr, ptr %49, align 8, !tbaa !81
  call void %50(ptr noundef %25, ptr noundef nonnull %5) #20
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %52 = sext i32 %42 to i64
  %53 = shl nsw i64 %52, 3
  %54 = call ptr %51(i64 noundef %53, ptr noundef nonnull @.str.4) #20
  %55 = icmp sgt i32 %42, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 1
  %58 = mul i32 %45, %45
  %59 = zext nneg i32 %42 to i64
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi i64 [ 0, %56 ], [ %73, %60 ]
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %63 = load i32, ptr %57, align 4, !tbaa !174
  %64 = mul i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = call ptr %62(i64 noundef %65, ptr noundef nonnull @.str.6) #20
  %67 = getelementptr inbounds ptr, ptr %54, i64 %61
  store ptr %66, ptr %67, align 8, !tbaa !56
  %68 = getelementptr inbounds ptr, ptr %48, i64 %61
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  %70 = load i32, ptr %57, align 4, !tbaa !174
  %71 = mul i32 %58, %70
  %72 = sext i32 %71 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %69, i64 %72, i1 false)
  %73 = add nuw nsw i64 %61, 1
  %74 = icmp eq i64 %73, %59
  br i1 %74, label %75, label %60, !llvm.loop !214

75:                                               ; preds = %60, %38
  %76 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 4
  %77 = load i8, ptr %76, align 1, !tbaa !58
  %78 = zext i8 %77 to i32
  call fastcc void @multires_set_tot_mdisps(ptr noundef %7, i32 noundef %78) #21
  %79 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 25
  %80 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 31
  %81 = load i32, ptr %80, align 4, !tbaa !47
  call void @CustomData_external_read(ptr noundef nonnull %79, ptr noundef %7, i64 noundef 524288, i32 noundef %81) #20
  %82 = load ptr, ptr %6, align 8, !tbaa !105
  %83 = load i8, ptr %76, align 1, !tbaa !58
  %84 = zext i8 %83 to i32
  call fastcc void @multiresModifier_disp_run(ptr noundef %25, ptr noundef %82, ptr noundef %0, i32 noundef 0, ptr noundef %54, i32 noundef %84) #21
  %85 = icmp eq ptr %39, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %75
  call fastcc void @multires_output_hidden_to_ccgdm(ptr noundef nonnull %39, ptr noundef nonnull %7, i32 noundef %13) #21
  br label %87

87:                                               ; preds = %86, %75
  br i1 %55, label %88, label %97

88:                                               ; preds = %87
  %89 = zext nneg i32 %42 to i64
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i64 [ 0, %88 ], [ %95, %90 ]
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %93 = getelementptr inbounds ptr, ptr %54, i64 %91
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  call void %92(ptr noundef %94) #20
  %95 = add nuw nsw i64 %91, 1
  %96 = icmp eq i64 %95, %89
  br i1 %96, label %97, label %90, !llvm.loop !215

97:                                               ; preds = %90, %87
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %98(ptr noundef %54) #20
  br label %99

99:                                               ; preds = %4, %97
  %100 = phi ptr [ %25, %97 ], [ %0, %4 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_output_hidden_to_ccgdm(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !216 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %5 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %4, i32 noundef 19) #20
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 67
  %9 = load ptr, ptr %8, align 8, !tbaa !217
  %10 = tail call ptr %9(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !107
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  br label %17

17:                                               ; preds = %14, %50
  %18 = phi i32 [ %12, %14 ], [ %51, %50 ]
  %19 = phi ptr [ %16, %14 ], [ %52, %50 ]
  %20 = phi ptr [ %16, %14 ], [ %53, %50 ]
  %21 = phi i64 [ 0, %14 ], [ %54, %50 ]
  %22 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %21, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !109
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %17
  %26 = getelementptr inbounds i32, ptr %10, i64 %21
  br label %27

27:                                               ; preds = %25, %42
  %28 = phi ptr [ %19, %25 ], [ %43, %42 ]
  %29 = phi i32 [ 0, %25 ], [ %44, %42 ]
  %30 = load i32, ptr %26, align 4, !tbaa !117
  %31 = add nsw i32 %30, %29
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.MDisps, ptr %5, i64 %32, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.MDisps, ptr %5, i64 %32, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !118
  %39 = tail call fastcc ptr @multires_mdisps_downsample_hidden(ptr noundef nonnull %34, i32 noundef %38, i32 noundef %2) #21
  %40 = getelementptr inbounds ptr, ptr %7, i64 %32
  store ptr %39, ptr %40, align 8, !tbaa !56
  %41 = load ptr, ptr %15, align 8, !tbaa !108
  br label %42

42:                                               ; preds = %36, %27
  %43 = phi ptr [ %41, %36 ], [ %28, %27 ]
  %44 = add nuw nsw i32 %29, 1
  %45 = getelementptr inbounds %struct.MPoly, ptr %43, i64 %21, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !109
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %27, label %48, !llvm.loop !218

48:                                               ; preds = %42
  %49 = load i32, ptr %11, align 8, !tbaa !107
  br label %50

50:                                               ; preds = %48, %17
  %51 = phi i32 [ %49, %48 ], [ %18, %17 ]
  %52 = phi ptr [ %43, %48 ], [ %19, %17 ]
  %53 = phi ptr [ %43, %48 ], [ %20, %17 ]
  %54 = add nuw nsw i64 %21, 1
  %55 = sext i32 %51 to i64
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %17, label %57, !llvm.loop !219

57:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @old_mdisps_bilinear(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = alloca [4 x [3 x float]], align 16
  %7 = alloca [2 x [3 x float]], align 16
  %8 = add nsw i32 %2, -1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %9 = icmp eq ptr %1, null
  %10 = fcmp uno float %4, %3
  %11 = or i1 %9, %10
  br i1 %11, label %63, label %12

12:                                               ; preds = %5
  %13 = fcmp olt float %3, 0.000000e+00
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = sitofp i32 %2 to float
  %16 = fcmp ugt float %15, %3
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = sitofp i32 %8 to float
  br label %19

19:                                               ; preds = %12, %14, %17
  %20 = phi float [ %18, %17 ], [ %3, %14 ], [ 0.000000e+00, %12 ]
  %21 = fcmp olt float %4, 0.000000e+00
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = sitofp i32 %2 to float
  %24 = fcmp ugt float %23, %4
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = sitofp i32 %8 to float
  br label %27

27:                                               ; preds = %19, %22, %25
  %28 = phi float [ %26, %25 ], [ %4, %22 ], [ 0.000000e+00, %19 ]
  %29 = tail call float @llvm.floor.f32(float %20)
  %30 = fptosi float %29 to i32
  %31 = tail call float @llvm.floor.f32(float %28)
  %32 = fptosi float %31 to i32
  %33 = add nsw i32 %30, 1
  %34 = add nsw i32 %32, 1
  %35 = icmp slt i32 %33, %2
  %36 = select i1 %35, i32 %33, i32 %8
  %37 = icmp slt i32 %34, %2
  %38 = select i1 %37, i32 %34, i32 %8
  %39 = sitofp i32 %30 to float
  %40 = fsub float %20, %39
  %41 = sitofp i32 %32 to float
  %42 = fsub float %28, %41
  %43 = fsub float 1.000000e+00, %40
  %44 = mul nsw i32 %32, %2
  %45 = add nsw i32 %44, %30
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x float], ptr %1, i64 %46
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %47, float noundef %43) #21
  %48 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %49 = add nsw i32 %44, %36
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float], ptr %1, i64 %50
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %48, ptr noundef nonnull %51, float noundef %40) #21
  %52 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %53 = mul nsw i32 %38, %2
  %54 = add nsw i32 %53, %30
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x float], ptr %1, i64 %55
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %52, ptr noundef nonnull %56, float noundef %43) #21
  %57 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %58 = add nsw i32 %53, %36
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x float], ptr %1, i64 %59
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %57, ptr noundef nonnull %60, float noundef %40) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %48) #21
  %61 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 0, i64 1
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %61, ptr noundef nonnull %52, ptr noundef nonnull %57) #21
  %62 = fsub float 1.000000e+00, %42
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %62) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %61, float noundef %42) #21
  call fastcc void @add_v3_v3v3(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %61) #21
  br label %63

63:                                               ; preds = %5, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !220 {
  %4 = load float, ptr %1, align 4, !tbaa !147
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !147
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !147
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !147
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !147
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_load_old_250(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 19) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !221
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i32 [ %7, %9 ], [ %22, %21 ]
  %13 = phi i64 [ 0, %9 ], [ %23, %21 ]
  %14 = getelementptr inbounds %struct.MDisps, ptr %3, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !112
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %10, align 8, !tbaa !222
  %19 = getelementptr inbounds %struct.MFace, ptr %18, i64 %13
  tail call fastcc void @old_mdisps_convert(ptr noundef %19, ptr noundef nonnull %14) #21
  %20 = load i32, ptr %6, align 8, !tbaa !221
  br label %21

21:                                               ; preds = %11, %17
  %22 = phi i32 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = sext i32 %22 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %11, label %26, !llvm.loop !223

26:                                               ; preds = %21, %5
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %29 = load i32, ptr %28, align 4, !tbaa !47
  %30 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %27, i32 noundef 19, i32 noundef 1, ptr noundef null, i32 noundef %29) #20
  %31 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %27, i32 noundef 19) #20
  %32 = load i32, ptr %6, align 8, !tbaa !221
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !222
  %37 = getelementptr inbounds %struct.MFace, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !224
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 3, i32 4
  %41 = load i32, ptr %3, align 8, !tbaa !112
  %42 = sdiv i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 12
  %45 = getelementptr inbounds %struct.MDisps, ptr %3, i64 0, i32 1
  %46 = getelementptr inbounds %struct.MDisps, ptr %3, i64 0, i32 2
  br label %47

47:                                               ; preds = %47, %34
  %48 = phi i64 [ %58, %47 ], [ 0, %34 ]
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %50 = tail call ptr %49(i64 noundef %44, ptr noundef nonnull @.str.8) #20
  %51 = getelementptr inbounds %struct.MDisps, ptr %31, i64 %48
  %52 = getelementptr inbounds %struct.MDisps, ptr %31, i64 %48, i32 2
  store ptr %50, ptr %52, align 8, !tbaa !121
  store i32 %42, ptr %51, align 8, !tbaa !112
  %53 = load i32, ptr %45, align 4, !tbaa !118
  %54 = getelementptr inbounds %struct.MDisps, ptr %31, i64 %48, i32 1
  store i32 %53, ptr %54, align 4, !tbaa !118
  %55 = load ptr, ptr %46, align 8, !tbaa !121
  %56 = mul nsw i64 %48, %43
  %57 = getelementptr inbounds [3 x float], ptr %55, i64 %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %50, ptr align 4 %57, i64 %43, i1 false)
  %58 = add nuw i64 %48, 1
  br label %47, !llvm.loop !226

59:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @old_mdisps_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !227 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = load i32, ptr %1, align 8, !tbaa !112
  %6 = sitofp i32 %5 to double
  %7 = tail call double @sqrt(double noundef %6) #20
  %8 = fadd double %7, -1.000000e+00
  %9 = tail call double @log(double noundef %8) #20
  %10 = fdiv double %9, 0x3FE62E42FEFA39EF
  %11 = fptosi double %10 to i32
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !117
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !117
  %19 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !224
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 3, i32 4
  %23 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %16
  %24 = load i32, ptr %23, align 4, !tbaa !117
  %25 = mul nsw i32 %22, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store float 0.000000e+00, ptr %3, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store float 0.000000e+00, ptr %4, align 4, !tbaa !147
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %27 = sext i32 %25 to i64
  %28 = mul nsw i64 %27, 12
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.10) #20
  %30 = icmp eq i32 %11, 0
  %31 = getelementptr inbounds %struct.MDisps, ptr %1, i64 0, i32 2
  %32 = tail call i32 @llvm.smax.i32(i32 %18, i32 1)
  br label %33

33:                                               ; preds = %2, %66
  %34 = phi ptr [ %29, %2 ], [ %67, %66 ]
  %35 = phi i32 [ 0, %2 ], [ %68, %66 ]
  br i1 %30, label %66, label %36

36:                                               ; preds = %33, %63
  %37 = phi i32 [ %64, %63 ], [ 0, %33 ]
  %38 = phi ptr [ %61, %63 ], [ %34, %33 ]
  br label %39

39:                                               ; preds = %36, %59
  %40 = phi i32 [ 0, %36 ], [ %60, %59 ]
  %41 = phi ptr [ %38, %36 ], [ %61, %59 ]
  call fastcc void @old_mdisps_rotate(i32 noundef %35, i32 noundef %15, i32 noundef %40, i32 noundef %37, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %42 = load ptr, ptr %31, align 8, !tbaa !121
  %43 = load float, ptr %3, align 4, !tbaa !147
  %44 = load float, ptr %4, align 4, !tbaa !147
  tail call void @old_mdisps_bilinear(ptr noundef %41, ptr noundef %42, i32 noundef %15, float noundef %43, float noundef %44) #21
  switch i32 %35, label %59 [
    i32 1, label %45
    i32 2, label %49
    i32 3, label %52
    i32 0, label %55
  ]

45:                                               ; preds = %39
  %46 = getelementptr inbounds [3 x float], ptr %41, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !147
  %48 = fneg float %47
  store float %48, ptr %46, align 4, !tbaa !147
  br label %59

49:                                               ; preds = %39
  %50 = load <2 x float>, ptr %41, align 4, !tbaa !147
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %51, ptr %41, align 4, !tbaa !147
  br label %59

52:                                               ; preds = %39
  %53 = load float, ptr %41, align 4, !tbaa !147
  %54 = fneg float %53
  store float %54, ptr %41, align 4, !tbaa !147
  br label %59

55:                                               ; preds = %39
  %56 = load <2 x float>, ptr %41, align 4, !tbaa !147
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %58 = fneg <2 x float> %57
  store <2 x float> %58, ptr %41, align 4, !tbaa !147
  br label %59

59:                                               ; preds = %39, %45, %52, %55, %49
  %60 = add nuw nsw i32 %40, 1
  %61 = getelementptr inbounds [3 x float], ptr %41, i64 1
  %62 = icmp eq i32 %60, %32
  br i1 %62, label %63, label %39, !llvm.loop !228

63:                                               ; preds = %59
  %64 = add nuw nsw i32 %37, 1
  %65 = icmp eq i32 %64, %32
  br i1 %65, label %66, label %36, !llvm.loop !229

66:                                               ; preds = %63, %33
  %67 = phi ptr [ %34, %33 ], [ %61, %63 ]
  %68 = add nuw nsw i32 %35, 1
  %69 = icmp eq i32 %68, %22
  br i1 %69, label %70, label %33, !llvm.loop !230

70:                                               ; preds = %66
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %72 = load ptr, ptr %31, align 8, !tbaa !121
  tail call void %71(ptr noundef %72) #20
  store i32 %25, ptr %1, align 8, !tbaa !112
  %73 = getelementptr inbounds %struct.MDisps, ptr %1, i64 0, i32 1
  store i32 %11, ptr %73, align 4, !tbaa !118
  store ptr %29, ptr %31, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !231
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.MultiresLevel, ptr %4, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !233
  tail call void @CustomData_free(ptr noundef nonnull %7, i32 noundef %9) #20
  %10 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 11
  %11 = getelementptr inbounds %struct.MultiresLevel, ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !235
  tail call void @CustomData_free(ptr noundef nonnull %10, i32 noundef %12) #20
  %13 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !236
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %17(ptr noundef nonnull %14) #20
  br label %18

18:                                               ; preds = %16, %6
  %19 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !237
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %23(ptr noundef nonnull %20) #20
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %25
  %26 = phi ptr [ %27, %25 ], [ %4, %24 ]
  tail call fastcc void @multires_free_level(ptr noundef nonnull %26) #21
  %27 = load ptr, ptr %26, align 8, !tbaa !238
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !239

29:                                               ; preds = %25, %3
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.Multires, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !240
  tail call void %30(ptr noundef %32) #20
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #20
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %33(ptr noundef nonnull %0) #20
  br label %34

34:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_free_level(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !241 {
  %2 = getelementptr inbounds %struct.MultiresLevel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !242
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %6(ptr noundef nonnull %3) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.MultiresLevel, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %12(ptr noundef nonnull %9) #20
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.MultiresLevel, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !244
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %18(ptr noundef nonnull %15) #20
  br label %19

19:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_load_old(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 48
  %4 = load ptr, ptr %3, align 8, !tbaa !245
  %5 = load ptr, ptr %4, align 8, !tbaa !231
  %6 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %7 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !233
  tail call void @CustomData_free_layers(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %8) #20
  %9 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %10 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !246
  tail call void @CustomData_free_layers(ptr noundef nonnull %9, i32 noundef 3, i32 noundef %11) #20
  %12 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %13 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !235
  tail call void @CustomData_free_layers(ptr noundef nonnull %12, i32 noundef 4, i32 noundef %14) #20
  %15 = load i32, ptr %7, align 8, !tbaa !233
  %16 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  store i32 %15, ptr %16, align 8, !tbaa !125
  %17 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %18 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %19 = load <2 x i32>, ptr %13, align 4, !tbaa !117
  %20 = shufflevector <2 x i32> %19, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %20, ptr %17, align 4, !tbaa !117
  %21 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %15) #20
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  store ptr %21, ptr %22, align 8, !tbaa !127
  %23 = load i32, ptr %17, align 4, !tbaa !247
  %24 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %23) #20
  %25 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 16
  store ptr %24, ptr %25, align 8, !tbaa !248
  %26 = load i32, ptr %18, align 8, !tbaa !221
  %27 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %12, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %26) #20
  %28 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 12
  store ptr %27, ptr %28, align 8, !tbaa !222
  %29 = load ptr, ptr %22, align 8, !tbaa !127
  %30 = load ptr, ptr %3, align 8, !tbaa !245
  %31 = getelementptr inbounds %struct.Multires, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !240
  %33 = load i32, ptr %16, align 8, !tbaa !125
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %32, i64 %35, i1 false)
  %36 = load i32, ptr %17, align 4, !tbaa !247
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !243
  %41 = load ptr, ptr %25, align 8, !tbaa !248
  %42 = zext nneg i32 %36 to i64
  br label %51

43:                                               ; preds = %51, %2
  %44 = load i32, ptr %18, align 8, !tbaa !221
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.MultiresLevel, ptr %5, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !242
  %49 = load ptr, ptr %28, align 8, !tbaa !222
  %50 = zext nneg i32 %44 to i64
  br label %61

51:                                               ; preds = %38, %51
  %52 = phi i64 [ 0, %38 ], [ %59, %51 ]
  %53 = getelementptr inbounds %struct.MultiresEdge, ptr %40, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !117
  %55 = getelementptr inbounds %struct.MEdge, ptr %41, i64 %52
  store i32 %54, ptr %55, align 4, !tbaa !249
  %56 = getelementptr inbounds %struct.MultiresEdge, ptr %40, i64 %52, i32 0, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !117
  %58 = getelementptr inbounds %struct.MEdge, ptr %41, i64 %52, i32 1
  store i32 %57, ptr %58, align 4, !tbaa !251
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %42
  br i1 %60, label %43, label %51, !llvm.loop !252

61:                                               ; preds = %46, %61
  %62 = phi i64 [ 0, %46 ], [ %79, %61 ]
  %63 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !117
  %65 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62
  store i32 %64, ptr %65, align 4, !tbaa !253
  %66 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 0, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !117
  %68 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 1
  store i32 %67, ptr %68, align 4, !tbaa !254
  %69 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 0, i64 2
  %70 = load i32, ptr %69, align 4, !tbaa !117
  %71 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 2
  store i32 %70, ptr %71, align 4, !tbaa !255
  %72 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 0, i64 3
  %73 = load i32, ptr %72, align 4, !tbaa !117
  %74 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 3
  store i32 %73, ptr %74, align 4, !tbaa !224
  %75 = getelementptr inbounds %struct.MultiresFace, ptr %48, i64 %62, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !256
  %77 = zext i8 %76 to i16
  %78 = getelementptr inbounds %struct.MFace, ptr %49, i64 %62, i32 4
  store i16 %77, ptr %78, align 4, !tbaa !258
  %79 = add nuw nsw i64 %62, 1
  %80 = icmp eq i64 %79, %50
  br i1 %80, label %81, label %61, !llvm.loop !259

81:                                               ; preds = %61, %43
  %82 = load ptr, ptr %3, align 8, !tbaa !245
  %83 = getelementptr inbounds %struct.Multires, ptr %82, i64 0, i32 10, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !260
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.Multires, ptr %82, i64 0, i32 10
  %88 = load ptr, ptr %87, align 8, !tbaa !261
  br label %89

89:                                               ; preds = %86, %89
  %90 = phi i32 [ %97, %89 ], [ 0, %86 ]
  %91 = phi ptr [ %98, %89 ], [ %88, %86 ]
  %92 = load i32, ptr %91, align 8, !tbaa !262
  %93 = getelementptr inbounds %struct.CustomDataLayer, ptr %91, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !264
  %95 = load i32, ptr %16, align 8, !tbaa !125
  %96 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef %92, i32 noundef 3, ptr noundef %94, i32 noundef %95) #20
  %97 = add nuw nsw i32 %90, 1
  %98 = getelementptr inbounds %struct.CustomDataLayer, ptr %91, i64 1
  %99 = load ptr, ptr %3, align 8, !tbaa !245
  %100 = getelementptr inbounds %struct.Multires, ptr %99, i64 0, i32 10, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !260
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %89, label %103, !llvm.loop !265

103:                                              ; preds = %89, %81
  %104 = phi ptr [ %82, %81 ], [ %99, %89 ]
  %105 = getelementptr inbounds %struct.Multires, ptr %104, i64 0, i32 11, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !266
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.Multires, ptr %104, i64 0, i32 11
  %110 = load ptr, ptr %109, align 8, !tbaa !267
  br label %111

111:                                              ; preds = %108, %111
  %112 = phi i32 [ %119, %111 ], [ 0, %108 ]
  %113 = phi ptr [ %120, %111 ], [ %110, %108 ]
  %114 = load i32, ptr %113, align 8, !tbaa !262
  %115 = getelementptr inbounds %struct.CustomDataLayer, ptr %113, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !264
  %117 = load i32, ptr %18, align 8, !tbaa !221
  %118 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %12, i32 noundef %114, i32 noundef 3, ptr noundef %116, i32 noundef %117) #20
  %119 = add nuw nsw i32 %112, 1
  %120 = getelementptr inbounds %struct.CustomDataLayer, ptr %113, i64 1
  %121 = load ptr, ptr %3, align 8, !tbaa !245
  %122 = getelementptr inbounds %struct.Multires, ptr %121, i64 0, i32 11, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !266
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %111, label %125, !llvm.loop !268

125:                                              ; preds = %111, %103
  %126 = phi ptr [ %104, %103 ], [ %121, %111 ]
  %127 = getelementptr inbounds %struct.Multires, ptr %126, i64 0, i32 10
  tail call void @CustomData_reset(ptr noundef nonnull %127) #20
  %128 = load ptr, ptr %3, align 8, !tbaa !245
  %129 = getelementptr inbounds %struct.Multires, ptr %128, i64 0, i32 11
  tail call void @CustomData_reset(ptr noundef nonnull %129) #20
  tail call fastcc void @multires_load_old_vcols(ptr noundef nonnull %1) #21
  tail call fastcc void @multires_load_old_face_flags(ptr noundef nonnull %1) #21
  tail call void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef nonnull %1) #20
  %130 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %131

131:                                              ; preds = %135, %125
  %132 = phi ptr [ %130, %125 ], [ %133, %135 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !56
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.ModifierData, ptr %133, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !48
  %138 = tail call ptr @modifierType_getInfo(i32 noundef %137) #20
  %139 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %138, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !269
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %131, label %142, !llvm.loop !270

142:                                              ; preds = %131, %135
  %143 = tail call ptr @modifier_new(i32 noundef 29) #20
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %130, ptr noundef %133, ptr noundef %143) #20
  %144 = load ptr, ptr %3, align 8, !tbaa !245
  %145 = getelementptr inbounds %struct.Multires, ptr %144, i64 0, i32 2
  %146 = load i8, ptr %145, align 8, !tbaa !271
  %147 = icmp ugt i8 %146, 1
  br i1 %147, label %148, label %157

148:                                              ; preds = %142, %148
  %149 = phi i32 [ %150, %148 ], [ 0, %142 ]
  tail call void @multiresModifier_subdivide(ptr noundef %143, ptr noundef %0, i32 noundef 1, i32 noundef 0) #21
  %150 = add nuw nsw i32 %149, 1
  %151 = load ptr, ptr %3, align 8, !tbaa !245
  %152 = getelementptr inbounds %struct.Multires, ptr %151, i64 0, i32 2
  %153 = load i8, ptr %152, align 8, !tbaa !271
  %154 = zext i8 %153 to i32
  %155 = add nsw i32 %154, -1
  %156 = icmp slt i32 %150, %155
  br i1 %156, label %148, label %157, !llvm.loop !272

157:                                              ; preds = %148, %142
  %158 = getelementptr inbounds %struct.MultiresModifierData, ptr %143, i64 0, i32 4
  %159 = load i8, ptr %158, align 1, !tbaa !58
  %160 = getelementptr inbounds %struct.MultiresModifierData, ptr %143, i64 0, i32 1
  store i8 %159, ptr %160, align 8, !tbaa !64
  %161 = tail call ptr @CDDM_from_mesh(ptr noundef nonnull %1) #20
  %162 = tail call ptr @multires_make_derived_from_derived(ptr noundef %161, ptr noundef %143, ptr noundef %0, i32 noundef 0) #21
  %163 = load i8, ptr %158, align 1, !tbaa !58
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %164, 1
  tail call fastcc void @multires_load_old_dm(ptr noundef %162, ptr noundef nonnull %1, i32 noundef %165) #21
  tail call fastcc void @multires_dm_mark_as_modified(ptr noundef %162, i32 noundef 1) #21
  %166 = getelementptr inbounds %struct.DerivedMesh, ptr %162, i64 0, i32 95
  %167 = load ptr, ptr %166, align 8, !tbaa !78
  tail call void %167(ptr noundef %162) #20
  %168 = getelementptr inbounds %struct.DerivedMesh, ptr %161, i64 0, i32 95
  %169 = load ptr, ptr %168, align 8, !tbaa !78
  tail call void %169(ptr noundef %161) #20
  %170 = load ptr, ptr %3, align 8, !tbaa !245
  tail call void @multires_free(ptr noundef %170) #21
  store ptr null, ptr %3, align 8, !tbaa !245
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_load_old_vcols(ptr noundef %0) unnamed_addr #0 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 48
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.MultiresLevel, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !244
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %12 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %11, i32 noundef 6) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !221
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = zext nneg i32 %16 to i64
  br label %20

20:                                               ; preds = %18, %33
  %21 = phi i64 [ 0, %18 ], [ %34, %33 ]
  %22 = getelementptr inbounds %struct.MultiresColFace, ptr %8, i64 %21
  %23 = shl nsw i64 %21, 2
  %24 = getelementptr %struct.MCol, ptr %12, i64 %23
  br label %25

25:                                               ; preds = %20, %25
  %26 = phi i64 [ 0, %20 ], [ %31, %25 ]
  %27 = getelementptr inbounds [4 x %struct.MultiresCol], ptr %22, i64 0, i64 %26
  %28 = getelementptr %struct.MCol, ptr %24, i64 %26
  %29 = load <4 x float>, ptr %27, align 4, !tbaa !147
  %30 = fptoui <4 x float> %29 to <4 x i8>
  store <4 x i8> %30, ptr %28, align 1, !tbaa !274
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %25, !llvm.loop !275

33:                                               ; preds = %25
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, %19
  br i1 %35, label %36, label %20, !llvm.loop !276

36:                                               ; preds = %33, %14, %10, %6, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @multires_load_old_face_flags(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !277 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 48
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.MultiresLevel, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !242
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !221
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !222
  %17 = zext nneg i32 %12 to i64
  br label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ 0, %14 ], [ %23, %18 ]
  %20 = getelementptr inbounds %struct.MultiresFace, ptr %8, i64 %19, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !278
  %22 = getelementptr inbounds %struct.MFace, ptr %16, i64 %19, i32 6
  store i8 %21, ptr %22, align 1, !tbaa !279
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %17
  br i1 %24, label %25, label %18, !llvm.loop !280

25:                                               ; preds = %18, %10, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_load_old_dm(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !281 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 48
  %5 = load ptr, ptr %4, align 8, !tbaa !245
  %6 = add nsw i32 %2, -1
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !117
  %10 = add nsw i32 %9, -1
  %11 = zext nneg i32 %2 to i64
  %12 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !117
  %14 = add nsw i32 %13, -2
  %15 = getelementptr inbounds %struct.Multires, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !240
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = tail call ptr %18(ptr noundef %0) #20
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = tail call i32 %21(ptr noundef %0) #20
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %24 = zext i32 %22 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.16) #20
  %27 = load ptr, ptr %5, align 8, !tbaa !231
  %28 = getelementptr inbounds %struct.MultiresLevel, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !233
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %3
  %32 = sub i32 0, %29
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i32 [ %42, %33 ], [ %32, %31 ]
  %35 = phi i32 [ %40, %33 ], [ 0, %31 ]
  %36 = add i32 %35, %22
  %37 = add i32 %36, %34
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %26, i64 %38
  store i32 %35, ptr %39, align 4, !tbaa !117
  %40 = add nuw i32 %35, 1
  %41 = load i32, ptr %28, align 8, !tbaa !233
  %42 = sub i32 0, %41
  %43 = icmp ult i32 %40, %41
  br i1 %43, label %33, label %44, !llvm.loop !282

44:                                               ; preds = %33, %3
  %45 = phi i32 [ 0, %3 ], [ %40, %33 ]
  %46 = phi i32 [ 0, %3 ], [ %42, %33 ]
  %47 = getelementptr inbounds %struct.MultiresLevel, ptr %27, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !246
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Multires, ptr %5, i64 0, i32 2
  %52 = load i8, ptr %51, align 8, !tbaa !271
  %53 = zext i8 %52 to i64
  %54 = load ptr, ptr %27, align 8, !tbaa !238
  %55 = icmp ult i8 %52, 2
  %56 = add i32 %22, -2
  %57 = add i32 %56, %46
  %58 = zext i32 %2 to i64
  br label %68

59:                                               ; preds = %123, %44
  %60 = getelementptr inbounds %struct.MultiresLevel, ptr %27, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !235
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %147, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.MultiresLevel, ptr %27, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !242
  %66 = add nsw i32 %9, -2
  %67 = mul i32 %10, %66
  br label %127

68:                                               ; preds = %50, %123
  %69 = phi i32 [ %48, %50 ], [ %124, %123 ]
  %70 = phi i32 [ 0, %50 ], [ %125, %123 ]
  br i1 %55, label %123, label %71

71:                                               ; preds = %68
  %72 = sub i32 %70, %48
  %73 = mul i32 %72, %14
  %74 = add i32 %57, %73
  br label %75

75:                                               ; preds = %109, %71
  %76 = phi i64 [ 2, %71 ], [ %118, %109 ]
  %77 = phi ptr [ %54, %71 ], [ %119, %109 ]
  %78 = phi i32 [ %45, %71 ], [ %117, %109 ]
  %79 = add nsw i64 %76, -1
  %80 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !117
  %82 = add i32 %81, -1
  %83 = sub nsw i64 %58, %76
  %84 = add i64 %83, 2
  %85 = and i64 %84, 4294967295
  %86 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !117
  %88 = add nsw i32 %87, -1
  %89 = add i64 %83, 1
  %90 = and i64 %89, 4294967295
  %91 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !117
  %93 = mul i32 %82, %70
  %94 = add i32 %93, %78
  %95 = add i32 %74, %92
  %96 = tail call i32 @llvm.smax.i32(i32 %82, i32 1)
  %97 = zext nneg i32 %96 to i64
  br label %98

98:                                               ; preds = %75, %98
  %99 = phi i64 [ 0, %75 ], [ %107, %98 ]
  %100 = trunc i64 %99 to i32
  %101 = add i32 %94, %100
  %102 = trunc i64 %99 to i32
  %103 = mul i32 %88, %102
  %104 = add i32 %95, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %26, i64 %105
  store i32 %101, ptr %106, align 4, !tbaa !117
  %107 = add nuw nsw i64 %99, 1
  %108 = icmp eq i64 %107, %97
  br i1 %108, label %109, label %98, !llvm.loop !283

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.MultiresLevel, ptr %77, i64 0, i32 5
  %111 = load i32, ptr %110, align 8, !tbaa !233
  %112 = getelementptr inbounds %struct.MultiresLevel, ptr %77, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !284
  %114 = getelementptr inbounds %struct.MultiresLevel, ptr %113, i64 0, i32 5
  %115 = load i32, ptr %114, align 8, !tbaa !233
  %116 = add i32 %111, %78
  %117 = sub i32 %116, %115
  %118 = add nuw nsw i64 %76, 1
  %119 = load ptr, ptr %77, align 8, !tbaa !238
  %120 = icmp eq i64 %76, %53
  br i1 %120, label %121, label %75, !llvm.loop !285

121:                                              ; preds = %109
  %122 = load i32, ptr %47, align 8, !tbaa !246
  br label %123

123:                                              ; preds = %121, %68
  %124 = phi i32 [ %122, %121 ], [ %69, %68 ]
  %125 = add nuw i32 %70, 1
  %126 = icmp ult i32 %125, %124
  br i1 %126, label %68, label %59, !llvm.loop !286

127:                                              ; preds = %63, %127
  %128 = phi i64 [ 0, %63 ], [ %143, %127 ]
  %129 = phi i32 [ 0, %63 ], [ %142, %127 ]
  %130 = getelementptr inbounds %struct.MultiresFace, ptr %65, i64 %128, i32 0, i64 3
  %131 = load i32, ptr %130, align 4, !tbaa !117
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 3, i32 4
  %134 = load i32, ptr %47, align 8, !tbaa !246
  %135 = trunc i64 %128 to i32
  %136 = add i32 %45, %135
  %137 = add i32 %136, %134
  %138 = zext i32 %129 to i64
  %139 = getelementptr inbounds i32, ptr %26, i64 %138
  store i32 %137, ptr %139, align 4, !tbaa !117
  %140 = mul i32 %67, %133
  %141 = add i32 %129, 1
  %142 = add i32 %141, %140
  %143 = add nuw nsw i64 %128, 1
  %144 = load i32, ptr %60, align 4, !tbaa !235
  %145 = zext i32 %144 to i64
  %146 = icmp ult i64 %143, %145
  br i1 %146, label %127, label %147, !llvm.loop !287

147:                                              ; preds = %127, %59
  %148 = phi i32 [ 0, %59 ], [ %144, %127 ]
  %149 = load ptr, ptr %27, align 8, !tbaa !238
  %150 = icmp eq ptr %149, null
  br i1 %150, label %419, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %149, align 8, !tbaa !238
  %153 = icmp eq ptr %152, null
  br i1 %153, label %419, label %154

154:                                              ; preds = %151
  %155 = add nsw i32 %9, -2
  %156 = icmp eq i32 %148, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.Multires, ptr %5, i64 0, i32 2
  %159 = load i8, ptr %158, align 8, !tbaa !271
  br label %263

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.MultiresLevel, ptr %27, i64 0, i32 2
  %162 = getelementptr inbounds %struct.Multires, ptr %5, i64 0, i32 2
  %163 = mul i32 %10, %155
  %164 = zext i32 %2 to i64
  %165 = load i8, ptr %162, align 8, !tbaa !271
  br label %166

166:                                              ; preds = %160, %250
  %167 = phi i32 [ %148, %160 ], [ %251, %250 ]
  %168 = phi i8 [ %165, %160 ], [ %252, %250 ]
  %169 = phi i64 [ 0, %160 ], [ %260, %250 ]
  %170 = phi i32 [ 0, %160 ], [ %254, %250 ]
  %171 = phi i32 [ 0, %160 ], [ %259, %250 ]
  %172 = phi i32 [ 0, %160 ], [ %256, %250 ]
  %173 = load ptr, ptr %161, align 8, !tbaa !242
  %174 = getelementptr inbounds %struct.MultiresFace, ptr %173, i64 %169, i32 0, i64 3
  %175 = load i32, ptr %174, align 4, !tbaa !117
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, i32 4, i32 3
  %178 = add i32 %170, 1
  %179 = icmp ult i8 %168, 3
  br i1 %179, label %250, label %180

180:                                              ; preds = %166
  %181 = load ptr, ptr %27, align 8, !tbaa !238
  %182 = mul nsw i32 %171, 3
  %183 = shl nsw i32 %172, 2
  %184 = add nuw nsw i32 %182, %183
  %185 = add i32 %170, 2
  br label %186

186:                                              ; preds = %180, %243
  %187 = phi i64 [ 3, %180 ], [ %244, %243 ]
  %188 = phi ptr [ %181, %180 ], [ %189, %243 ]
  %189 = load ptr, ptr %188, align 8, !tbaa !238
  %190 = sub nsw i64 %164, %187
  %191 = add nsw i64 %190, 1
  %192 = and i64 %191, 4294967295
  %193 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !117
  %195 = add i64 %190, 2
  %196 = and i64 %195, 4294967295
  %197 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !117
  %199 = sub i32 1, %198
  %200 = trunc i64 %187 to i32
  %201 = add nsw i32 %200, -2
  %202 = uitofp i32 %201 to double
  %203 = tail call double @exp2(double %202) #22
  %204 = fptosi double %203 to i32
  %205 = trunc i64 %187 to i32
  %206 = add nsw i32 %205, -3
  %207 = uitofp i32 %206 to double
  %208 = tail call double @exp2(double %207) #22
  %209 = fptosi double %208 to i32
  %210 = getelementptr inbounds %struct.MultiresLevel, ptr %189, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !284
  %212 = getelementptr inbounds %struct.MultiresLevel, ptr %211, i64 0, i32 5
  %213 = load i32, ptr %212, align 8, !tbaa !233
  %214 = load i32, ptr %47, align 8, !tbaa !246
  %215 = mul i32 %214, %204
  %216 = mul nsw i32 %184, %209
  %217 = add i32 %216, %213
  %218 = add i32 %217, %215
  %219 = icmp sgt i32 %209, 0
  %220 = sub i32 %185, %194
  %221 = zext nneg i32 %209 to i64
  br label %222

222:                                              ; preds = %186, %240
  %223 = phi i32 [ 0, %186 ], [ %225, %240 ]
  %224 = phi i32 [ %218, %186 ], [ %241, %240 ]
  %225 = add nuw nsw i32 %223, 1
  br i1 %219, label %226, label %240

226:                                              ; preds = %222
  %227 = mul nsw i32 %225, %155
  %228 = add i32 %220, %227
  br label %229

229:                                              ; preds = %226, %229
  %230 = phi i64 [ 0, %226 ], [ %238, %229 ]
  %231 = phi i32 [ %224, %226 ], [ %237, %229 ]
  %232 = trunc i64 %230 to i32
  %233 = mul i32 %199, %232
  %234 = add i32 %228, %233
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, ptr %26, i64 %235
  store i32 %231, ptr %236, align 4, !tbaa !117
  %237 = add nsw i32 %231, 1
  %238 = add nuw nsw i64 %230, 1
  %239 = icmp eq i64 %238, %221
  br i1 %239, label %240, label %229, !llvm.loop !288

240:                                              ; preds = %229, %222
  %241 = phi i32 [ %224, %222 ], [ %237, %229 ]
  %242 = icmp eq i32 %225, %177
  br i1 %242, label %243, label %222, !llvm.loop !289

243:                                              ; preds = %240
  %244 = add nuw nsw i64 %187, 1
  %245 = load i8, ptr %162, align 8, !tbaa !271
  %246 = zext i8 %245 to i64
  %247 = icmp ult i64 %187, %246
  br i1 %247, label %186, label %248, !llvm.loop !290

248:                                              ; preds = %243
  %249 = load i32, ptr %60, align 4, !tbaa !235
  br label %250

250:                                              ; preds = %248, %166
  %251 = phi i32 [ %249, %248 ], [ %167, %166 ]
  %252 = phi i8 [ %245, %248 ], [ %168, %166 ]
  %253 = mul i32 %163, %177
  %254 = add i32 %253, %178
  %255 = zext i1 %176 to i32
  %256 = add nuw nsw i32 %172, %255
  %257 = xor i1 %176, true
  %258 = zext i1 %257 to i32
  %259 = add nuw nsw i32 %171, %258
  %260 = add nuw nsw i64 %169, 1
  %261 = zext i32 %251 to i64
  %262 = icmp ult i64 %260, %261
  br i1 %262, label %166, label %263, !llvm.loop !291

263:                                              ; preds = %250, %157
  %264 = phi i8 [ %159, %157 ], [ %252, %250 ]
  %265 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %266 = getelementptr inbounds %struct.Multires, ptr %5, i64 0, i32 2
  %267 = zext i8 %264 to i64
  %268 = shl nuw nsw i64 %267, 3
  %269 = add nsw i64 %268, -8
  %270 = tail call ptr %265(i64 noundef %269, ptr noundef nonnull @.str.17) #20
  %271 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %272 = load i8, ptr %266, align 8, !tbaa !271
  %273 = zext i8 %272 to i64
  %274 = shl nuw nsw i64 %273, 3
  %275 = add nsw i64 %274, -8
  %276 = tail call ptr %271(i64 noundef %275, ptr noundef nonnull @.str.18) #20
  %277 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %278 = load i8, ptr %266, align 8, !tbaa !271
  %279 = zext i8 %278 to i64
  %280 = shl nuw nsw i64 %279, 3
  %281 = add nsw i64 %280, -8
  %282 = tail call ptr %277(i64 noundef %281, ptr noundef nonnull @.str.19) #20
  %283 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %284 = load i8, ptr %266, align 8, !tbaa !271
  %285 = zext i8 %284 to i64
  %286 = shl nuw nsw i64 %285, 3
  %287 = add nsw i64 %286, -8
  %288 = tail call ptr %283(i64 noundef %287, ptr noundef nonnull @.str.20) #20
  %289 = load i8, ptr %266, align 8, !tbaa !271
  %290 = icmp eq i8 %289, 1
  br i1 %290, label %291, label %309

291:                                              ; preds = %309, %263
  %292 = phi i8 [ 1, %263 ], [ %329, %309 ]
  %293 = load i32, ptr %60, align 4, !tbaa !235
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %336, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.MultiresLevel, ptr %27, i64 0, i32 2
  %297 = add nsw i32 %2, -2
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !117
  %301 = add nsw i32 %300, -2
  %302 = icmp eq i32 %301, 0
  %303 = mul nsw i32 %301, %155
  %304 = getelementptr inbounds %struct.MultiresLevel, ptr %27, i64 0, i32 4
  %305 = add nsw i32 %300, -1
  %306 = sdiv i32 %305, 2
  %307 = mul nsw i32 %155, %155
  %308 = select i1 %302, i32 1, i32 %306
  br label %339

309:                                              ; preds = %263, %309
  %310 = phi i64 [ %328, %309 ], [ 0, %263 ]
  %311 = phi ptr [ %327, %309 ], [ %27, %263 ]
  %312 = getelementptr inbounds ptr, ptr %270, i64 %310
  %313 = getelementptr inbounds ptr, ptr %282, i64 %310
  %314 = getelementptr inbounds %struct.MultiresLevel, ptr %311, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !242
  %316 = getelementptr inbounds %struct.MultiresLevel, ptr %311, i64 0, i32 5
  %317 = load i32, ptr %316, align 8, !tbaa !233
  %318 = getelementptr inbounds %struct.MultiresLevel, ptr %311, i64 0, i32 6
  %319 = load i32, ptr %318, align 4, !tbaa !235
  tail call fastcc void @create_old_vert_face_map(ptr noundef %312, ptr noundef %313, ptr noundef %315, i32 noundef %317, i32 noundef %319) #21
  %320 = getelementptr inbounds ptr, ptr %276, i64 %310
  %321 = getelementptr inbounds ptr, ptr %288, i64 %310
  %322 = getelementptr inbounds %struct.MultiresLevel, ptr %311, i64 0, i32 4
  %323 = load ptr, ptr %322, align 8, !tbaa !243
  %324 = load i32, ptr %316, align 8, !tbaa !233
  %325 = getelementptr inbounds %struct.MultiresLevel, ptr %311, i64 0, i32 7
  %326 = load i32, ptr %325, align 8, !tbaa !246
  tail call fastcc void @create_old_vert_edge_map(ptr noundef %320, ptr noundef %321, ptr noundef %323, i32 noundef %324, i32 noundef %326) #21
  %327 = load ptr, ptr %311, align 8, !tbaa !238
  %328 = add nuw nsw i64 %310, 1
  %329 = load i8, ptr %266, align 8, !tbaa !271
  %330 = zext i8 %329 to i64
  %331 = add nuw nsw i64 %330, 4294967295
  %332 = and i64 %331, 4294967295
  %333 = icmp ult i64 %328, %332
  br i1 %333, label %309, label %291, !llvm.loop !292

334:                                              ; preds = %389
  %335 = load i8, ptr %266, align 8, !tbaa !271
  br label %336

336:                                              ; preds = %334, %291
  %337 = phi i8 [ %335, %334 ], [ %292, %291 ]
  %338 = icmp eq i8 %337, 1
  br i1 %338, label %414, label %394

339:                                              ; preds = %295, %389
  %340 = phi i64 [ 0, %295 ], [ %390, %389 ]
  %341 = phi i32 [ 0, %295 ], [ %387, %389 ]
  %342 = load ptr, ptr %296, align 8, !tbaa !242
  %343 = getelementptr inbounds %struct.MultiresFace, ptr %342, i64 %340, i32 0, i64 3
  %344 = load i32, ptr %343, align 4, !tbaa !117
  %345 = icmp eq i32 %344, 0
  %346 = select i1 %345, i32 3, i32 4
  %347 = add i32 %341, 1
  %348 = mul nsw i32 %346, %155
  %349 = add i32 %347, %348
  %350 = add nsw i32 %346, -1
  %351 = zext i32 %341 to i64
  %352 = getelementptr inbounds i32, ptr %26, i64 %351
  %353 = zext nneg i32 %350 to i64
  %354 = zext nneg i32 %346 to i64
  br label %355

355:                                              ; preds = %339, %355
  %356 = phi i64 [ 0, %339 ], [ %365, %355 ]
  %357 = phi i32 [ %349, %339 ], [ %387, %355 ]
  %358 = add i32 %301, %357
  %359 = add i32 %358, %303
  %360 = load ptr, ptr %296, align 8, !tbaa !242
  %361 = getelementptr inbounds %struct.MultiresFace, ptr %360, i64 %340
  %362 = getelementptr inbounds [4 x i32], ptr %361, i64 0, i64 %356
  %363 = load i32, ptr %362, align 4, !tbaa !117
  %364 = icmp eq i64 %356, %353
  %365 = add nuw nsw i64 %356, 1
  %366 = and i64 %365, 4294967295
  %367 = select i1 %364, i64 0, i64 %366
  %368 = getelementptr inbounds [4 x i32], ptr %361, i64 0, i64 %367
  %369 = load i32, ptr %368, align 4, !tbaa !117
  %370 = icmp eq i64 %356, 0
  %371 = trunc i64 %356 to i32
  %372 = add i32 %371, -1
  %373 = select i1 %370, i32 %350, i32 %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [4 x i32], ptr %361, i64 0, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !117
  %377 = load ptr, ptr %27, align 8, !tbaa !238
  %378 = load i32, ptr %352, align 4, !tbaa !117
  %379 = load ptr, ptr %276, align 8, !tbaa !56
  %380 = load ptr, ptr %304, align 8, !tbaa !243
  %381 = tail call fastcc ptr @find_old_edge(ptr noundef %379, ptr noundef %380, i32 noundef %376, i32 noundef %363) #21
  %382 = getelementptr inbounds %struct.MultiresEdge, ptr %381, i64 0, i32 1
  %383 = load i32, ptr %382, align 4, !tbaa !293
  %384 = tail call fastcc ptr @find_old_edge(ptr noundef %379, ptr noundef %380, i32 noundef %363, i32 noundef %369) #21
  %385 = getelementptr inbounds %struct.MultiresEdge, ptr %384, i64 0, i32 1
  %386 = load i32, ptr %385, align 4, !tbaa !293
  tail call fastcc void @multires_load_old_faces(ptr noundef %270, ptr noundef nonnull %276, ptr noundef %377, ptr noundef %26, i32 noundef %359, i32 noundef %378, i32 noundef %363, i32 noundef %383, i32 noundef %386, i32 noundef %155, i32 noundef %308) #21
  %387 = add nsw i32 %357, %307
  %388 = icmp eq i64 %365, %354
  br i1 %388, label %389, label %355, !llvm.loop !295

389:                                              ; preds = %355
  %390 = add nuw nsw i64 %340, 1
  %391 = load i32, ptr %60, align 4, !tbaa !235
  %392 = zext i32 %391 to i64
  %393 = icmp ult i64 %390, %392
  br i1 %393, label %339, label %334, !llvm.loop !296

394:                                              ; preds = %336, %394
  %395 = phi i64 [ %408, %394 ], [ 0, %336 ]
  %396 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %397 = getelementptr inbounds ptr, ptr %270, i64 %395
  %398 = load ptr, ptr %397, align 8, !tbaa !56
  tail call void %396(ptr noundef %398) #20
  %399 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %400 = getelementptr inbounds ptr, ptr %282, i64 %395
  %401 = load ptr, ptr %400, align 8, !tbaa !56
  tail call void %399(ptr noundef %401) #20
  %402 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %403 = getelementptr inbounds ptr, ptr %276, i64 %395
  %404 = load ptr, ptr %403, align 8, !tbaa !56
  tail call void %402(ptr noundef %404) #20
  %405 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %406 = getelementptr inbounds ptr, ptr %288, i64 %395
  %407 = load ptr, ptr %406, align 8, !tbaa !56
  tail call void %405(ptr noundef %407) #20
  %408 = add nuw nsw i64 %395, 1
  %409 = load i8, ptr %266, align 8, !tbaa !271
  %410 = zext i8 %409 to i64
  %411 = add nuw nsw i64 %410, 4294967295
  %412 = and i64 %411, 4294967295
  %413 = icmp ult i64 %408, %412
  br i1 %413, label %394, label %414, !llvm.loop !297

414:                                              ; preds = %394, %336
  %415 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %415(ptr noundef %270) #20
  %416 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %416(ptr noundef %276) #20
  %417 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %417(ptr noundef %282) #20
  %418 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %418(ptr noundef %288) #20
  br label %419

419:                                              ; preds = %414, %151, %147
  %420 = icmp eq i32 %22, 0
  br i1 %420, label %430, label %421

421:                                              ; preds = %419, %421
  %422 = phi i64 [ %428, %421 ], [ 0, %419 ]
  %423 = getelementptr inbounds %struct.MVert, ptr %19, i64 %422
  %424 = getelementptr inbounds i32, ptr %26, i64 %422
  %425 = load i32, ptr %424, align 4, !tbaa !117
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.MVert, ptr %16, i64 %426
  tail call fastcc void @copy_v3_v3(ptr noundef %423, ptr noundef %427) #21
  %428 = add nuw nsw i64 %422, 1
  %429 = icmp eq i64 %428, %24
  br i1 %429, label %430, label %421, !llvm.loop !298

430:                                              ; preds = %421, %419
  %431 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %431(ptr noundef %26) #20
  tail call fastcc void @multires_mvert_to_ss(ptr noundef %0, ptr noundef %19) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @multires_mdisp_corners(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i32, ptr %0, align 8, !tbaa !112
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi i32 [ 13, %1 ], [ %7, %6 ]
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %4, -1
  %8 = shl nuw i32 1, %7
  %9 = add nuw nsw i32 %8, 1
  %10 = mul nsw i32 %9, %9
  %11 = srem i32 %2, %10
  %12 = sdiv i32 %2, %10
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %3

14:                                               ; preds = %3, %6
  %15 = phi i32 [ %12, %6 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multiresModifier_scale_disp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #22
  call void @BKE_object_scale_to_mat3(ptr noundef %1, ptr noundef nonnull %3) #20
  call fastcc void @multires_apply_smat(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_scale_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_apply_smat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !299 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca %struct.MultiresModifierData, align 8
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #21
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #22
  %14 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 25
  %15 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 31
  %16 = load i32, ptr %15, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %14, ptr noundef %10, i64 noundef 524288, i32 noundef %16) #20
  %17 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %14, i32 noundef 19) #20
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %13, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %151

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.MultiresModifierData, ptr %13, i64 0, i32 4
  %23 = load i8, ptr %22, align 1, !tbaa !58
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %151, label %25

25:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(120) %13, i64 120, i1 false), !tbaa.struct !300
  %26 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 4
  %27 = load i8, ptr %26, align 1, !tbaa !58
  %28 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 1
  store i8 %27, ptr %28, align 8, !tbaa !64
  %29 = call ptr @get_multires_dm(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %1) #21
  %30 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !50
  %31 = call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %30) #20
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 23
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = call i32 %33(ptr noundef %31) #20
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %36 = sext i32 %34 to i64
  %37 = mul nsw i64 %36, 12
  %38 = call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.25) #20
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 77
  %40 = load ptr, ptr %39, align 8, !tbaa !101
  call void %40(ptr noundef %31, ptr noundef %38) #20
  %41 = icmp sgt i32 %34, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = zext nneg i32 %34 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %47, %44 ]
  %46 = getelementptr inbounds [3 x float], ptr %38, i64 %45
  call void @mul_m3_v3(ptr noundef %2, ptr noundef %46) #20
  %47 = add nuw nsw i64 %45, 1
  %48 = icmp eq i64 %47, %43
  br i1 %48, label %49, label %44, !llvm.loop !301

49:                                               ; preds = %44, %25
  call void @CDDM_apply_vert_coords(ptr noundef %31, ptr noundef %38) #20
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %50(ptr noundef %38) #20
  %51 = load i8, ptr %26, align 1, !tbaa !58
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 5
  %54 = load i8, ptr %53, align 4, !tbaa !145
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.MultiresModifierData, ptr %13, i64 0, i32 6
  %57 = load i8, ptr %56, align 1, !tbaa !142
  %58 = and i8 %57, 2
  %59 = zext nneg i8 %58 to i32
  %60 = call fastcc ptr @subsurf_dm_create_local(ptr noundef %1, ptr noundef %31, i32 noundef %52, i32 noundef %55, i32 noundef 0, i32 noundef %59, i32 noundef 0) #21
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 95
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  call void %62(ptr noundef %31) #20
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %60, i64 0, i32 64
  %64 = load ptr, ptr %63, align 8, !tbaa !159
  %65 = call i32 %64(ptr noundef %60) #20
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %60, i64 0, i32 65
  %67 = load ptr, ptr %66, align 8, !tbaa !143
  %68 = call ptr %67(ptr noundef %60) #20
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %60, i64 0, i32 67
  %70 = load ptr, ptr %69, align 8, !tbaa !160
  %71 = call ptr %70(ptr noundef %60) #20
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %60, i64 0, i32 68
  %73 = load ptr, ptr %72, align 8, !tbaa !81
  call void %73(ptr noundef %60, ptr noundef nonnull %4) #20
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 65
  %75 = load ptr, ptr %74, align 8, !tbaa !143
  %76 = call ptr %75(ptr noundef %29) #20
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 68
  %78 = load ptr, ptr %77, align 8, !tbaa !81
  call void %78(ptr noundef %29, ptr noundef nonnull %5) #20
  %79 = load i8, ptr %26, align 1, !tbaa !58
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [14 x i32], ptr @multires_side_tot, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !117
  %83 = add nsw i32 %82, -1
  %84 = add nsw i32 %65, -1
  %85 = sdiv i32 %83, %84
  %86 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 30
  %87 = load i32, ptr %86, align 8, !tbaa !107
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %146

89:                                               ; preds = %49
  %90 = icmp sgt i32 %65, 0
  %91 = zext nneg i32 %65 to i64
  br label %92

92:                                               ; preds = %89, %141
  %93 = phi i32 [ %87, %89 ], [ %142, %141 ]
  %94 = phi i64 [ 0, %89 ], [ %143, %141 ]
  %95 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %94, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !109
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %92
  %99 = getelementptr inbounds i32, ptr %71, i64 %94
  %100 = load i32, ptr %99, align 4, !tbaa !117
  %101 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %94
  %102 = load i32, ptr %101, align 4, !tbaa !111
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.MDisps, ptr %17, i64 %103
  %105 = sext i32 %100 to i64
  br label %106

106:                                              ; preds = %98, %134
  %107 = phi i64 [ %105, %98 ], [ %136, %134 ]
  %108 = phi i32 [ 0, %98 ], [ %135, %134 ]
  %109 = phi ptr [ %104, %98 ], [ %137, %134 ]
  %110 = getelementptr inbounds ptr, ptr %68, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !56
  %112 = getelementptr inbounds ptr, ptr %76, i64 %107
  %113 = load ptr, ptr %112, align 8, !tbaa !56
  %114 = getelementptr inbounds %struct.MDisps, ptr %109, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !121
  br i1 %90, label %116, label %134

116:                                              ; preds = %106, %131
  %117 = phi i32 [ %132, %131 ], [ 0, %106 ]
  %118 = mul nsw i32 %117, %82
  br label %119

119:                                              ; preds = %116, %119
  %120 = phi i64 [ 0, %116 ], [ %129, %119 ]
  %121 = trunc i64 %120 to i32
  %122 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %4, ptr noundef %111, i32 noundef %121, i32 noundef %117) #21
  %123 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %113, i32 noundef %121, i32 noundef %117) #21
  %124 = add i32 %118, %121
  %125 = mul i32 %124, %85
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [3 x float], ptr %115, i64 %126
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call fastcc void @grid_tangent_matrix(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %121, i32 noundef %117, ptr noundef %111) #21
  call void @mul_m3_v3(ptr noundef %2, ptr noundef %123) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %123, ptr noundef %122) #21
  %128 = call zeroext i8 @invert_m3(ptr noundef nonnull %7) #20
  call void @mul_v3_m3v3(ptr noundef %127, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  %129 = add nuw nsw i64 %120, 1
  %130 = icmp eq i64 %129, %91
  br i1 %130, label %131, label %119, !llvm.loop !302

131:                                              ; preds = %119
  %132 = add nuw nsw i32 %117, 1
  %133 = icmp eq i32 %132, %65
  br i1 %133, label %134, label %116, !llvm.loop !303

134:                                              ; preds = %131, %106
  %135 = add nuw nsw i32 %108, 1
  %136 = add nsw i64 %107, 1
  %137 = getelementptr inbounds %struct.MDisps, ptr %109, i64 1
  %138 = icmp eq i32 %135, %96
  br i1 %138, label %139, label %106, !llvm.loop !304

139:                                              ; preds = %134
  %140 = load i32, ptr %86, align 8, !tbaa !107
  br label %141

141:                                              ; preds = %139, %92
  %142 = phi i32 [ %140, %139 ], [ %93, %92 ]
  %143 = add nuw nsw i64 %94, 1
  %144 = sext i32 %142 to i64
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %92, label %146, !llvm.loop !305

146:                                              ; preds = %141, %49
  %147 = getelementptr inbounds %struct.DerivedMesh, ptr %60, i64 0, i32 95
  %148 = load ptr, ptr %147, align 8, !tbaa !78
  call void %148(ptr noundef %60) #20
  %149 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 95
  %150 = load ptr, ptr %149, align 8, !tbaa !78
  call void %150(ptr noundef %29) #20
  br label %151

151:                                              ; preds = %3, %21, %146
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multiresModifier_prepare_join(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #22
  tail call fastcc void @multires_sync_levels(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  call void @BKE_object_scale_to_mat3(ptr noundef %2, ptr noundef nonnull %5) #20
  %7 = call zeroext i8 @invert_m3(ptr noundef nonnull %5) #20
  call void @BKE_object_scale_to_mat3(ptr noundef %1, ptr noundef nonnull %4) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  call fastcc void @multires_apply_smat(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_sync_levels(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !306 {
  %4 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #21
  %5 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1) #21
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  tail call void @multires_customdata_delete(ptr noundef %9) #21
  br label %24

10:                                               ; preds = %3
  %11 = icmp eq ptr %5, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !58
  %15 = getelementptr inbounds %struct.MultiresModifierData, ptr %5, i64 0, i32 4
  %16 = load i8, ptr %15, align 1, !tbaa !58
  %17 = zext i8 %16 to i32
  %18 = icmp ugt i8 %14, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call fastcc void @multires_del_higher(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %17) #21
  br label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 5
  %22 = load i8, ptr %21, align 4, !tbaa !145
  %23 = zext i8 %22 to i32
  tail call fastcc void @multires_subdivide(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %17, i32 noundef 0, i32 noundef %23) #21
  br label %24

24:                                               ; preds = %7, %19, %20, %10
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @multires_topology_changed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !47
  tail call void @CustomData_external_read(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 524288, i32 noundef %4) #20
  %5 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 19) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !tbaa !47
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %7, %17
  %11 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %12 = phi ptr [ %19, %17 ], [ %5, %7 ]
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %5, align 8, !tbaa !112
  br label %21

17:                                               ; preds = %10
  %18 = add nuw nsw i32 %11, 1
  %19 = getelementptr inbounds %struct.MDisps, ptr %12, i64 1
  %20 = icmp eq i32 %18, %8
  br i1 %20, label %21, label %10, !llvm.loop !307

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ 0, %17 ]
  br i1 %9, label %23, label %51

23:                                               ; preds = %21
  %24 = icmp ne i32 %22, 0
  %25 = icmp eq i32 %22, 0
  %26 = mul nsw i32 %22, 3
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 2
  br label %29

29:                                               ; preds = %23, %46
  %30 = phi i32 [ %8, %23 ], [ %47, %46 ]
  %31 = phi i32 [ 0, %23 ], [ %48, %46 ]
  %32 = phi ptr [ %5, %23 ], [ %49, %46 ]
  %33 = load i32, ptr %32, align 8, !tbaa !112
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.MDisps, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !121
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i1 %24, i1 false
  br i1 %39, label %41, label %46

40:                                               ; preds = %29
  br i1 %25, label %46, label %41

41:                                               ; preds = %35, %40
  store i32 %22, ptr %32, align 8, !tbaa !112
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %43 = tail call ptr %42(i64 noundef %28, ptr noundef nonnull @.str.9) #20
  %44 = getelementptr inbounds %struct.MDisps, ptr %32, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !121
  %45 = load i32, ptr %3, align 4, !tbaa !47
  br label %46

46:                                               ; preds = %35, %40, %41
  %47 = phi i32 [ %30, %35 ], [ %30, %40 ], [ %45, %41 ]
  %48 = add nuw nsw i32 %31, 1
  %49 = getelementptr inbounds %struct.MDisps, ptr %32, i64 1
  %50 = icmp slt i32 %48, %47
  br i1 %50, label %29, label %51, !llvm.loop !308

51:                                               ; preds = %46, %7, %21, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @mdisp_rot_face_to_crn(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #12 {
  %7 = sitofp i32 %1 to float
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 5.000000e-01, float -5.000000e-01)
  %9 = icmp eq i32 %0, 4
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = fcmp ult float %8, %2
  %12 = fcmp ult float %8, %3
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = fcmp olt float %8, %2
  %16 = xor i1 %15, true
  %17 = or i1 %12, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = fcmp olt float %8, %3
  %20 = and i1 %15, %19
  %21 = or i1 %11, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = fcmp ugt float %8, %3
  br i1 %23, label %25, label %34

24:                                               ; preds = %18
  br i1 %20, label %31, label %25

25:                                               ; preds = %10, %22, %24
  %26 = fsub float %8, %2
  store float %26, ptr %5, align 4, !tbaa !147
  %27 = fsub float %8, %3
  store float %27, ptr %4, align 4, !tbaa !147
  br label %68

28:                                               ; preds = %14
  %29 = fsub float %2, %8
  store float %29, ptr %4, align 4, !tbaa !147
  %30 = fsub float %8, %3
  store float %30, ptr %5, align 4, !tbaa !147
  br label %68

31:                                               ; preds = %24
  %32 = fsub float %2, %8
  store float %32, ptr %5, align 4, !tbaa !147
  %33 = fsub float %3, %8
  store float %33, ptr %4, align 4, !tbaa !147
  br label %68

34:                                               ; preds = %22
  %35 = fsub float %8, %2
  store float %35, ptr %4, align 4, !tbaa !147
  %36 = fsub float %3, %8
  store float %36, ptr %5, align 4, !tbaa !147
  br label %68

37:                                               ; preds = %6
  %38 = fptosi float %8 to i32
  %39 = add nsw i32 %1, -1
  %40 = sitofp i32 %39 to float
  %41 = fsub float %40, %2
  %42 = fsub float %41, %3
  %43 = fcmp ult float %2, %3
  %44 = fcmp ugt float %42, %2
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = fcmp ult float %3, %2
  %48 = fcmp ugt float %42, %3
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %46, %37, %50
  %52 = phi i32 [ 2, %50 ], [ 0, %37 ], [ 1, %46 ]
  %53 = phi float [ %3, %50 ], [ %42, %37 ], [ %2, %46 ]
  %54 = phi float [ %2, %50 ], [ %3, %37 ], [ %42, %46 ]
  %55 = fdiv float %53, %40
  %56 = fdiv float %54, %40
  %57 = fmul float %55, 2.000000e+00
  %58 = fsub float 1.000000e+00, %56
  %59 = fdiv float %57, %58
  %60 = fsub float 1.000000e+00, %59
  %61 = sitofp i32 %38 to float
  %62 = fmul float %60, %61
  store float %62, ptr %4, align 4, !tbaa !147
  %63 = fmul float %56, 2.000000e+00
  %64 = fsub float 1.000000e+00, %55
  %65 = fdiv float %63, %64
  %66 = fsub float 1.000000e+00, %65
  %67 = fmul float %66, %61
  store float %67, ptr %5, align 4, !tbaa !147
  br label %68

68:                                               ; preds = %25, %31, %34, %28, %51
  %69 = phi i32 [ 0, %25 ], [ 1, %28 ], [ 2, %31 ], [ 3, %34 ], [ %52, %51 ]
  ret i32 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: optsize
declare i32 @get_render_subsurf_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @multires_copy_grid(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 !PGOFuncName !309 {
  %5 = icmp sgt i32 %2, %3
  br i1 %5, label %6, label %34

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = add nsw i32 %3, -1
  %9 = sdiv i32 %7, %8
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %6
  %12 = zext nneg i32 %3 to i64
  br label %13

13:                                               ; preds = %31, %11
  %14 = phi i64 [ 0, %11 ], [ %29, %31 ]
  %15 = phi i32 [ 0, %11 ], [ %32, %31 ]
  %16 = mul i32 %15, %2
  %17 = shl i64 %14, 32
  %18 = ashr exact i64 %17, 32
  br label %19

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %28, %19 ]
  %21 = phi i64 [ %18, %13 ], [ %29, %19 ]
  %22 = trunc i64 %20 to i32
  %23 = add i32 %16, %22
  %24 = mul i32 %23, %9
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x float], ptr %0, i64 %25
  %27 = getelementptr inbounds [3 x float], ptr %1, i64 %21
  tail call fastcc void @copy_v3_v3(ptr noundef %26, ptr noundef %27) #21
  %28 = add nuw nsw i64 %20, 1
  %29 = add nsw i64 %21, 1
  %30 = icmp eq i64 %28, %12
  br i1 %30, label %31, label %19, !llvm.loop !310

31:                                               ; preds = %19
  %32 = add nuw nsw i32 %15, 1
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %62, label %13, !llvm.loop !311

34:                                               ; preds = %4
  %35 = add nsw i32 %3, -1
  %36 = add nsw i32 %2, -1
  %37 = sdiv i32 %35, %36
  %38 = icmp sgt i32 %2, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = zext nneg i32 %2 to i64
  br label %41

41:                                               ; preds = %59, %39
  %42 = phi i64 [ 0, %39 ], [ %57, %59 ]
  %43 = phi i32 [ 0, %39 ], [ %60, %59 ]
  %44 = mul i32 %43, %3
  %45 = shl i64 %42, 32
  %46 = ashr exact i64 %45, 32
  br label %47

47:                                               ; preds = %41, %47
  %48 = phi i64 [ 0, %41 ], [ %56, %47 ]
  %49 = phi i64 [ %46, %41 ], [ %57, %47 ]
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 %49
  %51 = trunc i64 %48 to i32
  %52 = add i32 %44, %51
  %53 = mul i32 %52, %37
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %1, i64 %54
  tail call fastcc void @copy_v3_v3(ptr noundef %50, ptr noundef %55) #21
  %56 = add nuw nsw i64 %48, 1
  %57 = add nsw i64 %49, 1
  %58 = icmp eq i64 %56, %40
  br i1 %58, label %59, label %47, !llvm.loop !312

59:                                               ; preds = %47
  %60 = add nuw nsw i32 %43, 1
  %61 = icmp eq i32 %60, %2
  br i1 %61, label %62, label %41, !llvm.loop !313

62:                                               ; preds = %59, %31, %34, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @multires_mdisps_downsample_hidden(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !314 {
  %4 = tail call i32 @BKE_ccg_gridsize(i32 noundef %2) #20
  %5 = tail call i32 @BKE_ccg_gridsize(i32 noundef %1) #20
  %6 = tail call i32 @BKE_ccg_factor(i32 noundef %2, i32 noundef %1) #20
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %8 = mul nsw i32 %4, %4
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 268435452
  %11 = add nuw nsw i32 %10, 4
  %12 = zext nneg i32 %11 to i64
  %13 = tail call ptr %7(i64 noundef %12, ptr noundef nonnull @.str.11) #20
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %3, %50
  %16 = phi i32 [ %51, %50 ], [ 0, %3 ]
  %17 = mul i32 %16, %5
  %18 = mul nsw i32 %16, %4
  br label %19

19:                                               ; preds = %15, %47
  %20 = phi i32 [ 0, %15 ], [ %48, %47 ]
  %21 = add i32 %20, %17
  %22 = mul i32 %21, %6
  %23 = ashr i32 %22, 5
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !117
  %27 = and i32 %22, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  %31 = add nuw nsw i32 %20, %18
  %32 = and i32 %31, 31
  %33 = shl nuw i32 1, %32
  br i1 %30, label %40, label %34

34:                                               ; preds = %19
  %35 = lshr i32 %31, 5
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %13, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !117
  %39 = or i32 %38, %33
  store i32 %39, ptr %37, align 4, !tbaa !117
  br label %47

40:                                               ; preds = %19
  %41 = xor i32 %33, -1
  %42 = lshr i32 %31, 5
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %13, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !117
  %46 = and i32 %45, %41
  store i32 %46, ptr %44, align 4, !tbaa !117
  br label %47

47:                                               ; preds = %34, %40
  %48 = add nuw nsw i32 %20, 1
  %49 = icmp eq i32 %48, %4
  br i1 %49, label %50, label %19, !llvm.loop !315

50:                                               ; preds = %47
  %51 = add nuw nsw i32 %16, 1
  %52 = icmp eq i32 %51, %4
  br i1 %52, label %53, label %15, !llvm.loop !316

53:                                               ; preds = %50, %3
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_grid_paint_mask_downsample(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !317 {
  %3 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !163
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = tail call i32 @BKE_ccg_gridsize(i32 noundef %1) #20
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %9 = mul nsw i32 %7, %7
  %10 = zext nneg i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = tail call ptr %8(i64 noundef %11, ptr noundef nonnull @.str.12) #20
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %6
  %15 = zext nneg i32 %7 to i64
  br label %16

16:                                               ; preds = %30, %14
  %17 = phi i64 [ 0, %14 ], [ %31, %30 ]
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %7, %18
  %20 = zext i32 %19 to i64
  %21 = trunc i64 %17 to i32
  %22 = getelementptr float, ptr %12, i64 %20
  br label %23

23:                                               ; preds = %16, %23
  %24 = phi i64 [ 0, %16 ], [ %28, %23 ]
  %25 = trunc i64 %24 to i32
  %26 = tail call float @paint_grid_paint_mask(ptr noundef %0, i32 noundef %1, i32 noundef %25, i32 noundef %21) #20
  %27 = getelementptr float, ptr %22, i64 %24
  store float %26, ptr %27, align 4, !tbaa !147
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, %15
  br i1 %29, label %30, label %23, !llvm.loop !318

30:                                               ; preds = %23
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %31, %15
  br i1 %32, label %33, label %16, !llvm.loop !319

33:                                               ; preds = %30, %6
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %35 = load ptr, ptr %0, align 8, !tbaa !166
  tail call void %34(ptr noundef %35) #20
  store ptr %12, ptr %0, align 8, !tbaa !166
  store i32 %1, ptr %3, align 8, !tbaa !163
  br label %36

36:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_ccg_factor(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @paint_grid_paint_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !320 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #21
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #21
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #21
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !321 {
  %3 = load float, ptr %0, align 4, !tbaa !147
  %4 = load float, ptr %1, align 4, !tbaa !147
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !147
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !147
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !147
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !147
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !322 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !147
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !323 {
  %4 = load float, ptr %1, align 4, !tbaa !147
  %5 = load float, ptr %2, align 4, !tbaa !147
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !147
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !147
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !147
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !147
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !147
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !147
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !147
  ret void
}

; Function Attrs: optsize
declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @multires_mdisps_initialize_hidden(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !324 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 19, i32 noundef 1, ptr noundef null, i32 noundef %5) #20
  %7 = tail call i32 @BKE_ccg_gridsize(i32 noundef %1) #20
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %9 = load i32, ptr %8, align 8, !tbaa !107
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %77

11:                                               ; preds = %2
  %12 = mul nsw i32 %7, %7
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %16 = lshr i32 %12, 3
  %17 = and i32 %16, 268435452
  %18 = add nuw nsw i32 %17, 4
  %19 = zext nneg i32 %18 to i64
  %20 = load ptr, ptr %13, align 8, !tbaa !108
  br label %21

21:                                               ; preds = %11, %70
  %22 = phi i32 [ %9, %11 ], [ %71, %70 ]
  %23 = phi ptr [ %20, %11 ], [ %72, %70 ]
  %24 = phi ptr [ %20, %11 ], [ %73, %70 ]
  %25 = phi i64 [ 0, %11 ], [ %74, %70 ]
  %26 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %25, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !109
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %25
  %31 = load ptr, ptr %14, align 8, !tbaa !127
  %32 = load ptr, ptr %15, align 8, !tbaa !134
  %33 = load i32, ptr %30, align 4, !tbaa !111
  %34 = sext i32 %33 to i64
  %35 = zext nneg i32 %27 to i64
  %36 = getelementptr %struct.MLoop, ptr %32, i64 %34
  br label %40

37:                                               ; preds = %40
  %38 = add nuw nsw i64 %41, 1
  %39 = icmp eq i64 %38, %35
  br i1 %39, label %70, label %40, !llvm.loop !325

40:                                               ; preds = %29, %37
  %41 = phi i64 [ 0, %29 ], [ %38, %37 ]
  %42 = getelementptr %struct.MLoop, ptr %36, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !135
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %31, i64 %44, i32 2
  %46 = load i8, ptr %45, align 2, !tbaa !326
  %47 = and i8 %46, 16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %37, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.MPoly, ptr %23, i64 %25, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !109
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %64, %53 ], [ %23, %49 ]
  %55 = phi i32 [ %63, %53 ], [ 0, %49 ]
  %56 = getelementptr inbounds %struct.MPoly, ptr %54, i64 %25
  %57 = load i32, ptr %56, align 4, !tbaa !111
  %58 = add nsw i32 %57, %55
  %59 = sext i32 %58 to i64
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %61 = tail call ptr %60(i64 noundef %19, ptr noundef nonnull @.str.13) #20
  %62 = getelementptr inbounds %struct.MDisps, ptr %6, i64 %59, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %61, i8 -1, i64 %19, i1 false)
  %63 = add nuw nsw i32 %55, 1
  %64 = load ptr, ptr %13, align 8, !tbaa !108
  %65 = getelementptr inbounds %struct.MPoly, ptr %64, i64 %25, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !109
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %53, label %68, !llvm.loop !328

68:                                               ; preds = %53
  %69 = load i32, ptr %8, align 8, !tbaa !107
  br label %70

70:                                               ; preds = %37, %68, %21, %49
  %71 = phi i32 [ %69, %68 ], [ %22, %21 ], [ %22, %49 ], [ %22, %37 ]
  %72 = phi ptr [ %64, %68 ], [ %23, %21 ], [ %23, %49 ], [ %23, %37 ]
  %73 = phi ptr [ %64, %68 ], [ %24, %21 ], [ %23, %49 ], [ %24, %37 ]
  %74 = add nuw nsw i64 %25, 1
  %75 = sext i32 %71 to i64
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %21, label %77, !llvm.loop !329

77:                                               ; preds = %70, %2
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_reallocate_mdisps(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !330 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [14 x i32], ptr @multires_grid_tot, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !117
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 12
  %11 = zext nneg i32 %0 to i64
  br label %12

12:                                               ; preds = %5, %31
  %13 = phi i64 [ 0, %5 ], [ %32, %31 ]
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %15 = tail call ptr %14(i64 noundef %10, ptr noundef nonnull @.str.10) #20
  %16 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %13
  %17 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %13, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %21(ptr noundef nonnull %18) #20
  br label %22

22:                                               ; preds = %20, %12
  %23 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %13, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !118
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %13, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @multires_mdisps_subdivide_hidden(ptr noundef nonnull %16, i32 noundef %2) #21
  br label %31

31:                                               ; preds = %30, %26, %22
  store ptr %15, ptr %17, align 8, !tbaa !121
  store i32 %8, ptr %16, align 8, !tbaa !112
  store i32 %2, ptr %23, align 4, !tbaa !118
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %34, label %12, !llvm.loop !331

34:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multires_mdisps_subdivide_hidden(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !332 {
  %3 = getelementptr inbounds %struct.MDisps, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !118
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MDisps, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = tail call fastcc ptr @multires_mdisps_upsample_hidden(ptr noundef %8, i32 noundef %4, i32 noundef %1, ptr noundef null) #21
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %11 = load ptr, ptr %7, align 8, !tbaa !122
  tail call void %10(ptr noundef %11) #20
  store ptr %9, ptr %7, align 8, !tbaa !122
  br label %12

12:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CCG_grid_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 !PGOFuncName !333 {
  %5 = tail call fastcc ptr @CCG_grid_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #21
  %6 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %5) #21
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @ccgSubSurf_updateNormals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 !PGOFuncName !334 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !335
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !336 {
  %5 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !188
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %8) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !337 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !174
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @grid_tangent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #4 !PGOFuncName !338 {
  %7 = icmp eq i32 %3, 0
  %8 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !188
  %10 = add nsw i32 %9, -1
  br i1 %7, label %11, label %27

11:                                               ; preds = %6
  %12 = icmp eq i32 %10, %1
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = icmp eq i32 %1, %2
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = add nsw i32 %2, -1
  %17 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %2, i32 noundef %16) #21
  %18 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %16, i32 noundef %16) #21
  tail call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %17, ptr noundef %18) #21
  br label %43

19:                                               ; preds = %13
  %20 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %1, i32 noundef %2) #21
  %21 = add nsw i32 %1, -1
  %22 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %21, i32 noundef %2) #21
  tail call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %20, ptr noundef %22) #21
  br label %43

23:                                               ; preds = %11
  %24 = add nsw i32 %1, 1
  %25 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %24, i32 noundef %2) #21
  %26 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %1, i32 noundef %2) #21
  tail call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %25, ptr noundef %26) #21
  br label %43

27:                                               ; preds = %6
  %28 = icmp eq i32 %10, %2
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = icmp eq i32 %2, %1
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = add nsw i32 %2, -1
  %33 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %32, i32 noundef %2) #21
  %34 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %32, i32 noundef %32) #21
  tail call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %33, ptr noundef %34) #21
  br label %43

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %1, i32 noundef %2) #21
  %37 = add nsw i32 %2, -1
  %38 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %1, i32 noundef %37) #21
  tail call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %36, ptr noundef %38) #21
  br label %43

39:                                               ; preds = %27
  %40 = add nsw i32 %2, 1
  %41 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %1, i32 noundef %40) #21
  %42 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %1, i32 noundef %2) #21
  tail call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %41, ptr noundef %42) #21
  br label %43

43:                                               ; preds = %31, %35, %39, %23, %19, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CCG_grid_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 !PGOFuncName !339 {
  %5 = tail call fastcc ptr @CCG_grid_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #21
  %6 = tail call fastcc ptr @CCG_elem_no(ptr noundef %0, ptr noundef %5) #21
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 !PGOFuncName !340 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !341
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @old_mdisps_rotate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #12 !PGOFuncName !342 {
  %7 = sitofp i32 %1 to float
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 5.000000e-01, float -5.000000e-01)
  switch i32 %0, label %31 [
    i32 1, label %9
    i32 2, label %14
    i32 3, label %19
    i32 0, label %24
  ]

9:                                                ; preds = %6
  %10 = sitofp i32 %2 to float
  %11 = fadd float %8, %10
  store float %11, ptr %4, align 4, !tbaa !147
  %12 = sitofp i32 %3 to float
  %13 = fsub float %8, %12
  br label %29

14:                                               ; preds = %6
  %15 = sitofp i32 %3 to float
  %16 = fadd float %8, %15
  store float %16, ptr %4, align 4, !tbaa !147
  %17 = sitofp i32 %2 to float
  %18 = fadd float %8, %17
  br label %29

19:                                               ; preds = %6
  %20 = sitofp i32 %2 to float
  %21 = fsub float %8, %20
  store float %21, ptr %4, align 4, !tbaa !147
  %22 = sitofp i32 %3 to float
  %23 = fadd float %8, %22
  br label %29

24:                                               ; preds = %6
  %25 = sitofp i32 %3 to float
  %26 = fsub float %8, %25
  store float %26, ptr %4, align 4, !tbaa !147
  %27 = sitofp i32 %2 to float
  %28 = fsub float %8, %27
  br label %29

29:                                               ; preds = %24, %9, %14, %19
  %30 = phi float [ %23, %19 ], [ %18, %14 ], [ %13, %9 ], [ %28, %24 ]
  store float %30, ptr %5, align 4, !tbaa !147
  br label %31

31:                                               ; preds = %29, %6
  ret void
}

; Function Attrs: optsize
declare i32 @ccgSubSurf_getGridSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getEdgeSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumFaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getFaceNumVerts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceCenterData(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceGridData(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumEdges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumVerts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getVertData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_updateToFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_old_vert_face_map(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !343 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %7 = sext i32 %3 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.21) #20
  store ptr %9, ptr %0, align 8, !tbaa !56
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %11 = sext i32 %4 to i64
  %12 = mul nsw i64 %11, 96
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.22) #20
  store ptr %13, ptr %1, align 8, !tbaa !56
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %5
  %16 = zext nneg i32 %4 to i64
  br label %17

17:                                               ; preds = %15, %38
  %18 = phi i64 [ 0, %15 ], [ %39, %38 ]
  %19 = phi ptr [ %13, %15 ], [ %33, %38 ]
  %20 = getelementptr inbounds %struct.MultiresFace, ptr %2, i64 %18
  %21 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 3
  %22 = trunc i64 %18 to i32
  br label %23

23:                                               ; preds = %17, %23
  %24 = phi i64 [ 0, %17 ], [ %32, %23 ]
  %25 = phi ptr [ %19, %17 ], [ %33, %23 ]
  %26 = getelementptr inbounds %struct.IndexNode, ptr %25, i64 0, i32 2
  store i32 %22, ptr %26, align 8, !tbaa !344
  %27 = load ptr, ptr %0, align 8, !tbaa !56
  %28 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %24
  %29 = load i32, ptr %28, align 4, !tbaa !117
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ListBase, ptr %27, i64 %30
  tail call void @BLI_addtail(ptr noundef %31, ptr noundef %25) #20
  %32 = add nuw nsw i64 %24, 1
  %33 = getelementptr inbounds %struct.IndexNode, ptr %25, i64 1
  %34 = load i32, ptr %21, align 4, !tbaa !117
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i64 3, i64 4
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %23, label %38, !llvm.loop !346

38:                                               ; preds = %23
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %17, !llvm.loop !347

41:                                               ; preds = %38, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_old_vert_edge_map(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !348 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %7 = sext i32 %3 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.23) #20
  store ptr %9, ptr %0, align 8, !tbaa !56
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %11 = sext i32 %4 to i64
  %12 = mul nsw i64 %11, 48
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.24) #20
  store ptr %13, ptr %1, align 8, !tbaa !56
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %5
  %16 = zext nneg i32 %4 to i64
  br label %17

17:                                               ; preds = %15, %33
  %18 = phi i64 [ 0, %15 ], [ %34, %33 ]
  %19 = phi ptr [ %13, %15 ], [ %32, %33 ]
  %20 = getelementptr inbounds %struct.MultiresEdge, ptr %2, i64 %18
  %21 = trunc i64 %18 to i32
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i1 [ true, %17 ], [ false, %22 ]
  %24 = phi i64 [ 0, %17 ], [ 1, %22 ]
  %25 = phi ptr [ %19, %17 ], [ %32, %22 ]
  %26 = getelementptr inbounds %struct.IndexNode, ptr %25, i64 0, i32 2
  store i32 %21, ptr %26, align 8, !tbaa !344
  %27 = load ptr, ptr %0, align 8, !tbaa !56
  %28 = getelementptr inbounds [2 x i32], ptr %20, i64 0, i64 %24
  %29 = load i32, ptr %28, align 4, !tbaa !117
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ListBase, ptr %27, i64 %30
  tail call void @BLI_addtail(ptr noundef %31, ptr noundef %25) #20
  %32 = getelementptr inbounds %struct.IndexNode, ptr %25, i64 1
  br i1 %23, label %22, label %33, !llvm.loop !349

33:                                               ; preds = %22
  %34 = add nuw nsw i64 %18, 1
  %35 = icmp eq i64 %34, %16
  br i1 %35, label %36, label %17, !llvm.loop !350

36:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @multires_load_old_faces(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #17 !PGOFuncName !351 {
  %12 = icmp eq ptr %2, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %2, align 8, !tbaa !238
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds ptr, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.MultiresLevel, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !242
  %21 = tail call fastcc ptr @find_old_face(ptr noundef %18, ptr noundef %20, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #21
  %22 = getelementptr inbounds %struct.MultiresFace, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !352
  %24 = sext i32 %4 to i64
  %25 = getelementptr inbounds i32, ptr %3, i64 %24
  store i32 %23, ptr %25, align 4, !tbaa !117
  %26 = getelementptr inbounds ptr, ptr %1, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  %28 = getelementptr inbounds %struct.MultiresLevel, ptr %2, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !243
  %30 = tail call fastcc ptr @find_old_edge(ptr noundef %27, ptr noundef %29, i32 noundef %5, i32 noundef %7) #21
  %31 = getelementptr inbounds %struct.MultiresEdge, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !293
  %33 = tail call fastcc ptr @find_old_edge(ptr noundef %27, ptr noundef %29, i32 noundef %5, i32 noundef %8) #21
  %34 = getelementptr inbounds %struct.MultiresEdge, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !293
  %36 = tail call fastcc ptr @find_old_edge(ptr noundef %27, ptr noundef %29, i32 noundef %6, i32 noundef %7) #21
  %37 = getelementptr inbounds %struct.MultiresEdge, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !293
  %39 = tail call fastcc ptr @find_old_edge(ptr noundef %27, ptr noundef %29, i32 noundef %6, i32 noundef %8) #21
  %40 = getelementptr inbounds %struct.MultiresEdge, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !293
  %42 = mul nsw i32 %10, %9
  %43 = add nsw i32 %42, %4
  %44 = add nsw i32 %43, %10
  %45 = sdiv i32 %10, 2
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %17, ptr noundef nonnull %26, ptr noundef nonnull %14, ptr noundef %3, i32 noundef %44, i32 noundef %23, i32 noundef %6, i32 noundef %38, i32 noundef %41, i32 noundef %9, i32 noundef %45) #21
  %46 = load ptr, ptr %2, align 8, !tbaa !238
  %47 = sub nsw i32 %4, %42
  %48 = add nsw i32 %47, %10
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %17, ptr noundef nonnull %26, ptr noundef %46, ptr noundef %3, i32 noundef %48, i32 noundef %35, i32 noundef %41, i32 noundef %23, i32 noundef %8, i32 noundef %9, i32 noundef %45) #21
  %49 = load ptr, ptr %2, align 8, !tbaa !238
  %50 = sub nsw i32 %43, %10
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %17, ptr noundef nonnull %26, ptr noundef %49, ptr noundef %3, i32 noundef %50, i32 noundef %32, i32 noundef %38, i32 noundef %7, i32 noundef %23, i32 noundef %9, i32 noundef %45) #21
  %51 = load ptr, ptr %2, align 8, !tbaa !238
  %52 = sub nsw i32 %47, %10
  tail call fastcc void @multires_load_old_faces(ptr noundef nonnull %17, ptr noundef nonnull %26, ptr noundef %51, ptr noundef %3, i32 noundef %52, i32 noundef %5, i32 noundef %23, i32 noundef %32, i32 noundef %35, i32 noundef %9, i32 noundef %45) #21
  %53 = load ptr, ptr %2, align 8, !tbaa !238
  %54 = load ptr, ptr %53, align 8, !tbaa !238
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %16
  tail call fastcc void @multires_load_old_edges(ptr noundef nonnull %1, ptr noundef nonnull %53, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %41, i32 noundef %23, i32 noundef %10) #21
  %57 = load ptr, ptr %2, align 8, !tbaa !238
  %58 = sub nsw i32 0, %10
  tail call fastcc void @multires_load_old_edges(ptr noundef nonnull %1, ptr noundef %57, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %32, i32 noundef %23, i32 noundef %58) #21
  %59 = load ptr, ptr %2, align 8, !tbaa !238
  %60 = sub i32 0, %42
  tail call fastcc void @multires_load_old_edges(ptr noundef nonnull %1, ptr noundef %59, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %35, i32 noundef %23, i32 noundef %60) #21
  %61 = load ptr, ptr %2, align 8, !tbaa !238
  tail call fastcc void @multires_load_old_edges(ptr noundef nonnull %1, ptr noundef %61, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %38, i32 noundef %23, i32 noundef %42) #21
  br label %62

62:                                               ; preds = %16, %56, %13, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_old_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #18 !PGOFuncName !353 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.ListBase, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds %struct.ListBase, ptr %0, i64 %10
  br label %15

12:                                               ; preds = %18
  %13 = load ptr, ptr %16, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15, !llvm.loop !354

15:                                               ; preds = %9, %12
  %16 = phi ptr [ %7, %9 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.IndexNode, ptr %16, i64 0, i32 2
  br label %18

18:                                               ; preds = %22, %15
  %19 = phi ptr [ %11, %15 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %12, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %17, align 8, !tbaa !344
  %24 = getelementptr inbounds %struct.IndexNode, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !344
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %18, !llvm.loop !355

27:                                               ; preds = %22
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds %struct.MultiresEdge, ptr %1, i64 %28
  br label %30

30:                                               ; preds = %12, %4, %27
  %31 = phi ptr [ %29, %27 ], [ null, %4 ], [ null, %12 ]
  ret ptr %31
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_old_face(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #18 !PGOFuncName !356 {
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  store i32 %2, ptr %7, align 16, !tbaa !117
  %9 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1
  store i32 %3, ptr %9, align 4, !tbaa !117
  %10 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 2
  store i32 %4, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3
  store i32 %5, ptr %11, align 4, !tbaa !117
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %6, %48
  %17 = phi ptr [ %49, %48 ], [ %14, %6 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.IndexNode, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !344
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MultiresFace, ptr %1, i64 %20
  %22 = load <4 x i32>, ptr %21, align 4, !tbaa !117
  br label %23

23:                                               ; preds = %16, %39
  %24 = phi i64 [ 0, %16 ], [ %40, %39 ]
  %25 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !117
  %27 = insertelement <4 x i32> poison, i32 %26, i64 0
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> zeroinitializer
  %29 = icmp eq <4 x i32> %28, %22
  %30 = extractelement <4 x i1> %29, i64 0
  %31 = extractelement <4 x i1> %29, i64 1
  %32 = or i1 %30, %31
  %33 = extractelement <4 x i1> %29, i64 2
  %34 = or i1 %32, %33
  %35 = extractelement <4 x i1> %29, i64 3
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %24
  store i32 1, ptr %38, align 4, !tbaa !117
  br label %39

39:                                               ; preds = %23, %37
  %40 = add nuw nsw i64 %24, 1
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %23, !llvm.loop !357

42:                                               ; preds = %39
  %43 = load <4 x i32>, ptr %8, align 16
  %44 = freeze <4 x i32> %43
  %45 = icmp eq <4 x i32> %44, zeroinitializer
  %46 = bitcast <4 x i1> %45 to i4
  %47 = icmp eq i4 %46, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %17, align 8, !tbaa !56
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %16

51:                                               ; preds = %48, %42, %6
  %52 = phi ptr [ null, %6 ], [ null, %48 ], [ %21, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  ret ptr %52
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @multires_load_old_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #17 !PGOFuncName !358 {
  %8 = getelementptr inbounds ptr, ptr %0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.MultiresLevel, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  %12 = tail call fastcc ptr @find_old_edge(ptr noundef %9, ptr noundef %11, i32 noundef %4, i32 noundef %5) #21
  %13 = getelementptr inbounds %struct.MultiresEdge, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !293
  %15 = add nsw i32 %6, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %2, i64 %16
  store i32 %14, ptr %17, align 4, !tbaa !117
  %18 = load ptr, ptr %1, align 8, !tbaa !238
  %19 = load ptr, ptr %18, align 8, !tbaa !238
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %7, %21
  %22 = phi ptr [ %44, %21 ], [ %18, %7 ]
  %23 = phi i32 [ %41, %21 ], [ %15, %7 ]
  %24 = phi i32 [ %40, %21 ], [ %14, %7 ]
  %25 = phi i32 [ %33, %21 ], [ %6, %7 ]
  %26 = phi i32 [ %24, %21 ], [ %5, %7 ]
  %27 = phi i32 [ %26, %21 ], [ %4, %7 ]
  %28 = phi ptr [ %32, %21 ], [ %1, %7 ]
  %29 = phi ptr [ %30, %21 ], [ %0, %7 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = sdiv i32 %25, 2
  tail call fastcc void @multires_load_old_edges(ptr noundef nonnull %30, ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef %23, i32 noundef %27, i32 noundef %24, i32 noundef %31) #21
  %32 = load ptr, ptr %28, align 8, !tbaa !238
  %33 = sdiv i32 %25, -2
  %34 = getelementptr inbounds ptr, ptr %29, i64 3
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.MultiresLevel, ptr %32, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !243
  %38 = tail call fastcc ptr @find_old_edge(ptr noundef %35, ptr noundef %37, i32 noundef %26, i32 noundef %24) #21
  %39 = getelementptr inbounds %struct.MultiresEdge, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !293
  %41 = add nsw i32 %33, %23
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %2, i64 %42
  store i32 %40, ptr %43, align 4, !tbaa !117
  %44 = load ptr, ptr %32, align 8, !tbaa !238
  %45 = load ptr, ptr %44, align 8, !tbaa !238
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21

47:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #19

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }

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
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!37, !37, i64 0}
!57 = distinct !{!57, !55}
!58 = !{!59, !38, i64 115}
!59 = !{!"MultiresModifierData", !49, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!60 = !{!61, !41, i64 432}
!61 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !62, i64 312, !37, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !46, i64 1304, !46, i64 1312, !41, i64 1320, !41, i64 1324, !63, i64 1328, !63, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !63, i64 1400, !37, i64 1416}
!62 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!63 = !{!"ListBase", !37, i64 0, !37, i64 8}
!64 = !{!59, !38, i64 112}
!65 = !{!59, !38, i64 113}
!66 = !{!59, !38, i64 114}
!67 = !{!61, !37, i64 1296}
!68 = !{!"multires.c:multires_dm_mark_as_modified"}
!69 = !{!70, !41, i64 1872}
!70 = !{!"CCGDerivedMesh", !71, i64 0, !37, i64 1688, !41, i64 1696, !41, i64 1700, !41, i64 1704, !37, i64 1712, !37, i64 1720, !37, i64 1728, !37, i64 1736, !37, i64 1744, !37, i64 1752, !37, i64 1760, !37, i64 1768, !37, i64 1776, !37, i64 1784, !37, i64 1792, !37, i64 1800, !37, i64 1808, !37, i64 1816, !37, i64 1824, !72, i64 1832, !37, i64 1880}
!71 = !{!"DerivedMesh", !42, i64 0, !42, i64 200, !42, i64 400, !42, i64 600, !42, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!72 = !{!"", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 24, !37, i64 32, !41, i64 40}
!73 = !{!61, !37, i64 128}
!74 = !{!75, !37, i64 104}
!75 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !41, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !41, i64 148, !37, i64 152, !41, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !41, i64 228}
!76 = !{!71, !37, i64 1104}
!77 = !{!71, !37, i64 1168}
!78 = !{!71, !37, i64 1680}
!79 = !{!"multires.c:multires_mvert_to_ss"}
!80 = !{!70, !37, i64 1688}
!81 = !{!71, !37, i64 1464}
!82 = !{!70, !37, i64 1728}
!83 = !{!84, !37, i64 16}
!84 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !37, i64 16}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = distinct !{!87, !55}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !55}
!91 = !{!70, !37, i64 1720}
!92 = !{!93, !37, i64 8}
!93 = !{!"", !41, i64 0, !41, i64 4, !37, i64 8}
!94 = distinct !{!94, !55}
!95 = distinct !{!95, !55}
!96 = !{!70, !37, i64 1712}
!97 = !{!98, !37, i64 8}
!98 = !{!"", !41, i64 0, !37, i64 8}
!99 = distinct !{!99, !55}
!100 = !{i32 0, i32 2}
!101 = !{!71, !37, i64 1536}
!102 = !{!52, !37, i64 88}
!103 = !{!"multires.c:multires_get_level"}
!104 = !{!59, !37, i64 96}
!105 = !{!61, !37, i64 296}
!106 = !{!"multires.c:get_levels_from_disps"}
!107 = !{!35, !41, i64 1296}
!108 = !{!35, !37, i64 168}
!109 = !{!110, !41, i64 4}
!110 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!111 = !{!110, !41, i64 0}
!112 = !{!113, !41, i64 0}
!113 = !{!"MDisps", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 16}
!114 = distinct !{!114, !55}
!115 = distinct !{!115, !55}
!116 = !{!"multires.c:multires_set_tot_mdisps"}
!117 = !{!41, !41, i64 0}
!118 = !{!113, !41, i64 4}
!119 = distinct !{!119, !55}
!120 = !{!"multires.c:multires_del_higher"}
!121 = !{!113, !37, i64 8}
!122 = !{!113, !37, i64 16}
!123 = distinct !{!123, !55}
!124 = distinct !{!124, !55}
!125 = !{!35, !41, i64 1280}
!126 = !{!71, !37, i64 1528}
!127 = !{!35, !37, i64 232}
!128 = distinct !{!128, !55}
!129 = !{!71, !37, i64 1560}
!130 = distinct !{!130, !55}
!131 = !{!132, !41, i64 8}
!132 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!133 = !{!132, !37, i64 0}
!134 = !{!35, !37, i64 184}
!135 = !{!136, !41, i64 0}
!136 = !{!"MLoop", !41, i64 0, !41, i64 4}
!137 = distinct !{!137, !55}
!138 = distinct !{!138, !55}
!139 = distinct !{!139, !55}
!140 = distinct !{!140, !55}
!141 = distinct !{!141, !55}
!142 = !{!59, !38, i64 117}
!143 = !{!71, !37, i64 1440}
!144 = !{!"multires.c:multires_dm_create_local"}
!145 = !{!59, !38, i64 116}
!146 = !{!"multires.c:copy_v3_v3"}
!147 = !{!43, !43, i64 0}
!148 = !{!"multires.c:add_v3_v3"}
!149 = !{!"multires.c:mul_v3_fl"}
!150 = !{!"multires.c:normalize_v3"}
!151 = !{!"multires.c:v3_dist_from_plane"}
!152 = !{!"multires.c:subsurf_dm_create_local"}
!153 = !{!154, !40, i64 116}
!154 = !{!"SubsurfModifierData", !49, i64 0, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !37, i64 120, !37, i64 128}
!155 = !{!154, !40, i64 114}
!156 = !{!154, !40, i64 118}
!157 = !{!154, !40, i64 112}
!158 = !{!"multires.c:multiresModifier_disp_run"}
!159 = !{!71, !37, i64 1432}
!160 = !{!71, !37, i64 1456}
!161 = !{!162, !41, i64 36}
!162 = !{!"CCGKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!163 = !{!164, !41, i64 8}
!164 = !{!"GridPaintMask", !37, i64 0, !41, i64 8, !41, i64 12}
!165 = !{!162, !41, i64 0}
!166 = !{!164, !37, i64 0}
!167 = !{!162, !41, i64 12}
!168 = distinct !{!168, !55}
!169 = distinct !{!169, !55}
!170 = distinct !{!170, !55}
!171 = distinct !{!171, !55}
!172 = !{!"multires.c:multires_subdivide"}
!173 = !{!71, !37, i64 1424}
!174 = !{!162, !41, i64 4}
!175 = distinct !{!175, !55}
!176 = distinct !{!176, !55}
!177 = !{!70, !37, i64 1864}
!178 = !{!70, !37, i64 1832}
!179 = !{!70, !41, i64 1844}
!180 = !{!70, !41, i64 1848}
!181 = !{!61, !37, i64 1288}
!182 = distinct !{!182, !55}
!183 = distinct !{!183, !55}
!184 = distinct !{!184, !55}
!185 = !{!"multires.c:sub_v4_v4v4"}
!186 = !{!"multires.c:CCG_elem_offset_co"}
!187 = !{!"multires.c:multires_copy_dm_grid"}
!188 = !{!162, !41, i64 8}
!189 = !{!162, !41, i64 28}
!190 = distinct !{!190, !55}
!191 = distinct !{!191, !55}
!192 = distinct !{!192, !55}
!193 = distinct !{!193, !55}
!194 = !{!70, !37, i64 1824}
!195 = distinct !{!195, !55}
!196 = !{!"multires.c:multires_mdisps_upsample_hidden"}
!197 = distinct !{!197, !55}
!198 = distinct !{!198, !55}
!199 = distinct !{!199, !55}
!200 = distinct !{!200, !55}
!201 = distinct !{!201, !55}
!202 = !{!71, !41, i64 1016}
!203 = distinct !{!203, !55}
!204 = distinct !{!204, !55}
!205 = distinct !{!205, !55}
!206 = distinct !{!206, !55}
!207 = !{!71, !41, i64 1020}
!208 = !{!"multires.c:CCG_grid_elem_co"}
!209 = !{!"multires.c:grid_tangent_matrix"}
!210 = !{!"multires.c:add_v3_v3v3"}
!211 = !{!"multires.c:sub_v3_v3"}
!212 = !{!70, !37, i64 1760}
!213 = !{!70, !41, i64 1840}
!214 = distinct !{!214, !55}
!215 = distinct !{!215, !55}
!216 = !{!"multires.c:multires_output_hidden_to_ccgdm"}
!217 = !{!70, !37, i64 1456}
!218 = distinct !{!218, !55}
!219 = distinct !{!219, !55}
!220 = !{!"multires.c:mul_v3_v3fl"}
!221 = !{!35, !41, i64 1288}
!222 = !{!35, !37, i64 208}
!223 = distinct !{!223, !55}
!224 = !{!225, !41, i64 12}
!225 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!226 = distinct !{!226, !55}
!227 = !{!"multires.c:old_mdisps_convert"}
!228 = distinct !{!228, !55}
!229 = distinct !{!229, !55}
!230 = distinct !{!230, !55}
!231 = !{!232, !37, i64 0}
!232 = !{!"Multires", !63, i64 0, !37, i64 16, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !38, i64 28, !38, i64 29, !38, i64 30, !38, i64 31, !42, i64 32, !42, i64 232, !37, i64 432, !37, i64 440}
!233 = !{!234, !41, i64 40}
!234 = !{!"MultiresLevel", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56}
!235 = !{!234, !41, i64 44}
!236 = !{!232, !37, i64 432}
!237 = !{!232, !37, i64 440}
!238 = !{!234, !37, i64 0}
!239 = distinct !{!239, !55}
!240 = !{!232, !37, i64 16}
!241 = !{!"multires.c:multires_free_level"}
!242 = !{!234, !37, i64 16}
!243 = !{!234, !37, i64 32}
!244 = !{!234, !37, i64 24}
!245 = !{!35, !37, i64 1368}
!246 = !{!234, !41, i64 48}
!247 = !{!35, !41, i64 1284}
!248 = !{!35, !37, i64 240}
!249 = !{!250, !41, i64 0}
!250 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!251 = !{!250, !41, i64 4}
!252 = distinct !{!252, !55}
!253 = !{!225, !41, i64 0}
!254 = !{!225, !41, i64 4}
!255 = !{!225, !41, i64 8}
!256 = !{!257, !38, i64 21}
!257 = !{!"MultiresFace", !38, i64 0, !41, i64 16, !38, i64 20, !38, i64 21, !38, i64 22}
!258 = !{!225, !40, i64 16}
!259 = distinct !{!259, !55}
!260 = !{!232, !41, i64 204}
!261 = !{!232, !37, i64 32}
!262 = !{!263, !41, i64 0}
!263 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96}
!264 = !{!263, !37, i64 96}
!265 = distinct !{!265, !55}
!266 = !{!232, !41, i64 404}
!267 = !{!232, !37, i64 232}
!268 = distinct !{!268, !55}
!269 = !{!52, !41, i64 68}
!270 = distinct !{!270, !55}
!271 = !{!232, !38, i64 24}
!272 = distinct !{!272, !55}
!273 = !{!"multires.c:multires_load_old_vcols"}
!274 = !{!38, !38, i64 0}
!275 = distinct !{!275, !55}
!276 = distinct !{!276, !55}
!277 = !{!"multires.c:multires_load_old_face_flags"}
!278 = !{!257, !38, i64 20}
!279 = !{!225, !38, i64 19}
!280 = distinct !{!280, !55}
!281 = !{!"multires.c:multires_load_old_dm"}
!282 = distinct !{!282, !55}
!283 = distinct !{!283, !55}
!284 = !{!234, !37, i64 8}
!285 = distinct !{!285, !55}
!286 = distinct !{!286, !55}
!287 = distinct !{!287, !55}
!288 = distinct !{!288, !55}
!289 = distinct !{!289, !55}
!290 = distinct !{!290, !55}
!291 = distinct !{!291, !55}
!292 = distinct !{!292, !55}
!293 = !{!294, !41, i64 8}
!294 = !{!"MultiresEdge", !38, i64 0, !41, i64 8}
!295 = distinct !{!295, !55}
!296 = distinct !{!296, !55}
!297 = distinct !{!297, !55}
!298 = distinct !{!298, !55}
!299 = !{!"multires.c:multires_apply_smat"}
!300 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 4, !117, i64 20, i64 4, !117, i64 24, i64 4, !117, i64 28, i64 4, !117, i64 32, i64 64, !274, i64 96, i64 8, !56, i64 104, i64 8, !56, i64 112, i64 1, !274, i64 113, i64 1, !274, i64 114, i64 1, !274, i64 115, i64 1, !274, i64 116, i64 1, !274, i64 117, i64 1, !274, i64 118, i64 2, !274}
!301 = distinct !{!301, !55}
!302 = distinct !{!302, !55}
!303 = distinct !{!303, !55}
!304 = distinct !{!304, !55}
!305 = distinct !{!305, !55}
!306 = !{!"multires.c:multires_sync_levels"}
!307 = distinct !{!307, !55}
!308 = distinct !{!308, !55}
!309 = !{!"multires.c:multires_copy_grid"}
!310 = distinct !{!310, !55}
!311 = distinct !{!311, !55}
!312 = distinct !{!312, !55}
!313 = distinct !{!313, !55}
!314 = !{!"multires.c:multires_mdisps_downsample_hidden"}
!315 = distinct !{!315, !55}
!316 = distinct !{!316, !55}
!317 = !{!"multires.c:multires_grid_paint_mask_downsample"}
!318 = distinct !{!318, !55}
!319 = distinct !{!319, !55}
!320 = !{!"multires.c:normalize_v3_v3"}
!321 = !{!"multires.c:dot_v3v3"}
!322 = !{!"multires.c:zero_v3"}
!323 = !{!"multires.c:sub_v3_v3v3"}
!324 = !{!"multires.c:multires_mdisps_initialize_hidden"}
!325 = distinct !{!325, !55}
!326 = !{!327, !38, i64 18}
!327 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!328 = distinct !{!328, !55}
!329 = distinct !{!329, !55}
!330 = !{!"multires.c:multires_reallocate_mdisps"}
!331 = distinct !{!331, !55}
!332 = !{!"multires.c:multires_mdisps_subdivide_hidden"}
!333 = !{!"multires.c:CCG_grid_elem_mask"}
!334 = !{!"multires.c:CCG_elem_mask"}
!335 = !{!162, !41, i64 24}
!336 = !{!"multires.c:CCG_grid_elem"}
!337 = !{!"multires.c:CCG_elem_offset"}
!338 = !{!"multires.c:grid_tangent"}
!339 = !{!"multires.c:CCG_grid_elem_no"}
!340 = !{!"multires.c:CCG_elem_no"}
!341 = !{!162, !41, i64 20}
!342 = !{!"multires.c:old_mdisps_rotate"}
!343 = !{!"multires.c:create_old_vert_face_map"}
!344 = !{!345, !41, i64 16}
!345 = !{!"IndexNode", !37, i64 0, !37, i64 8, !41, i64 16}
!346 = distinct !{!346, !55}
!347 = distinct !{!347, !55}
!348 = !{!"multires.c:create_old_vert_edge_map"}
!349 = distinct !{!349, !55}
!350 = distinct !{!350, !55}
!351 = !{!"multires.c:multires_load_old_faces"}
!352 = !{!257, !41, i64 16}
!353 = !{!"multires.c:find_old_edge"}
!354 = distinct !{!354, !55}
!355 = distinct !{!355, !55}
!356 = !{!"multires.c:find_old_face"}
!357 = distinct !{!357, !55}
!358 = !{!"multires.c:multires_load_old_edges"}
