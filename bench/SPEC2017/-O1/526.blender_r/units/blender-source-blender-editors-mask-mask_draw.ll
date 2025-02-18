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
%struct.ThreadedMaskRasterizeState = type { ptr, ptr, i32, i32 }
%struct.ThreadedMaskRasterizeData = type { i32, i32 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }

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

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_draw(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %12 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  call void @ED_mask_get_size(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  call void @ED_mask_get_aspect(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  %15 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  call void @UI_view2d_scale_get(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %16 = load i32, ptr %4, align 4, !tbaa !34
  %17 = load i32, ptr %5, align 4, !tbaa !34
  %18 = load float, ptr %8, align 4, !tbaa !38
  %19 = load float, ptr %6, align 4, !tbaa !38
  %20 = fmul float %18, %19
  %21 = load float, ptr %9, align 4, !tbaa !38
  %22 = load float, ptr %7, align 4, !tbaa !38
  %23 = fmul float %21, %22
  call fastcc void @draw_masklays(ptr noundef %0, ptr noundef nonnull %12, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %16, i32 noundef %17, float noundef %20, float noundef %23)
  br label %24

24:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mask_get_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_masklays(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca [4 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %309, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 3
  %25 = and i8 %2, 1
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds i8, ptr %17, i64 1
  %28 = getelementptr inbounds i8, ptr %17, i64 2
  %29 = getelementptr inbounds i8, ptr %17, i64 1
  %30 = getelementptr inbounds i8, ptr %17, i64 2
  %31 = getelementptr inbounds i8, ptr %17, i64 3
  %32 = getelementptr inbounds i8, ptr %17, i64 2
  %33 = getelementptr inbounds i8, ptr %17, i64 1
  %34 = getelementptr inbounds i8, ptr %17, i64 2
  %35 = getelementptr inbounds i8, ptr %17, i64 1
  %36 = getelementptr inbounds i8, ptr %17, i64 2
  %37 = getelementptr inbounds i8, ptr %17, i64 1
  %38 = getelementptr inbounds float, ptr %12, i64 1
  %39 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %40 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %41 = getelementptr inbounds float, ptr %13, i64 1
  %42 = zext i8 %3 to i32
  %43 = zext i8 %3 to i32
  br label %44

44:                                               ; preds = %23, %305
  %45 = phi ptr [ %21, %23 ], [ %307, %305 ]
  %46 = phi i32 [ 0, %23 ], [ %306, %305 ]
  %47 = load i32, ptr %24, align 8, !tbaa !42
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.MaskLayer, ptr %45, i64 0, i32 13
  %51 = load i8, ptr %50, align 1, !tbaa !47
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %305

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.MaskLayer, ptr %45, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !40
  %57 = icmp eq ptr %56, null
  br i1 %57, label %305, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.MaskLayer, ptr %45, i64 0, i32 5
  %60 = getelementptr inbounds %struct.MaskLayer, ptr %45, i64 0, i32 6
  %61 = getelementptr inbounds %struct.MaskLayer, ptr %45, i64 0, i32 6
  %62 = getelementptr inbounds %struct.MaskLayer, ptr %45, i64 0, i32 5
  br label %63

63:                                               ; preds = %58, %302
  %64 = phi ptr [ %56, %58 ], [ %303, %302 ]
  %65 = call i32 @BKE_mask_spline_feather_resolution(ptr noundef nonnull %64, i32 noundef %4, i32 noundef %5) #5
  %66 = call i32 @BKE_mask_spline_resolution(ptr noundef nonnull %64, i32 noundef %4, i32 noundef %5) #5
  %67 = call i32 @llvm.smax.i32(i32 %66, i32 %65)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #5
  %68 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 2
  %69 = load i16, ptr %68, align 8, !tbaa !49
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  %73 = load i8, ptr %50, align 1, !tbaa !47
  %74 = and i8 %73, 2
  %75 = icmp ne i8 %74, 0
  br label %76

76:                                               ; preds = %72, %63
  %77 = phi i1 [ true, %63 ], [ %75, %72 ]
  %78 = and i16 %69, 4
  %79 = icmp eq i16 %78, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #5
  %80 = call ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef nonnull %64, ptr noundef nonnull %18, i32 noundef %67) #5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %128, label %82

82:                                               ; preds = %76
  br i1 %26, label %84, label %83

83:                                               ; preds = %82
  call void @glEnable(i32 noundef 2848) #5
  call void @glEnable(i32 noundef 3042) #5
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  br label %84

84:                                               ; preds = %83, %82
  %85 = zext i1 %79 to i8
  %86 = call ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef nonnull %64, ptr noundef nonnull %19, i32 noundef %67, i8 noundef zeroext %85) #5
  br i1 %77, label %88, label %87

87:                                               ; preds = %84
  store i8 -1, ptr %27, align 1, !tbaa !52
  br label %89

88:                                               ; preds = %84
  store i8 -128, ptr %29, align 1, !tbaa !52
  br label %89

89:                                               ; preds = %88, %87
  %90 = phi ptr [ %30, %88 ], [ %28, %87 ]
  store i8 0, ptr %90, align 1, !tbaa !52
  store i8 0, ptr %17, align 1, !tbaa !52
  store i8 -1, ptr %31, align 1, !tbaa !52
  %91 = load i32, ptr %19, align 4, !tbaa !34
  call fastcc void @mask_draw_curve_type(ptr noundef %0, ptr noundef nonnull %64, ptr noundef %86, i32 noundef %91, i8 noundef zeroext 1, i8 noundef zeroext %25, i8 noundef zeroext %49, ptr noundef nonnull %17, i8 noundef zeroext %3)
  br i1 %79, label %116, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %18, align 4, !tbaa !34
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %92, %95
  %96 = phi i32 [ %110, %95 ], [ 0, %92 ]
  %97 = phi ptr [ %112, %95 ], [ %86, %92 ]
  %98 = phi ptr [ %111, %95 ], [ %80, %92 ]
  %99 = load float, ptr %98, align 4, !tbaa !38
  %100 = load float, ptr %97, align 4, !tbaa !38
  %101 = fsub float %99, %100
  %102 = getelementptr inbounds float, ptr %98, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !38
  %104 = getelementptr inbounds float, ptr %97, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !38
  %106 = fsub float %103, %105
  %107 = fadd float %99, %101
  store float %107, ptr %97, align 4, !tbaa !38
  %108 = load float, ptr %102, align 4, !tbaa !38
  %109 = fadd float %106, %108
  store float %109, ptr %104, align 4, !tbaa !38
  %110 = add nuw nsw i32 %96, 1
  %111 = getelementptr inbounds float, ptr %98, i64 2
  %112 = getelementptr inbounds float, ptr %97, i64 2
  %113 = icmp eq i32 %110, %93
  br i1 %113, label %114, label %95, !llvm.loop !53

114:                                              ; preds = %95, %92
  %115 = load i32, ptr %19, align 4, !tbaa !34
  call fastcc void @mask_draw_curve_type(ptr noundef %0, ptr noundef nonnull %64, ptr noundef %86, i32 noundef %115, i8 noundef zeroext 1, i8 noundef zeroext %25, i8 noundef zeroext %49, ptr noundef nonnull %17, i8 noundef zeroext %3)
  br label %116

116:                                              ; preds = %114, %89
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %117(ptr noundef %86) #5
  br i1 %77, label %123, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %59, align 8, !tbaa !56
  %120 = icmp eq ptr %119, %64
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i8 -1, ptr %34, align 1, !tbaa !52
  store i8 -1, ptr %35, align 1, !tbaa !52
  store i8 -1, ptr %17, align 1, !tbaa !52
  br label %124

122:                                              ; preds = %118
  store i8 -1, ptr %17, align 1, !tbaa !52
  store i8 0, ptr %32, align 1, !tbaa !52
  store i8 0, ptr %33, align 1, !tbaa !52
  br label %124

123:                                              ; preds = %116
  store i8 -128, ptr %17, align 1, !tbaa !52
  store i8 0, ptr %36, align 1, !tbaa !52
  store i8 0, ptr %37, align 1, !tbaa !52
  br label %124

124:                                              ; preds = %123, %122, %121
  store i8 -1, ptr %31, align 1, !tbaa !52
  %125 = load i32, ptr %18, align 4, !tbaa !34
  call fastcc void @mask_draw_curve_type(ptr noundef %0, ptr noundef nonnull %64, ptr noundef nonnull %80, i32 noundef %125, i8 noundef zeroext 0, i8 noundef zeroext %25, i8 noundef zeroext %49, ptr noundef nonnull %17, i8 noundef zeroext %3)
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %126(ptr noundef nonnull %80) #5
  br i1 %26, label %128, label %127

127:                                              ; preds = %124
  call void @glDisable(i32 noundef 2848) #5
  call void @glDisable(i32 noundef 3042) #5
  br label %128

128:                                              ; preds = %76, %124, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #5
  %129 = load i8, ptr %50, align 1, !tbaa !47
  %130 = and i8 %129, 2
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %302

132:                                              ; preds = %128
  %133 = load i16, ptr %68, align 8, !tbaa !49
  %134 = and i16 %133, 1
  %135 = icmp eq i16 %134, 0
  %136 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %64) #5
  %137 = call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %138 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 5
  %139 = load i32, ptr %138, align 4, !tbaa !57
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %301, label %141

141:                                              ; preds = %132
  %142 = icmp eq ptr %137, null
  br i1 %142, label %155, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 10
  %145 = load ptr, ptr %144, align 8, !tbaa !58
  %146 = icmp eq ptr %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 9, i32 2
  %149 = load i16, ptr %148, align 2, !tbaa !64
  %150 = and i16 %149, 1
  %151 = icmp ne i16 %150, 0
  br label %152

152:                                              ; preds = %147, %143
  %153 = phi i1 [ false, %143 ], [ %151, %147 ]
  %154 = zext i1 %153 to i8
  br label %155

155:                                              ; preds = %152, %141
  %156 = phi i8 [ %154, %152 ], [ 0, %141 ]
  %157 = call float @UI_GetThemeValuef(i32 noundef 130) #5
  %158 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !65
  %159 = fmul float %157, %158
  %160 = fptosi float %159 to i32
  %161 = sitofp i32 %160 to float
  call void @glPointSize(float noundef %161) #5
  %162 = call ptr @BKE_mask_spline_feather_points(ptr noundef nonnull %64, ptr noundef nonnull %9) #5
  %163 = load i32, ptr %138, align 4, !tbaa !57
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %228

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 6
  %167 = icmp eq i8 %156, 0
  %168 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 10
  %169 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 9
  br label %170

170:                                              ; preds = %165, %222
  %171 = phi i64 [ 0, %165 ], [ %224, %222 ]
  %172 = phi ptr [ %162, %165 ], [ %223, %222 ]
  %173 = load ptr, ptr %166, align 8, !tbaa !69
  %174 = getelementptr inbounds %struct.MaskSplinePoint, ptr %173, i64 %171
  %175 = getelementptr inbounds %struct.MaskSplinePoint, ptr %173, i64 %171, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !70
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %222, label %178

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.MaskSplinePoint, ptr %173, i64 %171, i32 3
  %180 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 0, i32 7
  %181 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 0, i32 8
  %182 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 0, i32 9
  br label %183

183:                                              ; preds = %178, %216
  %184 = phi i64 [ 0, %178 ], [ %218, %216 ]
  %185 = phi ptr [ %172, %178 ], [ %217, %216 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  %186 = load float, ptr %185, align 4, !tbaa !38
  store float %186, ptr %12, align 4, !tbaa !38
  %187 = getelementptr inbounds float, ptr %185, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !38
  store float %188, ptr %38, align 4, !tbaa !38
  br i1 %167, label %192, label %189

189:                                              ; preds = %183
  %190 = load ptr, ptr %168, align 8, !tbaa !58
  call void @BKE_mask_coord_to_movieclip(ptr noundef %190, ptr noundef nonnull %169, ptr noundef nonnull %12, ptr noundef nonnull %12) #5
  call void @ED_clip_point_undistorted_pos(ptr noundef %137, ptr noundef nonnull %12, ptr noundef nonnull %12) #5
  %191 = load ptr, ptr %168, align 8, !tbaa !58
  call void @BKE_mask_coord_from_movieclip(ptr noundef %191, ptr noundef nonnull %169, ptr noundef nonnull %12, ptr noundef nonnull %12) #5
  br label %192

192:                                              ; preds = %189, %183
  %193 = icmp eq i64 %184, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %192
  %195 = load i8, ptr %180, align 1, !tbaa !73
  %196 = load i8, ptr %181, align 4, !tbaa !74
  %197 = or i8 %196, %195
  %198 = load i8, ptr %182, align 1, !tbaa !75
  %199 = or i8 %197, %198
  br label %206

200:                                              ; preds = %192
  %201 = load ptr, ptr %179, align 8, !tbaa !76
  %202 = getelementptr %struct.MaskSplinePointUW, ptr %201, i64 %184
  %203 = getelementptr %struct.MaskSplinePointUW, ptr %202, i64 -1, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !77
  %205 = trunc i32 %204 to i8
  br label %206

206:                                              ; preds = %200, %194
  %207 = phi i8 [ %199, %194 ], [ %205, %200 ]
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %60, align 8, !tbaa !79
  %212 = icmp eq ptr %174, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #5
  br label %216

214:                                              ; preds = %210
  call void @UI_ThemeColor(i32 noundef 129) #5
  br label %216

215:                                              ; preds = %206
  call void @UI_ThemeColor(i32 noundef 128) #5
  br label %216

216:                                              ; preds = %215, %214, %213
  call void @glBegin(i32 noundef 0) #5
  call void @glVertex2fv(ptr noundef nonnull %12) #5
  call void @glEnd() #5
  %217 = getelementptr inbounds [2 x float], ptr %185, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  %218 = add nuw nsw i64 %184, 1
  %219 = load i32, ptr %175, align 4, !tbaa !70
  %220 = sext i32 %219 to i64
  %221 = icmp slt i64 %184, %220
  br i1 %221, label %183, label %222, !llvm.loop !80

222:                                              ; preds = %216, %170
  %223 = phi ptr [ %172, %170 ], [ %217, %216 ]
  %224 = add nuw nsw i64 %171, 1
  %225 = load i32, ptr %138, align 4, !tbaa !57
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %224, %226
  br i1 %227, label %170, label %228, !llvm.loop !81

228:                                              ; preds = %222, %155
  %229 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %229(ptr noundef %162) #5
  br i1 %26, label %231, label %230

230:                                              ; preds = %228
  call void @glEnable(i32 noundef 2848) #5
  call void @glEnable(i32 noundef 3042) #5
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  br label %231

231:                                              ; preds = %230, %228
  store float 0x46293E5940000000, ptr %39, align 4, !tbaa !38
  store float 0x46293E5940000000, ptr %10, align 4, !tbaa !38
  store float 0xC6293E5940000000, ptr %40, align 4, !tbaa !38
  store float 0xC6293E5940000000, ptr %11, align 4, !tbaa !38
  %232 = load i32, ptr %138, align 4, !tbaa !57
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %286

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 6
  %236 = icmp eq i8 %156, 0
  %237 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 10
  %238 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 9
  %239 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 10
  %240 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 9
  %241 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 10
  %242 = getelementptr inbounds %struct.SpaceClip, ptr %137, i64 0, i32 9
  br label %243

243:                                              ; preds = %234, %281
  %244 = phi i64 [ 0, %234 ], [ %282, %281 ]
  %245 = load ptr, ptr %235, align 8, !tbaa !69
  %246 = getelementptr inbounds %struct.MaskSplinePoint, ptr %245, i64 %244
  %247 = getelementptr inbounds %struct.MaskSplinePoint, ptr %136, i64 %244
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  %248 = getelementptr inbounds [3 x [3 x float]], ptr %247, i64 0, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !38
  store float %249, ptr %13, align 4, !tbaa !38
  %250 = getelementptr inbounds [3 x [3 x float]], ptr %247, i64 0, i64 1, i64 1
  %251 = load float, ptr %250, align 4, !tbaa !38
  store float %251, ptr %41, align 4, !tbaa !38
  br i1 %236, label %255, label %252

252:                                              ; preds = %243
  %253 = load ptr, ptr %237, align 8, !tbaa !58
  call void @BKE_mask_coord_to_movieclip(ptr noundef %253, ptr noundef nonnull %238, ptr noundef nonnull %13, ptr noundef nonnull %13) #5
  call void @ED_clip_point_undistorted_pos(ptr noundef %137, ptr noundef nonnull %13, ptr noundef nonnull %13) #5
  %254 = load ptr, ptr %237, align 8, !tbaa !58
  call void @BKE_mask_coord_from_movieclip(ptr noundef %254, ptr noundef nonnull %238, ptr noundef nonnull %13, ptr noundef nonnull %13) #5
  br label %255

255:                                              ; preds = %252, %243
  %256 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef %246) #5
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #5
  call void @BKE_mask_point_handle(ptr noundef %247, i32 noundef 1, ptr noundef nonnull %14) #5
  br i1 %236, label %262, label %259

259:                                              ; preds = %258
  %260 = load ptr, ptr %241, align 8, !tbaa !58
  call void @BKE_mask_coord_to_movieclip(ptr noundef %260, ptr noundef nonnull %242, ptr noundef nonnull %14, ptr noundef nonnull %14) #5
  call void @ED_clip_point_undistorted_pos(ptr noundef %137, ptr noundef nonnull %14, ptr noundef nonnull %14) #5
  %261 = load ptr, ptr %241, align 8, !tbaa !58
  call void @BKE_mask_coord_from_movieclip(ptr noundef %261, ptr noundef nonnull %242, ptr noundef nonnull %14, ptr noundef nonnull %14) #5
  br label %262

262:                                              ; preds = %259, %258
  call fastcc void @draw_single_handle(ptr noundef nonnull %45, ptr noundef %246, i32 noundef 1, i32 noundef %43, float noundef %161, float noundef %6, float noundef %7, ptr noundef nonnull %13, ptr noundef nonnull %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #5
  br label %270

263:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #5
  call void @BKE_mask_point_handle(ptr noundef %247, i32 noundef 2, ptr noundef nonnull %15) #5
  call void @BKE_mask_point_handle(ptr noundef %247, i32 noundef 3, ptr noundef nonnull %16) #5
  br i1 %236, label %269, label %264

264:                                              ; preds = %263
  %265 = load ptr, ptr %239, align 8, !tbaa !58
  call void @BKE_mask_coord_to_movieclip(ptr noundef %265, ptr noundef nonnull %240, ptr noundef nonnull %15, ptr noundef nonnull %15) #5
  call void @ED_clip_point_undistorted_pos(ptr noundef %137, ptr noundef nonnull %15, ptr noundef nonnull %15) #5
  %266 = load ptr, ptr %239, align 8, !tbaa !58
  call void @BKE_mask_coord_from_movieclip(ptr noundef %266, ptr noundef nonnull %240, ptr noundef nonnull %15, ptr noundef nonnull %15) #5
  %267 = load ptr, ptr %239, align 8, !tbaa !58
  call void @BKE_mask_coord_to_movieclip(ptr noundef %267, ptr noundef nonnull %240, ptr noundef nonnull %15, ptr noundef nonnull %15) #5
  call void @ED_clip_point_undistorted_pos(ptr noundef %137, ptr noundef nonnull %15, ptr noundef nonnull %15) #5
  %268 = load ptr, ptr %239, align 8, !tbaa !58
  call void @BKE_mask_coord_from_movieclip(ptr noundef %268, ptr noundef nonnull %240, ptr noundef nonnull %15, ptr noundef nonnull %15) #5
  br label %269

269:                                              ; preds = %264, %263
  call fastcc void @draw_single_handle(ptr noundef nonnull %45, ptr noundef %246, i32 noundef 2, i32 noundef %42, float noundef %161, float noundef %6, float noundef %7, ptr noundef nonnull %13, ptr noundef nonnull %15)
  call fastcc void @draw_single_handle(ptr noundef nonnull %45, ptr noundef %246, i32 noundef 3, i32 noundef %42, float noundef %161, float noundef %6, float noundef %7, ptr noundef nonnull %13, ptr noundef nonnull %16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #5
  br label %270

270:                                              ; preds = %269, %262
  %271 = getelementptr inbounds %struct.BezTriple, ptr %246, i64 0, i32 8
  %272 = load i8, ptr %271, align 4, !tbaa !74
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = load ptr, ptr %61, align 8, !tbaa !79
  %277 = icmp eq ptr %246, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #5
  br label %281

279:                                              ; preds = %275
  call void @UI_ThemeColor(i32 noundef 129) #5
  br label %281

280:                                              ; preds = %270
  call void @UI_ThemeColor(i32 noundef 128) #5
  br label %281

281:                                              ; preds = %280, %279, %278
  call void @glBegin(i32 noundef 0) #5
  call void @glVertex2fv(ptr noundef nonnull %13) #5
  call void @glEnd() #5
  call void @minmax_v2v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  %282 = add nuw nsw i64 %244, 1
  %283 = load i32, ptr %138, align 4, !tbaa !57
  %284 = sext i32 %283 to i64
  %285 = icmp slt i64 %282, %284
  br i1 %285, label %243, label %286, !llvm.loop !82

286:                                              ; preds = %281, %231
  br i1 %135, label %299, label %287

287:                                              ; preds = %286
  %288 = load float, ptr %10, align 4, !tbaa !38
  %289 = load float, ptr %11, align 4, !tbaa !38
  %290 = fadd float %288, %289
  %291 = fmul float %290, 5.000000e-01
  %292 = load float, ptr %39, align 4, !tbaa !38
  %293 = load float, ptr %40, align 4, !tbaa !38
  %294 = fadd float %292, %293
  %295 = fmul float %294, 5.000000e-01
  %296 = load ptr, ptr %62, align 8, !tbaa !56
  %297 = icmp eq ptr %296, %64
  %298 = sext i1 %297 to i8
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext %298) #5
  call fastcc void @draw_circle(float noundef %291, float noundef %295, float noundef 6.000000e+00, i8 noundef zeroext 1, float noundef %6, float noundef %7)
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call fastcc void @draw_circle(float noundef %291, float noundef %295, float noundef 6.000000e+00, i8 noundef zeroext 0, float noundef %6, float noundef %7)
  br label %299

299:                                              ; preds = %287, %286
  call void @glPointSize(float noundef 1.000000e+00) #5
  br i1 %26, label %301, label %300

300:                                              ; preds = %299
  call void @glDisable(i32 noundef 2848) #5
  call void @glDisable(i32 noundef 3042) #5
  br label %301

301:                                              ; preds = %132, %299, %300
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  br label %302

302:                                              ; preds = %128, %301
  %303 = load ptr, ptr %64, align 8, !tbaa !40
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %63, !llvm.loop !83

305:                                              ; preds = %302, %54, %44
  %306 = add nuw nsw i32 %46, 1
  %307 = load ptr, ptr %45, align 8, !tbaa !40
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %44, !llvm.loop !84

309:                                              ; preds = %305, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_draw_region(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
  %14 = alloca %struct.ThreadedMaskRasterizeState, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %18 = sitofp i32 %5 to float
  %19 = sitofp i32 %6 to float
  %20 = fdiv float %8, %7
  %21 = fmul float %20, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #5
  call void @UI_view2d_view_to_region(ptr noundef nonnull %17, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %15, ptr noundef nonnull %16) #5
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !85
  %25 = load i32, ptr %22, align 4, !tbaa !87
  %26 = add i32 %24, 1
  %27 = sub i32 %26, %25
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !88
  %32 = load float, ptr %29, align 4, !tbaa !90
  %33 = fsub float %31, %32
  %34 = fdiv float %28, %33
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !91
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !92
  %39 = add i32 %36, 1
  %40 = sub i32 %39, %38
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !93
  %44 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %45 = load float, ptr %44, align 4, !tbaa !94
  %46 = fsub float %43, %45
  %47 = fdiv float %41, %46
  %48 = icmp eq i8 %9, 0
  %49 = select i1 %48, float 1.000000e+00, float %21
  %50 = fdiv float %47, %49
  %51 = select i1 %48, float 1.000000e+00, float %18
  %52 = fdiv float %34, %51
  %53 = load float, ptr %17, align 8, !tbaa !95
  %54 = load i32, ptr %15, align 4, !tbaa !34
  %55 = sitofp i32 %54 to float
  %56 = call float @llvm.fmuladd.f32(float %53, float %52, float %55)
  %57 = fptosi float %56 to i32
  store i32 %57, ptr %15, align 4, !tbaa !34
  %58 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  %59 = load float, ptr %58, align 8, !tbaa !97
  %60 = load i32, ptr %16, align 4, !tbaa !34
  %61 = sitofp i32 %60 to float
  %62 = call float @llvm.fmuladd.f32(float %59, float %50, float %61)
  %63 = fptosi float %62 to i32
  store i32 %63, ptr %16, align 4, !tbaa !34
  %64 = fcmp olt float %21, %18
  %65 = select i1 %64, float %18, float %21
  %66 = fcmp oeq float %21, %18
  br i1 %66, label %77, label %67

67:                                               ; preds = %13
  %68 = fcmp ogt float %21, %18
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = fsub float %21, %18
  %71 = fmul float %70, -5.000000e-01
  %72 = fmul float %71, %52
  br label %77

73:                                               ; preds = %67
  %74 = fsub float %18, %21
  %75 = fmul float %74, -5.000000e-01
  %76 = fmul float %75, %50
  br label %77

77:                                               ; preds = %13, %69, %73
  %78 = phi float [ %72, %69 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %13 ]
  %79 = phi float [ 0.000000e+00, %69 ], [ %76, %73 ], [ 0.000000e+00, %13 ]
  %80 = and i8 %2, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %129, label %82

82:                                               ; preds = %77
  %83 = fptosi float %18 to i32
  %84 = fptosi float %21 to i32
  %85 = call ptr @BLI_task_scheduler_get() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #5
  %86 = call i32 @BLI_task_scheduler_num_threads(ptr noundef %85) #5
  %87 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %88 = sext i32 %84 to i64
  %89 = sext i32 %83 to i64
  %90 = shl nsw i64 %89, 2
  %91 = mul i64 %90, %88
  %92 = call ptr %87(i64 noundef %91, ptr noundef nonnull @.str.1) #5
  %93 = call ptr @BKE_maskrasterize_handle_new() #5
  call void @BKE_maskrasterize_handle_init(ptr noundef %93, ptr noundef %0, i32 noundef %83, i32 noundef %84, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  store ptr %93, ptr %14, align 8, !tbaa !98
  %94 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %14, i64 0, i32 1
  store ptr %92, ptr %94, align 8, !tbaa !100
  %95 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %14, i64 0, i32 2
  store i32 %83, ptr %95, align 8, !tbaa !101
  %96 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %14, i64 0, i32 3
  store i32 %84, ptr %96, align 4, !tbaa !102
  %97 = call ptr @BLI_task_pool_create(ptr noundef %85, ptr noundef nonnull %14) #5
  %98 = sdiv i32 %84, %86
  %99 = icmp sgt i32 %86, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %82
  %101 = add nsw i32 %86, -1
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i32 [ 0, %100 ], [ %111, %102 ]
  %104 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %105 = call ptr %104(i64 noundef 8, ptr noundef nonnull @.str.2) #5
  %106 = mul nsw i32 %103, %98
  store i32 %106, ptr %105, align 4, !tbaa !103
  %107 = icmp slt i32 %103, %101
  %108 = sub nsw i32 %84, %106
  %109 = select i1 %107, i32 %98, i32 %108
  %110 = getelementptr inbounds %struct.ThreadedMaskRasterizeData, ptr %105, i64 0, i32 1
  store i32 %109, ptr %110, align 4, !tbaa !105
  call void @BLI_task_pool_push(ptr noundef %97, ptr noundef nonnull @mask_rasterize_func, ptr noundef nonnull %105, i8 noundef zeroext 1, i32 noundef 0) #5
  %111 = add nuw nsw i32 %103, 1
  %112 = icmp eq i32 %111, %86
  br i1 %112, label %113, label %102, !llvm.loop !106

113:                                              ; preds = %102, %82
  call void @BLI_task_pool_work_and_wait(ptr noundef %97) #5
  call void @BLI_task_pool_free(ptr noundef %97) #5
  call void @BKE_maskrasterize_handle_free(ptr noundef %93) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #5
  %114 = icmp eq i8 %4, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #5
  br label %117

116:                                              ; preds = %113
  call void @glEnable(i32 noundef 3042) #5
  call void @glBlendFunc(i32 noundef 774, i32 noundef 770) #5
  br label %117

117:                                              ; preds = %116, %115
  %118 = phi i32 [ 6409, %115 ], [ 6406, %116 ]
  call void @glPushMatrix() #5
  %119 = load i32, ptr %15, align 4, !tbaa !34
  %120 = sitofp i32 %119 to float
  %121 = load i32, ptr %16, align 4, !tbaa !34
  %122 = sitofp i32 %121 to float
  call void @glTranslatef(float noundef %120, float noundef %122, float noundef 0.000000e+00) #5
  call void @glScalef(float noundef %52, float noundef %50, float noundef 0.000000e+00) #5
  %123 = icmp eq ptr %11, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  call void @glMultMatrixf(ptr noundef nonnull %11) #5
  br label %125

125:                                              ; preds = %124, %117
  call void @glaDrawPixelsTex(float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %83, i32 noundef %84, i32 noundef %118, i32 noundef 5126, i32 noundef 9728, ptr noundef %92) #5
  call void @glPopMatrix() #5
  br i1 %114, label %127, label %126

126:                                              ; preds = %125
  call void @glDisable(i32 noundef 3042) #5
  br label %127

127:                                              ; preds = %126, %125
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %128(ptr noundef %92) #5
  br label %129

129:                                              ; preds = %127, %77
  call void @glPushMatrix() #5
  %130 = icmp eq ptr %11, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %129
  call void @glMultMatrixf(ptr noundef nonnull %11) #5
  br label %132

132:                                              ; preds = %131, %129
  %133 = load i32, ptr %15, align 4, !tbaa !34
  %134 = sitofp i32 %133 to float
  %135 = fadd float %78, %134
  %136 = load i32, ptr %16, align 4, !tbaa !34
  %137 = sitofp i32 %136 to float
  %138 = fadd float %79, %137
  call void @glTranslatef(float noundef %135, float noundef %138, float noundef 0.000000e+00) #5
  %139 = fmul float %65, %52
  %140 = fmul float %65, %50
  call void @glScalef(float noundef %139, float noundef %140, float noundef 0.000000e+00) #5
  %141 = icmp eq i8 %10, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %132
  call void @ED_region_draw_cb_draw(ptr noundef %12, ptr noundef %1, i32 noundef 2) #5
  %143 = fptosi float %18 to i32
  %144 = fptosi float %21 to i32
  call fastcc void @draw_masklays(ptr noundef %12, ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %143, i32 noundef %144, float noundef %139, float noundef %140)
  call void @ED_region_draw_cb_draw(ptr noundef %12, ptr noundef %1, i32 noundef 0) #5
  br label %148

145:                                              ; preds = %132
  %146 = fptosi float %18 to i32
  %147 = fptosi float %21 to i32
  call fastcc void @draw_masklays(ptr noundef %12, ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %146, i32 noundef %147, float noundef %139, float noundef %140)
  br label %148

148:                                              ; preds = %145, %142
  call void @glPopMatrix() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  ret void
}

declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_draw_frames(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %7 = load i16, ptr %6, align 8, !tbaa !107
  %8 = sitofp i16 %7 to float
  %9 = sub i32 %4, %3
  %10 = add i32 %9, 1
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %8, %11
  %13 = tail call ptr @BKE_mask_layer_active(ptr noundef %0) #5
  tail call void @glBegin(i32 noundef 1) #5
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -81, i8 noundef zeroext 0, i8 noundef zeroext -1) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %29, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.MaskLayerShape, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !109
  %23 = icmp eq i32 %22, %2
  %24 = select i1 %23, i32 22, i32 10
  %25 = sub nsw i32 %22, %3
  %26 = sitofp i32 %25 to float
  %27 = fmul float %12, %26
  %28 = fptosi float %27 to i32
  tail call void @glVertex2i(i32 noundef %28, i32 noundef 0) #5
  tail call void @glVertex2i(i32 noundef %28, i32 noundef %24) #5
  %29 = load ptr, ptr %20, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !111

31:                                               ; preds = %19, %15, %5
  tail call void @glEnd() #5
  ret void
}

declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glVertex2i(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare i32 @BKE_mask_spline_feather_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BKE_mask_spline_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mask_draw_curve_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr nocapture noundef readonly %7, i8 noundef zeroext %8) unnamed_addr #0 {
  %10 = alloca [4 x i8], align 1
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !49
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  %16 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.SpaceClip, ptr %16, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.SpaceClip, ptr %16, i64 0, i32 9, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !64
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %29 = shl nsw i32 %3, 1
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call ptr %28(i64 noundef %31, ptr noundef nonnull @.str) #5
  %33 = icmp sgt i32 %3, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.SpaceClip, ptr %16, i64 0, i32 9
  %36 = zext nneg i32 %3 to i64
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i64 [ 0, %34 ], [ %43, %37 ]
  %39 = getelementptr inbounds [2 x float], ptr %32, i64 %38
  %40 = getelementptr inbounds [2 x float], ptr %2, i64 %38
  %41 = load ptr, ptr %19, align 8, !tbaa !58
  tail call void @BKE_mask_coord_to_movieclip(ptr noundef %41, ptr noundef nonnull %35, ptr noundef %39, ptr noundef %40) #5
  tail call void @ED_clip_point_undistorted_pos(ptr noundef nonnull %16, ptr noundef %39, ptr noundef %39) #5
  %42 = load ptr, ptr %19, align 8, !tbaa !58
  tail call void @BKE_mask_coord_from_movieclip(ptr noundef %42, ptr noundef nonnull %35, ptr noundef %39, ptr noundef %39) #5
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %36
  br i1 %44, label %45, label %37, !llvm.loop !112

45:                                               ; preds = %37, %27, %22, %18, %9
  %46 = phi ptr [ %2, %9 ], [ %2, %22 ], [ %2, %18 ], [ %32, %27 ], [ %32, %37 ]
  tail call void @glEnableClientState(i32 noundef 32884) #5
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %46) #5
  switch i8 %8, label %81 [
    i8 0, label %47
    i8 2, label %116
    i8 3, label %115
  ]

47:                                               ; preds = %45
  tail call void @glLineWidth(float noundef 3.000000e+00) #5
  %48 = icmp eq i8 %6, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  store i8 64, ptr %10, align 1, !tbaa !52
  %50 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 64, ptr %50, align 1, !tbaa !52
  %51 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 64, ptr %51, align 1, !tbaa !52
  %52 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 -1, ptr %52, align 1, !tbaa !52
  br label %54

53:                                               ; preds = %47
  store i32 -16777216, ptr %10, align 4, !tbaa !34
  br label %54

54:                                               ; preds = %49, %53
  call void @glColor4ubv(ptr noundef nonnull %10) #5
  call void @glDrawArrays(i32 noundef %15, i32 noundef 0, i32 noundef %3) #5
  call void @glLineWidth(float noundef 1.000000e+00) #5
  br i1 %48, label %55, label %78

55:                                               ; preds = %54
  %56 = load i8, ptr %7, align 1, !tbaa !52
  %57 = zext i8 %56 to i16
  %58 = add nuw nsw i16 %57, 128
  %59 = lshr i16 %58, 1
  %60 = trunc i16 %59 to i8
  store i8 %60, ptr %10, align 1, !tbaa !52
  %61 = getelementptr inbounds i8, ptr %7, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !52
  %63 = zext i8 %62 to i16
  %64 = add nuw nsw i16 %63, 128
  %65 = lshr i16 %64, 1
  %66 = trunc i16 %65 to i8
  %67 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %66, ptr %67, align 1, !tbaa !52
  %68 = getelementptr inbounds i8, ptr %7, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !52
  %70 = zext i8 %69 to i16
  %71 = add nuw nsw i16 %70, 128
  %72 = lshr i16 %71, 1
  %73 = trunc i16 %72 to i8
  %74 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %73, ptr %74, align 1, !tbaa !52
  %75 = getelementptr inbounds i8, ptr %7, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !52
  %77 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 %76, ptr %77, align 1, !tbaa !52
  br label %80

78:                                               ; preds = %54
  %79 = load i32, ptr %7, align 4, !tbaa !34
  store i32 %79, ptr %10, align 4, !tbaa !34
  br label %80

80:                                               ; preds = %55, %78
  call void @glColor4ubv(ptr noundef nonnull %10) #5
  call void @glDrawArrays(i32 noundef %15, i32 noundef 0, i32 noundef %3) #5
  br label %194

81:                                               ; preds = %45
  tail call void @glEnable(i32 noundef 2852) #5
  %82 = icmp eq i8 %6, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %81
  %84 = load i8, ptr %7, align 1, !tbaa !52
  %85 = zext i8 %84 to i16
  %86 = add nuw nsw i16 %85, 128
  %87 = lshr i16 %86, 1
  %88 = trunc i16 %87 to i8
  store i8 %88, ptr %10, align 1, !tbaa !52
  %89 = getelementptr inbounds i8, ptr %7, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !52
  %91 = zext i8 %90 to i16
  %92 = add nuw nsw i16 %91, 128
  %93 = lshr i16 %92, 1
  %94 = trunc i16 %93 to i8
  %95 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %94, ptr %95, align 1, !tbaa !52
  %96 = getelementptr inbounds i8, ptr %7, i64 2
  %97 = load i8, ptr %96, align 1, !tbaa !52
  %98 = zext i8 %97 to i16
  %99 = add nuw nsw i16 %98, 128
  %100 = lshr i16 %99, 1
  %101 = trunc i16 %100 to i8
  %102 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %101, ptr %102, align 1, !tbaa !52
  %103 = getelementptr inbounds i8, ptr %7, i64 3
  %104 = load i8, ptr %103, align 1, !tbaa !52
  %105 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 %104, ptr %105, align 1, !tbaa !52
  br label %108

106:                                              ; preds = %81
  %107 = load i32, ptr %7, align 4, !tbaa !34
  store i32 %107, ptr %10, align 4, !tbaa !34
  br label %108

108:                                              ; preds = %83, %106
  call void @glColor4ubv(ptr noundef nonnull %10) #5
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #5
  call void @glEnableClientState(i32 noundef 32884) #5
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %46) #5
  call void @glDrawArrays(i32 noundef %15, i32 noundef 0, i32 noundef %3) #5
  br i1 %82, label %109, label %113

109:                                              ; preds = %108
  store i8 64, ptr %10, align 1, !tbaa !52
  %110 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 64, ptr %110, align 1, !tbaa !52
  %111 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 64, ptr %111, align 1, !tbaa !52
  %112 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 -1, ptr %112, align 1, !tbaa !52
  br label %114

113:                                              ; preds = %108
  store i32 -16777216, ptr %10, align 4, !tbaa !34
  br label %114

114:                                              ; preds = %109, %113
  call void @glColor4ubv(ptr noundef nonnull %10) #5
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext 21845) #5
  call void @glDrawArrays(i32 noundef %15, i32 noundef 0, i32 noundef %3) #5
  call void @glDisable(i32 noundef 2852) #5
  br label %194

115:                                              ; preds = %45
  br label %116

116:                                              ; preds = %45, %115
  %117 = phi i8 [ -1, %115 ], [ 0, %45 ]
  %118 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  store i8 %117, ptr %118, align 1, !tbaa !52
  %119 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  store i8 %117, ptr %119, align 1, !tbaa !52
  store i8 %117, ptr %10, align 1, !tbaa !52
  %120 = icmp eq i8 %4, 0
  %121 = select i1 %120, i8 -128, i8 64
  %122 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  store i8 %121, ptr %122, align 1, !tbaa !52
  br i1 %120, label %148, label %123

123:                                              ; preds = %116
  %124 = zext i8 %117 to i16
  %125 = load i8, ptr %7, align 1, !tbaa !52
  %126 = zext i8 %125 to i16
  %127 = add nuw nsw i16 %126, %124
  %128 = lshr i16 %127, 1
  %129 = trunc i16 %128 to i8
  store i8 %129, ptr %10, align 1, !tbaa !52
  %130 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !52
  %132 = zext i8 %131 to i16
  %133 = getelementptr inbounds i8, ptr %7, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !52
  %135 = zext i8 %134 to i16
  %136 = add nuw nsw i16 %135, %132
  %137 = lshr i16 %136, 1
  %138 = trunc i16 %137 to i8
  store i8 %138, ptr %130, align 1, !tbaa !52
  %139 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %140 = load i8, ptr %139, align 1, !tbaa !52
  %141 = zext i8 %140 to i16
  %142 = getelementptr inbounds i8, ptr %7, i64 2
  %143 = load i8, ptr %142, align 1, !tbaa !52
  %144 = zext i8 %143 to i16
  %145 = add nuw nsw i16 %144, %141
  %146 = lshr i16 %145, 1
  %147 = trunc i16 %146 to i8
  store i8 %147, ptr %139, align 1, !tbaa !52
  br label %148

148:                                              ; preds = %123, %116
  %149 = icmp eq i8 %5, 0
  %150 = icmp ne i8 %4, 0
  %151 = and i1 %150, %149
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  tail call void @glEnable(i32 noundef 3042) #5
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  %153 = icmp eq i8 %6, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %152
  %155 = load i8, ptr %10, align 1, !tbaa !52
  %156 = zext i8 %155 to i16
  %157 = add nuw nsw i16 %156, 128
  %158 = lshr i16 %157, 1
  %159 = trunc i16 %158 to i8
  store i8 %159, ptr %10, align 1, !tbaa !52
  %160 = getelementptr inbounds i8, ptr %10, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !52
  %162 = zext i8 %161 to i16
  %163 = add nuw nsw i16 %162, 128
  %164 = lshr i16 %163, 1
  %165 = trunc i16 %164 to i8
  store i8 %165, ptr %160, align 1, !tbaa !52
  %166 = getelementptr inbounds i8, ptr %10, i64 2
  %167 = load i8, ptr %166, align 1, !tbaa !52
  %168 = zext i8 %167 to i16
  %169 = add nuw nsw i16 %168, 128
  %170 = lshr i16 %169, 1
  %171 = trunc i16 %170 to i8
  store i8 %171, ptr %166, align 1, !tbaa !52
  br label %172

172:                                              ; preds = %152, %154
  call void @glColor4ubv(ptr noundef nonnull %10) #5
  call void @glEnableClientState(i32 noundef 32884) #5
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %46) #5
  call void @glDrawArrays(i32 noundef %15, i32 noundef 0, i32 noundef %3) #5
  call void @glDisable(i32 noundef 3042) #5
  br label %194

