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
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @restrictbutton_gr_restrict_flag(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @group_restrict_flag(ptr noundef %1, i32 noundef %2) #9, !range !5
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.Group, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %5, label %35, label %9

9:                                                ; preds = %3
  br i1 %8, label %65, label %10

10:                                               ; preds = %9
  %11 = trunc i32 %2 to i8
  %12 = xor i8 %11, -1
  %13 = icmp eq i32 %2, 1
  br label %14

14:                                               ; preds = %10, %32
  %15 = phi ptr [ %7, %10 ], [ %33, %32 ]
  %16 = getelementptr inbounds %struct.GroupObject, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 102
  %23 = load i8, ptr %22, align 8, !tbaa !21
  %24 = and i8 %23, %12
  store i8 %24, ptr %22, align 8, !tbaa !21
  br i1 %13, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 53
  %27 = load i16, ptr %26, align 4, !tbaa !22
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef nonnull %17) #10
  tail call void @ED_base_object_select(ptr noundef %31, i16 noundef signext 0) #10
  br label %32

32:                                               ; preds = %21, %30, %25, %14
  %33 = load ptr, ptr %15, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %14, !llvm.loop !23

35:                                               ; preds = %3
  br i1 %8, label %65, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %38 = trunc i32 %2 to i8
  %39 = add i32 %2, -1
  %40 = icmp ult i32 %39, 2
  br label %41

41:                                               ; preds = %36, %62
  %42 = phi ptr [ %7, %36 ], [ %63, %62 ]
  %43 = getelementptr inbounds %struct.GroupObject, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load ptr, ptr %37, align 8, !tbaa !25
  %50 = icmp eq ptr %49, %44
  br i1 %50, label %62, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 102
  %53 = load i8, ptr %52, align 8, !tbaa !21
  %54 = or i8 %53, %38
  store i8 %54, ptr %52, align 8, !tbaa !21
  br i1 %40, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 53
  %57 = load i16, ptr %56, align 4, !tbaa !22
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %0, ptr noundef nonnull %44) #10
  tail call void @ED_base_object_select(ptr noundef %61, i16 noundef signext 0) #10
  br label %62

62:                                               ; preds = %48, %55, %60, %51, %41
  %63 = load ptr, ptr %42, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %41, !llvm.loop !44

65:                                               ; preds = %32, %62, %9, %35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @group_restrict_flag(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.GroupObject, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 102
  %10 = load i8, ptr %9, align 8, !tbaa !21
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, %1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %6, %2
  br label %15

15:                                               ; preds = %6, %14
  %16 = phi i32 [ 1, %14 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_outliner(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %10 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8, !tbaa !6
  tail call void @outliner_build_tree(ptr noundef %6, ptr noundef %7, ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %10, i64 0, i32 7
  call fastcc void @outliner_height(ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %2) #9
  %12 = getelementptr inbounds %struct.SpaceOops, ptr %10, i64 0, i32 12
  %13 = load i16, ptr %12, align 2, !tbaa !48
  %14 = add i16 %13, -11
  %15 = icmp ult i16 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  call fastcc void @outliner_rna_width(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %4, i32 noundef 0) #9
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, 15
  %20 = load i32, ptr %4, align 4, !tbaa !47
  %21 = sitofp i32 %20 to float
  %22 = sitofp i16 %17 to float
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 2.500000e+00, float %21)
  %24 = fptosi float %23 to i32
  %25 = tail call fastcc i32 @max_ii(i32 noundef %19, i32 noundef %24) #9
  %26 = sitofp i32 %25 to float
  %27 = tail call float @llvm.fmuladd.f32(float %22, float 7.500000e+00, float %26)
  %28 = fadd float %27, 5.000000e+01
  %29 = fptosi float %28 to i32
  br label %43

30:                                               ; preds = %1
  call fastcc void @outliner_rna_width(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %3, i32 noundef 0) #9
  %31 = getelementptr inbounds %struct.SpaceOops, ptr %10, i64 0, i32 11
  %32 = load i16, ptr %31, align 8, !tbaa !56
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  %35 = load i32, ptr %3, align 4, !tbaa !47
  br i1 %34, label %36, label %43

36:                                               ; preds = %30
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %38 = sitofp i16 %37 to float
  %39 = fmul float %38, 3.000000e+00
  %40 = sitofp i32 %35 to float
  %41 = tail call float @llvm.fmuladd.f32(float %39, float 3.000000e+00, float %40)
  %42 = fptosi float %41 to i32
  br label %43

43:                                               ; preds = %30, %36, %16
  %44 = phi i32 [ 0, %30 ], [ 0, %36 ], [ %25, %16 ]
  %45 = phi i32 [ %35, %30 ], [ %42, %36 ], [ %29, %16 ]
  %46 = load i32, ptr %2, align 4, !tbaa !47
  %47 = add nsw i32 %46, 2
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %9, i32 noundef %45, i32 noundef %47) #10
  %48 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %49 = load i16, ptr %48, align 2, !tbaa !57
  %50 = or i16 %49, 12
  store i16 %50, ptr %48, align 2, !tbaa !57
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %9) #10
  tail call fastcc void @outliner_back(ptr noundef %8) #9
  %51 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @__func__.draw_outliner, i16 noundef signext 0) #10
  call fastcc void @outliner_draw_tree(ptr noundef %0, ptr noundef %51, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %10, ptr noundef nonnull %5) #9
  %52 = load i16, ptr %12, align 2, !tbaa !48
  %53 = add i16 %52, -11
  %54 = icmp ult i16 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  tail call fastcc void @outliner_draw_rnacols(ptr noundef nonnull %8, i32 noundef %44) #9
  tail call fastcc void @outliner_draw_rnabuts(ptr noundef %51, ptr noundef nonnull %8, ptr noundef nonnull %10, i32 noundef %44, ptr noundef nonnull %11) #9
  br label %62

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.SpaceOops, ptr %10, i64 0, i32 11
  %58 = load i16, ptr %57, align 8, !tbaa !56
  %59 = and i16 %58, 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call fastcc void @outliner_draw_restrictcols(ptr noundef nonnull %8) #9
  tail call fastcc void @outliner_draw_restrictbuts(ptr noundef %51, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11) #9
  br label %62

62:                                               ; preds = %56, %61, %55
  %63 = load ptr, ptr %5, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call fastcc void @outliner_buttons(ptr noundef %0, ptr noundef %51, ptr noundef nonnull %8, ptr noundef nonnull %63) #9
  br label %66

66:                                               ; preds = %65, %62
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %51) #10
  tail call void @uiDrawBlock(ptr noundef %0, ptr noundef %51) #10
  %67 = getelementptr inbounds %struct.SpaceOops, ptr %10, i64 0, i32 13
  %68 = load i16, ptr %67, align 4, !tbaa !58
  %69 = and i16 %68, -3
  store i16 %69, ptr %67, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @outliner_build_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_height(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %8

8:                                                ; preds = %6, %26
  %9 = phi ptr [ %4, %6 ], [ %31, %26 ]
  %10 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 4, !tbaa !63
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %8
  %18 = load i16, ptr %7, align 2, !tbaa !64
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  %21 = and i32 %14, 8
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %22, %20
  br i1 %23, label %26, label %24

24:                                               ; preds = %17, %8
  %25 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  tail call fastcc void @outliner_height(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %2) #9
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %28 = sext i16 %27 to i32
  %29 = load i32, ptr %2, align 4, !tbaa !47
  %30 = add nsw i32 %29, %28
  store i32 %30, ptr %2, align 4, !tbaa !47
  %31 = load ptr, ptr %9, align 8, !tbaa !6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !65

33:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_rna_width(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %3, 100
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %2, align 4, !tbaa !47
  br label %11

11:                                               ; preds = %7, %38
  %12 = phi i32 [ %10, %7 ], [ %39, %38 ]
  %13 = phi ptr [ %5, %7 ], [ %40, %38 ]
  %14 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = icmp sgt i32 %8, %12
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 %8, ptr %2, align 4, !tbaa !47
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ %8, %17 ], [ %12, %11 ]
  %20 = getelementptr inbounds %struct.TreeStoreElem, ptr %15, i64 0, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !63
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load i16, ptr %9, align 2, !tbaa !64
  %27 = and i16 %26, 4
  %28 = icmp eq i16 %27, 0
  %29 = and i32 %22, 8
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %30, %28
  br i1 %31, label %38, label %32

32:                                               ; preds = %25, %18
  %33 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, %3
  tail call fastcc void @outliner_rna_width(ptr noundef %0, ptr noundef nonnull %33, ptr noundef nonnull %2, i32 noundef %36) #9
  %37 = load i32, ptr %2, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %32, %25
  %39 = phi i32 [ %37, %32 ], [ %19, %25 ]
  %40 = load ptr, ptr %13, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %11, !llvm.loop !66

42:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_back(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 6) #10
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !67
  %4 = fptosi float %3 to i32
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %6 = sext i16 %5 to i32
  %7 = freeze i32 %4
  %8 = srem i32 %7, %6
  %9 = sub nsw i32 %7, %8
  %10 = add i32 %9, -2
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 2
  %12 = shl nsw i32 %6, 1
  %13 = add nsw i32 %12, %10
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %11, align 8, !tbaa !69
  %16 = fcmp olt float %15, %14
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i32 [ %6, %17 ], [ %26, %19 ]
  %21 = phi i32 [ %10, %17 ], [ %28, %19 ]
  %22 = load float, ptr %18, align 4, !tbaa !70
  %23 = fptosi float %22 to i32
  %24 = add nsw i32 %20, %21
  tail call void @glRecti(i32 noundef 0, i32 noundef %21, i32 noundef %23, i32 noundef %24) #10
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %26 = sext i16 %25 to i32
  %27 = shl nsw i32 %26, 1
  %28 = sub nsw i32 %21, %27
  %29 = sitofp i32 %21 to float
  %30 = load float, ptr %11, align 8, !tbaa !69
  %31 = fcmp olt float %30, %29
  br i1 %31, label %19, label %32, !llvm.loop !71

32:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #10
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 12
  %10 = load i16, ptr %9, align 2, !tbaa !48
  %11 = add i16 %10, -11
  %12 = icmp ult i16 %11, 2
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef -200) #10
  %14 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 0, i32 3
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = fptosi float %15 to i32
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %18 = sext i16 %17 to i32
  %19 = add i32 %16, -2
  %20 = sub i32 %19, %18
  store i32 %20, ptr %7, align 4, !tbaa !47
  %21 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  call fastcc void @outliner_draw_struct_marks(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %21, ptr noundef nonnull %7) #9
  br label %22

22:                                               ; preds = %6, %13
  call void @UI_GetThemeColor3fv(i32 noundef 163, ptr noundef nonnull %8) #10
  call void @glColor3fv(ptr noundef nonnull %8) #10
  %23 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !67
  %25 = fptosi float %24 to i32
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %27 = sext i16 %26 to i32
  %28 = add i32 %25, -2
  %29 = sub i32 %28, %27
  store i32 %29, ptr %7, align 4, !tbaa !47
  %30 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  call fastcc void @outliner_draw_selection(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %30, ptr noundef nonnull %7) #9
  call void @UI_ThemeColorBlend(i32 noundef 2, i32 noundef 3, float noundef 0x3FD99999A0000000) #10
  %31 = load float, ptr %23, align 4, !tbaa !67
  %32 = fptosi float %31 to i32
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %34 = sdiv i16 %33, -2
  %35 = sext i16 %34 to i32
  %36 = add i32 %32, -2
  %37 = add i32 %36, %35
  store i32 %37, ptr %7, align 4, !tbaa !47
  call fastcc void @outliner_draw_hierarchy(ptr noundef nonnull %4, ptr noundef nonnull %30, i32 noundef 6, ptr noundef nonnull %7) #9
  %38 = load float, ptr %23, align 4, !tbaa !67
  %39 = fptosi float %38 to i32
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %41 = sext i16 %40 to i32
  %42 = add i32 %39, -2
  %43 = sub i32 %42, %41
  store i32 %43, ptr %7, align 4, !tbaa !47
  %44 = load ptr, ptr %30, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %22, %46
  %47 = phi ptr [ %48, %46 ], [ %44, %22 ]
  call fastcc void @outliner_draw_tree_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %47, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %5) #9
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %46, !llvm.loop !72

50:                                               ; preds = %46, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_rnacols(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !74
  %7 = fcmp olt float %4, %6
  %8 = select i1 %7, float %6, float %4
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef -200) #10
  %9 = sitofp i32 %1 to float
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !75
  tail call void @fdrawline(float noundef %9, float noundef %11, float noundef %9, float noundef %8) #10
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %13 = sitofp i16 %12 to float
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 7.500000e+00, float %9)
  %15 = load float, ptr %10, align 4, !tbaa !75
  tail call void @fdrawline(float noundef %14, float noundef %15, float noundef %14, float noundef %8) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_rnabuts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  tail call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 3) #10
  %6 = load ptr, ptr %4, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %103, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  br label %12

12:                                               ; preds = %8, %100
  %13 = phi ptr [ %6, %8 ], [ %101, %100 ]
  %14 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !76
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %19 = sext i16 %18 to i32
  %20 = shl nsw i32 %19, 1
  %21 = add nsw i32 %20, %17
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr %9, align 8, !tbaa !69
  %24 = fcmp ugt float %23, %22
  br i1 %24, label %85, label %25

25:                                               ; preds = %12
  %26 = sitofp i32 %17 to float
  %27 = load float, ptr %10, align 4, !tbaa !77
  %28 = fcmp ult float %27, %26
  br i1 %28, label %85, label %29

29:                                               ; preds = %25
  %30 = load i16, ptr %15, align 8, !tbaa !78
  switch i16 %30, label %85 [
    i16 31, label %31
    i16 32, label %73
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 13
  %33 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = getelementptr inbounds %struct.TreeStoreElem, ptr %15, i64 0, i32 2
  %36 = load i16, ptr %35, align 4, !tbaa !63
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %85, label %40

40:                                               ; preds = %31
  %41 = load i16, ptr %11, align 2, !tbaa !64
  %42 = and i16 %41, 4
  %43 = icmp eq i16 %42, 0
  %44 = and i32 %37, 8
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %45, %43
  br i1 %46, label %47, label %85

47:                                               ; preds = %40
  %48 = tail call i32 @RNA_property_type(ptr noundef %34) #10
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, ptr %16, align 4, !tbaa !76
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %53 = sext i16 %52 to i32
  %54 = sitofp i16 %52 to float
  %55 = fmul float %54, 7.500000e+00
  %56 = fptosi float %55 to i32
  %57 = add nsw i32 %53, -1
  %58 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %34, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %3, i32 noundef %51, i32 noundef %56, i32 noundef %57) #10
  tail call void @uiButSetFlag(ptr noundef %58, i32 noundef 2048) #10
  br label %85

59:                                               ; preds = %47
  %60 = tail call i32 @RNA_property_type(ptr noundef %34) #10
  %61 = icmp eq i32 %60, 4
  %62 = load i32, ptr %16, align 4, !tbaa !76
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %64 = sext i16 %63 to i32
  %65 = sitofp i16 %63 to float
  %66 = fmul float %65, 7.500000e+00
  %67 = fptosi float %66 to i32
  %68 = add nsw i32 %64, -1
  br i1 %61, label %69, label %71

