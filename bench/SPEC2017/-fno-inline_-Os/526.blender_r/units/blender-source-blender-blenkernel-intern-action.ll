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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_empty_action(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17217, ptr noundef %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_action_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tMakeLocalActionContext, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
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
  tail call void @id_clear_lib_data(ptr noundef %6, ptr noundef nonnull %0) #15
  br label %34

20:                                               ; preds = %15, %10
  call void @BKE_animdata_main_cb(ptr noundef %6, ptr noundef nonnull @make_localact_init_cb, ptr noundef nonnull %2) #15
  %21 = load i8, ptr %5, align 1, !tbaa !41
  %22 = icmp ne i8 %21, 0
  %23 = load i8, ptr %4, align 8
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @id_clear_lib_data(ptr noundef %6, ptr noundef nonnull %0) #15
  br label %34

27:                                               ; preds = %20
  %28 = icmp ne i8 %23, 0
  %29 = select i1 %22, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call ptr @BKE_action_copy(ptr noundef nonnull %0) #17
  store ptr %31, ptr %3, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 6
  store i32 0, ptr %32, align 4, !tbaa !51
  %33 = load ptr, ptr %7, align 8, !tbaa !47
  call void @BKE_id_lib_local_paths(ptr noundef %6, ptr noundef %33, ptr noundef %31) #15
  call void @BKE_animdata_main_cb(ptr noundef %6, ptr noundef nonnull @make_localact_apply_cb, ptr noundef nonnull %2) #15
  br label %34

34:                                               ; preds = %26, %30, %27, %1, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_animdata_main_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @make_localact_init_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #3 !PGOFuncName !52 {
  %4 = load ptr, ptr %1, align 8, !tbaa !53
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !56
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_action_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BKE_libblock_copy(ptr noundef nonnull %0) #15
  %5 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 3
  %6 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %7 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 4
  %8 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %9 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %9) #17
  %10 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %3, %39
  %14 = phi ptr [ %40, %39 ], [ %11, %3 ]
  %15 = tail call ptr @copy_fcurve(ptr noundef nonnull %14) #15
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 2
  br label %17

17:                                               ; preds = %25, %13
  %18 = phi ptr [ %5, %13 ], [ %21, %25 ]
  %19 = phi ptr [ %6, %13 ], [ %20, %25 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = load ptr, ptr %18, align 8, !tbaa !57
  %22 = icmp ne ptr %21, null
  %23 = icmp ne ptr %20, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load ptr, ptr %16, align 8, !tbaa !58
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %28, label %17, !llvm.loop !60

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 2
  store ptr %21, ptr %29, align 8, !tbaa !58
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
  %40 = load ptr, ptr %14, align 8, !tbaa !57
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %13, !llvm.loop !66

42:                                               ; preds = %39, %3, %1
  %43 = phi ptr [ null, %1 ], [ %4, %3 ], [ %4, %39 ]
  ret ptr %43
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_localact_apply_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !67 {
  %4 = load ptr, ptr %1, align 8, !tbaa !53
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tMakeLocalActionContext, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  store ptr %13, ptr %1, align 8, !tbaa !53
  tail call void @id_us_plus(ptr noundef %13) #15
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @id_us_min(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %7, %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_action_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  tail call void @free_fcurves(ptr noundef nonnull %4) #15
  %5 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #15
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %1, %13, %9
  ret void
}

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !70 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_active_actiongroup(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !73

16:                                               ; preds = %13, %7, %3, %1
  %17 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %13 ], [ %8, %7 ]
  ret ptr %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_active_action_group(ptr noundef readonly %0, ptr noundef readnone %1, i16 noundef signext %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = icmp ne i16 %2, 0
  %11 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 3
  br label %12

12:                                               ; preds = %9, %23
  %13 = phi ptr [ %7, %9 ], [ %24, %23 ]
  %14 = icmp eq ptr %13, %1
  %15 = and i1 %10, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, ptr %11, align 8, !tbaa !71
  %18 = or i32 %17, 2
  store i32 %18, ptr %11, align 8, !tbaa !71
  br label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.bActionGroup, ptr %13, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !71
  %22 = and i32 %21, -3
  store i32 %22, ptr %20, align 8, !tbaa !71
  br label %23

23:                                               ; preds = %16, %19
  %24 = load ptr, ptr %13, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %12, !llvm.loop !74

26:                                               ; preds = %23, %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @action_group_colors_sync(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !75
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !76
  %10 = add nsw i32 %4, -1
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds %struct.bTheme, ptr %9, i64 0, i32 21, i64 %11
  %13 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 2 dereferenceable(16) %12, i64 16, i1 false)
  br label %25

14:                                               ; preds = %6
  %15 = icmp eq ptr %1, null
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6
  br i1 %15, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  br label %25

19:                                               ; preds = %14
  %20 = load i8, ptr %16, align 8, !tbaa !80
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %16, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %23, i8 noundef zeroext -127, i8 noundef zeroext -26, i8 noundef zeroext 20) #17
  %24 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 6, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %24, i8 noundef zeroext 24, i8 noundef zeroext -74, i8 noundef zeroext -32) #17
  br label %25

25:                                               ; preds = %8, %19, %22, %17, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @rgba_char_args_set(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #4 !PGOFuncName !81 {
  store i8 %1, ptr %0, align 1, !tbaa !80
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %2, ptr %5, align 1, !tbaa !80
  %6 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %3, ptr %6, align 1, !tbaa !80
  %7 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 -1, ptr %7, align 1, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @action_groups_add_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %8 = tail call ptr %7(i64 noundef 120, ptr noundef nonnull @.str) #15
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 5
  %11 = load i8, ptr %1, align 1, !tbaa !80
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr @.str.1, ptr %1
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef nonnull %13, i64 noundef 64) #15
  %15 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %8) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %15, ptr noundef %8, ptr noundef nonnull @.str.1, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #15
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi ptr [ %8, %6 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @action_groups_add_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %11 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %10) #17, !range !82
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2
  br i1 %12, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %2, ptr %15, align 8, !tbaa !65
  store ptr %2, ptr %13, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !83
  store ptr %2, ptr %10, align 8, !tbaa !84
  br label %41

17:                                               ; preds = %9
  %18 = load ptr, ptr %13, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2, i32 1
  br i1 %19, label %28, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %20, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store ptr %2, ptr %23, align 8, !tbaa !83
  br label %27

