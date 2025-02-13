; ModuleID = 'blender/source/blender/editors/space_clip/clip_dopesheet_draw.c'
source_filename = "blender/source/blender/editors/space_clip/clip_dopesheet_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MovieTrackingDopesheetChannel = type { ptr, ptr, ptr, i32, [64 x i8], i32, ptr, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MovieTrackingDopesheetCoverageSegment = type { ptr, ptr, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@__const.clip_draw_dopesheet_main.color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FD3333340000000], align 16
@__const.clip_draw_dopesheet_main.default_color = private unnamed_addr constant [4 x float] [float 0x3FE99999A0000000, float 0x3FEDC28F60000000, float 0x3FE99999A0000000, float 0x3FD3333340000000], align 16
@__func__.clip_draw_dopesheet_channels = private unnamed_addr constant [29 x i8] c"clip_draw_dopesheet_channels\00", align 1
@RNA_MovieTrackingTrack = external global %struct.StructRNA, align 1
@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@draw_keyframe_shape._unit_diamond_shape = internal constant [4 x [2 x float]] [[2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00]], align 16
@draw_keyframe_shape.displist1 = internal unnamed_addr global i32 0, align 4
@draw_keyframe_shape.displist2 = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_dopesheet_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @clip_draw_sfra_efra(ptr noundef nonnull %11, ptr noundef %2) #8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %166, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %14 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11, i32 12, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !5
  %16 = sitofp i32 %15 to float
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 0x3FB99999A0000000
  %20 = tail call float @llvm.fmuladd.f32(float %18, float 0x3FE99999A0000000, float %19)
  %21 = fmul float %18, 0x3FE99999A0000000
  %22 = tail call float @llvm.fmuladd.f32(float %16, float %20, float %21)
  %23 = fneg float %22
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float %23, ptr %24, align 8, !tbaa !18
  call void @UI_view2d_scale_get(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call void @UI_GetThemeColor3fv(i32 noundef 77, ptr noundef nonnull %6) #8
  call void @UI_GetThemeColor3fv(i32 noundef 78, ptr noundef nonnull %7) #8
  %25 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 5.000000e-01, ptr %25, align 4, !tbaa !22
  %26 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %26, align 4, !tbaa !22
  call void @glEnable(i32 noundef 3042) #8
  call fastcc void @clip_draw_dopesheet_background(ptr noundef %1, ptr noundef nonnull %10) #10
  %27 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11, i32 12, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %165, label %30

30:                                               ; preds = %13
  %31 = fmul float %18, 0xBFE99999A0000000
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  br label %37

37:                                               ; preds = %30, %157
  %38 = phi i16 [ %36, %30 ], [ %158, %157 ]
  %39 = phi ptr [ %28, %30 ], [ %163, %157 ]
  %40 = phi float [ %31, %30 ], [ %162, %157 ]
  %41 = sitofp i16 %38 to float
  %42 = call float @llvm.fmuladd.f32(float %41, float 0xBFD99999A0000000, float %40)
  %43 = call float @llvm.fmuladd.f32(float %41, float 0x3FD99999A0000000, float %40)
  %44 = load float, ptr %33, align 8, !tbaa !24
  %45 = load float, ptr %34, align 4, !tbaa !25
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
  br i1 %58, label %63, label %157

59:                                               ; preds = %51
  %60 = fcmp olt float %45, %43
  %61 = fcmp olt float %43, %44
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %157

63:                                               ; preds = %59, %55, %51, %47
  %64 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %39, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !26
  %66 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 13
  %67 = load i32, ptr %66, align 8, !tbaa !28
  %68 = lshr i32 %67, 10
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.clip_draw_dopesheet_main.color, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) @__const.clip_draw_dopesheet_main.default_color, i64 16, i1 false)
  call fastcc void @track_channel_color(ptr noundef nonnull %65, ptr noundef nonnull %9, ptr noundef nonnull %8) #10
  call void @glColor4fv(ptr noundef nonnull %8) #8
  %73 = load float, ptr %32, align 8, !tbaa !30
  %74 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %75 = sitofp i16 %74 to float
  %76 = call float @llvm.fmuladd.f32(float %75, float 0xBFD99999A0000000, float %40)
  %77 = load float, ptr %35, align 4, !tbaa !31
  %78 = fadd float %77, 1.000000e+02
  %79 = call float @llvm.fmuladd.f32(float %75, float 0x3FD99999A0000000, float %40)
  call void @glRectf(float noundef %73, float noundef %76, float noundef %78, float noundef %79) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  %80 = load i32, ptr %66, align 8, !tbaa !28
  br label %81