69:                                               ; preds = %59
  %70 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %34, i32 noundef -1, ptr noundef null, i32 noundef 0, i32 noundef %3, i32 noundef %62, i32 noundef %67, i32 noundef %68) #10
  br label %85

71:                                               ; preds = %59
  %72 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %34, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %3, i32 noundef %62, i32 noundef %67, i32 noundef %68) #10
  br label %85

73:                                               ; preds = %29
  %74 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 13
  %75 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !79
  %77 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 8
  %78 = load i16, ptr %77, align 2, !tbaa !80
  %79 = sext i16 %78 to i32
  %80 = sitofp i16 %18 to float
  %81 = fmul float %80, 7.500000e+00
  %82 = fptosi float %81 to i32
  %83 = add nsw i32 %19, -1
  %84 = tail call ptr @uiDefAutoButR(ptr noundef %0, ptr noundef nonnull %74, ptr noundef %76, i32 noundef %79, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %3, i32 noundef %17, i32 noundef %82, i32 noundef %83) #10
  br label %85

85:                                               ; preds = %29, %40, %50, %71, %69, %31, %73, %25, %12
  %86 = getelementptr inbounds %struct.TreeStoreElem, ptr %15, i64 0, i32 2
  %87 = load i16, ptr %86, align 4, !tbaa !63
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %85
  %92 = load i16, ptr %11, align 2, !tbaa !64
  %93 = and i16 %92, 4
  %94 = icmp eq i16 %93, 0
  %95 = and i32 %88, 8
  %96 = icmp eq i32 %95, 0
  %97 = or i1 %96, %94
  br i1 %97, label %100, label %98

98:                                               ; preds = %91, %85
  %99 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  tail call fastcc void @outliner_draw_rnabuts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %99) #9
  br label %100

100:                                              ; preds = %91, %98
  %101 = load ptr, ptr %13, align 8, !tbaa !6
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %12, !llvm.loop !81

103:                                              ; preds = %100, %5
  tail call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_restrictcols(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @UI_ThemeColor(i32 noundef 2) #10
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !70
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %5 = sitofp i16 %4 to float
  %6 = fneg float %5
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 3.000000e+00, float %3)
  %8 = fptosi float %7 to i32
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !69
  %11 = fadd float %10, -1.000000e+00
  %12 = fptosi float %11 to i32
  %13 = fptosi float %3 to i32
  %14 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 3
  %15 = load float, ptr %14, align 4, !tbaa !77
  %16 = fptosi float %15 to i32
  tail call void @glRecti(i32 noundef %8, i32 noundef %12, i32 noundef %13, i32 noundef %16) #10
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 6) #10
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !67
  %19 = fptosi float %18 to i32
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %21 = sext i16 %20 to i32
  %22 = freeze i32 %19
  %23 = srem i32 %22, %21
  %24 = sub nsw i32 %22, %23
  %25 = add i32 %24, -2
  %26 = shl nsw i32 %21, 1
  %27 = add nsw i32 %26, %25
  %28 = sitofp i32 %27 to float
  %29 = load float, ptr %9, align 8, !tbaa !69
  %30 = fcmp olt float %29, %28
  br i1 %30, label %31, label %50

31:                                               ; preds = %1, %31
  %32 = phi i32 [ %44, %31 ], [ %21, %1 ]
  %33 = phi i16 [ %43, %31 ], [ %20, %1 ]
  %34 = phi i32 [ %46, %31 ], [ %25, %1 ]
  %35 = load float, ptr %2, align 4, !tbaa !70
  %36 = fptosi float %35 to i32
  %37 = sitofp i32 %36 to float
  %38 = sitofp i16 %33 to float
  %39 = fneg float %38
  %40 = tail call float @llvm.fmuladd.f32(float %39, float 3.000000e+00, float %37)
  %41 = fptosi float %40 to i32
  %42 = add nsw i32 %32, %34
  tail call void @glRecti(i32 noundef %41, i32 noundef %34, i32 noundef %36, i32 noundef %42) #10
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %44 = sext i16 %43 to i32
  %45 = shl nsw i32 %44, 1
  %46 = sub nsw i32 %34, %45
  %47 = sitofp i32 %34 to float
  %48 = load float, ptr %9, align 8, !tbaa !69
  %49 = fcmp olt float %48, %47
  br i1 %49, label %31, label %50, !llvm.loop !82

50:                                               ; preds = %31, %1
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef -200) #10
  %51 = load float, ptr %2, align 4, !tbaa !70
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %53 = sitofp i16 %52 to float
  %54 = fneg float %53
  %55 = tail call float @llvm.fmuladd.f32(float %54, float 3.000000e+00, float %51)
  %56 = fptosi float %55 to i32
  %57 = load float, ptr %14, align 4, !tbaa !77
  %58 = fptosi float %57 to i32
  %59 = load float, ptr %9, align 8, !tbaa !69
  %60 = fptosi float %59 to i32
  tail call void @sdrawline(i32 noundef %56, i32 noundef %58, i32 noundef %56, i32 noundef %60) #10
  %61 = load float, ptr %2, align 4, !tbaa !70
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %63 = sitofp i16 %62 to float
  %64 = fneg float %63
  %65 = tail call float @llvm.fmuladd.f32(float %64, float 2.000000e+00, float %61)
  %66 = fptosi float %65 to i32
  %67 = load float, ptr %14, align 4, !tbaa !77
  %68 = fptosi float %67 to i32
  %69 = load float, ptr %9, align 8, !tbaa !69
  %70 = fptosi float %69 to i32
  tail call void @sdrawline(i32 noundef %66, i32 noundef %68, i32 noundef %66, i32 noundef %70) #10
  %71 = load float, ptr %2, align 4, !tbaa !70
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %73 = sitofp i16 %72 to float
  %74 = fsub float %71, %73
  %75 = fptosi float %74 to i32
  %76 = load float, ptr %14, align 4, !tbaa !77
  %77 = fptosi float %76 to i32
  %78 = load float, ptr %9, align 8, !tbaa !69
  %79 = fptosi float %78 to i32
  tail call void @sdrawline(i32 noundef %75, i32 noundef %77, i32 noundef %75, i32 noundef %79) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_restrictbuts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = tail call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_Object, ptr noundef nonnull @.str.1) #10
  %8 = tail call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_Object, ptr noundef nonnull @.str.2) #10
  %9 = tail call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_Object, ptr noundef nonnull @.str.3) #10
  %10 = load ptr, ptr %4, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %247, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %15 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 14
  br label %17

17:                                               ; preds = %12, %244
  %18 = phi ptr [ %10, %12 ], [ %245, %244 ]
  %19 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !76
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %24 = sext i16 %23 to i32
  %25 = shl nsw i32 %24, 1
  %26 = add nsw i32 %25, %22
  %27 = sitofp i32 %26 to float
  %28 = load float, ptr %13, align 8, !tbaa !69
  %29 = fcmp ugt float %28, %27
  br i1 %29, label %229, label %30

30:                                               ; preds = %17
  %31 = sitofp i32 %22 to float
  %32 = load float, ptr %14, align 4, !tbaa !77
  %33 = fcmp ult float %32, %31
  br i1 %33, label %229, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %20, align 8, !tbaa !78
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %113

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 9
  %39 = load i16, ptr %38, align 4, !tbaa !83
  %40 = icmp eq i16 %39, 16975
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %42 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  call void @RNA_pointer_create(ptr noundef %43, ptr noundef nonnull @RNA_Object, ptr noundef %43, ptr noundef nonnull %6) #10
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #10
  %44 = load float, ptr %15, align 4, !tbaa !70
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %46 = sitofp i16 %45 to float
  %47 = fneg float %46
  %48 = call float @llvm.fmuladd.f32(float %47, float 3.000000e+00, float %44)
  %49 = fptosi float %48 to i32
  %50 = load i32, ptr %21, align 4, !tbaa !76
  %51 = call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef 253, i32 noundef %49, i32 noundef %50, i16 noundef signext %45, i16 noundef signext %45, ptr noundef nonnull %6, ptr noundef %7, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.4) #10
  call void @uiButSetFunc(ptr noundef %51, ptr noundef nonnull @restrictbutton_view_cb, ptr noundef %1, ptr noundef %43) #10
  call void @uiButSetFlag(ptr noundef %51, i32 noundef 1024) #10
  %52 = load float, ptr %15, align 4, !tbaa !70
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %54 = sitofp i16 %53 to float
  %55 = fneg float %54
  %56 = call float @llvm.fmuladd.f32(float %55, float 2.000000e+00, float %52)
  %57 = fptosi float %56 to i32
  %58 = load i32, ptr %21, align 4, !tbaa !76
  %59 = call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef 255, i32 noundef %57, i32 noundef %58, i16 noundef signext %53, i16 noundef signext %53, ptr noundef nonnull %6, ptr noundef %8, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.5) #10
  call void @uiButSetFunc(ptr noundef %59, ptr noundef nonnull @restrictbutton_sel_cb, ptr noundef %1, ptr noundef %43) #10
  call void @uiButSetFlag(ptr noundef %59, i32 noundef 1024) #10
  %60 = load float, ptr %15, align 4, !tbaa !70
  %61 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %62 = sitofp i16 %61 to float
  %63 = fsub float %60, %62
  %64 = fptosi float %63 to i32
  %65 = load i32, ptr %21, align 4, !tbaa !76
  %66 = call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef 257, i32 noundef %64, i32 noundef %65, i16 noundef signext %61, i16 noundef signext %61, ptr noundef nonnull %6, ptr noundef %9, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.6) #10
  call void @uiButSetFunc(ptr noundef %66, ptr noundef nonnull @restrictbutton_rend_cb, ptr noundef %1, ptr noundef %43) #10
  call void @uiButSetFlag(ptr noundef %66, i32 noundef 1024) #10
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  %67 = load i16, ptr %20, align 8, !tbaa !78
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %41
  %70 = load i16, ptr %38, align 4, !tbaa !83
  br label %71

71:                                               ; preds = %37, %69
  %72 = phi i16 [ %70, %69 ], [ %39, %37 ]
  %73 = icmp eq i16 %72, 21063
  br i1 %73, label %74, label %229

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !84
  %77 = getelementptr inbounds %struct.ID, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !85
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, i32 1024, i32 3072
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #10
  %81 = call fastcc i32 @group_restrict_flag(ptr noundef %76, i32 noundef 1) #9, !range !5
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 253, i32 254
  %84 = load float, ptr %15, align 4, !tbaa !70
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %86 = sitofp i16 %85 to float
  %87 = fneg float %86
  %88 = call float @llvm.fmuladd.f32(float %87, float 3.000000e+00, float %84)
  %89 = fptosi float %88 to i32
  %90 = load i32, ptr %21, align 4, !tbaa !76
  %91 = call ptr @uiDefIconBut(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %83, i32 noundef %89, i32 noundef %90, i16 noundef signext %85, i16 noundef signext %85, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #10
  call void @uiButSetFunc(ptr noundef %91, ptr noundef nonnull @restrictbutton_gr_restrict_view, ptr noundef %1, ptr noundef %76) #10
  call void @uiButSetFlag(ptr noundef %91, i32 noundef %80) #10
  %92 = call fastcc i32 @group_restrict_flag(ptr noundef %76, i32 noundef 2) #9, !range !5
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 255, i32 256
  %95 = load float, ptr %15, align 4, !tbaa !70
  %96 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %97 = sitofp i16 %96 to float
  %98 = fneg float %97
  %99 = call float @llvm.fmuladd.f32(float %98, float 2.000000e+00, float %95)
  %100 = fptosi float %99 to i32
  %101 = load i32, ptr %21, align 4, !tbaa !76
  %102 = call ptr @uiDefIconBut(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %94, i32 noundef %100, i32 noundef %101, i16 noundef signext %96, i16 noundef signext %96, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #10
  call void @uiButSetFunc(ptr noundef %102, ptr noundef nonnull @restrictbutton_gr_restrict_select, ptr noundef %1, ptr noundef %76) #10
  call void @uiButSetFlag(ptr noundef %102, i32 noundef %80) #10
  %103 = call fastcc i32 @group_restrict_flag(ptr noundef %76, i32 noundef 4) #9, !range !5
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 257, i32 258
  %106 = load float, ptr %15, align 4, !tbaa !70
  %107 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %108 = sitofp i16 %107 to float
  %109 = fsub float %106, %108
  %110 = fptosi float %109 to i32
  %111 = load i32, ptr %21, align 4, !tbaa !76
  %112 = call ptr @uiDefIconBut(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %105, i32 noundef %110, i32 noundef %111, i16 noundef signext %107, i16 noundef signext %107, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #10
  call void @uiButSetFunc(ptr noundef %112, ptr noundef nonnull @restrictbutton_gr_restrict_render, ptr noundef %1, ptr noundef %76) #10
  call void @uiButSetFlag(ptr noundef %112, i32 noundef %80) #10
  br label %228

113:                                              ; preds = %34, %41
  %114 = phi i16 [ %67, %41 ], [ %35, %34 ]
  switch i16 %114, label %229 [
    i16 20, label %115
    i16 21, label %128
    i16 10, label %160
    i16 14, label %181
    i16 6, label %208
  ]

115:                                              ; preds = %113
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #10
  %116 = load float, ptr %15, align 4, !tbaa !70
  %117 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %118 = sitofp i16 %117 to float
  %119 = fneg float %118
  %120 = call float @llvm.fmuladd.f32(float %119, float 3.000000e+00, float %116)
  %121 = fptosi float %120 to i32
  %122 = load i32, ptr %21, align 4, !tbaa !76
  %123 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !79
  %125 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 17408, i32 noundef 131072, i32 noundef 0, i32 noundef 38, i32 noundef %121, i32 noundef %122, i16 noundef signext %117, i16 noundef signext %117, ptr noundef %124, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.10) #10
  %126 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !84
  call void @uiButSetFunc(ptr noundef %125, ptr noundef nonnull @restrictbutton_r_lay_cb, ptr noundef %127, ptr noundef null) #10
  call void @uiButSetFlag(ptr noundef %125, i32 noundef 1024) #10
  br label %228

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !79
  %131 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 1
  %132 = load i16, ptr %131, align 2, !tbaa !86
  %133 = zext nneg i16 %132 to i32
  %134 = shl nuw i32 1, %133
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #10
  %135 = load float, ptr %15, align 4, !tbaa !70
  %136 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %137 = sitofp i16 %136 to float
  %138 = fneg float %137
  %139 = call float @llvm.fmuladd.f32(float %138, float 3.000000e+00, float %135)
  %140 = fptosi float %139 to i32
  %141 = load i32, ptr %21, align 4, !tbaa !76
  %142 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef %134, i32 noundef 0, i32 noundef 38, i32 noundef %140, i32 noundef %141, i16 noundef signext %136, i16 noundef signext %136, ptr noundef %130, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.11) #10
  %143 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !84
  call void @uiButSetFunc(ptr noundef %142, ptr noundef nonnull @restrictbutton_r_lay_cb, ptr noundef %144, ptr noundef null) #10
  call void @uiButSetFlag(ptr noundef %142, i32 noundef 1024) #10
  switch i16 %132, label %228 [
    i16 17, label %145
    i16 16, label %145
    i16 13, label %145
    i16 10, label %145
    i16 7, label %145
    i16 6, label %145
    i16 5, label %145
    i16 4, label %145
  ]

145:                                              ; preds = %128, %128, %128, %128, %128, %128, %128, %128
  %146 = getelementptr inbounds i32, ptr %130, i64 1
  %147 = load i32, ptr %146, align 4, !tbaa !47
  %148 = and i32 %147, %134
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 77, i32 17
  %151 = load float, ptr %15, align 4, !tbaa !70
  %152 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %153 = sitofp i16 %152 to float
  %154 = fneg float %153
  %155 = call float @llvm.fmuladd.f32(float %154, float 2.000000e+00, float %151)
  %156 = fptosi float %155 to i32
  %157 = load i32, ptr %21, align 4, !tbaa !76
  %158 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 1536, i32 noundef %134, i32 noundef 0, i32 noundef %150, i32 noundef %156, i32 noundef %157, i16 noundef signext %152, i16 noundef signext %152, ptr noundef nonnull %146, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.12) #10
  %159 = load ptr, ptr %143, align 8, !tbaa !84
  call void @uiButSetFunc(ptr noundef %158, ptr noundef nonnull @restrictbutton_r_lay_cb, ptr noundef %159, ptr noundef null) #10
  call void @uiButSetFlag(ptr noundef %158, i32 noundef 1024) #10
  br label %228

