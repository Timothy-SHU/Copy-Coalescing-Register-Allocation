; ModuleID = 'blender/source/blender/editors/space_outliner/outliner_draw.c'
source_filename = "blender/source/blender/editors/space_outliner/outliner_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.TreeElement = type { ptr, ptr, ptr, %struct.ListBase, i32, i32, ptr, i16, i16, i16, i16, ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.DrawIconArg = type { ptr, ptr, float, float, float, float, float, float }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@__func__.draw_outliner = private unnamed_addr constant [14 x i8] c"draw_outliner\00", align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RNA_Object = external global %struct.StructRNA, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hide_select\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hide_render\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Restrict viewport visibility (Ctrl - Recursive)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Restrict viewport selection (Ctrl - Recursive)\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Restrict rendering (Ctrl - Recursive)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Restrict/Allow visibility in the 3D View\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Restrict/Allow selection in the 3D View\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Restrict/Allow renderability\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Render this RenderLayer\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Render this Pass\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Exclude this Pass from Combined\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.13 = private unnamed_addr constant [61 x i8] c"Library path '%s' does not exist, correct this before saving\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Group\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @restrictbutton_gr_restrict_flag(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Group, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GroupObject, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 102
  %11 = load i8, ptr %10, align 8, !tbaa !45
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, %2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %75, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %20 = trunc i32 %2 to i8
  %21 = add i32 %2, -1
  %22 = icmp ult i32 %21, 2
  br label %51

23:                                               ; preds = %7, %3
  %24 = load ptr, ptr %4, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %23
  %27 = trunc i32 %2 to i8
  %28 = xor i8 %27, -1
  %29 = icmp eq i32 %2, 1
  br label %30

30:                                               ; preds = %26, %48
  %31 = phi ptr [ %24, %26 ], [ %49, %48 ]
  %32 = getelementptr inbounds %struct.GroupObject, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 102
  %39 = load i8, ptr %38, align 8, !tbaa !45
  %40 = and i8 %39, %28
  store i8 %40, ptr %38, align 8, !tbaa !45
  br i1 %29, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 53
  %43 = load i16, ptr %42, align 4, !tbaa !52
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef %33) #6
  tail call void @ED_base_object_select(ptr noundef %47, i16 noundef signext 0) #6
  br label %48

48:                                               ; preds = %37, %46, %41, %30
  %49 = load ptr, ptr %31, align 8, !tbaa !50
  %50 = icmp eq ptr %49, null
  br i1 %50, label %75, label %30, !llvm.loop !53

51:                                               ; preds = %18, %72
  %52 = phi ptr [ %16, %18 ], [ %73, %72 ]
  %53 = getelementptr inbounds %struct.GroupObject, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load ptr, ptr %19, align 8, !tbaa !56
  %60 = icmp eq ptr %59, %54
  br i1 %60, label %72, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 102
  %63 = load i8, ptr %62, align 8, !tbaa !45
  %64 = or i8 %63, %20
  store i8 %64, ptr %62, align 8, !tbaa !45
  br i1 %22, label %65, label %72

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 53
  %67 = load i16, ptr %66, align 4, !tbaa !52
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = tail call ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef %54) #6
  tail call void @ED_base_object_select(ptr noundef %71, i16 noundef signext 0) #6
  br label %72

72:                                               ; preds = %58, %65, %70, %61, %51
  %73 = load ptr, ptr %52, align 8, !tbaa !50
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %51, !llvm.loop !75

75:                                               ; preds = %72, %48, %15, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @draw_outliner(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2
  %12 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store ptr null, ptr %7, align 8, !tbaa !50
  tail call void @outliner_build_tree(ptr noundef %8, ptr noundef %9, ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %12, i64 0, i32 7
  call fastcc void @outliner_height(ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %4)
  %14 = getelementptr inbounds %struct.SpaceOops, ptr %12, i64 0, i32 12
  %15 = load i16, ptr %14, align 2, !tbaa !77
  %16 = add i16 %15, -11
  %17 = icmp ult i16 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  call fastcc void @outliner_rna_width(ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %6, i32 noundef 0)
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, 15
  %22 = load i32, ptr %6, align 4, !tbaa !76
  %23 = sitofp i32 %22 to float
  %24 = sitofp i16 %19 to float
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 2.500000e+00, float %23)
  %26 = fptosi float %25 to i32
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 %21)
  store i32 %27, ptr %6, align 4, !tbaa !76
  %28 = sitofp i32 %27 to float
  %29 = tail call float @llvm.fmuladd.f32(float %24, float 7.500000e+00, float %28)
  %30 = fadd float %29, 5.000000e+01
  %31 = fptosi float %30 to i32
  store i32 %31, ptr %5, align 4, !tbaa !76
  br label %45

32:                                               ; preds = %1
  call fastcc void @outliner_rna_width(ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef 0)
  %33 = getelementptr inbounds %struct.SpaceOops, ptr %12, i64 0, i32 11
  %34 = load i16, ptr %33, align 8, !tbaa !85
  %35 = and i16 %34, 4
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %39 = sitofp i16 %38 to float
  %40 = fmul float %39, 3.000000e+00
  %41 = load i32, ptr %5, align 4, !tbaa !76
  %42 = sitofp i32 %41 to float
  %43 = tail call float @llvm.fmuladd.f32(float %40, float 3.000000e+00, float %42)
  %44 = fptosi float %43 to i32
  store i32 %44, ptr %5, align 4, !tbaa !76
  br label %45

45:                                               ; preds = %32, %37, %18
  %46 = load i32, ptr %4, align 4, !tbaa !76
  %47 = add nsw i32 %46, 2
  store i32 %47, ptr %4, align 4, !tbaa !76
  %48 = load i32, ptr %5, align 4, !tbaa !76
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %11, i32 noundef %48, i32 noundef %47) #6
  %49 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %50 = load i16, ptr %49, align 2, !tbaa !86
  %51 = or i16 %50, 12
  store i16 %51, ptr %49, align 2, !tbaa !86
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %11) #6
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 6) #6
  %52 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 0, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !87
  %54 = fptosi float %53 to i32
  %55 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %56 = sext i16 %55 to i32
  %57 = freeze i32 %54
  %58 = srem i32 %57, %56
  %59 = sub nsw i32 %57, %58
  %60 = add i32 %59, -2
  %61 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 2
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %63 = sext i16 %62 to i32
  %64 = shl nsw i32 %63, 1
  %65 = add nsw i32 %64, %60
  %66 = sitofp i32 %65 to float
  %67 = load float, ptr %61, align 8, !tbaa !89
  %68 = fcmp olt float %67, %66
  br i1 %68, label %69, label %87

69:                                               ; preds = %45
  %70 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 1
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i32 [ %63, %69 ], [ %81, %71 ]
  %73 = phi i32 [ %60, %69 ], [ %80, %71 ]
  %74 = load float, ptr %70, align 4, !tbaa !90
  %75 = fptosi float %74 to i32
  %76 = add nsw i32 %72, %73
  tail call void @glRecti(i32 noundef 0, i32 noundef %73, i32 noundef %75, i32 noundef %76) #6
  %77 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %78 = sext i16 %77 to i32
  %79 = shl nsw i32 %78, 1
  %80 = sub nsw i32 %73, %79
  %81 = sext i16 %77 to i32
  %82 = shl nsw i32 %81, 1
  %83 = add nsw i32 %82, %80
  %84 = sitofp i32 %83 to float
  %85 = load float, ptr %61, align 8, !tbaa !89
  %86 = fcmp olt float %85, %84
  br i1 %86, label %71, label %87, !llvm.loop !91

87:                                               ; preds = %71, %45
  %88 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 2
  %89 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @__func__.draw_outliner, i16 noundef signext 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #6
  %90 = load i16, ptr %14, align 2, !tbaa !77
  %91 = add i16 %90, -11
  %92 = icmp ult i16 %91, 2
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef -200) #6
  %94 = load float, ptr %52, align 4, !tbaa !87
  %95 = fptosi float %94 to i32
  %96 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %97 = sext i16 %96 to i32
  %98 = add i32 %95, -2
  %99 = sub i32 %98, %97
  store i32 %99, ptr %2, align 4, !tbaa !76
  call fastcc void @outliner_draw_struct_marks(ptr noundef %10, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %2)
  br label %100

100:                                              ; preds = %93, %87
  call void @UI_GetThemeColor3fv(i32 noundef 163, ptr noundef nonnull %3) #6
  call void @glColor3fv(ptr noundef nonnull %3) #6
  %101 = load float, ptr %52, align 4, !tbaa !87
  %102 = fptosi float %101 to i32
  %103 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %104 = sext i16 %103 to i32
  %105 = add i32 %102, -2
  %106 = sub i32 %105, %104
  store i32 %106, ptr %2, align 4, !tbaa !76
  call fastcc void @outliner_draw_selection(ptr noundef %10, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %2)
  call void @UI_ThemeColorBlend(i32 noundef 2, i32 noundef 3, float noundef 0x3FD99999A0000000) #6
  %107 = load float, ptr %52, align 4, !tbaa !87
  %108 = fptosi float %107 to i32
  %109 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %110 = sdiv i16 %109, -2
  %111 = sext i16 %110 to i32
  %112 = add i32 %108, -2
  %113 = add i32 %112, %111
  store i32 %113, ptr %2, align 4, !tbaa !76
  call fastcc void @outliner_draw_hierarchy(ptr noundef %12, ptr noundef nonnull %13, i32 noundef 6, ptr noundef nonnull %2)
  %114 = load float, ptr %52, align 4, !tbaa !87
  %115 = fptosi float %114 to i32
  %116 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %117 = sext i16 %116 to i32
  %118 = add i32 %115, -2
  %119 = sub i32 %118, %117
  store i32 %119, ptr %2, align 4, !tbaa !76
  %120 = load ptr, ptr %13, align 8, !tbaa !50
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %100, %122
  %123 = phi ptr [ %124, %122 ], [ %120, %100 ]
  call fastcc void @outliner_draw_tree_element(ptr noundef %0, ptr noundef %89, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %123, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %7)
  %124 = load ptr, ptr %123, align 8, !tbaa !50
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %122, !llvm.loop !92

126:                                              ; preds = %122, %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %127 = load i16, ptr %14, align 2, !tbaa !77
  %128 = add i16 %127, -11
  %129 = icmp ult i16 %128, 2
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i32, ptr %6, align 4, !tbaa !76
  %132 = load float, ptr %88, align 8, !tbaa !93
  %133 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 0, i32 2
  %134 = load float, ptr %133, align 8, !tbaa !94
  %135 = fcmp olt float %132, %134
  %136 = select i1 %135, float %134, float %132
  call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef -200) #6
  %137 = sitofp i32 %131 to float
  %138 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 3
  %139 = load float, ptr %138, align 4, !tbaa !95
  call void @fdrawline(float noundef %137, float noundef %139, float noundef %137, float noundef %136) #6
  %140 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %141 = sitofp i16 %140 to float
  %142 = call float @llvm.fmuladd.f32(float %141, float 7.500000e+00, float %137)
  %143 = load float, ptr %138, align 4, !tbaa !95
  call void @fdrawline(float noundef %142, float noundef %143, float noundef %142, float noundef %136) #6
  call fastcc void @outliner_draw_rnabuts(ptr noundef %89, ptr noundef %10, ptr noundef %12, i32 noundef %131, ptr noundef nonnull %13)
  br label %230

144:                                              ; preds = %126
  %145 = getelementptr inbounds %struct.SpaceOops, ptr %12, i64 0, i32 11
  %146 = load i16, ptr %145, align 8, !tbaa !85
  %147 = and i16 %146, 4
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %230

149:                                              ; preds = %144
  call void @UI_ThemeColor(i32 noundef 2) #6
  %150 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 1
  %151 = load float, ptr %150, align 4, !tbaa !90
  %152 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %153 = sitofp i16 %152 to float
  %154 = fneg float %153
  %155 = call float @llvm.fmuladd.f32(float %154, float 3.000000e+00, float %151)
  %156 = fptosi float %155 to i32
  %157 = load float, ptr %88, align 8, !tbaa !89
  %158 = fadd float %157, -1.000000e+00
  %159 = fptosi float %158 to i32
  %160 = fptosi float %151 to i32
  %161 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 3
  %162 = load float, ptr %161, align 4, !tbaa !96
  %163 = fptosi float %162 to i32
  call void @glRecti(i32 noundef %156, i32 noundef %159, i32 noundef %160, i32 noundef %163) #6
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 6) #6
  %164 = load float, ptr %52, align 4, !tbaa !87
  %165 = fptosi float %164 to i32
  %166 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %167 = sext i16 %166 to i32
  %168 = freeze i32 %165
  %169 = srem i32 %168, %167
  %170 = sub nsw i32 %168, %169
  %171 = add i32 %170, -2
  %172 = sext i16 %166 to i32
  %173 = shl nsw i32 %172, 1
  %174 = add nsw i32 %173, %171
  %175 = sitofp i32 %174 to float
  %176 = load float, ptr %88, align 8, !tbaa !89
  %177 = fcmp olt float %176, %175
  br i1 %177, label %178, label %200

178:                                              ; preds = %149, %178
  %179 = phi i32 [ %194, %178 ], [ %172, %149 ]
  %180 = phi i16 [ %190, %178 ], [ %166, %149 ]
  %181 = phi i32 [ %193, %178 ], [ %171, %149 ]
  %182 = load float, ptr %150, align 4, !tbaa !90
  %183 = fptosi float %182 to i32
  %184 = sitofp i32 %183 to float
  %185 = sitofp i16 %180 to float
  %186 = fneg float %185
  %187 = call float @llvm.fmuladd.f32(float %186, float 3.000000e+00, float %184)
  %188 = fptosi float %187 to i32
  %189 = add nsw i32 %179, %181
  call void @glRecti(i32 noundef %188, i32 noundef %181, i32 noundef %183, i32 noundef %189) #6
  %190 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %191 = sext i16 %190 to i32
  %192 = shl nsw i32 %191, 1
  %193 = sub nsw i32 %181, %192
  %194 = sext i16 %190 to i32
  %195 = shl nsw i32 %194, 1
  %196 = add nsw i32 %195, %193
  %197 = sitofp i32 %196 to float
  %198 = load float, ptr %88, align 8, !tbaa !89
  %199 = fcmp olt float %198, %197
  br i1 %199, label %178, label %200, !llvm.loop !97

