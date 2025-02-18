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

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_list_elem_update(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

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
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi ptr [ %22, %20 ], [ null, %16 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @RNA_id_pointer_create(ptr noundef nonnull %7, ptr noundef nonnull %3) #5
  %31 = load ptr, ptr %27, align 8, !tbaa !47
  %32 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @G, align 8, !tbaa !49
  %36 = load ptr, ptr %5, align 8, !tbaa !51
  call void @RNA_property_update_main(ptr noundef %35, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %36) #5
  br label %37

37:                                               ; preds = %34, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  br label %39

38:                                               ; preds = %26, %23
  tail call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 7) #5
  br label %39

39:                                               ; preds = %37, %38, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_update_main(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_sync_animchannels_to_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bAnimContext, align 8
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %2) #5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %223, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !54
  %10 = sext i16 %9 to i32
  %11 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2057, ptr noundef %7, i32 noundef %10) #5
  %12 = load ptr, ptr %3, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %222, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 10
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 10
  br label %17

17:                                               ; preds = %14, %217
  %18 = phi ptr [ %12, %14 ], [ %220, %217 ]
  %19 = phi ptr [ null, %14 ], [ %219, %217 ]
  %20 = phi ptr [ null, %14 ], [ %218, %217 ]
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !55
  switch i32 %22, label %217 [
    i32 6, label %23
    i32 7, label %95
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %25, null
  %29 = icmp eq ptr %27, null
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %217, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 4
  %33 = load i16, ptr %32, align 8, !tbaa !57
  %34 = icmp eq i16 %33, 16975
  br i1 %34, label %35, label %217

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = icmp eq ptr %37, null
  br i1 %38, label %217, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 5
  %41 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %37, ptr noundef nonnull %40) #5
  %42 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  %44 = icmp eq ptr %41, null
  br i1 %44, label %217, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Bone, ptr %47, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !66
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !68
  %57 = or i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !68
  br label %62

58:                                               ; preds = %49, %45
  %59 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !68
  %61 = and i32 %60, -2
  store i32 %61, ptr %59, align 8, !tbaa !68
  br label %62

62:                                               ; preds = %58, %54
  %63 = load ptr, ptr %16, align 8, !tbaa !71
  %64 = icmp eq ptr %27, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.bArmature, ptr %43, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !72
  %68 = icmp eq ptr %47, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = icmp eq ptr %20, null
  %71 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !68
  br i1 %70, label %73, label %75

73:                                               ; preds = %69
  %74 = or i32 %72, 2
  store i32 %74, ptr %71, align 8, !tbaa !68
  br label %81

75:                                               ; preds = %69
  %76 = and i32 %72, -3
  store i32 %76, ptr %71, align 8, !tbaa !68
  br label %81

77:                                               ; preds = %65, %62
  %78 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !68
  %80 = and i32 %79, -3
  store i32 %80, ptr %78, align 8, !tbaa !68
  br label %81

81:                                               ; preds = %77, %75, %73
  %82 = phi ptr [ %25, %73 ], [ %20, %75 ], [ %20, %77 ]
  %83 = load ptr, ptr %36, align 8, !tbaa !58
  %84 = getelementptr inbounds %struct.bPose, ptr %83, i64 0, i32 9
  %85 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 8
  %86 = load i16, ptr %85, align 2, !tbaa !74
  %87 = sext i16 %86 to i32
  %88 = add nsw i32 %87, -1
  %89 = call ptr @BLI_findlink(ptr noundef nonnull %84, i32 noundef %88) #5
  %90 = icmp eq ptr %89, null
  br i1 %90, label %217, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.bActionGroup, ptr %89, i64 0, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !75
  %94 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 4
  store i32 %93, ptr %94, align 4, !tbaa !75
  call void @action_group_colors_sync(ptr noundef %25, ptr noundef nonnull %89) #5
  br label %217

