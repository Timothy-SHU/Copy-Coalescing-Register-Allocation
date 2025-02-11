; ModuleID = 'blender/source/blender/editors/space_action/action_draw.c'
source_filename = "blender/source/blender/editors/space_action/action_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@__func__.draw_channel_names = private unnamed_addr constant [19 x i8] c"draw_channel_names\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_channel_names(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !11
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %6, i32 noundef %9) #7
  %11 = uitofp i64 %10 to float
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FB99999A0000000
  %15 = call float @llvm.fmuladd.f32(float %13, float 0x3FE99999A0000000, float %14)
  %16 = fmul float %13, 0x3FE99999A0000000
  %17 = call float @llvm.fmuladd.f32(float %11, float %15, float %16)
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 4
  %20 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %19) #8
  %21 = icmp slt i32 %20, %18
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = sub nsw i32 0, %18
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %24, ptr %25, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %22, %3
  %27 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  call void @UI_view2d_sync(ptr noundef null, ptr noundef %28, ptr noundef nonnull %5, i32 noundef 1) #7
  %29 = load ptr, ptr %4, align 8, !tbaa !24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %74, label %31

31:                                               ; preds = %26
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %33 = sitofp i16 %32 to float
  %34 = fmul float %33, 0xBFE99999A0000000
  %35 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %36 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %37

37:                                               ; preds = %31, %66
  %38 = phi i16 [ %32, %31 ], [ %68, %66 ]
  %39 = phi ptr [ %29, %31 ], [ %72, %66 ]
  %40 = phi float [ %34, %31 ], [ %71, %66 ]
  %41 = sitofp i16 %38 to float
  %42 = call float @llvm.fmuladd.f32(float %41, float 0xBFD99999A0000000, float %40)
  %43 = call float @llvm.fmuladd.f32(float %41, float 0x3FD99999A0000000, float %40)
  %44 = load float, ptr %35, align 8, !tbaa !25
  %45 = load float, ptr %36, align 4, !tbaa !26
  %46 = fcmp olt float %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = fcmp olt float %44, %42
  %49 = fcmp olt float %42, %45
  %50 = and i1 %48, %49
  br i1 %50, label %63, label %55

51:                                               ; preds = %37
  %52 = fcmp olt float %45, %42
  %53 = fcmp olt float %42, %44
  %54 = and i1 %52, %53
  br i1 %54, label %63, label %59

55:                                               ; preds = %47
  %56 = fcmp olt float %44, %43
  %57 = fcmp olt float %43, %45
  %58 = and i1 %56, %57
  br i1 %58, label %63, label %66

59:                                               ; preds = %51
  %60 = fcmp olt float %45, %43
  %61 = fcmp olt float %43, %44
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55, %51, %47
  call void @ANIM_channel_draw(ptr noundef nonnull %1, ptr noundef nonnull %39, float noundef %42, float noundef %43) #7
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %65 = sitofp i16 %64 to float
  br label %66

66:                                               ; preds = %59, %55, %63
  %67 = phi float [ %41, %59 ], [ %41, %55 ], [ %65, %63 ]
  %68 = phi i16 [ %38, %59 ], [ %38, %55 ], [ %64, %63 ]
  %69 = fmul float %67, 0x3FB99999A0000000
  %70 = call float @llvm.fmuladd.f32(float %67, float 0x3FE99999A0000000, float %69)
  %71 = fsub float %40, %70
  %72 = load ptr, ptr %39, align 8, !tbaa !24
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %37, !llvm.loop !27

74:                                               ; preds = %66, %26
  %75 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @__func__.draw_channel_names, i16 noundef signext 0) #7
  %76 = load ptr, ptr %4, align 8, !tbaa !24
  %77 = icmp eq ptr %76, null
  br i1 %77, label %123, label %78

78:                                               ; preds = %74
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %80 = sitofp i16 %79 to float
  %81 = fmul float %80, 0xBFE99999A0000000
  %82 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %83 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %84

