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

; Function Attrs: nounwind uwtable
define dso_local void @draw_channel_names(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !40
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %6, i32 noundef %9) #5
  %11 = uitofp i64 %10 to float
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FB99999A0000000
  %15 = call float @llvm.fmuladd.f32(float %13, float 0x3FE99999A0000000, float %14)
  %16 = fmul float %13, 0x3FE99999A0000000
  %17 = call float @llvm.fmuladd.f32(float %11, float %15, float %16)
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 4, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 4, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = sub nsw i32 %20, %22
  %24 = icmp slt i32 %23, %18
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = sub nsw i32 0, %18
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %27, ptr %28, align 8, !tbaa !51
  br label %29

29:                                               ; preds = %25, %3
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  call void @UI_view2d_sync(ptr noundef null, ptr noundef %31, ptr noundef nonnull %5, i32 noundef 1) #5
  %32 = load ptr, ptr %4, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %76, label %34

34:                                               ; preds = %29
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %36 = sitofp i16 %35 to float
  %37 = fmul float %36, 0xBFE99999A0000000
  %38 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %39 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %40

40:                                               ; preds = %34, %68
  %41 = phi ptr [ %32, %34 ], [ %74, %68 ]
  %42 = phi float [ %37, %34 ], [ %73, %68 ]
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %44 = sitofp i16 %43 to float
  %45 = call float @llvm.fmuladd.f32(float %44, float 0xBFD99999A0000000, float %42)
  %46 = call float @llvm.fmuladd.f32(float %44, float 0x3FD99999A0000000, float %42)
  %47 = load float, ptr %38, align 8, !tbaa !56
  %48 = load float, ptr %39, align 4, !tbaa !57
  %49 = fcmp olt float %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = fcmp olt float %47, %45
  %52 = fcmp olt float %45, %48
  %53 = and i1 %51, %52
  br i1 %53, label %67, label %58

54:                                               ; preds = %40
  %55 = fcmp olt float %48, %45
  %56 = fcmp olt float %45, %47
  %57 = and i1 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %54, %50
  br i1 %49, label %59, label %63

59:                                               ; preds = %58
  %60 = fcmp olt float %47, %46
  %61 = fcmp olt float %46, %48
  %62 = and i1 %60, %61
  br i1 %62, label %67, label %68

63:                                               ; preds = %58
  %64 = fcmp olt float %48, %46
  %65 = fcmp olt float %46, %47
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59, %54, %50
  call void @ANIM_channel_draw(ptr noundef nonnull %1, ptr noundef nonnull %41, float noundef %45, float noundef %46) #5
  br label %68

68:                                               ; preds = %63, %59, %67
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %70 = sitofp i16 %69 to float
  %71 = fmul float %70, 0x3FB99999A0000000
  %72 = call float @llvm.fmuladd.f32(float %70, float 0x3FE99999A0000000, float %71)
  %73 = fsub float %42, %72
  %74 = load ptr, ptr %41, align 8, !tbaa !55
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %40, !llvm.loop !58

76:                                               ; preds = %68, %29
  %77 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @__func__.draw_channel_names, i16 noundef signext 0) #5
  %78 = load ptr, ptr %4, align 8, !tbaa !55
  %79 = icmp eq ptr %78, null
  br i1 %79, label %124, label %80

80:                                               ; preds = %76
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %82 = sitofp i16 %81 to float
  %83 = fmul float %82, 0xBFE99999A0000000
  %84 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %85 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %86

86:                                               ; preds = %80, %115
  %87 = phi ptr [ %78, %80 ], [ %122, %115 ]
  %88 = phi float [ %83, %80 ], [ %120, %115 ]
  %89 = phi i64 [ 0, %80 ], [ %121, %115 ]
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %91 = sitofp i16 %90 to float
  %92 = call float @llvm.fmuladd.f32(float %91, float 0xBFD99999A0000000, float %88)
  %93 = call float @llvm.fmuladd.f32(float %91, float 0x3FD99999A0000000, float %88)
  %94 = load float, ptr %84, align 8, !tbaa !56
  %95 = load float, ptr %85, align 4, !tbaa !57
  %96 = fcmp olt float %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = fcmp olt float %94, %92
  %99 = fcmp olt float %92, %95
  %100 = and i1 %98, %99
  br i1 %100, label %114, label %105

