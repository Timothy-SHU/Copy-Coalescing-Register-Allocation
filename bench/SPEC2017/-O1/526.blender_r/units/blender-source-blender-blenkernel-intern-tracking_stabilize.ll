; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_stabilize.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_stabilize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.ListBase = type { ptr, ptr }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@__const.stabilization_calculate_autoscale_factor.rotDx = private unnamed_addr constant [4 x [2 x float]] [[2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], align 16
@__const.stabilization_calculate_autoscale_factor.rotDy = private unnamed_addr constant [4 x [2 x float]] [[2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00]], align 16

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_stabilization_data_get(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca [4 x [4 x float]], align 16
  %22 = alloca [4 x [2 x float]], align 16
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [2 x float], align 4
  %26 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #7
  %27 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  store float 0.000000e+00, ptr %4, align 4, !tbaa !41
  %32 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !41
  store float 1.000000e+00, ptr %5, align 4, !tbaa !41
  store float 0.000000e+00, ptr %6, align 4, !tbaa !41
  br label %336

33:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #7
  %34 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  store float 0x46293E5940000000, ptr %34, align 4, !tbaa !41
  store float 0x46293E5940000000, ptr %14, align 4, !tbaa !41
  %35 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %35, align 4, !tbaa !41
  store float 0xC6293E5940000000, ptr %15, align 4, !tbaa !41
  %36 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %33, %48
  %40 = phi ptr [ %50, %48 ], [ %37, %33 ]
  %41 = phi i8 [ %49, %48 ], [ 0, %33 ]
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !43
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %40, i32 noundef 1) #7
  call void @minmax_v2v2_v2(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %47) #7
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i8 [ 1, %46 ], [ %41, %39 ]
  %50 = load ptr, ptr %40, align 8, !tbaa !42
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %39, !llvm.loop !46

52:                                               ; preds = %48
  %53 = icmp eq i8 %49, 0
  br label %54

54:                                               ; preds = %52, %33
  %55 = phi i1 [ true, %33 ], [ %53, %52 ]
  %56 = load float, ptr %15, align 4, !tbaa !41
  %57 = load float, ptr %14, align 4, !tbaa !41
  %58 = fadd float %56, %57
  %59 = fmul float %58, 5.000000e-01
  store float %59, ptr %25, align 4, !tbaa !41
  %60 = load float, ptr %35, align 4, !tbaa !41
  %61 = load float, ptr %34, align 4, !tbaa !41
  %62 = fadd float %60, %61
  %63 = fmul float %62, 5.000000e-01
  %64 = getelementptr inbounds float, ptr %25, i64 1
  store float %63, ptr %64, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  br i1 %55, label %334, label %65

65:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  %66 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float 0x46293E5940000000, ptr %66, align 4, !tbaa !41
  store float 0x46293E5940000000, ptr %12, align 4, !tbaa !41
  %67 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %67, align 4, !tbaa !41
  store float 0xC6293E5940000000, ptr %13, align 4, !tbaa !41
  %68 = load ptr, ptr %36, align 8, !tbaa !42
  %69 = icmp eq ptr %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %65, %78
  %71 = phi ptr [ %79, %78 ], [ %68, %65 ]
  %72 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %71, i64 0, i32 13
  %73 = load i32, ptr %72, align 8, !tbaa !43
  %74 = and i32 %73, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %71, i32 noundef %1) #7
  call void @minmax_v2v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %77) #7
  br label %78

78:                                               ; preds = %76, %70
  %79 = load ptr, ptr %71, align 8, !tbaa !42
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %70, !llvm.loop !46

81:                                               ; preds = %78, %65
  %82 = load float, ptr %13, align 4, !tbaa !41
  %83 = load float, ptr %12, align 4, !tbaa !41
  %84 = fadd float %82, %83
  %85 = fmul float %84, 5.000000e-01
  store float %85, ptr %26, align 4, !tbaa !41
  %86 = load float, ptr %67, align 4, !tbaa !41
  %87 = load float, ptr %66, align 4, !tbaa !41
  %88 = fadd float %86, %87
  %89 = fmul float %88, 5.000000e-01
  %90 = getelementptr inbounds float, ptr %26, i64 1
  store float %89, ptr %90, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  %91 = load i32, ptr %27, align 8, !tbaa !34
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 10
  store float 1.000000e+00, ptr %95, align 4, !tbaa !49
  br label %96

96:                                               ; preds = %94, %81
  %97 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !50
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %333

100:                                              ; preds = %96
  br i1 %93, label %332, label %101

101:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #7
  %102 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %103 = load float, ptr %102, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  %104 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  store float 0x46293E5940000000, ptr %104, align 4, !tbaa !41
  store float 0x46293E5940000000, ptr %10, align 4, !tbaa !41
  %105 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %105, align 4, !tbaa !41
  store float 0xC6293E5940000000, ptr %11, align 4, !tbaa !41
  %106 = load ptr, ptr %36, align 8, !tbaa !42
  %107 = icmp eq ptr %106, null
  br i1 %107, label %123, label %108

108:                                              ; preds = %101, %117
  %109 = phi ptr [ %119, %117 ], [ %106, %101 ]
  %110 = phi i8 [ %118, %117 ], [ 0, %101 ]
  %111 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %109, i64 0, i32 13
  %112 = load i32, ptr %111, align 8, !tbaa !43
  %113 = and i32 %112, 256
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %109, i32 noundef 1) #7
  call void @minmax_v2v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %116) #7
  br label %117

117:                                              ; preds = %115, %108
  %118 = phi i8 [ 1, %115 ], [ %110, %108 ]
  %119 = load ptr, ptr %109, align 8, !tbaa !42
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %108, !llvm.loop !46

121:                                              ; preds = %117
  %122 = icmp eq i8 %118, 0
  br label %123

123:                                              ; preds = %121, %101
  %124 = phi i1 [ true, %101 ], [ %122, %121 ]
  %125 = load float, ptr %11, align 4, !tbaa !41
  %126 = load float, ptr %10, align 4, !tbaa !41
  %127 = fadd float %125, %126
  %128 = fmul float %127, 5.000000e-01
  store float %128, ptr %16, align 4, !tbaa !41
  %129 = load float, ptr %105, align 4, !tbaa !41
  %130 = load float, ptr %104, align 4, !tbaa !41
  %131 = fadd float %129, %130
  %132 = fmul float %131, 5.000000e-01
  %133 = getelementptr inbounds float, ptr %16, i64 1
  store float %132, ptr %133, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  %134 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 10
  store float 1.000000e+00, ptr %134, align 4, !tbaa !49
  br i1 %124, label %331, label %135

135:                                              ; preds = %123
  %136 = load ptr, ptr %36, align 8, !tbaa !42
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 4
  br label %162

140:                                              ; preds = %190, %135
  %141 = phi i32 [ -2147483648, %135 ], [ %191, %190 ]
  %142 = phi i32 [ 2147483647, %135 ], [ %192, %190 ]
  %143 = icmp sgt i32 %142, %141
  br i1 %143, label %323, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds float, ptr %22, i64 1
  %146 = getelementptr inbounds [2 x float], ptr %22, i64 1
  %147 = getelementptr inbounds [2 x float], ptr %22, i64 1, i64 1
  %148 = sitofp i32 %3 to float
  %149 = getelementptr inbounds [2 x float], ptr %22, i64 2
  %150 = sitofp i32 %2 to float
  %151 = getelementptr inbounds [2 x float], ptr %22, i64 2, i64 1
  %152 = getelementptr inbounds [2 x float], ptr %22, i64 3
  %153 = getelementptr inbounds [2 x float], ptr %22, i64 3, i64 1
  %154 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %155 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %156 = getelementptr inbounds float, ptr %17, i64 1
  %157 = getelementptr inbounds float, ptr %23, i64 1
  %158 = getelementptr inbounds float, ptr %23, i64 2
  %159 = getelementptr inbounds float, ptr %24, i64 1
  %160 = getelementptr inbounds float, ptr %24, i64 2
  %161 = getelementptr inbounds [2 x float], ptr %18, i64 0, i64 1
  br label %195

162:                                              ; preds = %138, %190
  %163 = phi ptr [ %136, %138 ], [ %193, %190 ]
  %164 = phi i32 [ 2147483647, %138 ], [ %192, %190 ]
  %165 = phi i32 [ -2147483648, %138 ], [ %191, %190 ]
  %166 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %163, i64 0, i32 13
  %167 = load i32, ptr %166, align 8, !tbaa !43
  %168 = and i32 %167, 256
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %162
  %171 = load i32, ptr %27, align 8, !tbaa !34
  %172 = and i32 %171, 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %139, align 8, !tbaa !58
  %176 = icmp eq ptr %163, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %174, %162
  %178 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %163, i64 0, i32 10
  %179 = load ptr, ptr %178, align 8, !tbaa !59
  %180 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %179, i64 0, i32 4
  %181 = load i32, ptr %180, align 4, !tbaa !60
  %182 = call i32 @llvm.smin.i32(i32 %164, i32 %181)
  %183 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %163, i64 0, i32 8
  %184 = load i32, ptr %183, align 8, !tbaa !62
  %185 = sext i32 %184 to i64
  %186 = getelementptr %struct.MovieTrackingMarker, ptr %179, i64 %185
  %187 = getelementptr %struct.MovieTrackingMarker, ptr %186, i64 -1, i32 4
  %188 = load i32, ptr %187, align 4, !tbaa !60
  %189 = call i32 @llvm.smax.i32(i32 %188, i32 %165)
  br label %190

