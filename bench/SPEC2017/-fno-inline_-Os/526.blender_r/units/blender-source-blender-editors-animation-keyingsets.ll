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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_default_keyingset_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !46 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %3, i16 noundef signext 0) #9
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %6 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, i16 noundef signext 2, i16 noundef signext %4) #9
  %7 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  store i32 %7, ptr %8, align 4, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @keyingset_poll_default_add(ptr noundef %0) #1 !PGOFuncName !70 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_active_keyingset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !71 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.32) #9
  br label %21

10:                                               ; preds = %2
  %11 = icmp slt i32 %5, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.33) #9
  br label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %17 = add nsw i32 %5, -1
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %16, i32 noundef %17) #9
  tail call void @BKE_keyingset_free(ptr noundef %18) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %16, ptr noundef %18) #9
  %19 = load i32, ptr %4, align 4, !tbaa !47
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %4, align 4, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #9
  br label %21

21:                                               ; preds = %15, %12, %7
  %22 = phi i32 [ 2, %7 ], [ 2, %12 ], [ 4, %15 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @keyingset_poll_active_edit(ptr noundef %0) #1 !PGOFuncName !74 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !47
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %4, %8, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_empty_ks_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !76 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.34) #9
  br label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %12 = add nsw i32 %5, -1
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %12) #9
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %15 = tail call ptr %14(i64 noundef 112, ptr noundef nonnull @.str.35) #9
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %13, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %15) #9
  %17 = tail call i32 @BLI_countlist(ptr noundef nonnull %16) #9
  %18 = getelementptr inbounds %struct.KeyingSet, ptr %13, i64 0, i32 9
  store i32 %17, ptr %18, align 4, !tbaa !78
  %19 = getelementptr inbounds %struct.KS_Path, ptr %15, i64 0, i32 5
  store i16 2, ptr %19, align 4, !tbaa !80
  %20 = getelementptr inbounds %struct.KS_Path, ptr %15, i64 0, i32 4
  store i32 16975, ptr %20, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.KS_Path, ptr %15, i64 0, i32 9
  store i16 1, ptr %21, align 4, !tbaa !83
  br label %22

22:                                               ; preds = %10, %7
  %23 = phi i32 [ 2, %7 ], [ 4, %10 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_active_ks_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !84 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !47
  %7 = add nsw i32 %6, -1
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %8, i64 0, i32 2
  %12 = getelementptr inbounds %struct.KeyingSet, ptr %8, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !78
  %14 = add nsw i32 %13, -1
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %14) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  tail call void @BKE_keyingset_free_path(ptr noundef nonnull %8, ptr noundef nonnull %15) #9
  %18 = load i32, ptr %12, align 4, !tbaa !78
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %12, align 4, !tbaa !78
  br label %26

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.36) #9
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.37) #9
  br label %26

26:                                               ; preds = %20, %17, %23
  %27 = phi i32 [ 2, %23 ], [ 4, %17 ], [ 2, %20 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @keyingset_poll_activePath_edit(ptr noundef %0) #1 !PGOFuncName !85 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !47
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 35
  %10 = add nsw i32 %6, -1
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %9, i32 noundef %10) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.KeyingSet, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.KeyingSet, ptr %11, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !78
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %8, %13, %17, %4, %1
  %23 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 0, %13 ], [ 0, %8 ], [ %21, %17 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keyingset_button_add(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_keyingset_button_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_keyingset_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !89 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.15) #9
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 34
  %11 = load i32, ptr %10, align 4, !tbaa !47
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef nonnull %6, i16 noundef signext 0) #9
  %15 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 22
  %18 = load i16, ptr %17, align 2, !tbaa !93
  %19 = and i16 %18, 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !100
  %23 = and i16 %22, 8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %13
  %26 = or i16 %14, 32
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i16 [ %26, %25 ], [ %14, %21 ]
  %29 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 35
  %30 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull %29, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i16 noundef signext 2, i16 noundef signext %28) #9
  %31 = tail call i32 @BLI_countlist(ptr noundef nonnull %29) #9
  store i32 %31, ptr %10, align 4, !tbaa !47
  br label %41