101:                                              ; preds = %86
  %102 = fcmp olt float %95, %92
  %103 = fcmp olt float %92, %94
  %104 = and i1 %102, %103
  br i1 %104, label %114, label %105

105:                                              ; preds = %101, %97
  br i1 %96, label %106, label %110

106:                                              ; preds = %105
  %107 = fcmp olt float %94, %93
  %108 = fcmp olt float %93, %95
  %109 = and i1 %107, %108
  br i1 %109, label %114, label %115

110:                                              ; preds = %105
  %111 = fcmp olt float %95, %93
  %112 = fcmp olt float %93, %94
  %113 = and i1 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %106, %101, %97
  call void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %87, ptr noundef %77, float noundef %92, float noundef %93, i64 noundef %89) #5
  br label %115

115:                                              ; preds = %110, %106, %114
  %116 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %117 = sitofp i16 %116 to float
  %118 = fmul float %117, 0x3FB99999A0000000
  %119 = call float @llvm.fmuladd.f32(float %117, float 0x3FE99999A0000000, float %118)
  %120 = fsub float %88, %119
  %121 = add i64 %89, 1
  %122 = load ptr, ptr %87, align 8, !tbaa !55
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %86, !llvm.loop !61

124:                                              ; preds = %115, %76
  call void @uiEndBlock(ptr noundef %0, ptr noundef %77) #5
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %77) #5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ANIM_channel_draw(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @ANIM_channel_draw_widgets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i64 noundef) local_unnamed_addr #3

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #5
  call void @UI_GetThemeColor3ubv(i32 noundef 2, ptr noundef nonnull %8) #5
  call void @UI_GetThemeColor3ubv(i32 noundef 23, ptr noundef nonnull %7) #5
  call void @UI_GetThemeColor3ubv(i32 noundef 30, ptr noundef nonnull %10) #5
  call void @UI_GetThemeColor3ubv(i32 noundef 31, ptr noundef nonnull %9) #5
  call void @UI_GetThemeColor3ubv(i32 noundef 131, ptr noundef nonnull %11) #5
  call void @UI_GetThemeColor3ubv(i32 noundef 132, ptr noundef nonnull %12) #5
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !40
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  call void @calc_action_range(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext 0) #5
  br label %20

20:                                               ; preds = %18, %3
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = load i16, ptr %15, align 8, !tbaa !40
  %23 = sext i16 %22 to i32
  %24 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %21, i32 noundef %23) #5
  %25 = uitofp i64 %24 to float
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 0x3FB99999A0000000
  %29 = call float @llvm.fmuladd.f32(float %27, float 0x3FE99999A0000000, float %28)
  %30 = fmul float %27, 0x3FE99999A0000000
  %31 = call float @llvm.fmuladd.f32(float %25, float %29, float %30)
  %32 = fptosi float %31 to i32
  %33 = sub nsw i32 0, %32
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %34, ptr %35, align 8, !tbaa !51
  call void @glEnable(i32 noundef 3042) #5
  %36 = load ptr, ptr %4, align 8, !tbaa !55
  %37 = icmp eq ptr %36, null
  br i1 %37, label %252, label %38

38:                                               ; preds = %20
  %39 = fmul float %27, 0xBFE99999A0000000
  %40 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %41 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %42 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %43 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1
  %44 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2
  %45 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1
  %46 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  %47 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1
  %48 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2
  %49 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1
  %50 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  %51 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %52 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1
  %53 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2
  %54 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1
  %55 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  %56 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1
  %57 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2
  %58 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1
  %59 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  %60 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %61 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 1
  %62 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 2
  %63 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 1
  %64 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 2
  %65 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 1
  %66 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 2
  %67 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 1
  %68 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 2
  %69 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 1
  %70 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 2
  %71 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 1
  %72 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 2
  %73 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1
  %74 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2
  %75 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1
  %76 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  %77 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  br label %78