160:                                              ; preds = %113
  %161 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 12
  %162 = load ptr, ptr %161, align 8, !tbaa !79
  %163 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !84
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #10
  %165 = load float, ptr %15, align 4, !tbaa !70
  %166 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %167 = sitofp i16 %166 to float
  %168 = fneg float %167
  %169 = call float @llvm.fmuladd.f32(float %168, float 3.000000e+00, float %165)
  %170 = fptosi float %169 to i32
  %171 = load i32, ptr %21, align 4, !tbaa !76
  %172 = getelementptr inbounds %struct.ModifierData, ptr %162, i64 0, i32 3
  %173 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 17408, i32 noundef 1, i32 noundef 0, i32 noundef 253, i32 noundef %170, i32 noundef %171, i16 noundef signext %166, i16 noundef signext %166, ptr noundef nonnull %172, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #10
  call void @uiButSetFunc(ptr noundef %173, ptr noundef nonnull @restrictbutton_modifier_cb, ptr noundef %1, ptr noundef %164) #10
  call void @uiButSetFlag(ptr noundef %173, i32 noundef 1024) #10
  %174 = load float, ptr %15, align 4, !tbaa !70
  %175 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %176 = sitofp i16 %175 to float
  %177 = fsub float %174, %176
  %178 = fptosi float %177 to i32
  %179 = load i32, ptr %21, align 4, !tbaa !76
  %180 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 17408, i32 noundef 2, i32 noundef 0, i32 noundef 257, i32 noundef %178, i32 noundef %179, i16 noundef signext %175, i16 noundef signext %175, ptr noundef nonnull %172, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #10
  call void @uiButSetFunc(ptr noundef %180, ptr noundef nonnull @restrictbutton_modifier_cb, ptr noundef %1, ptr noundef %164) #10
  call void @uiButSetFlag(ptr noundef %180, i32 noundef 1024) #10
  br label %228

181:                                              ; preds = %113
  %182 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 12
  %183 = load ptr, ptr %182, align 8, !tbaa !79
  %184 = getelementptr inbounds %struct.bPoseChannel, ptr %183, i64 0, i32 12
  %185 = load ptr, ptr %184, align 8, !tbaa !87
  %186 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !84
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #10
  %188 = load float, ptr %15, align 4, !tbaa !70
  %189 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %190 = sitofp i16 %189 to float
  %191 = fneg float %190
  %192 = call float @llvm.fmuladd.f32(float %191, float 3.000000e+00, float %188)
  %193 = fptosi float %192 to i32
  %194 = load i32, ptr %21, align 4, !tbaa !76
  %195 = getelementptr inbounds %struct.Bone, ptr %185, i64 0, i32 10
  %196 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 64, i32 noundef 0, i32 noundef 253, i32 noundef %193, i32 noundef %194, i16 noundef signext %189, i16 noundef signext %189, ptr noundef nonnull %195, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #10
  %197 = getelementptr inbounds %struct.Object, ptr %187, i64 0, i32 19
  %198 = load ptr, ptr %197, align 8, !tbaa !89
  call void @uiButSetFunc(ptr noundef %196, ptr noundef nonnull @restrictbutton_bone_visibility_cb, ptr noundef %198, ptr noundef %185) #10
  call void @uiButSetFlag(ptr noundef %196, i32 noundef 1024) #10
  %199 = load float, ptr %15, align 4, !tbaa !70
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %201 = sitofp i16 %200 to float
  %202 = fneg float %201
  %203 = call float @llvm.fmuladd.f32(float %202, float 2.000000e+00, float %199)
  %204 = fptosi float %203 to i32
  %205 = load i32, ptr %21, align 4, !tbaa !76
  %206 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 2097152, i32 noundef 0, i32 noundef 255, i32 noundef %204, i32 noundef %205, i16 noundef signext %200, i16 noundef signext %200, ptr noundef nonnull %195, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #10
  %207 = load ptr, ptr %197, align 8, !tbaa !89
  call void @uiButSetFunc(ptr noundef %206, ptr noundef nonnull @restrictbutton_bone_select_cb, ptr noundef %207, ptr noundef %185) #10
  call void @uiButSetFlag(ptr noundef %206, i32 noundef 1024) #10
  br label %228

208:                                              ; preds = %113
  %209 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 12
  %210 = load ptr, ptr %209, align 8, !tbaa !79
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 1) #10
  %211 = load float, ptr %15, align 4, !tbaa !70
  %212 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %213 = sitofp i16 %212 to float
  %214 = fneg float %213
  %215 = call float @llvm.fmuladd.f32(float %214, float 3.000000e+00, float %211)
  %216 = fptosi float %215 to i32
  %217 = load i32, ptr %21, align 4, !tbaa !76
  %218 = getelementptr inbounds %struct.EditBone, ptr %210, i64 0, i32 9
  %219 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 1024, i32 noundef 0, i32 noundef 253, i32 noundef %216, i32 noundef %217, i16 noundef signext %212, i16 noundef signext %212, ptr noundef nonnull %218, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #10
  call void @uiButSetFunc(ptr noundef %219, ptr noundef nonnull @restrictbutton_ebone_visibility_cb, ptr noundef null, ptr noundef %210) #10
  call void @uiButSetFlag(ptr noundef %219, i32 noundef 1024) #10
  %220 = load float, ptr %15, align 4, !tbaa !70
  %221 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %222 = sitofp i16 %221 to float
  %223 = fneg float %222
  %224 = call float @llvm.fmuladd.f32(float %223, float 2.000000e+00, float %220)
  %225 = fptosi float %224 to i32
  %226 = load i32, ptr %21, align 4, !tbaa !76
  %227 = call ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef 6656, i32 noundef 2097152, i32 noundef 0, i32 noundef 255, i32 noundef %225, i32 noundef %226, i16 noundef signext %221, i16 noundef signext %221, ptr noundef nonnull %218, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #10
  call void @uiButSetFunc(ptr noundef %227, ptr noundef nonnull @restrictbutton_ebone_select_cb, ptr noundef null, ptr noundef %210) #10
  call void @uiButSetFlag(ptr noundef %227, i32 noundef 1024) #10
  br label %228

228:                                              ; preds = %145, %128, %115, %160, %208, %181, %74
  call void @uiBlockSetEmboss(ptr noundef %0, i8 noundef zeroext 0) #10
  br label %229

229:                                              ; preds = %228, %71, %113, %30, %17
  %230 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 2
  %231 = load i16, ptr %230, align 4, !tbaa !63
  %232 = zext i16 %231 to i32
  %233 = and i32 %232, 1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %229
  %236 = load i16, ptr %16, align 2, !tbaa !64
  %237 = and i16 %236, 4
  %238 = icmp eq i16 %237, 0
  %239 = and i32 %232, 8
  %240 = icmp eq i32 %239, 0
  %241 = or i1 %240, %238
  br i1 %241, label %244, label %242

242:                                              ; preds = %235, %229
  %243 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 3
  call fastcc void @outliner_draw_restrictbuts(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %243) #9
  br label %244

244:                                              ; preds = %235, %242
  %245 = load ptr, ptr %18, align 8, !tbaa !6
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %17, !llvm.loop !90

247:                                              ; preds = %244, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_buttons(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load i16, ptr %6, align 8, !tbaa !78
  switch i16 %7, label %8 [
    i16 6, label %17
    i16 10, label %17
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !91
  %15 = icmp eq i16 %14, 18764
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %12, %4, %4, %16
  %18 = phi float [ 6.400000e+01, %16 ], [ 6.400000e+01, %4 ], [ 6.400000e+01, %4 ], [ 1.024000e+03, %12 ]
  %19 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !92
  %21 = sitofp i32 %20 to float
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %23 = sitofp i16 %22 to float
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0x3FFCCCCCC0000000, float %21)
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !70
  %28 = sitofp i32 %25 to float
  %29 = tail call float @llvm.fmuladd.f32(float %23, float 0x40099999A0000000, float %28)
  %30 = fsub float %27, %29
  %31 = fptosi float %30 to i32
  %32 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !76
  %34 = trunc i32 %31 to i16
  %35 = add i16 %22, -1
  %36 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = tail call ptr @uiDefBut(ptr noundef %1, i32 noundef 3072, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %25, i32 noundef %33, i16 noundef signext %34, i16 noundef signext %35, ptr noundef %37, float noundef 1.000000e+00, float noundef %18, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #10
  tail call void @uiButSetRenameFunc(ptr noundef %38, ptr noundef nonnull @namebutton_cb, ptr noundef nonnull %6) #10
  %39 = tail call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %38) #10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.TreeStoreElem, ptr %6, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !63
  %44 = and i16 %43, -5
  store i16 %44, ptr %42, align 4, !tbaa !63
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #10
  br label %45

45:                                               ; preds = %41, %17
  ret void
}

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_struct_marks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 14
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 1
  br label %10