84:                                               ; preds = %78, %114
  %85 = phi i16 [ %79, %78 ], [ %116, %114 ]
  %86 = phi ptr [ %76, %78 ], [ %121, %114 ]
  %87 = phi float [ %81, %78 ], [ %119, %114 ]
  %88 = phi i64 [ 0, %78 ], [ %120, %114 ]
  %89 = sitofp i16 %85 to float
  %90 = call float @llvm.fmuladd.f32(float %89, float 0xBFD99999A0000000, float %87)
  %91 = call float @llvm.fmuladd.f32(float %89, float 0x3FD99999A0000000, float %87)
  %92 = load float, ptr %82, align 8, !tbaa !25
  %93 = load float, ptr %83, align 4, !tbaa !26
  %94 = fcmp olt float %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = fcmp olt float %92, %90
  %97 = fcmp olt float %90, %93
  %98 = and i1 %96, %97
  br i1 %98, label %111, label %103

99:                                               ; preds = %84
  %100 = fcmp olt float %93, %90
  %101 = fcmp olt float %90, %92
  %102 = and i1 %100, %101
  br i1 %102, label %111, label %107

103:                                              ; preds = %95
  %104 = fcmp olt float %92, %91
  %105 = fcmp olt float %91, %93
  %106 = and i1 %104, %105
  br i1 %106, label %111, label %114

107:                                              ; preds = %99
  %108 = fcmp olt float %93, %91
  %109 = fcmp olt float %91, %92
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %103, %99, %95
  call void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %86, ptr noundef %75, float noundef %90, float noundef %91, i64 noundef %88) #7
  %112 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %113 = sitofp i16 %112 to float
  br label %114

114:                                              ; preds = %107, %103, %111
  %115 = phi float [ %89, %107 ], [ %89, %103 ], [ %113, %111 ]
  %116 = phi i16 [ %85, %107 ], [ %85, %103 ], [ %112, %111 ]
  %117 = fmul float %115, 0x3FB99999A0000000
  %118 = call float @llvm.fmuladd.f32(float %115, float 0x3FE99999A0000000, float %117)
  %119 = fsub float %87, %118
  %120 = add i64 %88, 1
  %121 = load ptr, ptr %86, align 8, !tbaa !24
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %84, !llvm.loop !29

123:                                              ; preds = %114, %74
  call void @uiEndBlock(ptr noundef %0, ptr noundef %75) #7
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %75) #7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !30
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !31
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_channel_draw(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_channel_draw_widgets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_channel_strips(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #6
  call void @UI_GetThemeColor3ubv(i32 noundef 2, ptr noundef nonnull %8) #7
  call void @UI_GetThemeColor3ubv(i32 noundef 23, ptr noundef nonnull %7) #7
  call void @UI_GetThemeColor3ubv(i32 noundef 30, ptr noundef nonnull %10) #7
  call void @UI_GetThemeColor3ubv(i32 noundef 31, ptr noundef nonnull %9) #7
  call void @UI_GetThemeColor3ubv(i32 noundef 131, ptr noundef nonnull %11) #7
  call void @UI_GetThemeColor3ubv(i32 noundef 132, ptr noundef nonnull %12) #7
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !11
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !5
  call void @calc_action_range(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext 0) #7
  %20 = load i16, ptr %15, align 8, !tbaa !11
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i16 [ %20, %18 ], [ %16, %3 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !5
  %24 = sext i16 %22 to i32
  %25 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %23, i32 noundef %24) #7
  %26 = uitofp i64 %25 to float
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %28 = sitofp i16 %27 to float
  %29 = fmul float %28, 0x3FB99999A0000000
  %30 = call float @llvm.fmuladd.f32(float %28, float 0x3FE99999A0000000, float %29)
  %31 = fmul float %28, 0x3FE99999A0000000
  %32 = call float @llvm.fmuladd.f32(float %26, float %30, float %31)
  %33 = fptosi float %32 to i32
  %34 = sub nsw i32 0, %33
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %35, ptr %36, align 8, !tbaa !19
  call void @glEnable(i32 noundef 3042) #7
  %37 = load ptr, ptr %4, align 8, !tbaa !24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %227, label %39

39:                                               ; preds = %21
  %40 = fmul float %28, 0xBFE99999A0000000
  %41 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %43 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %44 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1
  %45 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2
  %46 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1
  %47 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  %48 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %49 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 1
  %50 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 2
  %51 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 1
  %52 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 2
  %53 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 1
  %54 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 2
  %55 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 1
  %56 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 2
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  br label %58

58:                                               ; preds = %39, %219
  %59 = phi i16 [ %57, %39 ], [ %220, %219 ]
  %60 = phi ptr [ %37, %39 ], [ %225, %219 ]
  %61 = phi float [ %40, %39 ], [ %224, %219 ]
  %62 = sitofp i16 %59 to float
  %63 = call float @llvm.fmuladd.f32(float %62, float 0xBFD99999A0000000, float %61)
  %64 = call float @llvm.fmuladd.f32(float %62, float 0x3FD99999A0000000, float %61)
  %65 = load float, ptr %42, align 8, !tbaa !25
  %66 = load float, ptr %43, align 4, !tbaa !26
  %67 = fcmp olt float %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = fcmp olt float %65, %63
  %70 = fcmp olt float %63, %66
  %71 = and i1 %69, %70
  br i1 %71, label %84, label %76

72:                                               ; preds = %58
  %73 = fcmp olt float %66, %63
  %74 = fcmp olt float %63, %65
  %75 = and i1 %73, %74
  br i1 %75, label %84, label %80

76:                                               ; preds = %68
  %77 = fcmp olt float %65, %64
  %78 = fcmp olt float %64, %66
  %79 = and i1 %77, %78
  br i1 %79, label %84, label %219

80:                                               ; preds = %72
  %81 = fcmp olt float %66, %64
  %82 = fcmp olt float %64, %65
  %83 = and i1 %81, %82
  br i1 %83, label %84, label %219

84:                                               ; preds = %80, %76, %72, %68
  %85 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %60) #7
  %86 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 7
  %87 = load i16, ptr %86, align 2, !tbaa !32
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %219, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.bAnimChannelType, ptr %85, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !34
  %92 = call zeroext i8 %91(ptr noundef nonnull %0, ptr noundef nonnull %60, i32 noundef 0) #7
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %60, i32 noundef 0) #7
  %96 = sext i16 %95 to i32
  br label %97

