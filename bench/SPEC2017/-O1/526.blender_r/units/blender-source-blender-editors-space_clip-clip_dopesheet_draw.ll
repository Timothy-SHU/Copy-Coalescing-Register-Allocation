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
%struct.MovieTrackingDopesheetCoverageSegment = type { ptr, ptr, i32, i32, i32, i32 }
%struct.MovieTrackingDopesheetChannel = type { ptr, ptr, ptr, i32, [64 x i8], i32, ptr, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@__const.clip_draw_dopesheet_main.color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FD3333340000000], align 16
@__func__.clip_draw_dopesheet_channels = private unnamed_addr constant [29 x i8] c"clip_draw_dopesheet_channels\00", align 1
@RNA_MovieTrackingTrack = external global %struct.StructRNA, align 1
@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@draw_keyframe_shape._unit_diamond_shape = internal constant [4 x [2 x float]] [[2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00]], align 16
@draw_keyframe_shape.displist1 = internal unnamed_addr global i32 0, align 4
@draw_keyframe_shape.displist2 = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_dopesheet_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @clip_draw_sfra_efra(ptr noundef nonnull %11, ptr noundef %2) #6
  %12 = icmp eq ptr %10, null
  br i1 %12, label %204, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %14 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11, i32 12, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = sitofp i32 %15 to float
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 0x3FB99999A0000000
  %20 = tail call float @llvm.fmuladd.f32(float %18, float 0x3FE99999A0000000, float %19)
  %21 = fmul float %18, 0x3FE99999A0000000
  %22 = tail call float @llvm.fmuladd.f32(float %16, float %20, float %21)
  %23 = fneg float %22
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float %23, ptr %24, align 8, !tbaa !47
  %25 = fmul float %18, 0xBFE99999A0000000
  call void @UI_view2d_scale_get(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  call void @UI_GetThemeColor3fv(i32 noundef 77, ptr noundef nonnull %7) #6
  call void @UI_GetThemeColor3fv(i32 noundef 78, ptr noundef nonnull %8) #6
  %26 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 5.000000e-01, ptr %26, align 4, !tbaa !51
  %27 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 1.000000e+00, ptr %27, align 4, !tbaa !51
  call void @glEnable(i32 noundef 3042) #6
  %28 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11, i32 12, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %33 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  br label %34

34:                                               ; preds = %31, %57
  %35 = phi ptr [ %29, %31 ], [ %58, %57 ]
  %36 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !53
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %35, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !55
  %42 = sitofp i32 %41 to float
  %43 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %42) #6
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %35, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !56
  %47 = sitofp i32 %46 to float
  %48 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %47) #6
  %49 = fptosi float %48 to i32
  %50 = load i32, ptr %36, align 8, !tbaa !53
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, float 0.000000e+00, float 1.000000e+00
  call void @glColor4f(float noundef 1.000000e+00, float noundef %52, float noundef 0.000000e+00, float noundef 0x3FB1EB8520000000) #6
  %53 = sitofp i32 %44 to float
  %54 = load float, ptr %32, align 8, !tbaa !57
  %55 = sitofp i32 %49 to float
  %56 = load float, ptr %33, align 4, !tbaa !58
  call void @glRectf(float noundef %53, float noundef %54, float noundef %55, float noundef %56) #6
  br label %57

57:                                               ; preds = %39, %34
  %58 = load ptr, ptr %35, align 8, !tbaa !52
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %34, !llvm.loop !59

60:                                               ; preds = %57, %13
  %61 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11, i32 12, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  %63 = icmp eq ptr %62, null
  br i1 %63, label %203, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %66 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %67 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %68 = getelementptr inbounds float, ptr %9, i64 1
  %69 = getelementptr inbounds float, ptr %9, i64 2
  %70 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  br label %71

71:                                               ; preds = %64, %195
  %72 = phi ptr [ %62, %64 ], [ %201, %195 ]
  %73 = phi float [ %25, %64 ], [ %200, %195 ]
  %74 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %75 = sitofp i16 %74 to float
  %76 = call float @llvm.fmuladd.f32(float %75, float 0xBFD99999A0000000, float %73)
  %77 = call float @llvm.fmuladd.f32(float %75, float 0x3FD99999A0000000, float %73)
  %78 = load float, ptr %66, align 8, !tbaa !57
  %79 = load float, ptr %67, align 4, !tbaa !58
  %80 = fcmp olt float %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = fcmp olt float %78, %76
  %83 = fcmp olt float %76, %79
  %84 = and i1 %82, %83
  br i1 %84, label %98, label %89