190:                                              ; preds = %177, %174, %170
  %191 = phi i32 [ %189, %177 ], [ %165, %174 ], [ %165, %170 ]
  %192 = phi i32 [ %182, %177 ], [ %164, %174 ], [ %164, %170 ]
  %193 = load ptr, ptr %163, align 8, !tbaa !42
  %194 = icmp eq ptr %193, null
  br i1 %194, label %140, label %162, !llvm.loop !63

195:                                              ; preds = %144, %320
  %196 = phi i32 [ %142, %144 ], [ %321, %320 ]
  %197 = phi float [ 1.000000e+00, %144 ], [ %315, %320 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #7
  store float 0.000000e+00, ptr %22, align 16, !tbaa !41
  store float 0.000000e+00, ptr %145, align 4, !tbaa !41
  store float 0.000000e+00, ptr %146, align 8, !tbaa !41
  store float %148, ptr %147, align 4, !tbaa !41
  store float %150, ptr %149, align 16, !tbaa !41
  store float %148, ptr %151, align 4, !tbaa !41
  store float %150, ptr %152, align 8, !tbaa !41
  store float 0.000000e+00, ptr %153, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store float 0x46293E5940000000, ptr %154, align 4, !tbaa !41
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !41
  store float 0xC6293E5940000000, ptr %155, align 4, !tbaa !41
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !41
  %198 = load ptr, ptr %36, align 8, !tbaa !42
  %199 = icmp eq ptr %198, null
  br i1 %199, label %211, label %200

200:                                              ; preds = %195, %208
  %201 = phi ptr [ %209, %208 ], [ %198, %195 ]
  %202 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %201, i64 0, i32 13
  %203 = load i32, ptr %202, align 8, !tbaa !43
  %204 = and i32 %203, 256
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %200
  %207 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %201, i32 noundef %196) #7
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %207) #7
  br label %208

208:                                              ; preds = %206, %200
  %209 = load ptr, ptr %201, align 8, !tbaa !42
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %200, !llvm.loop !46

211:                                              ; preds = %208, %195
  %212 = load float, ptr %9, align 4, !tbaa !41
  %213 = load float, ptr %8, align 4, !tbaa !41
  %214 = fadd float %212, %213
  %215 = fmul float %214, 5.000000e-01
  store float %215, ptr %17, align 4, !tbaa !41
  %216 = load float, ptr %155, align 4, !tbaa !41
  %217 = load float, ptr %154, align 4, !tbaa !41
  %218 = fadd float %216, %217
  %219 = fmul float %218, 5.000000e-01
  store float %219, ptr %156, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call fastcc void @stabilization_calculate_data(ptr noundef %0, i32 noundef %196, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %19)
  %220 = load float, ptr %19, align 4, !tbaa !41
  call void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %2, i32 noundef %3, float noundef %103, ptr noundef nonnull %18, float noundef 1.000000e+00, float noundef %220, ptr noundef nonnull %21)
  %221 = call float @sinf(float noundef %220) #7
  %222 = call float @cosf(float noundef %220) #7
  %223 = load float, ptr %18, align 4
  %224 = load float, ptr %161, align 4
  br label %225