200:                                              ; preds = %178, %149
  call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef -200) #6
  %201 = load float, ptr %150, align 4, !tbaa !90
  %202 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %203 = sitofp i16 %202 to float
  %204 = fneg float %203
  %205 = call float @llvm.fmuladd.f32(float %204, float 3.000000e+00, float %201)
  %206 = fptosi float %205 to i32
  %207 = load float, ptr %161, align 4, !tbaa !96
  %208 = fptosi float %207 to i32
  %209 = load float, ptr %88, align 8, !tbaa !89
  %210 = fptosi float %209 to i32
  call void @sdrawline(i32 noundef %206, i32 noundef %208, i32 noundef %206, i32 noundef %210) #6
  %211 = load float, ptr %150, align 4, !tbaa !90
  %212 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %213 = sitofp i16 %212 to float
  %214 = fneg float %213
  %215 = call float @llvm.fmuladd.f32(float %214, float 2.000000e+00, float %211)
  %216 = fptosi float %215 to i32
  %217 = load float, ptr %161, align 4, !tbaa !96
  %218 = fptosi float %217 to i32
  %219 = load float, ptr %88, align 8, !tbaa !89
  %220 = fptosi float %219 to i32
  call void @sdrawline(i32 noundef %216, i32 noundef %218, i32 noundef %216, i32 noundef %220) #6
  %221 = load float, ptr %150, align 4, !tbaa !90
  %222 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %223 = sitofp i16 %222 to float
  %224 = fsub float %221, %223
  %225 = fptosi float %224 to i32
  %226 = load float, ptr %161, align 4, !tbaa !96
  %227 = fptosi float %226 to i32
  %228 = load float, ptr %88, align 8, !tbaa !89
  %229 = fptosi float %228 to i32
  call void @sdrawline(i32 noundef %225, i32 noundef %227, i32 noundef %225, i32 noundef %229) #6
  call fastcc void @outliner_draw_restrictbuts(ptr noundef %89, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %13)
  br label %230

230:                                              ; preds = %144, %200, %130
  %231 = load ptr, ptr %7, align 8, !tbaa !50
  %232 = icmp eq ptr %231, null
  br i1 %232, label %274, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.TreeElement, ptr %231, i64 0, i32 6
  %235 = load ptr, ptr %234, align 8, !tbaa !98
  %236 = load i16, ptr %235, align 8, !tbaa !102
  switch i16 %236, label %237 [
    i16 6, label %246
    i16 10, label %246
  ]

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.TreeStoreElem, ptr %235, i64 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !103
  %240 = icmp eq ptr %239, null
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.ID, ptr %239, i64 0, i32 4
  %243 = load i16, ptr %242, align 8, !tbaa !104
  %244 = icmp eq i16 %243, 18764
  br i1 %244, label %246, label %245

245:                                              ; preds = %241, %237
  br label %246

246:                                              ; preds = %245, %241, %233, %233
  %247 = phi float [ 6.400000e+01, %245 ], [ 6.400000e+01, %233 ], [ 6.400000e+01, %233 ], [ 1.024000e+03, %241 ]
  %248 = getelementptr inbounds %struct.TreeElement, ptr %231, i64 0, i32 4
  %249 = load i32, ptr %248, align 8, !tbaa !105
  %250 = sitofp i32 %249 to float
  %251 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %252 = sitofp i16 %251 to float
  %253 = call float @llvm.fmuladd.f32(float %252, float 0x3FFCCCCCC0000000, float %250)
  %254 = fptosi float %253 to i32
  %255 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 1
  %256 = load float, ptr %255, align 4, !tbaa !90
  %257 = sitofp i32 %254 to float
  %258 = call float @llvm.fmuladd.f32(float %252, float 0x40099999A0000000, float %257)
  %259 = fsub float %256, %258
  %260 = fptosi float %259 to i32
  %261 = getelementptr inbounds %struct.TreeElement, ptr %231, i64 0, i32 5
  %262 = load i32, ptr %261, align 4, !tbaa !106
  %263 = trunc i32 %260 to i16
  %264 = add i16 %251, -1
  %265 = getelementptr inbounds %struct.TreeElement, ptr %231, i64 0, i32 11
  %266 = load ptr, ptr %265, align 8, !tbaa !107
  %267 = call ptr @uiDefBut(ptr noundef %89, i32 noundef 3072, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %254, i32 noundef %262, i16 noundef signext %263, i16 noundef signext %264, ptr noundef %266, float noundef 1.000000e+00, float noundef %247, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #6
  call void @uiButSetRenameFunc(ptr noundef %267, ptr noundef nonnull @namebutton_cb, ptr noundef nonnull %235) #6
  %268 = call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %10, ptr noundef %89, ptr noundef %267) #6
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %246
  %271 = getelementptr inbounds %struct.TreeStoreElem, ptr %235, i64 0, i32 2
  %272 = load i16, ptr %271, align 4, !tbaa !108
  %273 = and i16 %272, -5
  store i16 %273, ptr %271, align 4, !tbaa !108
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #6
  br label %274

274:                                              ; preds = %270, %246, %230
  call void @uiEndBlock(ptr noundef %0, ptr noundef %89) #6
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %89) #6
  %275 = getelementptr inbounds %struct.SpaceOops, ptr %12, i64 0, i32 13
  %276 = load i16, ptr %275, align 4, !tbaa !109
  %277 = and i16 %276, -3
  store i16 %277, ptr %275, align 4, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #2

declare void @outliner_build_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_height(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = load ptr, ptr %1, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %8

8:                                                ; preds = %6, %26
  %9 = phi ptr [ %4, %6 ], [ %31, %26 ]
  %10 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 4, !tbaa !108
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %8
  %18 = load i16, ptr %7, align 2, !tbaa !110
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  %21 = and i32 %14, 8
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %22, %20
  br i1 %23, label %26, label %24

24:                                               ; preds = %17, %8
  %25 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  tail call fastcc void @outliner_height(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %2)
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %28 = sext i16 %27 to i32
  %29 = load i32, ptr %2, align 4, !tbaa !76
  %30 = add nsw i32 %29, %28
  store i32 %30, ptr %2, align 4, !tbaa !76
  %31 = load ptr, ptr %9, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !111

33:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_rna_width(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr %1, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %3, 100
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %10

10:                                               ; preds = %7, %35
  %11 = phi ptr [ %5, %7 ], [ %36, %35 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = load i32, ptr %2, align 4, !tbaa !76
  %15 = icmp sgt i32 %8, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 %8, ptr %2, align 4, !tbaa !76
  br label %17

17:                                               ; preds = %16, %10
  %18 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %19 = load i16, ptr %18, align 4, !tbaa !108
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load i16, ptr %9, align 2, !tbaa !110
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  %27 = and i32 %20, 8
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %28, %26
  br i1 %29, label %35, label %30

30:                                               ; preds = %23, %17
  %31 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, %3
  tail call fastcc void @outliner_rna_width(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull %2, i32 noundef %34)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load ptr, ptr %11, align 8, !tbaa !50
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !llvm.loop !112

38:                                               ; preds = %35, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_draw_rnabuts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  tail call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 3) #6
  %6 = load ptr, ptr %4, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %104, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  %12 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  br label %13

13:                                               ; preds = %8, %101
  %14 = phi ptr [ %6, %8 ], [ %102, %101 ]
  %15 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !106
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %20 = sext i16 %19 to i32
  %21 = shl nsw i32 %20, 1
  %22 = add nsw i32 %21, %18
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %9, align 8, !tbaa !89
  %25 = fcmp ugt float %24, %23
  br i1 %25, label %86, label %26

26:                                               ; preds = %13
  %27 = sitofp i32 %18 to float
  %28 = load float, ptr %10, align 4, !tbaa !96
  %29 = fcmp ult float %28, %27
  br i1 %29, label %86, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %16, align 8, !tbaa !102
  switch i16 %31, label %86 [
    i16 31, label %32
    i16 32, label %74
  ]

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 13
  %34 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !113
  %36 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 2
  %37 = load i16, ptr %36, align 4, !tbaa !108
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %32
  %42 = load i16, ptr %11, align 2, !tbaa !110
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  %45 = and i32 %38, 8
  %46 = icmp eq i32 %45, 0
  %47 = or i1 %46, %44
  br i1 %47, label %48, label %86

48:                                               ; preds = %41
  %49 = tail call i32 @RNA_property_type(ptr noundef %35) #6
  %50 = icmp eq i32 %49, 5
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, ptr %17, align 4, !tbaa !106
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %54 = sext i16 %53 to i32
  %55 = sitofp i16 %53 to float
  %56 = fmul float %55, 7.500000e+00
  %57 = fptosi float %56 to i32
  %58 = add nsw i32 %54, -1
  %59 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %35, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %3, i32 noundef %52, i32 noundef %57, i32 noundef %58) #6
  tail call void @uiButSetFlag(ptr noundef %59, i32 noundef 2048) #6
  br label %86

60:                                               ; preds = %48
  %61 = tail call i32 @RNA_property_type(ptr noundef %35) #6
  %62 = icmp eq i32 %61, 4
  %63 = load i32, ptr %17, align 4, !tbaa !106
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %65 = sext i16 %64 to i32
  %66 = sitofp i16 %64 to float
  %67 = fmul float %66, 7.500000e+00
  %68 = fptosi float %67 to i32
  %69 = add nsw i32 %65, -1
  br i1 %62, label %70, label %72

70:                                               ; preds = %60
  %71 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %35, i32 noundef -1, ptr noundef null, i32 noundef 0, i32 noundef %3, i32 noundef %63, i32 noundef %68, i32 noundef %69) #6
  br label %86

72:                                               ; preds = %60
  %73 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %35, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %3, i32 noundef %63, i32 noundef %68, i32 noundef %69) #6
  br label %86

74:                                               ; preds = %30
  %75 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 13
  %76 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !113
  %78 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 8
  %79 = load i16, ptr %78, align 2, !tbaa !114
  %80 = sext i16 %79 to i32
  %81 = sitofp i16 %19 to float
  %82 = fmul float %81, 7.500000e+00
  %83 = fptosi float %82 to i32
  %84 = add nsw i32 %20, -1
  %85 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %75, ptr noundef %77, i32 noundef %80, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %3, i32 noundef %18, i32 noundef %83, i32 noundef %84) #6
  br label %86

86:                                               ; preds = %30, %41, %51, %72, %70, %32, %74, %26, %13
  %87 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 2
  %88 = load i16, ptr %87, align 4, !tbaa !108
  %89 = zext i16 %88 to i32
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load i16, ptr %12, align 2, !tbaa !110
  %94 = and i16 %93, 4
  %95 = icmp eq i16 %94, 0
  %96 = and i32 %89, 8
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %97, %95
  br i1 %98, label %101, label %99

99:                                               ; preds = %92, %86
  %100 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 3
  tail call fastcc void @outliner_draw_rnabuts(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %100)
  br label %101

101:                                              ; preds = %92, %99
  %102 = load ptr, ptr %14, align 8, !tbaa !50
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %13, !llvm.loop !115

104:                                              ; preds = %101, %5
  tail call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_draw_restrictbuts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = tail call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_Object, ptr noundef nonnull @.str.1) #6
  %8 = tail call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_Object, ptr noundef nonnull @.str.2) #6
  %9 = tail call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_Object, ptr noundef nonnull @.str.3) #6
  %10 = load ptr, ptr %4, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %279, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %15 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %17 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %18 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %20 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %21 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %22 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 14
  br label %23

23:                                               ; preds = %12, %276
  %24 = phi ptr [ %10, %12 ], [ %277, %276 ]
  %25 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !106
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %30 = sext i16 %29 to i32
  %31 = shl nsw i32 %30, 1
  %32 = add nsw i32 %31, %28
  %33 = sitofp i32 %32 to float
  %34 = load float, ptr %13, align 8, !tbaa !89
  %35 = fcmp ugt float %34, %33
  br i1 %35, label %261, label %36

36:                                               ; preds = %23
  %37 = sitofp i32 %28 to float
  %38 = load float, ptr %14, align 4, !tbaa !96
  %39 = fcmp ult float %38, %37
  br i1 %39, label %261, label %40

40:                                               ; preds = %36
  %41 = load i16, ptr %26, align 8, !tbaa !102
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 9
  %45 = load i16, ptr %44, align 4, !tbaa !116
  %46 = icmp eq i16 %45, 16975
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  %48 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  call void @RNA_pointer_create(ptr noundef %49, ptr noundef nonnull @RNA_Object, ptr noundef %49, ptr noundef nonnull %6) #6
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #6
  %50 = load float, ptr %15, align 4, !tbaa !90
  %51 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %52 = sitofp i16 %51 to float
  %53 = fneg float %52
  %54 = call float @llvm.fmuladd.f32(float %53, float 3.000000e+00, float %50)
  %55 = fptosi float %54 to i32
  %56 = load i32, ptr %27, align 4, !tbaa !106
  %57 = call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef 253, i32 noundef %55, i32 noundef %56, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %6, ptr noundef %7, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.4) #6
  call void @uiButSetFunc(ptr noundef %57, ptr noundef nonnull @restrictbutton_view_cb, ptr noundef %1, ptr noundef %49) #6
  call void @uiButSetFlag(ptr noundef %57, i32 noundef 1024) #6
  %58 = load float, ptr %15, align 4, !tbaa !90
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %60 = sitofp i16 %59 to float
  %61 = fneg float %60
  %62 = call float @llvm.fmuladd.f32(float %61, float 2.000000e+00, float %58)
  %63 = fptosi float %62 to i32
  %64 = load i32, ptr %27, align 4, !tbaa !106
  %65 = call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef 255, i32 noundef %63, i32 noundef %64, i16 noundef signext %59, i16 noundef signext %59, ptr noundef nonnull %6, ptr noundef %8, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.5) #6
  call void @uiButSetFunc(ptr noundef %65, ptr noundef nonnull @restrictbutton_sel_cb, ptr noundef %1, ptr noundef %49) #6
  call void @uiButSetFlag(ptr noundef %65, i32 noundef 1024) #6
  %66 = load float, ptr %15, align 4, !tbaa !90
  %67 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %68 = sitofp i16 %67 to float
  %69 = fsub float %66, %68
  %70 = fptosi float %69 to i32
  %71 = load i32, ptr %27, align 4, !tbaa !106
  %72 = call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef 257, i32 noundef %70, i32 noundef %71, i16 noundef signext %67, i16 noundef signext %67, ptr noundef nonnull %6, ptr noundef %9, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.6) #6
  call void @uiButSetFunc(ptr noundef %72, ptr noundef nonnull @restrictbutton_rend_cb, ptr noundef %1, ptr noundef %49) #6
  call void @uiButSetFlag(ptr noundef %72, i32 noundef 1024) #6
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  br label %73

