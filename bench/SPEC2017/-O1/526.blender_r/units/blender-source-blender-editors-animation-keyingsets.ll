; ModuleID = 'blender/source/blender/editors/animation/keyingsets.c'
source_filename = "blender/source/blender/editors/animation/keyingsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.KeyingSetInfo = type { ptr, ptr, [64 x i8], [64 x i8], [240 x i8], i16, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.tRKS_DSource = type { ptr, ptr, %struct.PointerRNA }

@.str = private unnamed_addr constant [21 x i8] c"Add Empty Keying Set\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ANIM_OT_keying_set_add\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Add a new (empty) Keying Set to the active Scene\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Remove Active Keying Set\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ANIM_OT_keying_set_remove\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Remove the active Keying Set\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Add Empty Keying Set Path\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ANIM_OT_keying_set_path_add\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Add empty path to active Keying Set\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Remove Active Keying Set Path\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"ANIM_OT_keying_set_path_remove\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Remove active Path from active Keying Set\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Add to Keying Set\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"ANIM_OT_keyingset_button_add\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Add current UI-active property to current keying set\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Add all elements of the array to a Keying Set\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Remove from Keying Set\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"ANIM_OT_keyingset_button_remove\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"Remove current UI-active property from current keying set\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Set Active Keying Set\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"ANIM_OT_keying_set_active_set\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Select a new keying set as the active one\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DummyRNA_DEFAULT_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"Keying Set\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"The Keying Set to use\00", align 1
@builtin_keyingsets = dso_local global %struct.ListBase zeroinitializer, align 8
@keyingset_type_infos = internal global %struct.ListBase zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"Available\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"__ACTIVE__\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Active Keying Set\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [13 x i8] c"tRKS_DSource\00", align 1
@.str.31 = private unnamed_addr constant [74 x i8] c"Skipping path in keying set, as it has no ID (KS = '%s', path = '%s[%d]')\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"No active keying set to remove\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Cannot remove built in keying set\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"No active keying set to add empty path to\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"KeyingSetPath Empty\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"No active keying set path to remove\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"No active keying set to remove a path from\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"ButtonKeyingSet\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Button Keying Set\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"Cannot add property to built in keying set\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Property added to Keying Set: '%s'\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"No active keying set to remove property from\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"Cannot remove property from built in keying set\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Property removed from Keying Set\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keying_set_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_default_keyingset_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @keyingset_poll_default_add, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_default_keyingset_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %3, i16 noundef signext 0) #8
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %6 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, i16 noundef signext 2, i16 noundef signext %4) #8
  %7 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #8
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  store i32 %7, ptr %8, align 4, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @keyingset_poll_default_add(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keying_set_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_active_keyingset_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @keyingset_poll_active_edit, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @remove_active_keyingset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.32) #8
  br label %21

10:                                               ; preds = %2
  %11 = icmp slt i32 %5, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.33) #8
  br label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %17 = add nsw i32 %5, -1
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %16, i32 noundef %17) #8
  tail call void @BKE_keyingset_free(ptr noundef %18) #8
  tail call void @BLI_freelinkN(ptr noundef nonnull %16, ptr noundef %18) #8
  %19 = load i32, ptr %4, align 4, !tbaa !46
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %4, align 4, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #8
  br label %21

21:                                               ; preds = %15, %12, %7
  %22 = phi i32 [ 2, %7 ], [ 2, %12 ], [ 4, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @keyingset_poll_active_edit(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %4, %8, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keying_set_path_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_empty_ks_path_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @keyingset_poll_active_edit, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_empty_ks_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.34) #8
  br label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %12 = add nsw i32 %5, -1
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %12) #8
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %15 = tail call ptr %14(i64 noundef 112, ptr noundef nonnull @.str.35) #8
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %13, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %15) #8
  %17 = tail call i32 @BLI_countlist(ptr noundef nonnull %16) #8
  %18 = getelementptr inbounds %struct.KeyingSet, ptr %13, i64 0, i32 9
  store i32 %17, ptr %18, align 4, !tbaa !73
  %19 = getelementptr inbounds %struct.KS_Path, ptr %15, i64 0, i32 5
  store i16 2, ptr %19, align 4, !tbaa !75
  %20 = getelementptr inbounds %struct.KS_Path, ptr %15, i64 0, i32 4
  store i32 16975, ptr %20, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.KS_Path, ptr %15, i64 0, i32 9
  store i16 1, ptr %21, align 4, !tbaa !78
  br label %22

22:                                               ; preds = %10, %7
  %23 = phi i32 [ 2, %7 ], [ 4, %10 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keying_set_path_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_active_ks_path_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @keyingset_poll_activePath_edit, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @remove_active_ks_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = add nsw i32 %6, -1
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %8, i64 0, i32 2
  %12 = getelementptr inbounds %struct.KeyingSet, ptr %8, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !73
  %14 = add nsw i32 %13, -1
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  tail call void @BKE_keyingset_free_path(ptr noundef nonnull %8, ptr noundef nonnull %15) #8
  %18 = load i32, ptr %12, align 4, !tbaa !73
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %12, align 4, !tbaa !73
  br label %26

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.36) #8
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.37) #8
  br label %26