81:                                               ; preds = %72, %63
  %82 = phi i32 [ %80, %72 ], [ %67, %63 ]
  %83 = and i32 %82, 64
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, float 1.000000e+00, float 5.000000e-01
  %86 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %39, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !32
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %39, i64 0, i32 6
  %91 = select i1 %71, ptr %6, ptr %7
  br label %98

92:                                               ; preds = %129, %81
  %93 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 8
  %94 = load i32, ptr %93, align 8, !tbaa !33
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %157

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 10
  br label %134

98:                                               ; preds = %89, %129
  %99 = phi i64 [ 0, %89 ], [ %130, %129 ]
  %100 = load ptr, ptr %90, align 8, !tbaa !34
  %101 = shl nuw nsw i64 %99, 1
  %102 = getelementptr inbounds i32, ptr %100, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !35
  %104 = sitofp i32 %103 to float
  %105 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %104) #8
  %106 = fptosi float %105 to i32
  %107 = load ptr, ptr %90, align 8, !tbaa !34
  %108 = or disjoint i64 %101, 1
  %109 = getelementptr inbounds i32, ptr %107, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !35
  %111 = sitofp i32 %110 to float
  %112 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %111) #8
  %113 = fptosi float %112 to i32
  call void @glColor4fv(ptr noundef nonnull %91) #8
  %114 = icmp eq i32 %106, %113
  %115 = sitofp i32 %106 to float
  br i1 %114, label %126, label %116

116:                                              ; preds = %98
  %117 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %118 = sitofp i16 %117 to float
  %119 = call float @llvm.fmuladd.f32(float %118, float -2.500000e-01, float %40)
  %120 = sitofp i32 %113 to float
  %121 = call float @llvm.fmuladd.f32(float %118, float 2.500000e-01, float %40)
  call void @glRectf(float noundef %115, float noundef %119, float noundef %120, float noundef %121) #8
  %122 = load float, ptr %4, align 4, !tbaa !22
  %123 = load float, ptr %5, align 4, !tbaa !22
  call fastcc void @draw_keyframe_shape(float noundef %115, float noundef %40, float noundef %122, float noundef %123, i8 noundef zeroext %70, float noundef %85) #10
  %124 = load float, ptr %4, align 4, !tbaa !22
  %125 = load float, ptr %5, align 4, !tbaa !22
  call fastcc void @draw_keyframe_shape(float noundef %120, float noundef %40, float noundef %124, float noundef %125, i8 noundef zeroext %70, float noundef %85) #10
  br label %129

126:                                              ; preds = %98
  %127 = load float, ptr %4, align 4, !tbaa !22
  %128 = load float, ptr %5, align 4, !tbaa !22
  call fastcc void @draw_keyframe_shape(float noundef %115, float noundef %40, float noundef %127, float noundef %128, i8 noundef zeroext %70, float noundef %85) #10
  br label %129

129:                                              ; preds = %126, %116
  %130 = add nuw nsw i64 %99, 1
  %131 = load i32, ptr %86, align 4, !tbaa !32
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %98, label %92, !llvm.loop !36

