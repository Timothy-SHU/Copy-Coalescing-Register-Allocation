; ModuleID = 'blender/source/blender/blenkernel/intern/action.c'
source_filename = "blender/source/blender/blenkernel/intern/action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.tMakeLocalActionContext = type { ptr, ptr, i8, i8 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bItasc = type { i32, float, i16, i16, float, float, i16, i16, float, float, float, float }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FMod_Limits = type { %struct.rctf, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.FMod_Cycles = type { i16, i16, i16, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }

@G = external local_unnamed_addr global %struct.Global, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"bActionGroup\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"verifyPoseChannel\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bItasc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pose\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"itasc\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"make_pose_chan gh\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"PoseGroup\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"[\22\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Pose copy error, pose to:%p from:%p\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"OB<ConstrWorkOb>\00", align 1
@str = private unnamed_addr constant [54 x i8] c"extract_pose_from_pose source and target are the same\00", align 1
@str.16 = private unnamed_addr constant [52 x i8] c"BKE_pose_copy_result source and target are the same\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @add_empty_action(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17217, ptr noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_action_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tMakeLocalActionContext, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.tMakeLocalActionContext, ptr %2, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.tMakeLocalActionContext, ptr %2, i64 0, i32 2
  store i8 0, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.tMakeLocalActionContext, ptr %2, i64 0, i32 3
  store i8 0, ptr %5, align 1, !tbaa !41
  %6 = load ptr, ptr @G, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %12 = load i16, ptr %11, align 2, !tbaa !50
  %13 = and i16 %12, 512
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @id_clear_lib_data(ptr noundef %6, ptr noundef %0) #14
  br label %34

20:                                               ; preds = %15, %10
  call void @BKE_animdata_main_cb(ptr noundef %6, ptr noundef nonnull @make_localact_init_cb, ptr noundef nonnull %2) #14
  %21 = load i8, ptr %5, align 1, !tbaa !41
  %22 = icmp ne i8 %21, 0
  %23 = load i8, ptr %4, align 8
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @id_clear_lib_data(ptr noundef %6, ptr noundef %0) #14
  br label %34

27:                                               ; preds = %20
  %28 = icmp ne i8 %23, 0
  %29 = select i1 %22, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call ptr @BKE_action_copy(ptr noundef %0)
  store ptr %31, ptr %3, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 6
  store i32 0, ptr %32, align 4, !tbaa !51
  %33 = load ptr, ptr %7, align 8, !tbaa !47
  call void @BKE_id_lib_local_paths(ptr noundef %6, ptr noundef %33, ptr noundef %31) #14
  call void @BKE_animdata_main_cb(ptr noundef %6, ptr noundef nonnull @make_localact_apply_cb, ptr noundef nonnull %2) #14
  br label %34

34:                                               ; preds = %26, %30, %27, %1, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_animdata_main_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @make_localact_init_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #3 {
  %4 = load ptr, ptr %1, align 8, !tbaa !52
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tMakeLocalActionContext, ptr %2, i64 0, i32 2
  store i8 1, ptr %12, align 8, !tbaa !40
  br label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tMakeLocalActionContext, ptr %2, i64 0, i32 3
  store i8 1, ptr %14, align 1, !tbaa !41
  br label %15

15:                                               ; preds = %11, %13, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_action_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BKE_libblock_copy(ptr noundef nonnull %0) #14
  %5 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 3
  %6 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 4
  %8 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %9 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %3, %39
  %14 = phi ptr [ %40, %39 ], [ %11, %3 ]
  %15 = tail call ptr @copy_fcurve(ptr noundef nonnull %14) #14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %15) #14
  %16 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 2
  br label %17

17:                                               ; preds = %25, %13
  %18 = phi ptr [ %5, %13 ], [ %21, %25 ]
  %19 = phi ptr [ %6, %13 ], [ %20, %25 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = load ptr, ptr %18, align 8, !tbaa !56
  %22 = icmp ne ptr %21, null
  %23 = icmp ne ptr %20, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load ptr, ptr %16, align 8, !tbaa !57
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %28, label %17, !llvm.loop !59

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 2
  store ptr %21, ptr %29, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.bActionGroup, ptr %21, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = icmp eq ptr %31, %14
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store ptr %15, ptr %30, align 8, !tbaa !62
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct.bActionGroup, ptr %21, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = icmp eq ptr %36, %14
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store ptr %15, ptr %35, align 8, !tbaa !65
  br label %39

39:                                               ; preds = %17, %38, %34
  %40 = load ptr, ptr %14, align 8, !tbaa !56
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %13, !llvm.loop !66

42:                                               ; preds = %39, %3, %1
  %43 = phi ptr [ null, %1 ], [ %4, %3 ], [ %4, %39 ]
  ret ptr %43
}

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @make_localact_apply_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !52
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tMakeLocalActionContext, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  store ptr %13, ptr %1, align 8, !tbaa !52
  tail call void @id_us_plus(ptr noundef %13) #14
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @id_us_min(ptr noundef %14) #14
  br label %15

15:                                               ; preds = %7, %11, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_action_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  tail call void @free_fcurves(ptr noundef nonnull %4) #14
  %5 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #14
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #14
  br label %14

14:                                               ; preds = %1, %13, %9
  ret void
}

declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_active_actiongroup(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !71

16:                                               ; preds = %13, %7, %3, %1
  %17 = phi ptr [ null, %3 ], [ null, %1 ], [ %8, %7 ], [ null, %13 ]
  ret ptr %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_active_action_group(ptr noundef readonly %0, ptr noundef readnone %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = icmp ne i16 %2, 0
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %7, %9 ], [ %20, %11 ]
  %13 = icmp eq ptr %12, %1
  %14 = and i1 %10, %13
  %15 = getelementptr inbounds %struct.bActionGroup, ptr %12, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !69
  %17 = and i32 %16, -3
  %18 = select i1 %14, i32 2, i32 0
  %19 = or disjoint i32 %17, %18
  store i32 %19, ptr %15, align 8, !tbaa !69
  %20 = load ptr, ptr %12, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !72

22:                                               ; preds = %11, %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @action_group_colors_sync(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !73
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !74
  %10 = add nsw i32 %4, -1
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds %struct.bTheme, ptr %9, i64 0, i32 21, i64 %11
  %13 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 2 dereferenceable(16) %12, i64 16, i1 false)
  br label %34

14:                                               ; preds = %6
  %15 = icmp eq ptr %1, null
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6
  br i1 %15, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  br label %34

19:                                               ; preds = %14
  %20 = load i8, ptr %16, align 8, !tbaa !78
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  store i8 -1, ptr %16, align 1, !tbaa !78
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 0, i64 1
  store i8 0, ptr %23, align 1, !tbaa !78
  %24 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 0, i64 2
  store i8 0, ptr %24, align 1, !tbaa !78
  %25 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 0, i64 3
  store i8 -1, ptr %25, align 1, !tbaa !78
  %26 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 1
  store i8 -127, ptr %26, align 1, !tbaa !78
  %27 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 1, i64 1
  store i8 -26, ptr %27, align 1, !tbaa !78
  %28 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 1, i64 2
  store i8 20, ptr %28, align 1, !tbaa !78
  %29 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 1, i64 3
  store i8 -1, ptr %29, align 1, !tbaa !78
  %30 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 2
  store i8 24, ptr %30, align 1, !tbaa !78
  %31 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 2, i64 1
  store i8 -74, ptr %31, align 1, !tbaa !78
  %32 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 2, i64 2
  store i8 -32, ptr %32, align 1, !tbaa !78
  %33 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 2, i64 3
  store i8 -1, ptr %33, align 1, !tbaa !78
  br label %34

34:                                               ; preds = %8, %19, %22, %17, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local ptr @action_groups_add_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %8 = tail call ptr %7(i64 noundef 120, ptr noundef nonnull @.str) #14
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 5
  %11 = load i8, ptr %1, align 1, !tbaa !78
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr @.str.1, ptr %1
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef nonnull %13, i64 noundef 64) #14
  %15 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %8) #14
  tail call void @BLI_uniquename(ptr noundef nonnull %15, ptr noundef %8, ptr noundef nonnull @.str.1, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #14
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi ptr [ %8, %6 ], [ null, %2 ]
  ret ptr %17
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @action_groups_add_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2
  br i1 %12, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %2, ptr %15, align 8, !tbaa !65
  store ptr %2, ptr %13, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !80
  store ptr %2, ptr %10, align 8, !tbaa !81
  br label %41

17:                                               ; preds = %9
  %18 = load ptr, ptr %13, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2, i32 1
  br i1 %19, label %28, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %20, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store ptr %2, ptr %23, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %26, %21
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %13, ptr noundef %22, ptr noundef %2) #14
  br label %41

