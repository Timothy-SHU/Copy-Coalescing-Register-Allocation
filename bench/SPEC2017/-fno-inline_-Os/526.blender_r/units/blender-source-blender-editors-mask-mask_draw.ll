; ModuleID = 'blender/source/blender/editors/mask/mask_draw.c'
source_filename = "blender/source/blender/editors/mask/mask_draw.c"
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
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.ThreadedMaskRasterizeState = type { ptr, ptr, i32, i32 }
%struct.ThreadedMaskRasterizeData = type { i32, i32 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskSplinePointUW = type { float, float, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"undistorthed mask curve\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@draw_circle.wire_displist = internal unnamed_addr global i32 0, align 4
@draw_circle.fill_displist = internal unnamed_addr global i32 0, align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"rasterized mask buffer\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"threaded mask rasterize data\00", align 1
@switch.table.draw_single_handle = private unnamed_addr constant [6 x i32] [i32 54, i32 55, i32 54, i32 57, i32 54, i32 57], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_draw(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %12 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  call void @ED_mask_get_size(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  call void @ED_mask_get_aspect(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %15 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  call void @UI_view2d_scale_get(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %16 = load i32, ptr %4, align 4, !tbaa !34
  %17 = load i32, ptr %5, align 4, !tbaa !34
  %18 = load float, ptr %8, align 4, !tbaa !38
  %19 = load float, ptr %6, align 4, !tbaa !38
  %20 = fmul float %18, %19
  %21 = load float, ptr %9, align 4, !tbaa !38
  %22 = load float, ptr %7, align 4, !tbaa !38
  %23 = fmul float %21, %22
  call fastcc void @draw_masklays(ptr noundef %0, ptr noundef nonnull %12, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %16, i32 noundef %17, float noundef %20, float noundef %23) #11
  br label %24

24:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_get_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_masklays(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) unnamed_addr #0 !PGOFuncName !40 {
  %9 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 3
  br label %14

14:                                               ; preds = %12, %37
  %15 = phi ptr [ %10, %12 ], [ %39, %37 ]
  %16 = phi i32 [ 0, %12 ], [ %38, %37 ]
  %17 = load i32, ptr %13, align 8, !tbaa !43
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %15, i64 0, i32 13
  %21 = load i8, ptr %20, align 1, !tbaa !48
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.MaskLayer, ptr %15, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %34
  %29 = phi ptr [ %35, %34 ], [ %26, %24 ]
  tail call fastcc void @draw_spline_curve(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %29, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %19, i32 noundef %4, i32 noundef %5) #11
  %30 = load i8, ptr %20, align 1, !tbaa !48
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call fastcc void @draw_spline_points(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %29, i8 noundef zeroext %2, i8 noundef zeroext %3, float noundef %6, float noundef %7) #11
  br label %34

34:                                               ; preds = %28, %33
  %35 = load ptr, ptr %29, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !50

37:                                               ; preds = %34, %24, %14
  %38 = add nuw nsw i32 %16, 1
  %39 = load ptr, ptr %15, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %14, !llvm.loop !52

41:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_draw_region(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %17 = sitofp i32 %5 to float
  %18 = sitofp i32 %6 to float
  %19 = fdiv float %8, %7
  %20 = fmul float %19, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  call void @UI_view2d_view_to_region(ptr noundef nonnull %16, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %22 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %21) #11
  %23 = add nsw i32 %22, 1
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %26 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %25) #11
  %27 = fdiv float %24, %26
  %28 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %21) #11
  %29 = add nsw i32 %28, 1
  %30 = sitofp i32 %29 to float
  %31 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %25) #11
  %32 = fdiv float %30, %31
  %33 = icmp eq i8 %9, 0
  %34 = select i1 %33, float 1.000000e+00, float %20
  %35 = fdiv float %32, %34
  %36 = select i1 %33, float 1.000000e+00, float %17
  %37 = fdiv float %27, %36
  %38 = load float, ptr %16, align 8, !tbaa !53
  %39 = load i32, ptr %14, align 4, !tbaa !34
  %40 = sitofp i32 %39 to float
  %41 = call float @llvm.fmuladd.f32(float %38, float %37, float %40)
  %42 = fptosi float %41 to i32
  store i32 %42, ptr %14, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  %44 = load float, ptr %43, align 8, !tbaa !57
  %45 = load i32, ptr %15, align 4, !tbaa !34
  %46 = sitofp i32 %45 to float
  %47 = call float @llvm.fmuladd.f32(float %44, float %35, float %46)
  %48 = fptosi float %47 to i32
  store i32 %48, ptr %15, align 4, !tbaa !34
  %49 = call fastcc float @max_ff(float noundef %17, float noundef %20) #11
  %50 = fcmp oeq float %20, %17
  br i1 %50, label %61, label %51

51:                                               ; preds = %13
  %52 = fcmp ogt float %20, %17
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = fsub float %20, %17
  %55 = fmul float %54, -5.000000e-01
  %56 = fmul float %55, %37
  br label %61

57:                                               ; preds = %51
  %58 = fsub float %17, %20
  %59 = fmul float %58, -5.000000e-01
  %60 = fmul float %59, %35
  br label %61

61:                                               ; preds = %13, %53, %57
  %62 = phi float [ %56, %53 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %13 ]
  %63 = phi float [ 0.000000e+00, %53 ], [ %60, %57 ], [ 0.000000e+00, %13 ]
  %64 = and i8 %2, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %61
  %67 = fptosi float %17 to i32
  %68 = fptosi float %20 to i32
  %69 = call fastcc ptr @threaded_mask_rasterize(ptr noundef %0, i32 noundef %67, i32 noundef %68) #11
  %70 = icmp eq i8 %4, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  br label %73

72:                                               ; preds = %66
  call void @glEnable(i32 noundef 3042) #9
  call void @glBlendFunc(i32 noundef 774, i32 noundef 770) #9
  br label %73

73:                                               ; preds = %72, %71
  %74 = phi i32 [ 6409, %71 ], [ 6406, %72 ]
  call void @glPushMatrix() #9
  %75 = load i32, ptr %14, align 4, !tbaa !34
  %76 = sitofp i32 %75 to float
  %77 = load i32, ptr %15, align 4, !tbaa !34
  %78 = sitofp i32 %77 to float
  call void @glTranslatef(float noundef %76, float noundef %78, float noundef 0.000000e+00) #9
  call void @glScalef(float noundef %37, float noundef %35, float noundef 0.000000e+00) #9
  %79 = icmp eq ptr %11, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  call void @glMultMatrixf(ptr noundef nonnull %11) #9
  br label %81

81:                                               ; preds = %80, %73
  call void @glaDrawPixelsTex(float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %67, i32 noundef %68, i32 noundef %74, i32 noundef 5126, i32 noundef 9728, ptr noundef %69) #9
  call void @glPopMatrix() #9
  br i1 %70, label %83, label %82

82:                                               ; preds = %81
  call void @glDisable(i32 noundef 3042) #9
  br label %83

83:                                               ; preds = %82, %81
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %84(ptr noundef %69) #9
  br label %85

85:                                               ; preds = %83, %61
  call void @glPushMatrix() #9
  %86 = icmp eq ptr %11, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %85
  call void @glMultMatrixf(ptr noundef nonnull %11) #9
  br label %88

88:                                               ; preds = %87, %85
  %89 = load i32, ptr %14, align 4, !tbaa !34
  %90 = sitofp i32 %89 to float
  %91 = fadd float %62, %90
  %92 = load i32, ptr %15, align 4, !tbaa !34
  %93 = sitofp i32 %92 to float
  %94 = fadd float %63, %93
  call void @glTranslatef(float noundef %91, float noundef %94, float noundef 0.000000e+00) #9
  %95 = fmul float %37, %49
  %96 = fmul float %35, %49
  call void @glScalef(float noundef %95, float noundef %96, float noundef 0.000000e+00) #9
  %97 = icmp eq i8 %10, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  call void @ED_region_draw_cb_draw(ptr noundef %12, ptr noundef nonnull %1, i32 noundef 2) #9
  %99 = fptosi float %17 to i32
  %100 = fptosi float %20 to i32
  call fastcc void @draw_masklays(ptr noundef %12, ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %99, i32 noundef %100, float noundef %95, float noundef %96) #11
  call void @ED_region_draw_cb_draw(ptr noundef %12, ptr noundef nonnull %1, i32 noundef 0) #9
  br label %104

101:                                              ; preds = %88
  %102 = fptosi float %17 to i32
  %103 = fptosi float %20 to i32
  call fastcc void @draw_masklays(ptr noundef %12, ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %102, i32 noundef %103, float noundef %95, float noundef %96) #11
  br label %104

104:                                              ; preds = %101, %98
  call void @glPopMatrix() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = load i32, ptr %0, align 4, !tbaa !60
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !62
  %4 = load float, ptr %0, align 4, !tbaa !63
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !68
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !69
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !70 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @threaded_mask_rasterize(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !71 {
  %4 = alloca %struct.ThreadedMaskRasterizeState, align 8
  %5 = tail call ptr @BLI_task_scheduler_get() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %6 = tail call i32 @BLI_task_scheduler_num_threads(ptr noundef %5) #9
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %8 = sext i32 %2 to i64
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 2
  %11 = mul i64 %10, %8
  %12 = tail call ptr %7(i64 noundef %11, ptr noundef nonnull @.str.1) #9
  %13 = tail call ptr @BKE_maskrasterize_handle_new() #9
  tail call void @BKE_maskrasterize_handle_init(ptr noundef %13, ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  store ptr %13, ptr %4, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %4, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %4, i64 0, i32 2
  store i32 %1, ptr %15, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %4, i64 0, i32 3
  store i32 %2, ptr %16, align 4, !tbaa !76
  %17 = call ptr @BLI_task_pool_create(ptr noundef %5, ptr noundef nonnull %4) #9
  %18 = sdiv i32 %2, %6
  %19 = icmp sgt i32 %6, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = add nsw i32 %6, -1
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i32 [ 0, %20 ], [ %31, %22 ]
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %25 = call ptr %24(i64 noundef 8, ptr noundef nonnull @.str.2) #9
  %26 = mul nsw i32 %23, %18
  store i32 %26, ptr %25, align 4, !tbaa !77
  %27 = icmp slt i32 %23, %21
  %28 = sub nsw i32 %2, %26
  %29 = select i1 %27, i32 %18, i32 %28
  %30 = getelementptr inbounds %struct.ThreadedMaskRasterizeData, ptr %25, i64 0, i32 1
  store i32 %29, ptr %30, align 4
  call void @BLI_task_pool_push(ptr noundef %17, ptr noundef nonnull @mask_rasterize_func, ptr noundef nonnull %25, i8 noundef zeroext 1, i32 noundef 0) #9
  %31 = add nuw nsw i32 %23, 1
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %22, !llvm.loop !79

33:                                               ; preds = %22, %3
  call void @BLI_task_pool_work_and_wait(ptr noundef %17) #9
  call void @BLI_task_pool_free(ptr noundef %17) #9
  call void @BKE_maskrasterize_handle_free(ptr noundef %13) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret ptr %12
}

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_draw_frames(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %7 = load i16, ptr %6, align 8, !tbaa !80
  %8 = sitofp i16 %7 to float
  %9 = sub i32 %4, %3
  %10 = add i32 %9, 1
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %8, %11
  %13 = tail call ptr @BKE_mask_layer_active(ptr noundef %0) #9
  tail call void @glBegin(i32 noundef 1) #9
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -81, i8 noundef zeroext 0, i8 noundef zeroext -1) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %29, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.MaskLayerShape, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !82
  %23 = icmp eq i32 %22, %2
  %24 = select i1 %23, i32 22, i32 10
  %25 = sub nsw i32 %22, %3
  %26 = sitofp i32 %25 to float
  %27 = fmul float %12, %26
  %28 = fptosi float %27 to i32
  tail call void @glVertex2i(i32 noundef %28, i32 noundef 0) #9
  tail call void @glVertex2i(i32 noundef %28, i32 noundef %24) #9
  %29 = load ptr, ptr %20, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !84

31:                                               ; preds = %19, %15, %5
  tail call void @glEnd() #9
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2i(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_spline_curve(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !85 {
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x float], align 4
  %13 = tail call i32 @BKE_mask_spline_feather_resolution(ptr noundef %2, i32 noundef %6, i32 noundef %7) #9
  %14 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %2, i32 noundef %6, i32 noundef %7) #9
  %15 = tail call fastcc i32 @max_ii(i32 noundef %13, i32 noundef %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !86
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 13
  %22 = load i8, ptr %21, align 1, !tbaa !48
  %23 = lshr i8 %22, 1
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  br label %26

26:                                               ; preds = %20, %8
  %27 = phi i8 [ 0, %8 ], [ %25, %20 ]
  %28 = and i8 %3, 1
  %29 = icmp eq i8 %28, 0
  %30 = and i16 %17, 4
  %31 = icmp eq i16 %30, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %32 = call ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef nonnull %2, ptr noundef nonnull %10, i32 noundef %15) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %26
  br i1 %29, label %36, label %35

35:                                               ; preds = %34
  call void @glEnable(i32 noundef 2848) #9
  call void @glEnable(i32 noundef 3042) #9
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  br label %36

36:                                               ; preds = %35, %34
  %37 = zext i1 %31 to i8
  %38 = call ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef nonnull %2, ptr noundef nonnull %11, i32 noundef %15, i8 noundef zeroext %37) #9
  call fastcc void @mask_spline_feather_color_get(i8 noundef zeroext %27, ptr noundef nonnull %9) #11
  %39 = load i32, ptr %11, align 4, !tbaa !34
  call fastcc void @mask_draw_curve_type(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %38, i32 noundef %39, i8 noundef zeroext 1, i8 noundef zeroext %28, i8 noundef zeroext %5, ptr noundef nonnull %9, i8 noundef zeroext %4) #11
  br i1 %31, label %54, label %40

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  %41 = load i32, ptr %10, align 4, !tbaa !34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40, %43
  %44 = phi i32 [ %47, %43 ], [ 0, %40 ]
  %45 = phi ptr [ %49, %43 ], [ %38, %40 ]
  %46 = phi ptr [ %48, %43 ], [ %32, %40 ]
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %46, ptr noundef %45) #11
  call fastcc void @add_v2_v2v2(ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %12) #11
  %47 = add nuw nsw i32 %44, 1
  %48 = getelementptr inbounds float, ptr %46, i64 2
  %49 = getelementptr inbounds float, ptr %45, i64 2
  %50 = load i32, ptr %10, align 4, !tbaa !34
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %43, label %52, !llvm.loop !89

52:                                               ; preds = %43, %40
  %53 = load i32, ptr %11, align 4, !tbaa !34
  call fastcc void @mask_draw_curve_type(ptr noundef %0, ptr noundef %2, ptr noundef %38, i32 noundef %53, i8 noundef zeroext 1, i8 noundef zeroext %28, i8 noundef zeroext %5, ptr noundef nonnull %9, i8 noundef zeroext %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  br label %54

54:                                               ; preds = %52, %36
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %55(ptr noundef %38) #9
  call fastcc void @mask_spline_color_get(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %27, ptr noundef nonnull %9) #11
  %56 = load i32, ptr %10, align 4, !tbaa !34
  call fastcc void @mask_draw_curve_type(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %32, i32 noundef %56, i8 noundef zeroext 0, i8 noundef zeroext %28, i8 noundef zeroext %5, ptr noundef nonnull %9, i8 noundef zeroext %4) #11
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %57(ptr noundef nonnull %32) #9
  br i1 %29, label %59, label %58

58:                                               ; preds = %54
  call void @glDisable(i32 noundef 2848) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %59

59:                                               ; preds = %54, %58, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_spline_points(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %5, float noundef %6) unnamed_addr #0 !PGOFuncName !90 {
  %8 = alloca i32, align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 8
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !86
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 13
  %22 = load i8, ptr %21, align 1, !tbaa !48
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br label %25

25:                                               ; preds = %20, %7
  %26 = phi i1 [ false, %7 ], [ %24, %20 ]
  %27 = and i8 %3, 1
  %28 = tail call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %2) #9
  %29 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %2, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !91
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %174, label %33

33:                                               ; preds = %25
  %34 = icmp eq ptr %29, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.SpaceClip, ptr %29, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.SpaceClip, ptr %29, i64 0, i32 9, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !98
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br label %44

44:                                               ; preds = %35, %39, %33
  %45 = phi i1 [ true, %33 ], [ true, %35 ], [ %43, %39 ]
  %46 = tail call float @UI_GetThemeValuef(i32 noundef 130) #9
  %47 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !99
  %48 = fmul float %46, %47
  %49 = fptosi float %48 to i32
  %50 = sitofp i32 %49 to float
  tail call void @glPointSize(float noundef %50) #9
  %51 = call ptr @BKE_mask_spline_feather_points(ptr noundef nonnull %2, ptr noundef nonnull %8) #9
  %52 = load i32, ptr %30, align 4, !tbaa !91
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %113

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.MaskSpline, ptr %2, i64 0, i32 6
  %56 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 6
  br label %57

57:                                               ; preds = %54, %107
  %58 = phi i32 [ %52, %54 ], [ %108, %107 ]
  %59 = phi i64 [ 0, %54 ], [ %110, %107 ]
  %60 = phi ptr [ %51, %54 ], [ %109, %107 ]
  %61 = load ptr, ptr %55, align 8, !tbaa !103
  %62 = getelementptr inbounds %struct.MaskSplinePoint, ptr %61, i64 %59
  %63 = getelementptr inbounds %struct.MaskSplinePoint, ptr %61, i64 %59, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !104
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %107, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.MaskSplinePoint, ptr %61, i64 %59, i32 3
  %68 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 7
  %69 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 8
  %70 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 9
  br label %71

71:                                               ; preds = %66, %99
  %72 = phi i64 [ 0, %66 ], [ %101, %99 ]
  %73 = phi ptr [ %60, %66 ], [ %100, %99 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call fastcc void @copy_v2_v2(ptr noundef nonnull %11, ptr noundef %73) #11
  br i1 %45, label %75, label %74

74:                                               ; preds = %71
  call fastcc void @mask_point_undistort_pos(ptr noundef %29, ptr noundef nonnull %11, ptr noundef nonnull %11) #11
  br label %75

75:                                               ; preds = %74, %71
  %76 = icmp eq i64 %72, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = load i8, ptr %68, align 1, !tbaa !107
  %79 = load i8, ptr %69, align 4, !tbaa !108
  %80 = or i8 %79, %78
  %81 = load i8, ptr %70, align 1, !tbaa !109
  %82 = or i8 %80, %81
  br label %89

83:                                               ; preds = %75
  %84 = load ptr, ptr %67, align 8, !tbaa !110
  %85 = getelementptr %struct.MaskSplinePointUW, ptr %84, i64 %72
  %86 = getelementptr %struct.MaskSplinePointUW, ptr %85, i64 -1, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !111
  %88 = trunc i32 %87 to i8
  br label %89

89:                                               ; preds = %83, %77
  %90 = phi i8 [ %82, %77 ], [ %88, %83 ]
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %56, align 8, !tbaa !113
  %95 = icmp eq ptr %62, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  br label %99

97:                                               ; preds = %93
  call void @UI_ThemeColor(i32 noundef 129) #9
  br label %99

98:                                               ; preds = %89
  call void @UI_ThemeColor(i32 noundef 128) #9
  br label %99

99:                                               ; preds = %96, %97, %98
  call void @glBegin(i32 noundef 0) #9
  call void @glVertex2fv(ptr noundef nonnull %11) #9
  call void @glEnd() #9
  %100 = getelementptr inbounds [2 x float], ptr %73, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  %101 = add nuw nsw i64 %72, 1
  %102 = load i32, ptr %63, align 4, !tbaa !104
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %72, %103
  br i1 %104, label %71, label %105, !llvm.loop !114

105:                                              ; preds = %99
  %106 = load i32, ptr %30, align 4, !tbaa !91
  br label %107

107:                                              ; preds = %105, %57
  %108 = phi i32 [ %58, %57 ], [ %106, %105 ]
  %109 = phi ptr [ %60, %57 ], [ %100, %105 ]
  %110 = add nuw nsw i64 %59, 1
  %111 = sext i32 %108 to i64
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %57, label %113, !llvm.loop !115

113:                                              ; preds = %107, %44
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %114(ptr noundef %51) #9
  %115 = icmp eq i8 %27, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void @glEnable(i32 noundef 2848) #9
  call void @glEnable(i32 noundef 3042) #9
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  br label %117

117:                                              ; preds = %116, %113
  %118 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %9, align 8, !tbaa !38
  %119 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %10, align 8, !tbaa !38
  %120 = load i32, ptr %30, align 4, !tbaa !91
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.MaskSpline, ptr %2, i64 0, i32 6
  %124 = zext i8 %4 to i32
  %125 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 6
  br label %126

126:                                              ; preds = %122, %153
  %127 = phi i64 [ 0, %122 ], [ %154, %153 ]
  %128 = load ptr, ptr %123, align 8, !tbaa !103
  %129 = getelementptr inbounds %struct.MaskSplinePoint, ptr %128, i64 %127
  %130 = getelementptr inbounds %struct.MaskSplinePoint, ptr %28, i64 %127
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  %131 = getelementptr inbounds [3 x [3 x float]], ptr %130, i64 0, i64 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %131) #11
  br i1 %45, label %133, label %132

132:                                              ; preds = %126
  call fastcc void @mask_point_undistort_pos(ptr noundef %29, ptr noundef nonnull %12, ptr noundef nonnull %12) #11
  br label %133

133:                                              ; preds = %132, %126
  %134 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef %129) #9
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  call void @BKE_mask_point_handle(ptr noundef %130, i32 noundef 1, ptr noundef nonnull %13) #9
  br i1 %45, label %138, label %137

137:                                              ; preds = %136
  call fastcc void @mask_point_undistort_pos(ptr noundef %29, ptr noundef nonnull %13, ptr noundef nonnull %13) #11
  br label %138

138:                                              ; preds = %137, %136
  call fastcc void @draw_single_handle(ptr noundef %1, ptr noundef %129, i32 noundef 1, i32 noundef %124, float noundef %50, float noundef %5, float noundef %6, ptr noundef nonnull %12, ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  br label %142

139:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  call void @BKE_mask_point_handle(ptr noundef %130, i32 noundef 2, ptr noundef nonnull %14) #9
  call void @BKE_mask_point_handle(ptr noundef %130, i32 noundef 3, ptr noundef nonnull %15) #9
  br i1 %45, label %141, label %140

140:                                              ; preds = %139
  call fastcc void @mask_point_undistort_pos(ptr noundef %29, ptr noundef nonnull %14, ptr noundef nonnull %14) #11
  call fastcc void @mask_point_undistort_pos(ptr noundef %29, ptr noundef nonnull %14, ptr noundef nonnull %14) #11
  br label %141

141:                                              ; preds = %140, %139
  call fastcc void @draw_single_handle(ptr noundef %1, ptr noundef %129, i32 noundef 2, i32 noundef %124, float noundef %50, float noundef %5, float noundef %6, ptr noundef nonnull %12, ptr noundef nonnull %14) #11
  call fastcc void @draw_single_handle(ptr noundef %1, ptr noundef %129, i32 noundef 3, i32 noundef %124, float noundef %50, float noundef %5, float noundef %6, ptr noundef nonnull %12, ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  br label %142

142:                                              ; preds = %141, %138
  %143 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 8
  %144 = load i8, ptr %143, align 4, !tbaa !108
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %125, align 8, !tbaa !113
  %149 = icmp eq ptr %129, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  br label %153

151:                                              ; preds = %147
  call void @UI_ThemeColor(i32 noundef 129) #9
  br label %153

152:                                              ; preds = %142
  call void @UI_ThemeColor(i32 noundef 128) #9
  br label %153

153:                                              ; preds = %150, %151, %152
  call void @glBegin(i32 noundef 0) #9
  call void @glVertex2fv(ptr noundef nonnull %12) #9
  call void @glEnd() #9
  call void @minmax_v2v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  %154 = add nuw nsw i64 %127, 1
  %155 = load i32, ptr %30, align 4, !tbaa !91
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %154, %156
  br i1 %157, label %126, label %158, !llvm.loop !116

158:                                              ; preds = %153, %117
  br i1 %26, label %159, label %172

159:                                              ; preds = %158
  %160 = load float, ptr %9, align 8, !tbaa !38
  %161 = load float, ptr %10, align 8, !tbaa !38
  %162 = fadd float %160, %161
  %163 = fmul float %162, 5.000000e-01
  %164 = load float, ptr %118, align 4, !tbaa !38
  %165 = load float, ptr %119, align 4, !tbaa !38
  %166 = fadd float %164, %165
  %167 = fmul float %166, 5.000000e-01
  %168 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !117
  %170 = icmp eq ptr %169, %2
  %171 = sext i1 %170 to i8
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext %171) #9
  call fastcc void @draw_circle(float noundef %163, float noundef %167, float noundef 6.000000e+00, i8 noundef zeroext 1, float noundef %5, float noundef %6) #11
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  call fastcc void @draw_circle(float noundef %163, float noundef %167, float noundef 6.000000e+00, i8 noundef zeroext 0, float noundef %5, float noundef %6) #11
  br label %172

172:                                              ; preds = %159, %158
  call void @glPointSize(float noundef 1.000000e+00) #9
  br i1 %115, label %174, label %173

173:                                              ; preds = %172
  call void @glDisable(i32 noundef 2848) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %174

174:                                              ; preds = %172, %173, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !118 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BKE_mask_spline_feather_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_mask_spline_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @mask_spline_feather_color_get(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !PGOFuncName !119 {
  %3 = icmp eq i8 %0, 0
  %4 = select i1 %3, i8 -128, i8 -1
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %4, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 0, ptr %6, align 1
  store i8 0, ptr %1, align 1, !tbaa !120
  %7 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 -1, ptr %7, align 1, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_draw_curve_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr nocapture noundef readonly %7, i8 noundef zeroext %8) unnamed_addr #0 !PGOFuncName !121 {
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 1
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !86
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 -16777216, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %17 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 9, i32 2
  %25 = load i16, ptr %24, align 2, !tbaa !98
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %30 = shl nsw i32 %3, 1
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call ptr %29(i64 noundef %32, ptr noundef nonnull @.str) #9
  %34 = icmp sgt i32 %3, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = zext nneg i32 %3 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %41, %37 ]
  %39 = getelementptr inbounds [2 x float], ptr %33, i64 %38
  %40 = getelementptr inbounds [2 x float], ptr %2, i64 %38
  tail call fastcc void @mask_point_undistort_pos(ptr noundef nonnull %17, ptr noundef %39, ptr noundef %40) #11
  %41 = add nuw nsw i64 %38, 1
  %42 = icmp eq i64 %41, %36
  br i1 %42, label %43, label %37, !llvm.loop !122

43:                                               ; preds = %37, %28, %23, %19, %9
  %44 = phi ptr [ %2, %9 ], [ %2, %23 ], [ %2, %19 ], [ %33, %28 ], [ %33, %37 ]
  tail call void @glEnableClientState(i32 noundef 32884) #9
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %44) #9
  switch i8 %8, label %46 [
    i8 0, label %45
    i8 2, label %48
    i8 3, label %47
  ]

45:                                               ; preds = %43
  tail call void @glLineWidth(float noundef 3.000000e+00) #9
  call fastcc void @mask_color_active_tint(ptr noundef nonnull %11, ptr noundef nonnull %10, i8 noundef zeroext %6) #11
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @glDrawArrays(i32 noundef %16, i32 noundef 0, i32 noundef %3) #9
  call void @glLineWidth(float noundef 1.000000e+00) #9
  call fastcc void @mask_color_active_tint(ptr noundef nonnull %11, ptr noundef %7, i8 noundef zeroext %6) #11
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @glDrawArrays(i32 noundef %16, i32 noundef 0, i32 noundef %3) #9
  br label %79

46:                                               ; preds = %43
  tail call void @glEnable(i32 noundef 2852) #9
  call fastcc void @mask_color_active_tint(ptr noundef nonnull %11, ptr noundef %7, i8 noundef zeroext %6) #11
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #9
  call void @glEnableClientState(i32 noundef 32884) #9
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %44) #9
  call void @glDrawArrays(i32 noundef %16, i32 noundef 0, i32 noundef %3) #9
  call fastcc void @mask_color_active_tint(ptr noundef nonnull %11, ptr noundef nonnull %10, i8 noundef zeroext %6) #11
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext 21845) #9
  call void @glDrawArrays(i32 noundef %16, i32 noundef 0, i32 noundef %3) #9
  call void @glDisable(i32 noundef 2852) #9
  br label %79

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %43, %47
  %49 = phi i8 [ -1, %47 ], [ 0, %43 ]
  %50 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 2
  store i8 %49, ptr %50, align 1, !tbaa !120
  %51 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 1
  store i8 %49, ptr %51, align 1, !tbaa !120
  store i8 %49, ptr %11, align 1, !tbaa !120
  %52 = icmp eq i8 %4, 0
  %53 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  br i1 %52, label %54, label %55

54:                                               ; preds = %48
  store i8 -128, ptr %53, align 1, !tbaa !120
  br label %78

55:                                               ; preds = %48
  store i8 64, ptr %53, align 1, !tbaa !120
  %56 = zext i8 %49 to i16
  %57 = load i8, ptr %7, align 1, !tbaa !120
  %58 = zext i8 %57 to i16
  %59 = add nuw nsw i16 %58, %56
  %60 = lshr i16 %59, 1
  %61 = trunc i16 %60 to i8
  store i8 %61, ptr %11, align 1, !tbaa !120
  %62 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 1
  %63 = getelementptr inbounds i8, ptr %7, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !120
  %65 = zext i8 %64 to i16
  %66 = add nuw nsw i16 %65, %56
  %67 = lshr i16 %66, 1
  %68 = trunc i16 %67 to i8
  store i8 %68, ptr %62, align 1, !tbaa !120
  %69 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 2
  %70 = getelementptr inbounds i8, ptr %7, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !120
  %72 = zext i8 %71 to i16
  %73 = add nuw nsw i16 %72, %56
  %74 = lshr i16 %73, 1
  %75 = trunc i16 %74 to i8
  store i8 %75, ptr %69, align 1, !tbaa !120
  %76 = icmp eq i8 %5, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %55
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  call fastcc void @mask_color_active_tint(ptr noundef nonnull %11, ptr noundef nonnull %11, i8 noundef zeroext %6) #11
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @glEnableClientState(i32 noundef 32884) #9
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %44) #9
  call void @glDrawArrays(i32 noundef %16, i32 noundef 0, i32 noundef %3) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %79

78:                                               ; preds = %54, %55
  call fastcc void @mask_color_active_tint(ptr noundef nonnull %11, ptr noundef nonnull %11, i8 noundef zeroext %6) #11
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @glEnableClientState(i32 noundef 32884) #9
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %44) #9
  call void @glDrawArrays(i32 noundef %16, i32 noundef 0, i32 noundef %3) #9
  br label %79