27:                                               ; preds = %26, %21
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %13, ptr noundef %22, ptr noundef nonnull %2) #15
  br label %41

28:                                               ; preds = %17
  store ptr %2, ptr %20, align 8, !tbaa !65
  store ptr %2, ptr %13, align 8, !tbaa !62
  br label %29

29:                                               ; preds = %34, %28
  %30 = phi ptr [ %1, %28 ], [ %32, %34 ]
  %31 = getelementptr inbounds %struct.bActionGroup, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bActionGroup, ptr %32, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = icmp eq ptr %36, null
  br i1 %37, label %29, label %38, !llvm.loop !86

38:                                               ; preds = %34
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %36, ptr noundef %2) #15
  br label %41

39:                                               ; preds = %29
  %40 = load ptr, ptr %10, align 8, !tbaa !84
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %10, ptr noundef %40, ptr noundef %2) #15
  br label %41

41:                                               ; preds = %38, %39, %27, %14
  %42 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 2
  store ptr %1, ptr %42, align 8, !tbaa !58
  br label %43

43:                                               ; preds = %3, %41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @action_groups_remove_channel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
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
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %11) #17
  br label %41

19:                                               ; preds = %10
  br i1 %16, label %20, label %29

20:                                               ; preds = %19
  %21 = load ptr, ptr %1, align 8, !tbaa !89
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.FCurve, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !58
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
  %33 = load ptr, ptr %32, align 8, !tbaa !90
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = icmp eq ptr %37, %8
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store ptr %33, ptr %13, align 8, !tbaa !65
  br label %41

40:                                               ; preds = %35, %31
  store ptr null, ptr %13, align 8, !tbaa !65
  br label %41

41:                                               ; preds = %28, %27, %39, %40, %29, %17, %18
  store ptr null, ptr %7, align 8, !tbaa !58
  br label %42

42:                                               ; preds = %41, %6
  %43 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %43, ptr noundef nonnull %1) #15
  br label %44

44:                                               ; preds = %2, %42
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_action_group_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load i8, ptr %1, align 1, !tbaa !80
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef 40) #15
  br label %15

15:                                               ; preds = %2, %4, %10, %13
  %16 = phi ptr [ %14, %13 ], [ null, %10 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @action_groups_clear_tempflags(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = and i32 %10, -1073741825
  store i32 %11, ptr %9, align 8, !tbaa !71
  %12 = load ptr, ptr %8, align 8, !tbaa !72
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !91

14:                                               ; preds = %7, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !80
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %11, ptr noundef nonnull %1) #15
  br label %17

15:                                               ; preds = %9
  %16 = tail call ptr @BLI_findstring(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 40) #15
  br label %17

17:                                               ; preds = %2, %6, %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ], [ null, %6 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_pose_channel_verify(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 40) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %9 = tail call ptr %8(i64 noundef 544, ptr noundef nonnull @.str.2) #15
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 4
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 64) #15
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 23
  tail call void @unit_qt(ptr noundef nonnull %12) #15
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 24
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 25
  tail call void @unit_axis_angle(ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 21
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %16, align 4, !tbaa !95
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %15, align 4, !tbaa !95
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 33
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 34, i64 1
  store <4 x float> <float -1.800000e+02, float -1.800000e+02, float -1.800000e+02, float 1.800000e+02>, ptr %17, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %19, align 8, !tbaa !95
  store <4 x float> <float 1.800000e+02, float 1.800000e+02, float 0.000000e+00, float 0.000000e+00>, ptr %18, align 4, !tbaa !95
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 37
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 30
  tail call void @unit_m4(ptr noundef nonnull %21) #15
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 7
  store i16 1024, ptr %22, align 4, !tbaa !96
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %9) #15
  tail call void @BKE_pose_channels_hash_free(ptr noundef nonnull %0) #17
  br label %23