134:                                              ; preds = %96, %152
  %135 = phi i32 [ %94, %96 ], [ %153, %152 ]
  %136 = phi i64 [ 0, %96 ], [ %154, %152 ]
  %137 = load ptr, ptr %97, align 8, !tbaa !38
  %138 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %137, i64 %136, i32 5
  %139 = load i32, ptr %138, align 4, !tbaa !39
  %140 = and i32 %139, 3
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %137, i64 %136, i32 4
  %144 = load i32, ptr %143, align 4, !tbaa !41
  %145 = sitofp i32 %144 to float
  %146 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %145) #8
  %147 = fptosi float %146 to i32
  %148 = sitofp i32 %147 to float
  %149 = load float, ptr %4, align 4, !tbaa !22
  %150 = load float, ptr %5, align 4, !tbaa !22
  call fastcc void @draw_keyframe_shape(float noundef %148, float noundef %40, float noundef %149, float noundef %150, i8 noundef zeroext %70, float noundef %85) #10
  %151 = load i32, ptr %93, align 8, !tbaa !33
  br label %152

152:                                              ; preds = %142, %134
  %153 = phi i32 [ %151, %142 ], [ %135, %134 ]
  %154 = add nuw nsw i64 %136, 1
  %155 = sext i32 %153 to i64
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %134, label %157, !llvm.loop !42

157:                                              ; preds = %152, %92, %59, %55
  %158 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %159 = sitofp i16 %158 to float
  %160 = fmul float %159, 0x3FB99999A0000000
  %161 = call float @llvm.fmuladd.f32(float %159, float 0x3FE99999A0000000, float %160)
  %162 = fsub float %40, %161
  %163 = load ptr, ptr %39, align 8, !tbaa !23
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %37, !llvm.loop !43

165:                                              ; preds = %157, %13
  call void @glDisable(i32 noundef 3042) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %166

166:                                              ; preds = %165, %3
  call void @clip_draw_cfra(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_sfra_efra(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clip_draw_dopesheet_background(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 12, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 2
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 3
  br label %9

9:                                                ; preds = %6, %32
  %10 = phi ptr [ %4, %6 ], [ %33, %32 ]
  %11 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = sitofp i32 %16 to float
  %18 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %1, float noundef %17) #8
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %10, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !47
  %22 = sitofp i32 %21 to float
  %23 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %1, float noundef %22) #8
  %24 = fptosi float %23 to i32
  %25 = load i32, ptr %11, align 8, !tbaa !44
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, float 0.000000e+00, float 1.000000e+00
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef %27, float noundef 0.000000e+00, float noundef 0x3FB1EB8520000000) #8
  %28 = sitofp i32 %19 to float
  %29 = load float, ptr %7, align 8, !tbaa !24
  %30 = sitofp i32 %24 to float
  %31 = load float, ptr %8, align 4, !tbaa !25
  tail call void @glRectf(float noundef %28, float noundef %29, float noundef %30, float noundef %31) #8
  br label %32

32:                                               ; preds = %9, %14
  %33 = load ptr, ptr %10, align 8, !tbaa !23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %9, !llvm.loop !48

35:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @track_channel_color(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !28
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @UI_GetThemeColor3fv(i32 noundef 10, ptr noundef nonnull %4) #8
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16
  call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %4, float noundef 5.000000e-01) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %15

11:                                               ; preds = %3
  %12 = icmp eq ptr %1, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %1) #10
  br label %15

14:                                               ; preds = %11
  tail call void @UI_GetThemeColor3fv(i32 noundef 10, ptr noundef %2) #8
  br label %15

15:                                               ; preds = %13, %14, %9
  ret void
}

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_keyframe_shape(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, float noundef %5) unnamed_addr #0 {
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 2.500000e-01
  %10 = fptosi float %9 to i32
  %11 = load i32, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !35
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = tail call i32 @glGenLists(i32 noundef 1) #8
  store i32 %14, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !35
  tail call void @glNewList(i32 noundef %14, i32 noundef 4864) #8
  tail call void @glBegin(i32 noundef 2) #8
  tail call void @glVertex2fv(ptr noundef nonnull @draw_keyframe_shape._unit_diamond_shape) #8
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 1)) #8
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 2)) #8
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 3)) #8
  tail call void @glEnd() #8
  tail call void @glEndList() #8
  br label %15

15:                                               ; preds = %13, %6
  %16 = load i32, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !35
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @glGenLists(i32 noundef 1) #8
  store i32 %19, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !35
  tail call void @glNewList(i32 noundef %19, i32 noundef 4864) #8
  tail call void @glBegin(i32 noundef 7) #8
  tail call void @glVertex2fv(ptr noundef nonnull @draw_keyframe_shape._unit_diamond_shape) #8
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 1)) #8
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 2)) #8
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 3)) #8
  tail call void @glEnd() #8
  tail call void @glEndList() #8
  br label %20