95:                                               ; preds = %17
  %96 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !56
  %98 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = icmp eq ptr %97, null
  br i1 %100, label %217, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 12
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  %104 = icmp eq ptr %103, null
  %105 = icmp eq ptr %99, null
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %217, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 4
  %109 = load i16, ptr %108, align 8, !tbaa !57
  switch i16 %109, label %217 [
    i16 16975, label %110
    i16 17235, label %157
    i16 21582, label %182
  ]

110:                                              ; preds = %107
  %111 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(1) @.str) #6
  %112 = icmp eq ptr %111, null
  br i1 %112, label %217, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 19
  %115 = load ptr, ptr %114, align 8, !tbaa !63
  %116 = call ptr @BLI_str_quoted_substrN(ptr noundef %103, ptr noundef nonnull @.str.1) #5
  %117 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 18
  %118 = load ptr, ptr %117, align 8, !tbaa !58
  %119 = call ptr @BKE_pose_channel_find_name(ptr noundef %118, ptr noundef %116) #5
  %120 = icmp eq ptr %116, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %122(ptr noundef nonnull %116) #5
  br label %123

123:                                              ; preds = %121, %113
  %124 = icmp eq ptr %119, null
  br i1 %124, label %217, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.bPoseChannel, ptr %119, i64 0, i32 12
  %127 = load ptr, ptr %126, align 8, !tbaa !64
  %128 = icmp eq ptr %127, null
  br i1 %128, label %217, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.Bone, ptr %127, i64 0, i32 10
  %131 = load i32, ptr %130, align 8, !tbaa !66
  %132 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 9
  %133 = load i16, ptr %132, align 8, !tbaa !76
  %134 = and i16 %133, -3
  %135 = trunc i32 %131 to i16
  %136 = shl i16 %135, 1
  %137 = and i16 %136, 2
  %138 = or disjoint i16 %134, %137
  store i16 %138, ptr %132, align 8, !tbaa !76
  %139 = load ptr, ptr %15, align 8, !tbaa !71
  %140 = icmp eq ptr %99, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %129
  %142 = getelementptr inbounds %struct.bArmature, ptr %115, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !72
  %144 = icmp eq ptr %127, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = icmp eq ptr %19, null
  %147 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 9
  %148 = load i16, ptr %147, align 8, !tbaa !76
  br i1 %146, label %149, label %151

149:                                              ; preds = %145
  %150 = or i16 %148, 4
  store i16 %150, ptr %147, align 8, !tbaa !76
  br label %217

151:                                              ; preds = %145
  %152 = and i16 %148, -5
  store i16 %152, ptr %147, align 8, !tbaa !76
  br label %217

153:                                              ; preds = %141, %129
  %154 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 9
  %155 = load i16, ptr %154, align 8, !tbaa !76
  %156 = and i16 %155, -5
  store i16 %156, ptr %154, align 8, !tbaa !76
  br label %217

157:                                              ; preds = %107
  %158 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(1) @.str.2) #6
  %159 = icmp eq ptr %158, null
  br i1 %159, label %217, label %160

160:                                              ; preds = %157
  %161 = call ptr @BKE_sequencer_editing_get(ptr noundef %99, i8 noundef zeroext 0) #5
  %162 = load ptr, ptr %102, align 8, !tbaa !47
  %163 = call ptr @BLI_str_quoted_substrN(ptr noundef %162, ptr noundef nonnull @.str.3) #5
  %164 = load ptr, ptr %161, align 8, !tbaa !77
  %165 = call ptr @BKE_sequence_get_by_name(ptr noundef %164, ptr noundef %163, i8 noundef zeroext 0) #5
  %166 = icmp eq ptr %163, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %160
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %168(ptr noundef nonnull %163) #5
  br label %169

169:                                              ; preds = %167, %160
  %170 = icmp eq ptr %165, null
  br i1 %170, label %217, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.Sequence, ptr %165, i64 0, i32 5
  %173 = load i32, ptr %172, align 8, !tbaa !80
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 9
  %177 = load i16, ptr %176, align 8, !tbaa !76
  br i1 %175, label %180, label %178