85:                                               ; preds = %71
  %86 = fcmp olt float %79, %76
  %87 = fcmp olt float %76, %78
  %88 = and i1 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %85, %81
  br i1 %80, label %90, label %94

90:                                               ; preds = %89
  %91 = fcmp olt float %78, %77
  %92 = fcmp olt float %77, %79
  %93 = and i1 %91, %92
  br i1 %93, label %98, label %195

94:                                               ; preds = %89
  %95 = fcmp olt float %79, %77
  %96 = fcmp olt float %77, %78
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %195

98:                                               ; preds = %94, %90, %85, %81
  %99 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %72, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !62
  %101 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %100, i64 0, i32 13
  %102 = load i32, ptr %101, align 8, !tbaa !64
  %103 = lshr i32 %102, 10
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) @__const.clip_draw_dopesheet_main.color, i64 16, i1 false)
  %108 = and i32 %102, 128
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @UI_GetThemeColor3fv(i32 noundef 10, ptr noundef nonnull %4) #6
  %111 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %100, i64 0, i32 16
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %111, ptr noundef nonnull %4, float noundef 5.000000e-01) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  br label %113

112:                                              ; preds = %107
  store float 0x3FE99999A0000000, ptr %9, align 16, !tbaa !51
  store float 0x3FEDC28F60000000, ptr %68, align 4, !tbaa !51
  store float 0x3FE99999A0000000, ptr %69, align 8, !tbaa !51
  br label %113

113:                                              ; preds = %110, %112
  call void @glColor4fv(ptr noundef nonnull %9) #6
  %114 = load float, ptr %65, align 8, !tbaa !66
  %115 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %116 = sitofp i16 %115 to float
  %117 = call float @llvm.fmuladd.f32(float %116, float 0xBFD99999A0000000, float %73)
  %118 = load float, ptr %70, align 4, !tbaa !67
  %119 = fadd float %118, 1.000000e+02
  %120 = call float @llvm.fmuladd.f32(float %116, float 0x3FD99999A0000000, float %73)
  call void @glRectf(float noundef %114, float noundef %117, float noundef %119, float noundef %120) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  br label %121

121:                                              ; preds = %113, %98
  %122 = load i32, ptr %101, align 8, !tbaa !64
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, float 1.000000e+00, float 5.000000e-01
  %126 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %72, i64 0, i32 5
  %127 = load i32, ptr %126, align 4, !tbaa !68
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %72, i64 0, i32 6
  %131 = select i1 %106, ptr %7, ptr %8
  br label %138

132:                                              ; preds = %169, %121
  %133 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %100, i64 0, i32 8
  %134 = load i32, ptr %133, align 8, !tbaa !69
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %195

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %100, i64 0, i32 10
  br label %174

138:                                              ; preds = %129, %169
  %139 = phi i64 [ 0, %129 ], [ %170, %169 ]
  %140 = load ptr, ptr %130, align 8, !tbaa !70
  %141 = shl nuw nsw i64 %139, 1
  %142 = getelementptr inbounds i32, ptr %140, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !71
  %144 = sitofp i32 %143 to float
  %145 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %144) #6
  %146 = fptosi float %145 to i32
  %147 = load ptr, ptr %130, align 8, !tbaa !70
  %148 = or disjoint i64 %141, 1
  %149 = getelementptr inbounds i32, ptr %147, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !71
  %151 = sitofp i32 %150 to float
  %152 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %151) #6
  %153 = fptosi float %152 to i32
  call void @glColor4fv(ptr noundef nonnull %131) #6
  %154 = icmp eq i32 %146, %153
  %155 = sitofp i32 %146 to float
  br i1 %154, label %166, label %156

156:                                              ; preds = %138
  %157 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %158 = sitofp i16 %157 to float
  %159 = call float @llvm.fmuladd.f32(float %158, float -2.500000e-01, float %73)
  %160 = sitofp i32 %153 to float
  %161 = call float @llvm.fmuladd.f32(float %158, float 2.500000e-01, float %73)
  call void @glRectf(float noundef %155, float noundef %159, float noundef %160, float noundef %161) #6
  %162 = load float, ptr %5, align 4, !tbaa !51
  %163 = load float, ptr %6, align 4, !tbaa !51
  call fastcc void @draw_keyframe_shape(float noundef %155, float noundef %73, float noundef %162, float noundef %163, i8 noundef zeroext %105, float noundef %125)
  %164 = load float, ptr %5, align 4, !tbaa !51
  %165 = load float, ptr %6, align 4, !tbaa !51
  call fastcc void @draw_keyframe_shape(float noundef %160, float noundef %73, float noundef %164, float noundef %165, i8 noundef zeroext %105, float noundef %125)
  br label %169