26:                                               ; preds = %20, %17, %23
  %27 = phi i32 [ 2, %23 ], [ 4, %17 ], [ 2, %20 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @keyingset_poll_activePath_edit(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 35
  %10 = add nsw i32 %6, -1
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %9, i32 noundef %10) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.KeyingSet, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.KeyingSet, ptr %11, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %8, %13, %17, %4, %1
  %23 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 0, %13 ], [ 0, %8 ], [ %21, %17 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keyingset_button_add(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_keyingset_button_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_keyingset_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr null, ptr %3, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.15) #8
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 34
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %6, i16 noundef signext 0) #8
  %15 = icmp eq ptr %6, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 22
  %20 = load i16, ptr %19, align 2, !tbaa !85
  %21 = and i16 %20, 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !92
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %31

27:                                               ; preds = %13
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !92
  %29 = and i16 %28, 8
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %23, %16
  %32 = or i16 %14, 32
  br label %33

33:                                               ; preds = %31, %27, %23
  %34 = phi i16 [ %32, %31 ], [ %14, %23 ], [ %14, %27 ]
  %35 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 35
  %36 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull %35, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i16 noundef signext 2, i16 noundef signext %34) #8
  %37 = tail call i32 @BLI_countlist(ptr noundef nonnull %35) #8
  store i32 %37, ptr %10, align 4, !tbaa !46
  br label %47

38:                                               ; preds = %2
  %39 = icmp slt i32 %11, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.40) #8
  br label %81

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 35
  %45 = add nsw i32 %11, -1
  %46 = tail call ptr @BLI_findlink(ptr noundef nonnull %44, i32 noundef %45) #8
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi ptr [ %36, %33 ], [ %46, %43 ]
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  %49 = load ptr, ptr %4, align 8, !tbaa !96
  %50 = icmp ne ptr %49, null
  %51 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = icmp ne ptr %52, null
  %54 = select i1 %50, i1 %53, i1 false
  %55 = load ptr, ptr %3, align 8
  %56 = icmp ne ptr %55, null
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %81

58:                                               ; preds = %47
  %59 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %4, ptr noundef nonnull %55) #8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %3, align 8, !tbaa !72
  %63 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %4, ptr noundef %62) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = and i32 %9, 255
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, ptr %5, align 4, !tbaa !82
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i16 [ 1, %68 ], [ 0, %65 ]
  %71 = load ptr, ptr %4, align 8, !tbaa !96
  %72 = load i32, ptr %5, align 4, !tbaa !82
  %73 = call ptr @BKE_keyingset_add_path(ptr noundef %48, ptr noundef %71, ptr noundef null, ptr noundef nonnull %63, i32 noundef %72, i16 noundef signext %70, i16 noundef signext 2) #8
  %74 = getelementptr inbounds %struct.KeyingSet, ptr %48, i64 0, i32 2
  %75 = call i32 @BLI_countlist(ptr noundef nonnull %74) #8
  %76 = getelementptr inbounds %struct.KeyingSet, ptr %48, i64 0, i32 9
  store i32 %75, ptr %76, align 4, !tbaa !73
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %77(ptr noundef nonnull %63) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #8
  %78 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !69
  %80 = getelementptr inbounds %struct.KeyingSet, ptr %48, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %79, i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef nonnull %80) #8
  br label %81

81:                                               ; preds = %69, %61, %58, %47, %40
  %82 = phi i32 [ 2, %40 ], [ 4, %69 ], [ 2, %61 ], [ 2, %58 ], [ 2, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %82
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keyingset_button_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_keyingset_button_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @remove_keyingset_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr null, ptr %3, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !82
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 34
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.42) #8
  br label %46

13:                                               ; preds = %2
  %14 = icmp slt i32 %8, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %17, i32 noundef 32, ptr noundef nonnull @.str.43) #8
  br label %46

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 35
  %20 = add nsw i32 %8, -1
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %20) #8
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  %22 = load ptr, ptr %4, align 8, !tbaa !96
  %23 = icmp ne ptr %22, null
  %24 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  %27 = select i1 %23, i1 %26, i1 false
  %28 = load ptr, ptr %3, align 8
  %29 = icmp ne ptr %28, null
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %46

31:                                               ; preds = %18
  %32 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %4, ptr noundef nonnull %28) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 8, !tbaa !96
  %36 = getelementptr inbounds %struct.KeyingSet, ptr %21, i64 0, i32 4
  %37 = load i32, ptr %5, align 4, !tbaa !82
  %38 = call ptr @BKE_keyingset_find_path(ptr noundef %21, ptr noundef %35, ptr noundef nonnull %36, ptr noundef nonnull %32, i32 noundef %37, i32 noundef 2) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  call void @BKE_keyingset_free_path(ptr noundef %21, ptr noundef nonnull %38) #8
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %41(ptr noundef nonnull %32) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #8
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  call void @BKE_report(ptr noundef %43, i32 noundef 2, ptr noundef nonnull @.str.44) #8
  br label %46