32:                                               ; preds = %2
  %33 = icmp slt i32 %11, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.40) #9
  br label %77

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 35
  %39 = add nsw i32 %11, -1
  %40 = tail call ptr @BLI_findlink(ptr noundef nonnull %38, i32 noundef %39) #9
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi ptr [ %30, %27 ], [ %40, %37 ]
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #9
  %43 = load ptr, ptr %4, align 8, !tbaa !104
  %44 = icmp ne ptr %43, null
  %45 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = icmp ne ptr %46, null
  %48 = select i1 %44, i1 %47, i1 false
  %49 = load ptr, ptr %3, align 8
  %50 = icmp ne ptr %49, null
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %77

52:                                               ; preds = %41
  %53 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %4, ptr noundef nonnull %49) #9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 8, !tbaa !77
  %57 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %4, ptr noundef %56) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %55
  %60 = and i32 %9, 255
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 4, !tbaa !90
  br label %65

64:                                               ; preds = %59
  store i32 0, ptr %5, align 4, !tbaa !90
  br label %65

65:                                               ; preds = %62, %64
  %66 = phi i32 [ 0, %64 ], [ %63, %62 ]
  %67 = phi i16 [ 1, %64 ], [ 0, %62 ]
  %68 = load ptr, ptr %4, align 8, !tbaa !104
  %69 = call ptr @BKE_keyingset_add_path(ptr noundef %42, ptr noundef %68, ptr noundef null, ptr noundef nonnull %57, i32 noundef %66, i16 noundef signext %67, i16 noundef signext 2) #9
  %70 = getelementptr inbounds %struct.KeyingSet, ptr %42, i64 0, i32 2
  %71 = call i32 @BLI_countlist(ptr noundef nonnull %70) #9
  %72 = getelementptr inbounds %struct.KeyingSet, ptr %42, i64 0, i32 9
  store i32 %71, ptr %72, align 4, !tbaa !78
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %73(ptr noundef nonnull %57) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #9
  %74 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  %76 = getelementptr inbounds %struct.KeyingSet, ptr %42, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %75, i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef nonnull %76) #9
  br label %77

77:                                               ; preds = %65, %55, %52, %41, %34
  %78 = phi i32 [ 2, %34 ], [ 4, %65 ], [ 2, %55 ], [ 2, %52 ], [ 2, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %78
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keyingset_button_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_keyingset_button_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_keyingset_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !107 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !90
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 34
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.42) #9
  br label %46

13:                                               ; preds = %2
  %14 = icmp slt i32 %8, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  tail call void @BKE_report(ptr noundef %17, i32 noundef 32, ptr noundef nonnull @.str.43) #9
  br label %46

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 35
  %20 = add nsw i32 %8, -1
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %20) #9
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #9
  %22 = load ptr, ptr %4, align 8, !tbaa !104
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
  %32 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %4, ptr noundef nonnull %28) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.KeyingSet, ptr %21, i64 0, i32 4
  %37 = load i32, ptr %5, align 4, !tbaa !90
  %38 = call ptr @BKE_keyingset_find_path(ptr noundef %21, ptr noundef %35, ptr noundef nonnull %36, ptr noundef nonnull %32, i32 noundef %37, i32 noundef 2) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  call void @BKE_keyingset_free_path(ptr noundef %21, ptr noundef nonnull %38) #9
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %41(ptr noundef nonnull %32) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #9
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !72
  call void @BKE_report(ptr noundef %43, i32 noundef 2, ptr noundef nonnull @.str.44) #9
  br label %46

44:                                               ; preds = %34
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %45(ptr noundef nonnull %32) #9
  br label %46