10:                                               ; preds = %7, %73
  %11 = phi ptr [ %5, %7 ], [ %74, %73 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !63
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %10
  %20 = load i16, ptr %8, align 2, !tbaa !64
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  %23 = and i32 %16, 8
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %24, %22
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %28 = sext i16 %27 to i32
  %29 = load i32, ptr %3, align 4, !tbaa !47
  %30 = sub nsw i32 %29, %28
  store i32 %30, ptr %3, align 4, !tbaa !47
  br label %54

31:                                               ; preds = %19, %10
  %32 = load i16, ptr %13, align 8, !tbaa !78
  %33 = icmp eq i16 %32, 30
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, ptr %3, align 4, !tbaa !47
  %36 = add nsw i32 %35, 1
  %37 = load float, ptr %9, align 4, !tbaa !70
  %38 = fptosi float %37 to i32
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %40 = sext i16 %39 to i32
  %41 = add i32 %35, -1
  %42 = add i32 %41, %40
  tail call void @glRecti(i32 noundef 0, i32 noundef %36, i32 noundef %38, i32 noundef %42) #10
  %43 = load i16, ptr %14, align 4, !tbaa !63
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 1
  br label %46

46:                                               ; preds = %31, %34
  %47 = phi i32 [ %17, %31 ], [ %45, %34 ]
  %48 = phi i32 [ %16, %31 ], [ %44, %34 ]
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %50 = sext i16 %49 to i32
  %51 = load i32, ptr %3, align 4, !tbaa !47
  %52 = sub nsw i32 %51, %50
  store i32 %52, ptr %3, align 4, !tbaa !47
  %53 = icmp eq i32 %47, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %26, %46
  %55 = phi i32 [ %16, %26 ], [ %48, %46 ]
  %56 = load i16, ptr %8, align 2, !tbaa !64
  %57 = and i16 %56, 4
  %58 = icmp eq i16 %57, 0
  %59 = and i32 %55, 8
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %60, %58
  br i1 %61, label %73, label %62

62:                                               ; preds = %54, %46
  %63 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  tail call fastcc void @outliner_draw_struct_marks(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %63, ptr noundef nonnull %3) #9
  %64 = load i16, ptr %13, align 8, !tbaa !78
  %65 = icmp eq i16 %64, 30
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, ptr %3, align 4, !tbaa !47
  %68 = sitofp i32 %67 to float
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %70 = sitofp i16 %69 to float
  %71 = fadd float %68, %70
  %72 = load float, ptr %9, align 4, !tbaa !70
  tail call void @fdrawline(float noundef 0.000000e+00, float noundef %71, float noundef %72, float noundef %71) #10
  br label %73

73:                                               ; preds = %54, %66, %62
  %74 = load ptr, ptr %11, align 8, !tbaa !6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %10, !llvm.loop !94

76:                                               ; preds = %73, %4
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 1
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 14
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  br label %11

11:                                               ; preds = %7, %50
  %12 = phi i16 [ %10, %7 ], [ %51, %50 ]
  %13 = phi ptr [ %5, %7 ], [ %52, %50 ]
  %14 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.TreeStoreElem, ptr %15, i64 0, i32 2
  %17 = load i16, ptr %16, align 4, !tbaa !63
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  %20 = load i32, ptr %3, align 4, !tbaa !47
  br i1 %19, label %31, label %21

21:                                               ; preds = %11
  %22 = add nsw i32 %20, 1
  %23 = load float, ptr %8, align 4, !tbaa !70
  %24 = fptosi float %23 to i32
  %25 = sext i16 %12 to i32
  %26 = add i32 %20, -1
  %27 = add i32 %26, %25
  tail call void @glRecti(i32 noundef 0, i32 noundef %22, i32 noundef %24, i32 noundef %27) #10
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %29 = load i32, ptr %3, align 4, !tbaa !47
  %30 = load i16, ptr %16, align 4, !tbaa !63
  br label %31

31:                                               ; preds = %21, %11
  %32 = phi i16 [ %28, %21 ], [ %12, %11 ]
  %33 = phi i16 [ %30, %21 ], [ %17, %11 ]
  %34 = phi i32 [ %29, %21 ], [ %20, %11 ]
  %35 = sext i16 %32 to i32
  %36 = sub nsw i32 %34, %35
  store i32 %36, ptr %3, align 4, !tbaa !47
  %37 = zext i16 %33 to i32
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load i16, ptr %9, align 2, !tbaa !64
  %42 = and i16 %41, 4
  %43 = icmp eq i16 %42, 0
  %44 = and i32 %37, 8
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %45, %43
  br i1 %46, label %50, label %47

47:                                               ; preds = %40, %31
  %48 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  tail call fastcc void @outliner_draw_selection(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %48, ptr noundef nonnull %3) #9
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  br label %50

50:                                               ; preds = %40, %47
  %51 = phi i16 [ %32, %40 ], [ %49, %47 ]
  %52 = load ptr, ptr %13, align 8, !tbaa !6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %11, !llvm.loop !95

54:                                               ; preds = %50, %4
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_hierarchy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #9, !range !96
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %76

7:                                                ; preds = %4
  %8 = load i32, ptr %3, align 4, !tbaa !47
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %13

13:                                               ; preds = %11, %49
  %14 = phi ptr [ %9, %11 ], [ %50, %49 ]
  %15 = load i32, ptr %3, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = load i16, ptr %17, align 8, !tbaa !78
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 9
  %22 = load i16, ptr %21, align 4, !tbaa !83
  switch i16 %22, label %29 [
    i16 16975, label %23
    i16 17235, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %25, %2
  %27 = add nsw i32 %15, -1
  tail call void @glRecti(i32 noundef %2, i32 noundef %15, i32 noundef %26, i32 noundef %27) #10
  %28 = load i32, ptr %3, align 4, !tbaa !47
  br label %29

29:                                               ; preds = %20, %23, %13
  %30 = phi i32 [ %15, %20 ], [ %28, %23 ], [ %15, %13 ]
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %32 = sext i16 %31 to i32
  %33 = sub nsw i32 %30, %32
  store i32 %33, ptr %3, align 4, !tbaa !47
  %34 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %35 = load i16, ptr %34, align 4, !tbaa !63
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %29
  %40 = load i16, ptr %12, align 2, !tbaa !64
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  %43 = and i32 %36, 8
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %44, %42
  br i1 %45, label %49, label %46

46:                                               ; preds = %39, %29
  %47 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 3
  %48 = add nsw i32 %32, %2
  tail call fastcc void @outliner_draw_hierarchy(ptr noundef %0, ptr noundef nonnull %47, i32 noundef %48, ptr noundef nonnull %3) #9
  br label %49

49:                                               ; preds = %39, %46
  %50 = load ptr, ptr %14, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %13, !llvm.loop !97

52:                                               ; preds = %49, %7
  %53 = phi i32 [ %8, %7 ], [ %15, %49 ]
  %54 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  %56 = getelementptr inbounds %struct.TreeElement, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !99
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load ptr, ptr %1, align 8, !tbaa !100
  %61 = icmp eq ptr %60, %55
  br i1 %61, label %76, label %62

62:                                               ; preds = %59, %52
  %63 = getelementptr inbounds %struct.TreeElement, ptr %55, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !59
  %65 = load i16, ptr %64, align 8, !tbaa !78
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TreeElement, ptr %55, i64 0, i32 9
  %69 = load i16, ptr %68, align 4, !tbaa !83
  %70 = icmp eq i16 %69, 16975
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %8, %73
  %75 = add nsw i32 %2, 1
  tail call void @glRecti(i32 noundef %2, i32 noundef %74, i32 noundef %75, i32 noundef %53) #10
  br label %76

76:                                               ; preds = %59, %71, %67, %62, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_tree_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #0 {
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x i8], align 4
  %13 = alloca i32, align 4
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %15 = sext i16 %14 to i32
  %16 = sitofp i16 %14 to float
  %17 = fdiv float %16, 2.000000e+01
  %18 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = load i32, ptr %7, align 4, !tbaa !47
  %21 = shl nsw i32 %15, 1
  %22 = add nsw i32 %20, %21
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !69
  %26 = fcmp ugt float %25, %23
  br i1 %26, label %320, label %27

27:                                               ; preds = %9
  %28 = sitofp i32 %20 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !77
  %31 = fcmp ult float %30, %28
  br i1 %31, label %320, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !70
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 2
  %37 = load i16, ptr %36, align 4, !tbaa !63
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %8, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store ptr %5, ptr %8, align 8, !tbaa !6
  br label %44

44:                                               ; preds = %43, %40, %32
  %45 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 11
  %46 = load i16, ptr %45, align 8, !tbaa !56
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
  tail call void @glEnable(i32 noundef 3042) #10
  %56 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 14
  %57 = load i16, ptr %56, align 2, !tbaa !64
  %58 = and i16 %57, 4
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 12
  %62 = load i16, ptr %61, align 2, !tbaa !48
  %63 = icmp eq i16 %62, 11
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 9
  %66 = load i8, ptr %65, align 8, !tbaa !101
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %64, %54
  %69 = load i16, ptr %36, align 4, !tbaa !63
  %70 = and i16 %69, 16
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @UI_GetThemeColorType4ubv(i32 noundef 162, i32 noundef 3, ptr noundef nonnull %10) #10
  %73 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  store i8 -128, ptr %73, align 1, !tbaa !101
  call void @glColor4ubv(ptr noundef nonnull %10) #10
  %74 = load i32, ptr %7, align 4, !tbaa !47
  %75 = add nsw i32 %74, 1
  %76 = load float, ptr %33, align 4, !tbaa !70
  %77 = fptosi float %76 to i32
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %79 = sext i16 %78 to i32
  %80 = add i32 %74, -1
  %81 = add i32 %80, %79
  call void @glRecti(i32 noundef %6, i32 noundef %75, i32 noundef %77, i32 noundef %81) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br label %82

82:                                               ; preds = %72, %68, %64, %60
  %83 = load i16, ptr %19, align 8, !tbaa !78
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %87 = load i16, ptr %86, align 4, !tbaa !83
  switch i16 %87, label %133 [
    i16 17235, label %88
    i16 21063, label %93
    i16 16975, label %100
  ]

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !84
  %91 = icmp eq ptr %90, %2
  br i1 %91, label %92, label %169

92:                                               ; preds = %88
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #10
  br label %151

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !84
  %96 = call fastcc i32 @group_select_flag(ptr noundef %95) #9, !range !5
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %169, label %98

98:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @UI_GetThemeColorType4ubv(i32 noundef 28, i32 noundef 1, ptr noundef nonnull %11) #10
  %99 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  store i8 -128, ptr %99, align 1, !tbaa !101
  call void @glColor4ubv(ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  br label %151

100:                                              ; preds = %85
  %101 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !84
  %103 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !102
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.Base, ptr %104, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !103
  br label %109

109:                                              ; preds = %100, %106
  %110 = phi ptr [ %108, %106 ], [ null, %100 ]
  %111 = icmp eq ptr %102, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.Object, ptr %102, i64 0, i32 53
  %114 = load i16, ptr %113, align 4, !tbaa !22
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %169, label %117

117:                                              ; preds = %112, %109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 0, ptr %12, align 4
  br i1 %105, label %121, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.Base, ptr %104, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !103
  br label %121

121:                                              ; preds = %117, %118
  %122 = phi ptr [ %120, %118 ], [ null, %117 ]
  %123 = icmp eq ptr %102, %122
  %124 = getelementptr inbounds %struct.Object, ptr %102, i64 0, i32 53
  %125 = load i16, ptr %124, align 4, !tbaa !22
  %126 = and i16 %125, 1
  %127 = icmp eq i16 %126, 0
  %128 = select i1 %123, i32 1, i32 2
  br i1 %127, label %132, label %129

129:                                              ; preds = %121
  %130 = select i1 %123, i32 29, i32 28
  call void @UI_GetThemeColorType4ubv(i32 noundef %130, i32 noundef 1, ptr noundef nonnull %12) #10
  %131 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  store i8 -128, ptr %131, align 1, !tbaa !101
  br label %132

132:                                              ; preds = %121, %129
  call void @glColor4ubv(ptr noundef nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  br label %151

133:                                              ; preds = %85
  %134 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8, !tbaa !25
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 19
  %139 = load ptr, ptr %138, align 8, !tbaa !89
  %140 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !84
  %142 = icmp eq ptr %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #10
  br label %151

144:                                              ; preds = %137, %133
  %145 = call i32 @tree_element_active(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0, i8 noundef zeroext 0) #10
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %169, label %147

147:                                              ; preds = %144
  call void @glColor4ub(i8 noundef zeroext -36, i8 noundef zeroext -36, i8 noundef zeroext -1, i8 noundef zeroext -128) #10
  br label %151

148:                                              ; preds = %82
  %149 = call i32 @tree_element_type_active(ptr noundef null, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %19, i32 noundef 0, i8 noundef zeroext 0) #10
  %150 = icmp eq i32 %149, 0
  call void @glColor4ub(i8 noundef zeroext -36, i8 noundef zeroext -36, i8 noundef zeroext -1, i8 noundef zeroext -128) #10
  br i1 %150, label %169, label %151

151:                                              ; preds = %92, %143, %147, %148, %98, %132
  %152 = phi i32 [ %128, %132 ], [ 2, %98 ], [ 2, %148 ], [ 2, %147 ], [ 2, %143 ], [ 2, %92 ]
  call void @uiSetRoundBox(i32 noundef 15) #10
  %153 = sitofp i32 %6 to float
  %154 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %155 = sitofp i16 %154 to float
  %156 = fadd float %153, %155
  %157 = load i32, ptr %7, align 4, !tbaa !47
  %158 = sitofp i32 %157 to float
  %159 = fadd float %17, %158
  %160 = call float @llvm.fmuladd.f32(float %155, float 2.000000e+00, float %153)
  %161 = call float @llvm.fmuladd.f32(float %17, float -2.000000e+00, float %160)
  %162 = fadd float %155, %158
  %163 = call float @llvm.fmuladd.f32(float %17, float -1.000000e+00, float %162)
  %164 = fmul float %155, 5.000000e-01
  %165 = call float @llvm.fmuladd.f32(float %17, float -1.000000e+00, float %164)
  call void @uiRoundBox(float noundef %156, float noundef %159, float noundef %161, float noundef %163, float noundef %165) #10
  call void @glEnable(i32 noundef 3042) #10
  %166 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 7
  %167 = load i16, ptr %166, align 8, !tbaa !105
  %168 = or i16 %167, 1
  store i16 %168, ptr %166, align 8, !tbaa !105
  br label %169

169:                                              ; preds = %148, %144, %88, %93, %112, %151
  %170 = phi i32 [ %152, %151 ], [ 0, %88 ], [ 0, %144 ], [ 0, %93 ], [ 0, %112 ], [ 0, %148 ]
  %171 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !106
  %173 = icmp eq ptr %172, null
  %174 = load i16, ptr %19, align 8, !tbaa !78
  br i1 %173, label %175, label %186

175:                                              ; preds = %169
  %176 = icmp eq i16 %174, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %179 = load i16, ptr %178, align 4, !tbaa !83
  %180 = icmp eq i16 %179, 17235
  br i1 %180, label %188, label %181

181:                                              ; preds = %177, %175
  %182 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 7
  %183 = load i16, ptr %182, align 8, !tbaa !105
  %184 = and i16 %183, 4
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %215, label %186

186:                                              ; preds = %181, %169
  %187 = icmp eq i16 %174, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %177, %186
  %189 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %190 = load i16, ptr %189, align 4, !tbaa !83
  switch i16 %190, label %191 [
    i16 16975, label %195
    i16 17235, label %195
  ]

191:                                              ; preds = %188, %186
  %192 = sitofp i32 %6 to float
  %193 = call float @llvm.fmuladd.f32(float %17, float 5.000000e+00, float %192)
  %194 = fptosi float %193 to i32
  br label %195

195:                                              ; preds = %188, %188, %191
  %196 = phi i32 [ %194, %191 ], [ %6, %188 ], [ %6, %188 ]
  %197 = load i16, ptr %36, align 4, !tbaa !63
  %198 = zext i16 %197 to i32
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %195
  %202 = load i16, ptr %56, align 2, !tbaa !64
  %203 = and i16 %202, 4
  %204 = icmp eq i16 %203, 0
  %205 = and i32 %198, 8
  %206 = icmp eq i32 %205, 0
  %207 = or i1 %206, %204
  %208 = select i1 %207, i32 11, i32 10
  br label %209

209:                                              ; preds = %201, %195
  %210 = phi i32 [ 10, %195 ], [ %208, %201 ]
  %211 = sitofp i32 %196 to float
  %212 = load i32, ptr %7, align 4, !tbaa !47
  %213 = sitofp i32 %212 to float
  %214 = call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float %213)
  call void @UI_icon_draw(float noundef %211, float noundef %214, i32 noundef %210) #10
  br label %215

215:                                              ; preds = %209, %181
  %216 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %217 = load i16, ptr %19, align 8, !tbaa !78
  %218 = add i16 %217, -31
  %219 = icmp ult i16 %218, 2
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = sitofp i16 %216 to float
  %222 = call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float %221)
  %223 = fptosi float %222 to i32
  br label %258

224:                                              ; preds = %215
  %225 = sext i16 %216 to i32
  %226 = sitofp i32 %6 to float
  %227 = sitofp i16 %216 to float
  %228 = fadd float %226, %227
  %229 = load i32, ptr %7, align 4, !tbaa !47
  %230 = sitofp i32 %229 to float
  call fastcc void @tselem_draw_icon(ptr noundef %1, i32 noundef %55, float noundef %228, float noundef %230, ptr noundef nonnull %19, ptr noundef nonnull %5, float noundef 1.000000e+00) #9
  %231 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %232 = sext i16 %231 to i32
  %233 = add nsw i32 %232, %225
  %234 = load i16, ptr %19, align 8, !tbaa !78
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %236, label %258

236:                                              ; preds = %224
  %237 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 4
  %238 = load ptr, ptr %237, align 8, !tbaa !84
  %239 = getelementptr inbounds %struct.ID, ptr %238, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !107
  %241 = icmp eq ptr %240, null
  br i1 %241, label %258, label %242

242:                                              ; preds = %236
  call void @glPixelTransferf(i32 noundef 3356, float noundef 5.000000e-01) #10
  %243 = load ptr, ptr %237, align 8, !tbaa !84
  %244 = getelementptr inbounds %struct.ID, ptr %243, i64 0, i32 5
  %245 = load i16, ptr %244, align 2, !tbaa !108
  %246 = and i16 %245, 2
  %247 = icmp eq i16 %246, 0
  %248 = sitofp i32 %6 to float
  %249 = sitofp i32 %233 to float
  %250 = fadd float %248, %249
  %251 = load i32, ptr %7, align 4, !tbaa !47
  %252 = sitofp i32 %251 to float
  %253 = call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float %252)
  %254 = select i1 %247, i32 170, i32 196
  call void @UI_icon_draw(float noundef %250, float noundef %253, i32 noundef %254) #10
  call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #10
  %255 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %256 = sext i16 %255 to i32
  %257 = add nsw i32 %233, %256
  br label %258

258:                                              ; preds = %220, %242, %236, %224
  %259 = phi i32 [ %257, %242 ], [ %233, %236 ], [ %233, %224 ], [ %223, %220 ]
  call void @glDisable(i32 noundef 3042) #10
  %260 = icmp eq i32 %170, 1
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  call void @UI_ThemeColor(i32 noundef 4) #10
  br label %268

262:                                              ; preds = %258
  %263 = load i16, ptr %19, align 8, !tbaa !78
  %264 = add i16 %263, -31
  %265 = icmp ult i16 %264, 2
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  call void @UI_ThemeColorBlend(i32 noundef 2, i32 noundef 3, float noundef 7.500000e-01) #10
  br label %268

267:                                              ; preds = %262
  call void @UI_ThemeColor(i32 noundef 3) #10
  br label %268

268:                                              ; preds = %266, %267, %261
  %269 = add nsw i32 %259, %6
  %270 = sitofp i32 %269 to float
  %271 = load i32, ptr %7, align 4, !tbaa !47
  %272 = sitofp i32 %271 to float
  %273 = call float @llvm.fmuladd.f32(float %17, float 5.000000e+00, float %272)
  %274 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 11
  %275 = load ptr, ptr %274, align 8, !tbaa !93
  call void @UI_DrawString(float noundef %270, float noundef %273, ptr noundef %275) #10
  %276 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %277 = sext i16 %276 to i32
  %278 = load ptr, ptr %274, align 8, !tbaa !93
  %279 = call i32 @UI_GetStringWidth(ptr noundef %278) #10
  %280 = add i32 %259, %277
  %281 = add i32 %280, %279
  %282 = load i16, ptr %36, align 4, !tbaa !63
  %283 = zext i16 %282 to i32
  %284 = and i32 %283, 1
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %320, label %286