97:                                               ; preds = %94, %89
  %98 = phi i32 [ %96, %94 ], [ 0, %89 ]
  %99 = load i16, ptr %15, align 8, !tbaa !11
  switch i16 %99, label %219 [
    i16 1, label %100
    i16 4, label %100
    i16 2, label %100
    i16 3, label %155
    i16 9, label %187
  ]

100:                                              ; preds = %97, %97, %97
  %101 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !36
  switch i32 %102, label %128 [
    i32 3, label %103
    i32 4, label %104
    i32 5, label %104
    i32 8, label %111
    i32 14, label %111
    i32 15, label %111
    i32 6, label %118
  ]

103:                                              ; preds = %100
  call void @UI_ThemeColor4(i32 noundef 165) #7
  br label %138

104:                                              ; preds = %100, %100
  %105 = icmp eq i32 %98, 0
  %106 = load i8, ptr %11, align 1, !tbaa !37
  %107 = load i8, ptr %55, align 1, !tbaa !37
  %108 = load i8, ptr %56, align 1, !tbaa !37
  br i1 %105, label %110, label %109

109:                                              ; preds = %104
  call void @glColor4ub(i8 noundef zeroext %106, i8 noundef zeroext %107, i8 noundef zeroext %108, i8 noundef zeroext 69) #7
  br label %138

110:                                              ; preds = %104
  call void @glColor4ub(i8 noundef zeroext %106, i8 noundef zeroext %107, i8 noundef zeroext %108, i8 noundef zeroext 34) #7
  br label %138

111:                                              ; preds = %100, %100, %100
  %112 = icmp eq i32 %98, 0
  %113 = load i8, ptr %12, align 1, !tbaa !37
  %114 = load i8, ptr %53, align 1, !tbaa !37
  %115 = load i8, ptr %54, align 1, !tbaa !37
  br i1 %112, label %117, label %116

116:                                              ; preds = %111
  call void @glColor4ub(i8 noundef zeroext %113, i8 noundef zeroext %114, i8 noundef zeroext %115, i8 noundef zeroext 69) #7
  br label %138

117:                                              ; preds = %111
  call void @glColor4ub(i8 noundef zeroext %113, i8 noundef zeroext %114, i8 noundef zeroext %115, i8 noundef zeroext 34) #7
  br label %138

118:                                              ; preds = %100
  %119 = icmp eq i32 %98, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %118
  %121 = load i8, ptr %9, align 1, !tbaa !37
  %122 = load i8, ptr %49, align 1, !tbaa !37
  %123 = load i8, ptr %50, align 1, !tbaa !37
  call void @glColor4ub(i8 noundef zeroext %121, i8 noundef zeroext %122, i8 noundef zeroext %123, i8 noundef zeroext 34) #7
  br label %138