78:                                               ; preds = %38, %244
  %79 = phi ptr [ %36, %38 ], [ %250, %244 ]
  %80 = phi float [ %39, %38 ], [ %249, %244 ]
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %82 = sitofp i16 %81 to float
  %83 = call float @llvm.fmuladd.f32(float %82, float 0xBFD99999A0000000, float %80)
  %84 = call float @llvm.fmuladd.f32(float %82, float 0x3FD99999A0000000, float %80)
  %85 = load float, ptr %41, align 8, !tbaa !56
  %86 = load float, ptr %42, align 4, !tbaa !57
  %87 = fcmp olt float %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = fcmp olt float %85, %83
  %90 = fcmp olt float %83, %86
  %91 = and i1 %89, %90
  br i1 %91, label %105, label %96

92:                                               ; preds = %78
  %93 = fcmp olt float %86, %83
  %94 = fcmp olt float %83, %85
  %95 = and i1 %93, %94
  br i1 %95, label %105, label %96

96:                                               ; preds = %92, %88
  br i1 %87, label %97, label %101

97:                                               ; preds = %96
  %98 = fcmp olt float %85, %84
  %99 = fcmp olt float %84, %86
  %100 = and i1 %98, %99
  br i1 %100, label %105, label %244

101:                                              ; preds = %96
  %102 = fcmp olt float %86, %84
  %103 = fcmp olt float %84, %85
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %244

105:                                              ; preds = %101, %97, %92, %88
  %106 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %79) #5
  %107 = getelementptr inbounds %struct.bAnimListElem, ptr %79, i64 0, i32 7
  %108 = load i16, ptr %107, align 2, !tbaa !62
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %244, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.bAnimChannelType, ptr %106, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !64
  %113 = call zeroext i8 %112(ptr noundef nonnull %0, ptr noundef nonnull %79, i32 noundef 0) #5
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %79, i32 noundef 0) #5
  %117 = sext i16 %116 to i32
  br label %118

118:                                              ; preds = %115, %110
  %119 = phi i32 [ %117, %115 ], [ 0, %110 ]
  %120 = load i16, ptr %15, align 8, !tbaa !40
  switch i16 %120, label %244 [
    i16 1, label %121
    i16 4, label %121
    i16 2, label %121
    i16 3, label %180
    i16 9, label %212
  ]

121:                                              ; preds = %118, %118, %118
  %122 = getelementptr inbounds %struct.bAnimListElem, ptr %79, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !66
  switch i32 %123, label %153 [
    i32 3, label %124
    i32 4, label %125
    i32 5, label %125
    i32 8, label %134
    i32 14, label %134
    i32 15, label %134
    i32 6, label %143
  ]

124:                                              ; preds = %121
  call void @UI_ThemeColor4(i32 noundef 165) #5
  br label %163

125:                                              ; preds = %121, %121
  %126 = icmp eq i32 %119, 0
  %127 = load i8, ptr %11, align 1, !tbaa !67
  br i1 %126, label %131, label %128

128:                                              ; preds = %125
  %129 = load i8, ptr %69, align 1, !tbaa !67
  %130 = load i8, ptr %70, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %127, i8 noundef zeroext %129, i8 noundef zeroext %130, i8 noundef zeroext 69) #5
  br label %163

131:                                              ; preds = %125
  %132 = load i8, ptr %71, align 1, !tbaa !67
  %133 = load i8, ptr %72, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %127, i8 noundef zeroext %132, i8 noundef zeroext %133, i8 noundef zeroext 34) #5
  br label %163

134:                                              ; preds = %121, %121, %121
  %135 = icmp eq i32 %119, 0
  %136 = load i8, ptr %12, align 1, !tbaa !67
  br i1 %135, label %140, label %137

137:                                              ; preds = %134
  %138 = load i8, ptr %65, align 1, !tbaa !67
  %139 = load i8, ptr %66, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %136, i8 noundef zeroext %138, i8 noundef zeroext %139, i8 noundef zeroext 69) #5
  br label %163