20:                                               ; preds = %18, %15
  tail call void @glPushMatrix() #8
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #8
  %21 = fdiv float 1.000000e+00, %2
  %22 = sitofp i32 %10 to float
  %23 = fmul float %21, %22
  %24 = fdiv float 1.000000e+00, %3
  %25 = fmul float %24, %22
  tail call void @glScalef(float noundef %23, float noundef %25, float noundef 1.000000e+00) #8
  tail call void @glEnable(i32 noundef 2848) #8
  %26 = icmp eq i8 %4, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = fsub float 1.000000e+00, %5
  %29 = fmul float %28, -2.550000e+02
  %30 = fptosi float %29 to i32
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 78, i32 noundef 50, i32 noundef %30) #8
  br label %32

31:                                               ; preds = %20
  tail call void @glColor4f(float noundef 0x3FED1EB860000000, float noundef 0x3FED1EB860000000, float noundef 0x3FED1EB860000000, float noundef %5) #8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !35
  tail call void @glCallList(i32 noundef %33) #8
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #8
  %34 = load i32, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !35
  tail call void @glCallList(i32 noundef %34) #8
  tail call void @glDisable(i32 noundef 2848) #8
  tail call void @glPopMatrix() #8
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_cfra(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_dopesheet_channels(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #8
  %9 = tail call ptr @UI_GetStyle() #8
  %10 = getelementptr inbounds %struct.uiStyle, ptr %9, i64 0, i32 6
  %11 = load i16, ptr %10, align 8, !tbaa !49
  %12 = sext i16 %11 to i32
  %13 = icmp eq ptr %8, null
  br i1 %13, label %175, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 12, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !5
  %17 = sitofp i32 %16 to float
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 0x3FB99999A0000000
  %21 = tail call float @llvm.fmuladd.f32(float %19, float 0x3FE99999A0000000, float %20)
  %22 = fmul float %19, 0x3FE99999A0000000
  %23 = tail call float @llvm.fmuladd.f32(float %17, float %21, float %22)
  %24 = fptosi float %23 to i32
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %26 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %25) #10
  %27 = icmp slt i32 %26, %24
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = sub nsw i32 0, %24
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float %30, ptr %31, align 8, !tbaa !18
  br label %32

32:                                               ; preds = %28, %14
  tail call void @UI_view2d_sync(ptr noundef null, ptr noundef %5, ptr noundef nonnull %7, i32 noundef 1) #8
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %34 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !52
  %35 = fmul float %34, 1.100000e+01
  %36 = fptosi float %35 to i32
  %37 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !53
  tail call void @BLF_size(i32 noundef %12, i32 noundef %36, i32 noundef %37) #8
  %38 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 12, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = icmp eq ptr %39, null
  br i1 %40, label %107, label %41

41:                                               ; preds = %32
  %42 = sitofp i16 %33 to float
  %43 = fmul float %42, 0xBFE99999A0000000
  %44 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %45 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %46 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %47 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %48 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  br label %49

49:                                               ; preds = %41, %99
  %50 = phi i16 [ %48, %41 ], [ %101, %99 ]
  %51 = phi ptr [ %39, %41 ], [ %105, %99 ]
  %52 = phi float [ %43, %41 ], [ %104, %99 ]
  %53 = sitofp i16 %50 to float
  %54 = call float @llvm.fmuladd.f32(float %53, float 0xBFD99999A0000000, float %52)
  %55 = call float @llvm.fmuladd.f32(float %53, float 0x3FD99999A0000000, float %52)
  %56 = load float, ptr %45, align 8, !tbaa !24
  %57 = load float, ptr %46, align 4, !tbaa !25
  %58 = fcmp olt float %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = fcmp olt float %56, %54
  %61 = fcmp olt float %54, %57
  %62 = and i1 %60, %61
  br i1 %62, label %75, label %67

63:                                               ; preds = %49
  %64 = fcmp olt float %57, %54
  %65 = fcmp olt float %54, %56
  %66 = and i1 %64, %65
  br i1 %66, label %75, label %71

67:                                               ; preds = %59
  %68 = fcmp olt float %56, %55
  %69 = fcmp olt float %55, %57
  %70 = and i1 %68, %69
  br i1 %70, label %75, label %99

71:                                               ; preds = %63
  %72 = fcmp olt float %57, %55
  %73 = fcmp olt float %55, %56
  %74 = and i1 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71, %67, %63, %59
  %76 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %51, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %78 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %77, i64 0, i32 13
  %79 = load i32, ptr %78, align 8, !tbaa !28
  call fastcc void @track_channel_color(ptr noundef %77, ptr noundef null, ptr noundef nonnull %3) #10
  call void @glColor3fv(ptr noundef nonnull %3) #8
  %80 = load float, ptr %44, align 8, !tbaa !30
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %82 = sitofp i16 %81 to float
  %83 = call float @llvm.fmuladd.f32(float %82, float 0xBFD99999A0000000, float %52)
  %84 = load float, ptr %47, align 4, !tbaa !31
  %85 = fadd float %84, 1.000000e+02
  %86 = call float @llvm.fmuladd.f32(float %82, float 0x3FD99999A0000000, float %52)
  call void @glRectf(float noundef %80, float noundef %83, float noundef %85, float noundef %86) #8
  %87 = and i32 %79, 1024
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 3, i32 4
  call void @UI_ThemeColor(i32 noundef %89) #8
  %90 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %51, i64 0, i32 4
  %91 = call float @BLF_height(i32 noundef %12, ptr noundef nonnull %90, i64 noundef 64) #8
  %92 = load float, ptr %44, align 8, !tbaa !30
  %93 = fadd float %92, 4.000000e+00
  %94 = fmul float %91, 5.000000e-01
  %95 = fsub float %52, %94
  call void @BLF_position(i32 noundef %12, float noundef %93, float noundef %95, float noundef 0.000000e+00) #8
  %96 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %90) #11
  call void @BLF_draw(i32 noundef %12, ptr noundef nonnull %90, i64 noundef %96) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %98 = sitofp i16 %97 to float
  br label %99