124:                                              ; preds = %118
  %125 = load i8, ptr %10, align 1, !tbaa !37
  %126 = load i8, ptr %51, align 1, !tbaa !37
  %127 = load i8, ptr %52, align 1, !tbaa !37
  call void @glColor4ub(i8 noundef zeroext %125, i8 noundef zeroext %126, i8 noundef zeroext %127, i8 noundef zeroext 34) #7
  br label %138

128:                                              ; preds = %100
  %129 = icmp eq i32 %98, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %128
  %131 = load i8, ptr %7, align 1, !tbaa !37
  %132 = load i8, ptr %44, align 1, !tbaa !37
  %133 = load i8, ptr %45, align 1, !tbaa !37
  call void @glColor4ub(i8 noundef zeroext %131, i8 noundef zeroext %132, i8 noundef zeroext %133, i8 noundef zeroext 34) #7
  br label %138

134:                                              ; preds = %128
  %135 = load i8, ptr %8, align 1, !tbaa !37
  %136 = load i8, ptr %46, align 1, !tbaa !37
  %137 = load i8, ptr %47, align 1, !tbaa !37
  call void @glColor4ub(i8 noundef zeroext %135, i8 noundef zeroext %136, i8 noundef zeroext %137, i8 noundef zeroext 34) #7
  br label %138

138:                                              ; preds = %130, %134, %120, %124, %116, %117, %109, %110, %103
  %139 = load float, ptr %41, align 8, !tbaa !38
  %140 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %141 = sitofp i16 %140 to float
  %142 = call float @llvm.fmuladd.f32(float %141, float 0xBFD99999A0000000, float %61)
  %143 = load float, ptr %48, align 4, !tbaa !39
  %144 = fadd float %143, 1.000000e+02
  %145 = call float @llvm.fmuladd.f32(float %141, float 0x3FD99999A0000000, float %61)
  call void @glRectf(float noundef %139, float noundef %142, float noundef %144, float noundef %145) #7
  %146 = load i16, ptr %15, align 8, !tbaa !11
  %147 = icmp eq i16 %146, 1
  br i1 %147, label %148, label %219

148:                                              ; preds = %138
  %149 = load float, ptr %5, align 4, !tbaa !40
  %150 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %151 = sitofp i16 %150 to float
  %152 = call float @llvm.fmuladd.f32(float %151, float 0xBFD99999A0000000, float %61)
  %153 = load float, ptr %6, align 4, !tbaa !40
  %154 = call float @llvm.fmuladd.f32(float %151, float 0x3FD99999A0000000, float %61)
  call void @glRectf(float noundef %149, float noundef %152, float noundef %153, float noundef %154) #7
  br label %219

155:                                              ; preds = %97
  %156 = icmp eq i32 %98, 0
  %157 = load i8, ptr %8, align 1
  %158 = load i8, ptr %7, align 1
  %159 = select i1 %156, i8 %157, i8 %158
  %160 = load i8, ptr %46, align 1
  %161 = load i8, ptr %44, align 1
  %162 = select i1 %156, i8 %160, i8 %161
  %163 = load i8, ptr %47, align 1
  %164 = load i8, ptr %45, align 1
  %165 = select i1 %156, i8 %163, i8 %164
  call void @glColor4ub(i8 noundef zeroext %159, i8 noundef zeroext %162, i8 noundef zeroext %165, i8 noundef zeroext 34) #7
  %166 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %167 = sitofp i16 %166 to float
  %168 = call float @llvm.fmuladd.f32(float %167, float 0xBFD99999A0000000, float %61)
  %169 = load float, ptr %41, align 8, !tbaa !38
  %170 = call float @llvm.fmuladd.f32(float %167, float 0x3FD99999A0000000, float %61)
  call void @glRectf(float noundef 0.000000e+00, float noundef %168, float noundef %169, float noundef %170) #7
  %171 = load i8, ptr %8, align 1
  %172 = load i8, ptr %7, align 1
  %173 = select i1 %156, i8 %171, i8 %172
  %174 = load i8, ptr %46, align 1
  %175 = load i8, ptr %44, align 1
  %176 = select i1 %156, i8 %174, i8 %175
  %177 = load i8, ptr %47, align 1
  %178 = load i8, ptr %45, align 1
  %179 = select i1 %156, i8 %177, i8 %178
  call void @glColor4ub(i8 noundef zeroext %173, i8 noundef zeroext %176, i8 noundef zeroext %179, i8 noundef zeroext 68) #7
  %180 = load float, ptr %41, align 8, !tbaa !38
  %181 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %182 = sitofp i16 %181 to float
  %183 = call float @llvm.fmuladd.f32(float %182, float 0xBFD99999A0000000, float %61)
  %184 = load float, ptr %48, align 4, !tbaa !39
  %185 = fadd float %184, 1.000000e+02
  %186 = call float @llvm.fmuladd.f32(float %182, float 0x3FD99999A0000000, float %61)
  call void @glRectf(float noundef %180, float noundef %183, float noundef %185, float noundef %186) #7
  br label %219

