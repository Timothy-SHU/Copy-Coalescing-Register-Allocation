; ModuleID = 'blender/source/blender/editors/space_graph/graph_draw.c'
source_filename = "blender/source/blender/editors/space_graph/graph_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.FPoint = type { [2 x float], i32, i32 }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FMod_Envelope = type { ptr, i32, float, float, float }
%struct.FCM_EnvelopeData = type { float, float, float, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@__func__.graph_draw_channel_names = private unnamed_addr constant [25 x i8] c"graph_draw_channel_names\00", align 1
@draw_fcurve_handle_control.displist = internal unnamed_addr global i32 0, align 4
@draw_fcurve_sample_control.displist = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @graph_draw_ghost_curves(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @setlinestyle(i32 noundef 10) #7
  tail call void @glLineWidth(float noundef 3.000000e+00) #7
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @glEnable(i32 noundef 2848) #7
  br label %9

9:                                                ; preds = %8, %3
  tail call void @glEnable(i32 noundef 3042) #7
  %10 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %23, %15 ]
  %17 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 14
  %18 = load float, ptr %17, align 4, !tbaa !18
  %19 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 14, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !18
  %21 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 14, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !18
  tail call void @glColor4f(float noundef %18, float noundef %20, float noundef %22, float noundef 5.000000e-01) #7
  tail call fastcc void @draw_fcurve_curve_samples(ptr noundef %0, ptr noundef null, ptr noundef nonnull %16, ptr noundef nonnull %14) #8
  %23 = load ptr, ptr %16, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %15, !llvm.loop !19

25:                                               ; preds = %15, %9
  tail call void @setlinestyle(i32 noundef 0) #7
  tail call void @glLineWidth(float noundef 1.000000e+00) #7
  %26 = load i32, ptr %4, align 4, !tbaa !5
  %27 = and i32 %26, 4096
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @glDisable(i32 noundef 2848) #7
  br label %30

30:                                               ; preds = %29, %25
  tail call void @glDisable(i32 noundef 3042) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_curve_samples(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.FPoint, ptr %7, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %9 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = tail call signext i16 @ANIM_get_normalization_flags(ptr noundef %0) #7
  tail call void @glPushMatrix() #7
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = tail call float @ANIM_unit_mapping_get_factor(ptr noundef %13, ptr noundef %1, ptr noundef %2, i16 noundef signext %11) #7
  tail call void @glScalef(float noundef 1.000000e+00, float noundef %14, float noundef 1.000000e+00) #7
  tail call void @glBegin(i32 noundef 3) #7
  %15 = load float, ptr %7, align 4, !tbaa !18
  %16 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1
  %17 = load float, ptr %16, align 8, !tbaa !26
  %18 = fcmp ogt float %15, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %4
  store float %17, ptr %5, align 4, !tbaa !18
  %20 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 10
  %21 = load i16, ptr %20, align 2, !tbaa !27
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !28
  %26 = and i16 %25, 2048
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, ptr %9, align 8, !tbaa !23
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %23, %19
  %32 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !18
  br label %49

34:                                               ; preds = %28
  %35 = load float, ptr %8, align 4, !tbaa !18
  %36 = fsub float %15, %35
  %37 = fsub float %15, %17
  %38 = fdiv float %36, %37
  %39 = fcmp une float %38, 0.000000e+00
  %40 = fdiv float 1.000000e+00, %38
  %41 = select i1 %39, float %40, float %38
  %42 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !18
  %44 = getelementptr inbounds %struct.FPoint, ptr %7, i64 1, i32 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !18
  %46 = fsub float %43, %45
  %47 = fneg float %41
  %48 = tail call float @llvm.fmuladd.f32(float %47, float %46, float %43)
  br label %49

49:                                               ; preds = %34, %31
  %50 = phi float [ %48, %34 ], [ %33, %31 ]
  %51 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %50, ptr %51, align 4, !tbaa !18
  call void @glVertex2fv(ptr noundef nonnull %5) #7
  br label %52

52:                                               ; preds = %49, %4
  %53 = load i32, ptr %9, align 8, !tbaa !23
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @glVertex2fv(ptr noundef nonnull %7) #7
  br label %56

56:                                               ; preds = %55, %52
  %57 = icmp eq i32 %10, 1
  br i1 %57, label %69, label %58

58:                                               ; preds = %56
  %59 = add i32 %10, -2
  call void @glVertex2fv(ptr noundef nonnull %7) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58, %61
  %62 = phi ptr [ %64, %61 ], [ %8, %58 ]
  %63 = phi i32 [ %65, %61 ], [ %59, %58 ]
  %64 = getelementptr inbounds %struct.FPoint, ptr %62, i64 1
  %65 = add nsw i32 %63, -1
  call void @glVertex2fv(ptr noundef nonnull %62) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %61, !llvm.loop !29

67:                                               ; preds = %61, %58
  %68 = phi ptr [ %8, %58 ], [ %64, %61 ]
  call void @glVertex2fv(ptr noundef nonnull %68) #7
  br label %69

69:                                               ; preds = %67, %56
  %70 = phi ptr [ %7, %56 ], [ %68, %67 ]
  %71 = load float, ptr %70, align 4, !tbaa !18
  %72 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1, i32 1
  %73 = load float, ptr %72, align 4, !tbaa !30
  %74 = fcmp olt float %71, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  store float %73, ptr %5, align 4, !tbaa !18
  %76 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 10
  %77 = load i16, ptr %76, align 2, !tbaa !27
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %81 = load i16, ptr %80, align 8, !tbaa !28
  %82 = and i16 %81, 2048
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, ptr %9, align 8, !tbaa !23
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84, %79, %75
  %88 = getelementptr inbounds [2 x float], ptr %70, i64 0, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !18
  br label %107

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.FPoint, ptr %70, i64 -1
  %92 = load float, ptr %70, align 4, !tbaa !18
  %93 = load float, ptr %91, align 4, !tbaa !18
  %94 = fsub float %92, %93
  %95 = fsub float %92, %73
  %96 = fdiv float %94, %95
  %97 = fcmp une float %96, 0.000000e+00
  %98 = fdiv float 1.000000e+00, %96
  %99 = select i1 %97, float %98, float %96
  %100 = getelementptr inbounds [2 x float], ptr %70, i64 0, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !18
  %102 = getelementptr %struct.FPoint, ptr %70, i64 -1, i32 0, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !18
  %104 = fsub float %101, %103
  %105 = fneg float %99
  %106 = call float @llvm.fmuladd.f32(float %105, float %104, float %101)
  br label %107

107:                                              ; preds = %90, %87
  %108 = phi float [ %106, %90 ], [ %89, %87 ]
  %109 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %108, ptr %109, align 4, !tbaa !18
  call void @glVertex2fv(ptr noundef nonnull %5) #7
  br label %110

110:                                              ; preds = %107, %69
  call void @glEnd() #7
  call void @glPopMatrix() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @graph_draw_curves(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = icmp eq i16 %4, 0
  %8 = select i1 %7, i32 133, i32 69
  %9 = load ptr, ptr %0, align 8, !tbaa !31
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !32
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %8, ptr noundef %9, i32 noundef %12) #7
  %14 = load ptr, ptr %6, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %174, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %18 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  br label %20

20:                                               ; preds = %16, %171
  %21 = phi ptr [ %14, %16 ], [ %172, %171 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 4
  %25 = call ptr @find_active_fmodifier(ptr noundef nonnull %24) #7
  %26 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %21) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr %22, align 8, !tbaa !33
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %26, ptr noundef %29, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %30

30:                                               ; preds = %28, %20
  %31 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef %23) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void @setlinestyle(i32 noundef 2) #7
  br label %34

34:                                               ; preds = %33, %30
  %35 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bActionGroup, ptr %36, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !36
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38, %34
  %44 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 9
  %45 = load i16, ptr %44, align 8, !tbaa !28
  %46 = and i16 %45, 16
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %38
  call void @UI_ThemeColorShade(i32 noundef 10, i32 noundef 50) #7
  br label %57

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 14
  %51 = load float, ptr %50, align 4, !tbaa !18
  %52 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 14, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !18
  %54 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 14, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !18
  %56 = call fastcc float @fcurve_display_alpha(ptr noundef nonnull %23) #8
  call void @glColor4f(float noundef %51, float noundef %53, float noundef %55, float noundef %56) #7
  br label %57

57:                                               ; preds = %49, %48
  %58 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 9
  %59 = load i16, ptr %58, align 8, !tbaa !28
  %60 = and i16 %59, 4
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  call void @glLineWidth(float noundef 2.000000e+00) #7
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, ptr %17, align 4, !tbaa !5
  %65 = and i32 %64, 4096
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @glEnable(i32 noundef 2848) #7
  br label %68

68:                                               ; preds = %67, %63
  call void @glEnable(i32 noundef 3042) #7
  %69 = load ptr, ptr %24, align 8, !tbaa !39
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i16, ptr %58, align 8, !tbaa !28
  %73 = and i16 %72, 2048
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71, %68
  %76 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !40
  call fastcc void @draw_fcurve_curve(ptr noundef nonnull %0, ptr noundef %77, ptr noundef nonnull %23, ptr noundef nonnull %18, ptr noundef %3) #8
  br label %100

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !21
  %85 = icmp eq ptr %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !23
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %97

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !23
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8, !tbaa !40
  call fastcc void @draw_fcurve_curve(ptr noundef nonnull %0, ptr noundef %96, ptr noundef nonnull %23, ptr noundef nonnull %18, ptr noundef %3) #8
  br label %100

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !40
  call fastcc void @draw_fcurve_curve_samples(ptr noundef nonnull %0, ptr noundef %99, ptr noundef nonnull %23, ptr noundef nonnull %18) #8
  br label %100

100:                                              ; preds = %90, %82, %86, %97, %94, %75
  call void @setlinestyle(i32 noundef 0) #7
  call void @glLineWidth(float noundef 1.000000e+00) #7
  %101 = load i32, ptr %17, align 4, !tbaa !5
  %102 = and i32 %101, 4096
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  call void @glDisable(i32 noundef 2848) #7
  br label %105

105:                                              ; preds = %104, %100
  call void @glDisable(i32 noundef 3042) #7
  %106 = load i32, ptr %17, align 4, !tbaa !5
  %107 = and i32 %106, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i16, ptr %58, align 8, !tbaa !28
  %111 = and i16 %110, 2
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %158, label %113

113:                                              ; preds = %109, %105
  %114 = call zeroext i8 @fcurve_are_keyframes_usable(ptr noundef nonnull %23) #7
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i16, ptr %58, align 8, !tbaa !28
  %118 = and i16 %117, 4
  %119 = icmp ne i16 %118, 0
  %120 = icmp ne ptr %25, null
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %158

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.FModifier, ptr %25, i64 0, i32 4
  %124 = load i16, ptr %123, align 8, !tbaa !42
  %125 = icmp eq i16 %124, 3
  br i1 %125, label %126, label %158

126:                                              ; preds = %122
  call fastcc void @draw_fcurve_modifier_controls_envelope(ptr noundef nonnull %25, ptr noundef nonnull %18) #8
  br label %158

127:                                              ; preds = %113
  %128 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !41
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !21
  %134 = icmp eq ptr %133, null
  br i1 %134, label %158, label %135

135:                                              ; preds = %131, %127
  %136 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 7
  %137 = load i32, ptr %136, align 8, !tbaa !23
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %135
  %140 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %0) #7
  %141 = load ptr, ptr %19, align 8, !tbaa !24
  %142 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 9
  %143 = load ptr, ptr %142, align 8, !tbaa !40
  %144 = call float @ANIM_unit_mapping_get_factor(ptr noundef %141, ptr noundef %143, ptr noundef nonnull %23, i16 noundef signext %140) #7
  call void @glPushMatrix() #7
  call void @glScalef(float noundef 1.000000e+00, float noundef %144, float noundef 1.000000e+00) #7
  %145 = load ptr, ptr %128, align 8, !tbaa !41
  %146 = icmp eq ptr %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %139
  %148 = call fastcc zeroext i8 @draw_fcurve_handles_check(ptr noundef nonnull %1, ptr noundef nonnull %23) #8, !range !44
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call void @glEnable(i32 noundef 3042) #7
  call fastcc void @draw_fcurve_handles(ptr noundef nonnull %1, ptr noundef nonnull %23) #8
  call void @glDisable(i32 noundef 3042) #7
  br label %151

