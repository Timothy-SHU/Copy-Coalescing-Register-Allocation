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

; Function Attrs: nounwind uwtable
define dso_local void @graph_draw_ghost_curves(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @setlinestyle(i32 noundef 10) #5
  tail call void @glLineWidth(float noundef 3.000000e+00) #5
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @glEnable(i32 noundef 2848) #5
  br label %9

9:                                                ; preds = %8, %3
  tail call void @glEnable(i32 noundef 3042) #5
  %10 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %23, %15 ]
  %17 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 14
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 14, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !47
  %21 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 14, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !47
  tail call void @glColor4f(float noundef %18, float noundef %20, float noundef %22, float noundef 5.000000e-01) #5
  tail call fastcc void @draw_fcurve_curve_samples(ptr noundef %0, ptr noundef null, ptr noundef nonnull %16, ptr noundef nonnull %14)
  %23 = load ptr, ptr %16, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %15, !llvm.loop !48

25:                                               ; preds = %15, %9
  tail call void @setlinestyle(i32 noundef 0) #5
  tail call void @glLineWidth(float noundef 1.000000e+00) #5
  %26 = load i32, ptr %4, align 4, !tbaa !34
  %27 = and i32 %26, 4096
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @glDisable(i32 noundef 2848) #5
  br label %30

30:                                               ; preds = %29, %25
  tail call void @glDisable(i32 noundef 3042) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_fcurve_curve_samples(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.FPoint, ptr %7, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %9 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = tail call signext i16 @ANIM_get_normalization_flags(ptr noundef %0) #5
  tail call void @glPushMatrix() #5
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = tail call float @ANIM_unit_mapping_get_factor(ptr noundef %13, ptr noundef %1, ptr noundef %2, i16 noundef signext %11) #5
  tail call void @glScalef(float noundef 1.000000e+00, float noundef %14, float noundef 1.000000e+00) #5
  tail call void @glBegin(i32 noundef 3) #5
  %15 = load float, ptr %7, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1
  %17 = load float, ptr %16, align 8, !tbaa !56
  %18 = fcmp ogt float %15, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %4
  store float %17, ptr %5, align 4, !tbaa !47
  %20 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 10
  %21 = load i16, ptr %20, align 2, !tbaa !57
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !58
  %26 = and i16 %25, 2048
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, ptr %9, align 8, !tbaa !53
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %23, %19
  %32 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !47
  br label %50

34:                                               ; preds = %28
  %35 = load float, ptr %7, align 4, !tbaa !47
  %36 = load float, ptr %8, align 4, !tbaa !47
  %37 = fsub float %35, %36
  %38 = fsub float %35, %17
  %39 = fdiv float %37, %38
  %40 = fcmp une float %39, 0.000000e+00
  %41 = fdiv float 1.000000e+00, %39
  %42 = select i1 %40, float %41, float %39
  %43 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !47
  %45 = getelementptr inbounds %struct.FPoint, ptr %7, i64 1, i32 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !47
  %47 = fsub float %44, %46
  %48 = fneg float %42
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %47, float %44)
  br label %50

50:                                               ; preds = %34, %31
  %51 = phi float [ %49, %34 ], [ %33, %31 ]
  %52 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %51, ptr %52, align 4, !tbaa !47
  call void @glVertex2fv(ptr noundef nonnull %5) #5
  br label %53

53:                                               ; preds = %50, %4
  %54 = load i32, ptr %9, align 8, !tbaa !53
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @glVertex2fv(ptr noundef nonnull %7) #5
  br label %57

57:                                               ; preds = %56, %53
  %58 = icmp eq i32 %10, 1
  br i1 %58, label %71, label %59

59:                                               ; preds = %57
  %60 = add i32 %10, -2
  br label %61

61:                                               ; preds = %59, %68
  %62 = phi i32 [ %69, %68 ], [ %60, %59 ]
  %63 = phi ptr [ %64, %68 ], [ %7, %59 ]
  %64 = phi ptr [ %65, %68 ], [ %8, %59 ]
  call void @glVertex2fv(ptr noundef %63) #5
  %65 = getelementptr inbounds %struct.FPoint, ptr %64, i64 1
  %66 = icmp eq i32 %62, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  call void @glVertex2fv(ptr noundef nonnull %64) #5
  br label %68

68:                                               ; preds = %67, %61
  %69 = add nsw i32 %62, -1
  %70 = icmp eq i32 %62, 0
  br i1 %70, label %71, label %61, !llvm.loop !59

71:                                               ; preds = %68, %57
  %72 = phi ptr [ %7, %57 ], [ %64, %68 ]
  %73 = load float, ptr %72, align 4, !tbaa !47
  %74 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !60
  %76 = fcmp olt float %73, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %71
  store float %75, ptr %5, align 4, !tbaa !47
  %78 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 10
  %79 = load i16, ptr %78, align 2, !tbaa !57
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %83 = load i16, ptr %82, align 8, !tbaa !58
  %84 = and i16 %83, 2048
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, ptr %9, align 8, !tbaa !53
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %81, %77
  %90 = getelementptr inbounds [2 x float], ptr %72, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !47
  br label %109

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.FPoint, ptr %72, i64 -1
  %94 = load float, ptr %72, align 4, !tbaa !47
  %95 = load float, ptr %93, align 4, !tbaa !47
  %96 = fsub float %94, %95
  %97 = fsub float %94, %75
  %98 = fdiv float %96, %97
  %99 = fcmp une float %98, 0.000000e+00
  %100 = fdiv float 1.000000e+00, %98
  %101 = select i1 %99, float %100, float %98
  %102 = getelementptr inbounds [2 x float], ptr %72, i64 0, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !47
  %104 = getelementptr %struct.FPoint, ptr %72, i64 -1, i32 0, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !47
  %106 = fsub float %103, %105
  %107 = fneg float %101
  %108 = call float @llvm.fmuladd.f32(float %107, float %106, float %103)
  br label %109

109:                                              ; preds = %92, %89
  %110 = phi float [ %108, %92 ], [ %91, %89 ]
  %111 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %110, ptr %111, align 4, !tbaa !47
  call void @glVertex2fv(ptr noundef nonnull %5) #5
  br label %112

112:                                              ; preds = %109, %71
  call void @glEnd() #5
  call void @glPopMatrix() #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void
}

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @graph_draw_curves(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [4 x i8], align 1
  %10 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = icmp eq i16 %4, 0
  %12 = select i1 %11, i32 133, i32 69
  %13 = load ptr, ptr %0, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !62
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %12, ptr noundef %13, i32 noundef %16) #5
  %18 = load ptr, ptr %10, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %552, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %22 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %23 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %25 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %26 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %27 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %28 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %29 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %30 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %34 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %36 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %37 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %38

38:                                               ; preds = %20, %549
  %39 = phi ptr [ %18, %20 ], [ %550, %549 ]
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 4
  %43 = call ptr @find_active_fmodifier(ptr noundef nonnull %42) #5
  %44 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %39) #5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %40, align 8, !tbaa !63
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %44, ptr noundef %47, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %48