23:                                               ; preds = %4, %2, %7
  %24 = phi ptr [ %9, %7 ], [ null, %2 ], [ %5, %4 ]
  ret ptr %24
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_channels_hash_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #15
  store ptr null, ptr %2, align 8, !tbaa !92
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_pose_channel_active(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %34, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 5
  %16 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %17

17:                                               ; preds = %14, %31
  %18 = phi ptr [ %12, %14 ], [ %32, %31 ]
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %15, align 8, !tbaa !103
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 25
  %27 = load i32, ptr %26, align 8, !tbaa !105
  %28 = load i32, ptr %16, align 8, !tbaa !107
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17, %22, %25
  %32 = load ptr, ptr %18, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %17, !llvm.loop !108

34:                                               ; preds = %25, %31, %11, %1, %3
  %35 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %11 ], [ %18, %25 ], [ null, %31 ]
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_pose_channel_get_mirrored(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #15
  %4 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef nonnull %3) #17
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret ptr %9
}

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pose_ikparam_get_name(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = icmp eq i32 %5, 1
  %7 = select i1 %6, ptr @.str.3, ptr null
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_copy_data(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %8 = tail call ptr %7(i64 noundef 216, ptr noundef nonnull @.str.4) #15
  tail call void @BLI_duplicatelist(ptr noundef %8, ptr noundef nonnull %1) #15
  %9 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !109
  %11 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 11
  store i32 %10, ptr %11, align 4, !tbaa !109
  %12 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 12
  store ptr null, ptr %12, align 8, !tbaa !110
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = tail call ptr %13(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 13
  store ptr %16, ptr %17, align 8, !tbaa !111
  %18 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 14
  %19 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %19, i64 48, i1 false), !tbaa.struct !112
  %20 = load ptr, ptr %8, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %6
  %23 = icmp eq i8 %2, 0
  br label %24

24:                                               ; preds = %22, %47
  %25 = phi ptr [ %20, %22 ], [ %48, %47 ]
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !115
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @id_us_plus(ptr noundef nonnull %27) #15
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 4
  %36 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %8, ptr noundef nonnull %35) #17
  store ptr %36, ptr %31, align 8, !tbaa !116
  br label %37

37:                                               ; preds = %34, %30
  br i1 %23, label %41, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 3
  call void @BKE_constraints_copy(ptr noundef nonnull %4, ptr noundef nonnull %39, i8 noundef zeroext 1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !117
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 17
  store ptr null, ptr %40, align 8, !tbaa !118
  br label %41

41:                                               ; preds = %38, %37
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !119
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call ptr @IDP_CopyProperty(ptr noundef nonnull %43) #15
  store ptr %46, ptr %42, align 8, !tbaa !119
  br label %47

47:                                               ; preds = %41, %45
  %48 = load ptr, ptr %25, align 8, !tbaa !57
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %24, !llvm.loop !120

50:                                               ; preds = %47, %6
  %51 = icmp eq i8 %2, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 9
  %54 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 9
  call void @BLI_duplicatelist(ptr noundef nonnull %53, ptr noundef nonnull %54) #15
  br label %55

55:                                               ; preds = %50, %52, %3
  %56 = phi ptr [ null, %3 ], [ %8, %52 ], [ %8, %50 ]
  store ptr %56, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_pose_itasc_init(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  store i32 1, ptr %0, align 4, !tbaa !121
  %4 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 4
  store <2 x float> <float 0x3F847AE140000000, float 0x3FAEB851E0000000>, ptr %4, align 4, !tbaa !95
  %5 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 2
  store i16 100, ptr %5, align 4, !tbaa !123
  %6 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 3
  store i16 4, ptr %6, align 2, !tbaa !124
  %7 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 1
  store float 0x3F747AE140000000, ptr %7, align 4, !tbaa !125
  %8 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 7
  store i16 3, ptr %8, align 2, !tbaa !126
  %9 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 8
  %10 = getelementptr inbounds %struct.bItasc, ptr %0, i64 0, i32 6
  store i16 0, ptr %10, align 4, !tbaa !127
  store <4 x float> <float 2.000000e+01, float 5.000000e+01, float 5.000000e-01, float 0x3FC3333340000000>, ptr %9, align 4, !tbaa !95
  br label %11

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_ikparam_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !109
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %7 = tail call ptr %6(i64 noundef 40, ptr noundef nonnull @.str.5) #15
  tail call void @BKE_pose_itasc_init(ptr noundef %7) #17
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_pose_channel_in_IK_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @pose_channel_in_IK_chain(ptr noundef %0, ptr noundef %1, i32 noundef 0) #17
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pose_channel_in_IK_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3, %26
  %8 = phi ptr [ %27, %26 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !129
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = getelementptr inbounds %struct.bKinematicConstraint, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 4, !tbaa !132
  %17 = icmp eq i16 %16, 0
  %18 = sext i16 %16 to i32
  %19 = icmp sgt i32 %18, %2
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.bKinematicConstraint, ptr %14, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !134
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %21, %12, %7
  %27 = load ptr, ptr %8, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %7, !llvm.loop !135

29:                                               ; preds = %26, %3
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  %32 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 4
  %33 = add nsw i32 %2, 1
  %34 = load ptr, ptr %32, align 8, !tbaa !57
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  br label %38

38:                                               ; preds = %36, %47
  %39 = phi ptr [ %34, %36 ], [ %48, %47 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !101
  %41 = getelementptr inbounds %struct.Bone, ptr %39, i64 0, i32 5
  %42 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %40, ptr noundef nonnull %41) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call fastcc zeroext i8 @pose_channel_in_IK_chain(ptr noundef nonnull %0, ptr noundef nonnull %42, i32 noundef %33) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38, %44
  %48 = load ptr, ptr %39, align 8, !tbaa !57
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %38, !llvm.loop !136

50:                                               ; preds = %21, %44, %47, %29
  %51 = phi i8 [ 0, %29 ], [ 1, %44 ], [ 0, %47 ], [ 1, %21 ]
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_channels_hash_make(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.6) #15
  store ptr %6, ptr %2, align 8, !tbaa !92
  %7 = load ptr, ptr %0, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %5 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 4
  tail call void @BLI_ghash_insert(ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !137

15:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_channel_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @id_us_min(ptr noundef nonnull %4) #15
  br label %9

9:                                                ; preds = %8, %6
  store ptr null, ptr %3, align 8, !tbaa !115
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @animviz_free_motionpath(ptr noundef nonnull %12) #15
  store ptr null, ptr %11, align 8, !tbaa !118
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  tail call void @BKE_constraints_free(ptr noundef nonnull %16) #15
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  tail call void @IDP_FreeProperty(ptr noundef nonnull %18) #15
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %22 = load ptr, ptr %17, align 8, !tbaa !119
  tail call void %21(ptr noundef %22) #15
  br label %23

23:                                               ; preds = %20, %15
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_channel_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_pose_channel_free_ex(ptr noundef %0, i8 noundef zeroext 1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_channels_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !138
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @BKE_pose_channel_free_ex(ptr noundef nonnull %6, i8 noundef zeroext %1) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !140

9:                                                ; preds = %5
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #15
  br label %10

10:                                               ; preds = %9, %2
  tail call void @BKE_pose_channels_hash_free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_channels_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_pose_channels_free_ex(ptr noundef %0, i8 noundef zeroext 1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  tail call void @BKE_pose_channels_free_ex(ptr noundef nonnull %0, i8 noundef zeroext %1) #17
  %5 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #15
  br label %9

9:                                                ; preds = %8, %4
  tail call void @BIK_clear_data(ptr noundef nonnull %0) #15
  %10 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %14(ptr noundef nonnull %11) #15
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %16(ptr noundef nonnull %0) #15
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_pose_free_ex(ptr noundef %0, i8 noundef zeroext 1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_channel_copy_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 26
  %4 = load i16, ptr %3, align 4, !tbaa !142
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  store i16 %4, ptr %5, align 4, !tbaa !142
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !143
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 8
  store i16 %7, ptr %8, align 2, !tbaa !143
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 6
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 6
  %11 = load <2 x i16>, ptr %9, align 2, !tbaa !114
  store <2 x i16> %11, ptr %10, align 2, !tbaa !114
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 33
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 34
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 34
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 35
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 35
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #17
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 36
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 36
  %20 = load <2 x float>, ptr %18, align 4, !tbaa !95
  store <2 x float> %20, ptr %19, align 4, !tbaa !95
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 38
  %22 = load float, ptr %21, align 4, !tbaa !144
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 38
  store float %22, ptr %23, align 4, !tbaa !144
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  tail call void @BKE_constraints_copy(ptr noundef nonnull %24, ptr noundef nonnull %25, i8 noundef zeroext 1) #15
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !119
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  tail call void @IDP_FreeProperty(ptr noundef nonnull %27) #15
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %31 = load ptr, ptr %26, align 8, !tbaa !119
  tail call void %30(ptr noundef %31) #15
  store ptr null, ptr %26, align 8, !tbaa !119
  br label %32

32:                                               ; preds = %29, %2
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %34) #15
  store ptr %37, ptr %26, align 8, !tbaa !119
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 18
  store ptr %40, ptr %41, align 8, !tbaa !115
  %42 = icmp eq ptr %40, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @id_us_plus(ptr noundef nonnull %40) #15
  br label %44

44:                                               ; preds = %43, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !145 {
  %3 = load float, ptr %1, align 4, !tbaa !95
  store float %3, ptr %0, align 4, !tbaa !95
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pose_update_constraint_flags(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !146
  %7 = and i16 %6, -9
  store i16 %7, ptr %5, align 8, !tbaa !146
  br label %105

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %11, %8 ], [ %2, %1 ]
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 9
  store i8 0, ptr %10, align 8, !tbaa !147
  %11 = load ptr, ptr %9, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !148

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !146
  %16 = and i16 %15, -9
  store i16 %16, ptr %14, align 8, !tbaa !146
  br i1 %3, label %105, label %21

17:                                               ; preds = %101, %21
  %18 = phi i16 [ %22, %21 ], [ %102, %101 ]
  %19 = load ptr, ptr %23, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %105, label %21, !llvm.loop !149

21:                                               ; preds = %13, %17
  %22 = phi i16 [ %18, %17 ], [ %16, %13 ]
  %23 = phi ptr [ %19, %17 ], [ %2, %13 ]
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %17, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 9
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 13
  br label %30

30:                                               ; preds = %27, %101
  %31 = phi i16 [ %22, %27 ], [ %102, %101 ]
  %32 = phi ptr [ %25, %27 ], [ %103, %101 ]
  %33 = getelementptr inbounds %struct.bConstraint, ptr %32, i64 0, i32 3
  %34 = load i16, ptr %33, align 8, !tbaa !129
  switch i16 %34, label %96 [
    i16 3, label %35
    i16 4, label %80
    i16 22, label %93
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bConstraint, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !131
  %38 = load i8, ptr %28, align 8, !tbaa !147
  %39 = or i8 %38, 1
  store i8 %39, ptr %28, align 8, !tbaa !147
  %40 = load ptr, ptr %37, align 8, !tbaa !150
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 3
  %44 = load i16, ptr %43, align 8, !tbaa !151
  %45 = icmp eq i16 %44, 25
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bKinematicConstraint, ptr %37, i64 0, i32 5
  %48 = load i8, ptr %47, align 8, !tbaa !80
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %35
  %51 = or i8 %38, 9
  store i8 %51, ptr %28, align 8, !tbaa !147
  br label %52

52:                                               ; preds = %50, %46, %42
  %53 = getelementptr inbounds %struct.bKinematicConstraint, ptr %37, i64 0, i32 3
  %54 = load i16, ptr %53, align 4, !tbaa !132
  %55 = icmp slt i16 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  store i16 0, ptr %53, align 4, !tbaa !132
  %57 = getelementptr inbounds %struct.bKinematicConstraint, ptr %37, i64 0, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !134
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr %29, align 8, !tbaa !152
  %63 = icmp eq ptr %62, null
  br i1 %63, label %101, label %64

64:                                               ; preds = %56, %61
  %65 = phi ptr [ %62, %61 ], [ %23, %56 ]
  br label %66

66:                                               ; preds = %64, %76
  %67 = phi i16 [ %69, %76 ], [ 0, %64 ]
  %68 = phi ptr [ %78, %76 ], [ %65, %64 ]
  %69 = add i16 %67, 1
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !102
  %72 = getelementptr inbounds %struct.Bone, ptr %71, i64 0, i32 10
  %73 = load i32, ptr %72, align 8, !tbaa !153
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 13
  %78 = load ptr, ptr %77, align 8, !tbaa !152
  %79 = icmp eq ptr %78, null
  br i1 %79, label %99, label %66, !llvm.loop !154

80:                                               ; preds = %30
  %81 = getelementptr inbounds %struct.bConstraint, ptr %32, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !131
  %83 = load i8, ptr %28, align 8, !tbaa !147
  %84 = or i8 %83, 2
  store i8 %84, ptr %28, align 8, !tbaa !147
  %85 = load ptr, ptr %82, align 8, !tbaa !155
  %86 = icmp eq ptr %85, null
  br i1 %86, label %101, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 3
  %89 = load i16, ptr %88, align 8, !tbaa !151
  %90 = icmp eq i16 %89, 2
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = or i16 %31, 8
  store i16 %92, ptr %14, align 8, !tbaa !146
  br label %101

93:                                               ; preds = %30
  %94 = load i8, ptr %28, align 8, !tbaa !147
  %95 = or i8 %94, 32
  store i8 %95, ptr %28, align 8, !tbaa !147
  br label %101

96:                                               ; preds = %30
  %97 = load i8, ptr %28, align 8, !tbaa !147
  %98 = or i8 %97, 2
  store i8 %98, ptr %28, align 8, !tbaa !147
  br label %101

99:                                               ; preds = %76
  store i16 %69, ptr %53, align 4, !tbaa !132
  br label %101

100:                                              ; preds = %66
  store i16 %69, ptr %53, align 4, !tbaa !132
  br label %101

101:                                              ; preds = %61, %99, %100, %80, %87, %91, %52, %93, %96
  %102 = phi i16 [ %31, %61 ], [ %31, %99 ], [ %31, %100 ], [ %31, %80 ], [ %31, %87 ], [ %92, %91 ], [ %31, %52 ], [ %31, %93 ], [ %31, %96 ]
  %103 = load ptr, ptr %32, align 8, !tbaa !57
  %104 = icmp eq ptr %103, null
  br i1 %104, label %17, label %30, !llvm.loop !157

105:                                              ; preds = %17, %4, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @framechange_poses_clear_unkeyed() local_unnamed_addr #6 {
  %1 = load ptr, ptr @G, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %0, %25
  %6 = phi ptr [ %26, %25 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10, %22
  %14 = phi ptr [ %23, %22 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !153
  %21 = and i32 %20, -8193
  store i32 %21, ptr %19, align 8, !tbaa !153
  br label %22

22:                                               ; preds = %13, %18
  %23 = load ptr, ptr %14, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %13, !llvm.loop !158

25:                                               ; preds = %22, %10, %5
  %26 = load ptr, ptr %6, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %5, !llvm.loop !159

28:                                               ; preds = %25, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_pose_add_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.1, ptr %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %6 = tail call ptr %5(i64 noundef 120, ptr noundef nonnull @.str.7) #15
  %7 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %4, i64 noundef 64) #15
  %9 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %6) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %9, ptr noundef %6, ptr noundef nonnull %4, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #15
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #15
  %11 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 10
  store i32 %10, ptr %11, align 8, !tbaa !160
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_remove_group(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %1) #15
  %8 = add nsw i32 %7, 1
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ %2, %3 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9, %25
  %14 = phi ptr [ %26, %25 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !143
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
  store i16 %24, ptr %15, align 2, !tbaa !143
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %14, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !161

28:                                               ; preds = %25, %9
  %29 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  tail call void @BLI_freelinkN(ptr noundef nonnull %29, ptr noundef %1) #15
  %30 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 10
  %31 = load i32, ptr %30, align 8, !tbaa !160
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = add nsw i32 %31, -1
  store i32 %34, ptr %30, align 8, !tbaa !160
  %35 = icmp slt i32 %31, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %29) #17, !range !82
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33
  store i32 0, ptr %30, align 8, !tbaa !160
  br label %40

40:                                               ; preds = %36, %39, %28
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_remove_group_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 9
  %4 = add nsw i32 %1, -1
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %3, i32 noundef %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @BKE_pose_remove_group(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1) #17
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @action_has_motion(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !162
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %5, label %13, !llvm.loop !163

13:                                               ; preds = %5, %9, %1
  %14 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calc_action_range(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %82, label %12

12:                                               ; preds = %8
  %13 = icmp eq i16 %3, 0
  br label %14

14:                                               ; preds = %12, %68
  %15 = phi ptr [ %10, %12 ], [ %72, %68 ]
  %16 = phi float [ 1.000000e+09, %12 ], [ %71, %68 ]
  %17 = phi float [ -1.000000e+09, %12 ], [ %70, %68 ]
  %18 = phi i16 [ 0, %12 ], [ %69, %68 ]
  %19 = phi i16 [ 0, %12 ], [ %30, %68 ]
  %20 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !162
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %24 = call zeroext i8 @calc_fcurve_range(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  %25 = load float, ptr %5, align 4, !tbaa !95
  %26 = call fastcc float @min_ff(float noundef %16, float noundef %25) #17
  %27 = load float, ptr %6, align 4, !tbaa !95
  %28 = call fastcc float @max_ff(float noundef %17, float noundef %27) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %29

29:                                               ; preds = %23, %14
  %30 = phi i16 [ 1, %23 ], [ %19, %14 ]
  %31 = phi float [ %28, %23 ], [ %17, %14 ]
  %32 = phi float [ %26, %23 ], [ %16, %14 ]
  br i1 %13, label %68, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 4, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !164
  %36 = icmp eq ptr %35, null
  br i1 %36, label %68, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.FModifier, ptr %35, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !165
  switch i16 %39, label %68 [
    i16 8, label %40
    i16 4, label %58
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.FModifier, ptr %35, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !167
  %43 = getelementptr inbounds %struct.FMod_Limits, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !168
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load float, ptr %42, align 4, !tbaa !171
  %49 = call fastcc float @min_ff(float noundef %32, float noundef %48) #17
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi float [ %49, %47 ], [ %32, %40 ]
  %52 = and i32 %44, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.rctf, ptr %42, i64 0, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !172
  %57 = call fastcc float @max_ff(float noundef %31, float noundef %56) #17
  br label %68

58:                                               ; preds = %37
  %59 = getelementptr inbounds %struct.FModifier, ptr %35, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !167
  %61 = load i16, ptr %60, align 2, !tbaa !173
  %62 = icmp eq i16 %61, 0
  %63 = select i1 %62, float %32, float -3.000000e+05
  %64 = getelementptr inbounds %struct.FMod_Cycles, ptr %60, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !175
  %66 = icmp eq i16 %65, 0
  %67 = select i1 %66, float %31, float 3.000000e+05
  br label %68

68:                                               ; preds = %58, %54, %50, %37, %29, %33
  %69 = phi i16 [ %18, %33 ], [ %18, %29 ], [ 1, %37 ], [ 1, %50 ], [ 1, %54 ], [ 1, %58 ]
  %70 = phi float [ %31, %33 ], [ %31, %29 ], [ 3.000000e+05, %37 ], [ %31, %50 ], [ %57, %54 ], [ %67, %58 ]
  %71 = phi float [ %32, %33 ], [ %32, %29 ], [ -3.000000e+05, %37 ], [ %51, %50 ], [ %51, %54 ], [ %63, %58 ]
  %72 = load ptr, ptr %15, align 8, !tbaa !57
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %14, !llvm.loop !176

74:                                               ; preds = %68
  %75 = icmp ne i16 %30, 0
  %76 = icmp ne i16 %69, 0
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = fcmp oeq float %71, %70
  %80 = fadd float %70, 1.000000e+00
  %81 = select i1 %79, float %80, float %70
  br label %82

82:                                               ; preds = %8, %4, %74, %78
  %83 = phi float [ %71, %78 ], [ 0.000000e+00, %74 ], [ 0.000000e+00, %4 ], [ 0.000000e+00, %8 ]
  %84 = phi float [ %81, %78 ], [ 1.000000e+00, %74 ], [ 1.000000e+00, %4 ], [ 1.000000e+00, %8 ]
  store float %83, ptr %1, align 4, !tbaa !95
  store float %84, ptr %2, align 4, !tbaa !95
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @calc_fcurve_range(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !177 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !178 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @action_get_item_transforms(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %2, ptr noundef nonnull %5) #15
  br label %11

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %8
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %5) #15
  br label %11

11:                                               ; preds = %10, %7
  %12 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %5) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %81, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %3, null
  br label %20

20:                                               ; preds = %18, %74
  %21 = phi ptr [ %16, %18 ], [ %76, %74 ]
  %22 = phi i16 [ 0, %18 ], [ %75, %74 ]
  %23 = zext nneg i16 %22 to i32
  %24 = icmp eq i16 %22, 15
  %25 = and i1 %19, %24
  br i1 %25, label %78, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.FCurve, ptr %21, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = icmp eq ptr %28, null
  br i1 %29, label %74, label %30

30:                                               ; preds = %26
  %31 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %12) #18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %30
  %34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #18
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  %36 = and i32 %23, 1
  %37 = icmp ne i32 %36, 0
  %38 = and i1 %19, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.8) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = or i16 %22, 1
  br i1 %19, label %74, label %71

44:                                               ; preds = %33, %39
  %45 = and i32 %23, 4
  %46 = icmp ne i32 %45, 0
  %47 = and i1 %19, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.9) #18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = or i16 %22, 4
  br i1 %19, label %74, label %71

53:                                               ; preds = %44, %48
  %54 = and i32 %23, 2
  %55 = icmp ne i32 %54, 0
  %56 = and i1 %19, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.10) #18
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = or i16 %22, 2
  br i1 %19, label %74, label %71

62:                                               ; preds = %53, %57
  %63 = and i32 %23, 8
  %64 = icmp ne i32 %63, 0
  %65 = and i1 %19, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.11) #18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = or i16 %22, 8
  br i1 %19, label %74, label %71

71:                                               ; preds = %69, %60, %51, %42
  %72 = phi i16 [ %43, %42 ], [ %52, %51 ], [ %61, %60 ], [ %70, %69 ]
  %73 = call ptr @BLI_genericNodeN(ptr noundef nonnull %21) #15
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %73) #15
  br label %74

74:                                               ; preds = %71, %30, %66, %62, %69, %60, %51, %42, %26
  %75 = phi i16 [ %22, %26 ], [ %43, %42 ], [ %52, %51 ], [ %61, %60 ], [ %70, %69 ], [ %22, %62 ], [ %22, %66 ], [ %22, %30 ], [ %72, %71 ]
  %76 = load ptr, ptr %21, align 8, !tbaa !57
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %20

78:                                               ; preds = %74, %20, %14
  %79 = phi i16 [ 0, %14 ], [ 15, %20 ], [ %75, %74 ]
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %80(ptr noundef nonnull %12) #15
  br label %81

81:                                               ; preds = %11, %8, %78
  %82 = phi i16 [ %79, %78 ], [ 0, %8 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret i16 %82
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_pose_from_pose(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !57
  %6 = load ptr, ptr %1, align 8, !tbaa !57
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %12, label %20

10:                                               ; preds = %2
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %20

12:                                               ; preds = %4, %12
  %13 = phi ptr [ %16, %12 ], [ %6, %4 ]
  %14 = phi ptr [ %15, %12 ], [ %5, %4 ]
  tail call fastcc void @copy_pose_channel_data(ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = load ptr, ptr %13, align 8, !tbaa !57
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %15, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %12, label %20, !llvm.loop !180

20:                                               ; preds = %12, %4, %10
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_pose_channel_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !181 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 20
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 21
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 25
  %12 = load float, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  store float %12, ptr %13, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  tail call void @copy_qt_qt(ptr noundef nonnull %14, ptr noundef nonnull %15) #15
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 26
  %17 = load i16, ptr %16, align 4, !tbaa !142
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  store i16 %17, ptr %18, align 4, !tbaa !142
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 28
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 28
  tail call void @copy_m4_m4(ptr noundef nonnull %19, ptr noundef nonnull %20) #15
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 29
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 29
  tail call void @copy_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %22) #15
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !183
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 5
  store i16 %24, ptr %25, align 8, !tbaa !183
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %26, align 8, !tbaa !57
  %29 = load ptr, ptr %27, align 8, !tbaa !57
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %44

33:                                               ; preds = %2, %33
  %34 = phi ptr [ %40, %33 ], [ %29, %2 ]
  %35 = phi ptr [ %39, %33 ], [ %28, %2 ]
  %36 = getelementptr inbounds %struct.bConstraint, ptr %35, i64 0, i32 9
  %37 = getelementptr inbounds %struct.bConstraint, ptr %34, i64 0, i32 9
  %38 = load <2 x float>, ptr %36, align 8, !tbaa !95
  store <2 x float> %38, ptr %37, align 8, !tbaa !95
  %39 = load ptr, ptr %35, align 8, !tbaa !57
  %40 = load ptr, ptr %34, align 8, !tbaa !57
  %41 = icmp ne ptr %40, null
  %42 = icmp ne ptr %39, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %33, label %44, !llvm.loop !184

44:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pose_rest(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bPose, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %19, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 20
  tail call fastcc void @zero_v3(ptr noundef nonnull %9) #17
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 22
  tail call fastcc void @zero_v3(ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 23
  tail call void @unit_qt(ptr noundef nonnull %11) #15
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 24
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 25
  tail call void @unit_axis_angle(ptr noundef nonnull %12, ptr noundef nonnull %13) #15
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 21
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %15, align 4, !tbaa !95
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %14, align 4, !tbaa !95
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 5
  %17 = load i16, ptr %16, align 8, !tbaa !183
  %18 = and i16 %17, -8
  store i16 %18, ptr %16, align 8, !tbaa !183
  %19 = load ptr, ptr %8, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !185

21:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !186 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !95
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_pose_copy_result(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %0, ptr noundef %1) #17
  br label %49

8:                                                ; preds = %2
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %1, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %15

13:                                               ; preds = %8
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %49

15:                                               ; preds = %10, %46
  %16 = phi ptr [ %47, %46 ], [ %11, %10 ]
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 4
  %18 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef nonnull %17) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 29
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 29
  tail call void @copy_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %22) #15
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 28
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 28
  tail call void @copy_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %24) #15
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 20
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 20
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %26) #17
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 23
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 23
  tail call void @copy_qt_qt(ptr noundef nonnull %27, ptr noundef nonnull %28) #15
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 22
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %30) #17
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 21
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 21
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %32) #17
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 31
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 31
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %34) #17
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 32
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 32
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %36) #17
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 26
  %38 = load i16, ptr %37, align 4, !tbaa !142
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 26
  store i16 %38, ptr %39, align 4, !tbaa !142
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 5
  %41 = load i16, ptr %40, align 8, !tbaa !183
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 5
  store i16 %41, ptr %42, align 8, !tbaa !183
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 7
  %44 = load i16, ptr %43, align 4, !tbaa !96
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 7
  store i16 %44, ptr %45, align 4, !tbaa !96
  br label %46

46:                                               ; preds = %15, %20
  %47 = load ptr, ptr %16, align 8, !tbaa !57
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15, !llvm.loop !187

49:                                               ; preds = %46, %10, %13, %6
  %50 = phi i8 [ 0, %6 ], [ 0, %13 ], [ 1, %10 ], [ 1, %46 ]
  ret i8 %50
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @what_does_obaction(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.AnimData, align 8
  %9 = tail call ptr @BKE_action_group_find_name(ptr noundef %3, ptr noundef %4) #17
  tail call void @BKE_object_workob_clear(ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %11) #15
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 48
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %13) #15
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 49
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 49
  tail call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %15) #15
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  store ptr %17, ptr %18, align 8, !tbaa !188
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %20 = load i16, ptr %19, align 8, !tbaa !189
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 83
  store i16 %20, ptr %21, align 8, !tbaa !189
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 57
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  %24 = load <2 x i16>, ptr %22, align 4, !tbaa !114
  store <2 x i16> %24, ptr %23, align 4, !tbaa !114
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %26 = load i16, ptr %25, align 2, !tbaa !190
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  store i16 %26, ptr %27, align 2, !tbaa !190
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 5
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 5
  %30 = load <2 x i32>, ptr %28, align 4, !tbaa !113
  store <2 x i32> %30, ptr %29, align 4, !tbaa !113
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !191
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 7
  store i32 %32, ptr %33, align 4, !tbaa !191
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %35 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %36 = load <2 x ptr>, ptr %34, align 8, !tbaa !57
  store <2 x ptr> %36, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  store ptr %2, ptr %37, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 8
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 8
  %40 = tail call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef nonnull %39, i64 noundef 64) #15
  %41 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %42 = tail call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull @.str.15, i64 noundef 66) #15
  %43 = icmp eq ptr %9, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %7) #15
  call void @animsys_evaluate_action_group(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %9, ptr noundef null, float noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %49

45:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #16
  %46 = getelementptr inbounds i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %46, i8 0, i64 88, i1 false)
  %47 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  store ptr %8, ptr %47, align 8, !tbaa !192
  %48 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 8
  store i32 2, ptr %48, align 4, !tbaa !193
  store ptr %3, ptr %8, align 8, !tbaa !53
  call void @BKE_animsys_evaluate_animdata(ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %8, float noundef %5, i16 noundef signext 2) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #16
  br label %49

