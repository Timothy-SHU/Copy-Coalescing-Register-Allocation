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
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %7) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = or i32 %14, 2
  store i32 %15, ptr %13, align 4, !tbaa !12
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %18 = load i16, ptr %17, align 2, !tbaa !16
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @RNA_id_pointer_create(ptr noundef nonnull %7, ptr noundef nonnull %3) #5
  %29 = load ptr, ptr %25, align 8, !tbaa !18
  %30 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @G, align 8, !tbaa !20
  %34 = load ptr, ptr %5, align 8, !tbaa !22
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
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 4, !tbaa !12
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
  store ptr null, ptr %4, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store ptr null, ptr %5, align 8, !tbaa !22
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !25
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2057, ptr noundef %9, i32 noundef %12) #5
  %14 = load ptr, ptr %3, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %8, %22
  %17 = phi ptr [ %23, %22 ], [ %14, %8 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !26
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
  %23 = load ptr, ptr %17, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !27

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
define internal fastcc void @animchan_sync_group(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %5, null
  %9 = icmp eq ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %75, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !30
  %14 = icmp eq i16 %13, 16975
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %75, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 5
  %21 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %17, ptr noundef nonnull %20) #5
  %22 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = icmp eq ptr %21, null
  br i1 %24, label %75, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %31 = load i32, ptr %30, align 8, !tbaa !39
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !41
  %37 = or i32 %36, 1
  br label %42

38:                                               ; preds = %29, %25
  %39 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !41
  %41 = and i32 %40, -2
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %41, %38 ], [ %37, %34 ]
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = icmp eq ptr %7, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = icmp eq ptr %27, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load ptr, ptr %2, align 8, !tbaa !22
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  br i1 %53, label %55, label %57

55:                                               ; preds = %51
  %56 = or i32 %43, 2
  store i32 %56, ptr %54, align 8, !tbaa !41
  store ptr %5, ptr %2, align 8, !tbaa !22
  br label %62

57:                                               ; preds = %51
  %58 = and i32 %43, -3
  store i32 %58, ptr %54, align 8, !tbaa !41
  br label %62

59:                                               ; preds = %47, %42
  %60 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  %61 = and i32 %43, -3
  store i32 %61, ptr %60, align 8, !tbaa !41
  br label %62

62:                                               ; preds = %55, %57, %59
  %63 = load ptr, ptr %16, align 8, !tbaa !31
  %64 = getelementptr inbounds %struct.bPose, ptr %63, i64 0, i32 9
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 8
  %66 = load i16, ptr %65, align 2, !tbaa !47
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, -1
  %69 = tail call ptr @BLI_findlink(ptr noundef nonnull %64, i32 noundef %68) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.bActionGroup, ptr %69, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !48
  %74 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 4
  store i32 %73, ptr %74, align 4, !tbaa !48
  tail call void @action_group_colors_sync(ptr noundef nonnull %5, ptr noundef nonnull %69) #5
  br label %75

75:                                               ; preds = %11, %19, %71, %62, %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animchan_sync_fcurve(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %5, null
  br i1 %8, label %124, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %7, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %124, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !30
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
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %11, ptr noundef nonnull @.str.1) #5
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %26, ptr noundef %24) #5
  %28 = icmp eq ptr %24, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  tail call void %30(ptr noundef nonnull %24) #5
  br label %31

31:                                               ; preds = %29, %21
  %32 = icmp eq ptr %27, null
  br i1 %32, label %124, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !37
  %36 = icmp eq ptr %35, null
  br i1 %36, label %124, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !39
  %40 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %41 = load i16, ptr %40, align 8, !tbaa !49
  %42 = and i16 %41, -3
  %43 = trunc i32 %39 to i16
  %44 = shl i16 %43, 1
  %45 = and i16 %44, 2
  %46 = or disjoint i16 %42, %45
  %47 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = icmp eq ptr %7, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  %53 = icmp eq ptr %35, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 8, !tbaa !22
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  br i1 %56, label %58, label %60

58:                                               ; preds = %54
  %59 = or i16 %46, 4
  store i16 %59, ptr %57, align 8, !tbaa !49
  store ptr %5, ptr %2, align 8, !tbaa !22
  br label %124

60:                                               ; preds = %54
  %61 = and i16 %46, -5
  store i16 %61, ptr %57, align 8, !tbaa !49
  br label %124

62:                                               ; preds = %50, %37
  %63 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %64 = and i16 %46, -5
  store i16 %64, ptr %63, align 8, !tbaa !49
  br label %124