286:                                              ; preds = %268
  %287 = load i16, ptr %56, align 2, !tbaa !64
  %288 = and i16 %287, 4
  %289 = icmp eq i16 %288, 0
  %290 = and i32 %283, 8
  %291 = icmp eq i32 %290, 0
  %292 = or i1 %291, %289
  br i1 %292, label %293, label %320

293:                                              ; preds = %286
  %294 = load ptr, ptr %171, align 8, !tbaa !106
  %295 = icmp eq ptr %294, null
  br i1 %295, label %320, label %296

296:                                              ; preds = %293
  %297 = load i16, ptr %19, align 8, !tbaa !78
  switch i16 %297, label %302 [
    i16 0, label %298
    i16 20, label %320
  ]

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %300 = load i16, ptr %299, align 4, !tbaa !83
  %301 = icmp eq i16 %300, 17235
  br i1 %301, label %320, label %302

302:                                              ; preds = %296, %298
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  %303 = add nsw i32 %281, %6
  store i32 %303, ptr %13, align 4, !tbaa !47
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -40) #10
  %304 = sitofp i32 %303 to float
  %305 = call float @llvm.fmuladd.f32(float %17, float -1.000000e+01, float %304)
  %306 = fptosi float %305 to i32
  %307 = load i32, ptr %7, align 4, !tbaa !47
  %308 = sitofp i32 %307 to float
  %309 = call float @llvm.fmuladd.f32(float %17, float 4.000000e+00, float %308)
  %310 = fptosi float %309 to i32
  %311 = call float @llvm.fmuladd.f32(float %17, float -8.000000e+00, float %304)
  %312 = fptosi float %311 to i32
  %313 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %314 = sext i16 %313 to i32
  %315 = add nsw i32 %307, %314
  %316 = sitofp i32 %315 to float
  %317 = call float @llvm.fmuladd.f32(float %17, float -4.000000e+00, float %316)
  %318 = fptosi float %317 to i32
  call void @glRecti(i32 noundef %306, i32 noundef %310, i32 noundef %312, i32 noundef %318) #10
  call void @glEnable(i32 noundef 3042) #10
  call void @glPixelTransferf(i32 noundef 3356, float noundef 5.000000e-01) #10
  %319 = load i32, ptr %7, align 4, !tbaa !47
  call fastcc void @outliner_draw_iconrow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %171, i32 noundef 0, i32 noundef %55, ptr noundef nonnull %13, i32 noundef %319) #9
  call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #10
  call void @glDisable(i32 noundef 3042) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  br label %320

320:                                              ; preds = %296, %268, %298, %302, %293, %286, %27, %9
  %321 = phi i32 [ 0, %27 ], [ 0, %9 ], [ %281, %286 ], [ %281, %293 ], [ %281, %302 ], [ %281, %298 ], [ %281, %268 ], [ %281, %296 ]
  %322 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 4
  store i32 %6, ptr %322, align 8, !tbaa !92
  %323 = load i32, ptr %7, align 4, !tbaa !47
  %324 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 5
  store i32 %323, ptr %324, align 4, !tbaa !76
  %325 = add nsw i32 %321, %6
  %326 = trunc i32 %325 to i16
  %327 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 10
  store i16 %326, ptr %327, align 2, !tbaa !109
  %328 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 2
  %329 = load i16, ptr %328, align 4, !tbaa !63
  %330 = zext i16 %329 to i32
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %341, label %333

333:                                              ; preds = %320
  %334 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 14
  %335 = load i16, ptr %334, align 2, !tbaa !64
  %336 = and i16 %335, 4
  %337 = icmp eq i16 %336, 0
  %338 = and i32 %330, 8
  %339 = icmp eq i32 %338, 0
  %340 = or i1 %339, %337
  br i1 %340, label %355, label %341

341:                                              ; preds = %333, %320
  %342 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %343 = sext i16 %342 to i32
  %344 = sub nsw i32 %323, %343
  store i32 %344, ptr %7, align 4, !tbaa !47
  %345 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !6
  %347 = icmp eq ptr %346, null
  br i1 %347, label %371, label %348

348:                                              ; preds = %341, %348
  %349 = phi ptr [ %353, %348 ], [ %346, %341 ]
  %350 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %351 = sext i16 %350 to i32
  %352 = add nsw i32 %351, %6
  call fastcc void @outliner_draw_tree_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %349, i32 noundef %352, ptr noundef nonnull %7, ptr noundef %8) #9
  %353 = load ptr, ptr %349, align 8, !tbaa !6
  %354 = icmp eq ptr %353, null
  br i1 %354, label %371, label %348, !llvm.loop !110

355:                                              ; preds = %333
  %356 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %357 = load ptr, ptr %356, align 8, !tbaa !6
  %358 = icmp eq ptr %357, null
  br i1 %358, label %366, label %359

359:                                              ; preds = %355, %359
  %360 = phi ptr [ %362, %359 ], [ %357, %355 ]
  %361 = load i32, ptr %7, align 4, !tbaa !47
  call fastcc void @outliner_set_coord_tree_element(ptr noundef nonnull %360, i32 noundef %6, i32 noundef %361) #9
  %362 = load ptr, ptr %360, align 8, !tbaa !6
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %359, !llvm.loop !111

364:                                              ; preds = %359
  %365 = load i32, ptr %7, align 4, !tbaa !47
  br label %366

366:                                              ; preds = %364, %355
  %367 = phi i32 [ %365, %364 ], [ %323, %355 ]
  %368 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %369 = sext i16 %368 to i32
  %370 = sub nsw i32 %367, %369
  store i32 %370, ptr %7, align 4, !tbaa !47
  br label %371

371:                                              ; preds = %348, %341, %366
  ret void
}

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_GetThemeColorType4ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @group_select_flag(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GroupObject, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 53
  %9 = load i16, ptr %8, align 4, !tbaa !22
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5, %1
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %5 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @tree_element_active(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_element_type_active(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tselem_draw_icon(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.DrawIconArg, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %10 = sitofp i16 %9 to float
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFC3333340000000, float %2)
  store ptr %0, ptr %8, align 8, !tbaa !112
  %12 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !114
  %15 = sitofp i32 %1 to float
  %16 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 2
  store float %15, ptr %16, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 5
  store float %11, ptr %17, align 4, !tbaa !116
  %18 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 6
  store float %3, ptr %18, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 7
  store float %6, ptr %19, align 4, !tbaa !118
  %20 = fmul float %10, 0x3FE99999A0000000
  %21 = fmul float %20, 6.250000e-02
  %22 = getelementptr inbounds %struct.DrawIconArg, ptr %8, i64 0, i32 3
  %23 = insertelement <2 x float> poison, float %21, i64 0
  %24 = insertelement <2 x float> %23, float %10, i64 1
  %25 = insertelement <2 x float> poison, float %11, i64 0
  %26 = insertelement <2 x float> %25, float %3, i64 1
  %27 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> <float 4.000000e+00, float 0x3FB99999A0000000>, <2 x float> %26)
  store <2 x float> %27, ptr %22, align 4, !tbaa !119
  %28 = load i16, ptr %4, align 8, !tbaa !78
  switch i16 %28, label %265 [
    i16 0, label %268
    i16 15, label %29
    i16 1, label %32
    i16 33, label %35
    i16 2, label %38
    i16 16, label %41
    i16 3, label %44
    i16 5, label %47
    i16 6, label %47
    i16 7, label %50
    i16 9, label %53
    i16 11, label %56
    i16 29, label %59
    i16 10, label %62
    i16 13, label %199
    i16 14, label %202
    i16 18, label %205
    i16 19, label %208
    i16 20, label %211
    i16 23, label %214
    i16 22, label %217
    i16 24, label %220
    i16 26, label %223
    i16 27, label %244
    i16 28, label %247
    i16 30, label %250
  ]

29:                                               ; preds = %7
  %30 = extractelement <2 x float> %27, i64 0
  %31 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %30, float noundef %31, i32 noundef 167) #10
  br label %313

32:                                               ; preds = %7
  %33 = extractelement <2 x float> %27, i64 0
  %34 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %33, float noundef %34, i32 noundef 116) #10
  br label %313

35:                                               ; preds = %7
  %36 = extractelement <2 x float> %27, i64 0
  %37 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %36, float noundef %37, i32 noundef 116) #10
  br label %313

38:                                               ; preds = %7
  %39 = extractelement <2 x float> %27, i64 0
  %40 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %39, float noundef %40, i32 noundef 115) #10
  br label %313

41:                                               ; preds = %7
  %42 = extractelement <2 x float> %27, i64 0
  %43 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %42, float noundef %43, i32 noundef 519) #10
  br label %313

44:                                               ; preds = %7
  %45 = extractelement <2 x float> %27, i64 0
  %46 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %45, float noundef %46, i32 noundef 201) #10
  br label %313

47:                                               ; preds = %7, %7
  %48 = extractelement <2 x float> %27, i64 0
  %49 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %48, float noundef %49, i32 noundef 174) #10
  br label %313

50:                                               ; preds = %7
  %51 = extractelement <2 x float> %27, i64 0
  %52 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %51, float noundef %52, i32 noundef 175) #10
  br label %313

53:                                               ; preds = %7
  %54 = extractelement <2 x float> %27, i64 0
  %55 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %54, float noundef %55, i32 noundef 442) #10
  br label %313

56:                                               ; preds = %7
  %57 = extractelement <2 x float> %27, i64 0
  %58 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %57, float noundef %58, i32 noundef 159) #10
  br label %313

59:                                               ; preds = %7
  %60 = extractelement <2 x float> %27, i64 0
  %61 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %60, float noundef %61, i32 noundef 88) #10
  br label %313

62:                                               ; preds = %7
  %63 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 26
  %64 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !86
  %66 = sext i16 %65 to i32
  %67 = tail call ptr @BLI_findlink(ptr noundef nonnull %63, i32 noundef %66) #10
  %68 = getelementptr inbounds %struct.ModifierData, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !120
  switch i32 %69, label %313 [
    i32 1, label %70
    i32 8, label %73
    i32 2, label %76
    i32 3, label %79
    i32 4, label %82
    i32 5, label %85
    i32 6, label %88
    i32 7, label %91
    i32 9, label %94
    i32 10, label %97
    i32 11, label %100
    i32 19, label %103
    i32 20, label %106
    i32 13, label %109
    i32 12, label %112
    i32 15, label %115
    i32 45, label %115
    i32 14, label %118
    i32 25, label %121
    i32 17, label %124
    i32 18, label %127
    i32 24, label %130
    i32 16, label %133
    i32 43, label %133
    i32 28, label %136
    i32 27, label %139
    i32 22, label %142
    i32 21, label %145
    i32 23, label %148
    i32 30, label %148
    i32 26, label %151
    i32 29, label %154
    i32 31, label %157
    i32 33, label %160
    i32 34, label %163
    i32 41, label %166
    i32 36, label %169
    i32 37, label %169
    i32 38, label %169
    i32 40, label %172
    i32 39, label %175
    i32 35, label %178
    i32 42, label %181
    i32 44, label %184
    i32 46, label %187
    i32 48, label %190
    i32 47, label %193
    i32 0, label %196
    i32 32, label %196
    i32 49, label %196
  ]

70:                                               ; preds = %62
  %71 = extractelement <2 x float> %27, i64 0
  %72 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %71, float noundef %72, i32 noundef 448) #10
  br label %313

73:                                               ; preds = %62
  %74 = extractelement <2 x float> %27, i64 0
  %75 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %74, float noundef %75, i32 noundef 460) #10
  br label %313

76:                                               ; preds = %62
  %77 = extractelement <2 x float> %27, i64 0
  %78 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %77, float noundef %78, i32 noundef 458) #10
  br label %313

79:                                               ; preds = %62
  %80 = extractelement <2 x float> %27, i64 0
  %81 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %80, float noundef %81, i32 noundef 457) #10
  br label %313

82:                                               ; preds = %62
  %83 = extractelement <2 x float> %27, i64 0
  %84 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %83, float noundef %84, i32 noundef 444) #10
  br label %313

85:                                               ; preds = %62
  %86 = extractelement <2 x float> %27, i64 0
  %87 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %86, float noundef %87, i32 noundef 446) #10
  br label %313

88:                                               ; preds = %62
  %89 = extractelement <2 x float> %27, i64 0
  %90 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %89, float noundef %90, i32 noundef 445) #10
  br label %313

91:                                               ; preds = %62
  %92 = extractelement <2 x float> %27, i64 0
  %93 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %92, float noundef %93, i32 noundef 443) #10
  br label %313

94:                                               ; preds = %62
  %95 = extractelement <2 x float> %27, i64 0
  %96 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %95, float noundef %96, i32 noundef 449) #10
  br label %313

97:                                               ; preds = %62
  %98 = extractelement <2 x float> %27, i64 0
  %99 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %98, float noundef %99, i32 noundef 447) #10
  br label %313

100:                                              ; preds = %62
  %101 = extractelement <2 x float> %27, i64 0
  %102 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %101, float noundef %102, i32 noundef 452) #10
  br label %313

103:                                              ; preds = %62
  %104 = extractelement <2 x float> %27, i64 0
  %105 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %104, float noundef %105, i32 noundef 451) #10
  br label %313

106:                                              ; preds = %62
  %107 = extractelement <2 x float> %27, i64 0
  %108 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %107, float noundef %108, i32 noundef 451) #10
  br label %313

109:                                              ; preds = %62
  %110 = extractelement <2 x float> %27, i64 0
  %111 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %110, float noundef %111, i32 noundef 453) #10
  br label %313

112:                                              ; preds = %62
  %113 = extractelement <2 x float> %27, i64 0
  %114 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %113, float noundef %114, i32 noundef 454) #10
  br label %313

115:                                              ; preds = %62, %62
  %116 = extractelement <2 x float> %27, i64 0
  %117 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %116, float noundef %117, i32 noundef 455) #10
  br label %313

118:                                              ; preds = %62
  %119 = extractelement <2 x float> %27, i64 0
  %120 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %119, float noundef %120, i32 noundef 456) #10
  br label %313

121:                                              ; preds = %62
  %122 = extractelement <2 x float> %27, i64 0
  %123 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %122, float noundef %123, i32 noundef 461) #10
  br label %313

124:                                              ; preds = %62
  %125 = extractelement <2 x float> %27, i64 0
  %126 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %125, float noundef %126, i32 noundef 462) #10
  br label %313

127:                                              ; preds = %62
  %128 = extractelement <2 x float> %27, i64 0
  %129 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %128, float noundef %129, i32 noundef 463) #10
  br label %313

130:                                              ; preds = %62
  %131 = extractelement <2 x float> %27, i64 0
  %132 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %131, float noundef %132, i32 noundef 464) #10
  br label %313

133:                                              ; preds = %62, %62
  %134 = extractelement <2 x float> %27, i64 0
  %135 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %134, float noundef %135, i32 noundef 465) #10
  br label %313