44:                                               ; preds = %34
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %45(ptr noundef nonnull %32) #8
  br label %46

46:                                               ; preds = %44, %40, %18, %31, %15, %10
  %47 = phi i32 [ 2, %10 ], [ 2, %15 ], [ 4, %40 ], [ 2, %18 ], [ 2, %31 ], [ 2, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keying_set_active_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @keyingset_active_menu_invoke, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @keyingset_active_menu_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @keyingset_active_menu_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %6, i32 noundef 0) #8
  %8 = tail call ptr @uiPupMenuLayout(ptr noundef %7) #8
  tail call void @uiItemsEnumO(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #8
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %7) #8
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @keyingset_active_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.24) #8
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  store i32 %6, ptr %7, align 4, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #8
  ret i32 4
}

declare i32 @ED_operator_areaactive(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ANIM_keying_sets_enum_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !82
  %9 = icmp eq ptr %0, null
  br i1 %9, label %99, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 34
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  store ptr @.str.28, ptr %15, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  store ptr @.str.29, ptr %16, align 8, !tbaa !103
  store i32 0, ptr %6, align 8, !tbaa !104
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  call void @RNA_enum_item_add_separator(ptr noundef nonnull %5, ptr noundef nonnull %7) #8
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 35
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %23 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %24 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 4
  br label %25

25:                                               ; preds = %21, %53
  %26 = phi i32 [ 1, %21 ], [ %55, %53 ]
  %27 = phi ptr [ %19, %21 ], [ %54, %53 ]
  %28 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 7
  %29 = load i16, ptr %28, align 8, !tbaa !105
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 6
  %34 = load i8, ptr %33, align 1, !tbaa !106
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call ptr @BLI_findstring(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %33, i32 noundef 16) #8
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi ptr [ %37, %36 ], [ null, %32 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.KeyingSetInfo, ptr %39, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !107
  %44 = call i32 %43(ptr noundef nonnull %39, ptr noundef nonnull %0) #8
  %45 = trunc i32 %44 to i8
  br label %46

46:                                               ; preds = %25, %38, %41
  %47 = phi i8 [ %45, %41 ], [ 0, %38 ], [ 1, %25 ]
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 3
  store ptr %50, ptr %22, align 8, !tbaa !101
  %51 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 4
  store ptr %51, ptr %23, align 8, !tbaa !103
  %52 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 5
  store ptr %52, ptr %24, align 8, !tbaa !109
  store i32 %26, ptr %6, align 8, !tbaa !104
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  br label %53

53:                                               ; preds = %46, %49
  %54 = load ptr, ptr %27, align 8, !tbaa !110
  %55 = add nuw nsw i32 %26, 1
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %25, !llvm.loop !111

57:                                               ; preds = %53
  call void @RNA_enum_item_add_separator(ptr noundef nonnull %5, ptr noundef nonnull %7) #8
  br label %58

58:                                               ; preds = %57, %17
  %59 = load ptr, ptr @builtin_keyingsets, align 8, !tbaa !72
  %60 = icmp eq ptr %59, null
  br i1 %60, label %97, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %63 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %64 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 4
  br label %65

65:                                               ; preds = %61, %93
  %66 = phi ptr [ %59, %61 ], [ %95, %93 ]
  %67 = phi i32 [ -1, %61 ], [ %94, %93 ]
  %68 = getelementptr inbounds %struct.KeyingSet, ptr %66, i64 0, i32 7
  %69 = load i16, ptr %68, align 8, !tbaa !105
  %70 = and i16 %69, 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.KeyingSet, ptr %66, i64 0, i32 6
  %74 = load i8, ptr %73, align 1, !tbaa !106
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call ptr @BLI_findstring(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %73, i32 noundef 16) #8
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi ptr [ %77, %76 ], [ null, %72 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.KeyingSetInfo, ptr %79, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !107
  %84 = call i32 %83(ptr noundef nonnull %79, ptr noundef nonnull %0) #8
  %85 = trunc i32 %84 to i8
  br label %86

86:                                               ; preds = %65, %78, %81
  %87 = phi i8 [ %85, %81 ], [ 0, %78 ], [ 1, %65 ]
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.KeyingSet, ptr %66, i64 0, i32 3
  store ptr %90, ptr %62, align 8, !tbaa !101
  %91 = getelementptr inbounds %struct.KeyingSet, ptr %66, i64 0, i32 4
  store ptr %91, ptr %63, align 8, !tbaa !103
  %92 = getelementptr inbounds %struct.KeyingSet, ptr %66, i64 0, i32 5
  store ptr %92, ptr %64, align 8, !tbaa !109
  store i32 %67, ptr %6, align 8, !tbaa !104
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  br label %93

93:                                               ; preds = %86, %89
  %94 = add nsw i32 %67, -1
  %95 = load ptr, ptr %66, align 8, !tbaa !72
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %65, !llvm.loop !114

97:                                               ; preds = %93, %58
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #8
  store i8 1, ptr %3, align 1, !tbaa !106
  %98 = load ptr, ptr %5, align 8, !tbaa !72
  br label %99

99:                                               ; preds = %4, %97
  %100 = phi ptr [ %98, %97 ], [ @DummyRNA_DEFAULT_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret ptr %100
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ANIM_keyingset_info_find_name(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !106
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @BLI_findstring(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %0, i32 noundef 16) #8
  br label %8

8:                                                ; preds = %1, %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %9
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ANIM_builtin_keyingset_get_named(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i8, ptr %1, align 1, !tbaa !106
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %5
  %11 = load ptr, ptr @builtin_keyingsets, align 8, !tbaa !115
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12, %20
  %16 = phi ptr [ %21, %20 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.KeyingSet, ptr %16, i64 0, i32 3
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !110
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !116

23:                                               ; preds = %15, %20, %12, %2
  %24 = phi ptr [ null, %2 ], [ null, %12 ], [ null, %20 ], [ %16, %15 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_keyingset_info_register(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !117
  %6 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull @builtin_keyingsets, ptr noundef nonnull %2, ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext %5) #8
  %7 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %8 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 5
  %9 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 4
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef 240) #8
  tail call void @BLI_addtail(ptr noundef nonnull @keyingset_type_infos, ptr noundef %0) #8
  ret void
}

declare ptr @BKE_keyingset_add(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_keyingset_info_unregister(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @builtin_keyingsets, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.KeyingSetInfo, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %8

8:                                                ; preds = %5, %25
  %9 = phi ptr [ %3, %5 ], [ %10, %25 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %9, i64 0, i32 6
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %6) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  tail call void @BKE_keyingset_free(ptr noundef nonnull %9) #8
  tail call void @BLI_remlink(ptr noundef nonnull @builtin_keyingsets, ptr noundef nonnull %9) #8
  %15 = load ptr, ptr %7, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 35
  %20 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %19, ptr noundef nonnull %9) #8
  %21 = load ptr, ptr %18, align 8, !tbaa !72
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17, !llvm.loop !118

23:                                               ; preds = %17, %14
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %24(ptr noundef nonnull %9) #8
  br label %25

25:                                               ; preds = %8, %23
  %26 = icmp eq ptr %10, null
  br i1 %26, label %27, label %8, !llvm.loop !119

27:                                               ; preds = %25, %2
  tail call void @BLI_freelinkN(ptr noundef nonnull @keyingset_type_infos, ptr noundef %1) #8
  ret void
}

declare void @BKE_keyingset_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_keyingset_infos_exit() local_unnamed_addr #1 {
  %1 = load ptr, ptr @keyingset_type_infos, align 8, !tbaa !115
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0, %12
  %4 = phi ptr [ %5, %12 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 9, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  tail call void %7(ptr noundef %11) #8
  br label %12

12:                                               ; preds = %9, %3
  tail call void @BLI_freelinkN(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %4) #8
  %13 = icmp eq ptr %5, null
  br i1 %13, label %14, label %3, !llvm.loop !123

14:                                               ; preds = %12, %0
  tail call void @BKE_keyingsets_free(ptr noundef nonnull @builtin_keyingsets) #8
  ret void
}

declare void @BKE_keyingsets_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ANIM_keyingset_find_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  %8 = tail call ptr @BLI_findptr(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 16) #8
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 0, %2 ]
  ret i8 %12
}

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ANIM_scene_get_active_keyingset(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 34
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  %9 = add nsw i32 %5, -1
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %9) #8
  br label %14

11:                                               ; preds = %3
  %12 = xor i32 %5, -1
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull @builtin_keyingsets, i32 noundef %12) #8
  br label %14

14:                                               ; preds = %1, %11, %7
  %15 = phi ptr [ %10, %7 ], [ %13, %11 ], [ null, %1 ]
  ret ptr %15
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ANIM_scene_get_keyingset_index(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef nonnull %1) #8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %8, 1
  br label %15

12:                                               ; preds = %6, %4
  %13 = tail call i32 @BLI_findindex(ptr noundef nonnull @builtin_keyingsets, ptr noundef nonnull %1) #8
  %14 = xor i32 %13, -1
  br label %15

15:                                               ; preds = %12, %2, %10
  %16 = phi i32 [ %11, %10 ], [ 0, %2 ], [ %14, %12 ]
  ret i32 %16
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 22
  %8 = load i16, ptr %7, align 2, !tbaa !85
  %9 = and i16 %8, 64
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !92
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %33, label %19

15:                                               ; preds = %2
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !92
  %17 = and i16 %16, 64
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %15, %11, %4
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 34
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  br i1 %3, label %69, label %24

24:                                               ; preds = %23
  %25 = icmp sgt i32 %21, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  %28 = add nsw i32 %21, -1
  %29 = tail call ptr @BLI_findlink(ptr noundef nonnull %27, i32 noundef %28) #8
  br label %69

30:                                               ; preds = %24
  %31 = xor i32 %21, -1
  %32 = tail call ptr @BLI_findlink(ptr noundef nonnull @builtin_keyingsets, i32 noundef %31) #8
  br label %69

33:                                               ; preds = %19, %15, %11
  br i1 %3, label %45, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %36 = load ptr, ptr %35, align 8, !tbaa !84
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %36, i64 0, i32 22
  %38 = load i16, ptr %37, align 2, !tbaa !85
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !92
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %58, label %49

45:                                               ; preds = %33
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !92
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45, %41, %34
  br label %50

50:                                               ; preds = %49, %54
  %51 = phi ptr [ %52, %54 ], [ @builtin_keyingsets, %49 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.KeyingSet, ptr %52, i64 0, i32 3
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.27, ptr noundef nonnull dereferenceable(1) %55) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %50, !llvm.loop !116

58:                                               ; preds = %45, %41
  %59 = load i8, ptr %1, align 1, !tbaa !106
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58, %65
  %62 = phi ptr [ %63, %65 ], [ @builtin_keyingsets, %58 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !72
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.KeyingSet, ptr %63, i64 0, i32 3
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %66) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %61, !llvm.loop !116

69:                                               ; preds = %54, %50, %65, %61, %30, %26, %23, %58
  %70 = phi ptr [ null, %58 ], [ %29, %26 ], [ %32, %30 ], [ null, %23 ], [ %63, %65 ], [ null, %61 ], [ %52, %54 ], [ null, %50 ]
  ret ptr %70
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_add_separator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ANIM_keyingset_context_ok_poll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.KeyingSet, ptr %1, i64 0, i32 7
  %4 = load i16, ptr %3, align 8, !tbaa !105
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyingSet, ptr %1, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !106
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BLI_findstring(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %8, i32 noundef 16) #8
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.KeyingSetInfo, ptr %14, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = tail call i32 %18(ptr noundef nonnull %14, ptr noundef %0) #8
  %20 = trunc i32 %19 to i8
  br label %21

21:                                               ; preds = %2, %16, %13
  %22 = phi i8 [ %20, %16 ], [ 0, %13 ], [ 1, %2 ]
  ret i8 %22
}

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_relative_keyingset_add_source(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  %10 = icmp eq ptr %1, null
  %11 = and i1 %10, %9
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str.30) #8
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %14) #8
  %15 = icmp ne ptr %2, null
  %16 = icmp ne ptr %3, null
  %17 = and i1 %15, %16
  %18 = getelementptr inbounds %struct.tRKS_DSource, ptr %14, i64 0, i32 2
  br i1 %17, label %19, label %20

19:                                               ; preds = %12
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %18) #8
  br label %21