65:                                               ; preds = %15
  %66 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.2) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %124, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @BKE_sequencer_editing_get(ptr noundef nonnull %7, i8 noundef zeroext 0) #5
  %70 = load ptr, ptr %10, align 8, !tbaa !18
  %71 = tail call ptr @BLI_str_quoted_substrN(ptr noundef %70, ptr noundef nonnull @.str.3) #5
  %72 = load ptr, ptr %69, align 8, !tbaa !50
  %73 = tail call ptr @BKE_sequence_get_by_name(ptr noundef %72, ptr noundef %71, i8 noundef zeroext 0) #5
  %74 = icmp eq ptr %71, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  tail call void %76(ptr noundef nonnull %71) #5
  br label %77

77:                                               ; preds = %75, %68
  %78 = icmp eq ptr %73, null
  br i1 %78, label %124, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.Sequence, ptr %73, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !53
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %85 = load i16, ptr %84, align 8, !tbaa !49
  br i1 %83, label %88, label %86

86:                                               ; preds = %79
  %87 = or i16 %85, 2
  store i16 %87, ptr %84, align 8, !tbaa !49
  br label %124

88:                                               ; preds = %79
  %89 = and i16 %85, -3
  store i16 %89, ptr %84, align 8, !tbaa !49
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
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  tail call void %98(ptr noundef nonnull %94) #5
  br label %99

99:                                               ; preds = %97, %93
  %100 = icmp eq ptr %95, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.bNode, ptr %95, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !55
  %104 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %105 = load i16, ptr %104, align 8, !tbaa !49
  %106 = and i16 %105, -3
  %107 = trunc i32 %103 to i16
  %108 = shl i16 %107, 1
  %109 = and i16 %108, 2
  %110 = or disjoint i16 %106, %109
  %111 = and i32 %103, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %101
  %114 = load ptr, ptr %2, align 8, !tbaa !22
  %115 = icmp eq ptr %114, null
  %116 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  br i1 %115, label %117, label %119

117:                                              ; preds = %113
  %118 = or i16 %110, 4
  store i16 %118, ptr %116, align 8, !tbaa !49
  store ptr %5, ptr %2, align 8, !tbaa !22
  br label %124

119:                                              ; preds = %113
  %120 = and i16 %110, -5
  store i16 %120, ptr %116, align 8, !tbaa !49
  br label %124