187:                                              ; preds = %97
  %188 = icmp eq i32 %98, 0
  %189 = load i8, ptr %8, align 1
  %190 = load i8, ptr %7, align 1
  %191 = select i1 %188, i8 %189, i8 %190
  %192 = load i8, ptr %46, align 1
  %193 = load i8, ptr %44, align 1
  %194 = select i1 %188, i8 %192, i8 %193
  %195 = load i8, ptr %47, align 1
  %196 = load i8, ptr %45, align 1
  %197 = select i1 %188, i8 %195, i8 %196
  call void @glColor4ub(i8 noundef zeroext %191, i8 noundef zeroext %194, i8 noundef zeroext %197, i8 noundef zeroext 34) #7
  %198 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %199 = sitofp i16 %198 to float
  %200 = call float @llvm.fmuladd.f32(float %199, float 0xBFD99999A0000000, float %61)
  %201 = load float, ptr %41, align 8, !tbaa !38
  %202 = call float @llvm.fmuladd.f32(float %199, float 0x3FD99999A0000000, float %61)
  call void @glRectf(float noundef 0.000000e+00, float noundef %200, float noundef %201, float noundef %202) #7
  %203 = load i8, ptr %8, align 1
  %204 = load i8, ptr %7, align 1
  %205 = select i1 %188, i8 %203, i8 %204
  %206 = load i8, ptr %46, align 1
  %207 = load i8, ptr %44, align 1
  %208 = select i1 %188, i8 %206, i8 %207
  %209 = load i8, ptr %47, align 1
  %210 = load i8, ptr %45, align 1
  %211 = select i1 %188, i8 %209, i8 %210
  call void @glColor4ub(i8 noundef zeroext %205, i8 noundef zeroext %208, i8 noundef zeroext %211, i8 noundef zeroext 68) #7
  %212 = load float, ptr %41, align 8, !tbaa !38
  %213 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %214 = sitofp i16 %213 to float
  %215 = call float @llvm.fmuladd.f32(float %214, float 0xBFD99999A0000000, float %61)
  %216 = load float, ptr %48, align 4, !tbaa !39
  %217 = fadd float %216, 1.000000e+02
  %218 = call float @llvm.fmuladd.f32(float %214, float 0x3FD99999A0000000, float %61)
  call void @glRectf(float noundef %212, float noundef %215, float noundef %217, float noundef %218) #7
  br label %219

219:                                              ; preds = %84, %155, %187, %138, %148, %97, %80, %76
  %220 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %221 = sitofp i16 %220 to float
  %222 = fmul float %221, 0x3FB99999A0000000
  %223 = call float @llvm.fmuladd.f32(float %221, float 0x3FE99999A0000000, float %222)
  %224 = fsub float %61, %223
  %225 = load ptr, ptr %60, align 8, !tbaa !24
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %58, !llvm.loop !41

227:                                              ; preds = %219, %21
  call void @glDisable(i32 noundef 3042) #7
  %228 = load ptr, ptr %4, align 8, !tbaa !24
  %229 = icmp eq ptr %228, null
  br i1 %229, label %301, label %230

230:                                              ; preds = %227
  %231 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %232 = sitofp i16 %231 to float
  %233 = fmul float %232, 0xBFE99999A0000000
  %234 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %235 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %236

236:                                              ; preds = %230, %293
  %237 = phi i16 [ %231, %230 ], [ %294, %293 ]
  %238 = phi ptr [ %228, %230 ], [ %299, %293 ]
  %239 = phi float [ %233, %230 ], [ %298, %293 ]
  %240 = sitofp i16 %237 to float
  %241 = call float @llvm.fmuladd.f32(float %240, float 0xBFD99999A0000000, float %239)
  %242 = call float @llvm.fmuladd.f32(float %240, float 0x3FD99999A0000000, float %239)
  %243 = load float, ptr %234, align 8, !tbaa !25
  %244 = load float, ptr %235, align 4, !tbaa !26
  %245 = fcmp olt float %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %236
  %247 = fcmp olt float %243, %241
  %248 = fcmp olt float %241, %244
  %249 = and i1 %247, %248
  br i1 %249, label %262, label %254