166:                                              ; preds = %138
  %167 = load float, ptr %5, align 4, !tbaa !51
  %168 = load float, ptr %6, align 4, !tbaa !51
  call fastcc void @draw_keyframe_shape(float noundef %155, float noundef %73, float noundef %167, float noundef %168, i8 noundef zeroext %105, float noundef %125)
  br label %169

169:                                              ; preds = %166, %156
  %170 = add nuw nsw i64 %139, 1
  %171 = load i32, ptr %126, align 4, !tbaa !68
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %170, %172
  br i1 %173, label %138, label %132, !llvm.loop !72

174:                                              ; preds = %136, %190
  %175 = phi i64 [ 0, %136 ], [ %191, %190 ]
  %176 = load ptr, ptr %137, align 8, !tbaa !73
  %177 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %176, i64 %175, i32 5
  %178 = load i32, ptr %177, align 4, !tbaa !74
  %179 = and i32 %178, 3
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %176, i64 %175, i32 4
  %183 = load i32, ptr %182, align 4, !tbaa !76
  %184 = sitofp i32 %183 to float
  %185 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef nonnull %10, float noundef %184) #6
  %186 = fptosi float %185 to i32
  %187 = sitofp i32 %186 to float
  %188 = load float, ptr %5, align 4, !tbaa !51
  %189 = load float, ptr %6, align 4, !tbaa !51
  call fastcc void @draw_keyframe_shape(float noundef %187, float noundef %73, float noundef %188, float noundef %189, i8 noundef zeroext %105, float noundef %125)
  br label %190

190:                                              ; preds = %181, %174
  %191 = add nuw nsw i64 %175, 1
  %192 = load i32, ptr %133, align 8, !tbaa !69
  %193 = sext i32 %192 to i64
  %194 = icmp slt i64 %191, %193
  br i1 %194, label %174, label %195, !llvm.loop !77

195:                                              ; preds = %190, %132, %94, %90
  %196 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %197 = sitofp i16 %196 to float
  %198 = fmul float %197, 0x3FB99999A0000000
  %199 = call float @llvm.fmuladd.f32(float %197, float 0x3FE99999A0000000, float %198)
  %200 = fsub float %73, %199
  %201 = load ptr, ptr %72, align 8, !tbaa !52
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %71, !llvm.loop !78

203:                                              ; preds = %195, %60
  call void @glDisable(i32 noundef 3042) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %204

204:                                              ; preds = %203, %3
  call void @clip_draw_cfra(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare void @clip_draw_sfra_efra(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_keyframe_shape(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, float noundef %5) unnamed_addr #0 {
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 2.500000e-01
  %10 = fptosi float %9 to i32
  %11 = load i32, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !71
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = tail call i32 @glGenLists(i32 noundef 1) #6
  store i32 %14, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !71
  tail call void @glNewList(i32 noundef %14, i32 noundef 4864) #6
  tail call void @glBegin(i32 noundef 2) #6
  tail call void @glVertex2fv(ptr noundef nonnull @draw_keyframe_shape._unit_diamond_shape) #6
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 1)) #6
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 2)) #6
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 3)) #6
  tail call void @glEnd() #6
  tail call void @glEndList() #6
  br label %15

15:                                               ; preds = %13, %6
  %16 = load i32, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !71
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @glGenLists(i32 noundef 1) #6
  store i32 %19, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !71
  tail call void @glNewList(i32 noundef %19, i32 noundef 4864) #6
  tail call void @glBegin(i32 noundef 7) #6
  tail call void @glVertex2fv(ptr noundef nonnull @draw_keyframe_shape._unit_diamond_shape) #6
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 1)) #6
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 2)) #6
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @draw_keyframe_shape._unit_diamond_shape, i64 0, i64 3)) #6
  tail call void @glEnd() #6
  tail call void @glEndList() #6
  br label %20