28:                                               ; preds = %17
  store ptr %2, ptr %20, align 8, !tbaa !65
  store ptr %2, ptr %13, align 8, !tbaa !62
  br label %29

29:                                               ; preds = %34, %28
  %30 = phi ptr [ %1, %28 ], [ %32, %34 ]
  %31 = getelementptr inbounds %struct.bActionGroup, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bActionGroup, ptr %32, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = icmp eq ptr %36, null
  br i1 %37, label %29, label %38, !llvm.loop !83

38:                                               ; preds = %34
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %36, ptr noundef %2) #14
  br label %41

39:                                               ; preds = %29
  %40 = load ptr, ptr %10, align 8, !tbaa !81
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %10, ptr noundef %40, ptr noundef %2) #14
  br label %41

41:                                               ; preds = %38, %39, %27, %14
  %42 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 2
  store ptr %1, ptr %42, align 8, !tbaa !57
  br label %43

43:                                               ; preds = %3, %41
  ret void
}

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @action_groups_remove_channel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = icmp eq ptr %12, %14
  %16 = icmp eq ptr %12, %1
  br i1 %15, label %17, label %19

17:                                               ; preds = %10
  br i1 %16, label %18, label %41

18:                                               ; preds = %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %41

19:                                               ; preds = %10
  br i1 %16, label %20, label %29

20:                                               ; preds = %19
  %21 = load ptr, ptr %1, align 8, !tbaa !84
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.FCurve, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, %8
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr %21, ptr %11, align 8, !tbaa !62
  br label %41

28:                                               ; preds = %23, %20
  store ptr null, ptr %11, align 8, !tbaa !62
  br label %41

29:                                               ; preds = %19
  %30 = icmp eq ptr %14, %1
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !85
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, %8
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store ptr %33, ptr %13, align 8, !tbaa !65
  br label %41

40:                                               ; preds = %35, %31
  store ptr null, ptr %13, align 8, !tbaa !65
  br label %41

41:                                               ; preds = %28, %27, %39, %40, %29, %17, %18
  store ptr null, ptr %7, align 8, !tbaa !57
  br label %42

42:                                               ; preds = %41, %6
  %43 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %43, ptr noundef %1) #14
  br label %44

44:                                               ; preds = %2, %42
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_action_group_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load i8, ptr %1, align 1, !tbaa !78
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef 40) #14
  br label %15

15:                                               ; preds = %2, %4, %10, %13
  %16 = phi ptr [ %14, %13 ], [ null, %10 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @action_groups_clear_tempflags(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = and i32 %10, -1073741825
  store i32 %11, ptr %9, align 8, !tbaa !69
  %12 = load ptr, ptr %8, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !86

14:                                               ; preds = %7, %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !78
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %11, ptr noundef nonnull %1) #14
  br label %17

15:                                               ; preds = %9
  %16 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 40) #14
  br label %17

17:                                               ; preds = %2, %6, %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ], [ null, %6 ], [ null, %2 ]
  ret ptr %18
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_pose_channel_verify(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 40) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %9 = tail call ptr %8(i64 noundef 544, ptr noundef nonnull @.str.2) #14
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 4
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 64) #14
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 23
  tail call void @unit_qt(ptr noundef nonnull %12) #14
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 24
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 25
  tail call void @unit_axis_angle(ptr noundef nonnull %13, ptr noundef nonnull %14) #14
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 21
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %16, align 4, !tbaa !90
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 21, i64 1
  store float 1.000000e+00, ptr %17, align 4, !tbaa !90
  store float 1.000000e+00, ptr %15, align 4, !tbaa !90
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 33
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 33, i64 2
  store float -1.800000e+02, ptr %19, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 33, i64 1
  store float -1.800000e+02, ptr %20, align 4, !tbaa !90
  store float -1.800000e+02, ptr %18, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 34
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 34, i64 2
  store float 1.800000e+02, ptr %22, align 4, !tbaa !90
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 34, i64 1
  store float 1.800000e+02, ptr %23, align 4, !tbaa !90
  store float 1.800000e+02, ptr %21, align 4, !tbaa !90
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 35
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %25, align 8, !tbaa !90
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 35, i64 1
  store float 0.000000e+00, ptr %26, align 4, !tbaa !90
  store float 0.000000e+00, ptr %24, align 8, !tbaa !90
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 38
  store float 0.000000e+00, ptr %27, align 4, !tbaa !91
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 37
  store float 0.000000e+00, ptr %28, align 8, !tbaa !93
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 30
  tail call void @unit_m4(ptr noundef nonnull %29) #14
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 7
  store i16 1024, ptr %30, align 4, !tbaa !94
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %9) #14
  %31 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %7
  tail call void @BLI_ghash_free(ptr noundef nonnull %32, ptr noundef null, ptr noundef null) #14
  store ptr null, ptr %31, align 8, !tbaa !87
  br label %35

35:                                               ; preds = %34, %7, %4, %2
  %36 = phi ptr [ null, %2 ], [ %5, %4 ], [ %9, %7 ], [ %9, %34 ]
  ret ptr %36
}

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_channels_hash_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #14
  store ptr null, ptr %2, align 8, !tbaa !87
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_pose_channel_active(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  br i1 %2, label %37, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %7, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 5
  %19 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 15
  br label %20

20:                                               ; preds = %17, %34
  %21 = phi ptr [ %15, %17 ], [ %35, %34 ]
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !99
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %18, align 8, !tbaa !100
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Bone, ptr %23, i64 0, i32 25
  %30 = load i32, ptr %29, align 8, !tbaa !102
  %31 = load i32, ptr %19, align 8, !tbaa !104
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20, %25, %28
  %35 = load ptr, ptr %21, align 8, !tbaa !56
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %20, !llvm.loop !105

37:                                               ; preds = %28, %34, %14, %6, %8
  %38 = phi ptr [ null, %8 ], [ null, %6 ], [ null, %14 ], [ null, %34 ], [ %21, %28 ]
  ret ptr %38
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_pose_channel_get_mirrored(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #14
  %4 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  %8 = load i8, ptr %3, align 16
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %13, ptr noundef nonnull %3) #14
  br label %19

17:                                               ; preds = %11
  %18 = call ptr @BLI_findstring(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 40) #14
  br label %19

19:                                               ; preds = %17, %15, %6, %2
  %20 = phi ptr [ null, %2 ], [ %16, %15 ], [ %18, %17 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret ptr %20
}

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pose_ikparam_get_name(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = icmp eq i32 %5, 1
  %7 = select i1 %6, ptr @.str.3, ptr null
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_copy_data(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = icmp eq ptr %1, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %8 = tail call ptr %7(i64 noundef 216, ptr noundef nonnull @.str.4) #14
  tail call void @BLI_duplicatelist(ptr noundef %8, ptr noundef nonnull %1) #14
  %9 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 11
  store i32 %10, ptr %11, align 4, !tbaa !106
  %12 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 12
  store ptr null, ptr %12, align 8, !tbaa !107
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = tail call ptr %13(ptr noundef %15) #14
  %17 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 13
  store ptr %16, ptr %17, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 14
  %19 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %19, i64 48, i1 false), !tbaa.struct !109
  %20 = load ptr, ptr %8, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 1
  %24 = icmp eq i8 %2, 0
  br label %25

25:                                               ; preds = %22, %58
  %26 = phi ptr [ %20, %22 ], [ %59, %58 ]
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %26, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !112
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  call void @id_us_plus(ptr noundef nonnull %28) #14
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %26, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %33, i64 0, i32 4
  %37 = load i8, ptr %36, align 1, !tbaa !78
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %23, align 8, !tbaa !87
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %40, ptr noundef nonnull %36) #14
  br label %46

44:                                               ; preds = %39
  %45 = call ptr @BLI_findstring(ptr noundef nonnull %8, ptr noundef nonnull %36, i32 noundef 40) #14
  br label %46

46:                                               ; preds = %35, %42, %44
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ], [ null, %35 ]
  store ptr %47, ptr %32, align 8, !tbaa !113
  br label %48