140:                                              ; preds = %134
  %141 = load i8, ptr %67, align 1, !tbaa !67
  %142 = load i8, ptr %68, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %136, i8 noundef zeroext %141, i8 noundef zeroext %142, i8 noundef zeroext 34) #5
  br label %163

143:                                              ; preds = %121
  %144 = icmp eq i32 %119, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %143
  %146 = load i8, ptr %9, align 1, !tbaa !67
  %147 = load i8, ptr %61, align 1, !tbaa !67
  %148 = load i8, ptr %62, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %146, i8 noundef zeroext %147, i8 noundef zeroext %148, i8 noundef zeroext 34) #5
  br label %163

149:                                              ; preds = %143
  %150 = load i8, ptr %10, align 1, !tbaa !67
  %151 = load i8, ptr %63, align 1, !tbaa !67
  %152 = load i8, ptr %64, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %150, i8 noundef zeroext %151, i8 noundef zeroext %152, i8 noundef zeroext 34) #5
  br label %163

153:                                              ; preds = %121
  %154 = icmp eq i32 %119, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %153
  %156 = load i8, ptr %7, align 1, !tbaa !67
  %157 = load i8, ptr %73, align 1, !tbaa !67
  %158 = load i8, ptr %74, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %156, i8 noundef zeroext %157, i8 noundef zeroext %158, i8 noundef zeroext 34) #5
  br label %163

159:                                              ; preds = %153
  %160 = load i8, ptr %8, align 1, !tbaa !67
  %161 = load i8, ptr %75, align 1, !tbaa !67
  %162 = load i8, ptr %76, align 1, !tbaa !67
  call void @glColor4ub(i8 noundef zeroext %160, i8 noundef zeroext %161, i8 noundef zeroext %162, i8 noundef zeroext 34) #5
  br label %163

163:                                              ; preds = %155, %159, %145, %149, %137, %140, %128, %131, %124
  %164 = load float, ptr %40, align 8, !tbaa !68
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %166 = sitofp i16 %165 to float
  %167 = call float @llvm.fmuladd.f32(float %166, float 0xBFD99999A0000000, float %80)
  %168 = load float, ptr %77, align 4, !tbaa !69
  %169 = fadd float %168, 1.000000e+02
  %170 = call float @llvm.fmuladd.f32(float %166, float 0x3FD99999A0000000, float %80)
  call void @glRectf(float noundef %164, float noundef %167, float noundef %169, float noundef %170) #5
  %171 = load i16, ptr %15, align 8, !tbaa !40
  %172 = icmp eq i16 %171, 1
  br i1 %172, label %173, label %244

173:                                              ; preds = %163
  %174 = load float, ptr %5, align 4, !tbaa !70
  %175 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %176 = sitofp i16 %175 to float
  %177 = call float @llvm.fmuladd.f32(float %176, float 0xBFD99999A0000000, float %80)
  %178 = load float, ptr %6, align 4, !tbaa !70
  %179 = call float @llvm.fmuladd.f32(float %176, float 0x3FD99999A0000000, float %80)
  call void @glRectf(float noundef %174, float noundef %177, float noundef %178, float noundef %179) #5
  br label %244