20:                                               ; preds = %18, %15
  tail call void @glPushMatrix() #6
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #6
  %21 = fdiv float 1.000000e+00, %2
  %22 = sitofp i32 %10 to float
  %23 = fmul float %21, %22
  %24 = fdiv float 1.000000e+00, %3
  %25 = fmul float %24, %22
  tail call void @glScalef(float noundef %23, float noundef %25, float noundef 1.000000e+00) #6
  tail call void @glEnable(i32 noundef 2848) #6
  %26 = icmp eq i8 %4, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = fsub float 1.000000e+00, %5
  %29 = fmul float %28, -2.550000e+02
  %30 = fptosi float %29 to i32
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 78, i32 noundef 50, i32 noundef %30) #6
  br label %32

31:                                               ; preds = %20
  tail call void @glColor4f(float noundef 0x3FED1EB860000000, float noundef 0x3FED1EB860000000, float noundef 0x3FED1EB860000000, float noundef %5) #6
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !71
  tail call void @glCallList(i32 noundef %33) #6
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #6
  %34 = load i32, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !71
  tail call void @glCallList(i32 noundef %34) #6
  tail call void @glDisable(i32 noundef 2848) #6
  tail call void @glPopMatrix() #6
  ret void
}

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @clip_draw_cfra(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_dopesheet_channels(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #6
  %10 = tail call ptr @UI_GetStyle() #6
  %11 = getelementptr inbounds %struct.uiStyle, ptr %10, i64 0, i32 6
  %12 = load i16, ptr %11, align 8, !tbaa !79
  %13 = sext i16 %12 to i32
  %14 = icmp eq ptr %9, null
  br i1 %14, label %181, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11, i32 12, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = sitofp i32 %17 to float
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %20 = sitofp i16 %19 to float
  %21 = fmul float %20, 0x3FB99999A0000000
  %22 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FE99999A0000000, float %21)
  %23 = fmul float %20, 0x3FE99999A0000000
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %22, float %23)
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !82
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !83
  %30 = sub nsw i32 %27, %29
  %31 = icmp slt i32 %30, %25
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = sub nsw i32 0, %25
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float %34, ptr %35, align 8, !tbaa !47
  br label %36

36:                                               ; preds = %32, %15
  tail call void @UI_view2d_sync(ptr noundef null, ptr noundef %6, ptr noundef nonnull %8, i32 noundef 1) #6
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %38 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !84
  %39 = fmul float %38, 1.100000e+01
  %40 = fptosi float %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !85
  tail call void @BLF_size(i32 noundef %13, i32 noundef %40, i32 noundef %41) #6
  %42 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11, i32 12, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = icmp eq ptr %43, null
  br i1 %44, label %115, label %45

45:                                               ; preds = %36
  %46 = sitofp i16 %37 to float
  %47 = fmul float %46, 0xBFE99999A0000000
  %48 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %49 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %50 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %51 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  br label %52

52:                                               ; preds = %45, %107
  %53 = phi ptr [ %43, %45 ], [ %113, %107 ]
  %54 = phi float [ %47, %45 ], [ %112, %107 ]
  %55 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %56 = sitofp i16 %55 to float
  %57 = call float @llvm.fmuladd.f32(float %56, float 0xBFD99999A0000000, float %54)
  %58 = call float @llvm.fmuladd.f32(float %56, float 0x3FD99999A0000000, float %54)
  %59 = load float, ptr %49, align 8, !tbaa !57
  %60 = load float, ptr %50, align 4, !tbaa !58
  %61 = fcmp olt float %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = fcmp olt float %59, %57
  %64 = fcmp olt float %57, %60
  %65 = and i1 %63, %64
  br i1 %65, label %79, label %70

66:                                               ; preds = %52
  %67 = fcmp olt float %60, %57
  %68 = fcmp olt float %57, %59
  %69 = and i1 %67, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %66, %62
  br i1 %61, label %71, label %75

71:                                               ; preds = %70
  %72 = fcmp olt float %59, %58
  %73 = fcmp olt float %58, %60
  %74 = and i1 %72, %73
  br i1 %74, label %79, label %107

75:                                               ; preds = %70
  %76 = fcmp olt float %60, %58
  %77 = fcmp olt float %58, %59
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75, %71, %66, %62
  %80 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %53, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %82 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %81, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !64
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @UI_GetThemeColor3fv(i32 noundef 10, ptr noundef nonnull %3) #6
  %87 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %81, i64 0, i32 16
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %87, ptr noundef nonnull %3, float noundef 5.000000e-01) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  br label %89