225:                                              ; preds = %211, %318
  %226 = phi i64 [ 0, %211 ], [ %234, %318 ]
  %227 = phi float [ %197, %211 ], [ %315, %318 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %23, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %24, i8 0, i64 12, i1 false)
  %228 = getelementptr inbounds [4 x [2 x float]], ptr %22, i64 0, i64 %226
  %229 = load float, ptr %228, align 8, !tbaa !41
  store float %229, ptr %23, align 4, !tbaa !41
  %230 = getelementptr inbounds float, ptr %228, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !41
  store float %231, ptr %157, align 4, !tbaa !41
  %232 = getelementptr inbounds float, ptr %228, i64 2
  %233 = load float, ptr %232, align 8, !tbaa !41
  store float %233, ptr %158, align 4, !tbaa !41
  %234 = add nuw nsw i64 %226, 1
  %235 = and i64 %234, 3
  %236 = getelementptr inbounds [4 x [2 x float]], ptr %22, i64 0, i64 %235
  %237 = load float, ptr %236, align 8, !tbaa !41
  store float %237, ptr %24, align 4, !tbaa !41
  %238 = getelementptr inbounds float, ptr %236, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !41
  store float %239, ptr %159, align 4, !tbaa !41
  %240 = getelementptr inbounds float, ptr %236, i64 2
  %241 = load float, ptr %240, align 8, !tbaa !41
  store float %241, ptr %160, align 4, !tbaa !41
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef nonnull %23) #7
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef nonnull %24) #7
  %242 = load float, ptr %24, align 4, !tbaa !41
  %243 = load float, ptr %23, align 4, !tbaa !41
  %244 = fsub float %242, %243
  %245 = load float, ptr %159, align 4, !tbaa !41
  %246 = load float, ptr %157, align 4, !tbaa !41
  %247 = fsub float %245, %246
  %248 = fneg float %247
  %249 = trunc i64 %226 to i32
  %250 = and i32 %249, 1
  br label %251

251:                                              ; preds = %225, %314
  %252 = phi i64 [ 0, %225 ], [ %316, %314 ]
  %253 = phi float [ %227, %225 ], [ %315, %314 ]
  %254 = getelementptr inbounds [4 x [2 x float]], ptr %22, i64 0, i64 %252
  %255 = load float, ptr %254, align 8, !tbaa !41
  %256 = getelementptr inbounds [4 x [2 x float]], ptr %22, i64 0, i64 %252, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !41
  %258 = fsub float %255, %243
  %259 = fsub float %257, %246
  %260 = fmul float %258, %248
  %261 = call float @llvm.fmuladd.f32(float %244, float %259, float %260)
  %262 = fcmp ult float %261, 0.000000e+00
  br i1 %262, label %314, label %263

263:                                              ; preds = %251
  %264 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDx, i64 0, i64 %252
  %265 = load float, ptr %264, align 8, !tbaa !41
  %266 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDx, i64 0, i64 %252, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !41
  %268 = fmul float %224, %267
  %269 = call float @llvm.fmuladd.f32(float %223, float %265, float %268)
  %270 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDy, i64 0, i64 %252
  %271 = load float, ptr %270, align 8, !tbaa !41
  %272 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDy, i64 0, i64 %252, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !41
  %274 = fmul float %224, %273
  %275 = call float @llvm.fmuladd.f32(float %223, float %271, float %274)
  %276 = trunc i64 %252 to i32
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  %279 = select i1 %278, float %150, float %148
  %280 = select i1 %278, float %148, float %150
  %281 = fmul float %280, 5.000000e-01
  %282 = fmul float %279, 5.000000e-01
  %283 = fneg float %282
  %284 = fmul float %221, %281
  %285 = call float @llvm.fmuladd.f32(float %283, float %222, float %284)
  %286 = fneg float %281
  %287 = fmul float %221, %282
  %288 = fneg float %287
  %289 = call float @llvm.fmuladd.f32(float %286, float %222, float %288)
  %290 = icmp eq i32 %250, %277
  br i1 %290, label %291, label %295

291:                                              ; preds = %263
  %292 = fneg float %284
  %293 = call float @llvm.fmuladd.f32(float %283, float %222, float %292)
  %294 = call float @llvm.fmuladd.f32(float %281, float %222, float %288)
  br label %298

295:                                              ; preds = %263
  %296 = call float @llvm.fmuladd.f32(float %282, float %222, float %284)
  %297 = call float @llvm.fmuladd.f32(float %286, float %222, float %287)
  br label %298

298:                                              ; preds = %295, %291
  %299 = phi float [ %293, %291 ], [ %296, %295 ]
  %300 = phi float [ %294, %291 ], [ %297, %295 ]
  %301 = fsub float %289, %300
  %302 = fsub float %299, %285
  %303 = fneg float %285
  %304 = fmul float %300, %303
  %305 = call float @llvm.fmuladd.f32(float %299, float %289, float %304)
  %306 = fmul float %302, %286
  %307 = call float @llvm.fmuladd.f32(float %283, float %301, float %306)
  %308 = fmul float %275, %302
  %309 = call float @llvm.fmuladd.f32(float %269, float %301, float %308)
  %310 = fadd float %309, %305
  %311 = fdiv float %307, %310
  %312 = fcmp ogt float %253, %311
  %313 = select i1 %312, float %253, float %311
  br label %314