20:                                               ; preds = %12
  tail call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %18) #8
  br label %21

21:                                               ; preds = %19, %20, %6, %4
  ret void
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.KeyingSet, ptr %2, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !105
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %2, i64 0, i32 6
  %12 = load i8, ptr %11, align 1, !tbaa !106
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @BLI_findstring(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %11, i32 noundef 16) #8
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %15, %14 ], [ null, %10 ]
  tail call void @BKE_keyingset_free(ptr noundef nonnull %2) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.KeyingSetInfo, ptr %17, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !107
  %22 = tail call i32 %21(ptr noundef nonnull %17, ptr noundef %0) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %1, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.KeyingSetInfo, ptr %17, i64 0, i32 8
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %27, %29 ], [ %35, %31 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !124
  %34 = getelementptr inbounds %struct.tRKS_DSource, ptr %32, i64 0, i32 2
  tail call void %33(ptr noundef nonnull %17, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %34) #8
  %35 = load ptr, ptr %32, align 8, !tbaa !72
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %31, !llvm.loop !125

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.KeyingSetInfo, ptr %17, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !126
  tail call void %39(ptr noundef nonnull %17, ptr noundef %0, ptr noundef nonnull %2) #8
  br label %40

40:                                               ; preds = %31, %26, %37
  %41 = getelementptr inbounds %struct.KeyingSet, ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !115
  %43 = icmp ne ptr %42, null
  br label %44

44:                                               ; preds = %19, %40, %16
  %45 = phi i16 [ -2, %16 ], [ -1, %40 ], [ -1, %19 ]
  %46 = phi i1 [ false, %16 ], [ %43, %40 ], [ false, %19 ]
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %5
  br label %48

48:                                               ; preds = %44, %3, %47
  %49 = phi i16 [ %45, %44 ], [ 0, %47 ], [ 0, %3 ]
  ret i16 %49
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, float noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %11 = tail call ptr @CTX_wm_reports(ptr noundef %0) #8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %157, label %13

13:                                               ; preds = %6
  %14 = icmp eq i16 %4, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 8
  %17 = load i16, ptr %16, align 2, !tbaa !127
  %18 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %10, i16 noundef signext 1) #8
  %19 = or i16 %18, %17
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i16 [ %19, %15 ], [ 0, %13 ]
  %22 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 7
  %23 = load i16, ptr %22, align 8, !tbaa !105
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 6
  %28 = load i8, ptr %27, align 1, !tbaa !106
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @BLI_findstring(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %27, i32 noundef 16) #8
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi ptr [ %31, %30 ], [ null, %26 ]
  tail call void @BKE_keyingset_free(ptr noundef nonnull %3) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.KeyingSetInfo, ptr %33, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !107
  %38 = tail call i32 %37(ptr noundef nonnull %33, ptr noundef %0) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = icmp eq ptr %1, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %1, align 8, !tbaa !72
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.KeyingSetInfo, ptr %33, i64 0, i32 8
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi ptr [ %43, %45 ], [ %51, %47 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !124
  %50 = getelementptr inbounds %struct.tRKS_DSource, ptr %48, i64 0, i32 2
  tail call void %49(ptr noundef nonnull %33, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %50) #8
  %51 = load ptr, ptr %48, align 8, !tbaa !72
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %47, !llvm.loop !125

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.KeyingSetInfo, ptr %33, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !126
  tail call void %55(ptr noundef nonnull %33, ptr noundef %0, ptr noundef nonnull %3) #8
  br label %56

56:                                               ; preds = %47, %53, %42
  %57 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !115
  %59 = icmp ne ptr %58, null
  br label %60

60:                                               ; preds = %56, %35, %32
  %61 = phi i16 [ -2, %32 ], [ -1, %56 ], [ -1, %35 ]
  %62 = phi i1 [ false, %32 ], [ %59, %56 ], [ false, %35 ]
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %20
  br label %64

64:                                               ; preds = %60, %63
  %65 = phi i16 [ %61, %60 ], [ 0, %63 ]
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = sext i16 %65 to i32
  br label %157

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !72
  %72 = icmp eq ptr %71, null
  br i1 %72, label %157, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 4
  %75 = icmp eq i16 %4, 1
  %76 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 4
  br label %77

77:                                               ; preds = %73, %153
  %78 = phi ptr [ %71, %73 ], [ %155, %153 ]
  %79 = phi i32 [ 0, %73 ], [ %154, %153 ]
  %80 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !128
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !129
  %86 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 8
  %87 = load i32, ptr %86, align 8, !tbaa !130
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %11, i32 noundef 16, ptr noundef nonnull @.str.31, ptr noundef nonnull %76, ptr noundef %85, i32 noundef %87) #8
  br label %153

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 10
  %90 = load i16, ptr %89, align 2, !tbaa !131
  %91 = or i16 %90, %21
  %92 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 5
  %93 = load i16, ptr %92, align 4, !tbaa !75
  switch i16 %93, label %95 [
    i16 1, label %97
    i16 2, label %94
  ]