48:                                               ; preds = %46, %38
  %49 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef %41) #5
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void @setlinestyle(i32 noundef 2) #5
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bActionGroup, ptr %54, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !66
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56, %52
  %62 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %63 = load i16, ptr %62, align 8, !tbaa !58
  %64 = and i16 %63, 16
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61, %56
  call void @UI_ThemeColorShade(i32 noundef 10, i32 noundef 50) #5
  br label %78

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 14
  %69 = load float, ptr %68, align 4, !tbaa !47
  %70 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 14, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !47
  %72 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 14, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !47
  %74 = and i16 %63, 2
  %75 = icmp eq i16 %74, 0
  %76 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %77 = select i1 %75, float %76, float 1.000000e+00
  call void @glColor4f(float noundef %69, float noundef %71, float noundef %73, float noundef %77) #5
  br label %78

78:                                               ; preds = %67, %66
  %79 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %80 = load i16, ptr %79, align 8, !tbaa !58
  %81 = and i16 %80, 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  call void @glLineWidth(float noundef 2.000000e+00) #5
  br label %84

84:                                               ; preds = %83, %78
  %85 = load i32, ptr %21, align 4, !tbaa !34
  %86 = and i32 %85, 4096
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  call void @glEnable(i32 noundef 2848) #5
  br label %89

89:                                               ; preds = %88, %84
  call void @glEnable(i32 noundef 3042) #5
  %90 = load ptr, ptr %42, align 8, !tbaa !69
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i16, ptr %79, align 8, !tbaa !58
  %94 = and i16 %93, 2048
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92, %89
  %97 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !70
  call fastcc void @draw_fcurve_curve(ptr noundef nonnull %0, ptr noundef %98, ptr noundef %41, ptr noundef nonnull %22, ptr noundef %3)
  br label %122

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !71
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  %106 = icmp eq ptr %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 7
  %109 = load i32, ptr %108, align 8, !tbaa !53
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  br i1 %102, label %115, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 9
  %114 = load ptr, ptr %113, align 8, !tbaa !70
  call fastcc void @draw_fcurve_curve(ptr noundef nonnull %0, ptr noundef %114, ptr noundef %41, ptr noundef nonnull %23, ptr noundef %3)
  br label %122

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !51
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !70
  call fastcc void @draw_fcurve_curve_samples(ptr noundef nonnull %0, ptr noundef %121, ptr noundef %41, ptr noundef nonnull %24)
  br label %122

122:                                              ; preds = %103, %107, %115, %119, %112, %96
  call void @setlinestyle(i32 noundef 0) #5
  call void @glLineWidth(float noundef 1.000000e+00) #5
  %123 = load i32, ptr %21, align 4, !tbaa !34
  %124 = and i32 %123, 4096
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  call void @glDisable(i32 noundef 2848) #5
  br label %127

127:                                              ; preds = %126, %122
  call void @glDisable(i32 noundef 3042) #5
  %128 = load i32, ptr %21, align 4, !tbaa !34
  %129 = and i32 %128, 32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i16, ptr %79, align 8, !tbaa !58
  %133 = and i16 %132, 2
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %493, label %135

135:                                              ; preds = %131, %127
  %136 = call zeroext i8 @fcurve_are_keyframes_usable(ptr noundef %41) #5
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %210

138:                                              ; preds = %135
  %139 = load i16, ptr %79, align 8, !tbaa !58
  %140 = and i16 %139, 4
  %141 = icmp ne i16 %140, 0
  %142 = icmp ne ptr %43, null
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %493

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.FModifier, ptr %43, i64 0, i32 4
  %146 = load i16, ptr %145, align 8, !tbaa !72
  %147 = icmp eq i16 %146, 3
  br i1 %147, label %148, label %493

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.FModifier, ptr %43, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !74
  %151 = load float, ptr %33, align 4, !tbaa !75
  %152 = load float, ptr %32, align 4, !tbaa !76
  %153 = fsub float %151, %152
  %154 = fmul float %153, 0x3FA99999A0000000
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  call void @setlinestyle(i32 noundef 5) #5
  call void @glBegin(i32 noundef 1) #5
  %155 = load float, ptr %32, align 8, !tbaa !56
  %156 = getelementptr inbounds %struct.FMod_Envelope, ptr %150, i64 0, i32 2
  %157 = load float, ptr %156, align 4, !tbaa !77
  %158 = getelementptr inbounds %struct.FMod_Envelope, ptr %150, i64 0, i32 3
  %159 = load float, ptr %158, align 8, !tbaa !79
  %160 = fadd float %157, %159
  call void @glVertex2f(float noundef %155, float noundef %160) #5
  %161 = load float, ptr %33, align 4, !tbaa !60
  %162 = load float, ptr %156, align 4, !tbaa !77
  %163 = load float, ptr %158, align 8, !tbaa !79
  %164 = fadd float %162, %163
  call void @glVertex2f(float noundef %161, float noundef %164) #5
  %165 = load float, ptr %32, align 8, !tbaa !56
  %166 = load float, ptr %156, align 4, !tbaa !77
  %167 = getelementptr inbounds %struct.FMod_Envelope, ptr %150, i64 0, i32 4
  %168 = load float, ptr %167, align 4, !tbaa !80
  %169 = fadd float %166, %168
  call void @glVertex2f(float noundef %165, float noundef %169) #5
  %170 = load float, ptr %33, align 4, !tbaa !60
  %171 = load float, ptr %156, align 4, !tbaa !77
  %172 = load float, ptr %167, align 4, !tbaa !80
  %173 = fadd float %171, %172
  call void @glVertex2f(float noundef %170, float noundef %173) #5
  call void @glEnd() #5
  call void @setlinestyle(i32 noundef 0) #5
  call void @glPointSize(float noundef 2.000000e+00) #5
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #5
  call void @bglBegin(i32 noundef 0) #5
  %174 = getelementptr inbounds %struct.FMod_Envelope, ptr %150, i64 0, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !81
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %209

177:                                              ; preds = %148
  %178 = load ptr, ptr %150, align 8, !tbaa !82
  br label %179

179:                                              ; preds = %177, %204
  %180 = phi i32 [ %205, %204 ], [ 0, %177 ]
  %181 = phi ptr [ %206, %204 ], [ %178, %177 ]
  %182 = load float, ptr %32, align 8, !tbaa !56
  %183 = fsub float %182, %154
  %184 = load float, ptr %33, align 4, !tbaa !60
  %185 = fadd float %154, %184
  %186 = fcmp olt float %183, %185
  %187 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %181, i64 0, i32 2
  %188 = load float, ptr %187, align 4, !tbaa !83
  br i1 %186, label %189, label %193

189:                                              ; preds = %179
  %190 = fcmp olt float %183, %188
  %191 = fcmp olt float %188, %185
  %192 = and i1 %190, %191
  br i1 %192, label %197, label %204

193:                                              ; preds = %179
  %194 = fcmp olt float %185, %188
  %195 = fcmp olt float %188, %183
  %196 = and i1 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %193, %189
  %198 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %181, i64 0, i32 2
  %199 = load float, ptr %198, align 4, !tbaa !83
  %200 = load float, ptr %181, align 4, !tbaa !85
  call void @glVertex2f(float noundef %199, float noundef %200) #5
  %201 = load float, ptr %198, align 4, !tbaa !83
  %202 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %181, i64 0, i32 1
  %203 = load float, ptr %202, align 4, !tbaa !86
  call void @glVertex2f(float noundef %201, float noundef %203) #5
  br label %204