79:                                               ; preds = %78, %77, %46, %45
  call void @glDisableClientState(i32 noundef 32884) #9
  %80 = icmp eq ptr %44, %2
  br i1 %80, label %83, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %82(ptr noundef %44) #9
  br label %83

83:                                               ; preds = %81, %79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !123 {
  %4 = load float, ptr %1, align 4, !tbaa !38
  %5 = load float, ptr %2, align 4, !tbaa !38
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !124 {
  %4 = load float, ptr %1, align 4, !tbaa !38
  %5 = load float, ptr %2, align 4, !tbaa !38
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mask_spline_color_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 !PGOFuncName !125 {
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 -1, ptr %11, align 1, !tbaa !120
  %12 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 -1, ptr %12, align 1, !tbaa !120
  store i8 -1, ptr %3, align 1, !tbaa !120
  br label %19

13:                                               ; preds = %6
  store i8 -1, ptr %3, align 1, !tbaa !120
  %14 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 0, ptr %14, align 1, !tbaa !120
  %15 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 0, ptr %15, align 1, !tbaa !120
  br label %19

16:                                               ; preds = %4
  store i8 -128, ptr %3, align 1, !tbaa !120
  %17 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 0, ptr %17, align 1, !tbaa !120
  %18 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 0, ptr %18, align 1, !tbaa !120
  br label %19

19:                                               ; preds = %10, %13, %16
  %20 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 -1, ptr %20, align 1, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_point_undistort_pos(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !126 {
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  tail call void @BKE_mask_coord_to_movieclip(ptr noundef %5, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #9
  tail call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef %1, ptr noundef %1) #9
  %7 = load ptr, ptr %4, align 8, !tbaa !92
  tail call void @BKE_mask_coord_from_movieclip(ptr noundef %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mask_color_active_tint(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #7 !PGOFuncName !127 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !120
  %7 = zext i8 %6 to i16
  %8 = add nuw nsw i16 %7, 128
  %9 = lshr i16 %8, 1
  %10 = trunc i16 %9 to i8
  store i8 %10, ptr %0, align 1, !tbaa !120
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !120
  %13 = zext i8 %12 to i16
  %14 = add nuw nsw i16 %13, 128
  %15 = lshr i16 %14, 1
  %16 = trunc i16 %15 to i8
  %17 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %16, ptr %17, align 1, !tbaa !120
  %18 = getelementptr inbounds i8, ptr %1, i64 2
  %19 = load i8, ptr %18, align 1, !tbaa !120
  %20 = zext i8 %19 to i16
  %21 = add nuw nsw i16 %20, 128
  %22 = lshr i16 %21, 1
  %23 = trunc i16 %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %23, ptr %24, align 1, !tbaa !120
  %25 = getelementptr inbounds i8, ptr %1, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !120
  %27 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %26, ptr %27, align 1, !tbaa !120
  br label %30

28:                                               ; preds = %3
  %29 = load i32, ptr %1, align 4, !tbaa !34
  store i32 %29, ptr %0, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %28, %5
  ret void
}

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_to_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_clip_point_undistorted_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_spline_feather_points(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !128 {
  %3 = load float, ptr %1, align 4, !tbaa !38
  store float %3, ptr %0, align 4, !tbaa !38
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_mask_point_handles_mode_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_point_handle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_single_handle(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !PGOFuncName !129 {
  %10 = alloca [4 x i8], align 4
  %11 = add i32 %2, -1
  %12 = icmp ult i32 %11, 2
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load i8, ptr %15, align 1, !tbaa !120
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %59, label %18

18:                                               ; preds = %9
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 -10461088, ptr %10, align 4
  tail call void @glLineWidth(float noundef 3.000000e+00) #9
  call void @glColor4ubv(ptr noundef nonnull %10) #9
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex2fv(ptr noundef %7) #9
  call void @glVertex2fv(ptr noundef %8) #9
  call void @glEnd() #9
  call void @glLineWidth(float noundef 1.000000e+00) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br label %21

21:                                               ; preds = %20, %18
  %22 = icmp ult i8 %16, 6
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = lshr i8 43, %16
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = zext nneg i8 %16 to i64
  %29 = getelementptr inbounds [6 x i32], ptr @switch.table.draw_single_handle, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  call void @UI_ThemeColor(i32 noundef %30) #9
  br label %31

31:                                               ; preds = %23, %21, %27
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex2fv(ptr noundef %7) #9
  call void @glVertex2fv(ptr noundef %8) #9
  call void @glEnd() #9
  switch i32 %2, label %41 [
    i32 1, label %32
    i32 2, label %38
  ]

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %34 = load i8, ptr %33, align 1, !tbaa !107
  %35 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %36 = load i8, ptr %35, align 1, !tbaa !109
  %37 = or i8 %36, %34
  br label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %40 = load i8, ptr %39, align 1, !tbaa !107
  br label %44

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %43 = load i8, ptr %42, align 1, !tbaa !109
  br label %44

44:                                               ; preds = %38, %41, %32
  %45 = phi i8 [ %37, %32 ], [ %40, %38 ], [ %43, %41 ]
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !113
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  br label %55

53:                                               ; preds = %48
  call void @UI_ThemeColor(i32 noundef 129) #9
  br label %55

54:                                               ; preds = %44
  call void @UI_ThemeColor(i32 noundef 128) #9
  br label %55

55:                                               ; preds = %52, %53, %54
  %56 = load float, ptr %8, align 4, !tbaa !38
  %57 = getelementptr inbounds float, ptr %8, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !38
  call fastcc void @draw_circle(float noundef %56, float noundef %58, float noundef %4, i8 noundef zeroext 0, float noundef %5, float noundef %6) #11
  br label %59

59:                                               ; preds = %9, %55
  ret void
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_circle(float noundef %0, float noundef %1, float noundef %2, i8 noundef zeroext %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !130 {
  %7 = icmp eq i8 %3, 0
  %8 = load i32, ptr @draw_circle.fill_displist, align 4
  %9 = load i32, ptr @draw_circle.wire_displist, align 4
  %10 = select i1 %7, i32 %9, i32 %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = tail call i32 @glGenLists(i32 noundef 1) #9
  tail call void @glNewList(i32 noundef %13, i32 noundef 4864) #9
  %14 = tail call ptr @gluNewQuadric() #9
  %15 = select i1 %7, i32 100013, i32 100012
  tail call void @gluQuadricDrawStyle(ptr noundef %14, i32 noundef %15) #9
  tail call void @gluDisk(ptr noundef %14, double noundef 0.000000e+00, double noundef 0x3FE6666666666666, i32 noundef 8, i32 noundef 1) #9
  tail call void @gluDeleteQuadric(ptr noundef %14) #9
  tail call void @glEndList() #9
  %16 = select i1 %7, ptr @draw_circle.wire_displist, ptr @draw_circle.fill_displist
  store i32 %13, ptr %16, align 4, !tbaa !34
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i32 [ %10, %6 ], [ %13, %12 ]
  tail call void @glPushMatrix() #9
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #9
  %19 = fdiv float 1.000000e+00, %4
  %20 = fmul float %19, %2
  %21 = fdiv float 1.000000e+00, %5
  %22 = fmul float %21, %2
  tail call void @glScalef(float noundef %20, float noundef %22, float noundef 1.000000e+00) #9
  tail call void @glCallList(i32 noundef %18) #9
  tail call void @glPopMatrix() #9
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
declare void @glCallList(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_get() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_task_scheduler_num_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_maskrasterize_handle_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_maskrasterize_handle_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mask_rasterize_func(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2) #0 !PGOFuncName !131 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !75
  %8 = sitofp i32 %7 to float
  %9 = fdiv float 1.000000e+00, %8
  %10 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %5, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = sitofp i32 %11 to float
  %13 = fdiv float 1.000000e+00, %12
  %14 = fmul float %9, 5.000000e-01
  %15 = fmul float %13, 5.000000e-01
  %16 = getelementptr inbounds %struct.ThreadedMaskRasterizeData, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !132
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %3
  %20 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %21 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %5, i64 0, i32 1
  br label %22

22:                                               ; preds = %19, %48
  %23 = phi i32 [ %17, %19 ], [ %49, %48 ]
  %24 = phi i32 [ %7, %19 ], [ %50, %48 ]
  %25 = phi i32 [ 0, %19 ], [ %51, %48 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %26 = load i32, ptr %1, align 4, !tbaa !77
  %27 = add nsw i32 %26, %25
  %28 = sitofp i32 %27 to float
  %29 = call float @llvm.fmuladd.f32(float %28, float %13, float %15)
  store float %29, ptr %20, align 4, !tbaa !38
  %30 = icmp sgt i32 %24, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %22, %31
  %32 = phi i32 [ %44, %31 ], [ %24, %22 ]
  %33 = phi i32 [ %43, %31 ], [ 0, %22 ]
  %34 = mul nsw i32 %32, %27
  %35 = add nsw i32 %34, %33
  %36 = sitofp i32 %33 to float
  %37 = call float @llvm.fmuladd.f32(float %36, float %9, float %14)
  store float %37, ptr %4, align 4, !tbaa !38
  %38 = load ptr, ptr %5, align 8, !tbaa !72
  %39 = call float @BKE_maskrasterize_handle_sample(ptr noundef %38, ptr noundef nonnull %4) #9
  %40 = load ptr, ptr %21, align 8, !tbaa !74
  %41 = sext i32 %35 to i64
  %42 = getelementptr inbounds float, ptr %40, i64 %41
  store float %39, ptr %42, align 4, !tbaa !38
  %43 = add nuw nsw i32 %33, 1
  %44 = load i32, ptr %6, align 8, !tbaa !75
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %31, label %46, !llvm.loop !133

46:                                               ; preds = %31
  %47 = load i32, ptr %16, align 4, !tbaa !132
  br label %48

48:                                               ; preds = %46, %22
  %49 = phi i32 [ %47, %46 ], [ %23, %22 ]
  %50 = phi i32 [ %44, %46 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %51 = add nuw nsw i32 %25, 1
  %52 = icmp slt i32 %51, %49
  br i1 %52, label %22, label %53, !llvm.loop !134

53:                                               ; preds = %48, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_maskrasterize_handle_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_maskrasterize_handle_sample(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!"mask_draw.c:draw_masklays"}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!44, !35, i64 144}
!44 = !{!"Mask", !45, i64 0, !42, i64 120, !47, i64 128, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164}
!45 = !{!"ID", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !36, i64 32, !46, i64 98, !35, i64 100, !35, i64 104, !35, i64 108, !42, i64 112}
!46 = !{!"short", !36, i64 0}
!47 = !{!"ListBase", !42, i64 0, !42, i64 8}
!48 = !{!49, !36, i64 143}
!49 = !{!"MaskLayer", !42, i64 0, !42, i64 8, !36, i64 16, !47, i64 80, !47, i64 96, !42, i64 112, !42, i64 120, !39, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!54, !39, i64 0}
!54 = !{!"View2D", !55, i64 0, !55, i64 16, !56, i64 32, !56, i64 48, !56, i64 64, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !46, i64 104, !46, i64 106, !46, i64 108, !46, i64 110, !46, i64 112, !46, i64 114, !46, i64 116, !46, i64 118, !46, i64 120, !46, i64 122, !46, i64 124, !46, i64 126, !42, i64 128, !35, i64 136, !35, i64 140, !42, i64 144, !42, i64 152}
!55 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!56 = !{!"rcti", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!57 = !{!54, !39, i64 8}
!58 = !{!"mask_draw.c:BLI_rcti_size_x"}
!59 = !{!56, !35, i64 4}
!60 = !{!56, !35, i64 0}
!61 = !{!"mask_draw.c:BLI_rctf_size_x"}
!62 = !{!55, !39, i64 4}
!63 = !{!55, !39, i64 0}
!64 = !{!"mask_draw.c:BLI_rcti_size_y"}
!65 = !{!56, !35, i64 12}
!66 = !{!56, !35, i64 8}
!67 = !{!"mask_draw.c:BLI_rctf_size_y"}
!68 = !{!55, !39, i64 12}
!69 = !{!55, !39, i64 8}
!70 = !{!"mask_draw.c:max_ff"}
!71 = !{!"mask_draw.c:threaded_mask_rasterize"}
!72 = !{!73, !42, i64 0}
!73 = !{!"ThreadedMaskRasterizeState", !42, i64 0, !42, i64 8, !35, i64 16, !35, i64 20}
!74 = !{!73, !42, i64 8}
!75 = !{!73, !35, i64 16}
!76 = !{!73, !35, i64 20}
!77 = !{!78, !35, i64 0}
!78 = !{!"ThreadedMaskRasterizeData", !35, i64 0, !35, i64 4}
!79 = distinct !{!79, !51}
!80 = !{!81, !46, i64 208}
!81 = !{!"ARegion", !42, i64 0, !42, i64 8, !54, i64 16, !56, i64 176, !56, i64 192, !46, i64 208, !46, i64 210, !46, i64 212, !46, i64 214, !46, i64 216, !46, i64 218, !39, i64 220, !46, i64 224, !46, i64 226, !46, i64 228, !46, i64 230, !46, i64 232, !46, i64 234, !46, i64 236, !46, i64 238, !42, i64 240, !47, i64 248, !47, i64 264, !47, i64 280, !47, i64 296, !47, i64 312, !47, i64 328, !47, i64 344, !42, i64 360, !42, i64 368, !42, i64 376}
!82 = !{!83, !35, i64 28}
!83 = !{!"MaskLayerShape", !42, i64 0, !42, i64 8, !42, i64 16, !35, i64 24, !35, i64 28, !36, i64 32, !36, i64 33}
!84 = distinct !{!84, !51}
!85 = !{!"mask_draw.c:draw_spline_curve"}
!86 = !{!87, !46, i64 16}
!87 = !{!"MaskSpline", !42, i64 0, !42, i64 8, !46, i64 16, !36, i64 18, !36, i64 19, !35, i64 20, !42, i64 24, !88, i64 32, !42, i64 216}
!88 = !{!"MaskParent", !35, i64 0, !35, i64 4, !42, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!89 = distinct !{!89, !51}
!90 = !{!"mask_draw.c:draw_spline_points"}
!91 = !{!87, !35, i64 20}
!92 = !{!93, !42, i64 64}
!93 = !{!"SpaceClip", !42, i64 0, !42, i64 8, !47, i64 16, !35, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !94, i64 56, !42, i64 64, !95, i64 72, !35, i64 208, !46, i64 212, !46, i64 214, !35, i64 216, !36, i64 220, !39, i64 228, !39, i64 232, !35, i64 236, !36, i64 240, !36, i64 304, !35, i64 368, !46, i64 372, !46, i64 374, !35, i64 376, !35, i64 380, !36, i64 384, !97, i64 392}
!94 = !{!"MovieClipUser", !35, i64 0, !46, i64 4, !46, i64 6}
!95 = !{!"MovieClipScopes", !46, i64 0, !46, i64 2, !35, i64 4, !35, i64 8, !35, i64 12, !96, i64 16, !42, i64 80, !42, i64 88, !36, i64 96, !46, i64 104, !46, i64 106, !35, i64 108, !42, i64 112, !42, i64 120, !36, i64 128}
!96 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !35, i64 56, !35, i64 60}
!97 = !{!"MaskSpaceInfo", !42, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!98 = !{!93, !46, i64 62}
!99 = !{!100, !39, i64 10908}
!100 = !{!"UserDef", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !35, i64 8468, !46, i64 8472, !46, i64 8474, !46, i64 8476, !46, i64 8478, !46, i64 8480, !46, i64 8482, !35, i64 8484, !35, i64 8488, !35, i64 8492, !46, i64 8496, !46, i64 8498, !35, i64 8500, !35, i64 8504, !35, i64 8508, !35, i64 8512, !35, i64 8516, !35, i64 8520, !35, i64 8524, !46, i64 8528, !46, i64 8530, !46, i64 8532, !46, i64 8534, !47, i64 8536, !47, i64 8552, !47, i64 8568, !47, i64 8584, !47, i64 8600, !47, i64 8616, !47, i64 8632, !36, i64 8648, !46, i64 8712, !46, i64 8714, !46, i64 8716, !46, i64 8718, !46, i64 8720, !46, i64 8722, !46, i64 8724, !46, i64 8726, !36, i64 8728, !46, i64 8896, !46, i64 8898, !46, i64 8900, !46, i64 8902, !46, i64 8904, !46, i64 8906, !46, i64 8908, !46, i64 8910, !35, i64 8912, !35, i64 8916, !46, i64 8920, !46, i64 8922, !46, i64 8924, !46, i64 8926, !46, i64 8928, !46, i64 8930, !46, i64 8932, !46, i64 8934, !46, i64 8936, !46, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !46, i64 8944, !46, i64 8946, !46, i64 8948, !46, i64 8950, !46, i64 8952, !46, i64 8954, !39, i64 8956, !39, i64 8960, !35, i64 8964, !46, i64 8968, !46, i64 8970, !39, i64 8972, !46, i64 8976, !46, i64 8978, !46, i64 8980, !46, i64 8982, !101, i64 8984, !36, i64 9760, !36, i64 9772, !46, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !35, i64 10896, !35, i64 10900, !39, i64 10904, !39, i64 10908, !35, i64 10912, !46, i64 10916, !46, i64 10918, !46, i64 10920, !46, i64 10922, !46, i64 10924, !46, i64 10926, !102, i64 10928}
!101 = !{!"ColorBand", !46, i64 0, !46, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!102 = !{!"WalkNavigation", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !46, i64 24, !36, i64 26}
!103 = !{!87, !42, i64 24}
!104 = !{!105, !35, i64 76}
!105 = !{!"MaskSplinePoint", !106, i64 0, !35, i64 72, !35, i64 76, !42, i64 80, !88, i64 88}
!106 = !{!"BezTriple", !36, i64 0, !39, i64 36, !39, i64 40, !39, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !39, i64 56, !39, i64 60, !39, i64 64, !36, i64 68}
!107 = !{!105, !36, i64 51}
!108 = !{!105, !36, i64 52}
!109 = !{!105, !36, i64 53}
!110 = !{!105, !42, i64 80}
!111 = !{!112, !35, i64 8}
!112 = !{!"MaskSplinePointUW", !39, i64 0, !39, i64 4, !35, i64 8}
!113 = !{!49, !42, i64 120}
!114 = distinct !{!114, !51}
!115 = distinct !{!115, !51}
!116 = distinct !{!116, !51}
!117 = !{!49, !42, i64 112}
!118 = !{!"mask_draw.c:max_ii"}
!119 = !{!"mask_draw.c:mask_spline_feather_color_get"}
!120 = !{!36, !36, i64 0}
!121 = !{!"mask_draw.c:mask_draw_curve_type"}
!122 = distinct !{!122, !51}
!123 = !{!"mask_draw.c:sub_v2_v2v2"}
!124 = !{!"mask_draw.c:add_v2_v2v2"}
!125 = !{!"mask_draw.c:mask_spline_color_get"}
!126 = !{!"mask_draw.c:mask_point_undistort_pos"}
!127 = !{!"mask_draw.c:mask_color_active_tint"}
!128 = !{!"mask_draw.c:copy_v2_v2"}
!129 = !{!"mask_draw.c:draw_single_handle"}
!130 = !{!"mask_draw.c:draw_circle"}
!131 = !{!"mask_draw.c:mask_rasterize_func"}
!132 = !{!78, !35, i64 4}
!133 = distinct !{!133, !51}
!134 = distinct !{!134, !51}