151:                                              ; preds = %150, %147
  %152 = zext nneg i8 %148 to i16
  %153 = load i32, ptr %17, align 4, !tbaa !5
  %154 = trunc i32 %153 to i16
  %155 = and i16 %154, 512
  call fastcc void @draw_fcurve_vertices(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %23, i16 noundef signext %152, i16 noundef signext %155, float noundef %144) #8
  br label %157

156:                                              ; preds = %139
  call fastcc void @draw_fcurve_samples(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %23) #8
  br label %157

157:                                              ; preds = %156, %151
  call void @glPopMatrix() #7
  br label %158

158:                                              ; preds = %126, %122, %116, %157, %135, %131, %109
  %159 = load i16, ptr %10, align 8, !tbaa !32
  %160 = icmp eq i16 %159, 6
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i16, ptr %58, align 8, !tbaa !28
  %163 = and i16 %162, 4
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 9
  %167 = load ptr, ptr %166, align 8, !tbaa !40
  call fastcc void @graph_draw_driver_debug(ptr noundef nonnull %0, ptr noundef %167, ptr noundef nonnull %23) #8
  br label %168

168:                                              ; preds = %165, %161, %158
  br i1 %27, label %171, label %169

169:                                              ; preds = %168
  %170 = load ptr, ptr %22, align 8, !tbaa !33
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %26, ptr noundef %170, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %171