204:                                              ; preds = %197, %193, %189
  %205 = add nuw nsw i32 %180, 1
  %206 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %181, i64 1
  %207 = load i32, ptr %174, align 8, !tbaa !81
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %179, label %209, !llvm.loop !87

209:                                              ; preds = %204, %148
  call void @bglEnd() #5
  call void @glPointSize(float noundef 1.000000e+00) #5
  br label %493

210:                                              ; preds = %135
  %211 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 5
  %212 = load ptr, ptr %211, align 8, !tbaa !71
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 6
  %216 = load ptr, ptr %215, align 8, !tbaa !51
  %217 = icmp eq ptr %216, null
  br i1 %217, label %493, label %218

218:                                              ; preds = %214, %210
  %219 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 7
  %220 = load i32, ptr %219, align 8, !tbaa !53
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %493, label %222

222:                                              ; preds = %218
  %223 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %0) #5
  %224 = load ptr, ptr %25, align 8, !tbaa !54
  %225 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 9
  %226 = load ptr, ptr %225, align 8, !tbaa !70
  %227 = call float @ANIM_unit_mapping_get_factor(ptr noundef %224, ptr noundef %226, ptr noundef %41, i16 noundef signext %223) #5
  call void @glPushMatrix() #5
  call void @glScalef(float noundef 1.000000e+00, float noundef %227, float noundef 1.000000e+00) #5
  %228 = load ptr, ptr %211, align 8, !tbaa !71
  %229 = icmp eq ptr %228, null
  br i1 %229, label %453, label %230

230:                                              ; preds = %222
  %231 = load i32, ptr %21, align 4, !tbaa !34
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %230
  %235 = load i16, ptr %79, align 8, !tbaa !58
  %236 = and i16 %235, 8
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %234
  %239 = load ptr, ptr %53, align 8, !tbaa !65
  %240 = icmp eq ptr %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.bActionGroup, ptr %239, i64 0, i32 3
  %243 = load i32, ptr %242, align 8, !tbaa !66
  %244 = and i32 %243, 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241, %238
  %247 = load i32, ptr %219, align 8, !tbaa !53
  %248 = icmp ugt i32 %247, 1
  %249 = zext i1 %248 to i8
  br label %250

250:                                              ; preds = %230, %234, %241, %246
  %251 = phi i8 [ 0, %241 ], [ 0, %234 ], [ 0, %230 ], [ %249, %246 ]
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %394, label %253

253:                                              ; preds = %250
  call void @glEnable(i32 noundef 3042) #5
  call void @glBegin(i32 noundef 1) #5
  br label %254

254:                                              ; preds = %253, %390
  %255 = phi i32 [ 0, %253 ], [ %391, %390 ]
  %256 = load ptr, ptr %211, align 8, !tbaa !71
  %257 = icmp eq i32 %255, 0
  %258 = select i1 %257, i32 54, i32 59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  %259 = load i32, ptr %219, align 8, !tbaa !53
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %390, label %261

261:                                              ; preds = %254, %385
  %262 = phi ptr [ %263, %385 ], [ null, %254 ]
  %263 = phi ptr [ %387, %385 ], [ %256, %254 ]
  %264 = phi i32 [ %386, %385 ], [ 0, %254 ]
  %265 = load i32, ptr %21, align 4, !tbaa !34
  %266 = and i32 %265, 512
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %283, label %268

268:                                              ; preds = %261
  %269 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 8
  %270 = load i8, ptr %269, align 4, !tbaa !88
  %271 = and i8 %270, 1
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 7
  %275 = load i8, ptr %274, align 1, !tbaa !90
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 9
  %280 = load i8, ptr %279, align 1, !tbaa !91
  %281 = and i8 %280, 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %385, label %283

283:                                              ; preds = %278, %273, %268, %261
  %284 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 8
  %285 = load i8, ptr %284, align 4, !tbaa !88
  %286 = and i8 %285, 1
  %287 = zext nneg i8 %286 to i32
  %288 = icmp eq i32 %255, %287
  br i1 %288, label %289, label %330

289:                                              ; preds = %283
  %290 = icmp eq ptr %262, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %289
  %292 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 4
  %293 = load i8, ptr %292, align 4, !tbaa !92
  %294 = icmp eq i8 %293, 2
  br i1 %294, label %299, label %312

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.BezTriple, ptr %262, i64 0, i32 4
  %297 = load i8, ptr %296, align 4, !tbaa !92
  %298 = icmp eq i8 %297, 2
  br i1 %298, label %299, label %312

299:                                              ; preds = %295, %291
  %300 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 5
  %301 = load i8, ptr %300, align 1, !tbaa !93
  %302 = zext i8 %301 to i32
  %303 = add nuw nsw i32 %258, %302
  call void @UI_GetThemeColor3ubv(i32 noundef %303, ptr noundef nonnull %9) #5
  %304 = load i16, ptr %79, align 8, !tbaa !58
  %305 = and i16 %304, 2
  %306 = icmp eq i16 %305, 0
  %307 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %308 = fmul float %307, 2.550000e+02
  %309 = fptoui float %308 to i8
  %310 = select i1 %306, i8 %309, i8 -1
  store i8 %310, ptr %28, align 1, !tbaa !94
  call void @glColor4ubv(ptr noundef nonnull %9) #5
  call void @glVertex2fv(ptr noundef %263) #5
  %311 = getelementptr inbounds float, ptr %263, i64 3
  call void @glVertex2fv(ptr noundef nonnull %311) #5
  br label %312

312:                                              ; preds = %299, %295, %291
  %313 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 4
  %314 = load i8, ptr %313, align 4, !tbaa !92
  %315 = icmp eq i8 %314, 2
  br i1 %315, label %316, label %385

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 6
  %318 = load i8, ptr %317, align 2, !tbaa !95
  %319 = zext i8 %318 to i32
  %320 = add nuw nsw i32 %258, %319
  call void @UI_GetThemeColor3ubv(i32 noundef %320, ptr noundef nonnull %9) #5
  %321 = load i16, ptr %79, align 8, !tbaa !58
  %322 = and i16 %321, 2
  %323 = icmp eq i16 %322, 0
  %324 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %325 = fmul float %324, 2.550000e+02
  %326 = fptoui float %325 to i8
  %327 = select i1 %323, i8 %326, i8 -1
  store i8 %327, ptr %29, align 1, !tbaa !94
  call void @glColor4ubv(ptr noundef nonnull %9) #5
  %328 = getelementptr inbounds float, ptr %263, i64 3
  call void @glVertex2fv(ptr noundef nonnull %328) #5
  %329 = getelementptr inbounds float, ptr %263, i64 6
  br label %383

330:                                              ; preds = %283
  %331 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 7
  %332 = load i8, ptr %331, align 1, !tbaa !90
  %333 = and i8 %332, 1
  %334 = zext nneg i8 %333 to i32
  %335 = icmp eq i32 %255, %334
  br i1 %335, label %336, label %359

336:                                              ; preds = %330
  %337 = icmp eq ptr %262, null
  br i1 %337, label %338, label %342