250:                                              ; preds = %236
  %251 = fcmp olt float %244, %241
  %252 = fcmp olt float %241, %243
  %253 = and i1 %251, %252
  br i1 %253, label %262, label %258

254:                                              ; preds = %246
  %255 = fcmp olt float %243, %242
  %256 = fcmp olt float %242, %244
  %257 = and i1 %255, %256
  br i1 %257, label %262, label %293

258:                                              ; preds = %250
  %259 = fcmp olt float %244, %242
  %260 = fcmp olt float %242, %243
  %261 = and i1 %259, %260
  br i1 %261, label %262, label %293

262:                                              ; preds = %258, %254, %250, %246
  %263 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 7
  %264 = load i16, ptr %263, align 2, !tbaa !32
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %293, label %266

266:                                              ; preds = %262
  %267 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %238) #7
  %268 = load i16, ptr %263, align 2, !tbaa !32
  switch i16 %268, label %293 [
    i16 5, label %269
    i16 6, label %272
    i16 7, label %275
    i16 8, label %278
    i16 9, label %281
    i16 1, label %284
    i16 2, label %287
    i16 3, label %290
  ]

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !42
  call void @draw_summary_channel(ptr noundef nonnull %13, ptr noundef %271, float noundef %239) #7
  br label %293

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 8
  %274 = load ptr, ptr %273, align 8, !tbaa !43
  call void @draw_scene_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %274, float noundef %239) #7
  br label %293

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 8
  %277 = load ptr, ptr %276, align 8, !tbaa !43
  call void @draw_object_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %277, float noundef %239) #7
  br label %293

278:                                              ; preds = %266
  %279 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 8
  %280 = load ptr, ptr %279, align 8, !tbaa !43
  call void @draw_action_channel(ptr noundef nonnull %13, ptr noundef %267, ptr noundef %280, float noundef %239) #7
  br label %293

281:                                              ; preds = %266
  %282 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !42
  call void @draw_agroup_channel(ptr noundef nonnull %13, ptr noundef %267, ptr noundef %283, float noundef %239) #7
  br label %293

284:                                              ; preds = %266
  %285 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 8
  %286 = load ptr, ptr %285, align 8, !tbaa !43
  call void @draw_fcurve_channel(ptr noundef nonnull %13, ptr noundef %267, ptr noundef %286, float noundef %239) #7
  br label %293

287:                                              ; preds = %266
  %288 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !42
  call void @draw_gpl_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %289, float noundef %239) #7
  br label %293

290:                                              ; preds = %266
  %291 = getelementptr inbounds %struct.bAnimListElem, ptr %238, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !42
  call void @draw_masklay_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %292, float noundef %239) #7
  br label %293

293:                                              ; preds = %262, %266, %290, %287, %284, %281, %278, %275, %272, %269, %258, %254
  %294 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !12
  %295 = sitofp i16 %294 to float
  %296 = fmul float %295, 0x3FB99999A0000000
  %297 = call float @llvm.fmuladd.f32(float %295, float 0x3FE99999A0000000, float %296)
  %298 = fsub float %239, %297
  %299 = load ptr, ptr %238, align 8, !tbaa !24
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %236, !llvm.loop !44

301:                                              ; preds = %293, %227
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  %302 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 11
  %303 = load i16, ptr %302, align 2, !tbaa !45
  %304 = and i16 %303, 1
  %305 = icmp eq i16 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %301
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #7
  call void @glBegin(i32 noundef 1) #7
  %307 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 12
  %308 = load float, ptr %307, align 4, !tbaa !48
  %309 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %310 = load float, ptr %309, align 8, !tbaa !25
  %311 = fadd float %310, -1.000000e+02
  call void @glVertex2f(float noundef %308, float noundef %311) #7
  %312 = load float, ptr %307, align 4, !tbaa !48
  %313 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %314 = load float, ptr %313, align 4, !tbaa !26
  call void @glVertex2f(float noundef %312, float noundef %314) #7
  call void @glEnd() #7
  br label %315