73:                                               ; preds = %47, %43, %40
  %74 = load i16, ptr %26, align 8, !tbaa !102
  switch i16 %74, label %261 [
    i16 0, label %75
    i16 20, label %147
    i16 21, label %160
    i16 10, label %192
    i16 14, label %213
    i16 6, label %240
  ]

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 9
  %77 = load i16, ptr %76, align 4, !tbaa !116
  %78 = icmp eq i16 %77, 21063
  br i1 %78, label %79, label %146

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = getelementptr inbounds %struct.ID, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !117
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, i32 1024, i32 3072
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #6
  %86 = getelementptr inbounds %struct.Group, ptr %81, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.GroupObject, ptr %87, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !43
  %92 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 102
  %93 = load i8, ptr %92, align 8, !tbaa !45
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89, %79
  br label %97

97:                                               ; preds = %89, %96
  %98 = phi i32 [ 254, %96 ], [ 253, %89 ]
  %99 = load float, ptr %21, align 4, !tbaa !90
  %100 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %101 = sitofp i16 %100 to float
  %102 = fneg float %101
  %103 = call float @llvm.fmuladd.f32(float %102, float 3.000000e+00, float %99)
  %104 = fptosi float %103 to i32
  %105 = load i32, ptr %27, align 4, !tbaa !106
  %106 = call ptr @uiDefIconBut(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %98, i32 noundef %104, i32 noundef %105, i16 noundef signext %100, i16 noundef signext %100, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #6
  call void @uiButSetFunc(ptr noundef %106, ptr noundef nonnull @restrictbutton_gr_restrict_view, ptr noundef %1, ptr noundef %81) #6
  call void @uiButSetFlag(ptr noundef %106, i32 noundef %85) #6
  %107 = load ptr, ptr %86, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %97
  %110 = getelementptr inbounds %struct.GroupObject, ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !43
  %112 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 102
  %113 = load i8, ptr %112, align 8, !tbaa !45
  %114 = and i8 %113, 2
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109, %97
  br label %117

117:                                              ; preds = %109, %116
  %118 = phi i32 [ 256, %116 ], [ 255, %109 ]
  %119 = load float, ptr %21, align 4, !tbaa !90
  %120 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %121 = sitofp i16 %120 to float
  %122 = fneg float %121
  %123 = call float @llvm.fmuladd.f32(float %122, float 2.000000e+00, float %119)
  %124 = fptosi float %123 to i32
  %125 = load i32, ptr %27, align 4, !tbaa !106
  %126 = call ptr @uiDefIconBut(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %118, i32 noundef %124, i32 noundef %125, i16 noundef signext %120, i16 noundef signext %120, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #6
  call void @uiButSetFunc(ptr noundef %126, ptr noundef nonnull @restrictbutton_gr_restrict_select, ptr noundef %1, ptr noundef %81) #6
  call void @uiButSetFlag(ptr noundef %126, i32 noundef %85) #6
  %127 = load ptr, ptr %86, align 8, !tbaa !34
  %128 = icmp eq ptr %127, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.GroupObject, ptr %127, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !43
  %132 = getelementptr inbounds %struct.Object, ptr %131, i64 0, i32 102
  %133 = load i8, ptr %132, align 8, !tbaa !45
  %134 = and i8 %133, 4
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %129, %117
  br label %137

137:                                              ; preds = %129, %136
  %138 = phi i32 [ 258, %136 ], [ 257, %129 ]
  %139 = load float, ptr %21, align 4, !tbaa !90
  %140 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %141 = sitofp i16 %140 to float
  %142 = fsub float %139, %141
  %143 = fptosi float %142 to i32
  %144 = load i32, ptr %27, align 4, !tbaa !106
  %145 = call ptr @uiDefIconBut(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %138, i32 noundef %143, i32 noundef %144, i16 noundef signext %140, i16 noundef signext %140, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  call void @uiButSetFunc(ptr noundef %145, ptr noundef nonnull @restrictbutton_gr_restrict_render, ptr noundef %1, ptr noundef %81) #6
  call void @uiButSetFlag(ptr noundef %145, i32 noundef %85) #6
  br label %260

146:                                              ; preds = %75
  switch i16 %74, label %261 [
    i16 20, label %147
    i16 21, label %160
    i16 10, label %192
    i16 14, label %213
    i16 6, label %240
  ]

147:                                              ; preds = %73, %146
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #6
  %148 = load float, ptr %20, align 4, !tbaa !90
  %149 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %150 = sitofp i16 %149 to float
  %151 = fneg float %150
  %152 = call float @llvm.fmuladd.f32(float %151, float 3.000000e+00, float %148)
  %153 = fptosi float %152 to i32
  %154 = load i32, ptr %27, align 4, !tbaa !106
  %155 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 12
  %156 = load ptr, ptr %155, align 8, !tbaa !113
  %157 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 17408, i32 noundef 131072, i32 noundef 0, i32 noundef 38, i32 noundef %153, i32 noundef %154, i16 noundef signext %149, i16 noundef signext %149, ptr noundef %156, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.10) #6
  %158 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !103
  call void @uiButSetFunc(ptr noundef %157, ptr noundef nonnull @restrictbutton_r_lay_cb, ptr noundef %159, ptr noundef null) #6
  call void @uiButSetFlag(ptr noundef %157, i32 noundef 1024) #6
  br label %260

160:                                              ; preds = %73, %146
  %161 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 12
  %162 = load ptr, ptr %161, align 8, !tbaa !113
  %163 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 1
  %164 = load i16, ptr %163, align 2, !tbaa !118
  %165 = zext nneg i16 %164 to i32
  %166 = shl nuw i32 1, %165
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #6
  %167 = load float, ptr %19, align 4, !tbaa !90
  %168 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %169 = sitofp i16 %168 to float
  %170 = fneg float %169
  %171 = call float @llvm.fmuladd.f32(float %170, float 3.000000e+00, float %167)
  %172 = fptosi float %171 to i32
  %173 = load i32, ptr %27, align 4, !tbaa !106
  %174 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef %166, i32 noundef 0, i32 noundef 38, i32 noundef %172, i32 noundef %173, i16 noundef signext %168, i16 noundef signext %168, ptr noundef %162, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.11) #6
  %175 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 4
  %176 = load ptr, ptr %175, align 8, !tbaa !103
  call void @uiButSetFunc(ptr noundef %174, ptr noundef nonnull @restrictbutton_r_lay_cb, ptr noundef %176, ptr noundef null) #6
  call void @uiButSetFlag(ptr noundef %174, i32 noundef 1024) #6
  switch i16 %164, label %260 [
    i16 17, label %177
    i16 16, label %177
    i16 13, label %177
    i16 10, label %177
    i16 7, label %177
    i16 6, label %177
    i16 5, label %177
    i16 4, label %177
  ]

177:                                              ; preds = %160, %160, %160, %160, %160, %160, %160, %160
  %178 = getelementptr inbounds i32, ptr %162, i64 1
  %179 = load i32, ptr %178, align 4, !tbaa !76
  %180 = and i32 %179, %166
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, i32 77, i32 17
  %183 = load float, ptr %19, align 4, !tbaa !90
  %184 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %185 = sitofp i16 %184 to float
  %186 = fneg float %185
  %187 = call float @llvm.fmuladd.f32(float %186, float 2.000000e+00, float %183)
  %188 = fptosi float %187 to i32
  %189 = load i32, ptr %27, align 4, !tbaa !106
  %190 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 1536, i32 noundef %166, i32 noundef 0, i32 noundef %182, i32 noundef %188, i32 noundef %189, i16 noundef signext %184, i16 noundef signext %184, ptr noundef nonnull %178, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.12) #6
  %191 = load ptr, ptr %175, align 8, !tbaa !103
  call void @uiButSetFunc(ptr noundef %190, ptr noundef nonnull @restrictbutton_r_lay_cb, ptr noundef %191, ptr noundef null) #6
  call void @uiButSetFlag(ptr noundef %190, i32 noundef 1024) #6
  br label %260

192:                                              ; preds = %73, %146
  %193 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 12
  %194 = load ptr, ptr %193, align 8, !tbaa !113
  %195 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !103
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #6
  %197 = load float, ptr %18, align 4, !tbaa !90
  %198 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %199 = sitofp i16 %198 to float
  %200 = fneg float %199
  %201 = call float @llvm.fmuladd.f32(float %200, float 3.000000e+00, float %197)
  %202 = fptosi float %201 to i32
  %203 = load i32, ptr %27, align 4, !tbaa !106
  %204 = getelementptr inbounds %struct.ModifierData, ptr %194, i64 0, i32 3
  %205 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 17408, i32 noundef 1, i32 noundef 0, i32 noundef 253, i32 noundef %202, i32 noundef %203, i16 noundef signext %198, i16 noundef signext %198, ptr noundef nonnull %204, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #6
  call void @uiButSetFunc(ptr noundef %205, ptr noundef nonnull @restrictbutton_modifier_cb, ptr noundef %1, ptr noundef %196) #6
  call void @uiButSetFlag(ptr noundef %205, i32 noundef 1024) #6
  %206 = load float, ptr %18, align 4, !tbaa !90
  %207 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %208 = sitofp i16 %207 to float
  %209 = fsub float %206, %208
  %210 = fptosi float %209 to i32
  %211 = load i32, ptr %27, align 4, !tbaa !106
  %212 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 17408, i32 noundef 2, i32 noundef 0, i32 noundef 257, i32 noundef %210, i32 noundef %211, i16 noundef signext %207, i16 noundef signext %207, ptr noundef nonnull %204, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  call void @uiButSetFunc(ptr noundef %212, ptr noundef nonnull @restrictbutton_modifier_cb, ptr noundef %1, ptr noundef %196) #6
  call void @uiButSetFlag(ptr noundef %212, i32 noundef 1024) #6
  br label %260

213:                                              ; preds = %73, %146
  %214 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 12
  %215 = load ptr, ptr %214, align 8, !tbaa !113
  %216 = getelementptr inbounds %struct.bPoseChannel, ptr %215, i64 0, i32 12
  %217 = load ptr, ptr %216, align 8, !tbaa !119
  %218 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !103
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #6
  %220 = load float, ptr %17, align 4, !tbaa !90
  %221 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %222 = sitofp i16 %221 to float
  %223 = fneg float %222
  %224 = call float @llvm.fmuladd.f32(float %223, float 3.000000e+00, float %220)
  %225 = fptosi float %224 to i32
  %226 = load i32, ptr %27, align 4, !tbaa !106
  %227 = getelementptr inbounds %struct.Bone, ptr %217, i64 0, i32 10
  %228 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 64, i32 noundef 0, i32 noundef 253, i32 noundef %225, i32 noundef %226, i16 noundef signext %221, i16 noundef signext %221, ptr noundef nonnull %227, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #6
  %229 = getelementptr inbounds %struct.Object, ptr %219, i64 0, i32 19
  %230 = load ptr, ptr %229, align 8, !tbaa !121
  call void @uiButSetFunc(ptr noundef %228, ptr noundef nonnull @restrictbutton_bone_visibility_cb, ptr noundef %230, ptr noundef %217) #6
  call void @uiButSetFlag(ptr noundef %228, i32 noundef 1024) #6
  %231 = load float, ptr %17, align 4, !tbaa !90
  %232 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %233 = sitofp i16 %232 to float
  %234 = fneg float %233
  %235 = call float @llvm.fmuladd.f32(float %234, float 2.000000e+00, float %231)
  %236 = fptosi float %235 to i32
  %237 = load i32, ptr %27, align 4, !tbaa !106
  %238 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 2097152, i32 noundef 0, i32 noundef 255, i32 noundef %236, i32 noundef %237, i16 noundef signext %232, i16 noundef signext %232, ptr noundef nonnull %227, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #6
  %239 = load ptr, ptr %229, align 8, !tbaa !121
  call void @uiButSetFunc(ptr noundef %238, ptr noundef nonnull @restrictbutton_bone_select_cb, ptr noundef %239, ptr noundef %217) #6
  call void @uiButSetFlag(ptr noundef %238, i32 noundef 1024) #6
  br label %260

240:                                              ; preds = %73, %146
  %241 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 12
  %242 = load ptr, ptr %241, align 8, !tbaa !113
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #6
  %243 = load float, ptr %16, align 4, !tbaa !90
  %244 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %245 = sitofp i16 %244 to float
  %246 = fneg float %245
  %247 = call float @llvm.fmuladd.f32(float %246, float 3.000000e+00, float %243)
  %248 = fptosi float %247 to i32
  %249 = load i32, ptr %27, align 4, !tbaa !106
  %250 = getelementptr inbounds %struct.EditBone, ptr %242, i64 0, i32 9
  %251 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 1024, i32 noundef 0, i32 noundef 253, i32 noundef %248, i32 noundef %249, i16 noundef signext %244, i16 noundef signext %244, ptr noundef nonnull %250, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #6
  call void @uiButSetFunc(ptr noundef %251, ptr noundef nonnull @restrictbutton_ebone_visibility_cb, ptr noundef null, ptr noundef %242) #6
  call void @uiButSetFlag(ptr noundef %251, i32 noundef 1024) #6
  %252 = load float, ptr %16, align 4, !tbaa !90
  %253 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %254 = sitofp i16 %253 to float
  %255 = fneg float %254
  %256 = call float @llvm.fmuladd.f32(float %255, float 2.000000e+00, float %252)
  %257 = fptosi float %256 to i32
  %258 = load i32, ptr %27, align 4, !tbaa !106
  %259 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 2097152, i32 noundef 0, i32 noundef 255, i32 noundef %257, i32 noundef %258, i16 noundef signext %253, i16 noundef signext %253, ptr noundef nonnull %250, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #6
  call void @uiButSetFunc(ptr noundef %259, ptr noundef nonnull @restrictbutton_ebone_select_cb, ptr noundef null, ptr noundef %242) #6
  call void @uiButSetFlag(ptr noundef %259, i32 noundef 1024) #6
  br label %260

