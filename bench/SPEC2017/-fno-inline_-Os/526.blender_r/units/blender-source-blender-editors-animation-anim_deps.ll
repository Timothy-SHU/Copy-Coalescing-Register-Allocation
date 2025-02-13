; ModuleID = 'blender/source/blender/editors/animation/anim_deps.c'
source_filename = "blender/source/blender/editors/animation/anim_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }

@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [11 x i8] c"pose.bones\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pose.bones[\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"sequences_all\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sequences_all[\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"nodes[\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_list_elem_update(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %7) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = or i32 %14, 2
  store i32 %15, ptr %13, align 4, !tbaa !41
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %18 = load i16, ptr %17, align 2, !tbaa !45
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @RNA_id_pointer_create(ptr noundef nonnull %7, ptr noundef nonnull %3) #5
  %29 = load ptr, ptr %25, align 8, !tbaa !47
  %30 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @G, align 8, !tbaa !49
  %34 = load ptr, ptr %5, align 8, !tbaa !51
  call void @RNA_property_update_main(ptr noundef %33, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %34) #5
  br label %35

35:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %37

36:                                               ; preds = %16, %24, %20
  tail call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 7) #5
  br label %37

37:                                               ; preds = %35, %36, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update_main(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_id_update(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %1) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 4, !tbaa !41
  br label %11

11:                                               ; preds = %7, %4
  tail call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext 7) #5
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_sync_animchannels_to_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bAnimContext, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store ptr null, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store ptr null, ptr %5, align 8, !tbaa !51
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !54
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2057, ptr noundef %9, i32 noundef %12) #5
  %14 = load ptr, ptr %3, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %8, %22
  %17 = phi ptr [ %23, %22 ], [ %14, %8 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !55
  switch i32 %19, label %22 [
    i32 6, label %20
    i32 7, label %21
  ]

20:                                               ; preds = %16
  call fastcc void @animchan_sync_group(ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef nonnull %4) #7
  br label %22

21:                                               ; preds = %16
  call fastcc void @animchan_sync_fcurve(ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef nonnull %5) #7
  br label %22

22:                                               ; preds = %20, %21, %16
  %23 = load ptr, ptr %17, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !56

25:                                               ; preds = %22, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  br label %26

26:                                               ; preds = %1, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animchan_sync_group(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !58 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %5, null
  %9 = icmp eq ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %75, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !60
  %14 = icmp eq i16 %13, 16975
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %17, null
  br i1 %18, label %75, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 5
  %21 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %17, ptr noundef nonnull %20) #5
  %22 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = icmp eq ptr %21, null
  br i1 %24, label %75, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %31 = load i32, ptr %30, align 8, !tbaa !69
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !71
  %37 = or i32 %36, 1
  br label %42

38:                                               ; preds = %29, %25
  %39 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !71
  %41 = and i32 %40, -2
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %41, %38 ], [ %37, %34 ]
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = icmp eq ptr %7, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !75
  %50 = icmp eq ptr %27, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load ptr, ptr %2, align 8, !tbaa !51
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  br i1 %53, label %55, label %57

55:                                               ; preds = %51
  %56 = or i32 %43, 2
  store i32 %56, ptr %54, align 8, !tbaa !71
  store ptr %5, ptr %2, align 8, !tbaa !51
  br label %62

57:                                               ; preds = %51
  %58 = and i32 %43, -3
  store i32 %58, ptr %54, align 8, !tbaa !71
  br label %62

59:                                               ; preds = %47, %42
  %60 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  %61 = and i32 %43, -3
  store i32 %61, ptr %60, align 8, !tbaa !71
  br label %62

62:                                               ; preds = %55, %57, %59
  %63 = load ptr, ptr %16, align 8, !tbaa !61
  %64 = getelementptr inbounds %struct.bPose, ptr %63, i64 0, i32 9
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 8
  %66 = load i16, ptr %65, align 2, !tbaa !77
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, -1
  %69 = tail call ptr @BLI_findlink(ptr noundef nonnull %64, i32 noundef %68) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.bActionGroup, ptr %69, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !78
  %74 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 4
  store i32 %73, ptr %74, align 4, !tbaa !78
  tail call void @action_group_colors_sync(ptr noundef nonnull %5, ptr noundef nonnull %69) #5
  br label %75

75:                                               ; preds = %11, %19, %71, %62, %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animchan_sync_fcurve(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !79 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %5, null
  br i1 %8, label %124, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %7, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %124, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !60
  switch i16 %17, label %124 [
    i16 16975, label %18
    i16 17235, label %65
    i16 21582, label %90
  ]

18:                                               ; preds = %15
  %19 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %124, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %11, ptr noundef nonnull @.str.1) #5
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %26, ptr noundef %24) #5
  %28 = icmp eq ptr %24, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %30(ptr noundef nonnull %24) #5
  br label %31