338:                                              ; preds = %336
  %339 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 4
  %340 = load i8, ptr %339, align 4, !tbaa !92
  %341 = icmp eq i8 %340, 2
  br i1 %341, label %346, label %359

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.BezTriple, ptr %262, i64 0, i32 4
  %344 = load i8, ptr %343, align 4, !tbaa !92
  %345 = icmp eq i8 %344, 2
  br i1 %345, label %346, label %359

346:                                              ; preds = %342, %338
  %347 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 5
  %348 = load i8, ptr %347, align 1, !tbaa !93
  %349 = zext i8 %348 to i32
  %350 = add nuw nsw i32 %258, %349
  call void @UI_GetThemeColor3ubv(i32 noundef %350, ptr noundef nonnull %9) #5
  %351 = load i16, ptr %79, align 8, !tbaa !58
  %352 = and i16 %351, 2
  %353 = icmp eq i16 %352, 0
  %354 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %355 = fmul float %354, 2.550000e+02
  %356 = fptoui float %355 to i8
  %357 = select i1 %353, i8 %356, i8 -1
  store i8 %357, ptr %26, align 1, !tbaa !94
  call void @glColor4ubv(ptr noundef nonnull %9) #5
  call void @glVertex2fv(ptr noundef %263) #5
  %358 = getelementptr inbounds float, ptr %263, i64 3
  call void @glVertex2fv(ptr noundef nonnull %358) #5
  br label %359

359:                                              ; preds = %346, %342, %338, %330
  %360 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 9
  %361 = load i8, ptr %360, align 1, !tbaa !91
  %362 = and i8 %361, 1
  %363 = zext nneg i8 %362 to i32
  %364 = icmp eq i32 %255, %363
  br i1 %364, label %365, label %385

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 4
  %367 = load i8, ptr %366, align 4, !tbaa !92
  %368 = icmp eq i8 %367, 2
  br i1 %368, label %369, label %385

369:                                              ; preds = %365
  %370 = getelementptr inbounds [3 x [3 x float]], ptr %263, i64 0, i64 1
  %371 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 0, i32 6
  %372 = load i8, ptr %371, align 2, !tbaa !95
  %373 = zext i8 %372 to i32
  %374 = add nuw nsw i32 %258, %373
  call void @UI_GetThemeColor3ubv(i32 noundef %374, ptr noundef nonnull %9) #5
  %375 = load i16, ptr %79, align 8, !tbaa !58
  %376 = and i16 %375, 2
  %377 = icmp eq i16 %376, 0
  %378 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %379 = fmul float %378, 2.550000e+02
  %380 = fptoui float %379 to i8
  %381 = select i1 %377, i8 %380, i8 -1
  store i8 %381, ptr %27, align 1, !tbaa !94
  call void @glColor4ubv(ptr noundef nonnull %9) #5
  call void @glVertex2fv(ptr noundef nonnull %370) #5
  %382 = getelementptr inbounds [3 x [3 x float]], ptr %263, i64 0, i64 2
  br label %383

383:                                              ; preds = %316, %369
  %384 = phi ptr [ %382, %369 ], [ %329, %316 ]
  call void @glVertex2fv(ptr noundef nonnull %384) #5
  br label %385

385:                                              ; preds = %383, %365, %359, %312, %278
  %386 = add nuw nsw i32 %264, 1
  %387 = getelementptr inbounds %struct.BezTriple, ptr %263, i64 1
  %388 = load i32, ptr %219, align 8, !tbaa !53
  %389 = icmp ult i32 %386, %388
  br i1 %389, label %261, label %390, !llvm.loop !96

390:                                              ; preds = %385, %254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  %391 = add nuw nsw i32 %255, 1
  %392 = icmp eq i32 %255, 0
  br i1 %392, label %254, label %393, !llvm.loop !97

393:                                              ; preds = %390
  call void @glEnd() #5
  call void @glDisable(i32 noundef 3042) #5
  br label %394

394:                                              ; preds = %393, %250
  %395 = load i32, ptr %21, align 4, !tbaa !34
  %396 = call float @UI_GetThemeValuef(i32 noundef 36) #5
  call void @glPointSize(float noundef %396) #5
  br i1 %252, label %422, label %397

397:                                              ; preds = %394
  %398 = trunc i32 %395 to i16
  %399 = and i16 %398, 512
  %400 = load i16, ptr %79, align 8, !tbaa !58
  %401 = and i16 %400, 2
  %402 = icmp eq i16 %401, 0
  %403 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %404 = fadd float %403, -1.000000e+00
  %405 = fmul float %404, 2.550000e+02
  %406 = fptosi float %405 to i32
  %407 = select i1 %402, i32 %406, i32 0
  %408 = and i16 %400, 8
  %409 = icmp eq i16 %408, 0
  %410 = select i1 %409, i32 33, i32 3
  call void @UI_ThemeColorShadeAlpha(i32 noundef %410, i32 noundef 0, i32 noundef %407) #5
  call fastcc void @draw_fcurve_vertices_handles(ptr noundef %41, ptr noundef %1, ptr noundef nonnull %30, i16 noundef signext 0, i16 noundef signext %399, float noundef %227)
  %411 = load i16, ptr %79, align 8, !tbaa !58
  %412 = and i16 %411, 2
  %413 = icmp eq i16 %412, 0
  %414 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %415 = fadd float %414, -1.000000e+00
  %416 = fmul float %415, 2.550000e+02
  %417 = fptosi float %416 to i32
  %418 = select i1 %413, i32 %417, i32 0
  %419 = and i16 %411, 8
  %420 = icmp eq i16 %419, 0
  %421 = select i1 %420, i32 34, i32 4
  call void @UI_ThemeColorShadeAlpha(i32 noundef %421, i32 noundef 0, i32 noundef %418) #5
  call fastcc void @draw_fcurve_vertices_handles(ptr noundef %41, ptr noundef %1, ptr noundef nonnull %30, i16 noundef signext 1, i16 noundef signext %399, float noundef %227)
  br label %422

422:                                              ; preds = %394, %397
  %423 = load i16, ptr %79, align 8, !tbaa !58
  %424 = and i16 %423, 2
  %425 = icmp eq i16 %424, 0
  %426 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %427 = fadd float %426, -1.000000e+00
  %428 = fmul float %427, 2.550000e+02
  %429 = fptosi float %428 to i32
  %430 = select i1 %425, i32 %429, i32 0
  %431 = and i16 %423, 8
  %432 = icmp eq i16 %431, 0
  %433 = select i1 %432, i32 33, i32 3
  call void @UI_ThemeColorShadeAlpha(i32 noundef %433, i32 noundef 0, i32 noundef %430) #5
  %434 = load i16, ptr %79, align 8, !tbaa !58
  %435 = lshr i16 %434, 3
  %436 = and i16 %435, 1
  %437 = xor i16 %436, 1
  call fastcc void @draw_fcurve_vertices_keyframes(ptr noundef %41, ptr noundef nonnull %30, i16 noundef signext %437, i16 noundef signext 0)
  %438 = load i16, ptr %79, align 8, !tbaa !58
  %439 = and i16 %438, 2
  %440 = icmp eq i16 %439, 0
  %441 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8
  %442 = fadd float %441, -1.000000e+00
  %443 = fmul float %442, 2.550000e+02
  %444 = fptosi float %443 to i32
  %445 = select i1 %440, i32 %444, i32 0
  %446 = and i16 %438, 8
  %447 = icmp eq i16 %446, 0
  %448 = select i1 %447, i32 34, i32 4
  call void @UI_ThemeColorShadeAlpha(i32 noundef %448, i32 noundef 0, i32 noundef %445) #5
  %449 = load i16, ptr %79, align 8, !tbaa !58
  %450 = lshr i16 %449, 3
  %451 = and i16 %450, 1
  %452 = xor i16 %451, 1
  call fastcc void @draw_fcurve_vertices_keyframes(ptr noundef %41, ptr noundef nonnull %30, i16 noundef signext %452, i16 noundef signext 1)
  call void @glPointSize(float noundef 1.000000e+00) #5
  br label %492

453:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  %454 = call float @UI_GetThemeValuef(i32 noundef 36) #5
  call void @UI_view2d_scale_get(ptr noundef nonnull %31, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %455 = load i16, ptr %79, align 8, !tbaa !58
  %456 = and i16 %455, 6
  %457 = icmp eq i16 %456, 0
  %458 = select i1 %457, i32 3, i32 4
  call void @UI_ThemeColor(i32 noundef %458) #5
  %459 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 6
  %460 = load ptr, ptr %459, align 8, !tbaa !51
  %461 = icmp ne ptr %460, null
  br i1 %461, label %462, label %467

462:                                              ; preds = %453
  %463 = load i32, ptr %219, align 8, !tbaa !53
  %464 = add i32 %463, -1
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds %struct.FPoint, ptr %460, i64 %465
  br label %467

467:                                              ; preds = %462, %453
  %468 = phi ptr [ %466, %462 ], [ null, %453 ]
  %469 = icmp ne ptr %468, null
  %470 = select i1 %461, i1 %469, i1 false
  br i1 %470, label %471, label %491

471:                                              ; preds = %467
  %472 = load i32, ptr %21, align 4, !tbaa !34
  %473 = and i32 %472, 4096
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  call void @glEnable(i32 noundef 2848) #5
  br label %476

476:                                              ; preds = %475, %471
  call void @glEnable(i32 noundef 3042) #5
  %477 = load float, ptr %460, align 4, !tbaa !47
  %478 = getelementptr inbounds [2 x float], ptr %460, i64 0, i64 1
  %479 = load float, ptr %478, align 4, !tbaa !47
  %480 = load float, ptr %7, align 4, !tbaa !47
  %481 = load float, ptr %8, align 4, !tbaa !47
  call fastcc void @draw_fcurve_sample_control(float noundef %477, float noundef %479, float noundef %480, float noundef %481, float noundef %454)
  %482 = load float, ptr %468, align 4, !tbaa !47
  %483 = getelementptr inbounds [2 x float], ptr %468, i64 0, i64 1
  %484 = load float, ptr %483, align 4, !tbaa !47
  %485 = load float, ptr %7, align 4, !tbaa !47
  %486 = load float, ptr %8, align 4, !tbaa !47
  call fastcc void @draw_fcurve_sample_control(float noundef %482, float noundef %484, float noundef %485, float noundef %486, float noundef %454)
  call void @glDisable(i32 noundef 3042) #5
  %487 = load i32, ptr %21, align 4, !tbaa !34
  %488 = and i32 %487, 4096
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %476
  call void @glDisable(i32 noundef 2848) #5
  br label %491

491:                                              ; preds = %467, %476, %490
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  br label %492

492:                                              ; preds = %491, %422
  call void @glPopMatrix() #5
  br label %493

493:                                              ; preds = %209, %144, %138, %492, %218, %214, %131
  %494 = load i16, ptr %14, align 8, !tbaa !62
  %495 = icmp eq i16 %494, 6
  br i1 %495, label %496, label %546

496:                                              ; preds = %493
  %497 = load i16, ptr %79, align 8, !tbaa !58
  %498 = and i16 %497, 4
  %499 = icmp eq i16 %498, 0
  br i1 %499, label %546, label %500

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 9
  %502 = load ptr, ptr %501, align 8, !tbaa !70
  %503 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 3
  %504 = load ptr, ptr %503, align 8, !tbaa !98
  %505 = load ptr, ptr %34, align 8, !tbaa !99
  %506 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %0) #5
  %507 = load ptr, ptr %35, align 8, !tbaa !54
  %508 = call float @ANIM_unit_mapping_get_factor(ptr noundef %507, ptr noundef %502, ptr noundef %41, i16 noundef signext %506) #5
  %509 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 7
  %510 = load i32, ptr %509, align 8, !tbaa !53
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %523

512:                                              ; preds = %500
  %513 = load ptr, ptr %42, align 8, !tbaa !100
  %514 = icmp eq ptr %513, null
  br i1 %514, label %515, label %523

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 14
  call void @glColor3fv(ptr noundef nonnull %516) #5
  call void @setlinestyle(i32 noundef 20) #5
  call void @glLineWidth(float noundef 2.000000e+00) #5
  call void @glBegin(i32 noundef 1) #5
  %517 = getelementptr inbounds %struct.ARegion, ptr %505, i64 0, i32 2, i32 1
  %518 = load float, ptr %517, align 8, !tbaa !56
  %519 = fmul float %508, %518
  call void @glVertex2f(float noundef %518, float noundef %519) #5
  %520 = getelementptr inbounds %struct.ARegion, ptr %505, i64 0, i32 2, i32 1, i32 1
  %521 = load float, ptr %520, align 4, !tbaa !60
  %522 = fmul float %508, %521
  call void @glVertex2f(float noundef %521, float noundef %522) #5
  call void @glEnd() #5
  call void @setlinestyle(i32 noundef 0) #5
  call void @glLineWidth(float noundef 1.000000e+00) #5
  br label %523

523:                                              ; preds = %515, %512, %500
  %524 = getelementptr inbounds %struct.ChannelDriver, ptr %504, i64 0, i32 6
  %525 = load i32, ptr %524, align 4, !tbaa !101
  %526 = and i32 %525, 1
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %546

528:                                              ; preds = %523
  %529 = getelementptr inbounds %struct.ChannelDriver, ptr %504, i64 0, i32 3
  %530 = load float, ptr %529, align 8, !tbaa !103
  %531 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 8
  %532 = load float, ptr %531, align 4, !tbaa !104
  %533 = fmul float %508, %532
  %534 = getelementptr inbounds %struct.ARegion, ptr %505, i64 0, i32 2, i32 1
  %535 = load float, ptr %534, align 8, !tbaa !56
  %536 = fcmp ult float %530, %535
  br i1 %536, label %546, label %537

537:                                              ; preds = %528
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000) #5
  call void @setlinestyle(i32 noundef 5) #5
  call void @glBegin(i32 noundef 1) #5
  store float %530, ptr %6, align 4, !tbaa !47
  %538 = getelementptr inbounds %struct.ARegion, ptr %505, i64 0, i32 2, i32 1, i32 2
  %539 = load float, ptr %538, align 8, !tbaa !105
  %540 = fcmp ult float %533, %539
  br i1 %540, label %543, label %541