315:                                              ; preds = %306, %301
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_summary_channel(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_scene_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_object_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_action_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_agroup_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_fcurve_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_gpl_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_masklay_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"bAnimContext", !7, i64 0, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!13, !10, i64 8948}
!13 = !{!"UserDef", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !14, i64 8468, !10, i64 8472, !10, i64 8474, !10, i64 8476, !10, i64 8478, !10, i64 8480, !10, i64 8482, !14, i64 8484, !14, i64 8488, !14, i64 8492, !10, i64 8496, !10, i64 8498, !14, i64 8500, !14, i64 8504, !14, i64 8508, !14, i64 8512, !14, i64 8516, !14, i64 8520, !14, i64 8524, !10, i64 8528, !10, i64 8530, !10, i64 8532, !10, i64 8534, !15, i64 8536, !15, i64 8552, !15, i64 8568, !15, i64 8584, !15, i64 8600, !15, i64 8616, !15, i64 8632, !8, i64 8648, !10, i64 8712, !10, i64 8714, !10, i64 8716, !10, i64 8718, !10, i64 8720, !10, i64 8722, !10, i64 8724, !10, i64 8726, !8, i64 8728, !10, i64 8896, !10, i64 8898, !10, i64 8900, !10, i64 8902, !10, i64 8904, !10, i64 8906, !10, i64 8908, !10, i64 8910, !14, i64 8912, !14, i64 8916, !10, i64 8920, !10, i64 8922, !10, i64 8924, !10, i64 8926, !10, i64 8928, !10, i64 8930, !10, i64 8932, !10, i64 8934, !10, i64 8936, !10, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !10, i64 8944, !10, i64 8946, !10, i64 8948, !10, i64 8950, !10, i64 8952, !10, i64 8954, !16, i64 8956, !16, i64 8960, !14, i64 8964, !10, i64 8968, !10, i64 8970, !16, i64 8972, !10, i64 8976, !10, i64 8978, !10, i64 8980, !10, i64 8982, !17, i64 8984, !8, i64 9760, !8, i64 9772, !10, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !14, i64 10896, !14, i64 10900, !16, i64 10904, !16, i64 10908, !14, i64 10912, !10, i64 10916, !10, i64 10918, !10, i64 10920, !10, i64 10922, !10, i64 10924, !10, i64 10926, !18, i64 10928}
!14 = !{!"int", !8, i64 0}
!15 = !{!"ListBase", !7, i64 0, !7, i64 8}
!16 = !{!"float", !8, i64 0}
!17 = !{!"ColorBand", !10, i64 0, !10, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!18 = !{!"WalkNavigation", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !10, i64 24, !8, i64 26}
!19 = !{!20, !16, i64 8}
!20 = !{!"View2D", !21, i64 0, !21, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !8, i64 80, !8, i64 88, !16, i64 96, !16, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !7, i64 128, !14, i64 136, !14, i64 140, !7, i64 144, !7, i64 152}
!21 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!22 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!23 = !{!6, !7, i64 16}
!24 = !{!7, !7, i64 0}
!25 = !{!20, !16, i64 24}
!26 = !{!20, !16, i64 28}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!22, !14, i64 12}
!31 = !{!22, !14, i64 8}
!32 = !{!33, !10, i64 38}
!33 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !10, i64 36, !10, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!34 = !{!35, !7, i64 72}
!35 = !{!"bAnimChannelType", !7, i64 0, !14, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!36 = !{!33, !14, i64 24}
!37 = !{!8, !8, i64 0}
!38 = !{!20, !16, i64 16}
!39 = !{!20, !16, i64 20}
!40 = !{!16, !16, i64 0}
!41 = distinct !{!41, !28}
!42 = !{!33, !7, i64 16}
!43 = !{!33, !7, i64 40}
!44 = distinct !{!44, !28}
!45 = !{!46, !10, i64 338}
!46 = !{!"SpaceAction", !7, i64 0, !7, i64 8, !15, i64 16, !14, i64 32, !16, i64 36, !8, i64 40, !20, i64 56, !7, i64 216, !47, i64 224, !8, i64 336, !8, i64 337, !10, i64 338, !16, i64 340}
!47 = !{!"bDopeSheet", !7, i64 0, !15, i64 8, !7, i64 24, !8, i64 32, !14, i64 96, !14, i64 100, !14, i64 104, !14, i64 108}
!48 = !{!46, !16, i64 340}