88:                                               ; preds = %79
  call void @UI_GetThemeColor3fv(i32 noundef 10, ptr noundef nonnull %4) #6
  br label %89

89:                                               ; preds = %86, %88
  call void @glColor3fv(ptr noundef nonnull %4) #6
  %90 = load float, ptr %48, align 8, !tbaa !66
  %91 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %92 = sitofp i16 %91 to float
  %93 = call float @llvm.fmuladd.f32(float %92, float 0xBFD99999A0000000, float %54)
  %94 = load float, ptr %51, align 4, !tbaa !67
  %95 = fadd float %94, 1.000000e+02
  %96 = call float @llvm.fmuladd.f32(float %92, float 0x3FD99999A0000000, float %54)
  call void @glRectf(float noundef %90, float noundef %93, float noundef %95, float noundef %96) #6
  %97 = and i32 %83, 1024
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 3, i32 4
  call void @UI_ThemeColor(i32 noundef %99) #6
  %100 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %53, i64 0, i32 4
  %101 = call float @BLF_height(i32 noundef %13, ptr noundef nonnull %100, i64 noundef 64) #6
  %102 = load float, ptr %48, align 8, !tbaa !66
  %103 = fadd float %102, 4.000000e+00
  %104 = fmul float %101, 5.000000e-01
  %105 = fsub float %54, %104
  call void @BLF_position(i32 noundef %13, float noundef %103, float noundef %105, float noundef 0.000000e+00) #6
  %106 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #7
  call void @BLF_draw(i32 noundef %13, ptr noundef nonnull %100, i64 noundef %106) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  br label %107

107:                                              ; preds = %75, %71, %89
  %108 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %109 = sitofp i16 %108 to float
  %110 = fmul float %109, 0x3FB99999A0000000
  %111 = call float @llvm.fmuladd.f32(float %109, float 0x3FE99999A0000000, float %110)
  %112 = fsub float %54, %111
  %113 = load ptr, ptr %53, align 8, !tbaa !52
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %52, !llvm.loop !86

115:                                              ; preds = %107, %36
  %116 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.clip_draw_dopesheet_channels, i16 noundef signext 0) #6
  %117 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %118 = call ptr @RNA_struct_type_find_property(ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull @.str) #6
  call void @glEnable(i32 noundef 3042) #6
  %119 = load ptr, ptr %42, align 8, !tbaa !52
  %120 = icmp eq ptr %119, null
  br i1 %120, label %180, label %121

121:                                              ; preds = %115
  %122 = sitofp i16 %117 to float
  %123 = fmul float %122, 0xBFE99999A0000000
  %124 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %125 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %126 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  br label %127

127:                                              ; preds = %121, %172
  %128 = phi ptr [ %119, %121 ], [ %178, %172 ]
  %129 = phi float [ %123, %121 ], [ %177, %172 ]
  %130 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %131 = sitofp i16 %130 to float
  %132 = call float @llvm.fmuladd.f32(float %131, float 0xBFD99999A0000000, float %129)
  %133 = call float @llvm.fmuladd.f32(float %131, float 0x3FD99999A0000000, float %129)
  %134 = load float, ptr %124, align 8, !tbaa !57
  %135 = load float, ptr %125, align 4, !tbaa !58
  %136 = fcmp olt float %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = fcmp olt float %134, %132
  %139 = fcmp olt float %132, %135
  %140 = and i1 %138, %139
  br i1 %140, label %154, label %145

141:                                              ; preds = %127
  %142 = fcmp olt float %135, %132
  %143 = fcmp olt float %132, %134
  %144 = and i1 %142, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %141, %137
  br i1 %136, label %146, label %150

146:                                              ; preds = %145
  %147 = fcmp olt float %134, %133
  %148 = fcmp olt float %133, %135
  %149 = and i1 %147, %148
  br i1 %149, label %154, label %172