173:                                              ; preds = %148
  %174 = icmp eq i8 %6, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %173
  %176 = load i8, ptr %10, align 1, !tbaa !52
  %177 = zext i8 %176 to i16
  %178 = add nuw nsw i16 %177, 128
  %179 = lshr i16 %178, 1
  %180 = trunc i16 %179 to i8
  store i8 %180, ptr %10, align 1, !tbaa !52
  %181 = getelementptr inbounds i8, ptr %10, i64 1
  %182 = load i8, ptr %181, align 1, !tbaa !52
  %183 = zext i8 %182 to i16
  %184 = add nuw nsw i16 %183, 128
  %185 = lshr i16 %184, 1
  %186 = trunc i16 %185 to i8
  store i8 %186, ptr %181, align 1, !tbaa !52
  %187 = getelementptr inbounds i8, ptr %10, i64 2
  %188 = load i8, ptr %187, align 1, !tbaa !52
  %189 = zext i8 %188 to i16
  %190 = add nuw nsw i16 %189, 128
  %191 = lshr i16 %190, 1
  %192 = trunc i16 %191 to i8
  store i8 %192, ptr %187, align 1, !tbaa !52
  br label %193

193:                                              ; preds = %173, %175
  call void @glColor4ubv(ptr noundef nonnull %10) #5
  call void @glEnableClientState(i32 noundef 32884) #5
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %46) #5
  call void @glDrawArrays(i32 noundef %15, i32 noundef 0, i32 noundef %3) #5
  br label %194