94:                                               ; preds = %88
  br label %97

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 3
  br label %97

97:                                               ; preds = %88, %94, %95
  %98 = phi ptr [ %74, %94 ], [ %96, %95 ], [ null, %88 ]
  %99 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 8
  %100 = load i32, ptr %99, align 8, !tbaa !130
  %101 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 9
  %102 = load i16, ptr %101, align 4, !tbaa !78
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %106 = load ptr, ptr %80, align 8, !tbaa !128
  call void @RNA_id_pointer_create(ptr noundef %106, ptr noundef nonnull %7) #8
  %107 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !129
  %109 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %7, ptr noundef %108, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = load ptr, ptr %9, align 8, !tbaa !72
  %113 = call i32 @RNA_property_array_length(ptr noundef nonnull %8, ptr noundef %112) #8
  br label %114

114:                                              ; preds = %111, %105
  %115 = phi i32 [ %113, %111 ], [ %100, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  br label %116

116:                                              ; preds = %114, %97
  %117 = phi i32 [ %115, %114 ], [ %100, %97 ]
  %118 = icmp eq i32 %117, %100
  %119 = zext i1 %118 to i32
  %120 = add nsw i32 %117, %119
  %121 = icmp slt i32 %100, %120
  br i1 %121, label %122, label %145

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 7
  %124 = getelementptr inbounds %struct.KS_Path, ptr %78, i64 0, i32 7
  br label %125

125:                                              ; preds = %122, %141
  %126 = phi i32 [ %100, %122 ], [ %143, %141 ]
  %127 = phi i32 [ %79, %122 ], [ %142, %141 ]
  br i1 %14, label %128, label %134

128:                                              ; preds = %125
  %129 = load ptr, ptr %80, align 8, !tbaa !128
  %130 = load ptr, ptr %124, align 8, !tbaa !129
  %131 = call signext i16 @insert_keyframe(ptr noundef %11, ptr noundef %129, ptr noundef %2, ptr noundef %98, ptr noundef %130, i32 noundef %126, float noundef %5, i16 noundef signext %91) #8
  %132 = sext i16 %131 to i32
  %133 = add nsw i32 %127, %132
  br label %141

134:                                              ; preds = %125
  br i1 %75, label %135, label %141

135:                                              ; preds = %134
  %136 = load ptr, ptr %80, align 8, !tbaa !128
  %137 = load ptr, ptr %123, align 8, !tbaa !129
  %138 = call signext i16 @delete_keyframe(ptr noundef %11, ptr noundef %136, ptr noundef %2, ptr noundef %98, ptr noundef %137, i32 noundef %126, float noundef %5, i16 noundef signext %91) #8
  %139 = sext i16 %138 to i32
  %140 = add nsw i32 %127, %139
  br label %141

141:                                              ; preds = %128, %135, %134
  %142 = phi i32 [ %133, %128 ], [ %140, %135 ], [ %127, %134 ]
  %143 = add i32 %126, 1
  %144 = icmp eq i32 %143, %120
  br i1 %144, label %145, label %125, !llvm.loop !132

145:                                              ; preds = %141, %116
  %146 = phi i32 [ %79, %116 ], [ %142, %141 ]
  %147 = load ptr, ptr %80, align 8, !tbaa !128
  %148 = getelementptr inbounds %struct.ID, ptr %147, i64 0, i32 4
  %149 = load i16, ptr %148, align 8, !tbaa !133
  %150 = icmp eq i16 %149, 16975
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  call void @DAG_id_tag_update(ptr noundef %147, i16 noundef signext 7) #8
  br label %152

152:                                              ; preds = %145, %151
  call void @WM_main_add_notifier(i32 noundef 239468547, ptr noundef null) #8
  br label %153

153:                                              ; preds = %152, %83
  %154 = phi i32 [ %79, %83 ], [ %146, %152 ]
  %155 = load ptr, ptr %78, align 8, !tbaa !72
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %77, !llvm.loop !134

157:                                              ; preds = %153, %69, %6, %67
  %158 = phi i32 [ %68, %67 ], [ 0, %6 ], [ 0, %69 ], [ %154, %153 ]
  ret i32 %158
}

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare signext i16 @delete_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_keyingset_free_path(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyingset_add_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_keyingset_find_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!47, !49, i64 4380}
!47 = !{!"Scene", !48, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !49, i64 232, !49, i64 236, !49, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !50, i64 280, !60, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !49, i64 4380, !39, i64 4384, !61, i64 4400, !62, i64 4416, !65, i64 4600, !36, i64 4608, !66, i64 4616, !36, i64 4640, !67, i64 4648, !67, i64 4656, !53, i64 4664, !54, i64 4824, !68, i64 4888, !36, i64 4952}
!48 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !36, i64 112}
!49 = !{!"int", !37, i64 0}
!50 = !{!"RenderData", !51, i64 0, !36, i64 248, !36, i64 256, !55, i64 264, !56, i64 328, !49, i64 400, !49, i64 404, !49, i64 408, !52, i64 412, !49, i64 416, !49, i64 420, !49, i64 424, !49, i64 428, !41, i64 432, !41, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !49, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !49, i64 484, !49, i64 488, !41, i64 492, !41, i64 494, !49, i64 496, !49, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !49, i64 516, !49, i64 520, !49, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !57, i64 544, !57, i64 560, !58, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !49, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !52, i64 660, !52, i64 664, !41, i64 668, !41, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !49, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !49, i64 2520, !41, i64 2524, !41, i64 2526, !52, i64 2528, !52, i64 2532, !41, i64 2536, !41, i64 2538, !52, i64 2540, !41, i64 2544, !41, i64 2546, !49, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !49, i64 2576, !52, i64 2580, !37, i64 2584, !59, i64 2616, !49, i64 3976, !49, i64 3980}
!51 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !53, i64 24, !54, i64 184}
!52 = !{!"float", !37, i64 0}
!53 = !{!"ColorManagedViewSettings", !49, i64 0, !49, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!54 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!55 = !{!"QuicktimeCodecSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !41, i64 48, !41, i64 50, !49, i64 52, !49, i64 56, !49, i64 60}
!56 = !{!"FFMpegCodecData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !52, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !36, i64 64}
!57 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!58 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!59 = !{!"BakeData", !51, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!60 = !{!"AudioData", !49, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !49, i64 16, !41, i64 20, !41, i64 22, !52, i64 24, !52, i64 28}
!61 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!62 = !{!"GameData", !61, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !63, i64 40, !41, i64 64, !41, i64 66, !52, i64 68, !64, i64 72, !52, i64 128, !52, i64 132, !49, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!63 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!64 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !49, i64 40, !52, i64 44, !52, i64 48, !41, i64 52, !41, i64 54}
!65 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!66 = !{!"PhysicsSettings", !37, i64 0, !49, i64 12, !49, i64 16, !49, i64 20}
!67 = !{!"long", !37, i64 0}
!68 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!69 = !{!70, !36, i64 120}
!70 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!71 = !{!47, !36, i64 4384}
!72 = !{!36, !36, i64 0}
!73 = !{!74, !49, i64 468}
!74 = !{!"KeyingSet", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 32, !37, i64 96, !37, i64 160, !37, i64 400, !41, i64 464, !41, i64 466, !49, i64 468}
!75 = !{!76, !41, i64 92}
!76 = !{!"KS_Path", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !49, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !49, i64 104, !41, i64 108, !41, i64 110}
!77 = !{!76, !49, i64 88}
!78 = !{!76, !41, i64 108}
!79 = !{!74, !36, i64 16}
!80 = !{!35, !41, i64 184}
!81 = !{!35, !36, i64 88}
!82 = !{!49, !49, i64 0}
!83 = !{!70, !36, i64 112}
!84 = !{!47, !36, i64 264}
!85 = !{!86, !41, i64 346}
!86 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !52, i64 32, !52, i64 36, !52, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !52, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !87, i64 64, !89, i64 168, !52, i64 336, !52, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !52, i64 352, !52, i64 356, !52, i64 360, !52, i64 364, !52, i64 368, !52, i64 372, !52, i64 376, !52, i64 380, !52, i64 384, !52, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !49, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !41, i64 464, !41, i64 466, !49, i64 468, !52, i64 472, !52, i64 476, !90, i64 480, !91, i64 608}
!87 = !{!"ImagePaintSettings", !88, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !49, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !52, i64 100}
!88 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !49, i64 28, !49, i64 32, !49, i64 36}
!89 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !52, i64 128, !52, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !36, i64 152, !36, i64 160}
!90 = !{!"UnifiedPaintSettings", !49, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !37, i64 16, !37, i64 28, !49, i64 40, !37, i64 44, !52, i64 52, !49, i64 56, !49, i64 60, !37, i64 64, !37, i64 65, !52, i64 72, !37, i64 76, !49, i64 84, !52, i64 88, !37, i64 92, !37, i64 100, !49, i64 108, !36, i64 112, !52, i64 120, !49, i64 124}
!91 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !37, i64 20, !37, i64 21, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36}
!92 = !{!93, !41, i64 8978}
!93 = !{!"UserDef", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !49, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !49, i64 8484, !49, i64 8488, !49, i64 8492, !41, i64 8496, !41, i64 8498, !49, i64 8500, !49, i64 8504, !49, i64 8508, !49, i64 8512, !49, i64 8516, !49, i64 8520, !49, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !49, i64 8912, !49, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !52, i64 8956, !52, i64 8960, !49, i64 8964, !41, i64 8968, !41, i64 8970, !52, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !94, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !49, i64 10896, !49, i64 10900, !52, i64 10904, !52, i64 10908, !49, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !95, i64 10928}
!94 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!95 = !{!"WalkNavigation", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !41, i64 24, !37, i64 26}
!96 = !{!97, !36, i64 0}
!97 = !{!"PointerRNA", !98, i64 0, !36, i64 8, !36, i64 16}
!98 = !{!"", !36, i64 0}
!99 = !{!35, !36, i64 48}
!100 = !{!70, !36, i64 88}
!101 = !{!102, !36, i64 8}
!102 = !{!"EnumPropertyItem", !49, i64 0, !36, i64 8, !49, i64 16, !36, i64 24, !36, i64 32}
!103 = !{!102, !36, i64 24}
!104 = !{!102, !49, i64 0}
!105 = !{!74, !41, i64 464}
!106 = !{!37, !37, i64 0}
!107 = !{!108, !36, i64 392}
!108 = !{!"KeyingSetInfo", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !41, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !40, i64 416}
!109 = !{!102, !36, i64 32}
!110 = !{!74, !36, i64 0}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = distinct !{!114, !112, !113}
!115 = !{!39, !36, i64 0}
!116 = distinct !{!116, !112, !113}
!117 = !{!108, !41, i64 384}
!118 = distinct !{!118, !112, !113}
!119 = distinct !{!119, !112, !113}
!120 = !{!108, !36, i64 0}
!121 = !{!108, !36, i64 440}
!122 = !{!108, !36, i64 416}
!123 = distinct !{!123, !112, !113}
!124 = !{!108, !36, i64 408}
!125 = distinct !{!125, !112, !113}
!126 = !{!108, !36, i64 400}
!127 = !{!74, !41, i64 466}
!128 = !{!76, !36, i64 16}
!129 = !{!76, !36, i64 96}
!130 = !{!76, !49, i64 104}
!131 = !{!76, !41, i64 110}
!132 = distinct !{!132, !112, !113}
!133 = !{!41, !41, i64 0}
!134 = distinct !{!134, !112, !113}