180:                                              ; preds = %118
  %181 = icmp eq i32 %119, 0
  %182 = load i8, ptr %8, align 1
  %183 = load i8, ptr %7, align 1
  %184 = select i1 %181, i8 %182, i8 %183
  %185 = load i8, ptr %54, align 1
  %186 = load i8, ptr %52, align 1
  %187 = select i1 %181, i8 %185, i8 %186
  %188 = load i8, ptr %55, align 1
  %189 = load i8, ptr %53, align 1
  %190 = select i1 %181, i8 %188, i8 %189
  call void @glColor4ub(i8 noundef zeroext %184, i8 noundef zeroext %187, i8 noundef zeroext %190, i8 noundef zeroext 34) #5
  %191 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %192 = sitofp i16 %191 to float
  %193 = call float @llvm.fmuladd.f32(float %192, float 0xBFD99999A0000000, float %80)
  %194 = load float, ptr %40, align 8, !tbaa !68
  %195 = call float @llvm.fmuladd.f32(float %192, float 0x3FD99999A0000000, float %80)
  call void @glRectf(float noundef 0.000000e+00, float noundef %193, float noundef %194, float noundef %195) #5
  %196 = load i8, ptr %8, align 1
  %197 = load i8, ptr %7, align 1
  %198 = select i1 %181, i8 %196, i8 %197
  %199 = load i8, ptr %58, align 1
  %200 = load i8, ptr %56, align 1
  %201 = select i1 %181, i8 %199, i8 %200
  %202 = load i8, ptr %59, align 1
  %203 = load i8, ptr %57, align 1
  %204 = select i1 %181, i8 %202, i8 %203
  call void @glColor4ub(i8 noundef zeroext %198, i8 noundef zeroext %201, i8 noundef zeroext %204, i8 noundef zeroext 68) #5
  %205 = load float, ptr %40, align 8, !tbaa !68
  %206 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %207 = sitofp i16 %206 to float
  %208 = call float @llvm.fmuladd.f32(float %207, float 0xBFD99999A0000000, float %80)
  %209 = load float, ptr %60, align 4, !tbaa !69
  %210 = fadd float %209, 1.000000e+02
  %211 = call float @llvm.fmuladd.f32(float %207, float 0x3FD99999A0000000, float %80)
  call void @glRectf(float noundef %205, float noundef %208, float noundef %210, float noundef %211) #5
  br label %244

212:                                              ; preds = %118
  %213 = icmp eq i32 %119, 0
  %214 = load i8, ptr %8, align 1
  %215 = load i8, ptr %7, align 1
  %216 = select i1 %213, i8 %214, i8 %215
  %217 = load i8, ptr %45, align 1
  %218 = load i8, ptr %43, align 1
  %219 = select i1 %213, i8 %217, i8 %218
  %220 = load i8, ptr %46, align 1
  %221 = load i8, ptr %44, align 1
  %222 = select i1 %213, i8 %220, i8 %221
  call void @glColor4ub(i8 noundef zeroext %216, i8 noundef zeroext %219, i8 noundef zeroext %222, i8 noundef zeroext 34) #5
  %223 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %224 = sitofp i16 %223 to float
  %225 = call float @llvm.fmuladd.f32(float %224, float 0xBFD99999A0000000, float %80)
  %226 = load float, ptr %40, align 8, !tbaa !68
  %227 = call float @llvm.fmuladd.f32(float %224, float 0x3FD99999A0000000, float %80)
  call void @glRectf(float noundef 0.000000e+00, float noundef %225, float noundef %226, float noundef %227) #5
  %228 = load i8, ptr %8, align 1
  %229 = load i8, ptr %7, align 1
  %230 = select i1 %213, i8 %228, i8 %229
  %231 = load i8, ptr %49, align 1
  %232 = load i8, ptr %47, align 1
  %233 = select i1 %213, i8 %231, i8 %232
  %234 = load i8, ptr %50, align 1
  %235 = load i8, ptr %48, align 1
  %236 = select i1 %213, i8 %234, i8 %235
  call void @glColor4ub(i8 noundef zeroext %230, i8 noundef zeroext %233, i8 noundef zeroext %236, i8 noundef zeroext 68) #5
  %237 = load float, ptr %40, align 8, !tbaa !68
  %238 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %239 = sitofp i16 %238 to float
  %240 = call float @llvm.fmuladd.f32(float %239, float 0xBFD99999A0000000, float %80)
  %241 = load float, ptr %51, align 4, !tbaa !69
  %242 = fadd float %241, 1.000000e+02
  %243 = call float @llvm.fmuladd.f32(float %239, float 0x3FD99999A0000000, float %80)
  call void @glRectf(float noundef %237, float noundef %240, float noundef %242, float noundef %243) #5
  br label %244