541:                                              ; preds = %537
  %542 = fadd float %539, -1.000000e+00
  store float %542, ptr %36, align 4, !tbaa !47
  call void @glVertex2fv(ptr noundef nonnull %6) #5
  store float %533, ptr %36, align 4, !tbaa !47
  call void @glVertex2fv(ptr noundef nonnull %6) #5
  br label %543

543:                                              ; preds = %541, %537
  store float %533, ptr %37, align 4, !tbaa !47
  %544 = load float, ptr %534, align 8, !tbaa !56
  %545 = fadd float %544, -1.000000e+00
  store float %545, ptr %6, align 4, !tbaa !47
  call void @glVertex2fv(ptr noundef nonnull %6) #5
  store float %530, ptr %6, align 4, !tbaa !47
  call void @glVertex2fv(ptr noundef nonnull %6) #5
  call void @glEnd() #5
  call void @setlinestyle(i32 noundef 0) #5
  call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000) #5
  call void @glPointSize(float noundef 7.000000e+00) #5
  call void @glBegin(i32 noundef 0) #5
  call void @glVertex2f(float noundef %530, float noundef %533) #5
  call void @glEnd() #5
  call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  call void @glPointSize(float noundef 3.000000e+00) #5
  call void @glBegin(i32 noundef 0) #5
  call void @glVertex2f(float noundef %530, float noundef %533) #5
  call void @glEnd() #5
  call void @glPointSize(float noundef 1.000000e+00) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %546

546:                                              ; preds = %543, %528, %523, %496, %493
  br i1 %45, label %549, label %547

547:                                              ; preds = %546
  %548 = load ptr, ptr %40, align 8, !tbaa !63
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %44, ptr noundef %548, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %549

549:                                              ; preds = %547, %546
  %550 = load ptr, ptr %39, align 8, !tbaa !46
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %38, !llvm.loop !106

552:                                              ; preds = %549, %5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @find_active_fmodifier(ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BKE_fcurve_is_protected(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_fcurve_curve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  %8 = tail call signext i16 @ANIM_get_normalization_flags(ptr noundef %0) #5
  call void @UI_view2d_grid_size(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  %9 = load float, ptr %6, align 4, !tbaa !47
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %11, label %44

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  store ptr null, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = call float @ANIM_unit_mapping_get_factor(ptr noundef %15, ptr noundef %1, ptr noundef %2, i16 noundef signext %8) #5
  %17 = load float, ptr %6, align 4, !tbaa !47
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !107
  %19 = sitofp i16 %18 to float
  %20 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !111
  %21 = fmul float %20, %19
  %22 = fdiv float %17, %21
  %23 = fcmp olt float %22, 0x3EE4F8B580000000
  %24 = select i1 %23, float 0x3EE4F8B580000000, float %22
  %25 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1
  %26 = load float, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.View2D, ptr %3, i64 0, i32 1, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !60
  %29 = fadd float %28, %24
  call void @glBegin(i32 noundef 3) #5
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
  %39 = call float @evaluate_fcurve(ptr noundef %2, float noundef %38) #5
  %40 = fmul float %16, %39
  call void @glVertex2f(float noundef %38, float noundef %40) #5
  %41 = add nuw nsw i32 %36, 1
  %42 = icmp eq i32 %41, %33
  br i1 %42, label %43, label %35, !llvm.loop !112

43:                                               ; preds = %35, %11
  call void @glEnd() #5
  store ptr %13, ptr %12, align 8, !tbaa !98
  br label %44

44:                                               ; preds = %5, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret void
}

declare zeroext i8 @fcurve_are_keyframes_usable(ptr noundef) local_unnamed_addr #2

declare signext i16 @ANIM_get_normalization_flags(ptr noundef) local_unnamed_addr #2

declare float @ANIM_unit_mapping_get_factor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @graph_draw_channel_names(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %1, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !62
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %6, i32 noundef %9) #5
  %11 = uitofp i64 %10 to float
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FB99999A0000000
  %15 = call float @llvm.fmuladd.f32(float %13, float 0x3FE99999A0000000, float %14)
  %16 = fmul float %13, 0x3FE99999A0000000
  %17 = fmul float %16, 2.000000e+00
  %18 = call float @llvm.fmuladd.f32(float %11, float %15, float %17)
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !114
  %21 = sext i16 %20 to i32
  %22 = fptosi float %18 to i32
  call void @UI_view2d_totRect_set(ptr noundef nonnull %5, i32 noundef %21, i32 noundef %22) #5
  %23 = load ptr, ptr %4, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %67, label %25

25:                                               ; preds = %3
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 0xBFE99999A0000000
  %29 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %30 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %31

31:                                               ; preds = %25, %59
  %32 = phi ptr [ %23, %25 ], [ %65, %59 ]
  %33 = phi float [ %28, %25 ], [ %64, %59 ]
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %35 = sitofp i16 %34 to float
  %36 = call float @llvm.fmuladd.f32(float %35, float 0xBFD99999A0000000, float %33)
  %37 = call float @llvm.fmuladd.f32(float %35, float 0x3FD99999A0000000, float %33)
  %38 = load float, ptr %29, align 8, !tbaa !105
  %39 = load float, ptr %30, align 4, !tbaa !116
  %40 = fcmp olt float %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = fcmp olt float %38, %36
  %43 = fcmp olt float %36, %39
  %44 = and i1 %42, %43
  br i1 %44, label %58, label %49

45:                                               ; preds = %31
  %46 = fcmp olt float %39, %36
  %47 = fcmp olt float %36, %38
  %48 = and i1 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %45, %41
  br i1 %40, label %50, label %54

50:                                               ; preds = %49
  %51 = fcmp olt float %38, %37
  %52 = fcmp olt float %37, %39
  %53 = and i1 %51, %52
  br i1 %53, label %58, label %59

54:                                               ; preds = %49
  %55 = fcmp olt float %39, %37
  %56 = fcmp olt float %37, %38
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50, %45, %41
  call void @ANIM_channel_draw(ptr noundef nonnull %1, ptr noundef nonnull %32, float noundef %36, float noundef %37) #5
  br label %59

59:                                               ; preds = %54, %50, %58
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 0x3FB99999A0000000
  %63 = call float @llvm.fmuladd.f32(float %61, float 0x3FE99999A0000000, float %62)
  %64 = fsub float %33, %63
  %65 = load ptr, ptr %32, align 8, !tbaa !46
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %31, !llvm.loop !117

67:                                               ; preds = %59, %3
  %68 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @__func__.graph_draw_channel_names, i16 noundef signext 0) #5
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  call void @glEnable(i32 noundef 3042) #5
  %70 = load ptr, ptr %4, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %115, label %72

72:                                               ; preds = %67
  %73 = sitofp i16 %69 to float
  %74 = fmul float %73, 0xBFE99999A0000000
  %75 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %76 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %77

77:                                               ; preds = %72, %106
  %78 = phi ptr [ %70, %72 ], [ %113, %106 ]
  %79 = phi float [ %74, %72 ], [ %111, %106 ]
  %80 = phi i64 [ 0, %72 ], [ %112, %106 ]
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %82 = sitofp i16 %81 to float
  %83 = call float @llvm.fmuladd.f32(float %82, float 0xBFD99999A0000000, float %79)
  %84 = call float @llvm.fmuladd.f32(float %82, float 0x3FD99999A0000000, float %79)
  %85 = load float, ptr %75, align 8, !tbaa !105
  %86 = load float, ptr %76, align 4, !tbaa !116
  %87 = fcmp olt float %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = fcmp olt float %85, %83
  %90 = fcmp olt float %83, %86
  %91 = and i1 %89, %90
  br i1 %91, label %105, label %96

92:                                               ; preds = %77
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
  br i1 %100, label %105, label %106

101:                                              ; preds = %96
  %102 = fcmp olt float %86, %84
  %103 = fcmp olt float %84, %85
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %97, %92, %88
  call void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %78, ptr noundef %68, float noundef %83, float noundef %84, i64 noundef %80) #5
  br label %106