136:                                              ; preds = %62
  %137 = extractelement <2 x float> %27, i64 0
  %138 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %137, float noundef %138, i32 noundef 466) #10
  br label %313

139:                                              ; preds = %62
  %140 = extractelement <2 x float> %27, i64 0
  %141 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %140, float noundef %141, i32 noundef 467) #10
  br label %313

142:                                              ; preds = %62
  %143 = extractelement <2 x float> %27, i64 0
  %144 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %143, float noundef %144, i32 noundef 468) #10
  br label %313

145:                                              ; preds = %62
  %146 = extractelement <2 x float> %27, i64 0
  %147 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %146, float noundef %147, i32 noundef 469) #10
  br label %313

148:                                              ; preds = %62, %62
  %149 = extractelement <2 x float> %27, i64 0
  %150 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %149, float noundef %150, i32 noundef 450) #10
  br label %313

151:                                              ; preds = %62
  %152 = extractelement <2 x float> %27, i64 0
  %153 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %152, float noundef %153, i32 noundef 470) #10
  br label %313

154:                                              ; preds = %62
  %155 = extractelement <2 x float> %27, i64 0
  %156 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %155, float noundef %156, i32 noundef 471) #10
  br label %313

157:                                              ; preds = %62
  %158 = extractelement <2 x float> %27, i64 0
  %159 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %158, float noundef %159, i32 noundef 472) #10
  br label %313

160:                                              ; preds = %62
  %161 = extractelement <2 x float> %27, i64 0
  %162 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %161, float noundef %162, i32 noundef 473) #10
  br label %313

163:                                              ; preds = %62
  %164 = extractelement <2 x float> %27, i64 0
  %165 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %164, float noundef %165, i32 noundef 474) #10
  br label %313

166:                                              ; preds = %62
  %167 = extractelement <2 x float> %27, i64 0
  %168 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %167, float noundef %168, i32 noundef 477) #10
  br label %313

169:                                              ; preds = %62, %62, %62
  %170 = extractelement <2 x float> %27, i64 0
  %171 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %170, float noundef %171, i32 noundef 475) #10
  br label %313

172:                                              ; preds = %62
  %173 = extractelement <2 x float> %27, i64 0
  %174 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %173, float noundef %174, i32 noundef 476) #10
  br label %313

175:                                              ; preds = %62
  %176 = extractelement <2 x float> %27, i64 0
  %177 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %176, float noundef %177, i32 noundef 478) #10
  br label %313

178:                                              ; preds = %62
  %179 = extractelement <2 x float> %27, i64 0
  %180 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %179, float noundef %180, i32 noundef 479) #10
  br label %313

181:                                              ; preds = %62
  %182 = extractelement <2 x float> %27, i64 0
  %183 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %182, float noundef %183, i32 noundef 480) #10
  br label %313

184:                                              ; preds = %62
  %185 = extractelement <2 x float> %27, i64 0
  %186 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %185, float noundef %186, i32 noundef 481) #10
  br label %313

187:                                              ; preds = %62
  %188 = extractelement <2 x float> %27, i64 0
  %189 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %188, float noundef %189, i32 noundef 463) #10
  br label %313

190:                                              ; preds = %62
  %191 = extractelement <2 x float> %27, i64 0
  %192 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %191, float noundef %192, i32 noundef 482) #10
  br label %313

193:                                              ; preds = %62
  %194 = extractelement <2 x float> %27, i64 0
  %195 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %194, float noundef %195, i32 noundef 463) #10
  br label %313

196:                                              ; preds = %62, %62, %62
  %197 = extractelement <2 x float> %27, i64 0
  %198 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %197, float noundef %198, i32 noundef 17) #10
  br label %313

199:                                              ; preds = %7
  %200 = extractelement <2 x float> %27, i64 0
  %201 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %200, float noundef %201, i32 noundef 172) #10
  br label %313

202:                                              ; preds = %7
  %203 = extractelement <2 x float> %27, i64 0
  %204 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %203, float noundef %204, i32 noundef 174) #10
  br label %313

205:                                              ; preds = %7
  %206 = extractelement <2 x float> %27, i64 0
  %207 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %206, float noundef %207, i32 noundef 682) #10
  br label %313

208:                                              ; preds = %7
  %209 = extractelement <2 x float> %27, i64 0
  %210 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %209, float noundef %210, i32 noundef 157) #10
  br label %313

211:                                              ; preds = %7
  %212 = extractelement <2 x float> %27, i64 0
  %213 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %212, float noundef %213, i32 noundef 157) #10
  br label %313

214:                                              ; preds = %7
  %215 = extractelement <2 x float> %27, i64 0
  %216 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %215, float noundef %216, i32 noundef 164) #10
  br label %313

217:                                              ; preds = %7
  %218 = extractelement <2 x float> %27, i64 0
  %219 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %218, float noundef %219, i32 noundef 165) #10
  br label %313

220:                                              ; preds = %7
  %221 = extractelement <2 x float> %27, i64 0
  %222 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %221, float noundef %222, i32 noundef 200) #10
  br label %313

223:                                              ; preds = %7
  %224 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %225 = load i16, ptr %224, align 4, !tbaa !83
  switch i16 %225, label %241 [
    i16 3, label %226
    i16 1, label %229
    i16 2, label %232
    i16 4, label %235
    i16 0, label %238
  ]

226:                                              ; preds = %223
  %227 = extractelement <2 x float> %27, i64 0
  %228 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %227, float noundef %228, i32 noundef 111) #10
  br label %313

229:                                              ; preds = %223
  %230 = extractelement <2 x float> %27, i64 0
  %231 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %230, float noundef %231, i32 noundef 17) #10
  br label %313

232:                                              ; preds = %223
  %233 = extractelement <2 x float> %27, i64 0
  %234 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %233, float noundef %234, i32 noundef 83) #10
  br label %313

235:                                              ; preds = %223
  %236 = extractelement <2 x float> %27, i64 0
  %237 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %236, float noundef %237, i32 noundef 114) #10
  br label %313

238:                                              ; preds = %223
  %239 = extractelement <2 x float> %27, i64 0
  %240 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %239, float noundef %240, i32 noundef 109) #10
  br label %313

241:                                              ; preds = %223
  %242 = extractelement <2 x float> %27, i64 0
  %243 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %242, float noundef %243, i32 noundef 88) #10
  br label %313

244:                                              ; preds = %7
  %245 = extractelement <2 x float> %27, i64 0
  %246 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %245, float noundef %246, i32 noundef 170) #10
  br label %313

247:                                              ; preds = %7
  %248 = extractelement <2 x float> %27, i64 0
  %249 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %248, float noundef %249, i32 noundef 159) #10
  br label %313

250:                                              ; preds = %7
  %251 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 13, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !122
  %253 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %252) #10
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 13, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !123
  store ptr %257, ptr %14, align 8, !tbaa !114
  %258 = load ptr, ptr %251, align 8, !tbaa !122
  %259 = tail call i32 @RNA_struct_ui_icon(ptr noundef %258) #10
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef %259) #9
  br label %313

260:                                              ; preds = %250
  %261 = load ptr, ptr %251, align 8, !tbaa !122
  %262 = tail call i32 @RNA_struct_ui_icon(ptr noundef %261) #10
  %263 = extractelement <2 x float> %27, i64 0
  %264 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %263, float noundef %264, i32 noundef %262) #10
  br label %313

265:                                              ; preds = %7
  %266 = extractelement <2 x float> %27, i64 0
  %267 = extractelement <2 x float> %27, i64 1
  tail call void @UI_icon_draw(float noundef %266, float noundef %267, i32 noundef 17) #10
  br label %313

268:                                              ; preds = %7
  %269 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %270 = load i16, ptr %269, align 8, !tbaa !91
  switch i16 %270, label %313 [
    i16 16975, label %271
    i16 17235, label %285
    i16 17741, label %286
    i16 21827, label %287
    i16 16973, label %288
    i16 21580, label %289
    i16 16716, label %290
    i16 16717, label %299
    i16 17748, label %300
    i16 19785, label %301
    i16 19283, label %302
    i16 20307, label %302
    i16 21057, label %303
    i16 16707, label %304
    i16 17739, label %305
    i16 20311, label %306
    i16 17217, label %307
    i16 19534, label %308
    i16 22612, label %309
    i16 21063, label %310
    i16 18764, label %311
    i16 21324, label %312
  ]

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %273 = load i16, ptr %272, align 8, !tbaa !124
  switch i16 %273, label %313 [
    i16 10, label %274
    i16 1, label %275
    i16 11, label %276
    i16 2, label %277
    i16 5, label %278
    i16 22, label %279
    i16 25, label %280
    i16 4, label %281
    i16 3, label %282
    i16 12, label %283
    i16 0, label %284
  ]

274:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 239) #9
  br label %313

275:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 235) #9
  br label %313

276:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 240) #9
  br label %313

277:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 236) #9
  br label %313

278:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 238) #9
  br label %313

279:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 237) #9
  br label %313

280:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 241) #9
  br label %313

281:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 242) #9
  br label %313

282:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 243) #9
  br label %313

283:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 244) #9
  br label %313

284:                                              ; preds = %271
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 234) #9
  br label %313

285:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 156) #9
  br label %313

286:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 261) #9
  br label %313

287:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 262) #9
  br label %313

288:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 264) #9
  br label %313

289:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 263) #9
  br label %313

290:                                              ; preds = %268
  %291 = getelementptr inbounds %struct.Lamp, ptr %13, i64 0, i32 2
  %292 = load i16, ptr %291, align 8, !tbaa !125
  switch i16 %292, label %298 [
    i16 0, label %293
    i16 1, label %294
    i16 2, label %295
    i16 3, label %296
    i16 4, label %297
  ]

293:                                              ; preds = %290
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 298) #9
  br label %313

294:                                              ; preds = %290
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 299) #9
  br label %313

295:                                              ; preds = %290
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 300) #9
  br label %313

296:                                              ; preds = %290
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 301) #9
  br label %313

297:                                              ; preds = %290
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 302) #9
  br label %313

298:                                              ; preds = %290
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 265) #9
  br label %313

299:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 165) #9
  br label %313

300:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 166) #9
  br label %313

301:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 183) #9
  br label %313

302:                                              ; preds = %268, %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 270) #9
  br label %313

303:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 267) #9
  br label %313

304:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 266) #9
  br label %313

305:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 176) #9
  br label %313

306:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 158) #9
  br label %313

307:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 115) #9
  br label %313

308:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 116) #9
  br label %313

309:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 87) #9
  br label %313

310:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 171) #9
  br label %313

311:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 170) #9
  br label %313

312:                                              ; preds = %268
  call fastcc void @tselem_draw_icon_uibut(ptr noundef nonnull %8, i32 noundef 198) #9
  br label %313

313:                                              ; preds = %293, %294, %295, %296, %297, %298, %268, %274, %275, %276, %277, %278, %279, %280, %281, %282, %283, %284, %271, %70, %73, %76, %79, %82, %85, %88, %91, %94, %97, %100, %103, %106, %109, %112, %115, %118, %121, %124, %127, %130, %133, %136, %139, %142, %145, %148, %151, %154, %157, %160, %163, %166, %169, %172, %175, %178, %181, %184, %187, %190, %193, %196, %62, %312, %311, %310, %309, %308, %307, %306, %305, %304, %303, %302, %301, %300, %299, %289, %288, %287, %286, %285, %29, %32, %35, %38, %41, %44, %47, %50, %53, %56, %59, %199, %202, %205, %208, %211, %214, %217, %220, %244, %247, %265, %229, %235, %241, %238, %232, %226, %260, %255
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11
  ret void
}

; Function Attrs: optsize
declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_draw_iconrow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = load ptr, ptr %4, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %115, label %12

12:                                               ; preds = %9
  %13 = icmp slt i32 %5, 1
  %14 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 7
  %15 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %16 = sitofp i32 %8 to float
  %17 = add nsw i32 %5, 1
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  br label %19

19:                                               ; preds = %12, %111
  %20 = phi i16 [ %18, %12 ], [ %112, %111 ]
  %21 = phi ptr [ %10, %12 ], [ %113, %111 ]
  %22 = load i32, ptr %7, align 4, !tbaa !47
  %23 = sext i16 %20 to i32
  %24 = sub nsw i32 %22, %23
  %25 = icmp sgt i32 %24, %6
  br i1 %25, label %115, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = load i16, ptr %28, align 8, !tbaa !78
  %30 = icmp eq i16 %29, 0
  br i1 %13, label %36, label %31

31:                                               ; preds = %26
  br i1 %30, label %32, label %104

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 9
  %34 = load i16, ptr %33, align 4, !tbaa !83
  %35 = icmp eq i16 %34, 16975
  br i1 %35, label %37, label %108

36:                                               ; preds = %26
  br i1 %30, label %37, label %64

37:                                               ; preds = %32, %36
  %38 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 9
  %39 = load i16, ptr %38, align 4, !tbaa !83
  %40 = icmp eq i16 %39, 16975
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load ptr, ptr %15, align 8, !tbaa !102
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Base, ptr %42, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !103
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi ptr [ %46, %44 ], [ null, %41 ]
  %49 = getelementptr inbounds %struct.TreeStoreElem, ptr %28, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !84
  %51 = icmp eq ptr %48, %50
  %52 = zext i1 %51 to i32
  br label %66

53:                                               ; preds = %37
  %54 = load ptr, ptr %14, align 8, !tbaa !25
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  %59 = getelementptr inbounds %struct.TreeStoreElem, ptr %28, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !84
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %56, %53
  %63 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %21, i32 noundef 0, i8 noundef zeroext 0) #10
  br label %66

64:                                               ; preds = %36
  %65 = tail call i32 @tree_element_type_active(ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %21, ptr noundef nonnull %28, i32 noundef 0, i8 noundef zeroext 0) #10
  br label %66

66:                                               ; preds = %47, %62, %64
  %67 = phi i32 [ %52, %47 ], [ %63, %62 ], [ %65, %64 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %66
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  br label %71

71:                                               ; preds = %69, %56
  %72 = phi i16 [ %70, %69 ], [ %20, %56 ]
  %73 = sitofp i16 %72 to float
  %74 = fdiv float %73, 2.000000e+01
  tail call void @uiSetRoundBox(i32 noundef 15) #10
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 100) #10
  %75 = load i32, ptr %7, align 4, !tbaa !47
  %76 = sitofp i32 %75 to float
  %77 = tail call float @llvm.fmuladd.f32(float %74, float -1.000000e+00, float %76)
  %78 = fadd float %74, %16
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %80 = sitofp i16 %79 to float
  %81 = fadd float %76, %80
  %82 = tail call float @llvm.fmuladd.f32(float %74, float -2.000000e+00, float %81)
  %83 = fadd float %16, %80
  %84 = fsub float %83, %74
  %85 = fmul float %80, 5.000000e-01
  %86 = fsub float %85, %74
  tail call void @uiRoundBox(float noundef %77, float noundef %78, float noundef %82, float noundef %84, float noundef %86) #10
  tail call void @glEnable(i32 noundef 3042) #10
  br label %87