244:                                              ; preds = %105, %180, %212, %163, %173, %118, %101, %97
  %245 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %246 = sitofp i16 %245 to float
  %247 = fmul float %246, 0x3FB99999A0000000
  %248 = call float @llvm.fmuladd.f32(float %246, float 0x3FE99999A0000000, float %247)
  %249 = fsub float %80, %248
  %250 = load ptr, ptr %79, align 8, !tbaa !55
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %78, !llvm.loop !71

252:                                              ; preds = %244, %20
  call void @glDisable(i32 noundef 3042) #5
  %253 = load ptr, ptr %4, align 8, !tbaa !55
  %254 = icmp eq ptr %253, null
  br i1 %254, label %327, label %255

255:                                              ; preds = %252
  %256 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %257 = sitofp i16 %256 to float
  %258 = fmul float %257, 0xBFE99999A0000000
  %259 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %260 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %261

261:                                              ; preds = %255, %319
  %262 = phi ptr [ %253, %255 ], [ %325, %319 ]
  %263 = phi float [ %258, %255 ], [ %324, %319 ]
  %264 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %265 = sitofp i16 %264 to float
  %266 = call float @llvm.fmuladd.f32(float %265, float 0xBFD99999A0000000, float %263)
  %267 = call float @llvm.fmuladd.f32(float %265, float 0x3FD99999A0000000, float %263)
  %268 = load float, ptr %259, align 8, !tbaa !56
  %269 = load float, ptr %260, align 4, !tbaa !57
  %270 = fcmp olt float %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %261
  %272 = fcmp olt float %268, %266
  %273 = fcmp olt float %266, %269
  %274 = and i1 %272, %273
  br i1 %274, label %288, label %279

275:                                              ; preds = %261
  %276 = fcmp olt float %269, %266
  %277 = fcmp olt float %266, %268
  %278 = and i1 %276, %277
  br i1 %278, label %288, label %279

279:                                              ; preds = %275, %271
  br i1 %270, label %280, label %284

280:                                              ; preds = %279
  %281 = fcmp olt float %268, %267
  %282 = fcmp olt float %267, %269
  %283 = and i1 %281, %282
  br i1 %283, label %288, label %319

284:                                              ; preds = %279
  %285 = fcmp olt float %269, %267
  %286 = fcmp olt float %267, %268
  %287 = and i1 %285, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %284, %280, %275, %271
  %289 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 7
  %290 = load i16, ptr %289, align 2, !tbaa !62
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %319, label %292

292:                                              ; preds = %288
  %293 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %262) #5
  %294 = load i16, ptr %289, align 2, !tbaa !62
  switch i16 %294, label %319 [
    i16 5, label %295
    i16 6, label %298
    i16 7, label %301
    i16 8, label %304
    i16 9, label %307
    i16 1, label %310
    i16 2, label %313
    i16 3, label %316
  ]

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !72
  call void @draw_summary_channel(ptr noundef nonnull %13, ptr noundef %297, float noundef %263) #5
  br label %319

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 8
  %300 = load ptr, ptr %299, align 8, !tbaa !73
  call void @draw_scene_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %300, float noundef %263) #5
  br label %319

301:                                              ; preds = %292
  %302 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 8
  %303 = load ptr, ptr %302, align 8, !tbaa !73
  call void @draw_object_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %303, float noundef %263) #5
  br label %319

304:                                              ; preds = %292
  %305 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 8
  %306 = load ptr, ptr %305, align 8, !tbaa !73
  call void @draw_action_channel(ptr noundef nonnull %13, ptr noundef %293, ptr noundef %306, float noundef %263) #5
  br label %319

307:                                              ; preds = %292
  %308 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !72
  call void @draw_agroup_channel(ptr noundef nonnull %13, ptr noundef %293, ptr noundef %309, float noundef %263) #5
  br label %319

310:                                              ; preds = %292
  %311 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 8
  %312 = load ptr, ptr %311, align 8, !tbaa !73
  call void @draw_fcurve_channel(ptr noundef nonnull %13, ptr noundef %293, ptr noundef %312, float noundef %263) #5
  br label %319