49:                                               ; preds = %45, %44
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_workob_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @animsys_evaluate_action_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }

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
!52 = !{!"action.c:make_localact_init_cb"}
!53 = !{!54, !36, i64 0}
!54 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !36, i64 40, !44, i64 48, !44, i64 64, !46, i64 80, !46, i64 84, !45, i64 88, !45, i64 90, !55, i64 92}
!55 = !{!"float", !37, i64 0}
!56 = !{!49, !36, i64 24}
!57 = !{!36, !36, i64 0}
!58 = !{!59, !36, i64 16}
!59 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !36, i64 48, !36, i64 56, !46, i64 64, !55, i64 68, !45, i64 72, !45, i64 74, !46, i64 76, !36, i64 80, !46, i64 88, !37, i64 92, !55, i64 104, !55, i64 108}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!63, !36, i64 16}
!63 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !44, i64 16, !46, i64 32, !46, i64 36, !37, i64 40, !64, i64 104}
!64 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !45, i64 12, !45, i64 14}
!65 = !{!63, !36, i64 24}
!66 = distinct !{!66, !61}
!67 = !{!"action.c:make_localact_apply_cb"}
!68 = !{!48, !36, i64 152}
!69 = !{!48, !36, i64 168}
!70 = !{!"action.c:BLI_listbase_clear"}
!71 = !{!63, !46, i64 32}
!72 = !{!63, !36, i64 0}
!73 = distinct !{!73, !61}
!74 = distinct !{!74, !61}
!75 = !{!63, !46, i64 36}
!76 = !{!77, !36, i64 8536}
!77 = !{!"UserDef", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !46, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !46, i64 8484, !46, i64 8488, !46, i64 8492, !45, i64 8496, !45, i64 8498, !46, i64 8500, !46, i64 8504, !46, i64 8508, !46, i64 8512, !46, i64 8516, !46, i64 8520, !46, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !37, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !46, i64 8912, !46, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !55, i64 8956, !55, i64 8960, !46, i64 8964, !45, i64 8968, !45, i64 8970, !55, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !78, i64 8984, !37, i64 9760, !37, i64 9772, !45, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !46, i64 10896, !46, i64 10900, !55, i64 10904, !55, i64 10908, !46, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !79, i64 10928}
!78 = !{!"ColorBand", !45, i64 0, !45, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!79 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !45, i64 24, !37, i64 26}
!80 = !{!37, !37, i64 0}
!81 = !{!"action.c:rgba_char_args_set"}
!82 = !{i8 0, i8 2}
!83 = !{!48, !36, i64 128}
!84 = !{!48, !36, i64 120}
!85 = !{!63, !36, i64 8}
!86 = distinct !{!86, !61}
!87 = !{!"action.c:BLI_listbase_is_empty"}
!88 = !{!44, !36, i64 0}
!89 = !{!59, !36, i64 0}
!90 = !{!59, !36, i64 8}
!91 = distinct !{!91, !61}
!92 = !{!93, !36, i64 16}
!93 = !{!"bPose", !44, i64 0, !36, i64 16, !45, i64 24, !45, i64 26, !46, i64 28, !46, i64 32, !55, i64 36, !37, i64 40, !37, i64 52, !44, i64 64, !46, i64 80, !46, i64 84, !36, i64 88, !36, i64 96, !94, i64 104, !37, i64 152}
!94 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!95 = !{!55, !55, i64 0}
!96 = !{!97, !45, i64 108}
!97 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !37, i64 40, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !44, i64 144, !44, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !55, i64 264, !45, i64 268, !45, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !55, i64 524, !55, i64 528, !55, i64 532, !36, i64 536}
!98 = !{!99, !36, i64 296}
!99 = !{!"Object", !49, i64 0, !36, i64 120, !36, i64 128, !45, i64 136, !45, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !94, i64 312, !36, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !46, i64 432, !46, i64 436, !36, i64 440, !36, i64 448, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !46, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !37, i64 966, !37, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !37, i64 1042, !37, i64 1043, !45, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !55, i64 1120, !45, i64 1124, !45, i64 1126, !37, i64 1128, !46, i64 1144, !46, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !45, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !45, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !100, i64 1304, !100, i64 1312, !46, i64 1320, !46, i64 1324, !44, i64 1328, !44, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !44, i64 1400, !36, i64 1416}
!100 = !{!"long", !37, i64 0}
!101 = !{!99, !36, i64 288}
!102 = !{!97, !36, i64 120}
!103 = !{!104, !36, i64 168}
!104 = !{!"bArmature", !49, i64 0, !36, i64 120, !44, i64 128, !44, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !45, i64 208, !45, i64 210, !46, i64 212, !46, i64 216, !46, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252}
!105 = !{!106, !46, i64 320}
!106 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !37, i64 48, !55, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !46, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !55, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !37, i64 308, !46, i64 320, !45, i64 324, !37, i64 326}
!107 = !{!104, !46, i64 216}
!108 = distinct !{!108, !61}
!109 = !{!93, !46, i64 84}
!110 = !{!93, !36, i64 88}
!111 = !{!93, !36, i64 96}
!112 = !{i64 0, i64 4, !113, i64 4, i64 4, !113, i64 8, i64 4, !113, i64 12, i64 4, !113, i64 16, i64 2, !114, i64 18, i64 2, !114, i64 20, i64 2, !114, i64 22, i64 2, !114, i64 24, i64 2, !114, i64 26, i64 2, !114, i64 28, i64 2, !114, i64 30, i64 2, !114, i64 32, i64 4, !113, i64 36, i64 4, !113, i64 40, i64 4, !113, i64 44, i64 4, !113}
!113 = !{!46, !46, i64 0}
!114 = !{!45, !45, i64 0}
!115 = !{!97, !36, i64 184}
!116 = !{!97, !36, i64 192}
!117 = !{i64 0, i64 8, !57, i64 8, i64 8, !57}
!118 = !{!97, !36, i64 176}
!119 = !{!97, !36, i64 16}
!120 = distinct !{!120, !61}
!121 = !{!122, !46, i64 0}
!122 = !{!"bItasc", !46, i64 0, !55, i64 4, !45, i64 8, !45, i64 10, !55, i64 12, !55, i64 16, !45, i64 20, !45, i64 22, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36}
!123 = !{!122, !45, i64 8}
!124 = !{!122, !45, i64 10}
!125 = !{!122, !55, i64 4}
!126 = !{!122, !45, i64 22}
!127 = !{!122, !45, i64 20}
!128 = !{!"action.c:pose_channel_in_IK_chain"}
!129 = !{!130, !45, i64 24}
!130 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !45, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !45, i64 94, !55, i64 96, !55, i64 100, !36, i64 104, !55, i64 112, !55, i64 116}
!131 = !{!130, !36, i64 16}
!132 = !{!133, !45, i64 12}
!133 = !{!"bKinematicConstraint", !36, i64 0, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !37, i64 16, !36, i64 80, !37, i64 88, !55, i64 152, !55, i64 156, !55, i64 160, !37, i64 164, !45, i64 176, !45, i64 178, !55, i64 180}
!134 = !{!133, !45, i64 10}
!135 = distinct !{!135, !61}
!136 = distinct !{!136, !61}
!137 = distinct !{!137, !61}
!138 = !{!93, !36, i64 0}
!139 = !{!97, !36, i64 0}
!140 = distinct !{!140, !61}
!141 = !{!93, !36, i64 64}
!142 = !{!97, !45, i64 268}
!143 = !{!97, !45, i64 110}
!144 = !{!97, !55, i64 532}
!145 = !{!"action.c:copy_v3_v3"}
!146 = !{!93, !45, i64 24}
!147 = !{!97, !37, i64 112}
!148 = distinct !{!148, !61}
!149 = distinct !{!149, !61}
!150 = !{!133, !36, i64 0}
!151 = !{!99, !45, i64 136}
!152 = !{!97, !36, i64 128}
!153 = !{!106, !46, i64 176}
!154 = distinct !{!154, !61}
!155 = !{!156, !36, i64 0}
!156 = !{!"bFollowPathConstraint", !36, i64 0, !55, i64 8, !55, i64 12, !46, i64 16, !45, i64 20, !45, i64 22}
!157 = distinct !{!157, !61}
!158 = distinct !{!158, !61}
!159 = distinct !{!159, !61}
!160 = !{!93, !46, i64 80}
!161 = distinct !{!161, !61}
!162 = !{!59, !46, i64 64}
!163 = distinct !{!163, !61}
!164 = !{!59, !36, i64 40}
!165 = !{!166, !45, i64 88}
!166 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !45, i64 88, !45, i64 90, !55, i64 92, !55, i64 96, !55, i64 100, !55, i64 104, !55, i64 108}
!167 = !{!166, !36, i64 16}
!168 = !{!169, !46, i64 16}
!169 = !{!"FMod_Limits", !170, i64 0, !46, i64 16, !46, i64 20}
!170 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!171 = !{!169, !55, i64 0}
!172 = !{!169, !55, i64 4}
!173 = !{!174, !45, i64 0}
!174 = !{!"FMod_Cycles", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!175 = !{!174, !45, i64 2}
!176 = distinct !{!176, !61}
!177 = !{!"action.c:min_ff"}
!178 = !{!"action.c:max_ff"}
!179 = !{!59, !36, i64 80}
!180 = distinct !{!180, !61}
!181 = !{!"action.c:copy_pose_channel_data"}
!182 = !{!97, !55, i64 264}
!183 = !{!97, !45, i64 104}
!184 = distinct !{!184, !61}
!185 = distinct !{!185, !61}
!186 = !{!"action.c:zero_v3"}
!187 = distinct !{!187, !61}
!188 = !{!99, !36, i64 216}
!189 = !{!99, !45, i64 1040}
!190 = !{!99, !45, i64 138}
!191 = !{!99, !46, i64 148}
!192 = !{!99, !36, i64 120}
!193 = !{!54, !46, i64 84}