87:                                               ; preds = %71, %66
  %88 = load i32, ptr %7, align 4, !tbaa !47
  %89 = sitofp i32 %88 to float
  tail call fastcc void @tselem_draw_icon(ptr noundef %1, i32 noundef %6, float noundef %89, float noundef %16, ptr noundef nonnull %28, ptr noundef nonnull %21, float noundef 5.000000e-01) #9
  %90 = load i32, ptr %7, align 4, !tbaa !47
  %91 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 4
  store i32 %90, ptr %91, align 8, !tbaa !92
  %92 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 5
  store i32 %8, ptr %92, align 4, !tbaa !76
  %93 = load i32, ptr %7, align 4, !tbaa !47
  %94 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %95 = trunc i32 %93 to i16
  %96 = add i16 %94, %95
  %97 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 10
  store i16 %96, ptr %97, align 2, !tbaa !109
  %98 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 7
  %99 = load i16, ptr %98, align 8, !tbaa !105
  %100 = or i16 %99, 2
  store i16 %100, ptr %98, align 8, !tbaa !105
  %101 = sext i16 %94 to i32
  %102 = add nsw i32 %93, %101
  store i32 %102, ptr %7, align 4, !tbaa !47
  %103 = load i16, ptr %28, align 8, !tbaa !78
  br label %104

104:                                              ; preds = %87, %31
  %105 = phi i16 [ %20, %31 ], [ %94, %87 ]
  %106 = phi i16 [ %29, %31 ], [ %103, %87 ]
  %107 = icmp eq i16 %106, 20
  br i1 %107, label %111, label %108

108:                                              ; preds = %32, %104
  %109 = getelementptr inbounds %struct.TreeElement, ptr %21, i64 0, i32 3
  tail call fastcc void @outliner_draw_iconrow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %109, i32 noundef %17, i32 noundef %6, ptr noundef nonnull %7, i32 noundef %8) #9
  %110 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  br label %111

111:                                              ; preds = %104, %108
  %112 = phi i16 [ %105, %104 ], [ %110, %108 ]
  %113 = load ptr, ptr %21, align 8, !tbaa !6
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %19, !llvm.loop !127

115:                                              ; preds = %111, %19, %9
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_set_coord_tree_element(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 4
  store i32 %1, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 5
  store i32 %2, ptr %5, align 4, !tbaa !76
  %6 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %3 ]
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, %1
  tail call fastcc void @outliner_set_coord_tree_element(ptr noundef nonnull %10, i32 noundef %13, i32 noundef %2) #9
  %14 = load ptr, ptr %10, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !128

16:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tselem_draw_icon_uibut(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 4, !tbaa !129
  %5 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !115
  %7 = fcmp ult float %4, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  tail call void @glEnable(i32 noundef 3042) #10
  %9 = load float, ptr %3, align 4, !tbaa !129
  %10 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 4
  %11 = load float, ptr %10, align 8, !tbaa !130
  %12 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !131
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !132
  %14 = sitofp i32 %13 to float
  %15 = fmul float %12, %14
  %16 = fdiv float %15, 7.200000e+01
  %17 = fdiv float 1.000000e+00, %16
  %18 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 7
  %19 = load float, ptr %18, align 4, !tbaa !118
  tail call void @UI_icon_draw_aspect(float noundef %9, float noundef %11, i32 noundef %1, float noundef %17, float noundef %19) #10
  tail call void @glDisable(i32 noundef 3042) #10
  br label %46

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 5
  %23 = load float, ptr %22, align 4, !tbaa !116
  %24 = fptosi float %23 to i32
  %25 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 6
  %26 = load float, ptr %25, align 8, !tbaa !117
  %27 = fptosi float %26 to i32
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !52
  %29 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 7
  %30 = load float, ptr %29, align 4, !tbaa !118
  %31 = getelementptr inbounds %struct.DrawIconArg, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !107
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.Library, ptr %36, i64 0, i32 3
  %39 = select i1 %37, ptr @.str, ptr %38
  br label %40

40:                                               ; preds = %34, %20
  %41 = phi ptr [ @.str, %20 ], [ %39, %34 ]
  %42 = tail call ptr @uiDefIconBut(ptr noundef %21, i32 noundef 5120, i32 noundef 0, i32 noundef %1, i32 noundef %24, i32 noundef %27, i16 noundef signext %28, i16 noundef signext %28, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %30, ptr noundef nonnull %41) #10
  %43 = load ptr, ptr %31, align 8, !tbaa !114
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void @uiButSetDragID(ptr noundef %42, ptr noundef nonnull %43) #10
  br label %46

46:                                               ; preds = %40, %45, %8
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetDragID(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_view_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @common_restrict_check(ptr noundef %0, ptr noundef %2) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %8 = load i8, ptr %7, align 8, !tbaa !21
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef nonnull %2) #10
  tail call void @ED_base_object_select(ptr noundef %12, i16 noundef signext 0) #10
  br label %13

13:                                               ; preds = %11, %6
  %14 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %15 = getelementptr inbounds %struct.wmWindow, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !133
  %17 = getelementptr inbounds %struct.wmEvent, ptr %16, i64 0, i32 18
  %18 = load i16, ptr %17, align 2, !tbaa !135
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %7, align 8, !tbaa !21
  %22 = and i8 %21, 1
  tail call fastcc void @restrictbutton_recursive_child(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 1, i8 noundef zeroext %22, i8 noundef zeroext 1, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %20, %13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %1) #10
  br label %24

24:                                               ; preds = %3, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_sel_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @common_restrict_check(ptr noundef %0, ptr noundef %2) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %8 = load i8, ptr %7, align 8, !tbaa !21
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef nonnull %2) #10
  tail call void @ED_base_object_select(ptr noundef %12, i16 noundef signext 0) #10
  br label %13

13:                                               ; preds = %11, %6
  %14 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %15 = getelementptr inbounds %struct.wmWindow, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !133
  %17 = getelementptr inbounds %struct.wmEvent, ptr %16, i64 0, i32 18
  %18 = load i16, ptr %17, align 2, !tbaa !135
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %7, align 8, !tbaa !21
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 1
  tail call fastcc void @restrictbutton_recursive_child(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 2, i8 noundef zeroext %23, i8 noundef zeroext 1, ptr noundef null) #9
  br label %24

24:                                               ; preds = %20, %13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %1) #10
  br label %25

25:                                               ; preds = %3, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_rend_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 18
  %8 = load i16, ptr %7, align 2, !tbaa !135
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %12 = load i8, ptr %11, align 8, !tbaa !21
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 1
  tail call fastcc void @restrictbutton_recursive_child(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 4, i8 noundef zeroext %14, i8 noundef zeroext 0, ptr noundef nonnull @.str.3) #9
  br label %15

15:                                               ; preds = %10, %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67764224, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_gr_restrict_view(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %2, i32 noundef 1) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_gr_restrict_select(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %2, i32 noundef 2) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_gr_restrict_render(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %2, i32 noundef 4) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #10
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_r_lay_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_modifier_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  tail call void @DAG_id_tag_update(ptr noundef %2, i16 noundef signext 2) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_bone_visibility_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Bone, ptr %2, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !138
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 8, !tbaa !138
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !135
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 8, !tbaa !138
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 6
  %21 = and i8 %20, 1
  tail call fastcc void @restrictbutton_recursive_bone(ptr noundef nonnull %2, i32 noundef 64, i8 noundef zeroext %21) #9
  br label %22

22:                                               ; preds = %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_bone_select_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Bone, ptr %2, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !138
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 8, !tbaa !138
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !135
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 8, !tbaa !138
  %19 = lshr i32 %18, 21
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  tail call fastcc void @restrictbutton_recursive_bone(ptr noundef nonnull %2, i32 noundef 2097152, i8 noundef zeroext %21) #9
  br label %22

22:                                               ; preds = %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_ebone_visibility_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !140
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 4, !tbaa !140
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !135
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4, !tbaa !140
  %19 = lshr i32 %18, 10
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  tail call fastcc void @restrictbutton_recursive_ebone(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1024, i8 noundef zeroext %21) #9
  br label %22

22:                                               ; preds = %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @restrictbutton_ebone_select_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !140
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -8
  store i32 %9, ptr %4, align 4, !tbaa !140
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.wmEvent, ptr %13, i64 0, i32 18
  %15 = load i16, ptr %14, align 2, !tbaa !135
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4, !tbaa !140
  %19 = lshr i32 %18, 21
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  tail call fastcc void @restrictbutton_recursive_ebone(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2097152, i8 noundef zeroext %21) #9
  br label %22

22:                                               ; preds = %17, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #10
  ret void
}

; Function Attrs: optsize
declare i32 @common_restrict_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restrictbutton_recursive_child(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !6
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
  %23 = call zeroext i8 @BKE_object_is_child_recursive(ptr noundef %2, ptr noundef nonnull %22) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 102
  %27 = load i8, ptr %26, align 8, !tbaa !21
  br i1 %16, label %32, label %28

28:                                               ; preds = %25
  %29 = or i8 %27, %3
  store i8 %29, ptr %26, align 8, !tbaa !21
  br i1 %17, label %34, label %30

30:                                               ; preds = %28
  %31 = call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef nonnull %22) #10
  call void @ED_base_object_select(ptr noundef %31, i16 noundef signext 0) #10
  br label %34

32:                                               ; preds = %25
  %33 = and i8 %27, %18
  store i8 %33, ptr %26, align 8, !tbaa !21
  br label %34

34:                                               ; preds = %28, %30, %32
  br i1 %19, label %66, label %35

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  call void @RNA_id_pointer_create(ptr noundef nonnull %22, ptr noundef nonnull %8) #10
  %36 = call ptr @RNA_struct_find_property(ptr noundef nonnull %8, ptr noundef nonnull %6) #10
  %37 = call ptr @rna_get_fcurve_context_ui(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %36, i32 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  %38 = icmp eq ptr %37, null
  %39 = load i8, ptr %10, align 1
  %40 = icmp ne i8 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %65, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %8, align 8, !tbaa !142
  %44 = call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %43) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = call ptr @CTX_wm_reports(ptr noundef %0) #10
  %48 = call signext i16 @ANIM_get_keyframing_flags(ptr noundef %1, i16 noundef signext 1) #10
  %49 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 9
  %50 = load i16, ptr %49, align 8, !tbaa !143
  %51 = and i16 %50, -3
  store i16 %51, ptr %49, align 8, !tbaa !143
  %52 = load ptr, ptr %9, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !145
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds %struct.bActionGroup, ptr %54, i64 0, i32 5
  %57 = select i1 %55, ptr null, ptr %56
  %58 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !146
  %60 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 11
  %61 = load i32, ptr %60, align 4, !tbaa !147
  %62 = load i32, ptr %20, align 8, !tbaa !148
  %63 = sitofp i32 %62 to float
  %64 = call signext i16 @insert_keyframe(ptr noundef %47, ptr noundef %43, ptr noundef %52, ptr noundef %57, ptr noundef %59, i32 noundef %61, float noundef %63, i16 noundef signext %48) #10
  br label %65

65:                                               ; preds = %42, %46, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  br label %66

66:                                               ; preds = %21, %65, %34
  %67 = load ptr, ptr %22, align 8, !tbaa !6
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %21, !llvm.loop !149

69:                                               ; preds = %66, %7
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_get_fcurve_context_ui(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @restrictbutton_recursive_bone(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  %9 = xor i32 %1, -1
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %5, %7 ], [ %18, %10 ]
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !138
  %14 = and i32 %13, %9
  %15 = and i32 %13, -8
  %16 = or i32 %15, %1
  %17 = select i1 %8, i32 %14, i32 %16
  store i32 %17, ptr %12, align 8, !tbaa !138
  tail call fastcc void @restrictbutton_recursive_bone(ptr noundef nonnull %11, i32 noundef %1, i8 noundef zeroext %2) #9
  %18 = load ptr, ptr %11, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !150

20:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restrictbutton_recursive_ebone(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = icmp eq i8 %3, 0
  %14 = xor i32 %2, -1
  br label %15

15:                                               ; preds = %12, %26
  %16 = phi ptr [ %10, %12 ], [ %27, %26 ]
  %17 = tail call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef %1, ptr noundef nonnull %16) #10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !140
  %22 = and i32 %21, %14
  %23 = and i32 %21, -8
  %24 = or i32 %23, %2
  %25 = select i1 %13, i32 %22, i32 %24
  store i32 %25, ptr %20, align 4, !tbaa !140
  br label %26

26:                                               ; preds = %19, %15
  %27 = load ptr, ptr %16, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !153

29:                                               ; preds = %26, %4
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetRenameFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @namebutton_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #10
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %8, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %1, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %124

16:                                               ; preds = %3
  %17 = tail call ptr @outliner_find_tse(ptr noundef nonnull %8, ptr noundef nonnull %1) #10
  %18 = load i16, ptr %1, align 8, !tbaa !78
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
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4
  tail call void @test_idbutton(ptr noundef nonnull %22) #10
  %23 = load ptr, ptr %20, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4
  %25 = load i16, ptr %24, align 8, !tbaa !91
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
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %31, ptr noundef null) #10
  %32 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 9
  %33 = load i16, ptr %32, align 4, !tbaa !83
  %34 = icmp eq i16 %33, 18764
  br i1 %34, label %35, label %120

35:                                               ; preds = %30
  %36 = load ptr, ptr %20, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #11
  %37 = getelementptr inbounds %struct.Library, ptr %36, i64 0, i32 3
  tail call void @BKE_library_filepath_set(ptr noundef %36, ptr noundef nonnull %37) #10
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %37, i64 noundef 1024) #10
  %39 = load ptr, ptr @G, align 8, !tbaa !155
  %40 = getelementptr inbounds %struct.Main, ptr %39, i64 0, i32 2
  %41 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %40) #10
  %42 = call i32 @BLI_exists(ptr noundef nonnull %4) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call ptr @CTX_wm_reports(ptr noundef %0) #10
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %45, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #10
  br label %46

46:                                               ; preds = %44, %35
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #11
  br label %120

47:                                               ; preds = %16
  %48 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !79
  %50 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !84
  tail call void @defgroup_unique_name(ptr noundef %49, ptr noundef %51) #10
  br label %120

52:                                               ; preds = %16
  %53 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !84
  %55 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 4
  tail call void @test_idbutton(ptr noundef nonnull %55) #10
  br label %120

56:                                               ; preds = %16
  %57 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !84
  %59 = getelementptr inbounds %struct.bArmature, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !151
  %61 = icmp eq ptr %60, null
  br i1 %61, label %120, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %65 = getelementptr inbounds %struct.EditBone, ptr %64, i64 0, i32 5
  %66 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %65, i64 noundef 64) #10
  %67 = call ptr @BLI_strncpy(ptr noundef nonnull %65, ptr noundef %2, i64 noundef 64) #10
  %68 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !89
  call void @ED_armature_bone_rename(ptr noundef %69, ptr noundef %2, ptr noundef nonnull %5) #10
  %70 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !102
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !103
  br label %76

76:                                               ; preds = %62, %73
  %77 = phi ptr [ %75, %73 ], [ null, %62 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %77) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %120

78:                                               ; preds = %16
  %79 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %80 = load ptr, ptr %79, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %81 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %8, ptr noundef %17, i32 noundef 1, i8 noundef zeroext 1) #10
  %82 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !103
  br label %88