178:                                              ; preds = %171
  %179 = or i16 %177, 2
  store i16 %179, ptr %176, align 8, !tbaa !76
  br label %217

180:                                              ; preds = %171
  %181 = and i16 %177, -3
  store i16 %181, ptr %176, align 8, !tbaa !76
  br label %217

182:                                              ; preds = %107
  %183 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(1) @.str.4) #6
  %184 = icmp eq ptr %183, null
  br i1 %184, label %217, label %185

185:                                              ; preds = %182
  %186 = call ptr @BLI_str_quoted_substrN(ptr noundef %103, ptr noundef nonnull @.str.5) #5
  %187 = call ptr @nodeFindNodebyName(ptr noundef %99, ptr noundef %186) #5
  %188 = icmp eq ptr %186, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %190(ptr noundef nonnull %186) #5
  br label %191

191:                                              ; preds = %189, %185
  %192 = icmp eq ptr %187, null
  br i1 %192, label %217, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.bNode, ptr %187, i64 0, i32 7
  %195 = load i32, ptr %194, align 8, !tbaa !82
  %196 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 9
  %197 = load i16, ptr %196, align 8, !tbaa !76
  %198 = and i16 %197, -3
  %199 = trunc i32 %195 to i16
  %200 = shl i16 %199, 1
  %201 = and i16 %200, 2
  %202 = or disjoint i16 %198, %201
  store i16 %202, ptr %196, align 8, !tbaa !76
  %203 = and i32 %195, 16
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %193
  %206 = icmp eq ptr %19, null
  %207 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 9
  %208 = load i16, ptr %207, align 8, !tbaa !76
  br i1 %206, label %209, label %211

209:                                              ; preds = %205
  %210 = or i16 %208, 4
  store i16 %210, ptr %207, align 8, !tbaa !76
  br label %217

211:                                              ; preds = %205
  %212 = and i16 %208, -5
  store i16 %212, ptr %207, align 8, !tbaa !76
  br label %217

213:                                              ; preds = %193
  %214 = getelementptr inbounds %struct.FCurve, ptr %97, i64 0, i32 9
  %215 = load i16, ptr %214, align 8, !tbaa !76
  %216 = and i16 %215, -5
  store i16 %216, ptr %214, align 8, !tbaa !76
  br label %217

217:                                              ; preds = %213, %211, %209, %191, %182, %180, %178, %169, %157, %153, %151, %149, %125, %123, %110, %107, %101, %95, %91, %81, %39, %35, %31, %23, %17
  %218 = phi ptr [ %20, %17 ], [ %20, %23 ], [ %20, %35 ], [ %20, %39 ], [ %82, %81 ], [ %82, %91 ], [ %20, %31 ], [ %20, %95 ], [ %20, %101 ], [ %20, %107 ], [ %20, %110 ], [ %20, %123 ], [ %20, %125 ], [ %20, %149 ], [ %20, %151 ], [ %20, %153 ], [ %20, %157 ], [ %20, %169 ], [ %20, %178 ], [ %20, %180 ], [ %20, %182 ], [ %20, %191 ], [ %20, %209 ], [ %20, %211 ], [ %20, %213 ]
  %219 = phi ptr [ %19, %17 ], [ %19, %23 ], [ %19, %35 ], [ %19, %39 ], [ %19, %81 ], [ %19, %91 ], [ %19, %31 ], [ %19, %95 ], [ %19, %101 ], [ %19, %107 ], [ %19, %110 ], [ %19, %123 ], [ %19, %125 ], [ %97, %149 ], [ %19, %151 ], [ %19, %153 ], [ %19, %157 ], [ %19, %169 ], [ %19, %178 ], [ %19, %180 ], [ %19, %182 ], [ %19, %191 ], [ %97, %209 ], [ %19, %211 ], [ %19, %213 ]
  %220 = load ptr, ptr %18, align 8, !tbaa !51
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %17, !llvm.loop !84