314:                                              ; preds = %298, %251
  %315 = phi float [ %313, %298 ], [ %253, %251 ]
  %316 = add nuw nsw i64 %252, 1
  %317 = icmp eq i64 %316, 4
  br i1 %317, label %318, label %251, !llvm.loop !64

318:                                              ; preds = %314
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #7
  %319 = icmp eq i64 %234, 4
  br i1 %319, label %320, label %225, !llvm.loop !65

320:                                              ; preds = %318
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #7
  %321 = add i32 %196, 1
  %322 = icmp eq i32 %196, %141
  br i1 %322, label %323, label %195, !llvm.loop !66

323:                                              ; preds = %320, %140
  %324 = phi float [ 1.000000e+00, %140 ], [ %315, %320 ]
  store float %324, ptr %134, align 4, !tbaa !49
  %325 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 3
  %326 = load float, ptr %325, align 4, !tbaa !67
  %327 = fcmp ogt float %326, 0.000000e+00
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = fcmp olt float %324, %326
  %330 = select i1 %329, float %324, float %326
  store float %330, ptr %134, align 4, !tbaa !49
  br label %331

331:                                              ; preds = %123, %328, %323
  store i32 1, ptr %97, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #7
  br label %332

332:                                              ; preds = %331, %100
  call fastcc void @stabilization_calculate_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 1, ptr %97, align 8, !tbaa !50
  br label %336

333:                                              ; preds = %96
  call fastcc void @stabilization_calculate_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %336

334:                                              ; preds = %54
  store float 0.000000e+00, ptr %4, align 4, !tbaa !41
  %335 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %335, align 4, !tbaa !41
  store float 1.000000e+00, ptr %5, align 4, !tbaa !41
  store float 0.000000e+00, ptr %6, align 4, !tbaa !41
  br label %336

336:                                              ; preds = %334, %333, %332, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @stabilization_calculate_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 10
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fadd float %12, -1.000000e+00
  %14 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 6
  %15 = load float, ptr %14, align 4, !tbaa !68
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float 1.000000e+00)
  store float %16, ptr %7, align 4, !tbaa !41
  store float 0.000000e+00, ptr %8, align 4, !tbaa !41
  %17 = load float, ptr %4, align 4, !tbaa !41
  %18 = load float, ptr %5, align 4, !tbaa !41
  %19 = fsub float %17, %18
  %20 = sitofp i32 %2 to float
  %21 = fmul float %19, %20
  %22 = load float, ptr %7, align 4, !tbaa !41
  %23 = fmul float %22, %21
  store float %23, ptr %6, align 4, !tbaa !41
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !41
  %26 = getelementptr inbounds float, ptr %5, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !41
  %28 = fsub float %25, %27
  %29 = sitofp i32 %3 to float
  %30 = fmul float %28, %29
  %31 = load float, ptr %7, align 4, !tbaa !41
  %32 = fmul float %31, %30
  %33 = getelementptr inbounds float, ptr %6, i64 1
  store float %32, ptr %33, align 4, !tbaa !41
  %34 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 5
  %35 = load float, ptr %34, align 8, !tbaa !69
  %36 = fmul float %23, %35
  store float %36, ptr %6, align 4, !tbaa !41
  %37 = fmul float %32, %35
  store float %37, ptr %33, align 4, !tbaa !41
  %38 = load i32, ptr %10, align 8, !tbaa !34
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %110, label %41

41:                                               ; preds = %9
  %42 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = icmp eq ptr %43, null
  br i1 %44, label %110, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 7
  %47 = load float, ptr %46, align 8, !tbaa !70
  %48 = fcmp une float %47, 0.000000e+00
  br i1 %48, label %49, label %110