88:                                               ; preds = %78, %85
  %89 = phi ptr [ %87, %85 ], [ null, %78 ]
  %90 = getelementptr inbounds %struct.Bone, ptr %80, i64 0, i32 5
  %91 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %90, i64 noundef 64) #10
  %92 = call ptr @BLI_strncpy(ptr noundef nonnull %90, ptr noundef %2, i64 noundef 64) #10
  %93 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !89
  call void @ED_armature_bone_rename(ptr noundef %94, ptr noundef %2, ptr noundef nonnull %6) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %89) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %120

95:                                               ; preds = %16
  %96 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %97 = load ptr, ptr %96, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %98 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %8, ptr noundef %17, i32 noundef 1, i8 noundef zeroext 1) #10
  %99 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.Base, ptr %100, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !103
  br label %105

105:                                              ; preds = %95, %102
  %106 = phi ptr [ %104, %102 ], [ null, %95 ]
  %107 = getelementptr inbounds %struct.bPoseChannel, ptr %97, i64 0, i32 4
  %108 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %107, i64 noundef 64) #10
  %109 = call ptr @BLI_strncpy(ptr noundef nonnull %107, ptr noundef %2, i64 noundef 64) #10
  %110 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 19
  %111 = load ptr, ptr %110, align 8, !tbaa !89
  call void @ED_armature_bone_rename(ptr noundef %111, ptr noundef %2, ptr noundef nonnull %7) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %106) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  br label %120

112:                                              ; preds = %16
  %113 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !84
  %115 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  %116 = load ptr, ptr %115, align 8, !tbaa !79
  %117 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 18
  %118 = load ptr, ptr %117, align 8, !tbaa !157
  %119 = getelementptr inbounds %struct.bPose, ptr %118, i64 0, i32 9
  tail call void @BLI_uniquename(ptr noundef nonnull %119, ptr noundef %116, ptr noundef nonnull @.str.14, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %114) #10
  br label %120

120:                                              ; preds = %56, %76, %16, %47, %52, %88, %105, %112, %30, %46
  %121 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 2
  %122 = load i16, ptr %121, align 4, !tbaa !63
  %123 = and i16 %122, -5
  store i16 %123, ptr %121, align 4, !tbaa !63
  br label %124

124:                                              ; preds = %120, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @uiButActiveOnly(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @outliner_find_tse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @test_idbutton(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_library_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @defgroup_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_armature_bone_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 16}
!11 = !{!"GroupObject", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !8, i64 34}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 24}
!14 = !{!"Object", !15, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !16, i64 140, !16, i64 144, !16, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !17, i64 312, !7, i64 360, !18, i64 368, !18, i64 384, !18, i64 400, !18, i64 416, !16, i64 432, !16, i64 436, !7, i64 440, !7, i64 448, !16, i64 456, !16, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !19, i64 616, !19, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !16, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !16, i64 968, !16, i64 972, !16, i64 976, !16, i64 980, !16, i64 984, !19, i64 988, !19, i64 992, !19, i64 996, !19, i64 1000, !19, i64 1004, !19, i64 1008, !19, i64 1012, !19, i64 1016, !19, i64 1020, !19, i64 1024, !19, i64 1028, !19, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !19, i64 1048, !19, i64 1052, !18, i64 1056, !18, i64 1072, !18, i64 1088, !18, i64 1104, !19, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !16, i64 1144, !16, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !18, i64 1176, !18, i64 1192, !18, i64 1208, !18, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !19, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !20, i64 1304, !20, i64 1312, !16, i64 1320, !16, i64 1324, !18, i64 1328, !18, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !18, i64 1400, !7, i64 1416}
!15 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !16, i64 100, !16, i64 104, !16, i64 108, !7, i64 112}
!16 = !{!"int", !8, i64 0}
!17 = !{!"bAnimVizSettings", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44}
!18 = !{!"ListBase", !7, i64 0, !7, i64 8}
!19 = !{!"float", !8, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!14, !8, i64 1160}
!22 = !{!14, !12, i64 948}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !7, i64 176}
!26 = !{!"Scene", !15, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !18, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !16, i64 232, !16, i64 236, !16, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !27, i64 280, !36, i64 4264, !18, i64 4296, !18, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !16, i64 4380, !18, i64 4384, !37, i64 4400, !38, i64 4416, !41, i64 4600, !7, i64 4608, !42, i64 4616, !7, i64 4640, !20, i64 4648, !20, i64 4656, !29, i64 4664, !30, i64 4824, !43, i64 4888, !7, i64 4952}
!27 = !{!"RenderData", !28, i64 0, !7, i64 248, !7, i64 256, !31, i64 264, !32, i64 328, !16, i64 400, !16, i64 404, !16, i64 408, !19, i64 412, !16, i64 416, !16, i64 420, !16, i64 424, !16, i64 428, !12, i64 432, !12, i64 434, !19, i64 436, !19, i64 440, !19, i64 444, !19, i64 448, !19, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !16, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !16, i64 484, !16, i64 488, !12, i64 492, !12, i64 494, !16, i64 496, !16, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !16, i64 516, !16, i64 520, !16, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !33, i64 544, !33, i64 560, !34, i64 576, !18, i64 592, !12, i64 608, !12, i64 610, !19, i64 612, !19, i64 616, !19, i64 620, !19, i64 624, !16, i64 628, !19, i64 632, !19, i64 636, !19, i64 640, !19, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !19, i64 660, !19, i64 664, !12, i64 668, !12, i64 670, !19, i64 672, !19, i64 676, !8, i64 680, !16, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !16, i64 2520, !12, i64 2524, !12, i64 2526, !19, i64 2528, !19, i64 2532, !12, i64 2536, !12, i64 2538, !19, i64 2540, !12, i64 2544, !12, i64 2546, !16, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !19, i64 2560, !19, i64 2564, !7, i64 2568, !16, i64 2576, !19, i64 2580, !8, i64 2584, !35, i64 2616, !16, i64 3976, !16, i64 3980}
!28 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !19, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !29, i64 24, !30, i64 184}
!29 = !{!"ColorManagedViewSettings", !16, i64 0, !16, i64 4, !8, i64 8, !8, i64 72, !19, i64 136, !19, i64 140, !7, i64 144, !7, i64 152}
!30 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!31 = !{!"QuicktimeCodecSettings", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !12, i64 48, !12, i64 50, !16, i64 52, !16, i64 56, !16, i64 60}
!32 = !{!"FFMpegCodecData", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !19, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !7, i64 64}
!33 = !{!"rctf", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!34 = !{!"rcti", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!35 = !{!"BakeData", !28, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !19, i64 1280, !19, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!36 = !{!"AudioData", !16, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !16, i64 16, !12, i64 20, !12, i64 22, !19, i64 24, !19, i64 28}
!37 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!38 = !{!"GameData", !37, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !39, i64 40, !12, i64 64, !12, i64 66, !19, i64 68, !40, i64 72, !19, i64 128, !19, i64 132, !16, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180}
!39 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !19, i64 8, !19, i64 12, !7, i64 16}
!40 = !{!"RecastData", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !16, i64 40, !19, i64 44, !19, i64 48, !12, i64 52, !12, i64 54}
!41 = !{!"UnitSettings", !19, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!42 = !{!"PhysicsSettings", !8, i64 0, !16, i64 12, !16, i64 16, !16, i64 20}
!43 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!44 = distinct !{!44, !24}
!45 = !{!46, !7, i64 120}
!46 = !{!"Group", !15, i64 0, !18, i64 120, !16, i64 136, !8, i64 140}
!47 = !{!16, !16, i64 0}
!48 = !{!49, !12, i64 290}
!49 = !{!"SpaceOops", !7, i64 0, !7, i64 8, !18, i64 16, !16, i64 32, !19, i64 36, !8, i64 40, !50, i64 56, !18, i64 216, !7, i64 232, !8, i64 240, !51, i64 272, !12, i64 288, !12, i64 290, !12, i64 292, !12, i64 294, !7, i64 296}
!50 = !{!"View2D", !33, i64 0, !33, i64 16, !34, i64 32, !34, i64 48, !34, i64 64, !8, i64 80, !8, i64 88, !19, i64 96, !19, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !16, i64 136, !16, i64 140, !7, i64 144, !7, i64 152}
!51 = !{!"TreeStoreElem", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !7, i64 8}
!52 = !{!53, !12, i64 8948}
!53 = !{!"UserDef", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !16, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !16, i64 8484, !16, i64 8488, !16, i64 8492, !12, i64 8496, !12, i64 8498, !16, i64 8500, !16, i64 8504, !16, i64 8508, !16, i64 8512, !16, i64 8516, !16, i64 8520, !16, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !18, i64 8536, !18, i64 8552, !18, i64 8568, !18, i64 8584, !18, i64 8600, !18, i64 8616, !18, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !16, i64 8912, !16, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !19, i64 8956, !19, i64 8960, !16, i64 8964, !12, i64 8968, !12, i64 8970, !19, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !54, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !16, i64 10896, !16, i64 10900, !19, i64 10904, !19, i64 10908, !16, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !55, i64 10928}
!54 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!55 = !{!"WalkNavigation", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !12, i64 24, !8, i64 26}
!56 = !{!49, !12, i64 288}
!57 = !{!50, !12, i64 114}
!58 = !{!49, !12, i64 292}
!59 = !{!60, !7, i64 48}
!60 = !{!"TreeElement", !7, i64 0, !7, i64 8, !7, i64 16, !18, i64 24, !16, i64 40, !16, i64 44, !7, i64 48, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !7, i64 64, !7, i64 72, !61, i64 80}
!61 = !{!"PointerRNA", !62, i64 0, !7, i64 8, !7, i64 16}
!62 = !{!"", !7, i64 0}
!63 = !{!51, !12, i64 4}
!64 = !{!49, !12, i64 294}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = !{!68, !19, i64 28}
!68 = !{!"ARegion", !7, i64 0, !7, i64 8, !50, i64 16, !34, i64 176, !34, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !19, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !18, i64 248, !18, i64 264, !18, i64 280, !18, i64 296, !18, i64 312, !18, i64 328, !18, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!69 = !{!68, !19, i64 40}
!70 = !{!68, !19, i64 36}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = !{!50, !19, i64 24}
!74 = !{!50, !19, i64 8}
!75 = !{!50, !19, i64 28}
!76 = !{!60, !16, i64 44}
!77 = !{!68, !19, i64 44}
!78 = !{!51, !12, i64 0}
!79 = !{!60, !7, i64 72}
!80 = !{!60, !12, i64 58}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = !{!60, !12, i64 60}
!84 = !{!51, !7, i64 8}
!85 = !{!46, !7, i64 24}
!86 = !{!51, !12, i64 2}
!87 = !{!88, !7, i64 120}
!88 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !18, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !18, i64 144, !18, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !19, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !19, i64 524, !19, i64 528, !19, i64 532, !7, i64 536}
!89 = !{!14, !7, i64 296}
!90 = distinct !{!90, !24}
!91 = !{!12, !12, i64 0}
!92 = !{!60, !16, i64 40}
!93 = !{!60, !7, i64 64}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !24}
!96 = !{i8 0, i8 2}
!97 = distinct !{!97, !24}
!98 = !{!18, !7, i64 8}
!99 = !{!60, !7, i64 16}
!100 = !{!18, !7, i64 0}
!101 = !{!8, !8, i64 0}
!102 = !{!26, !7, i64 168}
!103 = !{!104, !7, i64 32}
!104 = !{!"Base", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!105 = !{!60, !12, i64 56}
!106 = !{!60, !7, i64 24}
!107 = !{!15, !7, i64 24}
!108 = !{!15, !12, i64 98}
!109 = !{!60, !12, i64 62}
!110 = distinct !{!110, !24}
!111 = distinct !{!111, !24}
!112 = !{!113, !7, i64 0}
!113 = !{!"DrawIconArg", !7, i64 0, !7, i64 8, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36}
!114 = !{!113, !7, i64 8}
!115 = !{!113, !19, i64 16}
!116 = !{!113, !19, i64 28}
!117 = !{!113, !19, i64 32}
!118 = !{!113, !19, i64 36}
!119 = !{!19, !19, i64 0}
!120 = !{!121, !16, i64 16}
!121 = !{!"ModifierData", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !8, i64 32, !7, i64 96, !7, i64 104}
!122 = !{!60, !7, i64 88}
!123 = !{!60, !7, i64 96}
!124 = !{!14, !12, i64 136}
!125 = !{!126, !12, i64 128}
!126 = !{!"Lamp", !15, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !16, i64 132, !12, i64 136, !12, i64 138, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !19, i64 192, !19, i64 196, !7, i64 200, !12, i64 208, !12, i64 210, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !12, i64 240, !12, i64 242, !12, i64 244, !12, i64 246, !8, i64 248, !8, i64 249, !12, i64 250, !12, i64 252, !12, i64 254, !12, i64 256, !12, i64 258, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !12, i64 276, !12, i64 278, !12, i64 280, !12, i64 282, !12, i64 284, !12, i64 286, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !19, i64 316, !19, i64 320, !19, i64 324, !19, i64 328, !19, i64 332, !19, i64 336, !12, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !12, i64 496, !12, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!127 = distinct !{!127, !24}
!128 = distinct !{!128, !24}
!129 = !{!113, !19, i64 20}
!130 = !{!113, !19, i64 24}
!131 = !{!53, !19, i64 10908}
!132 = !{!53, !16, i64 8524}
!133 = !{!134, !7, i64 136}
!134 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !16, i64 128, !12, i64 132, !12, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !16, i64 160, !16, i64 164, !7, i64 168, !18, i64 176, !18, i64 192, !18, i64 208, !18, i64 224, !18, i64 240}
!135 = !{!136, !12, i64 74}
!136 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !16, i64 20, !16, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !16, i64 48, !16, i64 52, !137, i64 56, !16, i64 64, !16, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !16, i64 108, !7, i64 112}
!137 = !{!"double", !8, i64 0}
!138 = !{!139, !16, i64 176}
!139 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !18, i64 32, !8, i64 48, !19, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !16, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !8, i64 308, !16, i64 320, !12, i64 324, !8, i64 326}
!140 = !{!141, !16, i64 132}
!141 = !{!"EditBone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !19, i64 104, !8, i64 108, !8, i64 120, !16, i64 132, !16, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !12, i64 180}
!142 = !{!61, !7, i64 0}
!143 = !{!144, !12, i64 72}
!144 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !18, i64 32, !7, i64 48, !7, i64 56, !16, i64 64, !19, i64 68, !12, i64 72, !12, i64 74, !16, i64 76, !7, i64 80, !16, i64 88, !8, i64 92, !19, i64 104, !19, i64 108}
!145 = !{!144, !7, i64 16}
!146 = !{!144, !7, i64 80}
!147 = !{!144, !16, i64 76}
!148 = !{!26, !16, i64 680}
!149 = distinct !{!149, !24}
!150 = distinct !{!150, !24}
!151 = !{!152, !7, i64 160}
!152 = !{!"bArmature", !15, i64 0, !7, i64 120, !18, i64 128, !18, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !12, i64 208, !12, i64 210, !16, i64 212, !16, i64 216, !16, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252}
!153 = distinct !{!153, !24}
!154 = !{!49, !7, i64 232}
!155 = !{!156, !7, i64 0}
!156 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !18, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !16, i64 2096, !16, i64 2100, !8, i64 2104, !16, i64 2108, !16, i64 2112, !8, i64 2116}
!157 = !{!14, !7, i64 288}