260:                                              ; preds = %177, %160, %147, %192, %240, %213, %137
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 0) #6
  br label %261

261:                                              ; preds = %260, %73, %146, %36, %23
  %262 = getelementptr inbounds %struct.TreeStoreElem, ptr %26, i64 0, i32 2
  %263 = load i16, ptr %262, align 4, !tbaa !108
  %264 = zext i16 %263 to i32
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %261
  %268 = load i16, ptr %22, align 2, !tbaa !110
  %269 = and i16 %268, 4
  %270 = icmp eq i16 %269, 0
  %271 = and i32 %264, 8
  %272 = icmp eq i32 %271, 0
  %273 = or i1 %272, %270
  br i1 %273, label %276, label %274

274:                                              ; preds = %267, %261
  %275 = getelementptr inbounds %struct.TreeElement, ptr %24, i64 0, i32 3
  call fastcc void @outliner_draw_restrictbuts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %275)
  br label %276

276:                                              ; preds = %267, %274
  %277 = load ptr, ptr %24, align 8, !tbaa !50
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %23, !llvm.loop !122

279:                                              ; preds = %276, %5
  ret void
}

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_draw_struct_marks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 14
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 1
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 14
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 1
  br label %12

12:                                               ; preds = %7, %67
  %13 = phi ptr [ %5, %7 ], [ %68, %67 ]
  %14 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.TreeStoreElem, ptr %15, i64 0, i32 2
  %17 = load i16, ptr %16, align 4, !tbaa !108
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = load i16, ptr %8, align 2, !tbaa !110
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %40, label %28

28:                                               ; preds = %21, %12
  %29 = load i16, ptr %15, align 8, !tbaa !102
  %30 = icmp eq i16 %29, 30
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, ptr %3, align 4, !tbaa !76
  %33 = add nsw i32 %32, 1
  %34 = load float, ptr %9, align 4, !tbaa !90
  %35 = fptosi float %34 to i32
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %37 = sext i16 %36 to i32
  %38 = add i32 %32, -1
  %39 = add i32 %38, %37
  tail call void @glRecti(i32 noundef 0, i32 noundef %33, i32 noundef %35, i32 noundef %39) #6
  br label %40

40:                                               ; preds = %28, %31, %21
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %42 = sext i16 %41 to i32
  %43 = load i32, ptr %3, align 4, !tbaa !76
  %44 = sub nsw i32 %43, %42
  store i32 %44, ptr %3, align 4, !tbaa !76
  %45 = load i16, ptr %16, align 4, !tbaa !108
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %40
  %50 = load i16, ptr %10, align 2, !tbaa !110
  %51 = and i16 %50, 4
  %52 = icmp eq i16 %51, 0
  %53 = and i32 %46, 8
  %54 = icmp eq i32 %53, 0
  %55 = or i1 %54, %52
  br i1 %55, label %67, label %56

56:                                               ; preds = %49, %40
  %57 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  tail call fastcc void @outliner_draw_struct_marks(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %57, ptr noundef nonnull %3)
  %58 = load i16, ptr %15, align 8, !tbaa !102
  %59 = icmp eq i16 %58, 30
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, ptr %3, align 4, !tbaa !76
  %62 = sitofp i32 %61 to float
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %64 = sitofp i16 %63 to float
  %65 = fadd float %62, %64
  %66 = load float, ptr %11, align 4, !tbaa !90
  tail call void @fdrawline(float noundef 0.000000e+00, float noundef %65, float noundef %66, float noundef %65) #6
  br label %67

67:                                               ; preds = %49, %60, %56
  %68 = load ptr, ptr %13, align 8, !tbaa !50
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %12, !llvm.loop !123

70:                                               ; preds = %67, %4
  ret void
}

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_draw_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 1
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 14
  br label %10

10:                                               ; preds = %7, %45
  %11 = phi ptr [ %5, %7 ], [ %46, %45 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !108
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %3, align 4, !tbaa !76
  %20 = add nsw i32 %19, 1
  %21 = load float, ptr %8, align 4, !tbaa !90
  %22 = fptosi float %21 to i32
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %24 = sext i16 %23 to i32
  %25 = add i32 %19, -1
  %26 = add i32 %25, %24
  tail call void @glRecti(i32 noundef 0, i32 noundef %20, i32 noundef %22, i32 noundef %26) #6
  br label %27

27:                                               ; preds = %18, %10
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %29 = sext i16 %28 to i32
  %30 = load i32, ptr %3, align 4, !tbaa !76
  %31 = sub nsw i32 %30, %29
  store i32 %31, ptr %3, align 4, !tbaa !76
  %32 = load i16, ptr %14, align 4, !tbaa !108
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = load i16, ptr %9, align 2, !tbaa !110
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  %40 = and i32 %33, 8
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %41, %39
  br i1 %42, label %45, label %43

43:                                               ; preds = %36, %27
  %44 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  tail call fastcc void @outliner_draw_selection(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %44, ptr noundef nonnull %3)
  br label %45

45:                                               ; preds = %36, %43
  %46 = load ptr, ptr %11, align 8, !tbaa !50
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !124

48:                                               ; preds = %45, %4
  ret void
}

declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_draw_hierarchy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !125
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %3, align 4, !tbaa !76
  %9 = load ptr, ptr %1, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %13

13:                                               ; preds = %11, %48
  %14 = phi ptr [ %9, %11 ], [ %49, %48 ]
  %15 = load i32, ptr %3, align 4, !tbaa !76
  %16 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = load i16, ptr %17, align 8, !tbaa !102
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 9
  %22 = load i16, ptr %21, align 4, !tbaa !116
  switch i16 %22, label %28 [
    i16 16975, label %23
    i16 17235, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %25, %2
  %27 = add nsw i32 %15, -1
  tail call void @glRecti(i32 noundef %2, i32 noundef %15, i32 noundef %26, i32 noundef %27) #6
  br label %28

28:                                               ; preds = %20, %23, %13
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %30 = sext i16 %29 to i32
  %31 = load i32, ptr %3, align 4, !tbaa !76
  %32 = sub nsw i32 %31, %30
  store i32 %32, ptr %3, align 4, !tbaa !76
  %33 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %34 = load i16, ptr %33, align 4, !tbaa !108
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %28
  %39 = load i16, ptr %12, align 2, !tbaa !110
  %40 = and i16 %39, 4
  %41 = icmp eq i16 %40, 0
  %42 = and i32 %35, 8
  %43 = icmp eq i32 %42, 0
  %44 = or i1 %43, %41
  br i1 %44, label %48, label %45

45:                                               ; preds = %38, %28
  %46 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 3
  %47 = add nsw i32 %30, %2
  tail call fastcc void @outliner_draw_hierarchy(ptr noundef %0, ptr noundef nonnull %46, i32 noundef %47, ptr noundef nonnull %3)
  br label %48

48:                                               ; preds = %38, %45
  %49 = load ptr, ptr %14, align 8, !tbaa !50
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %13, !llvm.loop !126

51:                                               ; preds = %48, %7
  %52 = phi i32 [ %8, %7 ], [ %15, %48 ]
  %53 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !127
  %55 = getelementptr inbounds %struct.TreeElement, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !128
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load ptr, ptr %1, align 8, !tbaa !125
  %60 = icmp eq ptr %59, %54
  br i1 %60, label %75, label %61

61:                                               ; preds = %58, %51
  %62 = getelementptr inbounds %struct.TreeElement, ptr %54, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !98
  %64 = load i16, ptr %63, align 8, !tbaa !102
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TreeElement, ptr %54, i64 0, i32 9
  %68 = load i16, ptr %67, align 4, !tbaa !116
  %69 = icmp eq i16 %68, 16975
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %8, %72
  %74 = add nsw i32 %2, 1
  tail call void @glRecti(i32 noundef %2, i32 noundef %73, i32 noundef %74, i32 noundef %52) #6
  br label %75

75:                                               ; preds = %58, %70, %66, %61, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_draw_tree_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #0 {
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x i8], align 4
  %13 = alloca i32, align 4
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %15 = sext i16 %14 to i32
  %16 = sitofp i16 %14 to float
  %17 = fdiv float %16, 2.000000e+01
  %18 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = load i32, ptr %7, align 4, !tbaa !76
  %21 = shl nsw i32 %15, 1
  %22 = add nsw i32 %20, %21
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !89
  %26 = fcmp ugt float %25, %23
  br i1 %26, label %335, label %27

27:                                               ; preds = %9
  %28 = sitofp i32 %20 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !96
  %31 = fcmp ult float %30, %28
  br i1 %31, label %335, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !90
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 2
  %37 = load i16, ptr %36, align 4, !tbaa !108
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %8, align 8, !tbaa !50
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store ptr %5, ptr %8, align 8, !tbaa !50
  br label %44

44:                                               ; preds = %43, %40, %32
  %45 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 11
  %46 = load i16, ptr %45, align 8, !tbaa !85
  %47 = and i16 %46, 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = tail call float @llvm.fmuladd.f32(float %16, float 3.000000e+00, float %16)
  %51 = sitofp i32 %35 to float
  %52 = fsub float %51, %50
  %53 = fptosi float %52 to i32
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i32 [ %53, %49 ], [ %35, %44 ]
  tail call void @glEnable(i32 noundef 3042) #6
  %56 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 14
  %57 = load i16, ptr %56, align 2, !tbaa !110
  %58 = and i16 %57, 4
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 12
  %62 = load i16, ptr %61, align 2, !tbaa !77
  %63 = icmp eq i16 %62, 11
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 9
  %66 = load i8, ptr %65, align 8, !tbaa !129
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %64, %54
  %69 = load i16, ptr %36, align 4, !tbaa !108
  %70 = and i16 %69, 16
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  call void @UI_GetThemeColorType4ubv(i32 noundef 162, i32 noundef 3, ptr noundef nonnull %10) #6
  %73 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  store i8 -128, ptr %73, align 1, !tbaa !129
  call void @glColor4ubv(ptr noundef nonnull %10) #6
  %74 = load i32, ptr %7, align 4, !tbaa !76
  %75 = add nsw i32 %74, 1
  %76 = load float, ptr %33, align 4, !tbaa !90
  %77 = fptosi float %76 to i32
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %79 = sext i16 %78 to i32
  %80 = add i32 %74, -1
  %81 = add i32 %80, %79
  call void @glRecti(i32 noundef %6, i32 noundef %75, i32 noundef %77, i32 noundef %81) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  br label %82

82:                                               ; preds = %72, %68, %64, %60
  %83 = load i16, ptr %19, align 8, !tbaa !102
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %156

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %87 = load i16, ptr %86, align 4, !tbaa !116
  switch i16 %87, label %141 [
    i16 17235, label %88
    i16 21063, label %93
    i16 16975, label %108
  ]

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !103
  %91 = icmp eq ptr %90, %2
  br i1 %91, label %92, label %160

92:                                               ; preds = %88
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #6
  br label %160

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !103
  %96 = getelementptr inbounds %struct.Group, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %160, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.GroupObject, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !43
  %102 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 53
  %103 = load i16, ptr %102, align 4, !tbaa !52
  %104 = and i16 %103, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %160, label %106

106:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  call void @UI_GetThemeColorType4ubv(i32 noundef 28, i32 noundef 1, ptr noundef nonnull %11) #6
  %107 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  store i8 -128, ptr %107, align 1, !tbaa !129
  call void @glColor4ubv(ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  br label %160

108:                                              ; preds = %85
  %109 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !103
  %111 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !130
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.Base, ptr %112, i64 0, i32 7
  %116 = load ptr, ptr %115, align 8, !tbaa !131
  br label %117

117:                                              ; preds = %108, %114
  %118 = phi ptr [ %116, %114 ], [ null, %108 ]
  %119 = icmp eq ptr %110, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 53
  %122 = load i16, ptr %121, align 4, !tbaa !52
  %123 = and i16 %122, 1
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %160, label %125

125:                                              ; preds = %120, %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4
  br i1 %113, label %129, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.Base, ptr %112, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !131
  br label %129

129:                                              ; preds = %125, %126
  %130 = phi ptr [ %128, %126 ], [ null, %125 ]
  %131 = icmp eq ptr %110, %130
  %132 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 53
  %133 = load i16, ptr %132, align 4, !tbaa !52
  %134 = and i16 %133, 1
  %135 = icmp eq i16 %134, 0
  %136 = select i1 %131, i32 1, i32 2
  br i1 %135, label %140, label %137

137:                                              ; preds = %129
  %138 = select i1 %131, i32 29, i32 28
  call void @UI_GetThemeColorType4ubv(i32 noundef %138, i32 noundef 1, ptr noundef nonnull %12) #6
  %139 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  store i8 -128, ptr %139, align 1, !tbaa !129
  br label %140

140:                                              ; preds = %129, %137
  call void @glColor4ubv(ptr noundef nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  br label %160

141:                                              ; preds = %85
  %142 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !56
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.Object, ptr %143, i64 0, i32 19
  %147 = load ptr, ptr %146, align 8, !tbaa !121
  %148 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !103
  %150 = icmp eq ptr %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #6
  br label %160

152:                                              ; preds = %145, %141
  %153 = call i32 @tree_element_active(ptr noundef %0, ptr noundef %2, ptr noundef %4, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 0) #6
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  call void @glColor4ub(i8 noundef zeroext -36, i8 noundef zeroext -36, i8 noundef zeroext -1, i8 noundef zeroext -128) #6
  br label %160

156:                                              ; preds = %82
  %157 = call i32 @tree_element_type_active(ptr noundef null, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %19, i32 noundef 0, i8 noundef zeroext 0) #6
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 0, i32 2
  call void @glColor4ub(i8 noundef zeroext -36, i8 noundef zeroext -36, i8 noundef zeroext -1, i8 noundef zeroext -128) #6
  br label %160

160:                                              ; preds = %93, %99, %120, %140, %106, %92, %88, %152, %155, %151, %156
  %161 = phi i32 [ 2, %92 ], [ 0, %88 ], [ 2, %151 ], [ 2, %155 ], [ 0, %152 ], [ %159, %156 ], [ 2, %106 ], [ %136, %140 ], [ 0, %120 ], [ 0, %99 ], [ 0, %93 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %180, label %163

163:                                              ; preds = %160
  call void @uiSetRoundBox(i32 noundef 15) #6
  %164 = sitofp i32 %6 to float
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %166 = sitofp i16 %165 to float
  %167 = fadd float %164, %166
  %168 = load i32, ptr %7, align 4, !tbaa !76
  %169 = sitofp i32 %168 to float
  %170 = fadd float %17, %169
  %171 = call float @llvm.fmuladd.f32(float %166, float 2.000000e+00, float %164)
  %172 = call float @llvm.fmuladd.f32(float %17, float -2.000000e+00, float %171)
  %173 = fadd float %166, %169
  %174 = call float @llvm.fmuladd.f32(float %17, float -1.000000e+00, float %173)
  %175 = fmul float %166, 5.000000e-01
  %176 = call float @llvm.fmuladd.f32(float %17, float -1.000000e+00, float %175)
  call void @uiRoundBox(float noundef %167, float noundef %170, float noundef %172, float noundef %174, float noundef %176) #6
  call void @glEnable(i32 noundef 3042) #6
  %177 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 7
  %178 = load i16, ptr %177, align 8, !tbaa !133
  %179 = or i16 %178, 1
  store i16 %179, ptr %177, align 8, !tbaa !133
  br label %180

180:                                              ; preds = %163, %160
  %181 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !134
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = load i16, ptr %19, align 8, !tbaa !102
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %189 = load i16, ptr %188, align 4, !tbaa !116
  %190 = icmp eq i16 %189, 17235
  br i1 %190, label %196, label %191

191:                                              ; preds = %187, %184
  %192 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 7
  %193 = load i16, ptr %192, align 8, !tbaa !133
  %194 = and i16 %193, 4
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %226, label %196

196:                                              ; preds = %191, %187, %180
  %197 = load i16, ptr %19, align 8, !tbaa !102
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %201 = load i16, ptr %200, align 4, !tbaa !116
  switch i16 %201, label %202 [
    i16 16975, label %206
    i16 17235, label %206
  ]

202:                                              ; preds = %199, %196
  %203 = sitofp i32 %6 to float
  %204 = call float @llvm.fmuladd.f32(float %17, float 5.000000e+00, float %203)
  %205 = fptosi float %204 to i32
  br label %206

206:                                              ; preds = %199, %199, %202
  %207 = phi i32 [ %205, %202 ], [ %6, %199 ], [ %6, %199 ]
  %208 = load i16, ptr %36, align 4, !tbaa !108
  %209 = zext i16 %208 to i32
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %206
  %213 = load i16, ptr %56, align 2, !tbaa !110
  %214 = and i16 %213, 4
  %215 = icmp eq i16 %214, 0
  %216 = and i32 %209, 8
  %217 = icmp eq i32 %216, 0
  %218 = or i1 %217, %215
  %219 = select i1 %218, i32 11, i32 10
  br label %220

220:                                              ; preds = %212, %206
  %221 = phi i32 [ 10, %206 ], [ %219, %212 ]
  %222 = sitofp i32 %207 to float
  %223 = load i32, ptr %7, align 4, !tbaa !76
  %224 = sitofp i32 %223 to float
  %225 = call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float %224)
  call void @UI_icon_draw(float noundef %222, float noundef %225, i32 noundef %221) #6
  br label %226

226:                                              ; preds = %220, %191
  %227 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %228 = load i16, ptr %19, align 8, !tbaa !102
  %229 = add i16 %228, -31
  %230 = icmp ult i16 %229, 2
  br i1 %230, label %241, label %231

231:                                              ; preds = %226
  %232 = sext i16 %227 to i32
  %233 = sitofp i32 %6 to float
  %234 = sitofp i16 %227 to float
  %235 = fadd float %233, %234
  %236 = load i32, ptr %7, align 4, !tbaa !76
  %237 = sitofp i32 %236 to float
  call fastcc void @tselem_draw_icon(ptr noundef %1, i32 noundef %55, float noundef %235, float noundef %237, ptr noundef nonnull %19, ptr noundef %5, float noundef 1.000000e+00)
  %238 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %239 = sext i16 %238 to i32
  %240 = add nsw i32 %239, %232
  br label %245

241:                                              ; preds = %226
  %242 = sitofp i16 %227 to float
  %243 = call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float %242)
  %244 = fptosi float %243 to i32
  br label %245

245:                                              ; preds = %241, %231
  %246 = phi i32 [ %244, %241 ], [ %240, %231 ]
  %247 = load i16, ptr %19, align 8, !tbaa !102
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !103
  %252 = getelementptr inbounds %struct.ID, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !135
  %254 = icmp eq ptr %253, null
  br i1 %254, label %271, label %255

255:                                              ; preds = %249
  call void @glPixelTransferf(i32 noundef 3356, float noundef 5.000000e-01) #6
  %256 = load ptr, ptr %250, align 8, !tbaa !103
  %257 = getelementptr inbounds %struct.ID, ptr %256, i64 0, i32 5
  %258 = load i16, ptr %257, align 2, !tbaa !136
  %259 = and i16 %258, 2
  %260 = icmp eq i16 %259, 0
  %261 = sitofp i32 %6 to float
  %262 = sitofp i32 %246 to float
  %263 = fadd float %261, %262
  %264 = load i32, ptr %7, align 4, !tbaa !76
  %265 = sitofp i32 %264 to float
  %266 = call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float %265)
  %267 = select i1 %260, i32 170, i32 196
  call void @UI_icon_draw(float noundef %263, float noundef %266, i32 noundef %267) #6
  call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #6
  %268 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %269 = sext i16 %268 to i32
  %270 = add nsw i32 %246, %269
  br label %271

271:                                              ; preds = %255, %249, %245
  %272 = phi i32 [ %270, %255 ], [ %246, %249 ], [ %246, %245 ]
  call void @glDisable(i32 noundef 3042) #6
  %273 = icmp eq i32 %161, 1
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  call void @UI_ThemeColor(i32 noundef 4) #6
  br label %281

275:                                              ; preds = %271
  %276 = load i16, ptr %19, align 8, !tbaa !102
  %277 = add i16 %276, -31
  %278 = icmp ult i16 %277, 2
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  call void @UI_ThemeColorBlend(i32 noundef 2, i32 noundef 3, float noundef 7.500000e-01) #6
  br label %281

280:                                              ; preds = %275
  call void @UI_ThemeColor(i32 noundef 3) #6
  br label %281

281:                                              ; preds = %279, %280, %274
  %282 = add nsw i32 %272, %6
  %283 = sitofp i32 %282 to float
  %284 = load i32, ptr %7, align 4, !tbaa !76
  %285 = sitofp i32 %284 to float
  %286 = call float @llvm.fmuladd.f32(float %17, float 5.000000e+00, float %285)
  %287 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 11
  %288 = load ptr, ptr %287, align 8, !tbaa !107
  call void @UI_DrawString(float noundef %283, float noundef %286, ptr noundef %288) #6
  %289 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %290 = sext i16 %289 to i32
  %291 = load ptr, ptr %287, align 8, !tbaa !107
  %292 = call i32 @UI_GetStringWidth(ptr noundef %291) #6
  %293 = add i32 %272, %290
  %294 = add i32 %293, %292
  %295 = load i16, ptr %36, align 4, !tbaa !108
  %296 = zext i16 %295 to i32
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %335, label %299

299:                                              ; preds = %281
  %300 = load i16, ptr %56, align 2, !tbaa !110
  %301 = and i16 %300, 4
  %302 = icmp eq i16 %301, 0
  %303 = and i32 %296, 8
  %304 = icmp eq i32 %303, 0
  %305 = or i1 %304, %302
  br i1 %305, label %306, label %335

306:                                              ; preds = %299
  %307 = load ptr, ptr %181, align 8, !tbaa !134
  %308 = icmp eq ptr %307, null
  br i1 %308, label %335, label %309

309:                                              ; preds = %306
  %310 = load i16, ptr %19, align 8, !tbaa !102
  switch i16 %310, label %317 [
    i16 0, label %311
    i16 20, label %335
  ]

311:                                              ; preds = %309
  %312 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %313 = load i16, ptr %312, align 4, !tbaa !116
  %314 = icmp eq i16 %313, 17235
  %315 = icmp eq i16 %310, 20
  %316 = or i1 %315, %314
  br i1 %316, label %335, label %317

317:                                              ; preds = %311, %309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  %318 = add nsw i32 %294, %6
  store i32 %318, ptr %13, align 4, !tbaa !76
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -40) #6
  %319 = sitofp i32 %318 to float
  %320 = call float @llvm.fmuladd.f32(float %17, float -1.000000e+01, float %319)
  %321 = fptosi float %320 to i32
  %322 = load i32, ptr %7, align 4, !tbaa !76
  %323 = sitofp i32 %322 to float
  %324 = call float @llvm.fmuladd.f32(float %17, float 4.000000e+00, float %323)
  %325 = fptosi float %324 to i32
  %326 = call float @llvm.fmuladd.f32(float %17, float -8.000000e+00, float %319)
  %327 = fptosi float %326 to i32
  %328 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %329 = sext i16 %328 to i32
  %330 = add nsw i32 %322, %329
  %331 = sitofp i32 %330 to float
  %332 = call float @llvm.fmuladd.f32(float %17, float -4.000000e+00, float %331)
  %333 = fptosi float %332 to i32
  call void @glRecti(i32 noundef %321, i32 noundef %325, i32 noundef %327, i32 noundef %333) #6
  call void @glEnable(i32 noundef 3042) #6
  call void @glPixelTransferf(i32 noundef 3356, float noundef 5.000000e-01) #6
  %334 = load i32, ptr %7, align 4, !tbaa !76
  call fastcc void @outliner_draw_iconrow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %181, i32 noundef 0, i32 noundef %55, ptr noundef nonnull %13, i32 noundef %334)
  call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #6
  call void @glDisable(i32 noundef 3042) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  br label %335

335:                                              ; preds = %309, %281, %311, %317, %306, %299, %27, %9
  %336 = phi i32 [ 0, %27 ], [ 0, %9 ], [ %294, %299 ], [ %294, %306 ], [ %294, %317 ], [ %294, %311 ], [ %294, %281 ], [ %294, %309 ]
  %337 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 4
  store i32 %6, ptr %337, align 8, !tbaa !105
  %338 = load i32, ptr %7, align 4, !tbaa !76
  %339 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 5
  store i32 %338, ptr %339, align 4, !tbaa !106
  %340 = add nsw i32 %336, %6
  %341 = trunc i32 %340 to i16
  %342 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 10
  store i16 %341, ptr %342, align 2, !tbaa !137
  %343 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 2
  %344 = load i16, ptr %343, align 4, !tbaa !108
  %345 = zext i16 %344 to i32
  %346 = and i32 %345, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %335
  %349 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 14
  %350 = load i16, ptr %349, align 2, !tbaa !110
  %351 = and i16 %350, 4
  %352 = icmp eq i16 %351, 0
  %353 = and i32 %345, 8
  %354 = icmp eq i32 %353, 0
  %355 = or i1 %354, %352
  br i1 %355, label %371, label %356

356:                                              ; preds = %348, %335
  %357 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %358 = sext i16 %357 to i32
  %359 = load i32, ptr %7, align 4, !tbaa !76
  %360 = sub nsw i32 %359, %358
  store i32 %360, ptr %7, align 4, !tbaa !76
  %361 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %362 = load ptr, ptr %361, align 8, !tbaa !50
  %363 = icmp eq ptr %362, null
  br i1 %363, label %385, label %364

364:                                              ; preds = %356, %364
  %365 = phi ptr [ %369, %364 ], [ %362, %356 ]
  %366 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %367 = sext i16 %366 to i32
  %368 = add nsw i32 %367, %6
  call fastcc void @outliner_draw_tree_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %365, i32 noundef %368, ptr noundef nonnull %7, ptr noundef %8)
  %369 = load ptr, ptr %365, align 8, !tbaa !50
  %370 = icmp eq ptr %369, null
  br i1 %370, label %385, label %364, !llvm.loop !138

371:                                              ; preds = %348
  %372 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %373 = load ptr, ptr %372, align 8, !tbaa !50
  %374 = icmp eq ptr %373, null
  br i1 %374, label %380, label %375

375:                                              ; preds = %371, %375
  %376 = phi ptr [ %378, %375 ], [ %373, %371 ]
  %377 = load i32, ptr %7, align 4, !tbaa !76
  call fastcc void @outliner_set_coord_tree_element(ptr noundef nonnull %376, i32 noundef %6, i32 noundef %377)
  %378 = load ptr, ptr %376, align 8, !tbaa !50
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %375, !llvm.loop !139

380:                                              ; preds = %375, %371
  %381 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %382 = sext i16 %381 to i32
  %383 = load i32, ptr %7, align 4, !tbaa !76
  %384 = sub nsw i32 %383, %382
  store i32 %384, ptr %7, align 4, !tbaa !76
  br label %385