313:                                              ; preds = %292
  %314 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !72
  call void @draw_gpl_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %315, float noundef %263) #5
  br label %319

316:                                              ; preds = %292
  %317 = getelementptr inbounds %struct.bAnimListElem, ptr %262, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !72
  call void @draw_masklay_channel(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %318, float noundef %263) #5
  br label %319

319:                                              ; preds = %288, %292, %316, %313, %310, %307, %304, %301, %298, %295, %284, %280
  %320 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !41
  %321 = sitofp i16 %320 to float
  %322 = fmul float %321, 0x3FB99999A0000000
  %323 = call float @llvm.fmuladd.f32(float %321, float 0x3FE99999A0000000, float %322)
  %324 = fsub float %263, %323
  %325 = load ptr, ptr %262, align 8, !tbaa !55
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %261, !llvm.loop !74

327:                                              ; preds = %319, %252
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #5
  %328 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 11
  %329 = load i16, ptr %328, align 2, !tbaa !75
  %330 = and i16 %329, 1
  %331 = icmp eq i16 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %327
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  call void @glBegin(i32 noundef 1) #5
  %333 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 12
  %334 = load float, ptr %333, align 4, !tbaa !78
  %335 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %336 = load float, ptr %335, align 8, !tbaa !56
  %337 = fadd float %336, -1.000000e+02
  call void @glVertex2f(float noundef %334, float noundef %337) #5
  %338 = load float, ptr %333, align 4, !tbaa !78
  %339 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %340 = load float, ptr %339, align 4, !tbaa !57
  call void @glVertex2f(float noundef %338, float noundef %340) #5
  call void @glEnd() #5
  br label %341

341:                                              ; preds = %332, %327
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret void
}

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #3

declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #3

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @draw_summary_channel(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @draw_scene_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @draw_object_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @draw_action_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @draw_agroup_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @draw_fcurve_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @draw_gpl_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @draw_masklay_channel(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!35 = !{!"bAnimContext", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!42, !39, i64 8948}
!42 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !43, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !39, i64 8496, !39, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !43, i64 8912, !43, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !45, i64 8956, !45, i64 8960, !43, i64 8964, !39, i64 8968, !39, i64 8970, !45, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !46, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !43, i64 10896, !43, i64 10900, !45, i64 10904, !45, i64 10908, !43, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !47, i64 10928}
!43 = !{!"int", !37, i64 0}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!"float", !37, i64 0}
!46 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!47 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !39, i64 24, !37, i64 26}
!48 = !{!49, !43, i64 12}
!49 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!50 = !{!49, !43, i64 8}
!51 = !{!52, !45, i64 8}
!52 = !{!"View2D", !53, i64 0, !53, i64 16, !49, i64 32, !49, i64 48, !49, i64 64, !37, i64 80, !37, i64 88, !45, i64 96, !45, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!53 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!54 = !{!35, !36, i64 16}
!55 = !{!36, !36, i64 0}
!56 = !{!52, !45, i64 24}
!57 = !{!52, !45, i64 28}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = !{!63, !39, i64 38}
!63 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!64 = !{!65, !36, i64 72}
!65 = !{!"bAnimChannelType", !36, i64 0, !43, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!66 = !{!63, !43, i64 24}
!67 = !{!37, !37, i64 0}
!68 = !{!52, !45, i64 16}
!69 = !{!52, !45, i64 20}
!70 = !{!45, !45, i64 0}
!71 = distinct !{!71, !59, !60}
!72 = !{!63, !36, i64 16}
!73 = !{!63, !36, i64 40}
!74 = distinct !{!74, !59, !60}
!75 = !{!76, !39, i64 338}
!76 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !44, i64 16, !43, i64 32, !45, i64 36, !37, i64 40, !52, i64 56, !36, i64 216, !77, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !45, i64 340}
!77 = !{!"bDopeSheet", !36, i64 0, !44, i64 8, !36, i64 24, !37, i64 32, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108}
!78 = !{!76, !45, i64 340}