49:                                               ; preds = %45
  %50 = fmul float %20, 5.000000e-01
  %51 = fmul float %29, 5.000000e-01
  %52 = load float, ptr %5, align 4, !tbaa !41
  %53 = fmul float %52, %20
  %54 = load float, ptr %26, align 4, !tbaa !41
  %55 = fmul float %54, %29
  %56 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %43, i32 noundef 1) #7
  %57 = load float, ptr %56, align 4, !tbaa !41
  %58 = load float, ptr %4, align 4, !tbaa !41
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds float, ptr %56, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !41
  %62 = load float, ptr %24, align 4, !tbaa !41
  %63 = fsub float %61, %62
  %64 = fmul float %59, %20
  %65 = fmul float %63, %29
  %66 = load ptr, ptr %42, align 8, !tbaa !58
  %67 = tail call ptr @BKE_tracking_marker_get(ptr noundef %66, i32 noundef %1) #7
  %68 = load float, ptr %67, align 4, !tbaa !41
  %69 = load float, ptr %5, align 4, !tbaa !41
  %70 = fsub float %68, %69
  %71 = getelementptr inbounds float, ptr %67, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !41
  %73 = load float, ptr %26, align 4, !tbaa !41
  %74 = fsub float %72, %73
  %75 = fmul float %70, %20
  %76 = fmul float %74, %29
  %77 = fneg float %65
  %78 = fmul float %75, %77
  %79 = tail call float @llvm.fmuladd.f32(float %64, float %76, float %78)
  %80 = fmul float %65, %76
  %81 = tail call float @llvm.fmuladd.f32(float %64, float %75, float %80)
  %82 = tail call float @atan2f(float noundef %79, float noundef %81) #7
  %83 = fneg float %82
  store float %83, ptr %8, align 4, !tbaa !41
  %84 = load float, ptr %46, align 8, !tbaa !70
  %85 = fmul float %84, %83
  store float %85, ptr %8, align 4, !tbaa !41
  %86 = fsub float %53, %50
  %87 = tail call float @cosf(float noundef %85) #7
  %88 = tail call float @llvm.fmuladd.f32(float %86, float %87, float %50)
  %89 = fsub float %55, %51
  %90 = load float, ptr %8, align 4, !tbaa !41
  %91 = tail call float @sinf(float noundef %90) #7
  %92 = fneg float %89
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %91, float %88)
  %94 = fsub float %93, %53
  %95 = load float, ptr %7, align 4, !tbaa !41
  %96 = load float, ptr %6, align 4, !tbaa !41
  %97 = fneg float %94
  %98 = tail call float @llvm.fmuladd.f32(float %97, float %95, float %96)
  store float %98, ptr %6, align 4, !tbaa !41
  %99 = load float, ptr %8, align 4, !tbaa !41
  %100 = tail call float @sinf(float noundef %99) #7
  %101 = tail call float @llvm.fmuladd.f32(float %86, float %100, float %51)
  %102 = load float, ptr %8, align 4, !tbaa !41
  %103 = tail call float @cosf(float noundef %102) #7
  %104 = tail call float @llvm.fmuladd.f32(float %89, float %103, float %101)
  %105 = fsub float %104, %55
  %106 = load float, ptr %7, align 4, !tbaa !41
  %107 = load float, ptr %33, align 4, !tbaa !41
  %108 = fneg float %105
  %109 = tail call float @llvm.fmuladd.f32(float %108, float %106, float %107)
  store float %109, ptr %33, align 4, !tbaa !41
  br label %110