385:                                              ; preds = %364, %356, %380
  ret void
}

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @UI_GetThemeColorType4ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @tree_element_active(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @tree_element_type_active(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tselem_draw_icon(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.DrawIconArg, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #6
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %10 = sitofp i16 %9 to float
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFC3333340000000, float %2)
  store ptr %0, ptr %8, align 8, !tbaa !140
  %12 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !142
  %15 = sitofp i32 %1 to float
  %16 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 2
  store float %15, ptr %16, align 8, !tbaa !143
  %17 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 5
  store float %11, ptr %17, align 4, !tbaa !144
  %18 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 6
  store float %3, ptr %18, align 8, !tbaa !145
  %19 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 7
  store float %6, ptr %19, align 4, !tbaa !146
  %20 = fmul float %10, 0x3FE99999A0000000
  %21 = fmul float %20, 6.250000e-02
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 4.000000e+00, float %11)
  %23 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 3
  store float %22, ptr %23, align 4, !tbaa !147
  %24 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FB99999A0000000, float %3)
  %25 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 4
  store float %24, ptr %25, align 8, !tbaa !148
  %26 = load i16, ptr %4, align 8, !tbaa !102
  switch i16 %26, label %121 [
    i16 0, label %122
    i16 15, label %27
    i16 1, label %28
    i16 33, label %29
    i16 2, label %30
    i16 16, label %31
    i16 3, label %32
    i16 5, label %33
    i16 6, label %33
    i16 7, label %34
    i16 9, label %35
    i16 11, label %36
    i16 29, label %37
    i16 10, label %38
    i16 13, label %89
    i16 14, label %90
    i16 18, label %91
    i16 19, label %92
    i16 20, label %93
    i16 23, label %94
    i16 22, label %95
    i16 24, label %96
    i16 26, label %97
    i16 27, label %106
    i16 28, label %107
    i16 30, label %108
  ]

27:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 167) #6
  br label %167

28:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 116) #6
  br label %167

29:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 116) #6
  br label %167

30:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 115) #6
  br label %167

31:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 519) #6
  br label %167

32:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 201) #6
  br label %167

33:                                               ; preds = %7, %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 174) #6
  br label %167

34:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 175) #6
  br label %167

35:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 442) #6
  br label %167

36:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 159) #6
  br label %167

37:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 88) #6
  br label %167

38:                                               ; preds = %7
  %39 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 26
  %40 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !118
  %42 = sext i16 %41 to i32
  %43 = tail call ptr @BLI_findlink(ptr noundef nonnull %39, i32 noundef %42) #6
  %44 = getelementptr inbounds %struct.ModifierData, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !149
  switch i32 %45, label %167 [
    i32 1, label %46
    i32 8, label %47
    i32 2, label %48
    i32 3, label %49
    i32 4, label %50
    i32 5, label %51
    i32 6, label %52
    i32 7, label %53
    i32 9, label %54
    i32 10, label %55
    i32 11, label %56
    i32 19, label %57
    i32 20, label %58
    i32 13, label %59
    i32 12, label %60
    i32 15, label %61
    i32 45, label %61
    i32 14, label %62
    i32 25, label %63
    i32 17, label %64
    i32 18, label %65
    i32 24, label %66
    i32 16, label %67
    i32 43, label %67
    i32 28, label %68
    i32 27, label %69
    i32 22, label %70
    i32 21, label %71
    i32 23, label %72
    i32 30, label %72
    i32 26, label %73
    i32 29, label %74
    i32 31, label %75
    i32 33, label %76
    i32 34, label %77
    i32 41, label %78
    i32 36, label %79
    i32 37, label %79
    i32 38, label %79
    i32 40, label %80
    i32 39, label %81
    i32 35, label %82
    i32 42, label %83
    i32 44, label %84
    i32 46, label %85
    i32 48, label %86
    i32 47, label %87
    i32 0, label %88
    i32 32, label %88
    i32 49, label %88
  ]

46:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 448) #6
  br label %167

47:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 460) #6
  br label %167

48:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 458) #6
  br label %167

49:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 457) #6
  br label %167

50:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 444) #6
  br label %167

51:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 446) #6
  br label %167

52:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 445) #6
  br label %167

53:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 443) #6
  br label %167

54:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 449) #6
  br label %167

55:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 447) #6
  br label %167

56:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 452) #6
  br label %167

57:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 451) #6
  br label %167

58:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 451) #6
  br label %167

59:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 453) #6
  br label %167

60:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 454) #6
  br label %167

61:                                               ; preds = %38, %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 455) #6
  br label %167

62:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 456) #6
  br label %167

63:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 461) #6
  br label %167

64:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 462) #6
  br label %167

65:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 463) #6
  br label %167

66:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 464) #6
  br label %167

67:                                               ; preds = %38, %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 465) #6
  br label %167

68:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 466) #6
  br label %167

69:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 467) #6
  br label %167

70:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 468) #6
  br label %167

71:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 469) #6
  br label %167

72:                                               ; preds = %38, %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 450) #6
  br label %167

73:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 470) #6
  br label %167

74:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 471) #6
  br label %167

75:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 472) #6
  br label %167

76:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 473) #6
  br label %167

77:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 474) #6
  br label %167

78:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 477) #6
  br label %167

79:                                               ; preds = %38, %38, %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 475) #6
  br label %167

80:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 476) #6
  br label %167

81:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 478) #6
  br label %167

82:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 479) #6
  br label %167

83:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 480) #6
  br label %167

84:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 481) #6
  br label %167

85:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 463) #6
  br label %167

86:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 482) #6
  br label %167

87:                                               ; preds = %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 463) #6
  br label %167

88:                                               ; preds = %38, %38, %38
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 17) #6
  br label %167

89:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 172) #6
  br label %167

90:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 174) #6
  br label %167

91:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 682) #6
  br label %167

92:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 157) #6
  br label %167

93:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 157) #6
  br label %167

94:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 164) #6
  br label %167

95:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 165) #6
  br label %167

96:                                               ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 200) #6
  br label %167

97:                                               ; preds = %7
  %98 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %99 = load i16, ptr %98, align 4, !tbaa !116
  switch i16 %99, label %105 [
    i16 3, label %100
    i16 1, label %101
    i16 2, label %102
    i16 4, label %103
    i16 0, label %104
  ]

100:                                              ; preds = %97
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 111) #6
  br label %167

101:                                              ; preds = %97
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 17) #6
  br label %167

102:                                              ; preds = %97
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 83) #6
  br label %167

103:                                              ; preds = %97
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 114) #6
  br label %167

104:                                              ; preds = %97
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 109) #6
  br label %167

105:                                              ; preds = %97
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 88) #6
  br label %167

106:                                              ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 170) #6
  br label %167

107:                                              ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 159) #6
  br label %167

108:                                              ; preds = %7
  %109 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 13, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !151
  %111 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %110) #6
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 13, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !152
  store ptr %115, ptr %14, align 8, !tbaa !142
  %116 = load ptr, ptr %109, align 8, !tbaa !151
  %117 = tail call i32 @RNA_struct_ui_icon(ptr noundef %116) #6
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef %117)
  br label %167

118:                                              ; preds = %108
  %119 = load ptr, ptr %109, align 8, !tbaa !151
  %120 = tail call i32 @RNA_struct_ui_icon(ptr noundef %119) #6
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef %120) #6
  br label %167

121:                                              ; preds = %7
  tail call void @UI_icon_draw(float noundef %22, float noundef %24, i32 noundef 17) #6
  br label %167

122:                                              ; preds = %7
  %123 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %124 = load i16, ptr %123, align 8, !tbaa !104
  switch i16 %124, label %167 [
    i16 16975, label %125
    i16 17235, label %139
    i16 17741, label %140
    i16 21827, label %141
    i16 16973, label %142
    i16 21580, label %143
    i16 16716, label %144
    i16 16717, label %153
    i16 17748, label %154
    i16 19785, label %155
    i16 19283, label %156
    i16 20307, label %156
    i16 21057, label %157
    i16 16707, label %158
    i16 17739, label %159
    i16 20311, label %160
    i16 17217, label %161
    i16 19534, label %162
    i16 22612, label %163
    i16 21063, label %164
    i16 18764, label %165
    i16 21324, label %166
  ]

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %127 = load i16, ptr %126, align 8, !tbaa !153
  switch i16 %127, label %167 [
    i16 10, label %128
    i16 1, label %129
    i16 11, label %130
    i16 2, label %131
    i16 5, label %132
    i16 22, label %133
    i16 25, label %134
    i16 4, label %135
    i16 3, label %136
    i16 12, label %137
    i16 0, label %138
  ]

128:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 239)
  br label %167

129:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 235)
  br label %167

130:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 240)
  br label %167

131:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 236)
  br label %167

132:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 238)
  br label %167

133:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 237)
  br label %167

134:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 241)
  br label %167

135:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 242)
  br label %167

136:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 243)
  br label %167

137:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 244)
  br label %167

138:                                              ; preds = %125
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 234)
  br label %167

139:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 156)
  br label %167

140:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 261)
  br label %167

141:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 262)
  br label %167

142:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 264)
  br label %167

143:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 263)
  br label %167

144:                                              ; preds = %122
  %145 = getelementptr inbounds %struct.Lamp, ptr %13, i64 0, i32 2
  %146 = load i16, ptr %145, align 8, !tbaa !154
  switch i16 %146, label %152 [
    i16 0, label %147
    i16 1, label %148
    i16 2, label %149
    i16 3, label %150
    i16 4, label %151
  ]

147:                                              ; preds = %144
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 298)
  br label %167

148:                                              ; preds = %144
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 299)
  br label %167

149:                                              ; preds = %144
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 300)
  br label %167

150:                                              ; preds = %144
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 301)
  br label %167

151:                                              ; preds = %144
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 302)
  br label %167

152:                                              ; preds = %144
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 265)
  br label %167

153:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 165)
  br label %167

154:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 166)
  br label %167

155:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 183)
  br label %167

156:                                              ; preds = %122, %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 270)
  br label %167

157:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 267)
  br label %167

158:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 266)
  br label %167

159:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 176)
  br label %167

160:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 158)
  br label %167

161:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 115)
  br label %167

162:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 116)
  br label %167

163:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 87)
  br label %167

164:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 171)
  br label %167

165:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 170)
  br label %167

166:                                              ; preds = %122
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 198)
  br label %167

167:                                              ; preds = %147, %148, %149, %150, %151, %152, %122, %128, %129, %130, %131, %132, %133, %134, %135, %136, %137, %138, %125, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %38, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %143, %142, %141, %140, %139, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %89, %90, %91, %92, %93, %94, %95, %96, %106, %107, %121, %101, %103, %105, %104, %102, %100, %118, %113
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #6
  ret void
}

declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_draw_iconrow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = load ptr, ptr %4, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %9
  %13 = icmp slt i32 %5, 1
  %14 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 7
  %15 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %16 = sitofp i32 %8 to float
  %17 = sitofp i32 %8 to float
  %18 = add nsw i32 %5, 1
  br label %19

19:                                               ; preds = %12, %108
  %20 = phi ptr [ %10, %12 ], [ %109, %108 ]
  %21 = load i32, ptr %7, align 4, !tbaa !76
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %23 = sext i16 %22 to i32
  %24 = sub nsw i32 %21, %23
  %25 = icmp sgt i32 %24, %6
  br i1 %25, label %111, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  br i1 %13, label %36, label %29

29:                                               ; preds = %26
  %30 = load i16, ptr %28, align 8, !tbaa !102
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %103

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 9
  %34 = load i16, ptr %33, align 4, !tbaa !116
  %35 = icmp eq i16 %34, 16975
  br i1 %35, label %36, label %103

36:                                               ; preds = %32, %26
  %37 = load i16, ptr %28, align 8, !tbaa !102
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 9
  %41 = load i16, ptr %40, align 4, !tbaa !116
  %42 = icmp eq i16 %41, 16975
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load ptr, ptr %15, align 8, !tbaa !130
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !131
  br label %49

49:                                               ; preds = %43, %46
  %50 = phi ptr [ %48, %46 ], [ null, %43 ]
  %51 = getelementptr inbounds %struct.TreeStoreElem, ptr %28, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !103
  %53 = icmp eq ptr %50, %52
  %54 = zext i1 %53 to i32
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %14, align 8, !tbaa !56
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !121
  %61 = getelementptr inbounds %struct.TreeStoreElem, ptr %28, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !103
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %58, %55
  %65 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %20, i32 noundef 0, i8 noundef zeroext 0) #6
  br label %68

66:                                               ; preds = %36
  %67 = tail call i32 @tree_element_type_active(ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %20, ptr noundef nonnull %28, i32 noundef 0, i8 noundef zeroext 0) #6
  br label %68

68:                                               ; preds = %58, %49, %64, %66
  %69 = phi i32 [ %54, %49 ], [ %65, %64 ], [ %67, %66 ], [ 1, %58 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %73 = sitofp i16 %72 to float
  %74 = fdiv float %73, 2.000000e+01
  tail call void @uiSetRoundBox(i32 noundef 15) #6
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 100) #6
  %75 = load i32, ptr %7, align 4, !tbaa !76
  %76 = sitofp i32 %75 to float
  %77 = tail call float @llvm.fmuladd.f32(float %74, float -1.000000e+00, float %76)
  %78 = fadd float %74, %16
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %80 = sitofp i16 %79 to float
  %81 = fadd float %76, %80
  %82 = tail call float @llvm.fmuladd.f32(float %74, float -2.000000e+00, float %81)
  %83 = fadd float %16, %80
  %84 = fsub float %83, %74
  %85 = fmul float %80, 5.000000e-01
  %86 = fsub float %85, %74
  tail call void @uiRoundBox(float noundef %77, float noundef %78, float noundef %82, float noundef %84, float noundef %86) #6
  tail call void @glEnable(i32 noundef 3042) #6
  br label %87