106:                                              ; preds = %101, %97, %105
  %107 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %108 = sitofp i16 %107 to float
  %109 = fmul float %108, 0x3FB99999A0000000
  %110 = call float @llvm.fmuladd.f32(float %108, float 0x3FE99999A0000000, float %109)
  %111 = fsub float %79, %110
  %112 = add i64 %80, 1
  %113 = load ptr, ptr %78, align 8, !tbaa !46
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %77, !llvm.loop !118

115:                                              ; preds = %106, %67
  call void @uiEndBlock(ptr noundef %0, ptr noundef %68) #5
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %68) #5
  call void @glDisable(i32 noundef 3042) #5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ANIM_channel_draw(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ANIM_channel_draw_widgets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i64 noundef) local_unnamed_addr #2

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @UI_view2d_grid_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @bglBegin(i32 noundef) local_unnamed_addr #2

declare void @bglEnd() local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_fcurve_vertices_handles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  %11 = tail call float @UI_GetThemeValuef(i32 noundef 130) #5
  %12 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !111
  %13 = fmul float %11, %12
  call void @UI_view2d_scale_get(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %14 = load float, ptr %8, align 4, !tbaa !47
  %15 = fmul float %14, %5
  store float %15, ptr %8, align 4, !tbaa !47
  %16 = icmp eq i16 %3, 0
  %17 = select i1 %16, i32 128, i32 129
  call void @UI_ThemeColor(i32 noundef %17) #5
  %18 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  call void @glEnable(i32 noundef 2848) #5
  br label %23

23:                                               ; preds = %22, %6
  call void @glEnable(i32 noundef 3042) #5
  %24 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !53
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
  %35 = load i8, ptr %34, align 4, !tbaa !88
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %40 = load i8, ptr %39, align 1, !tbaa !90
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %45 = load i8, ptr %44, align 1, !tbaa !91
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %87, label %48

48:                                               ; preds = %43, %38, %33, %29
  %49 = icmp eq ptr %32, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 4
  %52 = load i8, ptr %51, align 4, !tbaa !92
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %58, label %70

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 4
  %56 = load i8, ptr %55, align 4, !tbaa !92
  %57 = icmp eq i8 %56, 2
  br i1 %57, label %58, label %70

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !90
  %61 = and i8 %60, 1
  %62 = zext nneg i8 %61 to i16
  %63 = icmp eq i16 %62, %3
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load float, ptr %31, align 4, !tbaa !47
  %66 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !47
  %68 = load float, ptr %7, align 4, !tbaa !47
  %69 = load float, ptr %8, align 4, !tbaa !47
  call fastcc void @draw_fcurve_handle_control(float noundef %65, float noundef %67, float noundef %68, float noundef %69, float noundef %13)
  br label %70

70:                                               ; preds = %50, %58, %64, %54
  %71 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 4
  %72 = load i8, ptr %71, align 4, !tbaa !92
  %73 = icmp eq i8 %72, 2
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %76 = load i8, ptr %75, align 1, !tbaa !91
  %77 = and i8 %76, 1
  %78 = zext nneg i8 %77 to i16
  %79 = icmp eq i16 %78, %3
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !47
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !47
  %85 = load float, ptr %7, align 4, !tbaa !47
  %86 = load float, ptr %8, align 4, !tbaa !47
  call fastcc void @draw_fcurve_handle_control(float noundef %82, float noundef %84, float noundef %85, float noundef %86, float noundef %13)
  br label %87

87:                                               ; preds = %43, %74, %80, %70
  %88 = add nuw nsw i32 %30, 1
  %89 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 1
  %90 = load i32, ptr %24, align 8, !tbaa !53
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %29, label %92, !llvm.loop !119

92:                                               ; preds = %87, %23
  %93 = load i32, ptr %18, align 4, !tbaa !34
  %94 = and i32 %93, 4096
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  call void @glDisable(i32 noundef 2848) #5
  br label %97

97:                                               ; preds = %96, %92
  call void @glDisable(i32 noundef 3042) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_fcurve_vertices_keyframes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !75
  %10 = load float, ptr %7, align 4, !tbaa !76
  %11 = fsub float %9, %10
  %12 = fmul float %11, 0x3FA99999A0000000
  tail call void @bglBegin(i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !53
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %4
  %17 = icmp eq i16 %2, 0
  br label %18

18:                                               ; preds = %16, %45
  %19 = phi i32 [ 0, %16 ], [ %46, %45 ]
  %20 = phi ptr [ %6, %16 ], [ %47, %45 ]
  %21 = load float, ptr %7, align 8, !tbaa !56
  %22 = fsub float %21, %12
  %23 = load float, ptr %8, align 4, !tbaa !60
  %24 = fadd float %12, %23
  %25 = fcmp olt float %22, %24
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !47
  br i1 %25, label %28, label %32

28:                                               ; preds = %18
  %29 = fcmp olt float %22, %27
  %30 = fcmp olt float %27, %24
  %31 = and i1 %29, %30
  br i1 %31, label %36, label %45

32:                                               ; preds = %18
  %33 = fcmp olt float %24, %27
  %34 = fcmp olt float %27, %22
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32, %28
  br i1 %17, label %43, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 0, i32 8
  %39 = load i8, ptr %38, align 4, !tbaa !88
  %40 = and i8 %39, 1
  %41 = zext nneg i8 %40 to i16
  %42 = icmp eq i16 %41, %3
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %37
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1
  tail call void @bglVertex3fv(ptr noundef nonnull %44) #5
  br label %45

45:                                               ; preds = %43, %28, %32, %37
  %46 = add nuw nsw i32 %19, 1
  %47 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 1
  %48 = load i32, ptr %13, align 8, !tbaa !53
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %18, label %50, !llvm.loop !120

50:                                               ; preds = %45, %4
  tail call void @bglEnd() #5
  ret void
}

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_fcurve_handle_control(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr @draw_fcurve_handle_control.displist, align 4, !tbaa !121
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call i32 @glGenLists(i32 noundef 1) #5
  store i32 %9, ptr @draw_fcurve_handle_control.displist, align 4, !tbaa !121
  tail call void @glNewList(i32 noundef %9, i32 noundef 4864) #5
  %10 = tail call ptr @gluNewQuadric() #5
  tail call void @gluQuadricDrawStyle(ptr noundef %10, i32 noundef 100013) #5
  tail call void @gluDisk(ptr noundef %10, double noundef 0.000000e+00, double noundef 0x3FE6666666666666, i32 noundef 8, i32 noundef 1) #5
  tail call void @gluDeleteQuadric(ptr noundef %10) #5
  tail call void @glEndList() #5
  br label %11

11:                                               ; preds = %8, %5
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #5
  %12 = fdiv float 1.000000e+00, %2
  %13 = fmul float %12, %4
  %14 = fdiv float 1.000000e+00, %3
  %15 = fmul float %14, %4
  tail call void @glScalef(float noundef %13, float noundef %15, float noundef 1.000000e+00) #5
  %16 = load i32, ptr @draw_fcurve_handle_control.displist, align 4, !tbaa !121
  tail call void @glCallList(i32 noundef %16) #5
  %17 = fdiv float %2, %4
  %18 = fdiv float %3, %4
  tail call void @glScalef(float noundef %17, float noundef %18, float noundef 1.000000e+00) #5
  %19 = fneg float %0
  %20 = fneg float %1
  tail call void @glTranslatef(float noundef %19, float noundef %20, float noundef 0.000000e+00) #5
  ret void
}

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gluNewQuadric() local_unnamed_addr #2

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

declare void @glEndList() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glCallList(i32 noundef) local_unnamed_addr #2

declare void @bglVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_fcurve_sample_control(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr @draw_fcurve_sample_control.displist, align 4, !tbaa !121
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @glGenLists(i32 noundef 1) #5
  store i32 %9, ptr @draw_fcurve_sample_control.displist, align 4, !tbaa !121
  tail call void @glNewList(i32 noundef %9, i32 noundef 4864) #5
  tail call void @glBegin(i32 noundef 1) #5
  tail call void @glVertex2f(float noundef 0xBFE6666660000000, float noundef 0xBFE6666660000000) #5
  tail call void @glVertex2f(float noundef 0x3FE6666660000000, float noundef 0x3FE6666660000000) #5
  tail call void @glVertex2f(float noundef 0xBFE6666660000000, float noundef 0x3FE6666660000000) #5
  tail call void @glVertex2f(float noundef 0x3FE6666660000000, float noundef 0xBFE6666660000000) #5
  tail call void @glEnd() #5
  tail call void @glEndList() #5
  br label %10

10:                                               ; preds = %8, %5
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #5
  %11 = fdiv float 1.000000e+00, %2
  %12 = fmul float %11, %4
  %13 = fdiv float 1.000000e+00, %3
  %14 = fmul float %13, %4
  tail call void @glScalef(float noundef %12, float noundef %14, float noundef 1.000000e+00) #5
  %15 = load i32, ptr @draw_fcurve_sample_control.displist, align 4, !tbaa !121
  tail call void @glCallList(i32 noundef %15) #5
  %16 = fdiv float %2, %4
  %17 = fdiv float %3, %4
  tail call void @glScalef(float noundef %16, float noundef %17, float noundef 1.000000e+00) #5
  %18 = fneg float %0
  %19 = fneg float %1
  tail call void @glTranslatef(float noundef %18, float noundef %19, float noundef 0.000000e+00) #5
  ret void
}

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !40, i64 244}
!35 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40, !42, i64 56, !36, i64 216, !39, i64 224, !45, i64 240, !45, i64 242, !40, i64 244, !41, i64 248, !40, i64 252}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"View2D", !43, i64 0, !43, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!43 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!44 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!45 = !{!"short", !37, i64 0}
!46 = !{!36, !36, i64 0}
!47 = !{!41, !41, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !36, i64 56}
!52 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !41, i64 68, !45, i64 72, !45, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !41, i64 104, !41, i64 108}
!53 = !{!52, !40, i64 64}
!54 = !{!55, !36, i64 48}
!55 = !{!"bAnimContext", !36, i64 0, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!56 = !{!42, !41, i64 16}
!57 = !{!52, !45, i64 74}
!58 = !{!52, !45, i64 72}
!59 = distinct !{!59, !49, !50}
!60 = !{!42, !41, i64 20}
!61 = !{!55, !36, i64 0}
!62 = !{!55, !45, i64 8}
!63 = !{!64, !36, i64 40}
!64 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !45, i64 36, !45, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!65 = !{!52, !36, i64 16}
!66 = !{!67, !40, i64 32}
!67 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !40, i64 36, !37, i64 40, !68, i64 104}
!68 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !45, i64 12, !45, i64 14}
!69 = !{!52, !36, i64 32}
!70 = !{!64, !36, i64 48}
!71 = !{!52, !36, i64 48}
!72 = !{!73, !45, i64 88}
!73 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !45, i64 88, !45, i64 90, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108}
!74 = !{!73, !36, i64 16}
!75 = !{!43, !41, i64 4}
!76 = !{!43, !41, i64 0}
!77 = !{!78, !41, i64 12}
!78 = !{!"FMod_Envelope", !36, i64 0, !40, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!79 = !{!78, !41, i64 16}
!80 = !{!78, !41, i64 20}
!81 = !{!78, !40, i64 8}
!82 = !{!78, !36, i64 0}
!83 = !{!84, !41, i64 8}
!84 = !{!"FCM_EnvelopeData", !41, i64 0, !41, i64 4, !41, i64 8, !45, i64 12, !45, i64 14}
!85 = !{!84, !41, i64 0}
!86 = !{!84, !41, i64 4}
!87 = distinct !{!87, !49, !50}
!88 = !{!89, !37, i64 52}
!89 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!90 = !{!89, !37, i64 51}
!91 = !{!89, !37, i64 53}
!92 = !{!89, !37, i64 48}
!93 = !{!89, !37, i64 49}
!94 = !{!37, !37, i64 0}
!95 = !{!89, !37, i64 50}
!96 = distinct !{!96, !49, !50}
!97 = distinct !{!97, !49, !50}
!98 = !{!52, !36, i64 24}
!99 = !{!55, !36, i64 32}
!100 = !{!39, !36, i64 0}
!101 = !{!102, !40, i64 292}
!102 = !{!"ChannelDriver", !39, i64 0, !37, i64 16, !36, i64 272, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 292}
!103 = !{!102, !41, i64 280}
!104 = !{!52, !41, i64 68}
!105 = !{!42, !41, i64 24}
!106 = distinct !{!106, !49, !50}
!107 = !{!108, !45, i64 8472}
!108 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !45, i64 8496, !45, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !37, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !40, i64 8912, !40, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !45, i64 8968, !45, i64 8970, !41, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !109, i64 8984, !37, i64 9760, !37, i64 9772, !45, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !110, i64 10928}
!109 = !{!"ColorBand", !45, i64 0, !45, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!110 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !45, i64 24, !37, i64 26}
!111 = !{!108, !41, i64 10908}
!112 = distinct !{!112, !49, !50}
!113 = !{!108, !45, i64 8948}
!114 = !{!115, !45, i64 208}
!115 = !{!"ARegion", !36, i64 0, !36, i64 8, !42, i64 16, !44, i64 176, !44, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !41, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!116 = !{!42, !41, i64 28}
!117 = distinct !{!117, !49, !50}
!118 = distinct !{!118, !49, !50}
!119 = distinct !{!119, !49, !50}
!120 = distinct !{!120, !49, !50}
!121 = !{!40, !40, i64 0}