171:                                              ; preds = %169, %168
  %172 = load ptr, ptr %21, align 8, !tbaa !17
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %20, !llvm.loop !45

174:                                              ; preds = %171, %5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_active_fmodifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_fcurve_is_protected(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @fcurve_display_alpha(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 8, !tbaa !28
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %7 = select i1 %5, float %6, float 1.000000e+00
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_curve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %8 = tail call signext i16 @ANIM_get_normalization_flags(ptr noundef %0) #7
  call void @UI_view2d_grid_size(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %9 = load float, ptr %6, align 4, !tbaa !18
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %11, label %44

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  store ptr null, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = call float @ANIM_unit_mapping_get_factor(ptr noundef %15, ptr noundef %1, ptr noundef %2, i16 noundef signext %8) #7
  %17 = load float, ptr %6, align 4, !tbaa !18
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !47
  %19 = sitofp i16 %18 to float
  %20 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !51
  %21 = fmul float %20, %19
  %22 = fdiv float %17, %21
  %23 = fcmp olt float %22, 0x3EE4F8B580000000
  %24 = select i1 %23, float 0x3EE4F8B580000000, float %22
  %25 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1
  %26 = load float, ptr %25, align 8, !tbaa !26
  %27 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !30
  %29 = fadd float %28, %24
  call void @glBegin(i32 noundef 3) #7
  %30 = fsub float %29, %26
  %31 = fdiv float %30, %24
  %32 = fadd float %31, 5.000000e-01
  %33 = fptosi float %32 to i32
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %11, %35
  %36 = phi i32 [ %41, %35 ], [ 0, %11 ]
  %37 = sitofp i32 %36 to float
  %38 = call float @llvm.fmuladd.f32(float %37, float %24, float %26)
  %39 = call float @evaluate_fcurve(ptr noundef %2, float noundef %38) #7
  %40 = fmul float %16, %39
  call void @glVertex2f(float noundef %38, float noundef %40) #7
  %41 = add nuw nsw i32 %36, 1
  %42 = icmp eq i32 %41, %33
  br i1 %42, label %43, label %35, !llvm.loop !52

43:                                               ; preds = %35, %11
  call void @glEnd() #7
  store ptr %13, ptr %12, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %5, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @fcurve_are_keyframes_usable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_modifier_controls_envelope(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %6 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #8
  %7 = fmul float %6, 0x3FA99999A0000000
  tail call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #7
  tail call void @setlinestyle(i32 noundef 5) #7
  tail call void @glBegin(i32 noundef 1) #7
  %8 = load float, ptr %5, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.FMod_Envelope, ptr %4, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = getelementptr inbounds %struct.FMod_Envelope, ptr %4, i64 0, i32 3
  %12 = load float, ptr %11, align 8, !tbaa !56
  %13 = fadd float %10, %12
  tail call void @glVertex2f(float noundef %8, float noundef %13) #7
  %14 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !30
  %16 = load float, ptr %9, align 4, !tbaa !54
  %17 = load float, ptr %11, align 8, !tbaa !56
  %18 = fadd float %16, %17
  tail call void @glVertex2f(float noundef %15, float noundef %18) #7
  %19 = load float, ptr %5, align 8, !tbaa !26
  %20 = load float, ptr %9, align 4, !tbaa !54
  %21 = getelementptr inbounds %struct.FMod_Envelope, ptr %4, i64 0, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !57
  %23 = fadd float %20, %22
  tail call void @glVertex2f(float noundef %19, float noundef %23) #7
  %24 = load float, ptr %14, align 4, !tbaa !30
  %25 = load float, ptr %9, align 4, !tbaa !54
  %26 = load float, ptr %21, align 4, !tbaa !57
  %27 = fadd float %25, %26
  tail call void @glVertex2f(float noundef %24, float noundef %27) #7
  tail call void @glEnd() #7
  tail call void @setlinestyle(i32 noundef 0) #7
  tail call void @glPointSize(float noundef 2.000000e+00) #7
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  tail call void @bglBegin(i32 noundef 0) #7
  %28 = getelementptr inbounds %struct.FMod_Envelope, ptr %4, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %2
  %32 = load ptr, ptr %4, align 8, !tbaa !59
  br label %33

33:                                               ; preds = %31, %59
  %34 = phi i32 [ %60, %59 ], [ %29, %31 ]
  %35 = phi i32 [ %61, %59 ], [ 0, %31 ]
  %36 = phi ptr [ %62, %59 ], [ %32, %31 ]
  %37 = load float, ptr %5, align 8, !tbaa !26
  %38 = fsub float %37, %7
  %39 = load float, ptr %14, align 4, !tbaa !30
  %40 = fadd float %7, %39
  %41 = fcmp olt float %38, %40
  %42 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %36, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !60
  br i1 %41, label %44, label %48

44:                                               ; preds = %33
  %45 = fcmp olt float %38, %43
  %46 = fcmp olt float %43, %40
  %47 = and i1 %45, %46
  br i1 %47, label %52, label %59

48:                                               ; preds = %33
  %49 = fcmp olt float %40, %43
  %50 = fcmp olt float %43, %38
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %36, i64 0, i32 2
  %54 = load float, ptr %36, align 4, !tbaa !62
  tail call void @glVertex2f(float noundef %43, float noundef %54) #7
  %55 = load float, ptr %53, align 4, !tbaa !60
  %56 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %36, i64 0, i32 1
  %57 = load float, ptr %56, align 4, !tbaa !63
  tail call void @glVertex2f(float noundef %55, float noundef %57) #7
  %58 = load i32, ptr %28, align 8, !tbaa !58
  br label %59

59:                                               ; preds = %52, %44, %48
  %60 = phi i32 [ %58, %52 ], [ %34, %44 ], [ %34, %48 ]
  %61 = add nuw nsw i32 %35, 1
  %62 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %36, i64 1
  %63 = icmp slt i32 %61, %60
  br i1 %63, label %33, label %64, !llvm.loop !64

64:                                               ; preds = %59, %2
  tail call void @bglEnd() #7
  tail call void @glPointSize(float noundef 1.000000e+00) #7
  ret void
}

; Function Attrs: optsize
declare signext i16 @ANIM_get_normalization_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ANIM_unit_mapping_get_factor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @draw_fcurve_handles_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !28
  %10 = and i16 %9, 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bActionGroup, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !36
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !23
  %24 = icmp ugt i32 %23, 1
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %21, %2, %7, %16
  %27 = phi i8 [ 0, %16 ], [ 0, %7 ], [ 0, %2 ], [ %25, %21 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_handles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  tail call void @glBegin(i32 noundef 1) #7
  %4 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %5 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %8 = load i32, ptr %5, align 8, !tbaa !23
  br label %9

9:                                                ; preds = %2, %127
  %10 = phi i32 [ %8, %2 ], [ %128, %127 ]
  %11 = phi i1 [ true, %2 ], [ false, %127 ]
  %12 = phi i32 [ 0, %2 ], [ 1, %127 ]
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = select i1 %11, i32 54, i32 59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %127, label %16

16:                                               ; preds = %9, %122
  %17 = phi ptr [ %18, %122 ], [ null, %9 ]
  %18 = phi ptr [ %124, %122 ], [ %13, %9 ]
  %19 = phi i32 [ %123, %122 ], [ 0, %9 ]
  %20 = load i32, ptr %6, align 4, !tbaa !5
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 8
  %24 = load i8, ptr %23, align 4, !tbaa !65
  %25 = and i8 %24, 1
  br i1 %22, label %38, label %26

26:                                               ; preds = %16
  %27 = icmp eq i8 %25, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !67
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !68
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %122, label %38

38:                                               ; preds = %16, %28, %26, %33
  %39 = phi i8 [ 0, %28 ], [ 1, %26 ], [ 0, %33 ], [ %25, %16 ]
  %40 = zext nneg i8 %39 to i32
  %41 = icmp eq i32 %12, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = icmp eq ptr %17, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 4
  %46 = load i8, ptr %45, align 4, !tbaa !69
  %47 = icmp eq i8 %46, 2
  br i1 %47, label %52, label %61

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 4
  %50 = load i8, ptr %49, align 4, !tbaa !69
  %51 = icmp eq i8 %50, 2
  br i1 %51, label %52, label %61

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 5
  %54 = load i8, ptr %53, align 1, !tbaa !70
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %14, %55
  call void @UI_GetThemeColor3ubv(i32 noundef %56, ptr noundef nonnull %3) #7
  %57 = call fastcc float @fcurve_display_alpha(ptr noundef %1) #8
  %58 = fmul float %57, 2.550000e+02
  %59 = fptoui float %58 to i8
  store i8 %59, ptr %7, align 1, !tbaa !71
  call void @glColor4ubv(ptr noundef nonnull %3) #7
  call void @glVertex2fv(ptr noundef nonnull %18) #7
  %60 = getelementptr inbounds float, ptr %18, i64 3
  call void @glVertex2fv(ptr noundef nonnull %60) #7
  br label %61

61:                                               ; preds = %44, %52, %48
  %62 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 4
  %63 = load i8, ptr %62, align 4, !tbaa !69
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %122

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 6
  %67 = load i8, ptr %66, align 2, !tbaa !72
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %14, %68
  call void @UI_GetThemeColor3ubv(i32 noundef %69, ptr noundef nonnull %3) #7
  %70 = call fastcc float @fcurve_display_alpha(ptr noundef %1) #8
  %71 = fmul float %70, 2.550000e+02
  %72 = fptoui float %71 to i8
  store i8 %72, ptr %7, align 1, !tbaa !71
  call void @glColor4ubv(ptr noundef nonnull %3) #7
  %73 = getelementptr inbounds float, ptr %18, i64 3
  call void @glVertex2fv(ptr noundef nonnull %73) #7
  %74 = getelementptr inbounds float, ptr %18, i64 6
  br label %120

75:                                               ; preds = %38
  %76 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  %77 = load i8, ptr %76, align 1, !tbaa !67
  %78 = and i8 %77, 1
  %79 = zext nneg i8 %78 to i32
  %80 = icmp eq i32 %12, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = icmp eq ptr %17, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 4
  %85 = load i8, ptr %84, align 4, !tbaa !69
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %91, label %100

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 4
  %89 = load i8, ptr %88, align 4, !tbaa !69
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %100

91:                                               ; preds = %87, %83
  %92 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 5
  %93 = load i8, ptr %92, align 1, !tbaa !70
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %14, %94
  call void @UI_GetThemeColor3ubv(i32 noundef %95, ptr noundef nonnull %3) #7
  %96 = call fastcc float @fcurve_display_alpha(ptr noundef nonnull %1) #8
  %97 = fmul float %96, 2.550000e+02
  %98 = fptoui float %97 to i8
  store i8 %98, ptr %7, align 1, !tbaa !71
  call void @glColor4ubv(ptr noundef nonnull %3) #7
  call void @glVertex2fv(ptr noundef nonnull %18) #7
  %99 = getelementptr inbounds float, ptr %18, i64 3
  call void @glVertex2fv(ptr noundef nonnull %99) #7
  br label %100

100:                                              ; preds = %83, %91, %87, %75
  %101 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  %102 = load i8, ptr %101, align 1, !tbaa !68
  %103 = and i8 %102, 1
  %104 = zext nneg i8 %103 to i32
  %105 = icmp eq i32 %12, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 4
  %108 = load i8, ptr %107, align 4, !tbaa !69
  %109 = icmp eq i8 %108, 2
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  %112 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 6
  %113 = load i8, ptr %112, align 2, !tbaa !72
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %14, %114
  call void @UI_GetThemeColor3ubv(i32 noundef %115, ptr noundef nonnull %3) #7
  %116 = call fastcc float @fcurve_display_alpha(ptr noundef nonnull %1) #8
  %117 = fmul float %116, 2.550000e+02
  %118 = fptoui float %117 to i8
  store i8 %118, ptr %7, align 1, !tbaa !71
  call void @glColor4ubv(ptr noundef nonnull %3) #7
  call void @glVertex2fv(ptr noundef nonnull %111) #7
  %119 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2
  br label %120

120:                                              ; preds = %110, %65
  %121 = phi ptr [ %74, %65 ], [ %119, %110 ]
  call void @glVertex2fv(ptr noundef nonnull %121) #7
  br label %122

122:                                              ; preds = %120, %61, %106, %100, %33
  %123 = add nuw nsw i32 %19, 1
  %124 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 1
  %125 = load i32, ptr %5, align 8, !tbaa !23
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %16, label %127, !llvm.loop !73

127:                                              ; preds = %122, %9
  %128 = phi i32 [ 0, %9 ], [ %125, %122 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br i1 %11, label %9, label %129, !llvm.loop !74

129:                                              ; preds = %127
  call void @glEnd() #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_vertices(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3, i16 noundef signext %4, float noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %8 = tail call float @UI_GetThemeValuef(i32 noundef 36) #7
  tail call void @glPointSize(float noundef %8) #7
  %9 = icmp eq i16 %3, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @set_fcurve_vertex_color(ptr noundef %2, i16 noundef signext 0) #8
  tail call fastcc void @draw_fcurve_vertices_handles(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext 0, i16 noundef signext %4, float noundef %5) #8
  tail call fastcc void @set_fcurve_vertex_color(ptr noundef %2, i16 noundef signext 1) #8
  tail call fastcc void @draw_fcurve_vertices_handles(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext 1, i16 noundef signext %4, float noundef %5) #8
  br label %11

11:                                               ; preds = %10, %6
  tail call fastcc void @set_fcurve_vertex_color(ptr noundef %2, i16 noundef signext 0) #8
  %12 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %13 = load i16, ptr %12, align 8, !tbaa !28
  %14 = lshr i16 %13, 3
  %15 = and i16 %14, 1
  %16 = xor i16 %15, 1
  tail call fastcc void @draw_fcurve_vertices_keyframes(ptr noundef %2, ptr noundef nonnull %7, i16 noundef signext %16, i16 noundef signext 0) #8
  tail call fastcc void @set_fcurve_vertex_color(ptr noundef %2, i16 noundef signext 1) #8
  %17 = load i16, ptr %12, align 8, !tbaa !28
  %18 = lshr i16 %17, 3
  %19 = and i16 %18, 1
  %20 = xor i16 %19, 1
  tail call fastcc void @draw_fcurve_vertices_keyframes(ptr noundef %2, ptr noundef nonnull %7, i16 noundef signext %20, i16 noundef signext 1) #8
  tail call void @glPointSize(float noundef 1.000000e+00) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_samples(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %6 = tail call float @UI_GetThemeValuef(i32 noundef 36) #7
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_scale_get(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %8 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !28
  %10 = and i16 %9, 6
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, i32 3, i32 4
  call void @UI_ThemeColor(i32 noundef %12) #7
  %13 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !23
  %19 = add i32 %18, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.FPoint, ptr %14, i64 %20
  %22 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = and i32 %23, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  call void @glEnable(i32 noundef 2848) #7
  br label %27

27:                                               ; preds = %26, %16
  call void @glEnable(i32 noundef 3042) #7
  %28 = load float, ptr %14, align 4, !tbaa !18
  %29 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !18
  %31 = load float, ptr %4, align 4, !tbaa !18
  %32 = load float, ptr %5, align 4, !tbaa !18
  call fastcc void @draw_fcurve_sample_control(float noundef %28, float noundef %30, float noundef %31, float noundef %32, float noundef %6) #8
  %33 = load float, ptr %21, align 4, !tbaa !18
  %34 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !18
  %36 = load float, ptr %4, align 4, !tbaa !18
  %37 = load float, ptr %5, align 4, !tbaa !18
  call fastcc void @draw_fcurve_sample_control(float noundef %33, float noundef %35, float noundef %36, float noundef %37, float noundef %6) #8
  call void @glDisable(i32 noundef 3042) #7
  %38 = load i32, ptr %22, align 4, !tbaa !5
  %39 = and i32 %38, 4096
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  call void @glDisable(i32 noundef 2848) #7
  br label %42

42:                                               ; preds = %3, %27, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graph_draw_driver_debug(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call signext i16 @ANIM_get_normalization_flags(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = tail call float @ANIM_unit_mapping_get_factor(ptr noundef %11, ptr noundef %1, ptr noundef %2, i16 noundef signext %9) #7
  %13 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 4
  %18 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %17) #8, !range !44
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 14
  tail call void @glColor3fv(ptr noundef nonnull %21) #7
  tail call void @setlinestyle(i32 noundef 20) #7
  tail call void @glLineWidth(float noundef 2.000000e+00) #7
  tail call void @glBegin(i32 noundef 1) #7
  %22 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !26
  %24 = fmul float %12, %23
  tail call void @glVertex2f(float noundef %23, float noundef %24) #7
  %25 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !30
  %27 = fmul float %12, %26
  tail call void @glVertex2f(float noundef %26, float noundef %27) #7
  tail call void @glEnd() #7
  tail call void @setlinestyle(i32 noundef 0) #7
  tail call void @glLineWidth(float noundef 1.000000e+00) #7
  br label %28

28:                                               ; preds = %20, %16, %3
  %29 = getelementptr inbounds %struct.ChannelDriver, ptr %6, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !76
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ChannelDriver, ptr %6, i64 0, i32 3
  %35 = load float, ptr %34, align 8, !tbaa !78
  %36 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 8
  %37 = load float, ptr %36, align 4, !tbaa !79
  %38 = fmul float %12, %37
  %39 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1
  %40 = load float, ptr %39, align 8, !tbaa !26
  %41 = fcmp ult float %35, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  tail call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000) #7
  tail call void @setlinestyle(i32 noundef 5) #7
  tail call void @glBegin(i32 noundef 1) #7
  store float %35, ptr %4, align 4, !tbaa !18
  %43 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 2
  %44 = load float, ptr %43, align 8, !tbaa !80
  %45 = fcmp ult float %38, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = fadd float %44, -1.000000e+00
  %48 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %47, ptr %48, align 4, !tbaa !18
  call void @glVertex2fv(ptr noundef nonnull %4) #7
  store float %38, ptr %48, align 4, !tbaa !18
  call void @glVertex2fv(ptr noundef nonnull %4) #7
  br label %49

49:                                               ; preds = %46, %42
  %50 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %38, ptr %50, align 4, !tbaa !18
  %51 = load float, ptr %39, align 8, !tbaa !26
  %52 = fadd float %51, -1.000000e+00
  store float %52, ptr %4, align 4, !tbaa !18
  call void @glVertex2fv(ptr noundef nonnull %4) #7
  store float %35, ptr %4, align 4, !tbaa !18
  call void @glVertex2fv(ptr noundef nonnull %4) #7
  call void @glEnd() #7
  call void @setlinestyle(i32 noundef 0) #7
  call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000) #7
  call void @glPointSize(float noundef 7.000000e+00) #7
  call void @glBegin(i32 noundef 0) #7
  call void @glVertex2f(float noundef %35, float noundef %38) #7
  call void @glEnd() #7
  call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 0.000000e+00, float noundef 0.000000e+00) #7
  call void @glPointSize(float noundef 3.000000e+00) #7
  call void @glBegin(i32 noundef 0) #7
  call void @glVertex2f(float noundef %35, float noundef %38) #7
  call void @glEnd() #7
  call void @glPointSize(float noundef 1.000000e+00) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %53

53:                                               ; preds = %33, %49, %28
  ret void
}

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @graph_draw_channel_names(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %1, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !32
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %6, i32 noundef %9) #7
  %11 = uitofp i64 %10 to float
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FB99999A0000000
  %15 = call float @llvm.fmuladd.f32(float %13, float 0x3FE99999A0000000, float %14)
  %16 = fmul float %13, 0x3FE99999A0000000
  %17 = fmul float %16, 2.000000e+00
  %18 = call float @llvm.fmuladd.f32(float %11, float %15, float %17)
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !82
  %21 = sext i16 %20 to i32
  %22 = fptosi float %18 to i32
  call void @UI_view2d_totRect_set(ptr noundef nonnull %5, i32 noundef %21, i32 noundef %22) #7
  %23 = load ptr, ptr %4, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %25

25:                                               ; preds = %3
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 0xBFE99999A0000000
  %29 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %30 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %31

31:                                               ; preds = %25, %60
  %32 = phi i16 [ %26, %25 ], [ %62, %60 ]
  %33 = phi ptr [ %23, %25 ], [ %66, %60 ]
  %34 = phi float [ %28, %25 ], [ %65, %60 ]
  %35 = sitofp i16 %32 to float
  %36 = call float @llvm.fmuladd.f32(float %35, float 0xBFD99999A0000000, float %34)
  %37 = call float @llvm.fmuladd.f32(float %35, float 0x3FD99999A0000000, float %34)
  %38 = load float, ptr %29, align 8, !tbaa !80
  %39 = load float, ptr %30, align 4, !tbaa !84
  %40 = fcmp olt float %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = fcmp olt float %38, %36
  %43 = fcmp olt float %36, %39
  %44 = and i1 %42, %43
  br i1 %44, label %57, label %49

45:                                               ; preds = %31
  %46 = fcmp olt float %39, %36
  %47 = fcmp olt float %36, %38
  %48 = and i1 %46, %47
  br i1 %48, label %57, label %53

49:                                               ; preds = %41
  %50 = fcmp olt float %38, %37
  %51 = fcmp olt float %37, %39
  %52 = and i1 %50, %51
  br i1 %52, label %57, label %60

53:                                               ; preds = %45
  %54 = fcmp olt float %39, %37
  %55 = fcmp olt float %37, %38
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %49, %45, %41
  call void @ANIM_channel_draw(ptr noundef nonnull %1, ptr noundef nonnull %33, float noundef %36, float noundef %37) #7
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %59 = sitofp i16 %58 to float
  br label %60

60:                                               ; preds = %53, %49, %57
  %61 = phi float [ %35, %53 ], [ %35, %49 ], [ %59, %57 ]
  %62 = phi i16 [ %32, %53 ], [ %32, %49 ], [ %58, %57 ]
  %63 = fmul float %61, 0x3FB99999A0000000
  %64 = call float @llvm.fmuladd.f32(float %61, float 0x3FE99999A0000000, float %63)
  %65 = fsub float %34, %64
  %66 = load ptr, ptr %33, align 8, !tbaa !17
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %31, !llvm.loop !85

68:                                               ; preds = %60, %3
  %69 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @__func__.graph_draw_channel_names, i16 noundef signext 0) #7
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  call void @glEnable(i32 noundef 3042) #7
  %71 = load ptr, ptr %4, align 8, !tbaa !17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %118, label %73

73:                                               ; preds = %68
  %74 = sitofp i16 %70 to float
  %75 = fmul float %74, 0xBFE99999A0000000
  %76 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %77 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  br label %79

79:                                               ; preds = %73, %109
  %80 = phi i16 [ %78, %73 ], [ %111, %109 ]
  %81 = phi ptr [ %71, %73 ], [ %116, %109 ]
  %82 = phi float [ %75, %73 ], [ %114, %109 ]
  %83 = phi i64 [ 0, %73 ], [ %115, %109 ]
  %84 = sitofp i16 %80 to float
  %85 = call float @llvm.fmuladd.f32(float %84, float 0xBFD99999A0000000, float %82)
  %86 = call float @llvm.fmuladd.f32(float %84, float 0x3FD99999A0000000, float %82)
  %87 = load float, ptr %76, align 8, !tbaa !80
  %88 = load float, ptr %77, align 4, !tbaa !84
  %89 = fcmp olt float %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = fcmp olt float %87, %85
  %92 = fcmp olt float %85, %88
  %93 = and i1 %91, %92
  br i1 %93, label %106, label %98

94:                                               ; preds = %79
  %95 = fcmp olt float %88, %85
  %96 = fcmp olt float %85, %87
  %97 = and i1 %95, %96
  br i1 %97, label %106, label %102

98:                                               ; preds = %90
  %99 = fcmp olt float %87, %86
  %100 = fcmp olt float %86, %88
  %101 = and i1 %99, %100
  br i1 %101, label %106, label %109

102:                                              ; preds = %94
  %103 = fcmp olt float %88, %86
  %104 = fcmp olt float %86, %87
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %98, %94, %90
  call void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %81, ptr noundef %69, float noundef %85, float noundef %86, i64 noundef %83) #7
  %107 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !81
  %108 = sitofp i16 %107 to float
  br label %109

109:                                              ; preds = %102, %98, %106
  %110 = phi float [ %84, %102 ], [ %84, %98 ], [ %108, %106 ]
  %111 = phi i16 [ %80, %102 ], [ %80, %98 ], [ %107, %106 ]
  %112 = fmul float %110, 0x3FB99999A0000000
  %113 = call float @llvm.fmuladd.f32(float %110, float 0x3FE99999A0000000, float %112)
  %114 = fsub float %82, %113
  %115 = add i64 %83, 1
  %116 = load ptr, ptr %81, align 8, !tbaa !17
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %79, !llvm.loop !86

118:                                              ; preds = %109, %68
  call void @uiEndBlock(ptr noundef %0, ptr noundef %69) #7
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %69) #7
  call void @glDisable(i32 noundef 3042) #7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_channel_draw(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_channel_draw_widgets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !87
  %4 = load float, ptr %0, align 4, !tbaa !88
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_fcurve_vertex_color(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = tail call fastcc float @fcurve_display_alpha(ptr noundef %0) #8
  %4 = fadd float %3, -1.000000e+00
  %5 = fmul float %4, 2.550000e+02
  %6 = fptosi float %5 to i32
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !28
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  %11 = icmp eq i16 %1, 0
  %12 = select i1 %11, i32 33, i32 34
  %13 = select i1 %11, i32 3, i32 4
  %14 = select i1 %10, i32 %12, i32 %13
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef %14, i32 noundef 0, i32 noundef %6) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_vertices_handles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %11 = tail call float @UI_GetThemeValuef(i32 noundef 130) #7
  %12 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !51
  %13 = fmul float %11, %12
  call void @UI_view2d_scale_get(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %14 = load float, ptr %8, align 4, !tbaa !18
  %15 = fmul float %14, %5
  store float %15, ptr %8, align 4, !tbaa !18
  %16 = icmp eq i16 %3, 0
  %17 = select i1 %16, i32 128, i32 129
  call void @UI_ThemeColor(i32 noundef %17) #7
  %18 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  call void @glEnable(i32 noundef 2848) #7
  br label %23

23:                                               ; preds = %22, %6
  call void @glEnable(i32 noundef 3042) #7
  %24 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %92, label %27

27:                                               ; preds = %23
  %28 = icmp eq i16 %4, 0
  br label %29

29:                                               ; preds = %27, %87
  %30 = phi i32 [ 0, %27 ], [ %88, %87 ]
  %31 = phi ptr [ %10, %27 ], [ %89, %87 ]
  %32 = phi ptr [ null, %27 ], [ %31, %87 ]
  br i1 %28, label %48, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !65
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %40 = load i8, ptr %39, align 1, !tbaa !67
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %45 = load i8, ptr %44, align 1, !tbaa !68
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %87, label %48

48:                                               ; preds = %43, %38, %33, %29
  %49 = icmp eq ptr %32, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 4
  %52 = load i8, ptr %51, align 4, !tbaa !69
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %58, label %70

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 4
  %56 = load i8, ptr %55, align 4, !tbaa !69
  %57 = icmp eq i8 %56, 2
  br i1 %57, label %58, label %70

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !67
  %61 = and i8 %60, 1
  %62 = zext nneg i8 %61 to i16
  %63 = icmp eq i16 %62, %3
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load float, ptr %31, align 4, !tbaa !18
  %66 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !18
  %68 = load float, ptr %7, align 4, !tbaa !18
  %69 = load float, ptr %8, align 4, !tbaa !18
  call fastcc void @draw_fcurve_handle_control(float noundef %65, float noundef %67, float noundef %68, float noundef %69, float noundef %13) #8
  br label %70

70:                                               ; preds = %50, %58, %64, %54
  %71 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 4
  %72 = load i8, ptr %71, align 4, !tbaa !69
  %73 = icmp eq i8 %72, 2
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %76 = load i8, ptr %75, align 1, !tbaa !68
  %77 = and i8 %76, 1
  %78 = zext nneg i8 %77 to i16
  %79 = icmp eq i16 %78, %3
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !18
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !18
  %85 = load float, ptr %7, align 4, !tbaa !18
  %86 = load float, ptr %8, align 4, !tbaa !18
  call fastcc void @draw_fcurve_handle_control(float noundef %82, float noundef %84, float noundef %85, float noundef %86, float noundef %13) #8
  br label %87

87:                                               ; preds = %43, %74, %80, %70
  %88 = add nuw nsw i32 %30, 1
  %89 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 1
  %90 = load i32, ptr %24, align 8, !tbaa !23
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %29, label %92, !llvm.loop !89

92:                                               ; preds = %87, %23
  %93 = load i32, ptr %18, align 4, !tbaa !5
  %94 = and i32 %93, 4096
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  call void @glDisable(i32 noundef 2848) #7
  br label %97

97:                                               ; preds = %96, %92
  call void @glDisable(i32 noundef 3042) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_vertices_keyframes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #8
  %9 = fmul float %8, 0x3FA99999A0000000
  tail call void @bglBegin(i32 noundef 0) #7
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %15 = icmp eq i16 %2, 0
  br label %16

16:                                               ; preds = %13, %43
  %17 = phi i32 [ 0, %13 ], [ %44, %43 ]
  %18 = phi ptr [ %6, %13 ], [ %45, %43 ]
  %19 = load float, ptr %7, align 8, !tbaa !26
  %20 = fsub float %19, %9
  %21 = load float, ptr %14, align 4, !tbaa !30
  %22 = fadd float %9, %21
  %23 = fcmp olt float %20, %22
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !18
  br i1 %23, label %26, label %30

26:                                               ; preds = %16
  %27 = fcmp olt float %20, %25
  %28 = fcmp olt float %25, %22
  %29 = and i1 %27, %28
  br i1 %29, label %34, label %43

30:                                               ; preds = %16
  %31 = fcmp olt float %22, %25
  %32 = fcmp olt float %25, %20
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30, %26
  br i1 %15, label %41, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 8
  %37 = load i8, ptr %36, align 4, !tbaa !65
  %38 = and i8 %37, 1
  %39 = zext nneg i8 %38 to i16
  %40 = icmp eq i16 %39, %3
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %35
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  tail call void @bglVertex3fv(ptr noundef nonnull %42) #7
  br label %43

43:                                               ; preds = %41, %26, %30, %35
  %44 = add nuw nsw i32 %17, 1
  %45 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 1
  %46 = load i32, ptr %10, align 8, !tbaa !23
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %16, label %48, !llvm.loop !90

48:                                               ; preds = %43, %4
  tail call void @bglEnd() #7
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_handle_control(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr @draw_fcurve_handle_control.displist, align 4, !tbaa !91
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call i32 @glGenLists(i32 noundef 1) #7
  store i32 %9, ptr @draw_fcurve_handle_control.displist, align 4, !tbaa !91
  tail call void @glNewList(i32 noundef %9, i32 noundef 4864) #7
  %10 = tail call ptr @gluNewQuadric() #7
  tail call void @gluQuadricDrawStyle(ptr noundef %10, i32 noundef 100013) #7
  tail call void @gluDisk(ptr noundef %10, double noundef 0.000000e+00, double noundef 0x3FE6666666666666, i32 noundef 8, i32 noundef 1) #7
  tail call void @gluDeleteQuadric(ptr noundef %10) #7
  tail call void @glEndList() #7
  br label %11

11:                                               ; preds = %8, %5
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #7
  %12 = fdiv float 1.000000e+00, %2
  %13 = fmul float %12, %4
  %14 = fdiv float 1.000000e+00, %3
  %15 = fmul float %14, %4
  tail call void @glScalef(float noundef %13, float noundef %15, float noundef 1.000000e+00) #7
  %16 = load i32, ptr @draw_fcurve_handle_control.displist, align 4, !tbaa !91
  tail call void @glCallList(i32 noundef %16) #7
  %17 = fdiv float %2, %4
  %18 = fdiv float %3, %4
  tail call void @glScalef(float noundef %17, float noundef %18, float noundef 1.000000e+00) #7
  %19 = fneg float %0
  %20 = fneg float %1
  tail call void @glTranslatef(float noundef %19, float noundef %20, float noundef 0.000000e+00) #7
  ret void
}

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_fcurve_sample_control(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr @draw_fcurve_sample_control.displist, align 4, !tbaa !91
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @glGenLists(i32 noundef 1) #7
  store i32 %9, ptr @draw_fcurve_sample_control.displist, align 4, !tbaa !91
  tail call void @glNewList(i32 noundef %9, i32 noundef 4864) #7
  tail call void @glBegin(i32 noundef 1) #7
  tail call void @glVertex2f(float noundef 0xBFE6666660000000, float noundef 0xBFE6666660000000) #7
  tail call void @glVertex2f(float noundef 0x3FE6666660000000, float noundef 0x3FE6666660000000) #7
  tail call void @glVertex2f(float noundef 0xBFE6666660000000, float noundef 0x3FE6666660000000) #7
  tail call void @glVertex2f(float noundef 0x3FE6666660000000, float noundef 0xBFE6666660000000) #7
  tail call void @glEnd() #7
  tail call void @glEndList() #7
  br label %10

10:                                               ; preds = %8, %5
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #7
  %11 = fdiv float 1.000000e+00, %2
  %12 = fmul float %11, %4
  %13 = fdiv float 1.000000e+00, %3
  %14 = fmul float %13, %4
  tail call void @glScalef(float noundef %12, float noundef %14, float noundef 1.000000e+00) #7
  %15 = load i32, ptr @draw_fcurve_sample_control.displist, align 4, !tbaa !91
  tail call void @glCallList(i32 noundef %15) #7
  %16 = fdiv float %2, %4
  %17 = fdiv float %3, %4
  tail call void @glScalef(float noundef %16, float noundef %17, float noundef 1.000000e+00) #7
  %18 = fneg float %0
  %19 = fneg float %1
  tail call void @glTranslatef(float noundef %18, float noundef %19, float noundef 0.000000e+00) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 244}
!6 = !{!"SpaceIpo", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !8, i64 40, !13, i64 56, !7, i64 216, !10, i64 224, !16, i64 240, !16, i64 242, !11, i64 244, !12, i64 248, !11, i64 252}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"View2D", !14, i64 0, !14, i64 16, !15, i64 32, !15, i64 48, !15, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!14 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!15 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!16 = !{!"short", !8, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!12, !12, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !7, i64 56}
!22 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !11, i64 64, !12, i64 68, !16, i64 72, !16, i64 74, !11, i64 76, !7, i64 80, !11, i64 88, !8, i64 92, !12, i64 104, !12, i64 108}
!23 = !{!22, !11, i64 64}
!24 = !{!25, !7, i64 48}
!25 = !{!"bAnimContext", !7, i64 0, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!26 = !{!13, !12, i64 16}
!27 = !{!22, !16, i64 74}
!28 = !{!22, !16, i64 72}
!29 = distinct !{!29, !20}
!30 = !{!13, !12, i64 20}
!31 = !{!25, !7, i64 0}
!32 = !{!25, !16, i64 8}
!33 = !{!34, !7, i64 40}
!34 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !16, i64 36, !16, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!35 = !{!22, !7, i64 16}
!36 = !{!37, !11, i64 32}
!37 = !{!"bActionGroup", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !11, i64 36, !8, i64 40, !38, i64 104}
!38 = !{!"ThemeWireColor", !8, i64 0, !8, i64 4, !8, i64 8, !16, i64 12, !16, i64 14}
!39 = !{!22, !7, i64 32}
!40 = !{!34, !7, i64 48}
!41 = !{!22, !7, i64 48}
!42 = !{!43, !16, i64 88}
!43 = !{!"FModifier", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !16, i64 88, !16, i64 90, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108}
!44 = !{i8 0, i8 2}
!45 = distinct !{!45, !20}
!46 = !{!22, !7, i64 24}
!47 = !{!48, !16, i64 8472}
!48 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !16, i64 8472, !16, i64 8474, !16, i64 8476, !16, i64 8478, !16, i64 8480, !16, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !16, i64 8496, !16, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !16, i64 8528, !16, i64 8530, !16, i64 8532, !16, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !16, i64 8712, !16, i64 8714, !16, i64 8716, !16, i64 8718, !16, i64 8720, !16, i64 8722, !16, i64 8724, !16, i64 8726, !8, i64 8728, !16, i64 8896, !16, i64 8898, !16, i64 8900, !16, i64 8902, !16, i64 8904, !16, i64 8906, !16, i64 8908, !16, i64 8910, !11, i64 8912, !11, i64 8916, !16, i64 8920, !16, i64 8922, !16, i64 8924, !16, i64 8926, !16, i64 8928, !16, i64 8930, !16, i64 8932, !16, i64 8934, !16, i64 8936, !16, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !16, i64 8944, !16, i64 8946, !16, i64 8948, !16, i64 8950, !16, i64 8952, !16, i64 8954, !12, i64 8956, !12, i64 8960, !11, i64 8964, !16, i64 8968, !16, i64 8970, !12, i64 8972, !16, i64 8976, !16, i64 8978, !16, i64 8980, !16, i64 8982, !49, i64 8984, !8, i64 9760, !8, i64 9772, !16, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !12, i64 10904, !12, i64 10908, !11, i64 10912, !16, i64 10916, !16, i64 10918, !16, i64 10920, !16, i64 10922, !16, i64 10924, !16, i64 10926, !50, i64 10928}
!49 = !{!"ColorBand", !16, i64 0, !16, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!50 = !{!"WalkNavigation", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !16, i64 24, !8, i64 26}
!51 = !{!48, !12, i64 10908}
!52 = distinct !{!52, !20}
!53 = !{!43, !7, i64 16}
!54 = !{!55, !12, i64 12}
!55 = !{!"FMod_Envelope", !7, i64 0, !11, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!56 = !{!55, !12, i64 16}
!57 = !{!55, !12, i64 20}
!58 = !{!55, !11, i64 8}
!59 = !{!55, !7, i64 0}
!60 = !{!61, !12, i64 8}
!61 = !{!"FCM_EnvelopeData", !12, i64 0, !12, i64 4, !12, i64 8, !16, i64 12, !16, i64 14}
!62 = !{!61, !12, i64 0}
!63 = !{!61, !12, i64 4}
!64 = distinct !{!64, !20}
!65 = !{!66, !8, i64 52}
!66 = !{!"BezTriple", !8, i64 0, !12, i64 36, !12, i64 40, !12, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68}
!67 = !{!66, !8, i64 51}
!68 = !{!66, !8, i64 53}
!69 = !{!66, !8, i64 48}
!70 = !{!66, !8, i64 49}
!71 = !{!8, !8, i64 0}
!72 = !{!66, !8, i64 50}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = !{!25, !7, i64 32}
!76 = !{!77, !11, i64 292}
!77 = !{!"ChannelDriver", !10, i64 0, !8, i64 16, !7, i64 272, !12, i64 280, !12, i64 284, !11, i64 288, !11, i64 292}
!78 = !{!77, !12, i64 280}
!79 = !{!22, !12, i64 68}
!80 = !{!13, !12, i64 24}
!81 = !{!48, !16, i64 8948}
!82 = !{!83, !16, i64 208}
!83 = !{!"ARegion", !7, i64 0, !7, i64 8, !13, i64 16, !15, i64 176, !15, i64 192, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !12, i64 220, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !16, i64 236, !16, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!84 = !{!13, !12, i64 28}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = !{!14, !12, i64 4}
!88 = !{!14, !12, i64 0}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = !{!11, !11, i64 0}
!92 = !{!10, !7, i64 0}