87:                                               ; preds = %71, %68
  %88 = load i32, ptr %7, align 4, !tbaa !76
  %89 = sitofp i32 %88 to float
  tail call fastcc void @tselem_draw_icon(ptr noundef %1, i32 noundef %6, float noundef %89, float noundef %17, ptr noundef nonnull %28, ptr noundef nonnull %20, float noundef 5.000000e-01)
  %90 = load i32, ptr %7, align 4, !tbaa !76
  %91 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 4
  store i32 %90, ptr %91, align 8, !tbaa !105
  %92 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 5
  store i32 %8, ptr %92, align 4, !tbaa !106
  %93 = load i32, ptr %7, align 4, !tbaa !76
  %94 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %95 = trunc i32 %93 to i16
  %96 = add i16 %94, %95
  %97 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 10
  store i16 %96, ptr %97, align 2, !tbaa !137
  %98 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 7
  %99 = load i16, ptr %98, align 8, !tbaa !133
  %100 = or i16 %99, 2
  store i16 %100, ptr %98, align 8, !tbaa !133
  %101 = sext i16 %94 to i32
  %102 = add nsw i32 %93, %101
  store i32 %102, ptr %7, align 4, !tbaa !76
  br label %103

103:                                              ; preds = %87, %32, %29
  %104 = load i16, ptr %28, align 8, !tbaa !102
  %105 = icmp eq i16 %104, 20
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 3
  tail call fastcc void @outliner_draw_iconrow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %107, i32 noundef %18, i32 noundef %6, ptr noundef nonnull %7, i32 noundef %8)
  br label %108

108:                                              ; preds = %103, %106
  %109 = load ptr, ptr %20, align 8, !tbaa !50
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %19, !llvm.loop !156

111:                                              ; preds = %108, %19, %9
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_set_coord_tree_element(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 4
  store i32 %1, ptr %4, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 5
  store i32 %2, ptr %5, align 4, !tbaa !106
  %6 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %3 ]
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, %1
  tail call fastcc void @outliner_set_coord_tree_element(ptr noundef nonnull %10, i32 noundef %13, i32 noundef %2)
  %14 = load ptr, ptr %10, align 8, !tbaa !50
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !157

16:                                               ; preds = %9, %3
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tselem_draw_icon_uibut(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 4, !tbaa !147
  %5 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !143
  %7 = fcmp ult float %4, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  tail call void @glEnable(i32 noundef 3042) #6
  %9 = load float, ptr %3, align 4, !tbaa !147
  %10 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 4
  %11 = load float, ptr %10, align 8, !tbaa !148
  %12 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !158
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !159
  %14 = sitofp i32 %13 to float
  %15 = fmul float %12, %14
  %16 = fdiv float %15, 7.200000e+01
  %17 = fdiv float 1.000000e+00, %16
  %18 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 7
  %19 = load float, ptr %18, align 4, !tbaa !146
  tail call void @UI_icon_draw_aspect(float noundef %9, float noundef %11, i32 noundef %1, float noundef %17, float noundef %19) #6
  tail call void @glDisable(i32 noundef 3042) #6
  br label %46

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 5
  %23 = load float, ptr %22, align 4, !tbaa !144
  %24 = fptosi float %23 to i32
  %25 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 6
  %26 = load float, ptr %25, align 8, !tbaa !145
  %27 = fptosi float %26 to i32
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %29 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 7
  %30 = load float, ptr %29, align 4, !tbaa !146
  %31 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !142
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !135
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.Library, ptr %36, i64 0, i32 3
  %39 = select i1 %37, ptr @.str, ptr %38
  br label %40

40:                                               ; preds = %34, %20
  %41 = phi ptr [ @.str, %20 ], [ %39, %34 ]
  %42 = tail call ptr @uiDefIconBut(ptr noundef %21, i32 noundef 5120, i32 noundef 0, i32 noundef %1, i32 noundef %24, i32 noundef %27, i16 noundef signext %28, i16 noundef signext %28, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %30, ptr noundef nonnull %41) #6
  %43 = load ptr, ptr %31, align 8, !tbaa !142
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void @uiButSetDragID(ptr noundef %42, ptr noundef nonnull %43) #6
  br label %46

46:                                               ; preds = %40, %45, %8
  ret void
}

declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetDragID(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_view_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @common_restrict_check(ptr noundef %0, ptr noundef %2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %8 = load i8, ptr %7, align 8, !tbaa !45
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %2) #6
  tail call void @ED_base_object_select(ptr noundef %12, i16 noundef signext 0) #6
  br label %13

13:                                               ; preds = %11, %6
  %14 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.wmWindow, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !160
  %17 = getelementptr inbounds %struct.wmEvent, ptr %16, i64 0, i32 18
  %18 = load i16, ptr %17, align 2, !tbaa !162
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %7, align 8, !tbaa !45
  %22 = and i8 %21, 1
  tail call fastcc void @restrictbutton_recursive_child(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext %22, i8 noundef zeroext 1, ptr noundef nonnull @.str.1)
  br label %23

23:                                               ; preds = %20, %13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %1) #6
  br label %24

24:                                               ; preds = %3, %23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_sel_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @common_restrict_check(ptr noundef %0, ptr noundef %2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %8 = load i8, ptr %7, align 8, !tbaa !45
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %2) #6
  tail call void @ED_base_object_select(ptr noundef %12, i16 noundef signext 0) #6
  br label %13

13:                                               ; preds = %11, %6
  %14 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.wmWindow, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !160
  %17 = getelementptr inbounds %struct.wmEvent, ptr %16, i64 0, i32 18
  %18 = load i16, ptr %17, align 2, !tbaa !162
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %7, align 8, !tbaa !45
  %22 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %23 = getelementptr inbounds %struct.Main, ptr %22, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = and i8 %21, 2
  %28 = icmp eq i8 %27, 0
  br label %29

29:                                               ; preds = %41, %26
  %30 = phi ptr [ %24, %26 ], [ %42, %41 ]
  %31 = tail call zeroext i8 @BKE_object_is_child_recursive(ptr noundef %2, ptr noundef nonnull %30) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 102
  %35 = load i8, ptr %34, align 8, !tbaa !45
  br i1 %28, label %39, label %36

36:                                               ; preds = %33
  %37 = or i8 %35, 2
  store i8 %37, ptr %34, align 8, !tbaa !45
  %38 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef nonnull %30) #6
  tail call void @ED_base_object_select(ptr noundef %38, i16 noundef signext 0) #6
  br label %41

39:                                               ; preds = %33
  %40 = and i8 %35, -3
  store i8 %40, ptr %34, align 8, !tbaa !45
  br label %41

41:                                               ; preds = %36, %39, %29
  %42 = load ptr, ptr %30, align 8, !tbaa !50
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %29, !llvm.loop !165

44:                                               ; preds = %41, %20, %13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %1) #6
  br label %45

45:                                               ; preds = %3, %44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_rend_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 18
  %8 = load i16, ptr %7, align 2, !tbaa !162
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %12 = load i8, ptr %11, align 8, !tbaa !45
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 1
  tail call fastcc void @restrictbutton_recursive_child(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 4, i8 noundef zeroext %14, i8 noundef zeroext 0, ptr noundef nonnull @.str.3)
  br label %15

15:                                               ; preds = %10, %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67764224, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_gr_restrict_view(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %2, i32 noundef 1)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_gr_restrict_select(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %2, i32 noundef 2)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_gr_restrict_render(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GroupObject, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 102
  %11 = load i8, ptr %10, align 8, !tbaa !45
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  br label %31

16:                                               ; preds = %7
  br i1 %6, label %48, label %17

17:                                               ; preds = %16, %28
  %18 = phi ptr [ %29, %28 ], [ %5, %16 ]
  %19 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 102
  %26 = load i8, ptr %25, align 8, !tbaa !45
  %27 = and i8 %26, -5
  store i8 %27, ptr %25, align 8, !tbaa !45
  br label %28

28:                                               ; preds = %24, %17
  %29 = load ptr, ptr %18, align 8, !tbaa !50
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %17, !llvm.loop !53

31:                                               ; preds = %45, %14
  %32 = phi ptr [ %5, %14 ], [ %46, %45 ]
  %33 = getelementptr inbounds %struct.GroupObject, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load ptr, ptr %15, align 8, !tbaa !56
  %40 = icmp eq ptr %39, %34
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 102
  %43 = load i8, ptr %42, align 8, !tbaa !45
  %44 = or i8 %43, 4
  store i8 %44, ptr %42, align 8, !tbaa !45
  br label %45

45:                                               ; preds = %41, %38, %31
  %46 = load ptr, ptr %32, align 8, !tbaa !50
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %31, !llvm.loop !75

48:                                               ; preds = %28, %45, %3, %16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #6
  ret void
}

declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_r_lay_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_modifier_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  tail call void @DAG_id_tag_update(ptr noundef %2, i16 noundef signext 2) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_bone_visibility_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Bone, ptr %2, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !166
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 8, !tbaa !166
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !162
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 8, !tbaa !166
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 6
  %21 = and i8 %20, 1
  tail call fastcc void @restrictbutton_recursive_bone(ptr noundef %2, i32 noundef 64, i8 noundef zeroext %21)
  br label %22

22:                                               ; preds = %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_bone_select_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Bone, ptr %2, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !166
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 8, !tbaa !166
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !162
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 8, !tbaa !166
  %19 = lshr i32 %18, 21
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  tail call fastcc void @restrictbutton_recursive_bone(ptr noundef %2, i32 noundef 2097152, i8 noundef zeroext %21)
  br label %22

22:                                               ; preds = %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_ebone_visibility_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 4, !tbaa !168
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !162
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4, !tbaa !168
  %19 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %17
  %27 = and i32 %18, 1024
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %40, %26
  %30 = phi ptr [ %24, %26 ], [ %41, %40 ]
  %31 = tail call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef %2, ptr noundef nonnull %30) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !168
  %36 = and i32 %35, -1025
  %37 = and i32 %35, -1032
  %38 = or disjoint i32 %37, 1024
  %39 = select i1 %28, i32 %36, i32 %38
  store i32 %39, ptr %34, align 4, !tbaa !168
  br label %40

40:                                               ; preds = %33, %29
  %41 = load ptr, ptr %30, align 8, !tbaa !50
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %29, !llvm.loop !172

43:                                               ; preds = %40, %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restrictbutton_ebone_select_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 4, !tbaa !168
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !162
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4, !tbaa !168
  %19 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %17
  %27 = and i32 %18, 2097152
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %40, %26
  %30 = phi ptr [ %24, %26 ], [ %41, %40 ]
  %31 = tail call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef %2, ptr noundef nonnull %30) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !168
  %36 = and i32 %35, -2097153
  %37 = and i32 %35, -2097160
  %38 = or disjoint i32 %37, 2097152
  %39 = select i1 %28, i32 %36, i32 %38
  store i32 %39, ptr %34, align 4, !tbaa !168
  br label %40

40:                                               ; preds = %33, %29
  %41 = load ptr, ptr %30, align 8, !tbaa !50
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %29, !llvm.loop !172

43:                                               ; preds = %40, %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #6
  ret void
}

declare i32 @common_restrict_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @restrictbutton_recursive_child(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %7
  %16 = icmp eq i8 %4, 0
  %17 = icmp eq i8 %5, 0
  %18 = xor i8 %3, -1
  %19 = icmp eq ptr %6, null
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  br label %21

21:                                               ; preds = %15, %66
  %22 = phi ptr [ %13, %15 ], [ %67, %66 ]
  %23 = call zeroext i8 @BKE_object_is_child_recursive(ptr noundef %2, ptr noundef nonnull %22) #6
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 102
  %27 = load i8, ptr %26, align 8, !tbaa !45
  br i1 %16, label %32, label %28

28:                                               ; preds = %25
  %29 = or i8 %27, %3
  store i8 %29, ptr %26, align 8, !tbaa !45
  br i1 %17, label %34, label %30

30:                                               ; preds = %28
  %31 = call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef nonnull %22) #6
  call void @ED_base_object_select(ptr noundef %31, i16 noundef signext 0) #6
  br label %34

32:                                               ; preds = %25
  %33 = and i8 %27, %18
  store i8 %33, ptr %26, align 8, !tbaa !45
  br label %34

34:                                               ; preds = %28, %30, %32
  br i1 %19, label %66, label %35

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  call void @RNA_id_pointer_create(ptr noundef nonnull %22, ptr noundef nonnull %8) #6
  %36 = call ptr @RNA_struct_find_property(ptr noundef nonnull %8, ptr noundef nonnull %6) #6
  %37 = call ptr @rna_get_fcurve_context_ui(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %36, i32 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  %38 = icmp eq ptr %37, null
  %39 = load i8, ptr %10, align 1
  %40 = icmp ne i8 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %65, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %8, align 8, !tbaa !173
  %44 = call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %43) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = call ptr @CTX_wm_reports(ptr noundef %0) #6
  %48 = call signext i16 @ANIM_get_keyframing_flags(ptr noundef %1, i16 noundef signext 1) #6
  %49 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 9
  %50 = load i16, ptr %49, align 8, !tbaa !174
  %51 = and i16 %50, -3
  store i16 %51, ptr %49, align 8, !tbaa !174
  %52 = load ptr, ptr %9, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !176
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds %struct.bActionGroup, ptr %54, i64 0, i32 5
  %57 = select i1 %55, ptr null, ptr %56
  %58 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !177
  %60 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 11
  %61 = load i32, ptr %60, align 4, !tbaa !178
  %62 = load i32, ptr %20, align 8, !tbaa !179
  %63 = sitofp i32 %62 to float
  %64 = call signext i16 @insert_keyframe(ptr noundef %47, ptr noundef %43, ptr noundef %52, ptr noundef %57, ptr noundef %59, i32 noundef %61, float noundef %63, i16 noundef signext %48) #6
  br label %65

65:                                               ; preds = %42, %46, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  br label %66

66:                                               ; preds = %21, %65, %34
  %67 = load ptr, ptr %22, align 8, !tbaa !50
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %21, !llvm.loop !165