48:                                               ; preds = %46, %31
  br i1 %24, label %52, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %26, i64 0, i32 3
  call void @BKE_constraints_copy(ptr noundef nonnull %4, ptr noundef nonnull %50, i8 noundef zeroext 1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !114
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %26, i64 0, i32 17
  store ptr null, ptr %51, align 8, !tbaa !115
  br label %52

52:                                               ; preds = %49, %48
  %53 = getelementptr inbounds %struct.bPoseChannel, ptr %26, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call ptr @IDP_CopyProperty(ptr noundef nonnull %54) #14
  store ptr %57, ptr %53, align 8, !tbaa !116
  br label %58

58:                                               ; preds = %52, %56
  %59 = load ptr, ptr %26, align 8, !tbaa !56
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %25, !llvm.loop !117

61:                                               ; preds = %58, %6
  %62 = icmp eq i8 %2, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 9
  %65 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 9
  call void @BLI_duplicatelist(ptr noundef nonnull %64, ptr noundef nonnull %65) #14
  br label %66

66:                                               ; preds = %61, %63, %3
  %67 = phi ptr [ null, %3 ], [ %8, %63 ], [ %8, %61 ]
  store ptr %67, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_pose_itasc_init(ptr noundef writeonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  store i32 1, ptr %0, align 4, !tbaa !118
  %4 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 4
  store float 0x3F847AE140000000, ptr %4, align 4, !tbaa !120
  %5 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 5
  store float 0x3FAEB851E0000000, ptr %5, align 4, !tbaa !121
  %6 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 2
  store i16 100, ptr %6, align 4, !tbaa !122
  %7 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 3
  store i16 4, ptr %7, align 2, !tbaa !123
  %8 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 1
  store float 0x3F747AE140000000, ptr %8, align 4, !tbaa !124
  %9 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 7
  store i16 3, ptr %9, align 2, !tbaa !125
  %10 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 8
  store float 2.000000e+01, ptr %10, align 4, !tbaa !126
  %11 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 9
  store float 5.000000e+01, ptr %11, align 4, !tbaa !127
  %12 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 6
  store i16 0, ptr %12, align 4, !tbaa !128
  %13 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 10
  store float 5.000000e-01, ptr %13, align 4, !tbaa !129
  %14 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 11
  store float 0x3FC3333340000000, ptr %14, align 4, !tbaa !130
  br label %15

15:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_ikparam_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !106
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %7 = tail call ptr %6(i64 noundef 40, ptr noundef nonnull @.str.5) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  store i32 1, ptr %7, align 4, !tbaa !118
  %10 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 4
  store float 0x3F847AE140000000, ptr %10, align 4, !tbaa !120
  %11 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 5
  store float 0x3FAEB851E0000000, ptr %11, align 4, !tbaa !121
  %12 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 2
  store i16 100, ptr %12, align 4, !tbaa !122
  %13 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 3
  store i16 4, ptr %13, align 2, !tbaa !123
  %14 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 1
  store float 0x3F747AE140000000, ptr %14, align 4, !tbaa !124
  %15 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 7
  store i16 3, ptr %15, align 2, !tbaa !125
  %16 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 8
  store float 2.000000e+01, ptr %16, align 4, !tbaa !126
  %17 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 9
  store float 5.000000e+01, ptr %17, align 4, !tbaa !127
  %18 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 6
  store i16 0, ptr %18, align 4, !tbaa !128
  %19 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 10
  store float 5.000000e-01, ptr %19, align 4, !tbaa !129
  %20 = getelementptr inbounds %struct.bItasc, ptr %7, i64 0, i32 11
  store float 0x3FC3333340000000, ptr %20, align 4, !tbaa !130
  br label %21

21:                                               ; preds = %1, %9, %5
  %22 = phi ptr [ %7, %5 ], [ %7, %9 ], [ null, %1 ]
  %23 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 13
  store ptr %22, ptr %23, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_pose_channel_in_IK_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @pose_channel_in_IK_chain(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @pose_channel_in_IK_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3, %26
  %8 = phi ptr [ %27, %26 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !131
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !133
  %15 = getelementptr inbounds %struct.bKinematicConstraint, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 4, !tbaa !134
  %17 = icmp eq i16 %16, 0
  %18 = sext i16 %16 to i32
  %19 = icmp sgt i32 %18, %2
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.bKinematicConstraint, ptr %14, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !136
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %21, %12, %7
  %27 = load ptr, ptr %8, align 8, !tbaa !56
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %7, !llvm.loop !137

29:                                               ; preds = %26, %3
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !99
  %32 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 4
  %33 = add nsw i32 %2, 1
  %34 = load ptr, ptr %32, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  br label %38

38:                                               ; preds = %36, %60
  %39 = phi ptr [ %34, %36 ], [ %61, %60 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !98
  %41 = getelementptr inbounds %struct.Bone, ptr %39, i64 0, i32 5
  %42 = icmp eq ptr %40, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = load i8, ptr %41, align 1, !tbaa !78
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bPose, ptr %40, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %48, ptr noundef nonnull %41) #14
  br label %54

52:                                               ; preds = %46
  %53 = tail call ptr @BLI_findstring(ptr noundef nonnull %40, ptr noundef nonnull %41, i32 noundef 40) #14
  br label %54

54:                                               ; preds = %38, %43, %50, %52
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ], [ null, %43 ], [ null, %38 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc zeroext i8 @pose_channel_in_IK_chain(ptr noundef %0, ptr noundef nonnull %55, i32 noundef %33)
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %57
  %61 = load ptr, ptr %39, align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %38, !llvm.loop !138

63:                                               ; preds = %21, %57, %60, %29
  %64 = phi i8 [ 0, %29 ], [ 0, %60 ], [ 1, %57 ], [ 1, %21 ]
  ret i8 %64
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_channels_hash_make(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.6) #14
  store ptr %6, ptr %2, align 8, !tbaa !87
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %5 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !87
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 4
  tail call void @BLI_ghash_insert(ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #14
  %13 = load ptr, ptr %10, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !139

15:                                               ; preds = %9, %5, %1
  ret void
}

declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_channel_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @id_us_min(ptr noundef nonnull %4) #14
  br label %9

9:                                                ; preds = %8, %6
  store ptr null, ptr %3, align 8, !tbaa !112
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @animviz_free_motionpath(ptr noundef nonnull %12) #14
  store ptr null, ptr %11, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  tail call void @BKE_constraints_free(ptr noundef nonnull %16) #14
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  tail call void @IDP_FreeProperty(ptr noundef nonnull %18) #14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %22 = load ptr, ptr %17, align 8, !tbaa !116
  tail call void %21(ptr noundef %22) #14
  br label %23

23:                                               ; preds = %20, %15
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #2

declare void @BKE_constraints_free(ptr noundef) local_unnamed_addr #2

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_channel_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #14
  store ptr null, ptr %2, align 8, !tbaa !112
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @animviz_free_motionpath(ptr noundef nonnull %8) #14
  store ptr null, ptr %7, align 8, !tbaa !115
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  tail call void @BKE_constraints_free(ptr noundef nonnull %12) #14
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  tail call void @IDP_FreeProperty(ptr noundef nonnull %14) #14
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %18 = load ptr, ptr %13, align 8, !tbaa !116
  tail call void %17(ptr noundef %18) #14
  br label %19

19:                                               ; preds = %11, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_channels_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %28
  %8 = phi ptr [ %3, %5 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  br i1 %6, label %14, label %13

13:                                               ; preds = %12
  tail call void @id_us_min(ptr noundef nonnull %10) #14
  br label %14

14:                                               ; preds = %13, %12
  store ptr null, ptr %9, align 8, !tbaa !112
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @animviz_free_motionpath(ptr noundef nonnull %17) #14
  store ptr null, ptr %16, align 8, !tbaa !115
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 3
  tail call void @BKE_constraints_free(ptr noundef nonnull %21) #14
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  tail call void @IDP_FreeProperty(ptr noundef nonnull %23) #14
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %27 = load ptr, ptr %22, align 8, !tbaa !116
  tail call void %26(ptr noundef %27) #14
  br label %28

28:                                               ; preds = %20, %25
  %29 = load ptr, ptr %8, align 8, !tbaa !141
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !142

31:                                               ; preds = %28
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #14
  br label %32

32:                                               ; preds = %31, %2
  %33 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @BLI_ghash_free(ptr noundef nonnull %34, ptr noundef null, ptr noundef null) #14
  store ptr null, ptr %33, align 8, !tbaa !87
  br label %37

37:                                               ; preds = %32, %36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_channels_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_pose_channels_free_ex(ptr noundef %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  tail call void @BKE_pose_channels_free_ex(ptr noundef nonnull %0, i8 noundef zeroext %1)
  %5 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #14
  br label %9

9:                                                ; preds = %8, %4
  tail call void @BIK_clear_data(ptr noundef nonnull %0) #14
  %10 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %14(ptr noundef nonnull %11) #14
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %16(ptr noundef nonnull %0) #14
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  tail call void @BKE_pose_channels_free_ex(ptr noundef nonnull %0, i8 noundef zeroext 1)
  %4 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %4) #14
  br label %8

8:                                                ; preds = %7, %3
  tail call void @BIK_clear_data(ptr noundef nonnull %0) #14
  %9 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %13(ptr noundef nonnull %10) #14
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %15(ptr noundef nonnull %0) #14
  br label %16

16:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_channel_copy_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 7
  %4 = load i16, ptr %3, align 4, !tbaa !94
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  store i16 %4, ptr %5, align 4, !tbaa !94
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 26
  %7 = load i16, ptr %6, align 4, !tbaa !144
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  store i16 %7, ptr %8, align 4, !tbaa !144
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !145
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 8
  store i16 %10, ptr %11, align 2, !tbaa !145
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !146
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 6
  store i16 %13, ptr %14, align 2, !tbaa !146
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 33
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 33
  %17 = load float, ptr %16, align 4, !tbaa !90
  store float %17, ptr %15, align 4, !tbaa !90
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 33, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !90
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 33, i64 1
  store float %19, ptr %20, align 4, !tbaa !90
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 33, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !90
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 33, i64 2
  store float %22, ptr %23, align 4, !tbaa !90
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 34
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 34
  %26 = load float, ptr %25, align 4, !tbaa !90
  store float %26, ptr %24, align 4, !tbaa !90
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 34, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !90
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 34, i64 1
  store float %28, ptr %29, align 4, !tbaa !90
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 34, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !90
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 34, i64 2
  store float %31, ptr %32, align 4, !tbaa !90
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 35
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 35
  %35 = load float, ptr %34, align 4, !tbaa !90
  store float %35, ptr %33, align 4, !tbaa !90
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 35, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !90
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 35, i64 1
  store float %37, ptr %38, align 4, !tbaa !90
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 35, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !90
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 35, i64 2
  store float %40, ptr %41, align 4, !tbaa !90
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 36
  %43 = load float, ptr %42, align 4, !tbaa !147
  %44 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 36
  store float %43, ptr %44, align 4, !tbaa !147
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 37
  %46 = load float, ptr %45, align 8, !tbaa !93
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 37
  store float %46, ptr %47, align 8, !tbaa !93
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 38
  %49 = load float, ptr %48, align 4, !tbaa !91
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 38
  store float %49, ptr %50, align 4, !tbaa !91
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  tail call void @BKE_constraints_copy(ptr noundef nonnull %51, ptr noundef nonnull %52, i8 noundef zeroext 1) #14
  %53 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %2
  tail call void @IDP_FreeProperty(ptr noundef nonnull %54) #14
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %58 = load ptr, ptr %53, align 8, !tbaa !116
  tail call void %57(ptr noundef %58) #14
  store ptr null, ptr %53, align 8, !tbaa !116
  br label %59

59:                                               ; preds = %56, %2
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !116
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %61) #14
  store ptr %64, ptr %53, align 8, !tbaa !116
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 18
  %67 = load ptr, ptr %66, align 8, !tbaa !112
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 18
  store ptr %67, ptr %68, align 8, !tbaa !112
  %69 = icmp eq ptr %67, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void @id_us_plus(ptr noundef nonnull %67) #14
  br label %71

71:                                               ; preds = %70, %65
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pose_update_constraint_flags(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 9
  store i8 0, ptr %6, align 8, !tbaa !148
  %7 = load ptr, ptr %5, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !149

9:                                                ; preds = %4, %1
  %10 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !150
  %12 = and i16 %11, -9
  store i16 %12, ptr %10, align 8, !tbaa !150
  %13 = load ptr, ptr %0, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %105, label %18

15:                                               ; preds = %102, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %105, label %18, !llvm.loop !151

18:                                               ; preds = %9, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %9 ]
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %15, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 9
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 9
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 9
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 13
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 9
  br label %29

29:                                               ; preds = %23, %102
  %30 = phi ptr [ %21, %23 ], [ %103, %102 ]
  %31 = getelementptr inbounds %struct.bConstraint, ptr %30, i64 0, i32 3
  %32 = load i16, ptr %31, align 8, !tbaa !131
  switch i16 %32, label %97 [
    i16 3, label %33
    i16 4, label %80
    i16 22, label %94
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bConstraint, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !133
  %36 = load i8, ptr %26, align 8, !tbaa !148
  %37 = or i8 %36, 1
  store i8 %37, ptr %26, align 8, !tbaa !148
  %38 = load ptr, ptr %35, align 8, !tbaa !152
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 3
  %42 = load i16, ptr %41, align 8, !tbaa !153
  %43 = icmp eq i16 %42, 25
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bKinematicConstraint, ptr %35, i64 0, i32 5
  %46 = load i8, ptr %45, align 8, !tbaa !78
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %33
  %49 = or i8 %36, 9
  store i8 %49, ptr %26, align 8, !tbaa !148
  br label %50

50:                                               ; preds = %48, %44, %40
  %51 = getelementptr inbounds %struct.bKinematicConstraint, ptr %35, i64 0, i32 3
  %52 = load i16, ptr %51, align 4, !tbaa !134
  %53 = icmp slt i16 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %50
  store i16 0, ptr %51, align 4, !tbaa !134
  %55 = getelementptr inbounds %struct.bKinematicConstraint, ptr %35, i64 0, i32 2
  %56 = load i16, ptr %55, align 2, !tbaa !136
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load ptr, ptr %27, align 8, !tbaa !154
  br label %61

61:                                               ; preds = %54, %59
  %62 = phi ptr [ %60, %59 ], [ %19, %54 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %102, label %64

64:                                               ; preds = %61
  %65 = load i16, ptr %51, align 4, !tbaa !134
  br label %66

66:                                               ; preds = %64, %76
  %67 = phi i16 [ %65, %64 ], [ %69, %76 ]
  %68 = phi ptr [ %62, %64 ], [ %78, %76 ]
  %69 = add i16 %67, 1
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !99
  %72 = getelementptr inbounds %struct.Bone, ptr %71, i64 0, i32 10
  %73 = load i32, ptr %72, align 8, !tbaa !155
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 13
  %78 = load ptr, ptr %77, align 8, !tbaa !154
  %79 = icmp eq ptr %78, null
  br i1 %79, label %100, label %66, !llvm.loop !156

80:                                               ; preds = %29
  %81 = getelementptr inbounds %struct.bConstraint, ptr %30, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !133
  %83 = load i8, ptr %25, align 8, !tbaa !148
  %84 = or i8 %83, 2
  store i8 %84, ptr %25, align 8, !tbaa !148
  %85 = load ptr, ptr %82, align 8, !tbaa !157
  %86 = icmp eq ptr %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 3
  %89 = load i16, ptr %88, align 8, !tbaa !153
  %90 = icmp eq i16 %89, 2
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i16, ptr %10, align 8, !tbaa !150
  %93 = or i16 %92, 8
  store i16 %93, ptr %10, align 8, !tbaa !150
  br label %102

94:                                               ; preds = %29
  %95 = load i8, ptr %24, align 8, !tbaa !148
  %96 = or i8 %95, 32
  store i8 %96, ptr %24, align 8, !tbaa !148
  br label %102

97:                                               ; preds = %29
  %98 = load i8, ptr %28, align 8, !tbaa !148
  %99 = or i8 %98, 2
  store i8 %99, ptr %28, align 8, !tbaa !148
  br label %102

100:                                              ; preds = %76
  store i16 %69, ptr %51, align 4, !tbaa !134
  br label %102

101:                                              ; preds = %66
  store i16 %69, ptr %51, align 4, !tbaa !134
  br label %102

102:                                              ; preds = %61, %100, %101, %80, %87, %91, %50, %94, %97
  %103 = load ptr, ptr %30, align 8, !tbaa !56
  %104 = icmp eq ptr %103, null
  br i1 %104, label %15, label %29, !llvm.loop !159

105:                                              ; preds = %15, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @framechange_poses_clear_unkeyed() local_unnamed_addr #5 {
  %1 = load ptr, ptr @G, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %0, %25
  %6 = phi ptr [ %26, %25 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10, %22
  %14 = phi ptr [ %23, %22 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !155
  %21 = and i32 %20, -8193
  store i32 %21, ptr %19, align 8, !tbaa !155
  br label %22

22:                                               ; preds = %13, %18
  %23 = load ptr, ptr %14, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %13, !llvm.loop !160

25:                                               ; preds = %22, %10, %5
  %26 = load ptr, ptr %6, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %5, !llvm.loop !161

28:                                               ; preds = %25, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_pose_add_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.1, ptr %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %6 = tail call ptr %5(i64 noundef 120, ptr noundef nonnull @.str.7) #14
  %7 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %4, i64 noundef 64) #14
  %9 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %6) #14
  tail call void @BLI_uniquename(ptr noundef nonnull %9, ptr noundef %6, ptr noundef nonnull %4, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #14
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #14
  %11 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 10
  store i32 %10, ptr %11, align 8, !tbaa !162
  ret ptr %6
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_remove_group(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %1) #14
  %8 = add nsw i32 %7, 1
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ %2, %3 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9, %25
  %14 = phi ptr [ %26, %25 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !145
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %10, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = icmp slt i32 %10, %17
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = add i16 %16, -1
  br label %23

23:                                               ; preds = %13, %21
  %24 = phi i16 [ %22, %21 ], [ 0, %13 ]
  store i16 %24, ptr %15, align 2, !tbaa !145
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %14, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !163

28:                                               ; preds = %25, %9
  %29 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  tail call void @BLI_freelinkN(ptr noundef nonnull %29, ptr noundef %1) #14
  %30 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 10
  %31 = load i32, ptr %30, align 8, !tbaa !162
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = add nsw i32 %31, -1
  store i32 %34, ptr %30, align 8, !tbaa !162
  %35 = icmp slt i32 %31, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %29, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store i32 0, ptr %30, align 8, !tbaa !162
  br label %40

40:                                               ; preds = %36, %39, %28
  ret void
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_remove_group_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  %4 = add nsw i32 %1, -1
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %3, i32 noundef %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = icmp slt i32 %1, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %11 = add nsw i32 %10, 1
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %11, %9 ], [ %1, %7 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12, %28
  %17 = phi ptr [ %29, %28 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !145
  %20 = sext i16 %19 to i32
  %21 = icmp eq i32 %13, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = icmp slt i32 %13, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add i16 %19, -1
  br label %26

26:                                               ; preds = %16, %24
  %27 = phi i16 [ %25, %24 ], [ 0, %16 ]
  store i16 %27, ptr %18, align 2, !tbaa !145
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %17, align 8, !tbaa !56
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !163

31:                                               ; preds = %28, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %32 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !162
  %34 = icmp slt i32 %33, %13
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %33, -1
  store i32 %36, ptr %32, align 8, !tbaa !162
  %37 = icmp slt i32 %33, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 8, !tbaa !79
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i32 0, ptr %32, align 8, !tbaa !162
  br label %42

42:                                               ; preds = %41, %38, %31, %2
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @action_has_motion(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !164
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %5, label %13, !llvm.loop !165

13:                                               ; preds = %5, %9, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %9 ], [ 0, %5 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @calc_action_range(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %82, label %12

12:                                               ; preds = %8
  %13 = icmp eq i16 %3, 0
  br label %14

14:                                               ; preds = %12, %72
  %15 = phi ptr [ %10, %12 ], [ %76, %72 ]
  %16 = phi float [ 1.000000e+09, %12 ], [ %75, %72 ]
  %17 = phi float [ -1.000000e+09, %12 ], [ %74, %72 ]
  %18 = phi i16 [ 0, %12 ], [ %73, %72 ]
  %19 = phi i16 [ 0, %12 ], [ %32, %72 ]
  %20 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !164
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %24 = call zeroext i8 @calc_fcurve_range(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 1) #14
  %25 = load float, ptr %5, align 4, !tbaa !90
  %26 = fcmp olt float %16, %25
  %27 = select i1 %26, float %16, float %25
  %28 = load float, ptr %6, align 4, !tbaa !90
  %29 = fcmp ogt float %17, %28
  %30 = select i1 %29, float %17, float %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %31

31:                                               ; preds = %23, %14
  %32 = phi i16 [ 1, %23 ], [ %19, %14 ]
  %33 = phi float [ %30, %23 ], [ %17, %14 ]
  %34 = phi float [ %27, %23 ], [ %16, %14 ]
  br i1 %13, label %72, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 4, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !166
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.FModifier, ptr %37, i64 0, i32 4
  %41 = load i16, ptr %40, align 8, !tbaa !167
  switch i16 %41, label %72 [
    i16 8, label %42
    i16 4, label %62
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.FModifier, ptr %37, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !169
  %45 = getelementptr inbounds %struct.FMod_Limits, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !170
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load float, ptr %44, align 4, !tbaa !173
  %51 = fcmp olt float %34, %50
  %52 = select i1 %51, float %34, float %50
  br label %53

53:                                               ; preds = %49, %42
  %54 = phi float [ %52, %49 ], [ %34, %42 ]
  %55 = and i32 %46, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.rctf, ptr %44, i64 0, i32 1
  %59 = load float, ptr %58, align 4, !tbaa !174
  %60 = fcmp ogt float %33, %59
  %61 = select i1 %60, float %33, float %59
  br label %72

62:                                               ; preds = %39
  %63 = getelementptr inbounds %struct.FModifier, ptr %37, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !169
  %65 = load i16, ptr %64, align 2, !tbaa !175
  %66 = icmp eq i16 %65, 0
  %67 = select i1 %66, float %34, float -3.000000e+05
  %68 = getelementptr inbounds %struct.FMod_Cycles, ptr %64, i64 0, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !177
  %70 = icmp eq i16 %69, 0
  %71 = select i1 %70, float %33, float 3.000000e+05
  br label %72

72:                                               ; preds = %62, %57, %53, %39, %31, %35
  %73 = phi i16 [ %18, %35 ], [ %18, %31 ], [ 1, %39 ], [ 1, %53 ], [ 1, %57 ], [ 1, %62 ]
  %74 = phi float [ %33, %35 ], [ %33, %31 ], [ 3.000000e+05, %39 ], [ %33, %53 ], [ %61, %57 ], [ %71, %62 ]
  %75 = phi float [ %34, %35 ], [ %34, %31 ], [ -3.000000e+05, %39 ], [ %54, %53 ], [ %54, %57 ], [ %67, %62 ]
  %76 = load ptr, ptr %15, align 8, !tbaa !56
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %14, !llvm.loop !178

78:                                               ; preds = %72
  %79 = icmp ne i16 %32, 0
  %80 = icmp ne i16 %73, 0
  %81 = select i1 %79, i1 true, i1 %80
  br label %82

82:                                               ; preds = %78, %8, %4
  %83 = phi i1 [ false, %4 ], [ false, %8 ], [ %81, %78 ]
  %84 = phi float [ -1.000000e+09, %4 ], [ -1.000000e+09, %8 ], [ %74, %78 ]
  %85 = phi float [ 1.000000e+09, %4 ], [ 1.000000e+09, %8 ], [ %75, %78 ]
  br i1 %83, label %86, label %90

86:                                               ; preds = %82
  %87 = fcmp oeq float %85, %84
  %88 = fadd float %84, 1.000000e+00
  %89 = select i1 %87, float %88, float %84
  br label %90

90:                                               ; preds = %82, %86
  %91 = phi float [ %85, %86 ], [ 0.000000e+00, %82 ]
  %92 = phi float [ %89, %86 ], [ 1.000000e+00, %82 ]
  store float %91, ptr %1, align 4, !tbaa !90
  store float %92, ptr %2, align 4, !tbaa !90
  ret void
}

declare zeroext i8 @calc_fcurve_range(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local signext i16 @action_get_item_transforms(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %2, ptr noundef nonnull %5) #14
  br label %11

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %8
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %5) #14
  br label %11

11:                                               ; preds = %10, %7
  %12 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %5) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %16 = icmp eq ptr %3, null
  br label %17

17:                                               ; preds = %74, %14
  %18 = phi ptr [ %15, %14 ], [ %20, %74 ]
  %19 = phi i16 [ 0, %14 ], [ %75, %74 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %76, label %22

22:                                               ; preds = %17
  %23 = zext nneg i16 %19 to i32
  %24 = icmp eq i16 %19, 15
  %25 = and i1 %16, %24
  br i1 %25, label %74, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = icmp eq ptr %28, null
  br i1 %29, label %74, label %30

30:                                               ; preds = %26
  %31 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %12) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %30
  %34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #15
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  %36 = and i32 %23, 1
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %16, i1 %37, i1 false
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.8) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = or i16 %19, 1
  br i1 %16, label %74, label %71

44:                                               ; preds = %33, %39
  %45 = and i32 %23, 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %16, i1 %46, i1 false
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.9) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = or i16 %19, 4
  br i1 %16, label %74, label %71

53:                                               ; preds = %44, %48
  %54 = and i32 %23, 2
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %16, i1 %55, i1 false
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.10) #15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = or i16 %19, 2
  br i1 %16, label %74, label %71

62:                                               ; preds = %53, %57
  %63 = and i32 %23, 8
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %16, i1 %64, i1 false
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.11) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = or i16 %19, 8
  br i1 %16, label %74, label %71

71:                                               ; preds = %69, %60, %51, %42
  %72 = phi i16 [ %43, %42 ], [ %52, %51 ], [ %61, %60 ], [ %70, %69 ]
  %73 = call ptr @BLI_genericNodeN(ptr noundef nonnull %20) #14
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %73) #14
  br label %74

74:                                               ; preds = %71, %30, %66, %62, %69, %60, %51, %42, %26, %22
  %75 = phi i16 [ %19, %22 ], [ %19, %26 ], [ %43, %42 ], [ %52, %51 ], [ %61, %60 ], [ %70, %69 ], [ %19, %62 ], [ %19, %66 ], [ %19, %30 ], [ %72, %71 ]
  br i1 %25, label %76, label %17, !llvm.loop !180

76:                                               ; preds = %74, %17
  %77 = phi i16 [ %75, %74 ], [ %19, %17 ]
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %78(ptr noundef nonnull %12) #14
  br label %79

79:                                               ; preds = %11, %8, %76
  %80 = phi i16 [ %77, %76 ], [ 0, %8 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret i16 %80
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_path_from_ID_to_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @extract_pose_from_pose(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !56
  %6 = load ptr, ptr %1, align 8, !tbaa !56
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %18, label %93

10:                                               ; preds = %2
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %93

12:                                               ; preds = %79, %18
  %13 = load ptr, ptr %20, align 8, !tbaa !56
  %14 = load ptr, ptr %19, align 8, !tbaa !56
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %13, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %93, !llvm.loop !181

18:                                               ; preds = %4, %12
  %19 = phi ptr [ %14, %12 ], [ %6, %4 ]
  %20 = phi ptr [ %13, %12 ], [ %5, %4 ]
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 20
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 20
  %23 = load float, ptr %22, align 4, !tbaa !90
  store float %23, ptr %21, align 4, !tbaa !90
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 20, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !90
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 20, i64 1
  store float %25, ptr %26, align 4, !tbaa !90
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 20, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !90
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 20, i64 2
  store float %28, ptr %29, align 4, !tbaa !90
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 21
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 21
  %32 = load float, ptr %31, align 4, !tbaa !90
  store float %32, ptr %30, align 4, !tbaa !90
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 21, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !90
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 21, i64 1
  store float %34, ptr %35, align 4, !tbaa !90
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 21, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !90
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 21, i64 2
  store float %37, ptr %38, align 4, !tbaa !90
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 22
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 22
  %41 = load float, ptr %40, align 4, !tbaa !90
  store float %41, ptr %39, align 4, !tbaa !90
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 22, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !90
  %44 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 22, i64 1
  store float %43, ptr %44, align 4, !tbaa !90
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 22, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !90
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 22, i64 2
  store float %46, ptr %47, align 4, !tbaa !90
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 24
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 24
  %50 = load float, ptr %49, align 4, !tbaa !90
  store float %50, ptr %48, align 4, !tbaa !90
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 24, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !90
  %53 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 24, i64 1
  store float %52, ptr %53, align 4, !tbaa !90
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 24, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !90
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 24, i64 2
  store float %55, ptr %56, align 4, !tbaa !90
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 25
  %58 = load float, ptr %57, align 8, !tbaa !182
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 25
  store float %58, ptr %59, align 8, !tbaa !182
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 23
  %61 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 23
  tail call void @copy_qt_qt(ptr noundef nonnull %60, ptr noundef nonnull %61) #14
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 26
  %63 = load i16, ptr %62, align 4, !tbaa !144
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 26
  store i16 %63, ptr %64, align 4, !tbaa !144
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 28
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 28
  tail call void @copy_m4_m4(ptr noundef nonnull %65, ptr noundef nonnull %66) #14
  %67 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 29
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 29
  tail call void @copy_m4_m4(ptr noundef nonnull %67, ptr noundef nonnull %68) #14
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 5
  %70 = load i16, ptr %69, align 8, !tbaa !183
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 5
  store i16 %70, ptr %71, align 8, !tbaa !183
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 3
  %73 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 3
  %74 = load ptr, ptr %72, align 8, !tbaa !56
  %75 = load ptr, ptr %73, align 8, !tbaa !56
  %76 = icmp ne ptr %75, null
  %77 = icmp ne ptr %74, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %12

79:                                               ; preds = %18, %79
  %80 = phi ptr [ %89, %79 ], [ %75, %18 ]
  %81 = phi ptr [ %88, %79 ], [ %74, %18 ]
  %82 = getelementptr inbounds %struct.bConstraint, ptr %81, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !184
  %84 = getelementptr inbounds %struct.bConstraint, ptr %80, i64 0, i32 9
  store float %83, ptr %84, align 8, !tbaa !184
  %85 = getelementptr inbounds %struct.bConstraint, ptr %81, i64 0, i32 10
  %86 = load float, ptr %85, align 4, !tbaa !185
  %87 = getelementptr inbounds %struct.bConstraint, ptr %80, i64 0, i32 10
  store float %86, ptr %87, align 4, !tbaa !185
  %88 = load ptr, ptr %81, align 8, !tbaa !56
  %89 = load ptr, ptr %80, align 8, !tbaa !56
  %90 = icmp ne ptr %89, null
  %91 = icmp ne ptr %88, null
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %79, label %12, !llvm.loop !186

93:                                               ; preds = %12, %4, %10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pose_rest(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %24, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 20
  store float 0.000000e+00, ptr %9, align 4, !tbaa !90
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 20, i64 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !90
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 20, i64 2
  store float 0.000000e+00, ptr %11, align 4, !tbaa !90
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 22
  store float 0.000000e+00, ptr %12, align 4, !tbaa !90
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 22, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !90
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 22, i64 2
  store float 0.000000e+00, ptr %14, align 4, !tbaa !90
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 23
  tail call void @unit_qt(ptr noundef nonnull %15) #14
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 24
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 25
  tail call void @unit_axis_angle(ptr noundef nonnull %16, ptr noundef nonnull %17) #14
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 21
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %19, align 4, !tbaa !90
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 21, i64 1
  store float 1.000000e+00, ptr %20, align 4, !tbaa !90
  store float 1.000000e+00, ptr %18, align 4, !tbaa !90
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !183
  %23 = and i16 %22, -8
  store i16 %23, ptr %21, align 8, !tbaa !183
  %24 = load ptr, ptr %8, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !187

26:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_pose_copy_result(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %0, ptr noundef %1)
  br label %96

8:                                                ; preds = %2
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %1, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %96, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  br label %17

15:                                               ; preds = %8
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %96

17:                                               ; preds = %13, %93
  %18 = phi ptr [ %11, %13 ], [ %94, %93 ]
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 4
  %20 = load i8, ptr %19, align 1, !tbaa !78
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %14, align 8, !tbaa !87
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %23, ptr noundef nonnull %19) #14
  br label %29

27:                                               ; preds = %22
  %28 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 40) #14
  br label %29

29:                                               ; preds = %17, %25, %27
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ], [ null, %17 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %93, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 29
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 29
  tail call void @copy_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %34) #14
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 28
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 28
  tail call void @copy_m4_m4(ptr noundef nonnull %35, ptr noundef nonnull %36) #14
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 20
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 20
  %39 = load float, ptr %38, align 4, !tbaa !90
  store float %39, ptr %37, align 4, !tbaa !90
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 20, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !90
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 20, i64 1
  store float %41, ptr %42, align 4, !tbaa !90
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 20, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !90
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 20, i64 2
  store float %44, ptr %45, align 4, !tbaa !90
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 23
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 23
  tail call void @copy_qt_qt(ptr noundef nonnull %46, ptr noundef nonnull %47) #14
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 22
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 22
  %50 = load float, ptr %49, align 4, !tbaa !90
  store float %50, ptr %48, align 4, !tbaa !90
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 22, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !90
  %53 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 22, i64 1
  store float %52, ptr %53, align 4, !tbaa !90
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 22, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !90
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 22, i64 2
  store float %55, ptr %56, align 4, !tbaa !90
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 21
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 21
  %59 = load float, ptr %58, align 4, !tbaa !90
  store float %59, ptr %57, align 4, !tbaa !90
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 21, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !90
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 21, i64 1
  store float %61, ptr %62, align 4, !tbaa !90
  %63 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 21, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !90
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 21, i64 2
  store float %64, ptr %65, align 4, !tbaa !90
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 31
  %67 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 31
  %68 = load float, ptr %67, align 4, !tbaa !90
  store float %68, ptr %66, align 4, !tbaa !90
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 31, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !90
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 31, i64 1
  store float %70, ptr %71, align 4, !tbaa !90
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 31, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !90
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 31, i64 2
  store float %73, ptr %74, align 4, !tbaa !90
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 32
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 32
  %77 = load float, ptr %76, align 4, !tbaa !90
  store float %77, ptr %75, align 4, !tbaa !90
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 32, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !90
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 32, i64 1
  store float %79, ptr %80, align 4, !tbaa !90
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 32, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !90
  %83 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 32, i64 2
  store float %82, ptr %83, align 4, !tbaa !90
  %84 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 26
  %85 = load i16, ptr %84, align 4, !tbaa !144
  %86 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 26
  store i16 %85, ptr %86, align 4, !tbaa !144
  %87 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 5
  %88 = load i16, ptr %87, align 8, !tbaa !183
  %89 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 5
  store i16 %88, ptr %89, align 8, !tbaa !183
  %90 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 7
  %91 = load i16, ptr %90, align 4, !tbaa !94
  %92 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 7
  store i16 %91, ptr %92, align 4, !tbaa !94
  br label %93

93:                                               ; preds = %29, %32
  %94 = load ptr, ptr %18, align 8, !tbaa !56
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %17, !llvm.loop !188

96:                                               ; preds = %93, %10, %15, %6
  %97 = phi i8 [ 0, %6 ], [ 0, %15 ], [ 1, %10 ], [ 1, %93 ]
  ret i8 %97
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @what_does_obaction(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.AnimData, align 8
  %9 = icmp eq ptr %3, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  %14 = icmp eq ptr %4, null
  %15 = or i1 %14, %13
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load i8, ptr %4, align 1, !tbaa !78
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @BLI_findstring(ptr noundef nonnull %11, ptr noundef nonnull %4, i32 noundef 40) #14
  br label %21

21:                                               ; preds = %6, %10, %16, %19
  %22 = phi ptr [ %20, %19 ], [ null, %16 ], [ null, %10 ], [ null, %6 ]
  tail call void @BKE_object_workob_clear(ptr noundef %1) #14
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %24) #14
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 48
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @copy_m4_m4(ptr noundef nonnull %25, ptr noundef nonnull %26) #14
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 49
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 49
  tail call void @copy_m4_m4(ptr noundef nonnull %27, ptr noundef nonnull %28) #14
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !189
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  store ptr %30, ptr %31, align 8, !tbaa !189
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %33 = load i16, ptr %32, align 8, !tbaa !190
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 83
  store i16 %33, ptr %34, align 8, !tbaa !190
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 57
  %36 = load i16, ptr %35, align 4, !tbaa !191
  %37 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  store i16 %36, ptr %37, align 4, !tbaa !191
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 58
  %39 = load i16, ptr %38, align 2, !tbaa !192
  %40 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 58
  store i16 %39, ptr %40, align 2, !tbaa !192
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %42 = load i16, ptr %41, align 2, !tbaa !193
  %43 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  store i16 %42, ptr %43, align 2, !tbaa !193
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !194
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 5
  store i32 %45, ptr %46, align 4, !tbaa !194
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !195
  %49 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 6
  store i32 %48, ptr %49, align 8, !tbaa !195
  %50 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 7
  %51 = load i32, ptr %50, align 4, !tbaa !196
  %52 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 7
  store i32 %51, ptr %52, align 4, !tbaa !196
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %54 = load ptr, ptr %53, align 8, !tbaa !197
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  store ptr %54, ptr %55, align 8, !tbaa !197
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !198
  %58 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !198
  %59 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  store ptr %2, ptr %59, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 8
  %61 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 8
  %62 = tail call ptr @BLI_strncpy(ptr noundef nonnull %60, ptr noundef nonnull %61, i64 noundef 64) #14
  %63 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %64 = tail call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull @.str.15, i64 noundef 66) #14
  %65 = icmp eq ptr %22, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %7) #14
  call void @animsys_evaluate_action_group(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %22, ptr noundef null, float noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %70

67:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i64 96, i1 false)
  %68 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  store ptr %8, ptr %68, align 8, !tbaa !199
  %69 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 8
  store i32 2, ptr %69, align 4, !tbaa !200
  store ptr %3, ptr %8, align 8, !tbaa !52
  call void @BKE_animsys_evaluate_animdata(ptr noundef null, ptr noundef %1, ptr noundef nonnull %8, float noundef %5, i16 noundef signext 2) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #14
  br label %70

70:                                               ; preds = %67, %66
  ret void
}

declare void @BKE_object_workob_clear(ptr noundef) local_unnamed_addr #2

declare void @animsys_evaluate_action_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!35 = !{!"tMakeLocalActionContext", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!35, !37, i64 16}
!41 = !{!35, !37, i64 17}
!42 = !{!43, !36, i64 0}
!43 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !45, i64 2084, !45, i64 2086, !45, i64 2088, !37, i64 2090, !45, i64 2092, !46, i64 2096, !46, i64 2100, !37, i64 2104, !46, i64 2108, !46, i64 2112, !37, i64 2116}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!"short", !37, i64 0}
!46 = !{!"int", !37, i64 0}
!47 = !{!48, !36, i64 24}
!48 = !{!"bAction", !49, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !45, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !36, i64 112}
!50 = !{!48, !45, i64 98}
!51 = !{!48, !46, i64 100}
!52 = !{!53, !36, i64 0}
!53 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !36, i64 40, !44, i64 48, !44, i64 64, !46, i64 80, !46, i64 84, !45, i64 88, !45, i64 90, !54, i64 92}
!54 = !{!"float", !37, i64 0}
!55 = !{!49, !36, i64 24}
!56 = !{!36, !36, i64 0}
!57 = !{!58, !36, i64 16}
!58 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !36, i64 48, !36, i64 56, !46, i64 64, !54, i64 68, !45, i64 72, !45, i64 74, !46, i64 76, !36, i64 80, !46, i64 88, !37, i64 92, !54, i64 104, !54, i64 108}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !36, i64 16}
!63 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !44, i64 16, !46, i64 32, !46, i64 36, !37, i64 40, !64, i64 104}
!64 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !45, i64 12, !45, i64 14}
!65 = !{!63, !36, i64 24}
!66 = distinct !{!66, !60, !61}
!67 = !{!48, !36, i64 152}
!68 = !{!48, !36, i64 168}
!69 = !{!63, !46, i64 32}
!70 = !{!63, !36, i64 0}
!71 = distinct !{!71, !60, !61}
!72 = distinct !{!72, !60, !61}
!73 = !{!63, !46, i64 36}
!74 = !{!75, !36, i64 8536}
!75 = !{!"UserDef", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !46, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !46, i64 8484, !46, i64 8488, !46, i64 8492, !45, i64 8496, !45, i64 8498, !46, i64 8500, !46, i64 8504, !46, i64 8508, !46, i64 8512, !46, i64 8516, !46, i64 8520, !46, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !37, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !46, i64 8912, !46, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !54, i64 8956, !54, i64 8960, !46, i64 8964, !45, i64 8968, !45, i64 8970, !54, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !76, i64 8984, !37, i64 9760, !37, i64 9772, !45, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !46, i64 10896, !46, i64 10900, !54, i64 10904, !54, i64 10908, !46, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !77, i64 10928}
!76 = !{!"ColorBand", !45, i64 0, !45, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!77 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !45, i64 24, !37, i64 26}
!78 = !{!37, !37, i64 0}
!79 = !{!44, !36, i64 0}
!80 = !{!48, !36, i64 128}
!81 = !{!48, !36, i64 120}
!82 = !{!63, !36, i64 8}
!83 = distinct !{!83, !60, !61}
!84 = !{!58, !36, i64 0}
!85 = !{!58, !36, i64 8}
!86 = distinct !{!86, !60, !61}
!87 = !{!88, !36, i64 16}
!88 = !{!"bPose", !44, i64 0, !36, i64 16, !45, i64 24, !45, i64 26, !46, i64 28, !46, i64 32, !54, i64 36, !37, i64 40, !37, i64 52, !44, i64 64, !46, i64 80, !46, i64 84, !36, i64 88, !36, i64 96, !89, i64 104, !37, i64 152}
!89 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!90 = !{!54, !54, i64 0}
!91 = !{!92, !54, i64 532}
!92 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !37, i64 40, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !44, i64 144, !44, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !54, i64 264, !45, i64 268, !45, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !54, i64 524, !54, i64 528, !54, i64 532, !36, i64 536}
!93 = !{!92, !54, i64 528}
!94 = !{!92, !45, i64 108}
!95 = !{!96, !36, i64 296}
!96 = !{!"Object", !49, i64 0, !36, i64 120, !36, i64 128, !45, i64 136, !45, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !89, i64 312, !36, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !46, i64 432, !46, i64 436, !36, i64 440, !36, i64 448, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !46, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !37, i64 966, !37, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !37, i64 1042, !37, i64 1043, !45, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !54, i64 1120, !45, i64 1124, !45, i64 1126, !37, i64 1128, !46, i64 1144, !46, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !45, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !45, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !97, i64 1304, !97, i64 1312, !46, i64 1320, !46, i64 1324, !44, i64 1328, !44, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !44, i64 1400, !36, i64 1416}
!97 = !{!"long", !37, i64 0}
!98 = !{!96, !36, i64 288}
!99 = !{!92, !36, i64 120}
!100 = !{!101, !36, i64 168}
!101 = !{!"bArmature", !49, i64 0, !36, i64 120, !44, i64 128, !44, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !45, i64 208, !45, i64 210, !46, i64 212, !46, i64 216, !46, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252}
!102 = !{!103, !46, i64 320}
!103 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !37, i64 48, !54, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !46, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !54, i64 268, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !37, i64 308, !46, i64 320, !45, i64 324, !37, i64 326}
!104 = !{!101, !46, i64 216}
!105 = distinct !{!105, !60, !61}
!106 = !{!88, !46, i64 84}
!107 = !{!88, !36, i64 88}
!108 = !{!88, !36, i64 96}
!109 = !{i64 0, i64 4, !110, i64 4, i64 4, !110, i64 8, i64 4, !110, i64 12, i64 4, !110, i64 16, i64 2, !111, i64 18, i64 2, !111, i64 20, i64 2, !111, i64 22, i64 2, !111, i64 24, i64 2, !111, i64 26, i64 2, !111, i64 28, i64 2, !111, i64 30, i64 2, !111, i64 32, i64 4, !110, i64 36, i64 4, !110, i64 40, i64 4, !110, i64 44, i64 4, !110}
!110 = !{!46, !46, i64 0}
!111 = !{!45, !45, i64 0}
!112 = !{!92, !36, i64 184}
!113 = !{!92, !36, i64 192}
!114 = !{i64 0, i64 8, !56, i64 8, i64 8, !56}
!115 = !{!92, !36, i64 176}
!116 = !{!92, !36, i64 16}
!117 = distinct !{!117, !60, !61}
!118 = !{!119, !46, i64 0}
!119 = !{!"bItasc", !46, i64 0, !54, i64 4, !45, i64 8, !45, i64 10, !54, i64 12, !54, i64 16, !45, i64 20, !45, i64 22, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36}
!120 = !{!119, !54, i64 12}
!121 = !{!119, !54, i64 16}
!122 = !{!119, !45, i64 8}
!123 = !{!119, !45, i64 10}
!124 = !{!119, !54, i64 4}
!125 = !{!119, !45, i64 22}
!126 = !{!119, !54, i64 24}
!127 = !{!119, !54, i64 28}
!128 = !{!119, !45, i64 20}
!129 = !{!119, !54, i64 32}
!130 = !{!119, !54, i64 36}
!131 = !{!132, !45, i64 24}
!132 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !45, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !45, i64 94, !54, i64 96, !54, i64 100, !36, i64 104, !54, i64 112, !54, i64 116}
!133 = !{!132, !36, i64 16}
!134 = !{!135, !45, i64 12}
!135 = !{!"bKinematicConstraint", !36, i64 0, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !37, i64 16, !36, i64 80, !37, i64 88, !54, i64 152, !54, i64 156, !54, i64 160, !37, i64 164, !45, i64 176, !45, i64 178, !54, i64 180}
!136 = !{!135, !45, i64 10}
!137 = distinct !{!137, !60, !61}
!138 = distinct !{!138, !60, !61}
!139 = distinct !{!139, !60, !61}
!140 = !{!88, !36, i64 0}
!141 = !{!92, !36, i64 0}
!142 = distinct !{!142, !60, !61}
!143 = !{!88, !36, i64 64}
!144 = !{!92, !45, i64 268}
!145 = !{!92, !45, i64 110}
!146 = !{!92, !45, i64 106}
!147 = !{!92, !54, i64 524}
!148 = !{!92, !37, i64 112}
!149 = distinct !{!149, !60, !61}
!150 = !{!88, !45, i64 24}
!151 = distinct !{!151, !60, !61}
!152 = !{!135, !36, i64 0}
!153 = !{!96, !45, i64 136}
!154 = !{!92, !36, i64 128}
!155 = !{!103, !46, i64 176}
!156 = distinct !{!156, !60, !61}
!157 = !{!158, !36, i64 0}
!158 = !{!"bFollowPathConstraint", !36, i64 0, !54, i64 8, !54, i64 12, !46, i64 16, !45, i64 20, !45, i64 22}
!159 = distinct !{!159, !60, !61}
!160 = distinct !{!160, !60, !61}
!161 = distinct !{!161, !60, !61}
!162 = !{!88, !46, i64 80}
!163 = distinct !{!163, !60, !61}
!164 = !{!58, !46, i64 64}
!165 = distinct !{!165, !60, !61}
!166 = !{!58, !36, i64 40}
!167 = !{!168, !45, i64 88}
!168 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !45, i64 88, !45, i64 90, !54, i64 92, !54, i64 96, !54, i64 100, !54, i64 104, !54, i64 108}
!169 = !{!168, !36, i64 16}
!170 = !{!171, !46, i64 16}
!171 = !{!"FMod_Limits", !172, i64 0, !46, i64 16, !46, i64 20}
!172 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!173 = !{!171, !54, i64 0}
!174 = !{!171, !54, i64 4}
!175 = !{!176, !45, i64 0}
!176 = !{!"FMod_Cycles", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!177 = !{!176, !45, i64 2}
!178 = distinct !{!178, !60, !61}
!179 = !{!58, !36, i64 80}
!180 = distinct !{!180, !60, !61}
!181 = distinct !{!181, !60, !61}
!182 = !{!92, !54, i64 264}
!183 = !{!92, !45, i64 104}
!184 = !{!132, !54, i64 96}
!185 = !{!132, !54, i64 100}
!186 = distinct !{!186, !60, !61}
!187 = distinct !{!187, !60, !61}
!188 = distinct !{!188, !60, !61}
!189 = !{!96, !36, i64 216}
!190 = !{!96, !45, i64 1040}
!191 = !{!96, !45, i64 956}
!192 = !{!96, !45, i64 958}
!193 = !{!96, !45, i64 138}
!194 = !{!96, !46, i64 140}
!195 = !{!96, !46, i64 144}
!196 = !{!96, !46, i64 148}
!197 = !{!96, !36, i64 1176}
!198 = !{!96, !36, i64 1184}
!199 = !{!96, !36, i64 120}
!200 = !{!53, !46, i64 84}