110:                                              ; preds = %49, %45, %41, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_stabilize_frame(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !75
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %18 = load float, ptr %17, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !76
  %21 = icmp eq ptr %3, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load float, ptr %3, align 4, !tbaa !41
  store float %23, ptr %7, align 4, !tbaa !41
  %24 = getelementptr inbounds float, ptr %3, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !41
  %26 = getelementptr inbounds float, ptr %7, i64 1
  store float %25, ptr %26, align 4, !tbaa !41
  br label %27

27:                                               ; preds = %22, %6
  %28 = icmp eq ptr %4, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load float, ptr %4, align 4, !tbaa !41
  store float %30, ptr %8, align 4, !tbaa !41
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, ptr %12, align 8, !tbaa !34
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  br i1 %21, label %38, label %36

36:                                               ; preds = %35
  store float 0.000000e+00, ptr %3, align 4, !tbaa !41
  %37 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %37, align 4, !tbaa !41
  br label %38

38:                                               ; preds = %36, %35
  br i1 %28, label %40, label %39

39:                                               ; preds = %38
  store float 1.000000e+00, ptr %4, align 4, !tbaa !41
  br label %40

40:                                               ; preds = %39, %38
  %41 = icmp eq ptr %5, null
  br i1 %41, label %110, label %107

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = icmp ne ptr %44, null
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = icmp eq ptr %48, null
  %50 = or disjoint i32 %46, 32
  %51 = select i1 %49, i32 %46, i32 %50
  %52 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 4
  %53 = load i8, ptr %52, align 8, !tbaa !79
  %54 = tail call ptr @IMB_allocImBuf(i32 noundef %14, i32 noundef %16, i8 noundef zeroext %53, i32 noundef %51) #7
  call void @BKE_tracking_stabilization_data_get(ptr noundef %0, i32 noundef %1, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %55 = load i32, ptr %13, align 8, !tbaa !71
  %56 = load i32, ptr %15, align 4, !tbaa !75
  %57 = load float, ptr %8, align 4, !tbaa !41
  %58 = load float, ptr %9, align 4, !tbaa !41
  call void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %55, i32 noundef %56, float noundef %18, ptr noundef nonnull %7, float noundef %57, float noundef %58, ptr noundef nonnull %10)
  %59 = call zeroext i8 @invert_m4(ptr noundef nonnull %10) #7
  %60 = icmp eq i32 %20, 1
  %61 = select i1 %60, ptr @bilinear_interpolation, ptr @nearest_interpolation
  %62 = icmp eq i32 %20, 2
  %63 = select i1 %62, ptr @bicubic_interpolation, ptr %61
  %64 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !75
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %42
  %68 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 2
  %69 = getelementptr inbounds float, ptr %11, i64 1
  %70 = getelementptr inbounds float, ptr %11, i64 2
  br label %71

71:                                               ; preds = %67, %85
  %72 = phi i32 [ 0, %67 ], [ %86, %85 ]
  %73 = load i32, ptr %68, align 8, !tbaa !71
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = sitofp i32 %72 to float
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi i32 [ 0, %75 ], [ %82, %77 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #7
  %79 = sitofp i32 %78 to float
  store float %79, ptr %11, align 4, !tbaa !41
  store float %76, ptr %69, align 4, !tbaa !41
  store float 0.000000e+00, ptr %70, align 4, !tbaa !41
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  %80 = load float, ptr %11, align 4, !tbaa !41
  %81 = load float, ptr %69, align 4, !tbaa !41
  call void %63(ptr noundef %2, ptr noundef %54, float noundef %80, float noundef %81, i32 noundef %78, i32 noundef %72) #7, !callees !80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #7
  %82 = add nuw nsw i32 %78, 1
  %83 = load i32, ptr %68, align 8, !tbaa !71
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %77, label %85, !llvm.loop !81

85:                                               ; preds = %77, %71
  %86 = add nuw nsw i32 %72, 1
  %87 = load i32, ptr %64, align 4, !tbaa !75
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %71, label %89, !llvm.loop !82

89:                                               ; preds = %85, %42
  %90 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !78
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 23
  %95 = load i32, ptr %94, align 4, !tbaa !83
  %96 = or i32 %95, 8
  store i32 %96, ptr %94, align 4, !tbaa !83
  br label %97

97:                                               ; preds = %93, %89
  br i1 %21, label %103, label %98

98:                                               ; preds = %97
  %99 = load float, ptr %7, align 4, !tbaa !41
  store float %99, ptr %3, align 4, !tbaa !41
  %100 = getelementptr inbounds float, ptr %7, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !41
  %102 = getelementptr inbounds float, ptr %3, i64 1
  store float %101, ptr %102, align 4, !tbaa !41
  br label %103

103:                                              ; preds = %98, %97
  br i1 %28, label %105, label %104

104:                                              ; preds = %103
  store float %57, ptr %4, align 4, !tbaa !41
  br label %105

105:                                              ; preds = %104, %103
  %106 = icmp eq ptr %5, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %105, %40
  %108 = phi float [ 0.000000e+00, %40 ], [ %58, %105 ]
  %109 = phi ptr [ %2, %40 ], [ %54, %105 ]
  store float %108, ptr %5, align 4, !tbaa !41
  br label %110

110:                                              ; preds = %107, %105, %40
  %111 = phi ptr [ %2, %40 ], [ %54, %105 ], [ %109, %107 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret ptr %111
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef readonly %3, float noundef %4, float noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #7
  store float %4, ptr %15, align 4, !tbaa !41
  %16 = getelementptr inbounds float, ptr %15, i64 1
  store float %4, ptr %16, align 4, !tbaa !41
  %17 = getelementptr inbounds float, ptr %15, i64 2
  store float %4, ptr %17, align 4, !tbaa !41
  call void @unit_m4(ptr noundef nonnull %8) #7
  call void @unit_m4(ptr noundef nonnull %9) #7
  call void @unit_m4(ptr noundef nonnull %10) #7
  call void @unit_m4(ptr noundef nonnull %11) #7
  call void @unit_m4(ptr noundef nonnull %13) #7
  %18 = fdiv float 1.000000e+00, %2
  store float %18, ptr %13, align 16, !tbaa !41
  %19 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %13) #7
  %20 = sitofp i32 %0 to float
  %21 = fmul float %20, 5.000000e-01
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  store float %21, ptr %22, align 16, !tbaa !41
  %23 = sitofp i32 %1 to float
  %24 = fmul float %23, 5.000000e-01
  %25 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3, i64 1
  store float %24, ptr %25, align 4, !tbaa !41
  %26 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %11) #7
  call void @size_to_mat4(ptr noundef nonnull %10, ptr noundef nonnull %15) #7
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %28 = load float, ptr %3, align 4, !tbaa !41
  %29 = load float, ptr %27, align 16, !tbaa !41
  %30 = fadd float %28, %29
  store float %30, ptr %27, align 16, !tbaa !41
  %31 = getelementptr inbounds float, ptr %3, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !41
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !41
  %35 = fadd float %32, %34
  store float %35, ptr %33, align 4, !tbaa !41
  call void @rotate_m4(ptr noundef nonnull %9, i8 noundef zeroext 90, float noundef %5) #7
  call void @_va_mul_m4_series_8(ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  ret void
}

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

declare void @nearest_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bilinear_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bicubic_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

declare void @_va_mul_m4_series_8(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!35 = !{!"MovieTrackingStabilization", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 12, !40, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !36, i64 36, !36, i64 40, !39, i64 44}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!39, !39, i64 0}
!42 = !{!40, !40, i64 0}
!43 = !{!44, !36, i64 152}
!44 = !{!"MovieTrackingTrack", !40, i64 0, !40, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !40, i64 128, !37, i64 136, !39, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !45, i64 176, !45, i64 178, !45, i64 180, !45, i64 182, !36, i64 184, !39, i64 188, !40, i64 192, !39, i64 200, !39, i64 204}
!45 = !{!"short", !37, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!35, !39, i64 44}
!50 = !{!35, !36, i64 40}
!51 = !{!52, !39, i64 88}
!52 = !{!"MovieTracking", !53, i64 0, !54, i64 72, !55, i64 128, !55, i64 144, !56, i64 160, !35, i64 184, !40, i64 232, !40, i64 240, !55, i64 248, !36, i64 264, !36, i64 268, !40, i64 272, !57, i64 280}
!53 = !{!"MovieTrackingSettings", !36, i64 0, !45, i64 4, !45, i64 6, !39, i64 8, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !39, i64 24, !45, i64 28, !45, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !45, i64 44, !45, i64 46, !39, i64 48, !36, i64 52, !36, i64 56, !39, i64 60, !39, i64 64, !36, i64 68}
!54 = !{!"MovieTrackingCamera", !40, i64 0, !45, i64 8, !45, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !45, i64 24, !45, i64 26, !37, i64 28, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52}
!55 = !{!"ListBase", !40, i64 0, !40, i64 8}
!56 = !{!"MovieTrackingReconstruction", !36, i64 0, !39, i64 4, !36, i64 8, !36, i64 12, !40, i64 16}
!57 = !{!"MovieTrackingDopesheet", !36, i64 0, !45, i64 4, !45, i64 6, !55, i64 8, !55, i64 24, !36, i64 40, !36, i64 44}
!58 = !{!35, !40, i64 16}
!59 = !{!44, !40, i64 128}
!60 = !{!61, !36, i64 56}
!61 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!62 = !{!44, !36, i64 120}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = distinct !{!65, !47, !48}
!66 = distinct !{!66, !47, !48}
!67 = !{!35, !39, i64 12}
!68 = !{!35, !39, i64 28}
!69 = !{!35, !39, i64 24}
!70 = !{!35, !39, i64 32}
!71 = !{!72, !36, i64 16}
!72 = !{!"ImBuf", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !40, i64 40, !40, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !39, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !40, i64 296, !40, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !40, i64 2368, !36, i64 2376, !40, i64 2384, !36, i64 2392, !36, i64 2396, !40, i64 2400, !40, i64 2408, !40, i64 2416, !40, i64 2424, !36, i64 2432, !73, i64 2436, !74, i64 2456}
!73 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!74 = !{!"DDSData", !36, i64 0, !36, i64 4, !40, i64 8, !36, i64 16}
!75 = !{!72, !36, i64 20}
!76 = !{!52, !36, i64 220}
!77 = !{!72, !40, i64 40}
!78 = !{!72, !40, i64 48}
!79 = !{!72, !37, i64 24}
!80 = !{ptr @bicubic_interpolation, ptr @bilinear_interpolation, ptr @nearest_interpolation}
!81 = distinct !{!81, !47, !48}
!82 = distinct !{!82, !47, !48}
!83 = !{!72, !36, i64 292}