150:                                              ; preds = %145
  %151 = fcmp olt float %135, %133
  %152 = fcmp olt float %133, %134
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %150, %146, %141, %137
  %155 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %128, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !62
  %157 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %156, i64 0, i32 13
  %158 = load i32, ptr %157, align 8, !tbaa !64
  %159 = and i32 %158, 64
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 40, i32 41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef %156, ptr noundef nonnull %5) #6
  call void @uiBlockSetEmboss(ptr noundef %116, i8 noundef zeroext 1) #6
  %162 = load float, ptr %126, align 4, !tbaa !67
  %163 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %164 = sitofp i16 %163 to float
  %165 = fsub float %162, %164
  %166 = fadd float %165, -4.000000e+00
  %167 = fptosi float %166 to i32
  %168 = fmul float %164, 5.000000e-01
  %169 = fsub float %129, %168
  %170 = fptosi float %169 to i32
  %171 = call ptr @uiDefIconButR_prop(ptr noundef %116, i32 noundef 6656, i32 noundef 1, i32 noundef %161, i32 noundef %167, i32 noundef %170, i16 noundef signext %163, i16 noundef signext %163, ptr noundef nonnull %5, ptr noundef %118, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #6
  call void @uiBlockSetEmboss(ptr noundef %116, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  br label %172

172:                                              ; preds = %150, %146, %154
  %173 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %174 = sitofp i16 %173 to float
  %175 = fmul float %174, 0x3FB99999A0000000
  %176 = call float @llvm.fmuladd.f32(float %174, float 0x3FE99999A0000000, float %175)
  %177 = fsub float %129, %176
  %178 = load ptr, ptr %128, align 8, !tbaa !52
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %127, !llvm.loop !87

180:                                              ; preds = %172, %115
  call void @glDisable(i32 noundef 3042) #6
  call void @uiEndBlock(ptr noundef %0, ptr noundef %116) #6
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %116) #6
  br label %181

181:                                              ; preds = %2, %180
  ret void
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

declare ptr @UI_GetStyle() local_unnamed_addr #2

declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare float @BLF_height(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glEndList() local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glCallList(i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"MovieTrackingDopesheet", !36, i64 0, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 24, !36, i64 40, !36, i64 44}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!43, !39, i64 8948}
!43 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !44, i64 8956, !44, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !44, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !45, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !44, i64 10904, !44, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !46, i64 10928}
!44 = !{!"float", !37, i64 0}
!45 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!46 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !39, i64 24, !37, i64 26}
!47 = !{!48, !44, i64 8}
!48 = !{!"View2D", !49, i64 0, !49, i64 16, !50, i64 32, !50, i64 48, !50, i64 64, !37, i64 80, !37, i64 88, !44, i64 96, !44, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!49 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!50 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!51 = !{!44, !44, i64 0}
!52 = !{!41, !41, i64 0}
!53 = !{!54, !36, i64 16}
!54 = !{!"MovieTrackingDopesheetCoverageSegment", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!55 = !{!54, !36, i64 20}
!56 = !{!54, !36, i64 24}
!57 = !{!48, !44, i64 24}
!58 = !{!48, !44, i64 28}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !41, i64 16}
!63 = !{!"MovieTrackingDopesheetChannel", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !37, i64 28, !36, i64 92, !41, i64 96, !36, i64 104, !36, i64 108}
!64 = !{!65, !36, i64 152}
!65 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !44, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !44, i64 188, !41, i64 192, !44, i64 200, !44, i64 204}
!66 = !{!48, !44, i64 16}
!67 = !{!48, !44, i64 20}
!68 = !{!63, !36, i64 92}
!69 = !{!65, !36, i64 120}
!70 = !{!63, !41, i64 96}
!71 = !{!36, !36, i64 0}
!72 = distinct !{!72, !60, !61}
!73 = !{!65, !41, i64 128}
!74 = !{!75, !36, i64 60}
!75 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!76 = !{!75, !36, i64 56}
!77 = distinct !{!77, !60, !61}
!78 = distinct !{!78, !60, !61}
!79 = !{!80, !39, i64 176}
!80 = !{!"uiStyle", !41, i64 0, !41, i64 8, !37, i64 16, !81, i64 80, !81, i64 112, !81, i64 144, !81, i64 176, !44, i64 208, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230}
!81 = !{!"uiFontStyle", !39, i64 0, !39, i64 2, !39, i64 4, !37, i64 6, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !44, i64 24, !44, i64 28}
!82 = !{!50, !36, i64 12}
!83 = !{!50, !36, i64 8}
!84 = !{!43, !44, i64 10908}
!85 = !{!43, !36, i64 8524}
!86 = distinct !{!86, !60, !61}
!87 = distinct !{!87, !60, !61}