121:                                              ; preds = %101
  %122 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %123 = and i16 %110, -5
  store i16 %123, ptr %122, align 8, !tbaa !49
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
  %4 = load i16, ptr %3, align 8, !tbaa !25
  switch i16 %4, label %5 [
    i16 3, label %47
    i16 9, label %47
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  br label %10

10:                                               ; preds = %8, %44
  %11 = phi ptr [ %6, %8 ], [ %45, %44 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %15 = load i16, ptr %14, align 4, !tbaa !57
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = and i16 %15, -3
  store i16 %19, ptr %14, align 4, !tbaa !57
  %20 = icmp eq ptr %13, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  tail call void @sort_time_fcurve(ptr noundef nonnull %13) #5
  %22 = load i16, ptr %14, align 4, !tbaa !57
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
  store i16 %31, ptr %14, align 4, !tbaa !57
  br label %37

32:                                               ; preds = %23
  %33 = and i16 %24, -5
  store i16 %33, ptr %14, align 4, !tbaa !57
  %34 = icmp eq ptr %13, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  tail call void @calchandles_fcurve(ptr noundef nonnull %13) #5
  %36 = load i16, ptr %14, align 4, !tbaa !57
  br label %37

37:                                               ; preds = %30, %27, %32, %35, %23
  %38 = phi i16 [ %31, %30 ], [ %19, %27 ], [ %33, %32 ], [ %36, %35 ], [ %24, %23 ]
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = and i16 %38, -2
  store i16 %42, ptr %14, align 4, !tbaa !57
  %43 = load ptr, ptr %9, align 8, !tbaa !58
  tail call void @ANIM_list_elem_update(ptr noundef %43, ptr noundef nonnull %11) #7
  br label %44

44:                                               ; preds = %41, %37
  %45 = load ptr, ptr %11, align 8, !tbaa !22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %10, !llvm.loop !59

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !11, i64 36, !11, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!13, !10, i64 84}
!13 = !{!"AnimData", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !7, i64 40, !14, i64 48, !14, i64 64, !10, i64 80, !10, i64 84, !11, i64 88, !11, i64 90, !15, i64 92}
!14 = !{!"ListBase", !7, i64 0, !7, i64 8}
!15 = !{!"float", !8, i64 0}
!16 = !{!6, !11, i64 38}
!17 = !{!6, !7, i64 40}
!18 = !{!19, !7, i64 80}
!19 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !14, i64 32, !7, i64 48, !7, i64 56, !10, i64 64, !15, i64 68, !11, i64 72, !11, i64 74, !10, i64 76, !7, i64 80, !10, i64 88, !8, i64 92, !15, i64 104, !15, i64 108}
!20 = !{!21, !7, i64 0}
!21 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !14, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !8, i64 2090, !11, i64 2092, !10, i64 2096, !10, i64 2100, !8, i64 2104, !10, i64 2108, !10, i64 2112, !8, i64 2116}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !7, i64 0}
!24 = !{!"bAnimContext", !7, i64 0, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!25 = !{!24, !11, i64 8}
!26 = !{!6, !10, i64 24}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!6, !7, i64 16}
!30 = !{!11, !11, i64 0}
!31 = !{!32, !7, i64 288}
!32 = !{!"Object", !33, i64 0, !7, i64 120, !7, i64 128, !11, i64 136, !11, i64 138, !10, i64 140, !10, i64 144, !10, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !34, i64 312, !7, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !10, i64 432, !10, i64 436, !7, i64 440, !7, i64 448, !10, i64 456, !10, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !15, i64 616, !15, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !10, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !8, i64 966, !8, i64 967, !10, i64 968, !10, i64 972, !10, i64 976, !10, i64 980, !10, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !8, i64 1042, !8, i64 1043, !11, i64 1044, !8, i64 1046, !8, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !8, i64 1128, !10, i64 1144, !10, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !11, i64 1162, !8, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !11, i64 1266, !15, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !35, i64 1304, !35, i64 1312, !10, i64 1320, !10, i64 1324, !14, i64 1328, !14, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !14, i64 1400, !7, i64 1416}
!33 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!34 = !{!"bAnimVizSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!35 = !{!"long", !8, i64 0}
!36 = !{!32, !7, i64 296}
!37 = !{!38, !7, i64 120}
!38 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !8, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !14, i64 144, !14, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !15, i64 264, !11, i64 268, !11, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !15, i64 524, !15, i64 528, !15, i64 532, !7, i64 536}
!39 = !{!40, !10, i64 176}
!40 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !14, i64 32, !8, i64 48, !15, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !10, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !8, i64 308, !10, i64 320, !11, i64 324, !8, i64 326}
!41 = !{!42, !10, i64 32}
!42 = !{!"bActionGroup", !7, i64 0, !7, i64 8, !14, i64 16, !10, i64 32, !10, i64 36, !8, i64 40, !43, i64 104}
!43 = !{!"ThemeWireColor", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 12, !11, i64 14}
!44 = !{!24, !7, i64 56}
!45 = !{!46, !7, i64 168}
!46 = !{!"bArmature", !33, i64 0, !7, i64 120, !14, i64 128, !14, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !11, i64 208, !11, i64 210, !10, i64 212, !10, i64 216, !10, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252}
!47 = !{!38, !11, i64 110}
!48 = !{!42, !10, i64 36}
!49 = !{!19, !11, i64 72}
!50 = !{!51, !7, i64 0}
!51 = !{!"Editing", !7, i64 0, !14, i64 8, !14, i64 24, !7, i64 40, !8, i64 48, !8, i64 1072, !10, i64 2096, !10, i64 2100, !10, i64 2104, !10, i64 2108, !52, i64 2112}
!52 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!53 = !{!54, !10, i64 96}
!54 = !{!"Sequence", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !11, i64 156, !11, i64 158, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !15, i64 224, !15, i64 228, !7, i64 232, !7, i64 240, !7, i64 248, !14, i64 256, !7, i64 272, !7, i64 280, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !7, i64 304, !10, i64 312, !10, i64 316, !10, i64 320, !15, i64 324, !10, i64 328, !8, i64 332, !8, i64 333, !14, i64 336}
!55 = !{!56, !10, i64 168}
!56 = !{!"bNode", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 104, !10, i64 168, !11, i64 172, !11, i64 174, !11, i64 176, !11, i64 178, !11, i64 180, !11, i64 182, !11, i64 184, !11, i64 186, !8, i64 188, !14, i64 200, !14, i64 216, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !14, i64 264, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !10, i64 308, !8, i64 312, !11, i64 376, !11, i64 378, !15, i64 380, !15, i64 384, !11, i64 388, !11, i64 390, !7, i64 392, !52, i64 400, !52, i64 416, !52, i64 432, !11, i64 448, !11, i64 450, !10, i64 452, !7, i64 456}
!57 = !{!6, !11, i64 36}
!58 = !{!24, !7, i64 48}
!59 = distinct !{!59, !28}