99:                                               ; preds = %71, %67, %75
  %100 = phi float [ %53, %71 ], [ %53, %67 ], [ %98, %75 ]
  %101 = phi i16 [ %50, %71 ], [ %50, %67 ], [ %97, %75 ]
  %102 = fmul float %100, 0x3FB99999A0000000
  %103 = call float @llvm.fmuladd.f32(float %100, float 0x3FE99999A0000000, float %102)
  %104 = fsub float %52, %103
  %105 = load ptr, ptr %51, align 8, !tbaa !23
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %49, !llvm.loop !54

107:                                              ; preds = %99, %32
  %108 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.clip_draw_dopesheet_channels, i16 noundef signext 0) #8
  %109 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %110 = call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull @.str) #8
  call void @glEnable(i32 noundef 3042) #8
  %111 = load ptr, ptr %38, align 8, !tbaa !23
  %112 = icmp eq ptr %111, null
  br i1 %112, label %174, label %113

113:                                              ; preds = %107
  %114 = sitofp i16 %109 to float
  %115 = fmul float %114, 0xBFE99999A0000000
  %116 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %117 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %118 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %119 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  br label %120

120:                                              ; preds = %113, %166
  %121 = phi i16 [ %119, %113 ], [ %168, %166 ]
  %122 = phi ptr [ %111, %113 ], [ %172, %166 ]
  %123 = phi float [ %115, %113 ], [ %171, %166 ]
  %124 = sitofp i16 %121 to float
  %125 = call float @llvm.fmuladd.f32(float %124, float 0xBFD99999A0000000, float %123)
  %126 = call float @llvm.fmuladd.f32(float %124, float 0x3FD99999A0000000, float %123)
  %127 = load float, ptr %116, align 8, !tbaa !24
  %128 = load float, ptr %117, align 4, !tbaa !25
  %129 = fcmp olt float %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = fcmp olt float %127, %125
  %132 = fcmp olt float %125, %128
  %133 = and i1 %131, %132
  br i1 %133, label %146, label %138

