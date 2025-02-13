; ModuleID = 'blender/source/blender/editors/mask/mask_add.c'
source_filename = "blender/source/blender/editors/mask/mask_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"Add Vertex\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Add vertex to active spline\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"MASK_OT_add_vertex\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Location of vertex in normalized space\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Add Feather Vertex\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Add vertex to feather\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"MASK_OT_add_feather_vertex\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Add Circle\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Add new circle-shaped spline\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"MASK_OT_primitive_circle_add\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Add Square\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Add new square-shaped spline\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"MASK_OT_primitive_square_add\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"add mask vert points\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.primitive_circle_add_exec.points = private unnamed_addr constant [4 x [2 x float]] [[2 x float] [float 0.000000e+00, float 5.000000e-01], [2 x float] [float 5.000000e-01, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 5.000000e-01], [2 x float] [float 5.000000e-01, float 0.000000e+00]], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.create_primitive_from_points = private unnamed_addr constant [29 x i8] c"create_primitive_from_points\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Size of new circle\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Location of new circle\00", align 1
@__const.primitive_square_add_exec.points = private unnamed_addr constant [4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00]], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef writeonly %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef writeonly %8, ptr noundef writeonly %9, ptr noundef writeonly %10, ptr noundef writeonly %11, ptr noundef writeonly %12) local_unnamed_addr #0 {
  %14 = alloca [2 x float], align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x float], align 4
  %22 = alloca [2 x float], align 4
  %23 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %24 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #12
  call void @ED_mask_get_size(ptr noundef %23, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  call void @ED_mask_pixelspace_factor(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %17, ptr noundef nonnull %18) #11
  %25 = load float, ptr %17, align 4, !tbaa !34
  %26 = load float, ptr %18, align 4, !tbaa !34
  %27 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %28 = insertelement <2 x float> poison, float %25, i64 0
  %29 = insertelement <2 x float> %28, float %26, i64 1
  %30 = fmul <2 x float> %27, %29
  store <2 x float> %30, ptr %14, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = icmp eq ptr %32, null
  br i1 %33, label %211, label %34

34:                                               ; preds = %13
  %35 = icmp eq i8 %6, 0
  %36 = icmp eq i8 %4, 0
  %37 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  %38 = getelementptr inbounds [2 x float], ptr %22, i64 0, i64 1
  %39 = icmp eq ptr %5, null
  br label %40

40:                                               ; preds = %34, %178
  %41 = phi ptr [ %32, %34 ], [ %184, %178 ]
  %42 = phi float [ undef, %34 ], [ %183, %178 ]
  %43 = phi float [ 0x47EFFFFFE0000000, %34 ], [ %182, %178 ]
  %44 = phi ptr [ null, %34 ], [ %181, %178 ]
  %45 = phi ptr [ undef, %34 ], [ %180, %178 ]
  %46 = phi ptr [ undef, %34 ], [ %179, %178 ]
  %47 = getelementptr inbounds %struct.MaskLayer, ptr %41, i64 0, i32 13
  %48 = load i8, ptr %47, align 1, !tbaa !40
  %49 = and i8 %48, 3
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %178

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.MaskLayer, ptr %41, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = icmp eq ptr %53, null
  br i1 %54, label %178, label %63

55:                                               ; preds = %168, %63
  %56 = phi ptr [ %69, %63 ], [ %169, %168 ]
  %57 = phi ptr [ %68, %63 ], [ %170, %168 ]
  %58 = phi ptr [ %67, %63 ], [ %171, %168 ]
  %59 = phi float [ %66, %63 ], [ %172, %168 ]
  %60 = phi float [ %65, %63 ], [ %173, %168 ]
  %61 = load ptr, ptr %64, align 8, !tbaa !38
  %62 = icmp eq ptr %61, null
  br i1 %62, label %178, label %63, !llvm.loop !43

63:                                               ; preds = %51, %55
  %64 = phi ptr [ %61, %55 ], [ %53, %51 ]
  %65 = phi float [ %60, %55 ], [ %42, %51 ]
  %66 = phi float [ %59, %55 ], [ %43, %51 ]
  %67 = phi ptr [ %58, %55 ], [ %44, %51 ]
  %68 = phi ptr [ %57, %55 ], [ %45, %51 ]
  %69 = phi ptr [ %56, %55 ], [ %46, %51 ]
  %70 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 8
  %71 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 6
  %72 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !45
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %55

75:                                               ; preds = %63
  %76 = select i1 %35, ptr %71, ptr %70
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  br label %78

78:                                               ; preds = %75, %168
  %79 = phi ptr [ %175, %168 ], [ %77, %75 ]
  %80 = phi i32 [ %174, %168 ], [ 0, %75 ]
  %81 = phi float [ %173, %168 ], [ %65, %75 ]
  %82 = phi float [ %172, %168 ], [ %66, %75 ]
  %83 = phi ptr [ %171, %168 ], [ %67, %75 ]
  %84 = phi ptr [ %170, %168 ], [ %68, %75 ]
  %85 = phi ptr [ %169, %168 ], [ %69, %75 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #12
  %86 = load i32, ptr %15, align 4, !tbaa !50
  %87 = load i32, ptr %16, align 4, !tbaa !50
  %88 = call ptr @BKE_mask_point_segment_diff(ptr noundef nonnull %64, ptr noundef %79, i32 noundef %86, i32 noundef %87, ptr noundef nonnull %19) #11
  %89 = icmp eq ptr %88, null
  br i1 %89, label %168, label %90

90:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #12
  br i1 %36, label %95, label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %15, align 4, !tbaa !50
  %93 = load i32, ptr %16, align 4, !tbaa !50
  %94 = call ptr @BKE_mask_point_segment_feather_diff(ptr noundef nonnull %64, ptr noundef %79, i32 noundef %92, i32 noundef %93, ptr noundef nonnull %20) #11
  br label %95

95:                                               ; preds = %90, %91
  %96 = phi ptr [ %20, %91 ], [ %19, %90 ]
  %97 = phi ptr [ %94, %91 ], [ null, %90 ]
  %98 = phi ptr [ %94, %91 ], [ %88, %90 ]
  %99 = load i32, ptr %96, align 4, !tbaa !50
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %157

101:                                              ; preds = %95
  %102 = add nsw i32 %99, -1
  %103 = ptrtoint ptr %79 to i64
  %104 = sitofp i32 %99 to float
  %105 = zext nneg i32 %102 to i64
  br label %106

106:                                              ; preds = %101, %149
  %107 = phi i64 [ 0, %101 ], [ %155, %149 ]
  %108 = phi float [ %81, %101 ], [ %154, %149 ]
  %109 = phi float [ %82, %101 ], [ %153, %149 ]
  %110 = phi ptr [ %83, %101 ], [ %152, %149 ]
  %111 = phi ptr [ %84, %101 ], [ %151, %149 ]
  %112 = phi ptr [ %85, %101 ], [ %150, %149 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #12
  %113 = shl nuw nsw i64 %107, 1
  %114 = getelementptr inbounds float, ptr %98, i64 %113
  %115 = load float, ptr %114, align 4, !tbaa !34
  %116 = load float, ptr %17, align 4, !tbaa !34
  %117 = fmul float %115, %116
  store float %117, ptr %21, align 4, !tbaa !34
  %118 = or disjoint i64 %113, 1
  %119 = getelementptr inbounds float, ptr %98, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !34
  %121 = load float, ptr %18, align 4, !tbaa !34
  %122 = fmul float %120, %121
  store float %122, ptr %37, align 4, !tbaa !34
  %123 = add nuw nsw i64 %113, 2
  %124 = getelementptr inbounds float, ptr %98, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !34
  %126 = fmul float %116, %125
  store float %126, ptr %22, align 4, !tbaa !34
  %127 = add nuw nsw i64 %113, 3
  %128 = getelementptr inbounds float, ptr %98, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !34
  %130 = fmul float %121, %129
  store float %130, ptr %38, align 4, !tbaa !34
  %131 = call float @dist_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %21, ptr noundef nonnull %22) #11
  %132 = fcmp olt float %131, %109
  br i1 %132, label %133, label %149

133:                                              ; preds = %106
  br i1 %39, label %137, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds float, ptr %88, i64 %123
  %136 = getelementptr inbounds float, ptr %88, i64 %113
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %135, ptr noundef nonnull %136) #13
  br label %137

137:                                              ; preds = %134, %133
  br i1 %35, label %144, label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr %71, align 8, !tbaa !51
  %140 = load ptr, ptr %70, align 8, !tbaa !52
  %141 = ptrtoint ptr %140 to i64
  %142 = sub i64 %103, %141
  %143 = getelementptr inbounds i8, ptr %139, i64 %142
  br label %144

144:                                              ; preds = %137, %138
  %145 = phi ptr [ %143, %138 ], [ %79, %137 ]
  %146 = trunc i64 %107 to i32
  %147 = sitofp i32 %146 to float
  %148 = fdiv float %147, %104
  br label %149

149:                                              ; preds = %144, %106
  %150 = phi ptr [ %41, %144 ], [ %112, %106 ]
  %151 = phi ptr [ %64, %144 ], [ %111, %106 ]
  %152 = phi ptr [ %145, %144 ], [ %110, %106 ]
  %153 = phi float [ %131, %144 ], [ %109, %106 ]
  %154 = phi float [ %148, %144 ], [ %108, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #12
  %155 = add nuw nsw i64 %107, 1
  %156 = icmp eq i64 %155, %105
  br i1 %156, label %157, label %106, !llvm.loop !53

157:                                              ; preds = %149, %95
  %158 = phi ptr [ %85, %95 ], [ %150, %149 ]
  %159 = phi ptr [ %84, %95 ], [ %151, %149 ]
  %160 = phi ptr [ %83, %95 ], [ %152, %149 ]
  %161 = phi float [ %82, %95 ], [ %153, %149 ]
  %162 = phi float [ %81, %95 ], [ %154, %149 ]
  %163 = icmp eq ptr %97, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %157
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %165(ptr noundef nonnull %97) #11
  br label %166

166:                                              ; preds = %164, %157
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %167(ptr noundef nonnull %88) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #12
  br label %168

168:                                              ; preds = %166, %78
  %169 = phi ptr [ %158, %166 ], [ %85, %78 ]
  %170 = phi ptr [ %159, %166 ], [ %84, %78 ]
  %171 = phi ptr [ %160, %166 ], [ %83, %78 ]
  %172 = phi float [ %161, %166 ], [ %82, %78 ]
  %173 = phi float [ %162, %166 ], [ %81, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  %174 = add nuw nsw i32 %80, 1
  %175 = getelementptr inbounds %struct.MaskSplinePoint, ptr %79, i64 1
  %176 = load i32, ptr %72, align 4, !tbaa !45
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %78, label %55, !llvm.loop !54

178:                                              ; preds = %55, %51, %40
  %179 = phi ptr [ %46, %40 ], [ %46, %51 ], [ %56, %55 ]
  %180 = phi ptr [ %45, %40 ], [ %45, %51 ], [ %57, %55 ]
  %181 = phi ptr [ %44, %40 ], [ %44, %51 ], [ %58, %55 ]
  %182 = phi float [ %43, %40 ], [ %43, %51 ], [ %59, %55 ]
  %183 = phi float [ %42, %40 ], [ %42, %51 ], [ %60, %55 ]
  %184 = load ptr, ptr %41, align 8, !tbaa !38
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %40, !llvm.loop !55

186:                                              ; preds = %178
  %187 = icmp ne ptr %181, null
  %188 = sitofp i32 %3 to float
  %189 = fcmp olt float %182, %188
  %190 = select i1 %187, i1 %189, i1 false
  br i1 %190, label %191, label %211

191:                                              ; preds = %186
  %192 = icmp eq ptr %8, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %191
  store ptr %179, ptr %8, align 8, !tbaa !38
  br label %194

194:                                              ; preds = %193, %191
  %195 = icmp eq ptr %9, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %194
  store ptr %180, ptr %9, align 8, !tbaa !38
  br label %197

197:                                              ; preds = %196, %194
  %198 = icmp eq ptr %10, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %197
  store ptr %181, ptr %10, align 8, !tbaa !38
  br label %200

200:                                              ; preds = %199, %197
  %201 = icmp eq ptr %11, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %200
  %203 = icmp eq i8 %7, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %202
  %205 = call float @BKE_mask_spline_project_co(ptr noundef %180, ptr noundef nonnull %181, float noundef %183, ptr noundef nonnull %2, i32 noundef 0) #11
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi float [ %205, %204 ], [ %183, %202 ]
  store float %207, ptr %11, align 4, !tbaa !34
  br label %208

208:                                              ; preds = %206, %200
  %209 = icmp eq ptr %12, null
  br i1 %209, label %220, label %210

210:                                              ; preds = %208
  store float %182, ptr %12, align 4, !tbaa !34
  br label %220

211:                                              ; preds = %13, %186
  %212 = icmp eq ptr %8, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %211
  store ptr null, ptr %8, align 8, !tbaa !38
  br label %214

214:                                              ; preds = %213, %211
  %215 = icmp eq ptr %9, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %214
  store ptr null, ptr %9, align 8, !tbaa !38
  br label %217

217:                                              ; preds = %216, %214
  %218 = icmp eq ptr %10, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %217
  store ptr null, ptr %10, align 8, !tbaa !38
  br label %220

220:                                              ; preds = %217, %219, %208, %210
  %221 = phi i8 [ 1, %210 ], [ 1, %208 ], [ 0, %219 ], [ 0, %217 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  ret i8 %221
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_pixelspace_factor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_point_segment_diff(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_point_segment_feather_diff(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @dist_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !56 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BKE_mask_spline_project_co(ptr noundef, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_add_vertex(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_vertex_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @add_vertex_invoke, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+00, float noundef 1.000000e+00) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_vertex_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !67 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @ED_mask_new(ptr noundef %0, ptr noundef null) #11
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %11 = tail call ptr @BKE_mask_layer_active(ptr noundef %10) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 13
  %15 = load i8, ptr %14, align 1, !tbaa !40
  %16 = and i8 %15, 3
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  call void @RNA_float_get_array(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #11
  br label %72

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  call void @RNA_float_get_array(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #11
  %24 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %72, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = icmp eq ptr %29, null
  br i1 %30, label %72, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !72
  %34 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !75
  %36 = or i8 %35, %33
  %37 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 9
  %38 = load i8, ptr %37, align 1, !tbaa !76
  %39 = or i8 %36, %38
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.MaskSpline, ptr %25, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  %45 = icmp eq ptr %29, %44
  %46 = getelementptr inbounds %struct.MaskSpline, ptr %25, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !45
  %48 = sext i32 %47 to i64
  %49 = getelementptr %struct.MaskSplinePoint, ptr %44, i64 %48
  %50 = getelementptr %struct.MaskSplinePoint, ptr %49, i64 -1
  %51 = icmp eq ptr %29, %50
  %52 = select i1 %45, i1 true, i1 %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %42
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1
  %55 = call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %54) #13, !range !77
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.MaskSpline, ptr %25, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !78
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = select i1 %51, ptr %44, ptr %50
  %64 = or disjoint i16 %59, 2
  store i16 %64, ptr %58, align 8, !tbaa !78
  call void @BKE_mask_calc_handle_point_auto(ptr noundef nonnull %25, ptr noundef nonnull %29, i8 noundef zeroext 0) #11
  call void @BKE_mask_calc_handle_point_auto(ptr noundef nonnull %25, ptr noundef %63, i8 noundef zeroext 0) #11
  %65 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !79
  %67 = sitofp i32 %66 to float
  call void @BKE_mask_update_display(ptr noundef %10, float noundef %67) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %10) #11
  br label %81

68:                                               ; preds = %42, %53
  %69 = call fastcc zeroext i8 @add_vertex_subdivide(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %3) #13, !range !77
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  call fastcc void @add_vertex_extrude(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %3) #13
  br label %77

72:                                               ; preds = %18, %31, %27, %21
  %73 = phi ptr [ null, %18 ], [ %11, %31 ], [ %11, %27 ], [ %11, %21 ]
  %74 = call fastcc zeroext i8 @add_vertex_subdivide(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %3) #13, !range !77
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  call fastcc void @add_vertex_new(ptr noundef %0, ptr noundef %10, ptr noundef %73, ptr noundef nonnull %3) #13
  br label %77

77:                                               ; preds = %68, %71, %76, %72
  %78 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !79
  %80 = sitofp i32 %79 to float
  call void @BKE_mask_update_display(ptr noundef %10, float noundef %80) #11
  br label %81

81:                                               ; preds = %62, %57, %77
  %82 = phi i32 [ 4, %77 ], [ 4, %62 ], [ 2, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_vertex_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !100 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #11
  %10 = call i32 @add_vertex_exec(ptr noundef %0, ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @ED_operator_mask(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_add_feather_vertex(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_feather_vertex_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @add_feather_vertex_invoke, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+00, float noundef 1.000000e+00) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_feather_vertex_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !101 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  call void @RNA_float_get_array(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #11
  %11 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, float noundef 9.000000e+00, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #11
  store ptr %11, ptr %5, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, i32 noundef 9, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef null) #13, !range !77
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = call ptr @CTX_data_scene(ptr noundef %0) #11
  %18 = load ptr, ptr %4, align 8, !tbaa !38
  %19 = load ptr, ptr %5, align 8, !tbaa !38
  %20 = load float, ptr %7, align 4, !tbaa !34
  %21 = call float @BKE_mask_point_weight(ptr noundef %18, ptr noundef %19, float noundef %20) #11
  %22 = load ptr, ptr %4, align 8, !tbaa !38
  %23 = load ptr, ptr %5, align 8, !tbaa !38
  %24 = load float, ptr %7, align 4, !tbaa !34
  %25 = call float @BKE_mask_point_weight_scalar(ptr noundef %22, ptr noundef %23, float noundef %24) #11
  %26 = fcmp une float %25, 0.000000e+00
  %27 = select i1 %26, float %25, float 1.000000e+00
  %28 = fdiv float %21, %27
  %29 = load ptr, ptr %5, align 8, !tbaa !38
  %30 = load float, ptr %7, align 4, !tbaa !34
  call void @BKE_mask_point_add_uw(ptr noundef %29, float noundef %30, float noundef %28) #11
  %31 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !79
  %33 = sitofp i32 %32 to float
  call void @BKE_mask_update_display(ptr noundef %8, float noundef %33) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %8) #11
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #11
  br label %34

34:                                               ; preds = %13, %2, %16
  %35 = phi i32 [ 4, %16 ], [ 4, %2 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_feather_vertex_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !102 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #11
  %10 = call i32 @add_feather_vertex_exec(ptr noundef %0, ptr noundef %1) #13, !range !103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_primitive_circle_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @primitive_circle_add_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @primitive_add_invoke, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  tail call fastcc void @define_prinitive_add_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @primitive_circle_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !104 {
  tail call fastcc void @create_primitive_from_points(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__const.primitive_circle_add_exec.points, i8 noundef zeroext 1) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @primitive_add_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !105 {
  %4 = alloca [2 x float], align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @ED_mask_get_size(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call void @ED_mask_cursor_location_get(ptr noundef %7, ptr noundef nonnull %4) #11
  %8 = load i32, ptr %5, align 4, !tbaa !50
  %9 = load i32, ptr %6, align 4, !tbaa !50
  %10 = insertelement <2 x i32> poison, i32 %8, i64 0
  %11 = insertelement <2 x i32> %10, i32 %9, i64 1
  %12 = sitofp <2 x i32> %11 to <2 x float>
  %13 = load <2 x float>, ptr %4, align 8, !tbaa !34
  %14 = fmul <2 x float> %13, %12
  store <2 x float> %14, ptr %4, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  call void @RNA_float_set_array(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #11
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.wmOperatorType, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = call i32 %20(ptr noundef %0, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @define_prinitive_add_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call ptr @RNA_def_float(ptr noundef %3, ptr noundef nonnull @.str.17, float noundef 1.000000e+02, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #11
  %5 = load ptr, ptr %2, align 8, !tbaa !66
  %6 = tail call ptr @RNA_def_float_vector(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_primitive_square_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @primitive_square_add_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @primitive_add_invoke, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  tail call fastcc void @define_prinitive_add_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @primitive_square_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !108 {
  tail call fastcc void @create_primitive_from_points(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__const.primitive_square_add_exec.points, i8 noundef zeroext 2) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_mask_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !109 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp oeq float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BKE_mask_calc_handle_point_auto(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_update_display(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @add_vertex_subdivide(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !110 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store ptr null, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %9 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 9, i8 noundef zeroext 0, ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef null) #13, !range !77
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !38
  %13 = load ptr, ptr %5, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 272
  %20 = trunc i64 %19 to i32
  call void @ED_mask_select_toggle_all(ptr noundef %1, i32 noundef 2) #11
  %21 = load ptr, ptr %5, align 8, !tbaa !38
  call fastcc void @mask_spline_add_point_at_index(ptr noundef %21, i32 noundef %20) #13
  %22 = load ptr, ptr %5, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = shl i64 %19, 32
  %26 = add i64 %25, 4294967296
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds %struct.MaskSplinePoint, ptr %24, i64 %27
  %29 = load float, ptr %8, align 4, !tbaa !34
  call fastcc void @setup_vertex_point(ptr noundef %1, ptr noundef %22, ptr noundef %28, ptr noundef %2, float noundef %29, ptr noundef null, i8 noundef zeroext 1) #13
  %30 = load ptr, ptr %4, align 8, !tbaa !38
  %31 = load ptr, ptr %5, align 8, !tbaa !38
  %32 = call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef %30, ptr noundef %31) #11
  %33 = add i32 %20, 1
  %34 = add i32 %33, %32
  call void @BKE_mask_layer_shape_changed_add(ptr noundef %30, i32 noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %35 = load ptr, ptr %5, align 8, !tbaa !38
  %36 = load ptr, ptr %4, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.MaskLayer, ptr %36, i64 0, i32 5
  store ptr %35, ptr %37, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct.MaskLayer, ptr %36, i64 0, i32 6
  store ptr %28, ptr %38, align 8, !tbaa !71
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %1) #11
  br label %39

39:                                               ; preds = %3, %11
  %40 = phi i8 [ 1, %11 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_vertex_extrude(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !111 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call fastcc void @finSelectedSplinePoint(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  tail call void @ED_mask_select_toggle_all(ptr noundef %1, i32 noundef 2) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = load ptr, ptr %5, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 272
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.BezTriple, ptr %9, i64 0, i32 7
  %19 = load i8, ptr %18, align 1, !tbaa !72
  %20 = and i8 %19, -2
  store i8 %20, ptr %18, align 1, !tbaa !72
  %21 = getelementptr inbounds %struct.BezTriple, ptr %9, i64 0, i32 8
  %22 = load i8, ptr %21, align 4, !tbaa !75
  %23 = and i8 %22, -2
  store i8 %23, ptr %21, align 4, !tbaa !75
  %24 = getelementptr inbounds %struct.BezTriple, ptr %9, i64 0, i32 9
  %25 = load i8, ptr %24, align 1, !tbaa !76
  %26 = and i8 %25, -2
  store i8 %26, ptr %24, align 1, !tbaa !76
  %27 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !78
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = icmp sgt i32 %17, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !45
  %36 = add nsw i32 %35, -1
  %37 = icmp eq i32 %36, %17
  br i1 %37, label %49, label %38

38:                                               ; preds = %33, %4
  call void @BKE_mask_calc_tangent_polyline(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %7) #11
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef %3, ptr noundef nonnull %39) #13
  %40 = call fastcc float @dot_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %41 = fcmp uge float %40, 0.000000e+00
  br i1 %41, label %49, label %44

42:                                               ; preds = %31
  %43 = icmp eq i32 %17, 0
  br i1 %43, label %51, label %49

44:                                               ; preds = %38
  %45 = add nsw i32 %17, -1
  %46 = icmp slt i32 %17, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i16, ptr %27, align 8, !tbaa !78
  br label %51

49:                                               ; preds = %44, %38, %42, %33
  %50 = phi i32 [ %17, %42 ], [ %17, %38 ], [ %45, %44 ], [ %17, %33 ]
  call fastcc void @mask_spline_add_point_at_index(ptr noundef nonnull %10, i32 noundef %50) #13
  br label %63

51:                                               ; preds = %47, %42
  %52 = phi i16 [ %48, %47 ], [ %28, %42 ]
  %53 = phi i32 [ %45, %47 ], [ -1, %42 ]
  %54 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !45
  %56 = add nsw i32 %55, %53
  %57 = and i16 %52, 2
  %58 = icmp eq i16 %57, 0
  %59 = select i1 %58, i32 0, i32 %56
  call fastcc void @mask_spline_add_point_at_index(ptr noundef nonnull %10, i32 noundef %59) #13
  br i1 %58, label %60, label %63

60:                                               ; preds = %51
  %61 = load ptr, ptr %11, align 8, !tbaa !51
  %62 = getelementptr %struct.MaskSplinePoint, ptr %61, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %62, ptr noundef nonnull align 8 dereferenceable(272) %61, i64 272, i1 false), !tbaa.struct !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %61, i8 0, i64 272, i1 false)
  br label %69

63:                                               ; preds = %49, %51
  %64 = phi i32 [ %50, %49 ], [ %56, %51 ]
  %65 = load ptr, ptr %11, align 8, !tbaa !51
  %66 = sext i32 %64 to i64
  %67 = getelementptr %struct.MaskSplinePoint, ptr %65, i64 %66
  %68 = getelementptr %struct.MaskSplinePoint, ptr %67, i64 1
  br label %69

69:                                               ; preds = %63, %60
  %70 = phi ptr [ %61, %60 ], [ %68, %63 ]
  %71 = phi ptr [ %62, %60 ], [ %67, %63 ]
  %72 = getelementptr inbounds %struct.MaskLayer, ptr %2, i64 0, i32 6
  store ptr %70, ptr %72, align 8, !tbaa !71
  call fastcc void @setup_vertex_point(ptr noundef %1, ptr noundef nonnull %10, ptr noundef %70, ptr noundef %3, float noundef 5.000000e-01, ptr noundef %71, i8 noundef zeroext 0) #13
  %73 = getelementptr inbounds %struct.MaskLayer, ptr %2, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !114
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr %11, align 8, !tbaa !51
  %78 = ptrtoint ptr %70 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 272
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 5
  %84 = load i32, ptr %83, align 4, !tbaa !45
  %85 = srem i32 %82, %84
  %86 = call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef nonnull %2, ptr noundef nonnull %10) #11
  %87 = add nsw i32 %86, %85
  call void @BKE_mask_layer_shape_changed_add(ptr noundef nonnull %2, i32 noundef %87, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %88

88:                                               ; preds = %76, %69
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_vertex_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !115 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_mask_layer_new(ptr noundef %1, ptr noundef nonnull @.str.16) #11
  %10 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !116
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 3
  store i32 %12, ptr %13, align 8, !tbaa !118
  tail call void @ED_mask_select_toggle_all(ptr noundef %1, i32 noundef 2) #11
  br label %17

14:                                               ; preds = %4
  call fastcc void @finSelectedSplinePoint(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %15 = load ptr, ptr %5, align 8, !tbaa !38
  tail call void @ED_mask_select_toggle_all(ptr noundef %1, i32 noundef 2) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %9, %8 ], [ %2, %14 ]
  %19 = tail call ptr @BKE_mask_spline_add(ptr noundef %18) #11
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %22 = phi ptr [ %18, %17 ], [ %2, %14 ]
  %23 = getelementptr inbounds %struct.MaskLayer, ptr %22, i64 0, i32 5
  store ptr %21, ptr %23, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %21, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.MaskLayer, ptr %22, i64 0, i32 6
  store ptr %25, ptr %26, align 8, !tbaa !71
  tail call fastcc void @setup_vertex_point(ptr noundef %1, ptr noundef %21, ptr noundef %25, ptr noundef %3, float noundef 5.000000e-01, ptr noundef null, i8 noundef zeroext 0) #13
  %27 = load ptr, ptr %24, align 8, !tbaa !51
  %28 = ptrtoint ptr %25 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 272
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %21, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !45
  %35 = srem i32 %32, %34
  %36 = tail call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef %22, ptr noundef %21) #11
  %37 = add nsw i32 %36, %35
  tail call void @BKE_mask_layer_shape_changed_add(ptr noundef %22, i32 noundef %37, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare void @ED_mask_select_toggle_all(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_spline_add_point_at_index(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 272
  %9 = tail call ptr %3(i64 noundef %8, ptr noundef nonnull @.str.15) #11
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = add nsw i32 %1, 1
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %11, i64 %14, i1 false)
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds %struct.MaskSplinePoint, ptr %9, i64 %15
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 2
  %18 = load ptr, ptr %10, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.MaskSplinePoint, ptr %18, i64 %15
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %19, i64 1
  %21 = load i32, ptr %4, align 4, !tbaa !45
  %22 = xor i32 %1, -1
  %23 = add i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %17, ptr nonnull align 8 %20, i64 %25, i1 false)
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %27 = load ptr, ptr %10, align 8, !tbaa !51
  tail call void %26(ptr noundef %27) #11
  store ptr %9, ptr %10, align 8, !tbaa !51
  %28 = load i32, ptr %4, align 4, !tbaa !45
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %4, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_vertex_point(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, float noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !120 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef %3) #13
  %9 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 6
  store i8 3, ptr %10, align 2, !tbaa !121
  %11 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 5
  store i8 3, ptr %11, align 1, !tbaa !122
  %12 = icmp eq ptr %5, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 5
  %15 = load i8, ptr %14, align 1, !tbaa !123
  %16 = icmp eq i8 %15, 2
  %17 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 6
  %18 = load i8, ptr %17, align 2, !tbaa !124
  %19 = icmp eq i8 %18, 2
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %21, label %67

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, %2
  %25 = select i1 %24, i32 1, i32 -1
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !45
  %28 = add i32 %27, -1
  %29 = icmp sgt i32 %27, 1
  br i1 %29, label %30, label %96

30:                                               ; preds = %21
  %31 = ptrtoint ptr %5 to i64
  %32 = ptrtoint ptr %23 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 272
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 2
  br label %40

37:                                               ; preds = %54
  %38 = add nuw nsw i32 %41, 1
  %39 = icmp eq i32 %38, %28
  br i1 %39, label %96, label %40, !llvm.loop !125

40:                                               ; preds = %30, %37
  %41 = phi i32 [ 0, %30 ], [ %38, %37 ]
  %42 = phi i32 [ %35, %30 ], [ %55, %37 ]
  %43 = add nsw i32 %42, %25
  %44 = icmp ne i32 %43, -1
  %45 = icmp slt i32 %43, %27
  %46 = and i1 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load i16, ptr %36, align 8, !tbaa !78
  %49 = and i16 %48, 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %96, label %51

51:                                               ; preds = %47
  %52 = select i1 %45, i32 %43, i32 0
  %53 = select i1 %44, i32 %52, i32 %28
  br label %54

54:                                               ; preds = %51, %40
  %55 = phi i32 [ %43, %40 ], [ %53, %51 ]
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.MaskSplinePoint, ptr %23, i64 %56
  %58 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 5
  %59 = load i8, ptr %58, align 1, !tbaa !123
  %60 = icmp eq i8 %59, 2
  %61 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 6
  %62 = load i8, ptr %61, align 2, !tbaa !124
  %63 = icmp eq i8 %62, 2
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %37, label %65

65:                                               ; preds = %54
  %66 = tail call i8 @llvm.umax.i8(i8 %62, i8 %59)
  br label %94

67:                                               ; preds = %13
  %68 = tail call i8 @llvm.umax.i8(i8 %18, i8 %15)
  br label %94

69:                                               ; preds = %7
  %70 = icmp eq i8 %6, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !45
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !51
  %78 = ptrtoint ptr %2 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 272
  %82 = trunc i64 %81 to i32
  %83 = add nsw i32 %82, -1
  %84 = srem i32 %83, %73
  %85 = sext i32 %84 to i64
  %86 = add nsw i32 %82, 1
  %87 = srem i32 %86, %73
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.MaskSplinePoint, ptr %77, i64 %85, i32 0, i32 6
  %90 = load i8, ptr %89, align 2, !tbaa !124
  %91 = getelementptr inbounds %struct.MaskSplinePoint, ptr %77, i64 %88, i32 0, i32 5
  %92 = load i8, ptr %91, align 1, !tbaa !123
  %93 = tail call i8 @llvm.umax.i8(i8 %90, i8 %92)
  br label %94

94:                                               ; preds = %67, %75, %65
  %95 = phi i8 [ %66, %65 ], [ %93, %75 ], [ %68, %67 ]
  store i8 %95, ptr %10, align 2, !tbaa !121
  store i8 %95, ptr %11, align 1, !tbaa !122
  br label %96

96:                                               ; preds = %37, %47, %94, %21, %69, %71
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %8) #13
  %97 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %97, ptr noundef nonnull %8) #13
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %98, ptr noundef nonnull %8) #13
  %99 = getelementptr inbounds %struct.MaskSplinePoint, ptr %2, i64 0, i32 4
  tail call void @BKE_mask_parent_init(ptr noundef nonnull %99) #11
  %100 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %101 = load i32, ptr %100, align 4, !tbaa !45
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  tail call void @BKE_mask_calc_handle_adjacent_interp(ptr noundef nonnull %1, ptr noundef %2, float noundef %4) #11
  br label %104

104:                                              ; preds = %103, %96
  %105 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 7
  %106 = load i8, ptr %105, align 1, !tbaa !72
  %107 = or i8 %106, 1
  store i8 %107, ptr %105, align 1, !tbaa !72
  %108 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 8
  %109 = load i8, ptr %108, align 4, !tbaa !75
  %110 = or i8 %109, 1
  store i8 %110, ptr %108, align 4, !tbaa !75
  %111 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 9
  %112 = load i8, ptr %111, align 1, !tbaa !76
  %113 = or i8 %112, 1
  store i8 %113, ptr %111, align 1, !tbaa !76
  tail call void @ED_mask_select_flush_all(ptr noundef %0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_changed_add(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !126 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !127 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_parent_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_calc_handle_adjacent_interp(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_select_flush_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @finSelectedSplinePoint(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  store ptr null, ptr %1, align 8, !tbaa !38
  store ptr null, ptr %2, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !72
  %16 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 8
  %17 = load i8, ptr %16, align 4, !tbaa !75
  %18 = or i8 %17, %15
  %19 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !76
  %21 = or i8 %18, %20
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  store ptr %7, ptr %1, align 8, !tbaa !38
  %25 = load ptr, ptr %10, align 8, !tbaa !71
  br label %71

26:                                               ; preds = %3, %9, %13
  %27 = icmp eq ptr %5, null
  br i1 %27, label %73, label %28

28:                                               ; preds = %26, %67
  %29 = phi ptr [ %68, %67 ], [ null, %26 ]
  %30 = phi ptr [ %69, %67 ], [ %5, %26 ]
  %31 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !45
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 6
  %36 = zext nneg i32 %32 to i64
  br label %37

37:                                               ; preds = %34, %63
  %38 = phi ptr [ %29, %34 ], [ %64, %63 ]
  %39 = phi i64 [ 0, %34 ], [ %65, %63 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.MaskSplinePoint, ptr %40, i64 %39
  %42 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %43 = load i8, ptr %42, align 1, !tbaa !72
  %44 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !75
  %46 = or i8 %45, %43
  %47 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %48 = load i8, ptr %47, align 1, !tbaa !76
  %49 = or i8 %46, %48
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %37
  %53 = load ptr, ptr %1, align 8, !tbaa !38
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %53, %30
  %56 = or i1 %54, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store ptr null, ptr %1, align 8, !tbaa !38
  br label %71

58:                                               ; preds = %52
  %59 = icmp eq ptr %38, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  store ptr %30, ptr %1, align 8, !tbaa !38
  br label %61

61:                                               ; preds = %58, %60
  %62 = phi ptr [ %41, %60 ], [ null, %58 ]
  store ptr %62, ptr %2, align 8, !tbaa !38
  br label %63

63:                                               ; preds = %61, %37
  %64 = phi ptr [ %38, %37 ], [ %62, %61 ]
  %65 = add nuw nsw i64 %39, 1
  %66 = icmp eq i64 %65, %36
  br i1 %66, label %67, label %37, !llvm.loop !130

67:                                               ; preds = %63, %28
  %68 = phi ptr [ %29, %28 ], [ %64, %63 ]
  %69 = load ptr, ptr %30, align 8, !tbaa !131
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %28

71:                                               ; preds = %24, %57
  %72 = phi ptr [ null, %57 ], [ %25, %24 ]
  store ptr %72, ptr %2, align 8, !tbaa !38
  br label %73

73:                                               ; preds = %67, %71, %26
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_calc_tangent_polyline(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !132 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare ptr @BKE_mask_layer_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_spline_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_mask_point_find_nearest(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_mask_point_weight(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_mask_point_weight_scalar(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_point_add_uw(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_primitive_from_points(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !133 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.17) #11
  %14 = fptosi float %13 to i32
  call void @ED_mask_get_size(ptr noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %15 = sitofp i32 %14 to float
  %16 = load i32, ptr %7, align 4, !tbaa !50
  %17 = load i32, ptr %8, align 4, !tbaa !50
  %18 = call fastcc i32 @max_ii(i32 noundef %16, i32 noundef %17) #13
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %15, %19
  %21 = insertelement <2 x i32> poison, i32 %16, i64 0
  %22 = insertelement <2 x i32> %21, i32 %17, i64 1
  %23 = sitofp <2 x i32> %22 to <2 x float>
  store <2 x float> %23, ptr %6, align 8, !tbaa !34
  %24 = load ptr, ptr %11, align 8, !tbaa !68
  call void @RNA_float_get_array(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #11
  %25 = load i32, ptr %7, align 4, !tbaa !50
  %26 = load i32, ptr %8, align 4, !tbaa !50
  %27 = insertelement <2 x i32> poison, i32 %25, i64 0
  %28 = insertelement <2 x i32> %27, i32 %26, i64 1
  %29 = sitofp <2 x i32> %28 to <2 x float>
  %30 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %31 = fdiv <2 x float> %30, %29
  store <2 x float> %31, ptr %5, align 8, !tbaa !34
  call void @BKE_mask_coord_from_frame(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %32 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %33 = insertelement <2 x float> poison, float %20, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> <float -5.000000e-01, float -5.000000e-01>, <2 x float> %32)
  store <2 x float> %35, ptr %5, align 8, !tbaa !34
  %36 = call ptr @ED_mask_layer_ensure(ptr noundef %0) #11
  %37 = call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @ED_mask_select_toggle_all(ptr noundef %37, i32 noundef 2) #11
  %38 = call ptr @BKE_mask_spline_add(ptr noundef %36) #11
  %39 = getelementptr inbounds %struct.MaskSpline, ptr %38, i64 0, i32 2
  store i16 3, ptr %39, align 8, !tbaa !78
  %40 = getelementptr inbounds %struct.MaskSpline, ptr %38, i64 0, i32 5
  store i32 4, ptr %40, align 4, !tbaa !45
  %41 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.MaskSpline, ptr %38, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = call ptr %41(ptr noundef %43, i64 noundef 1088, ptr noundef nonnull @__func__.create_primitive_from_points) #11
  store ptr %44, ptr %42, align 8, !tbaa !51
  %45 = getelementptr inbounds %struct.MaskLayer, ptr %36, i64 0, i32 5
  store ptr %38, ptr %45, align 8, !tbaa !70
  %46 = getelementptr inbounds %struct.MaskLayer, ptr %36, i64 0, i32 6
  store ptr null, ptr %46, align 8, !tbaa !71
  br label %47

47:                                               ; preds = %4, %47
  %48 = phi i64 [ 0, %4 ], [ %55, %47 ]
  %49 = load ptr, ptr %42, align 8, !tbaa !51
  %50 = getelementptr inbounds %struct.MaskSplinePoint, ptr %49, i64 %48
  %51 = getelementptr inbounds [3 x [3 x float]], ptr %50, i64 0, i64 1
  %52 = getelementptr inbounds [2 x float], ptr %2, i64 %48
  call fastcc void @copy_v2_v2(ptr noundef nonnull %51, ptr noundef %52) #13
  call fastcc void @mul_v2_fl(ptr noundef nonnull %51, float noundef %20) #13
  call fastcc void @add_v2_v2(ptr noundef nonnull %51, ptr noundef nonnull %5) #13
  %53 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 0, i32 5
  store i8 %3, ptr %53, align 1, !tbaa !123
  %54 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 0, i32 6
  store i8 %3, ptr %54, align 2, !tbaa !124
  call void @BKE_mask_point_select_set(ptr noundef %50, i8 noundef zeroext 1) #11
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %47, !llvm.loop !134

57:                                               ; preds = %47
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %37) #11
  %58 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !79
  %60 = sitofp i32 %59 to float
  call void @BKE_mask_update_display(ptr noundef %37, float noundef %60) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !135 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @BKE_mask_coord_from_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_mask_layer_ensure(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !136 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !137 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_point_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_cursor_location_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !36, i64 143}
!41 = !{!"MaskLayer", !39, i64 0, !39, i64 8, !36, i64 16, !42, i64 80, !42, i64 96, !39, i64 112, !39, i64 120, !35, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !48, i64 20}
!46 = !{!"MaskSpline", !39, i64 0, !39, i64 8, !47, i64 16, !36, i64 18, !36, i64 19, !48, i64 20, !39, i64 24, !49, i64 32, !39, i64 216}
!47 = !{!"short", !36, i64 0}
!48 = !{!"int", !36, i64 0}
!49 = !{!"MaskParent", !48, i64 0, !48, i64 4, !39, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!50 = !{!48, !48, i64 0}
!51 = !{!46, !39, i64 24}
!52 = !{!46, !39, i64 216}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
!55 = distinct !{!55, !44}
!56 = !{!"mask_add.c:sub_v2_v2v2"}
!57 = !{!58, !39, i64 0}
!58 = !{!"wmOperatorType", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !42, i64 112, !39, i64 128, !39, i64 136, !39, i64 144, !59, i64 152, !47, i64 184}
!59 = !{!"ExtensionRNA", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!60 = !{!58, !39, i64 24}
!61 = !{!58, !39, i64 8}
!62 = !{!58, !39, i64 32}
!63 = !{!58, !39, i64 48}
!64 = !{!58, !39, i64 72}
!65 = !{!58, !47, i64 184}
!66 = !{!58, !39, i64 88}
!67 = !{!"mask_add.c:add_vertex_exec"}
!68 = !{!69, !39, i64 112}
!69 = !{!"wmOperator", !39, i64 0, !39, i64 8, !36, i64 16, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 144, !39, i64 152, !47, i64 160, !36, i64 162}
!70 = !{!41, !39, i64 112}
!71 = !{!41, !39, i64 120}
!72 = !{!73, !36, i64 51}
!73 = !{!"MaskSplinePoint", !74, i64 0, !48, i64 72, !48, i64 76, !39, i64 80, !49, i64 88}
!74 = !{!"BezTriple", !36, i64 0, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !35, i64 56, !35, i64 60, !35, i64 64, !36, i64 68}
!75 = !{!73, !36, i64 52}
!76 = !{!73, !36, i64 53}
!77 = !{i8 0, i8 2}
!78 = !{!46, !47, i64 16}
!79 = !{!80, !48, i64 680}
!80 = !{!"Scene", !81, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !42, i64 152, !39, i64 168, !39, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !48, i64 232, !48, i64 236, !48, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !82, i64 280, !91, i64 4264, !42, i64 4296, !42, i64 4312, !39, i64 4328, !39, i64 4336, !39, i64 4344, !39, i64 4352, !39, i64 4360, !39, i64 4368, !47, i64 4376, !47, i64 4378, !48, i64 4380, !42, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !39, i64 4608, !97, i64 4616, !39, i64 4640, !98, i64 4648, !98, i64 4656, !84, i64 4664, !85, i64 4824, !99, i64 4888, !39, i64 4952}
!81 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !47, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !39, i64 112}
!82 = !{!"RenderData", !83, i64 0, !39, i64 248, !39, i64 256, !86, i64 264, !87, i64 328, !48, i64 400, !48, i64 404, !48, i64 408, !35, i64 412, !48, i64 416, !48, i64 420, !48, i64 424, !48, i64 428, !47, i64 432, !47, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !48, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !48, i64 484, !48, i64 488, !47, i64 492, !47, i64 494, !48, i64 496, !48, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !48, i64 516, !48, i64 520, !48, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !88, i64 544, !88, i64 560, !89, i64 576, !42, i64 592, !47, i64 608, !47, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !48, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !35, i64 660, !35, i64 664, !47, i64 668, !47, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !48, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !48, i64 2520, !47, i64 2524, !47, i64 2526, !35, i64 2528, !35, i64 2532, !47, i64 2536, !47, i64 2538, !35, i64 2540, !47, i64 2544, !47, i64 2546, !48, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !35, i64 2560, !35, i64 2564, !39, i64 2568, !48, i64 2576, !35, i64 2580, !36, i64 2584, !90, i64 2616, !48, i64 3976, !48, i64 3980}
!83 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !84, i64 24, !85, i64 184}
!84 = !{!"ColorManagedViewSettings", !48, i64 0, !48, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !39, i64 144, !39, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!86 = !{!"QuicktimeCodecSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !47, i64 48, !47, i64 50, !48, i64 52, !48, i64 56, !48, i64 60}
!87 = !{!"FFMpegCodecData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !35, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !39, i64 64}
!88 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!89 = !{!"rcti", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!90 = !{!"BakeData", !83, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!91 = !{!"AudioData", !48, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !48, i64 16, !47, i64 20, !47, i64 22, !35, i64 24, !35, i64 28}
!92 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!93 = !{!"GameData", !92, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !94, i64 40, !47, i64 64, !47, i64 66, !35, i64 68, !95, i64 72, !35, i64 128, !35, i64 132, !48, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!94 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !35, i64 8, !35, i64 12, !39, i64 16}
!95 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !48, i64 40, !35, i64 44, !35, i64 48, !47, i64 52, !47, i64 54}
!96 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!97 = !{!"PhysicsSettings", !36, i64 0, !48, i64 12, !48, i64 16, !48, i64 20}
!98 = !{!"long", !36, i64 0}
!99 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!100 = !{!"mask_add.c:add_vertex_invoke"}
!101 = !{!"mask_add.c:add_feather_vertex_exec"}
!102 = !{!"mask_add.c:add_feather_vertex_invoke"}
!103 = !{i32 2, i32 5}
!104 = !{!"mask_add.c:primitive_circle_add_exec"}
!105 = !{!"mask_add.c:primitive_add_invoke"}
!106 = !{!69, !39, i64 88}
!107 = !{!"mask_add.c:define_prinitive_add_properties"}
!108 = !{!"mask_add.c:primitive_square_add_exec"}
!109 = !{!"mask_add.c:equals_v2v2"}
!110 = !{!"mask_add.c:add_vertex_subdivide"}
!111 = !{!"mask_add.c:add_vertex_extrude"}
!112 = !{i64 0, i64 36, !113, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 1, !113, i64 49, i64 1, !113, i64 50, i64 1, !113, i64 51, i64 1, !113, i64 52, i64 1, !113, i64 53, i64 1, !113, i64 54, i64 1, !113, i64 55, i64 1, !113, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !113, i64 72, i64 4, !50, i64 76, i64 4, !50, i64 80, i64 8, !38, i64 88, i64 4, !50, i64 92, i64 4, !50, i64 96, i64 8, !38, i64 104, i64 64, !113, i64 168, i64 64, !113, i64 232, i64 8, !113, i64 240, i64 32, !113}
!113 = !{!36, !36, i64 0}
!114 = !{!41, !39, i64 96}
!115 = !{!"mask_add.c:add_vertex_new"}
!116 = !{!117, !48, i64 148}
!117 = !{!"Mask", !81, i64 0, !39, i64 120, !42, i64 128, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164}
!118 = !{!117, !48, i64 144}
!119 = !{!"mask_add.c:mask_spline_add_point_at_index"}
!120 = !{!"mask_add.c:setup_vertex_point"}
!121 = !{!74, !36, i64 50}
!122 = !{!74, !36, i64 49}
!123 = !{!73, !36, i64 49}
!124 = !{!73, !36, i64 50}
!125 = distinct !{!125, !44}
!126 = !{!"mask_add.c:copy_v2_v2"}
!127 = !{!"mask_add.c:copy_v3_v3"}
!128 = !{!"mask_add.c:finSelectedSplinePoint"}
!129 = !{!41, !39, i64 80}
!130 = distinct !{!130, !44}
!131 = !{!46, !39, i64 0}
!132 = !{!"mask_add.c:dot_v2v2"}
!133 = !{!"mask_add.c:create_primitive_from_points"}
!134 = distinct !{!134, !44}
!135 = !{!"mask_add.c:max_ii"}
!136 = !{!"mask_add.c:mul_v2_fl"}
!137 = !{!"mask_add.c:add_v2_v2"}