194:                                              ; preds = %193, %172, %114, %80
  call void @glDisableClientState(i32 noundef 32884) #5
  %195 = icmp eq ptr %46, %2
  br i1 %195, label %198, label %196

196:                                              ; preds = %194
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %197(ptr noundef %46) #5
  br label %198

198:                                              ; preds = %196, %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  ret void
}

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_to_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_clip_point_undistorted_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #2

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_feather_points(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_mask_point_handles_mode_get(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_point_handle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_single_handle(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca [4 x i8], align 4
  %11 = add i32 %2, -1
  %12 = icmp ult i32 %11, 2
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load i8, ptr %15, align 1, !tbaa !52
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %59, label %18

18:                                               ; preds = %9
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  store i32 -10461088, ptr %10, align 4
  tail call void @glLineWidth(float noundef 3.000000e+00) #5
  call void @glColor4ubv(ptr noundef nonnull %10) #5
  call void @glBegin(i32 noundef 1) #5
  call void @glVertex2fv(ptr noundef %7) #5
  call void @glVertex2fv(ptr noundef %8) #5
  call void @glEnd() #5
  call void @glLineWidth(float noundef 1.000000e+00) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
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
  call void @UI_ThemeColor(i32 noundef %30) #5
  br label %31

31:                                               ; preds = %23, %21, %27
  call void @glBegin(i32 noundef 1) #5
  call void @glVertex2fv(ptr noundef %7) #5
  call void @glVertex2fv(ptr noundef %8) #5
  call void @glEnd() #5
  switch i32 %2, label %41 [
    i32 1, label %32
    i32 2, label %38
  ]

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %34 = load i8, ptr %33, align 1, !tbaa !73
  %35 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %36 = load i8, ptr %35, align 1, !tbaa !75
  %37 = or i8 %36, %34
  br label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %40 = load i8, ptr %39, align 1, !tbaa !73
  br label %44

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %43 = load i8, ptr %42, align 1, !tbaa !75
  br label %44

44:                                               ; preds = %38, %41, %32
  %45 = phi i8 [ %37, %32 ], [ %40, %38 ], [ %43, %41 ]
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #5
  br label %55

53:                                               ; preds = %48
  call void @UI_ThemeColor(i32 noundef 129) #5
  br label %55

54:                                               ; preds = %44
  call void @UI_ThemeColor(i32 noundef 128) #5
  br label %55

55:                                               ; preds = %52, %53, %54
  %56 = load float, ptr %8, align 4, !tbaa !38
  %57 = getelementptr inbounds float, ptr %8, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !38
  call fastcc void @draw_circle(float noundef %56, float noundef %58, float noundef %4, i8 noundef zeroext 0, float noundef %5, float noundef %6)
  br label %59

59:                                               ; preds = %9, %55
  ret void
}

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_circle(float noundef %0, float noundef %1, float noundef %2, i8 noundef zeroext %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = icmp eq i8 %3, 0
  %8 = load i32, ptr @draw_circle.fill_displist, align 4
  %9 = load i32, ptr @draw_circle.wire_displist, align 4
  %10 = select i1 %7, i32 %9, i32 %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = tail call i32 @glGenLists(i32 noundef 1) #5
  tail call void @glNewList(i32 noundef %13, i32 noundef 4864) #5
  %14 = tail call ptr @gluNewQuadric() #5
  %15 = select i1 %7, i32 100013, i32 100012
  tail call void @gluQuadricDrawStyle(ptr noundef %14, i32 noundef %15) #5
  tail call void @gluDisk(ptr noundef %14, double noundef 0.000000e+00, double noundef 0x3FE6666666666666, i32 noundef 8, i32 noundef 1) #5
  tail call void @gluDeleteQuadric(ptr noundef %14) #5
  tail call void @glEndList() #5
  %16 = select i1 %7, ptr @draw_circle.wire_displist, ptr @draw_circle.fill_displist
  store i32 %13, ptr %16, align 4, !tbaa !34
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i32 [ %10, %6 ], [ %13, %12 ]
  tail call void @glPushMatrix() #5
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #5
  %19 = fdiv float 1.000000e+00, %4
  %20 = fmul float %19, %2
  %21 = fdiv float 1.000000e+00, %5
  %22 = fmul float %21, %2
  tail call void @glScalef(float noundef %20, float noundef %22, float noundef 1.000000e+00) #5
  tail call void @glCallList(i32 noundef %18) #5
  tail call void @glPopMatrix() #5
  ret void
}

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gluNewQuadric() local_unnamed_addr #2

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

declare void @glEndList() local_unnamed_addr #2

declare void @glCallList(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_task_scheduler_get() local_unnamed_addr #2

declare i32 @BLI_task_scheduler_num_threads(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_maskrasterize_handle_new() local_unnamed_addr #2

declare void @BKE_maskrasterize_handle_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mask_rasterize_func(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = sitofp i32 %7 to float
  %9 = fdiv float 1.000000e+00, %8
  %10 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %5, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !102
  %12 = sitofp i32 %11 to float
  %13 = fdiv float 1.000000e+00, %12
  %14 = fmul float %9, 5.000000e-01
  %15 = fmul float %13, 5.000000e-01
  %16 = getelementptr inbounds %struct.ThreadedMaskRasterizeData, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !105
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %21 = getelementptr inbounds %struct.ThreadedMaskRasterizeState, ptr %5, i64 0, i32 1
  br label %22

22:                                               ; preds = %19, %45
  %23 = phi i32 [ 0, %19 ], [ %46, %45 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %24 = load i32, ptr %1, align 4, !tbaa !103
  %25 = add nsw i32 %24, %23
  %26 = sitofp i32 %25 to float
  %27 = call float @llvm.fmuladd.f32(float %26, float %13, float %15)
  store float %27, ptr %20, align 4, !tbaa !38
  %28 = load i32, ptr %6, align 8, !tbaa !101
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %22, %30
  %31 = phi i32 [ %43, %30 ], [ %28, %22 ]
  %32 = phi i32 [ %42, %30 ], [ 0, %22 ]
  %33 = mul nsw i32 %31, %25
  %34 = add nsw i32 %33, %32
  %35 = sitofp i32 %32 to float
  %36 = call float @llvm.fmuladd.f32(float %35, float %9, float %14)
  store float %36, ptr %4, align 4, !tbaa !38
  %37 = load ptr, ptr %5, align 8, !tbaa !98
  %38 = call float @BKE_maskrasterize_handle_sample(ptr noundef %37, ptr noundef nonnull %4) #5
  %39 = load ptr, ptr %21, align 8, !tbaa !100
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds float, ptr %39, i64 %40
  store float %38, ptr %41, align 4, !tbaa !38
  %42 = add nuw nsw i32 %32, 1
  %43 = load i32, ptr %6, align 8, !tbaa !101
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %30, label %45, !llvm.loop !113

45:                                               ; preds = %30, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %46 = add nuw nsw i32 %23, 1
  %47 = load i32, ptr %16, align 4, !tbaa !105
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %22, label %49, !llvm.loop !114

49:                                               ; preds = %45, %3
  ret void
}

declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_maskrasterize_handle_free(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #2

declare float @BKE_maskrasterize_handle_sample(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!43, !35, i64 144}
!43 = !{!"Mask", !44, i64 0, !41, i64 120, !46, i64 128, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164}
!44 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !45, i64 98, !35, i64 100, !35, i64 104, !35, i64 108, !41, i64 112}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !41, i64 0, !41, i64 8}
!47 = !{!48, !36, i64 143}
!48 = !{!"MaskLayer", !41, i64 0, !41, i64 8, !36, i64 16, !46, i64 80, !46, i64 96, !41, i64 112, !41, i64 120, !39, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!49 = !{!50, !45, i64 16}
!50 = !{!"MaskSpline", !41, i64 0, !41, i64 8, !45, i64 16, !36, i64 18, !36, i64 19, !35, i64 20, !41, i64 24, !51, i64 32, !41, i64 216}
!51 = !{!"MaskParent", !35, i64 0, !35, i64 4, !41, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!52 = !{!36, !36, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!48, !41, i64 112}
!57 = !{!50, !35, i64 20}
!58 = !{!59, !41, i64 64}
!59 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !46, i64 16, !35, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !60, i64 56, !41, i64 64, !61, i64 72, !35, i64 208, !45, i64 212, !45, i64 214, !35, i64 216, !36, i64 220, !39, i64 228, !39, i64 232, !35, i64 236, !36, i64 240, !36, i64 304, !35, i64 368, !45, i64 372, !45, i64 374, !35, i64 376, !35, i64 380, !36, i64 384, !63, i64 392}
!60 = !{!"MovieClipUser", !35, i64 0, !45, i64 4, !45, i64 6}
!61 = !{!"MovieClipScopes", !45, i64 0, !45, i64 2, !35, i64 4, !35, i64 8, !35, i64 12, !62, i64 16, !41, i64 80, !41, i64 88, !36, i64 96, !45, i64 104, !45, i64 106, !35, i64 108, !41, i64 112, !41, i64 120, !36, i64 128}
!62 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !35, i64 56, !35, i64 60}
!63 = !{!"MaskSpaceInfo", !41, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!64 = !{!59, !45, i64 62}
!65 = !{!66, !39, i64 10908}
!66 = !{!"UserDef", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !35, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !35, i64 8484, !35, i64 8488, !35, i64 8492, !45, i64 8496, !45, i64 8498, !35, i64 8500, !35, i64 8504, !35, i64 8508, !35, i64 8512, !35, i64 8516, !35, i64 8520, !35, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !46, i64 8536, !46, i64 8552, !46, i64 8568, !46, i64 8584, !46, i64 8600, !46, i64 8616, !46, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !35, i64 8912, !35, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !39, i64 8956, !39, i64 8960, !35, i64 8964, !45, i64 8968, !45, i64 8970, !39, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !67, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !35, i64 10896, !35, i64 10900, !39, i64 10904, !39, i64 10908, !35, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !68, i64 10928}
!67 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!68 = !{!"WalkNavigation", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !45, i64 24, !36, i64 26}
!69 = !{!50, !41, i64 24}
!70 = !{!71, !35, i64 76}
!71 = !{!"MaskSplinePoint", !72, i64 0, !35, i64 72, !35, i64 76, !41, i64 80, !51, i64 88}
!72 = !{!"BezTriple", !36, i64 0, !39, i64 36, !39, i64 40, !39, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !39, i64 56, !39, i64 60, !39, i64 64, !36, i64 68}
!73 = !{!71, !36, i64 51}
!74 = !{!71, !36, i64 52}
!75 = !{!71, !36, i64 53}
!76 = !{!71, !41, i64 80}
!77 = !{!78, !35, i64 8}
!78 = !{!"MaskSplinePointUW", !39, i64 0, !39, i64 4, !35, i64 8}
!79 = !{!48, !41, i64 120}
!80 = distinct !{!80, !54, !55}
!81 = distinct !{!81, !54, !55}
!82 = distinct !{!82, !54, !55}
!83 = distinct !{!83, !54, !55}
!84 = distinct !{!84, !54, !55}
!85 = !{!86, !35, i64 4}
!86 = !{!"rcti", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!87 = !{!86, !35, i64 0}
!88 = !{!89, !39, i64 4}
!89 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!90 = !{!89, !39, i64 0}
!91 = !{!86, !35, i64 12}
!92 = !{!86, !35, i64 8}
!93 = !{!89, !39, i64 12}
!94 = !{!89, !39, i64 8}
!95 = !{!96, !39, i64 0}
!96 = !{!"View2D", !89, i64 0, !89, i64 16, !86, i64 32, !86, i64 48, !86, i64 64, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !41, i64 128, !35, i64 136, !35, i64 140, !41, i64 144, !41, i64 152}
!97 = !{!96, !39, i64 8}
!98 = !{!99, !41, i64 0}
!99 = !{!"ThreadedMaskRasterizeState", !41, i64 0, !41, i64 8, !35, i64 16, !35, i64 20}
!100 = !{!99, !41, i64 8}
!101 = !{!99, !35, i64 16}
!102 = !{!99, !35, i64 20}
!103 = !{!104, !35, i64 0}
!104 = !{!"ThreadedMaskRasterizeData", !35, i64 0, !35, i64 4}
!105 = !{!104, !35, i64 4}
!106 = distinct !{!106, !54, !55}
!107 = !{!108, !45, i64 208}
!108 = !{!"ARegion", !41, i64 0, !41, i64 8, !96, i64 16, !86, i64 176, !86, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !39, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !41, i64 240, !46, i64 248, !46, i64 264, !46, i64 280, !46, i64 296, !46, i64 312, !46, i64 328, !46, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!109 = !{!110, !35, i64 28}
!110 = !{!"MaskLayerShape", !41, i64 0, !41, i64 8, !41, i64 16, !35, i64 24, !35, i64 28, !36, i64 32, !36, i64 33}
!111 = distinct !{!111, !54, !55}
!112 = distinct !{!112, !54, !55}
!113 = distinct !{!113, !54, !55}
!114 = distinct !{!114, !54, !55}