134:                                              ; preds = %120
  %135 = fcmp olt float %128, %125
  %136 = fcmp olt float %125, %127
  %137 = and i1 %135, %136
  br i1 %137, label %146, label %142

138:                                              ; preds = %130
  %139 = fcmp olt float %127, %126
  %140 = fcmp olt float %126, %128
  %141 = and i1 %139, %140
  br i1 %141, label %146, label %166

142:                                              ; preds = %134
  %143 = fcmp olt float %128, %126
  %144 = fcmp olt float %126, %127
  %145 = and i1 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %142, %138, %134, %130
  %147 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %122, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !26
  %149 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %148, i64 0, i32 13
  %150 = load i32, ptr %149, align 8, !tbaa !28
  %151 = and i32 %150, 64
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 40, i32 41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @RNA_pointer_create(ptr noundef nonnull %8, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef %148, ptr noundef nonnull %4) #8
  call void @uiBlockSetEmboss(ptr noundef %108, i8 noundef zeroext 1) #8
  %154 = load float, ptr %118, align 4, !tbaa !31
  %155 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %156 = sitofp i16 %155 to float
  %157 = fsub float %154, %156
  %158 = fadd float %157, -4.000000e+00
  %159 = fptosi float %158 to i32
  %160 = fmul float %156, 5.000000e-01
  %161 = fsub float %123, %160
  %162 = fptosi float %161 to i32
  %163 = call ptr @uiDefIconButR_prop(ptr noundef %108, i32 noundef 6656, i32 noundef 1, i32 noundef %153, i32 noundef %159, i32 noundef %162, i16 noundef signext %155, i16 noundef signext %155, ptr noundef nonnull %4, ptr noundef %110, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #8
  call void @uiBlockSetEmboss(ptr noundef %108, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  %164 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !13
  %165 = sitofp i16 %164 to float
  br label %166

166:                                              ; preds = %142, %138, %146
  %167 = phi float [ %124, %142 ], [ %124, %138 ], [ %165, %146 ]
  %168 = phi i16 [ %121, %142 ], [ %121, %138 ], [ %164, %146 ]
  %169 = fmul float %167, 0x3FB99999A0000000
  %170 = call float @llvm.fmuladd.f32(float %167, float 0x3FE99999A0000000, float %169)
  %171 = fsub float %123, %170
  %172 = load ptr, ptr %122, align 8, !tbaa !23
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %120, !llvm.loop !55

174:                                              ; preds = %166, %107
  call void @glDisable(i32 noundef 3042) #8
  call void @uiEndBlock(ptr noundef %0, ptr noundef %108) #8
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %108) #8
  br label %175

175:                                              ; preds = %2, %174
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !56
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLF_height(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !22
  store float %3, ptr %0, align 4, !tbaa !22
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !22
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !22
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !22
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !22
  ret void
}

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 40}
!6 = !{!"MovieTrackingDopesheet", !7, i64 0, !10, i64 4, !10, i64 6, !11, i64 8, !11, i64 24, !7, i64 40, !7, i64 44}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"ListBase", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !10, i64 8948}
!14 = !{!"UserDef", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !7, i64 8468, !10, i64 8472, !10, i64 8474, !10, i64 8476, !10, i64 8478, !10, i64 8480, !10, i64 8482, !7, i64 8484, !7, i64 8488, !7, i64 8492, !10, i64 8496, !10, i64 8498, !7, i64 8500, !7, i64 8504, !7, i64 8508, !7, i64 8512, !7, i64 8516, !7, i64 8520, !7, i64 8524, !10, i64 8528, !10, i64 8530, !10, i64 8532, !10, i64 8534, !11, i64 8536, !11, i64 8552, !11, i64 8568, !11, i64 8584, !11, i64 8600, !11, i64 8616, !11, i64 8632, !8, i64 8648, !10, i64 8712, !10, i64 8714, !10, i64 8716, !10, i64 8718, !10, i64 8720, !10, i64 8722, !10, i64 8724, !10, i64 8726, !8, i64 8728, !10, i64 8896, !10, i64 8898, !10, i64 8900, !10, i64 8902, !10, i64 8904, !10, i64 8906, !10, i64 8908, !10, i64 8910, !7, i64 8912, !7, i64 8916, !10, i64 8920, !10, i64 8922, !10, i64 8924, !10, i64 8926, !10, i64 8928, !10, i64 8930, !10, i64 8932, !10, i64 8934, !10, i64 8936, !10, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !10, i64 8944, !10, i64 8946, !10, i64 8948, !10, i64 8950, !10, i64 8952, !10, i64 8954, !15, i64 8956, !15, i64 8960, !7, i64 8964, !10, i64 8968, !10, i64 8970, !15, i64 8972, !10, i64 8976, !10, i64 8978, !10, i64 8980, !10, i64 8982, !16, i64 8984, !8, i64 9760, !8, i64 9772, !10, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !7, i64 10896, !7, i64 10900, !15, i64 10904, !15, i64 10908, !7, i64 10912, !10, i64 10916, !10, i64 10918, !10, i64 10920, !10, i64 10922, !10, i64 10924, !10, i64 10926, !17, i64 10928}
!15 = !{!"float", !8, i64 0}
!16 = !{!"ColorBand", !10, i64 0, !10, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!17 = !{!"WalkNavigation", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !10, i64 24, !8, i64 26}
!18 = !{!19, !15, i64 8}
!19 = !{!"View2D", !20, i64 0, !20, i64 16, !21, i64 32, !21, i64 48, !21, i64 64, !8, i64 80, !8, i64 88, !15, i64 96, !15, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !12, i64 128, !7, i64 136, !7, i64 140, !12, i64 144, !12, i64 152}
!20 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!21 = !{!"rcti", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!22 = !{!15, !15, i64 0}
!23 = !{!12, !12, i64 0}
!24 = !{!19, !15, i64 24}
!25 = !{!19, !15, i64 28}
!26 = !{!27, !12, i64 16}
!27 = !{!"MovieTrackingDopesheetChannel", !12, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !8, i64 28, !7, i64 92, !12, i64 96, !7, i64 104, !7, i64 108}
!28 = !{!29, !7, i64 152}
!29 = !{!"MovieTrackingTrack", !12, i64 0, !12, i64 8, !8, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !7, i64 120, !7, i64 124, !12, i64 128, !8, i64 136, !15, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !8, i64 164, !10, i64 176, !10, i64 178, !10, i64 180, !10, i64 182, !7, i64 184, !15, i64 188, !12, i64 192, !15, i64 200, !15, i64 204}
!30 = !{!19, !15, i64 16}
!31 = !{!19, !15, i64 20}
!32 = !{!27, !7, i64 92}
!33 = !{!29, !7, i64 120}
!34 = !{!27, !12, i64 96}
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!29, !12, i64 128}
!39 = !{!40, !7, i64 60}
!40 = !{!"MovieTrackingMarker", !8, i64 0, !8, i64 8, !8, i64 40, !8, i64 48, !7, i64 56, !7, i64 60}
!41 = !{!40, !7, i64 56}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !37}
!44 = !{!45, !7, i64 16}
!45 = !{!"MovieTrackingDopesheetCoverageSegment", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!46 = !{!45, !7, i64 20}
!47 = !{!45, !7, i64 24}
!48 = distinct !{!48, !37}
!49 = !{!50, !10, i64 176}
!50 = !{!"uiStyle", !12, i64 0, !12, i64 8, !8, i64 16, !51, i64 80, !51, i64 112, !51, i64 144, !51, i64 176, !15, i64 208, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !10, i64 220, !10, i64 222, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230}
!51 = !{!"uiFontStyle", !10, i64 0, !10, i64 2, !10, i64 4, !8, i64 6, !10, i64 12, !10, i64 14, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !15, i64 24, !15, i64 28}
!52 = !{!14, !15, i64 10908}
!53 = !{!14, !7, i64 8524}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = !{!21, !7, i64 12}
!57 = !{!21, !7, i64 8}