31:                                               ; preds = %29, %21
  %32 = icmp eq ptr %27, null
  br i1 %32, label %124, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = icmp eq ptr %35, null
  br i1 %36, label %124, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !69
  %40 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %41 = load i16, ptr %40, align 8, !tbaa !80
  %42 = and i16 %41, -3
  %43 = trunc i32 %39 to i16
  %44 = shl i16 %43, 1
  %45 = and i16 %44, 2
  %46 = or disjoint i16 %42, %45
  %47 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !74
  %49 = icmp eq ptr %7, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = icmp eq ptr %35, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 8, !tbaa !51
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  br i1 %56, label %58, label %60

58:                                               ; preds = %54
  %59 = or i16 %46, 4
  store i16 %59, ptr %57, align 8, !tbaa !80
  store ptr %5, ptr %2, align 8, !tbaa !51
  br label %124

60:                                               ; preds = %54
  %61 = and i16 %46, -5
  store i16 %61, ptr %57, align 8, !tbaa !80
  br label %124

62:                                               ; preds = %50, %37
  %63 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %64 = and i16 %46, -5
  store i16 %64, ptr %63, align 8, !tbaa !80
  br label %124

65:                                               ; preds = %15
  %66 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.2) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %124, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @BKE_sequencer_editing_get(ptr noundef nonnull %7, i8 noundef zeroext 0) #5
  %70 = load ptr, ptr %10, align 8, !tbaa !47
  %71 = tail call ptr @BLI_str_quoted_substrN(ptr noundef %70, ptr noundef nonnull @.str.3) #5
  %72 = load ptr, ptr %69, align 8, !tbaa !81
  %73 = tail call ptr @BKE_sequence_get_by_name(ptr noundef %72, ptr noundef %71, i8 noundef zeroext 0) #5
  %74 = icmp eq ptr %71, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %76(ptr noundef nonnull %71) #5
  br label %77

77:                                               ; preds = %75, %68
  %78 = icmp eq ptr %73, null
  br i1 %78, label %124, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.Sequence, ptr %73, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !84
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %85 = load i16, ptr %84, align 8, !tbaa !80
  br i1 %83, label %88, label %86

86:                                               ; preds = %79
  %87 = or i16 %85, 2
  store i16 %87, ptr %84, align 8, !tbaa !80
  br label %124

88:                                               ; preds = %79
  %89 = and i16 %85, -3
  store i16 %89, ptr %84, align 8, !tbaa !80
  br label %124

90:                                               ; preds = %15
  %91 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.4) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %124, label %93

93:                                               ; preds = %90
  %94 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %11, ptr noundef nonnull @.str.5) #5
  %95 = tail call ptr @nodeFindNodebyName(ptr noundef nonnull %7, ptr noundef %94) #5
  %96 = icmp eq ptr %94, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %98(ptr noundef nonnull %94) #5
  br label %99

99:                                               ; preds = %97, %93
  %100 = icmp eq ptr %95, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.bNode, ptr %95, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !86
  %104 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %105 = load i16, ptr %104, align 8, !tbaa !80
  %106 = and i16 %105, -3
  %107 = trunc i32 %103 to i16
  %108 = shl i16 %107, 1
  %109 = and i16 %108, 2
  %110 = or disjoint i16 %106, %109
  %111 = and i32 %103, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %101
  %114 = load ptr, ptr %2, align 8, !tbaa !51
  %115 = icmp eq ptr %114, null
  %116 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  br i1 %115, label %117, label %119

117:                                              ; preds = %113
  %118 = or i16 %110, 4
  store i16 %118, ptr %116, align 8, !tbaa !80
  store ptr %5, ptr %2, align 8, !tbaa !51
  br label %124

119:                                              ; preds = %113
  %120 = and i16 %110, -5
  store i16 %120, ptr %116, align 8, !tbaa !80
  br label %124

121:                                              ; preds = %101
  %122 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %123 = and i16 %110, -5
  store i16 %123, ptr %122, align 8, !tbaa !80
  br label %124