46:                                               ; preds = %44, %40, %18, %31, %15, %10
  %47 = phi i32 [ 2, %10 ], [ 2, %15 ], [ 4, %40 ], [ 2, %18 ], [ 2, %31 ], [ 2, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keying_set_active_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @keyingset_active_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @keyingset_active_menu_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @keyingset_active_menu_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 !PGOFuncName !109 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %6, i32 noundef 0) #9
  %8 = tail call ptr @uiPupMenuLayout(ptr noundef %7) #9
  tail call void @uiItemsEnumO(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #9
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %7) #9
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @keyingset_active_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !111 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.24) #9
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  store i32 %6, ptr %7, align 4, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_areaactive(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ANIM_keying_sets_enum_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr null, ptr %5, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !tbaa !90
  %9 = icmp eq ptr %0, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 34
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  store ptr @.str.28, ptr %15, align 8, !tbaa !112
  %16 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  store ptr @.str.29, ptr %16, align 8, !tbaa !114
  store i32 0, ptr %6, align 8, !tbaa !115
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  call void @RNA_enum_item_add_separator(ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 35
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %23 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %24 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 4
  br label %25

25:                                               ; preds = %21, %34
  %26 = phi i32 [ 1, %21 ], [ %36, %34 ]
  %27 = phi ptr [ %19, %21 ], [ %35, %34 ]
  %28 = call zeroext i8 @ANIM_keyingset_context_ok_poll(ptr noundef nonnull %0, ptr noundef nonnull %27) #11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 3
  store ptr %31, ptr %22, align 8, !tbaa !112
  %32 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 4
  store ptr %32, ptr %23, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.KeyingSet, ptr %27, i64 0, i32 5
  store ptr %33, ptr %24, align 8, !tbaa !116
  store i32 %26, ptr %6, align 8, !tbaa !115
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  br label %34

34:                                               ; preds = %25, %30
  %35 = load ptr, ptr %27, align 8, !tbaa !117
  %36 = add nuw nsw i32 %26, 1
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %25, !llvm.loop !118

38:                                               ; preds = %34
  call void @RNA_enum_item_add_separator(ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  br label %39

39:                                               ; preds = %38, %17
  %40 = load ptr, ptr @builtin_keyingsets, align 8, !tbaa !77
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %44 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %45 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 4
  br label %46

46:                                               ; preds = %42, %55
  %47 = phi ptr [ %40, %42 ], [ %57, %55 ]
  %48 = phi i32 [ -1, %42 ], [ %56, %55 ]
  %49 = call zeroext i8 @ANIM_keyingset_context_ok_poll(ptr noundef nonnull %0, ptr noundef nonnull %47) #11
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.KeyingSet, ptr %47, i64 0, i32 3
  store ptr %52, ptr %43, align 8, !tbaa !112
  %53 = getelementptr inbounds %struct.KeyingSet, ptr %47, i64 0, i32 4
  store ptr %53, ptr %44, align 8, !tbaa !114
  %54 = getelementptr inbounds %struct.KeyingSet, ptr %47, i64 0, i32 5
  store ptr %54, ptr %45, align 8, !tbaa !116
  store i32 %48, ptr %6, align 8, !tbaa !115
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  br label %55

55:                                               ; preds = %46, %51
  %56 = add nsw i32 %48, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !77
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %46, !llvm.loop !120

59:                                               ; preds = %55, %39
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  store i8 1, ptr %3, align 1, !tbaa !121
  %60 = load ptr, ptr %5, align 8, !tbaa !77
  br label %61

61:                                               ; preds = %4, %59
  %62 = phi ptr [ %60, %59 ], [ @DummyRNA_DEFAULT_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret ptr %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ANIM_keyingset_info_find_name(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !121
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @BLI_findstring(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %0, i32 noundef 16) #9
  br label %8

8:                                                ; preds = %1, %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ANIM_builtin_keyingset_get_named(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i8, ptr %1, align 1, !tbaa !121
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !117
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5, %7
  %11 = load ptr, ptr @builtin_keyingsets, align 8, !tbaa !122
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %7, %10
  %14 = phi ptr [ %8, %7 ], [ %11, %10 ]
  br label %15

15:                                               ; preds = %13, %20
  %16 = phi ptr [ %21, %20 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.KeyingSet, ptr %16, i64 0, i32 3
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !117
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !123

23:                                               ; preds = %15, %20, %10, %2
  %24 = phi ptr [ null, %2 ], [ null, %10 ], [ %16, %15 ], [ null, %20 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_keyingset_info_register(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !124
  %6 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull @builtin_keyingsets, ptr noundef nonnull %2, ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext %5) #9
  %7 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %8 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 5
  %9 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 4
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef 240) #9
  tail call void @BLI_addtail(ptr noundef nonnull @keyingset_type_infos, ptr noundef %0) #9
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_keyingset_add(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_keyingset_info_unregister(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @builtin_keyingsets, align 8, !tbaa !122
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.KeyingSetInfo, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %8

8:                                                ; preds = %5, %25
  %9 = phi ptr [ %3, %5 ], [ %10, %25 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %9, i64 0, i32 6
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %6) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  tail call void @BKE_keyingset_free(ptr noundef nonnull %9) #9
  tail call void @BLI_remlink(ptr noundef nonnull @builtin_keyingsets, ptr noundef nonnull %9) #9
  %15 = load ptr, ptr %7, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 35
  %20 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %19, ptr noundef nonnull %9) #9
  %21 = load ptr, ptr %18, align 8, !tbaa !77
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17, !llvm.loop !126

23:                                               ; preds = %17, %14
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %24(ptr noundef nonnull %9) #9
  br label %25

25:                                               ; preds = %8, %23
  %26 = icmp eq ptr %10, null
  br i1 %26, label %27, label %8, !llvm.loop !127

27:                                               ; preds = %25, %2
  tail call void @BLI_freelinkN(ptr noundef nonnull @keyingset_type_infos, ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @BKE_keyingset_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_keyingset_infos_exit() local_unnamed_addr #1 {
  %1 = load ptr, ptr @keyingset_type_infos, align 8, !tbaa !122
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0, %12
  %4 = phi ptr [ %5, %12 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 9, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  tail call void %7(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %9, %3
  tail call void @BLI_freelinkN(ptr noundef nonnull @keyingset_type_infos, ptr noundef nonnull %4) #9
  %13 = icmp eq ptr %5, null
  br i1 %13, label %14, label %3, !llvm.loop !131

14:                                               ; preds = %12, %0
  tail call void @BKE_keyingsets_free(ptr noundef nonnull @builtin_keyingsets) #9
  ret void
}

; Function Attrs: optsize
declare void @BKE_keyingsets_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ANIM_keyingset_find_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  %8 = tail call ptr @BLI_findptr(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef 16) #9
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ANIM_scene_get_active_keyingset(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 34
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  %9 = add nsw i32 %5, -1
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %9) #9
  br label %14

11:                                               ; preds = %3
  %12 = xor i32 %5, -1
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull @builtin_keyingsets, i32 noundef %12) #9
  br label %14

14:                                               ; preds = %1, %11, %7
  %15 = phi ptr [ %10, %7 ], [ %13, %11 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ANIM_scene_get_keyingset_index(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef nonnull %1) #9
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %8, 1
  br label %15

12:                                               ; preds = %6, %4
  %13 = tail call i32 @BLI_findindex(ptr noundef nonnull @builtin_keyingsets, ptr noundef nonnull %1) #9
  %14 = xor i32 %13, -1
  br label %15

15:                                               ; preds = %12, %2, %10
  %16 = phi i32 [ %11, %10 ], [ 0, %2 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 22
  %8 = load i16, ptr %7, align 2, !tbaa !93
  %9 = and i16 %8, 64
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !100
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %30, label %19

15:                                               ; preds = %2
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !100
  %17 = and i16 %16, 64
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15, %11, %4
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 34
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.ToolSettings, ptr %25, i64 0, i32 22
  %27 = load i16, ptr %26, align 2, !tbaa !93
  br label %30

28:                                               ; preds = %19
  %29 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef nonnull %0) #11
  br label %45

30:                                               ; preds = %23, %11
  %31 = phi i16 [ %27, %23 ], [ %8, %11 ]
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !100
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %43, label %41

38:                                               ; preds = %15
  %39 = and i16 %16, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %34, %30
  %42 = tail call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.27) #11
  br label %45

43:                                               ; preds = %38, %34
  %44 = tail call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef %1) #11
  br label %45

45:                                               ; preds = %43, %41, %28
  %46 = phi ptr [ %29, %28 ], [ %42, %41 ], [ %44, %43 ]
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_add_separator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ANIM_keyingset_context_ok_poll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.KeyingSet, ptr %1, i64 0, i32 7
  %4 = load i16, ptr %3, align 8, !tbaa !132
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyingSet, ptr %1, i64 0, i32 6
  %9 = tail call ptr @ANIM_keyingset_info_find_name(ptr noundef nonnull %8) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.KeyingSetInfo, ptr %9, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = tail call i32 %13(ptr noundef nonnull %9, ptr noundef %0) #9
  %15 = trunc i32 %14 to i8
  br label %16

16:                                               ; preds = %2, %11, %7
  %17 = phi i8 [ %15, %11 ], [ 0, %7 ], [ 1, %2 ]
  ret i8 %17
}

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str.30) #9
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %14) #9
  %15 = icmp ne ptr %2, null
  %16 = icmp ne ptr %3, null
  %17 = and i1 %15, %16
  %18 = getelementptr inbounds %struct.tRKS_DSource, ptr %14, i64 0, i32 2
  br i1 %17, label %19, label %20

19:                                               ; preds = %12
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %18) #9
  br label %21

20:                                               ; preds = %12
  tail call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %18) #9
  br label %21

21:                                               ; preds = %19, %20, %6, %4
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.KeyingSet, ptr %2, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !132
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %2, i64 0, i32 6
  %12 = tail call ptr @ANIM_keyingset_info_find_name(ptr noundef nonnull %11) #11
  tail call void @BKE_keyingset_free(ptr noundef nonnull %2) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.KeyingSetInfo, ptr %12, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !133
  %17 = tail call i32 %16(ptr noundef nonnull %12, ptr noundef %0) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %1, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call fastcc void @RKS_ITER_overrides_list(ptr noundef nonnull %12, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1) #11
  br label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.KeyingSetInfo, ptr %12, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !134
  tail call void %24(ptr noundef nonnull %12, ptr noundef %0, ptr noundef nonnull %2) #9
  br label %25

25:                                               ; preds = %22, %21
  %26 = getelementptr inbounds %struct.KeyingSet, ptr %2, i64 0, i32 2
  %27 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %26) #11, !range !135
  %28 = sub nsw i8 0, %27
  %29 = sext i8 %28 to i16
  br label %30

30:                                               ; preds = %25, %14, %10, %5, %3
  %31 = phi i16 [ 0, %3 ], [ 0, %5 ], [ -1, %14 ], [ -2, %10 ], [ %29, %25 ]
  ret i16 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RKS_ITER_overrides_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 !PGOFuncName !136 {
  %5 = load ptr, ptr %3, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 8
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %5, %7 ], [ %13, %9 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !137
  %12 = getelementptr inbounds %struct.tRKS_DSource, ptr %10, i64 0, i32 2
  tail call void %11(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %12) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !138

15:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !139 {
  %2 = load ptr, ptr %0, align 8, !tbaa !122
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, float noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %11 = tail call ptr @CTX_wm_reports(ptr noundef %0) #9
  %12 = icmp eq ptr %3, null
  br i1 %12, label %111, label %13

13:                                               ; preds = %6
  %14 = icmp eq i16 %4, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 8
  %17 = load i16, ptr %16, align 2, !tbaa !140
  %18 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %10, i16 noundef signext 1) #9
  %19 = or i16 %18, %17
  br label %20

20:                                               ; preds = %13, %15
  %21 = phi i16 [ %19, %15 ], [ 0, %13 ]
  %22 = tail call signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #11
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = sext i16 %22 to i32
  br label %111

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = icmp eq ptr %28, null
  br i1 %29, label %111, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 4
  %32 = icmp eq i16 %4, 1
  br label %33

33:                                               ; preds = %30, %107
  %34 = phi ptr [ %28, %30 ], [ %109, %107 ]
  %35 = phi i32 [ 0, %30 ], [ %108, %107 ]
  %36 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !141
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !143
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %11, i32 noundef 16, ptr noundef nonnull @.str.31, ptr noundef nonnull %31, ptr noundef %41, i32 noundef %43) #9
  br label %107

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 10
  %46 = load i16, ptr %45, align 2, !tbaa !144
  %47 = or i16 %46, %21
  %48 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 5
  %49 = load i16, ptr %48, align 4, !tbaa !80
  switch i16 %49, label %51 [
    i16 1, label %53
    i16 2, label %50
  ]

50:                                               ; preds = %44
  br label %53

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 3
  br label %53

53:                                               ; preds = %44, %50, %51
  %54 = phi ptr [ %31, %50 ], [ %52, %51 ], [ null, %44 ]
  %55 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !143
  %57 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 9
  %58 = load i16, ptr %57, align 4, !tbaa !83
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @RNA_id_pointer_create(ptr noundef nonnull %37, ptr noundef nonnull %7) #9
  %62 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !142
  %64 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %7, ptr noundef %63, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %9, align 8, !tbaa !77
  %68 = call i32 @RNA_property_array_length(ptr noundef nonnull %8, ptr noundef %67) #9
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %68, %66 ], [ %56, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %71

71:                                               ; preds = %69, %53
  %72 = phi i32 [ %70, %69 ], [ %56, %53 ]
  %73 = icmp eq i32 %72, %56
  %74 = zext i1 %73 to i32
  %75 = add nsw i32 %72, %74
  %76 = icmp slt i32 %56, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.KS_Path, ptr %34, i64 0, i32 7
  br label %79

79:                                               ; preds = %77, %95
  %80 = phi i32 [ %56, %77 ], [ %97, %95 ]
  %81 = phi i32 [ %35, %77 ], [ %96, %95 ]
  br i1 %14, label %82, label %88

82:                                               ; preds = %79
  %83 = load ptr, ptr %36, align 8, !tbaa !141
  %84 = load ptr, ptr %78, align 8, !tbaa !142
  %85 = call signext i16 @insert_keyframe(ptr noundef %11, ptr noundef %83, ptr noundef %2, ptr noundef %54, ptr noundef %84, i32 noundef %80, float noundef %5, i16 noundef signext %47) #9
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %81, %86
  br label %95

88:                                               ; preds = %79
  br i1 %32, label %89, label %95

89:                                               ; preds = %88
  %90 = load ptr, ptr %36, align 8, !tbaa !141
  %91 = load ptr, ptr %78, align 8, !tbaa !142
  %92 = call signext i16 @delete_keyframe(ptr noundef %11, ptr noundef %90, ptr noundef %2, ptr noundef %54, ptr noundef %91, i32 noundef %80, float noundef %5, i16 noundef signext %47) #9
  %93 = sext i16 %92 to i32
  %94 = add nsw i32 %81, %93
  br label %95

95:                                               ; preds = %82, %89, %88
  %96 = phi i32 [ %87, %82 ], [ %94, %89 ], [ %81, %88 ]
  %97 = add i32 %80, 1
  %98 = icmp eq i32 %97, %75
  br i1 %98, label %99, label %79, !llvm.loop !145

99:                                               ; preds = %95, %71
  %100 = phi i32 [ %35, %71 ], [ %96, %95 ]
  %101 = load ptr, ptr %36, align 8, !tbaa !141
  %102 = getelementptr inbounds %struct.ID, ptr %101, i64 0, i32 4
  %103 = load i16, ptr %102, align 8, !tbaa !146
  %104 = icmp eq i16 %103, 16975
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  call void @DAG_id_tag_update(ptr noundef nonnull %101, i16 noundef signext 7) #9
  br label %106

106:                                              ; preds = %99, %105
  call void @WM_main_add_notifier(i32 noundef 239468547, ptr noundef null) #9
  br label %107

107:                                              ; preds = %106, %39
  %108 = phi i32 [ %35, %39 ], [ %100, %106 ]
  %109 = load ptr, ptr %34, align 8, !tbaa !77
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %33, !llvm.loop !147

111:                                              ; preds = %107, %26, %6, %24
  %112 = phi i32 [ %25, %24 ], [ 0, %6 ], [ 0, %26 ], [ %108, %107 ]
  ret i32 %112
}

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @delete_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_keyingset_free_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyingset_add_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyingset_find_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!46 = !{!"keyingsets.c:add_default_keyingset_exec"}
!47 = !{!48, !50, i64 4380}
!48 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !50, i64 232, !50, i64 236, !50, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !51, i64 280, !61, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !50, i64 4380, !39, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !36, i64 4608, !67, i64 4616, !36, i64 4640, !68, i64 4648, !68, i64 4656, !54, i64 4664, !55, i64 4824, !69, i64 4888, !36, i64 4952}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!50 = !{!"int", !37, i64 0}
!51 = !{!"RenderData", !52, i64 0, !36, i64 248, !36, i64 256, !56, i64 264, !57, i64 328, !50, i64 400, !50, i64 404, !50, i64 408, !53, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !50, i64 428, !41, i64 432, !41, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !50, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !50, i64 484, !50, i64 488, !41, i64 492, !41, i64 494, !50, i64 496, !50, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !50, i64 516, !50, i64 520, !50, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !58, i64 544, !58, i64 560, !59, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !50, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !53, i64 660, !53, i64 664, !41, i64 668, !41, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !50, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !50, i64 2520, !41, i64 2524, !41, i64 2526, !53, i64 2528, !53, i64 2532, !41, i64 2536, !41, i64 2538, !53, i64 2540, !41, i64 2544, !41, i64 2546, !50, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !50, i64 2576, !53, i64 2580, !37, i64 2584, !60, i64 2616, !50, i64 3976, !50, i64 3980}
!52 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !54, i64 24, !55, i64 184}
!53 = !{!"float", !37, i64 0}
!54 = !{!"ColorManagedViewSettings", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!56 = !{!"QuicktimeCodecSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !41, i64 48, !41, i64 50, !50, i64 52, !50, i64 56, !50, i64 60}
!57 = !{!"FFMpegCodecData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !53, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !36, i64 64}
!58 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!59 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!60 = !{!"BakeData", !52, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!61 = !{!"AudioData", !50, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !50, i64 16, !41, i64 20, !41, i64 22, !53, i64 24, !53, i64 28}
!62 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!63 = !{!"GameData", !62, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !64, i64 40, !41, i64 64, !41, i64 66, !53, i64 68, !65, i64 72, !53, i64 128, !53, i64 132, !50, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!64 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!65 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !50, i64 40, !53, i64 44, !53, i64 48, !41, i64 52, !41, i64 54}
!66 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!67 = !{!"PhysicsSettings", !37, i64 0, !50, i64 12, !50, i64 16, !50, i64 20}
!68 = !{!"long", !37, i64 0}
!69 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!70 = !{!"keyingsets.c:keyingset_poll_default_add"}
!71 = !{!"keyingsets.c:remove_active_keyingset_exec"}
!72 = !{!73, !36, i64 120}
!73 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!74 = !{!"keyingsets.c:keyingset_poll_active_edit"}
!75 = !{!48, !36, i64 4384}
!76 = !{!"keyingsets.c:add_empty_ks_path_exec"}
!77 = !{!36, !36, i64 0}
!78 = !{!79, !50, i64 468}
!79 = !{!"KeyingSet", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 32, !37, i64 96, !37, i64 160, !37, i64 400, !41, i64 464, !41, i64 466, !50, i64 468}
!80 = !{!81, !41, i64 92}
!81 = !{!"KS_Path", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !50, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !50, i64 104, !41, i64 108, !41, i64 110}
!82 = !{!81, !50, i64 88}
!83 = !{!81, !41, i64 108}
!84 = !{!"keyingsets.c:remove_active_ks_path_exec"}
!85 = !{!"keyingsets.c:keyingset_poll_activePath_edit"}
!86 = !{!79, !36, i64 16}
!87 = !{!35, !41, i64 184}
!88 = !{!35, !36, i64 88}
!89 = !{!"keyingsets.c:add_keyingset_button_exec"}
!90 = !{!50, !50, i64 0}
!91 = !{!73, !36, i64 112}
!92 = !{!48, !36, i64 264}
!93 = !{!94, !41, i64 346}
!94 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !53, i64 32, !53, i64 36, !53, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !53, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !95, i64 64, !97, i64 168, !53, i64 336, !53, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !53, i64 352, !53, i64 356, !53, i64 360, !53, i64 364, !53, i64 368, !53, i64 372, !53, i64 376, !53, i64 380, !53, i64 384, !53, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !50, i64 448, !50, i64 452, !50, i64 456, !50, i64 460, !41, i64 464, !41, i64 466, !50, i64 468, !53, i64 472, !53, i64 476, !98, i64 480, !99, i64 608}
!95 = !{!"ImagePaintSettings", !96, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !50, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !53, i64 100}
!96 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !50, i64 28, !50, i64 32, !50, i64 36}
!97 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !53, i64 128, !53, i64 132, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !36, i64 152, !36, i64 160}
!98 = !{!"UnifiedPaintSettings", !50, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !37, i64 16, !37, i64 28, !50, i64 40, !37, i64 44, !53, i64 52, !50, i64 56, !50, i64 60, !37, i64 64, !37, i64 65, !53, i64 72, !37, i64 76, !50, i64 84, !53, i64 88, !37, i64 92, !37, i64 100, !50, i64 108, !36, i64 112, !53, i64 120, !50, i64 124}
!99 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !37, i64 20, !37, i64 21, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36}
!100 = !{!101, !41, i64 8978}
!101 = !{!"UserDef", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !50, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !50, i64 8484, !50, i64 8488, !50, i64 8492, !41, i64 8496, !41, i64 8498, !50, i64 8500, !50, i64 8504, !50, i64 8508, !50, i64 8512, !50, i64 8516, !50, i64 8520, !50, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !50, i64 8912, !50, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !53, i64 8956, !53, i64 8960, !50, i64 8964, !41, i64 8968, !41, i64 8970, !53, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !102, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !50, i64 10896, !50, i64 10900, !53, i64 10904, !53, i64 10908, !50, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !103, i64 10928}
!102 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!103 = !{!"WalkNavigation", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !41, i64 24, !37, i64 26}
!104 = !{!105, !36, i64 0}
!105 = !{!"PointerRNA", !106, i64 0, !36, i64 8, !36, i64 16}
!106 = !{!"", !36, i64 0}
!107 = !{!"keyingsets.c:remove_keyingset_button_exec"}
!108 = !{!35, !36, i64 48}
!109 = !{!"keyingsets.c:keyingset_active_menu_invoke"}
!110 = !{!73, !36, i64 88}
!111 = !{!"keyingsets.c:keyingset_active_menu_exec"}
!112 = !{!113, !36, i64 8}
!113 = !{!"EnumPropertyItem", !50, i64 0, !36, i64 8, !50, i64 16, !36, i64 24, !36, i64 32}
!114 = !{!113, !36, i64 24}
!115 = !{!113, !50, i64 0}
!116 = !{!113, !36, i64 32}
!117 = !{!79, !36, i64 0}
!118 = distinct !{!118, !119}
!119 = !{!"llvm.loop.mustprogress"}
!120 = distinct !{!120, !119}
!121 = !{!37, !37, i64 0}
!122 = !{!39, !36, i64 0}
!123 = distinct !{!123, !119}
!124 = !{!125, !41, i64 384}
!125 = !{!"KeyingSetInfo", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !41, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !40, i64 416}
!126 = distinct !{!126, !119}
!127 = distinct !{!127, !119}
!128 = !{!125, !36, i64 0}
!129 = !{!125, !36, i64 440}
!130 = !{!125, !36, i64 416}
!131 = distinct !{!131, !119}
!132 = !{!79, !41, i64 464}
!133 = !{!125, !36, i64 392}
!134 = !{!125, !36, i64 400}
!135 = !{i8 0, i8 2}
!136 = !{!"keyingsets.c:RKS_ITER_overrides_list"}
!137 = !{!125, !36, i64 408}
!138 = distinct !{!138, !119}
!139 = !{!"keyingsets.c:BLI_listbase_is_empty"}
!140 = !{!79, !41, i64 466}
!141 = !{!81, !36, i64 16}
!142 = !{!81, !36, i64 96}
!143 = !{!81, !50, i64 104}
!144 = !{!81, !41, i64 110}
!145 = distinct !{!145, !119}
!146 = !{!41, !41, i64 0}
!147 = distinct !{!147, !119}