69:                                               ; preds = %66, %7
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rna_get_fcurve_context_ui(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @restrictbutton_recursive_bone(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  %9 = xor i32 %1, -1
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %5, %7 ], [ %18, %10 ]
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !166
  %14 = and i32 %13, %9
  %15 = and i32 %13, -8
  %16 = or i32 %15, %1
  %17 = select i1 %8, i32 %14, i32 %16
  store i32 %17, ptr %12, align 8, !tbaa !166
  tail call fastcc void @restrictbutton_recursive_bone(ptr noundef nonnull %11, i32 noundef %1, i8 noundef zeroext %2)
  %18 = load ptr, ptr %11, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !180

20:                                               ; preds = %10, %3
  ret void
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetRenameFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @namebutton_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #6
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %8, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %1, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %124

16:                                               ; preds = %3
  %17 = tail call ptr @outliner_find_tse(ptr noundef %8, ptr noundef nonnull %1) #6
  %18 = load i16, ptr %1, align 8, !tbaa !102
  switch i16 %18, label %120 [
    i16 0, label %19
    i16 4, label %47
    i16 2, label %52
    i16 6, label %56
    i16 5, label %78
    i16 14, label %95
    i16 25, label %112
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4
  tail call void @test_idbutton(ptr noundef nonnull %22) #6
  %23 = load ptr, ptr %20, align 8, !tbaa !103
  %24 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %29 [
    i16 16717, label %30
    i16 17748, label %26
    i16 19785, label %27
    i16 17235, label %28
  ]

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %19
  br label %30

28:                                               ; preds = %19
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %19, %29, %28, %27, %26
  %31 = phi i32 [ 301989893, %29 ], [ 67108864, %28 ], [ 167772160, %27 ], [ 117440512, %26 ], [ 100663296, %19 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %31, ptr noundef null) #6
  %32 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 9
  %33 = load i16, ptr %32, align 4, !tbaa !116
  %34 = icmp eq i16 %33, 18764
  br i1 %34, label %35, label %120

35:                                               ; preds = %30
  %36 = load ptr, ptr %20, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  %37 = getelementptr inbounds %struct.Library, ptr %36, i64 0, i32 3
  tail call void @BKE_library_filepath_set(ptr noundef %36, ptr noundef nonnull %37) #6
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %37, i64 noundef 1024) #6
  %39 = load ptr, ptr @G, align 8, !tbaa !182
  %40 = getelementptr inbounds %struct.Main, ptr %39, i64 0, i32 2
  %41 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %40) #6
  %42 = call i32 @BLI_exists(ptr noundef nonnull %4) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call ptr @CTX_wm_reports(ptr noundef %0) #6
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %45, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #6
  br label %46

46:                                               ; preds = %44, %35
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  br label %120

47:                                               ; preds = %16
  %48 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !113
  %50 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !103
  tail call void @defgroup_unique_name(ptr noundef %49, ptr noundef %51) #6
  br label %120

52:                                               ; preds = %16
  %53 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !103
  %55 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 4
  tail call void @test_idbutton(ptr noundef nonnull %55) #6
  br label %120

56:                                               ; preds = %16
  %57 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = getelementptr inbounds %struct.bArmature, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !170
  %61 = icmp eq ptr %60, null
  br i1 %61, label %120, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %65 = getelementptr inbounds %struct.EditBone, ptr %64, i64 0, i32 5
  %66 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %65, i64 noundef 64) #6
  %67 = call ptr @BLI_strncpy(ptr noundef nonnull %65, ptr noundef %2, i64 noundef 64) #6
  %68 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !121
  call void @ED_armature_bone_rename(ptr noundef %69, ptr noundef %2, ptr noundef nonnull %5) #6
  %70 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !130
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !131
  br label %76

76:                                               ; preds = %62, %73
  %77 = phi ptr [ %75, %73 ], [ null, %62 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %77) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  br label %120

78:                                               ; preds = %16
  %79 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %80 = load ptr, ptr %79, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %81 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %9, ptr noundef %8, ptr noundef %17, i32 noundef 1, i8 noundef zeroext 1) #6
  %82 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !130
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !131
  br label %88

88:                                               ; preds = %78, %85
  %89 = phi ptr [ %87, %85 ], [ null, %78 ]
  %90 = getelementptr inbounds %struct.Bone, ptr %80, i64 0, i32 5
  %91 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %90, i64 noundef 64) #6
  %92 = call ptr @BLI_strncpy(ptr noundef nonnull %90, ptr noundef %2, i64 noundef 64) #6
  %93 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !121
  call void @ED_armature_bone_rename(ptr noundef %94, ptr noundef %2, ptr noundef nonnull %6) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %89) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  br label %120

95:                                               ; preds = %16
  %96 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %97 = load ptr, ptr %96, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  %98 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %9, ptr noundef %8, ptr noundef %17, i32 noundef 1, i8 noundef zeroext 1) #6
  %99 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !130
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.Base, ptr %100, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !131
  br label %105

105:                                              ; preds = %95, %102
  %106 = phi ptr [ %104, %102 ], [ null, %95 ]
  %107 = getelementptr inbounds %struct.bPoseChannel, ptr %97, i64 0, i32 4
  %108 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %107, i64 noundef 64) #6
  %109 = call ptr @BLI_strncpy(ptr noundef nonnull %107, ptr noundef %2, i64 noundef 64) #6
  %110 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 19
  %111 = load ptr, ptr %110, align 8, !tbaa !121
  call void @ED_armature_bone_rename(ptr noundef %111, ptr noundef %2, ptr noundef nonnull %7) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %106) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  br label %120

112:                                              ; preds = %16
  %113 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !103
  %115 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %116 = load ptr, ptr %115, align 8, !tbaa !113
  %117 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 18
  %118 = load ptr, ptr %117, align 8, !tbaa !184
  %119 = getelementptr inbounds %struct.bPose, ptr %118, i64 0, i32 9
  tail call void @BLI_uniquename(ptr noundef nonnull %119, ptr noundef %116, ptr noundef nonnull @.str.14, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %114) #6
  br label %120

120:                                              ; preds = %56, %76, %16, %47, %52, %88, %105, %112, %30, %46
  %121 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 2
  %122 = load i16, ptr %121, align 4, !tbaa !108
  %123 = and i16 %122, -5
  store i16 %123, ptr %121, align 4, !tbaa !108
  br label %124

124:                                              ; preds = %120, %3
  ret void
}

declare zeroext i8 @uiButActiveOnly(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @outliner_find_tse(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @test_idbutton(ptr noundef) local_unnamed_addr #2

declare void @BKE_library_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @defgroup_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_bone_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !37, i64 120}
!35 = !{!"Group", !36, i64 0, !42, i64 120, !41, i64 136, !38, i64 140}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!44, !37, i64 16}
!44 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 34}
!45 = !{!46, !38, i64 1160}
!46 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !47, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !48, i64 616, !48, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !48, i64 1048, !48, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !48, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !48, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !49, i64 1304, !49, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!47 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!48 = !{!"float", !38, i64 0}
!49 = !{!"long", !38, i64 0}
!50 = !{!37, !37, i64 0}
!51 = !{!46, !37, i64 24}
!52 = !{!46, !40, i64 948}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !37, i64 176}
!57 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !58, i64 280, !67, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !37, i64 4608, !73, i64 4616, !37, i64 4640, !49, i64 4648, !49, i64 4656, !60, i64 4664, !61, i64 4824, !74, i64 4888, !37, i64 4952}
!58 = !{!"RenderData", !59, i64 0, !37, i64 248, !37, i64 256, !62, i64 264, !63, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !48, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !41, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !48, i64 660, !48, i64 664, !40, i64 668, !40, i64 670, !48, i64 672, !48, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !48, i64 2528, !48, i64 2532, !40, i64 2536, !40, i64 2538, !48, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !48, i64 2560, !48, i64 2564, !37, i64 2568, !41, i64 2576, !48, i64 2580, !38, i64 2584, !66, i64 2616, !41, i64 3976, !41, i64 3980}
!59 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !48, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !48, i64 136, !48, i64 140, !37, i64 144, !37, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!62 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!63 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !48, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!64 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!65 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!66 = !{!"BakeData", !59, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !48, i64 1280, !48, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!67 = !{!"AudioData", !41, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !48, i64 24, !48, i64 28}
!68 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!69 = !{!"GameData", !68, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !70, i64 40, !40, i64 64, !40, i64 66, !48, i64 68, !71, i64 72, !48, i64 128, !48, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!70 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !48, i64 8, !48, i64 12, !37, i64 16}
!71 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !41, i64 40, !48, i64 44, !48, i64 48, !40, i64 52, !40, i64 54}
!72 = !{!"UnitSettings", !48, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!73 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!74 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!75 = distinct !{!75, !54, !55}
!76 = !{!41, !41, i64 0}
!77 = !{!78, !40, i64 290}
!78 = !{!"SpaceOops", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !48, i64 36, !38, i64 40, !79, i64 56, !42, i64 216, !37, i64 232, !38, i64 240, !80, i64 272, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !37, i64 296}
!79 = !{!"View2D", !64, i64 0, !64, i64 16, !65, i64 32, !65, i64 48, !65, i64 64, !38, i64 80, !38, i64 88, !48, i64 96, !48, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!80 = !{!"TreeStoreElem", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8}
!81 = !{!82, !40, i64 8948}
!82 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !48, i64 8956, !48, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !48, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !83, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !48, i64 10904, !48, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !84, i64 10928}
!83 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!84 = !{!"WalkNavigation", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !38, i64 26}
!85 = !{!78, !40, i64 288}
!86 = !{!79, !40, i64 114}
!87 = !{!88, !48, i64 28}
!88 = !{!"ARegion", !37, i64 0, !37, i64 8, !79, i64 16, !65, i64 176, !65, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !48, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!89 = !{!88, !48, i64 40}
!90 = !{!88, !48, i64 36}
!91 = distinct !{!91, !54, !55}
!92 = distinct !{!92, !54, !55}
!93 = !{!79, !48, i64 24}
!94 = !{!79, !48, i64 8}
!95 = !{!79, !48, i64 28}
!96 = !{!88, !48, i64 44}
!97 = distinct !{!97, !54, !55}
!98 = !{!99, !37, i64 48}
!99 = !{!"TreeElement", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !41, i64 40, !41, i64 44, !37, i64 48, !40, i64 56, !40, i64 58, !40, i64 60, !40, i64 62, !37, i64 64, !37, i64 72, !100, i64 80}
!100 = !{!"PointerRNA", !101, i64 0, !37, i64 8, !37, i64 16}
!101 = !{!"", !37, i64 0}
!102 = !{!80, !40, i64 0}
!103 = !{!80, !37, i64 8}
!104 = !{!40, !40, i64 0}
!105 = !{!99, !41, i64 40}
!106 = !{!99, !41, i64 44}
!107 = !{!99, !37, i64 64}
!108 = !{!80, !40, i64 4}
!109 = !{!78, !40, i64 292}
!110 = !{!78, !40, i64 294}
!111 = distinct !{!111, !54, !55}
!112 = distinct !{!112, !54, !55}
!113 = !{!99, !37, i64 72}
!114 = !{!99, !40, i64 58}
!115 = distinct !{!115, !54, !55}
!116 = !{!99, !40, i64 60}
!117 = !{!35, !37, i64 24}
!118 = !{!80, !40, i64 2}
!119 = !{!120, !37, i64 120}
!120 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !48, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !48, i64 524, !48, i64 528, !48, i64 532, !37, i64 536}
!121 = !{!46, !37, i64 296}
!122 = distinct !{!122, !54, !55}
!123 = distinct !{!123, !54, !55}
!124 = distinct !{!124, !54, !55}
!125 = !{!42, !37, i64 0}
!126 = distinct !{!126, !54, !55}
!127 = !{!42, !37, i64 8}
!128 = !{!99, !37, i64 16}
!129 = !{!38, !38, i64 0}
!130 = !{!57, !37, i64 168}
!131 = !{!132, !37, i64 32}
!132 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!133 = !{!99, !40, i64 56}
!134 = !{!99, !37, i64 24}
!135 = !{!36, !37, i64 24}
!136 = !{!36, !40, i64 98}
!137 = !{!99, !40, i64 62}
!138 = distinct !{!138, !54, !55}
!139 = distinct !{!139, !54, !55}
!140 = !{!141, !37, i64 0}
!141 = !{!"DrawIconArg", !37, i64 0, !37, i64 8, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36}
!142 = !{!141, !37, i64 8}
!143 = !{!141, !48, i64 16}
!144 = !{!141, !48, i64 28}
!145 = !{!141, !48, i64 32}
!146 = !{!141, !48, i64 36}
!147 = !{!141, !48, i64 20}
!148 = !{!141, !48, i64 24}
!149 = !{!150, !41, i64 16}
!150 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!151 = !{!99, !37, i64 88}
!152 = !{!99, !37, i64 96}
!153 = !{!46, !40, i64 136}
!154 = !{!155, !40, i64 128}
!155 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !48, i64 212, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !48, i64 260, !48, i64 264, !48, i64 268, !48, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!156 = distinct !{!156, !54, !55}
!157 = distinct !{!157, !54, !55}
!158 = !{!82, !48, i64 10908}
!159 = !{!82, !41, i64 8524}
!160 = !{!161, !37, i64 136}
!161 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !41, i64 160, !41, i64 164, !37, i64 168, !42, i64 176, !42, i64 192, !42, i64 208, !42, i64 224, !42, i64 240}
!162 = !{!163, !40, i64 74}
!163 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !164, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!164 = !{!"double", !38, i64 0}
!165 = distinct !{!165, !54, !55}
!166 = !{!167, !41, i64 176}
!167 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !48, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!168 = !{!169, !41, i64 132}
!169 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !48, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !40, i64 180}
!170 = !{!171, !37, i64 160}
!171 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!172 = distinct !{!172, !54, !55}
!173 = !{!100, !37, i64 0}
!174 = !{!175, !40, i64 72}
!175 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !48, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !48, i64 104, !48, i64 108}
!176 = !{!175, !37, i64 16}
!177 = !{!175, !37, i64 80}
!178 = !{!175, !41, i64 76}
!179 = !{!57, !41, i64 680}
!180 = distinct !{!180, !54, !55}
!181 = !{!78, !37, i64 232}
!182 = !{!183, !37, i64 0}
!183 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!184 = !{!46, !37, i64 288}