124:                                              ; preds = %31, %33, %58, %60, %62, %18, %77, %88, %86, %65, %15, %99, %117, %119, %121, %90, %3, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_animdata_freelist(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_animdata_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !54
  switch i16 %4, label %5 [
    i16 3, label %47
    i16 9, label %47
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  br label %10

10:                                               ; preds = %8, %44
  %11 = phi ptr [ %6, %8 ], [ %45, %44 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %15 = load i16, ptr %14, align 4, !tbaa !88
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = and i16 %15, -3
  store i16 %19, ptr %14, align 4, !tbaa !88
  %20 = icmp eq ptr %13, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  tail call void @sort_time_fcurve(ptr noundef nonnull %13) #5
  %22 = load i16, ptr %14, align 4, !tbaa !88
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi i16 [ %22, %21 ], [ %15, %10 ]
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %37, label %32

27:                                               ; preds = %18
  %28 = and i16 %15, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = and i16 %15, -7
  store i16 %31, ptr %14, align 4, !tbaa !88
  br label %37

32:                                               ; preds = %23
  %33 = and i16 %24, -5
  store i16 %33, ptr %14, align 4, !tbaa !88
  %34 = icmp eq ptr %13, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  tail call void @calchandles_fcurve(ptr noundef nonnull %13) #5
  %36 = load i16, ptr %14, align 4, !tbaa !88
  br label %37

37:                                               ; preds = %30, %27, %32, %35, %23
  %38 = phi i16 [ %31, %30 ], [ %19, %27 ], [ %33, %32 ], [ %36, %35 ], [ %24, %23 ]
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = and i16 %38, -2
  store i16 %42, ptr %14, align 4, !tbaa !88
  %43 = load ptr, ptr %9, align 8, !tbaa !89
  tail call void @ANIM_list_elem_update(ptr noundef %43, ptr noundef nonnull %11) #7
  br label %44

44:                                               ; preds = %41, %37
  %45 = load ptr, ptr %11, align 8, !tbaa !51
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %10, !llvm.loop !90

47:                                               ; preds = %44, %5, %2, %2
  ret void
}

; Function Attrs: optsize
declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @action_group_colors_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequence_get_by_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeFindNodebyName(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 48}
!35 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !40, i64 36, !40, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!42, !39, i64 84}
!42 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !36, i64 40, !43, i64 48, !43, i64 64, !39, i64 80, !39, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!"float", !37, i64 0}
!45 = !{!35, !40, i64 38}
!46 = !{!35, !36, i64 40}
!47 = !{!48, !36, i64 80}
!48 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !36, i64 48, !36, i64 56, !39, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !39, i64 76, !36, i64 80, !39, i64 88, !37, i64 92, !44, i64 104, !44, i64 108}
!49 = !{!50, !36, i64 0}
!50 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !43, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!51 = !{!36, !36, i64 0}
!52 = !{!53, !36, i64 0}
!53 = !{!"bAnimContext", !36, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!54 = !{!53, !40, i64 8}
!55 = !{!35, !39, i64 24}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"anim_deps.c:animchan_sync_group"}
!59 = !{!35, !36, i64 16}
!60 = !{!40, !40, i64 0}
!61 = !{!62, !36, i64 288}
!62 = !{!"Object", !63, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !64, i64 312, !36, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !44, i64 616, !44, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !65, i64 1304, !65, i64 1312, !39, i64 1320, !39, i64 1324, !43, i64 1328, !43, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !43, i64 1400, !36, i64 1416}
!63 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!64 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!65 = !{!"long", !37, i64 0}
!66 = !{!62, !36, i64 296}
!67 = !{!68, !36, i64 120}
!68 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !43, i64 144, !43, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !36, i64 536}
!69 = !{!70, !39, i64 176}
!70 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !37, i64 48, !44, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !39, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !37, i64 308, !39, i64 320, !40, i64 324, !37, i64 326}
!71 = !{!72, !39, i64 32}
!72 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !43, i64 16, !39, i64 32, !39, i64 36, !37, i64 40, !73, i64 104}
!73 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 12, !40, i64 14}
!74 = !{!53, !36, i64 56}
!75 = !{!76, !36, i64 168}
!76 = !{!"bArmature", !63, i64 0, !36, i64 120, !43, i64 128, !43, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !40, i64 208, !40, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252}
!77 = !{!68, !40, i64 110}
!78 = !{!72, !39, i64 36}
!79 = !{!"anim_deps.c:animchan_sync_fcurve"}
!80 = !{!48, !40, i64 72}
!81 = !{!82, !36, i64 0}
!82 = !{!"Editing", !36, i64 0, !43, i64 8, !43, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !39, i64 2096, !39, i64 2100, !39, i64 2104, !39, i64 2108, !83, i64 2112}
!83 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!84 = !{!85, !39, i64 96}
!85 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !40, i64 156, !40, i64 158, !39, i64 160, !39, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !44, i64 224, !44, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !43, i64 256, !36, i64 272, !36, i64 280, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !36, i64 304, !39, i64 312, !39, i64 316, !39, i64 320, !44, i64 324, !39, i64 328, !37, i64 332, !37, i64 333, !43, i64 336}
!86 = !{!87, !39, i64 168}
!87 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !43, i64 200, !43, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !44, i64 380, !44, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !83, i64 400, !83, i64 416, !83, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!88 = !{!35, !40, i64 36}
!89 = !{!53, !36, i64 48}
!90 = distinct !{!90, !57}