222:                                              ; preds = %217, %6
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  br label %223

223:                                              ; preds = %1, %222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_animdata_freelist(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_animdata_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !54
  switch i16 %4, label %5 [
    i16 3, label %40
    i16 9, label %40
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  br label %10

10:                                               ; preds = %8, %37
  %11 = phi ptr [ %6, %8 ], [ %38, %37 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %15 = load i16, ptr %14, align 4, !tbaa !87
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = and i16 %15, -3
  store i16 %19, ptr %14, align 4, !tbaa !87
  %20 = icmp eq ptr %13, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @sort_time_fcurve(ptr noundef nonnull %13) #5
  br label %22

22:                                               ; preds = %18, %21, %10
  %23 = load i16, ptr %14, align 4, !tbaa !87
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = and i16 %23, -5
  store i16 %27, ptr %14, align 4, !tbaa !87
  %28 = icmp eq ptr %13, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @calchandles_fcurve(ptr noundef nonnull %13) #5
  br label %30

30:                                               ; preds = %26, %29, %22
  %31 = load i16, ptr %14, align 4, !tbaa !87
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = and i16 %31, -2
  store i16 %35, ptr %14, align 4, !tbaa !87
  %36 = load ptr, ptr %9, align 8, !tbaa !88
  tail call void @ANIM_list_elem_update(ptr noundef %36, ptr noundef nonnull %11)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load ptr, ptr %11, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %10, !llvm.loop !89

40:                                               ; preds = %37, %5, %2, %2
  ret void
}

declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #2

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @action_group_colors_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_sequence_get_by_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @nodeFindNodebyName(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!56 = !{!35, !36, i64 16}
!57 = !{!40, !40, i64 0}
!58 = !{!59, !36, i64 288}
!59 = !{!"Object", !60, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !61, i64 312, !36, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !44, i64 616, !44, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !62, i64 1304, !62, i64 1312, !39, i64 1320, !39, i64 1324, !43, i64 1328, !43, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !43, i64 1400, !36, i64 1416}
!60 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!61 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!62 = !{!"long", !37, i64 0}
!63 = !{!59, !36, i64 296}
!64 = !{!65, !36, i64 120}
!65 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !43, i64 144, !43, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !36, i64 536}
!66 = !{!67, !39, i64 176}
!67 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !37, i64 48, !44, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !39, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !37, i64 308, !39, i64 320, !40, i64 324, !37, i64 326}
!68 = !{!69, !39, i64 32}
!69 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !43, i64 16, !39, i64 32, !39, i64 36, !37, i64 40, !70, i64 104}
!70 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 12, !40, i64 14}
!71 = !{!53, !36, i64 56}
!72 = !{!73, !36, i64 168}
!73 = !{!"bArmature", !60, i64 0, !36, i64 120, !43, i64 128, !43, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !40, i64 208, !40, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252}
!74 = !{!65, !40, i64 110}
!75 = !{!69, !39, i64 36}
!76 = !{!48, !40, i64 72}
!77 = !{!78, !36, i64 0}
!78 = !{!"Editing", !36, i64 0, !43, i64 8, !43, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !39, i64 2096, !39, i64 2100, !39, i64 2104, !39, i64 2108, !79, i64 2112}
!79 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!80 = !{!81, !39, i64 96}
!81 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !40, i64 156, !40, i64 158, !39, i64 160, !39, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !44, i64 224, !44, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !43, i64 256, !36, i64 272, !36, i64 280, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !36, i64 304, !39, i64 312, !39, i64 316, !39, i64 320, !44, i64 324, !39, i64 328, !37, i64 332, !37, i64 333, !43, i64 336}
!82 = !{!83, !39, i64 168}
!83 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !43, i64 200, !43, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !44, i64 380, !44, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !79, i64 400, !79, i64 416, !79, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!35, !40, i64 36}
!88 = !{!53, !36, i64 48}
!89 = distinct !{!89, !85, !86}
