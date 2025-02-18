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

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef writeonly %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef writeonly %8, ptr noundef writeonly %9, ptr noundef writeonly %10, ptr noundef writeonly %11, ptr noundef writeonly %12) local_unnamed_addr #0 {
  %14 = alloca [2 x float], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x float], align 4
  %22 = alloca [2 x float], align 4
  %23 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %24 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #7
  call void @ED_mask_get_size(ptr noundef %23, ptr noundef nonnull %15, ptr noundef nonnull %16) #7
  call void @ED_mask_pixelspace_factor(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %17, ptr noundef nonnull %18) #7
  %25 = load float, ptr %2, align 4, !tbaa !34
  %26 = load float, ptr %17, align 4, !tbaa !34
  %27 = fmul float %25, %26
  store float %27, ptr %14, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = load float, ptr %18, align 4, !tbaa !34
  %31 = fmul float %29, %30
  %32 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = icmp eq ptr %34, null
  br i1 %35, label %197, label %36

36:                                               ; preds = %13
  %37 = icmp eq i8 %6, 0
  %38 = icmp eq i8 %4, 0
  %39 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  %40 = getelementptr inbounds [2 x float], ptr %22, i64 0, i64 1
  %41 = icmp eq ptr %5, null
  %42 = getelementptr inbounds float, ptr %5, i64 1
  br label %43

43:                                               ; preds = %36, %189
  %44 = phi ptr [ %34, %36 ], [ %195, %189 ]
  %45 = phi float [ undef, %36 ], [ %194, %189 ]
  %46 = phi float [ 0x47EFFFFFE0000000, %36 ], [ %193, %189 ]
  %47 = phi ptr [ null, %36 ], [ %192, %189 ]
  %48 = phi ptr [ undef, %36 ], [ %191, %189 ]
  %49 = phi ptr [ undef, %36 ], [ %190, %189 ]
  %50 = getelementptr inbounds %struct.MaskLayer, ptr %44, i64 0, i32 13
  %51 = load i8, ptr %50, align 1, !tbaa !40
  %52 = and i8 %51, 3
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %189

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.MaskLayer, ptr %44, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = icmp eq ptr %56, null
  br i1 %57, label %189, label %66

58:                                               ; preds = %179, %66
  %59 = phi ptr [ %72, %66 ], [ %180, %179 ]
  %60 = phi ptr [ %71, %66 ], [ %181, %179 ]
  %61 = phi ptr [ %70, %66 ], [ %182, %179 ]
  %62 = phi float [ %69, %66 ], [ %183, %179 ]
  %63 = phi float [ %68, %66 ], [ %184, %179 ]
  %64 = load ptr, ptr %67, align 8, !tbaa !38
  %65 = icmp eq ptr %64, null
  br i1 %65, label %189, label %66, !llvm.loop !43

66:                                               ; preds = %54, %58
  %67 = phi ptr [ %64, %58 ], [ %56, %54 ]
  %68 = phi float [ %63, %58 ], [ %45, %54 ]
  %69 = phi float [ %62, %58 ], [ %46, %54 ]
  %70 = phi ptr [ %61, %58 ], [ %47, %54 ]
  %71 = phi ptr [ %60, %58 ], [ %48, %54 ]
  %72 = phi ptr [ %59, %58 ], [ %49, %54 ]
  %73 = getelementptr inbounds %struct.MaskSpline, ptr %67, i64 0, i32 8
  %74 = getelementptr inbounds %struct.MaskSpline, ptr %67, i64 0, i32 6
  %75 = getelementptr inbounds %struct.MaskSpline, ptr %67, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !46
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %58

78:                                               ; preds = %66
  %79 = select i1 %37, ptr %74, ptr %73
  %80 = load ptr, ptr %79, align 8, !tbaa !38
  br label %81

81:                                               ; preds = %78, %179
  %82 = phi ptr [ %186, %179 ], [ %80, %78 ]
  %83 = phi i32 [ %185, %179 ], [ 0, %78 ]
  %84 = phi float [ %184, %179 ], [ %68, %78 ]
  %85 = phi float [ %183, %179 ], [ %69, %78 ]
  %86 = phi ptr [ %182, %179 ], [ %70, %78 ]
  %87 = phi ptr [ %181, %179 ], [ %71, %78 ]
  %88 = phi ptr [ %180, %179 ], [ %72, %78 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #7
  %89 = load i32, ptr %15, align 4, !tbaa !51
  %90 = load i32, ptr %16, align 4, !tbaa !51
  %91 = call ptr @BKE_mask_point_segment_diff(ptr noundef nonnull %67, ptr noundef %82, i32 noundef %89, i32 noundef %90, ptr noundef nonnull %19) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %179, label %93

93:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #7
  br i1 %38, label %98, label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %15, align 4, !tbaa !51
  %96 = load i32, ptr %16, align 4, !tbaa !51
  %97 = call ptr @BKE_mask_point_segment_feather_diff(ptr noundef nonnull %67, ptr noundef %82, i32 noundef %95, i32 noundef %96, ptr noundef nonnull %20) #7
  br label %98

98:                                               ; preds = %93, %94
  %99 = phi ptr [ %20, %94 ], [ %19, %93 ]
  %100 = phi ptr [ %97, %94 ], [ null, %93 ]
  %101 = phi ptr [ %97, %94 ], [ %91, %93 ]
  %102 = load i32, ptr %99, align 4, !tbaa !51
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %168

104:                                              ; preds = %98
  %105 = add nsw i32 %102, -1
  %106 = ptrtoint ptr %82 to i64
  %107 = sitofp i32 %102 to float
  %108 = zext i32 %105 to i64
  br label %109

109:                                              ; preds = %104, %160
  %110 = phi i64 [ 0, %104 ], [ %166, %160 ]
  %111 = phi float [ %84, %104 ], [ %165, %160 ]
  %112 = phi float [ %85, %104 ], [ %164, %160 ]
  %113 = phi ptr [ %86, %104 ], [ %163, %160 ]
  %114 = phi ptr [ %87, %104 ], [ %162, %160 ]
  %115 = phi ptr [ %88, %104 ], [ %161, %160 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #7
  %116 = shl nuw nsw i64 %110, 1
  %117 = getelementptr inbounds float, ptr %101, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !34
  %119 = load float, ptr %17, align 4, !tbaa !34
  %120 = fmul float %118, %119
  store float %120, ptr %21, align 4, !tbaa !34
  %121 = or disjoint i64 %116, 1
  %122 = getelementptr inbounds float, ptr %101, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !34
  %124 = load float, ptr %18, align 4, !tbaa !34
  %125 = fmul float %123, %124
  store float %125, ptr %39, align 4, !tbaa !34
  %126 = add nuw nsw i64 %116, 2
  %127 = getelementptr inbounds float, ptr %101, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = fmul float %119, %128
  store float %129, ptr %22, align 4, !tbaa !34
  %130 = add nuw nsw i64 %116, 3
  %131 = getelementptr inbounds float, ptr %101, i64 %130
  %132 = load float, ptr %131, align 4, !tbaa !34
  %133 = fmul float %124, %132
  store float %133, ptr %40, align 4, !tbaa !34
  %134 = call float @dist_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %21, ptr noundef nonnull %22) #7
  %135 = fcmp olt float %134, %112
  br i1 %135, label %136, label %160

136:                                              ; preds = %109
  br i1 %41, label %148, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds float, ptr %91, i64 %126
  %139 = getelementptr inbounds float, ptr %91, i64 %116
  %140 = load float, ptr %138, align 4, !tbaa !34
  %141 = load float, ptr %139, align 4, !tbaa !34
  %142 = fsub float %140, %141
  store float %142, ptr %5, align 4, !tbaa !34
  %143 = getelementptr inbounds float, ptr %138, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !34
  %145 = getelementptr inbounds float, ptr %139, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = fsub float %144, %146
  store float %147, ptr %42, align 4, !tbaa !34
  br label %148

148:                                              ; preds = %137, %136
  br i1 %37, label %155, label %149

149:                                              ; preds = %148
  %150 = load ptr, ptr %74, align 8, !tbaa !52
  %151 = load ptr, ptr %73, align 8, !tbaa !53
  %152 = ptrtoint ptr %151 to i64
  %153 = sub i64 %106, %152
  %154 = getelementptr inbounds i8, ptr %150, i64 %153
  br label %155

155:                                              ; preds = %148, %149
  %156 = phi ptr [ %154, %149 ], [ %82, %148 ]
  %157 = trunc i64 %110 to i32
  %158 = sitofp i32 %157 to float
  %159 = fdiv float %158, %107
  br label %160

160:                                              ; preds = %155, %109
  %161 = phi ptr [ %44, %155 ], [ %115, %109 ]
  %162 = phi ptr [ %67, %155 ], [ %114, %109 ]
  %163 = phi ptr [ %156, %155 ], [ %113, %109 ]
  %164 = phi float [ %134, %155 ], [ %112, %109 ]
  %165 = phi float [ %159, %155 ], [ %111, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #7
  %166 = add nuw nsw i64 %110, 1
  %167 = icmp eq i64 %166, %108
  br i1 %167, label %168, label %109, !llvm.loop !54

168:                                              ; preds = %160, %98
  %169 = phi ptr [ %88, %98 ], [ %161, %160 ]
  %170 = phi ptr [ %87, %98 ], [ %162, %160 ]
  %171 = phi ptr [ %86, %98 ], [ %163, %160 ]
  %172 = phi float [ %85, %98 ], [ %164, %160 ]
  %173 = phi float [ %84, %98 ], [ %165, %160 ]
  %174 = icmp eq ptr %100, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %168
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %176(ptr noundef nonnull %100) #7
  br label %177

177:                                              ; preds = %175, %168
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %178(ptr noundef nonnull %91) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #7
  br label %179

179:                                              ; preds = %177, %81
  %180 = phi ptr [ %169, %177 ], [ %88, %81 ]
  %181 = phi ptr [ %170, %177 ], [ %87, %81 ]
  %182 = phi ptr [ %171, %177 ], [ %86, %81 ]
  %183 = phi float [ %172, %177 ], [ %85, %81 ]
  %184 = phi float [ %173, %177 ], [ %84, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #7
  %185 = add nuw nsw i32 %83, 1
  %186 = getelementptr inbounds %struct.MaskSplinePoint, ptr %82, i64 1
  %187 = load i32, ptr %75, align 4, !tbaa !46
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %81, label %58, !llvm.loop !55

189:                                              ; preds = %58, %54, %43
  %190 = phi ptr [ %49, %43 ], [ %49, %54 ], [ %59, %58 ]
  %191 = phi ptr [ %48, %43 ], [ %48, %54 ], [ %60, %58 ]
  %192 = phi ptr [ %47, %43 ], [ %47, %54 ], [ %61, %58 ]
  %193 = phi float [ %46, %43 ], [ %46, %54 ], [ %62, %58 ]
  %194 = phi float [ %45, %43 ], [ %45, %54 ], [ %63, %58 ]
  %195 = load ptr, ptr %44, align 8, !tbaa !38
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %43, !llvm.loop !56

197:                                              ; preds = %189, %13
  %198 = phi ptr [ undef, %13 ], [ %190, %189 ]
  %199 = phi ptr [ undef, %13 ], [ %191, %189 ]
  %200 = phi ptr [ null, %13 ], [ %192, %189 ]
  %201 = phi float [ 0x47EFFFFFE0000000, %13 ], [ %193, %189 ]
  %202 = phi float [ undef, %13 ], [ %194, %189 ]
  %203 = icmp ne ptr %200, null
  %204 = sitofp i32 %3 to float
  %205 = fcmp olt float %201, %204
  %206 = select i1 %203, i1 %205, i1 false
  %207 = icmp eq ptr %8, null
  br i1 %206, label %208, label %227

208:                                              ; preds = %197
  br i1 %207, label %210, label %209

209:                                              ; preds = %208
  store ptr %198, ptr %8, align 8, !tbaa !38
  br label %210

210:                                              ; preds = %209, %208
  %211 = icmp eq ptr %9, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %210
  store ptr %199, ptr %9, align 8, !tbaa !38
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp eq ptr %10, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %213
  store ptr %200, ptr %10, align 8, !tbaa !38
  br label %216

216:                                              ; preds = %215, %213
  %217 = icmp eq ptr %11, null
  br i1 %217, label %224, label %218

218:                                              ; preds = %216
  %219 = icmp eq i8 %7, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %218
  %221 = call float @BKE_mask_spline_project_co(ptr noundef %199, ptr noundef nonnull %200, float noundef %202, ptr noundef nonnull %2, i32 noundef 0) #7
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi float [ %221, %220 ], [ %202, %218 ]
  store float %223, ptr %11, align 4, !tbaa !34
  br label %224

224:                                              ; preds = %222, %216
  %225 = icmp eq ptr %12, null
  br i1 %225, label %235, label %226

226:                                              ; preds = %224
  store float %201, ptr %12, align 4, !tbaa !34
  br label %235

227:                                              ; preds = %197
  br i1 %207, label %229, label %228

228:                                              ; preds = %227
  store ptr null, ptr %8, align 8, !tbaa !38
  br label %229

229:                                              ; preds = %228, %227
  %230 = icmp eq ptr %9, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %229
  store ptr null, ptr %9, align 8, !tbaa !38
  br label %232

232:                                              ; preds = %231, %229
  %233 = icmp eq ptr %10, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %232
  store ptr null, ptr %10, align 8, !tbaa !38
  br label %235

235:                                              ; preds = %232, %234, %224, %226
  %236 = phi i8 [ 1, %226 ], [ 1, %224 ], [ 0, %234 ], [ 0, %232 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  ret i8 %236
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mask_pixelspace_factor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_point_segment_diff(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_point_segment_feather_diff(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @dist_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare float @BKE_mask_spline_project_co(ptr noundef, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+00, float noundef 1.000000e+00) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @add_vertex_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @ED_mask_new(ptr noundef %0, ptr noundef null) #7
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %12 = tail call ptr @BKE_mask_layer_active(ptr noundef %11) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %12, i64 0, i32 13
  %16 = load i8, ptr %15, align 1, !tbaa !40
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr %12, ptr null
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi ptr [ %19, %14 ], [ null, %10 ]
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  call void @RNA_float_get_array(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #7
  %24 = icmp eq ptr %21, null
  br i1 %24, label %264, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = icmp eq ptr %27, null
  br i1 %28, label %264, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = icmp eq ptr %31, null
  br i1 %32, label %264, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %35 = load i8, ptr %34, align 1, !tbaa !71
  %36 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 8
  %37 = load i8, ptr %36, align 4, !tbaa !74
  %38 = or i8 %37, %35
  %39 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %40 = load i8, ptr %39, align 1, !tbaa !75
  %41 = or i8 %38, %40
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %264, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.MaskSpline, ptr %27, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = icmp eq ptr %31, %46
  %48 = getelementptr inbounds %struct.MaskSpline, ptr %27, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !46
  %50 = sext i32 %49 to i64
  %51 = getelementptr %struct.MaskSplinePoint, ptr %46, i64 %50
  %52 = getelementptr %struct.MaskSplinePoint, ptr %51, i64 -1
  %53 = icmp eq ptr %31, %52
  %54 = select i1 %47, i1 true, i1 %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %44
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 1
  %57 = load float, ptr %4, align 4, !tbaa !34
  %58 = load float, ptr %56, align 4, !tbaa !34
  %59 = fcmp oeq float %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = getelementptr inbounds float, ptr %4, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 1, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fcmp une float %62, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.MaskSpline, ptr %27, i64 0, i32 2
  %68 = load i16, ptr %67, align 8, !tbaa !76
  %69 = and i16 %68, 2
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %261

71:                                               ; preds = %66
  %72 = select i1 %53, ptr %46, ptr %52
  %73 = or disjoint i16 %68, 2
  store i16 %73, ptr %67, align 8, !tbaa !76
  call void @BKE_mask_calc_handle_point_auto(ptr noundef nonnull %27, ptr noundef nonnull %31, i8 noundef zeroext 0) #7
  call void @BKE_mask_calc_handle_point_auto(ptr noundef nonnull %27, ptr noundef %72, i8 noundef zeroext 0) #7
  %74 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !77
  %76 = sitofp i32 %75 to float
  call void @BKE_mask_update_display(ptr noundef %11, float noundef %76) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %11) #7
  br label %261

77:                                               ; preds = %55, %44, %60
  %78 = call fastcc zeroext i8 @add_vertex_subdivide(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %4), !range !98
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %261

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %81 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !99
  %83 = load ptr, ptr %26, align 8, !tbaa !69
  %84 = icmp eq ptr %83, null
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %30, align 8, !tbaa !70
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 0, i32 7
  %90 = load i8, ptr %89, align 1, !tbaa !71
  %91 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 0, i32 8
  %92 = load i8, ptr %91, align 4, !tbaa !74
  %93 = or i8 %92, %90
  %94 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 0, i32 9
  %95 = load i8, ptr %94, align 1, !tbaa !75
  %96 = or i8 %93, %95
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %153

99:                                               ; preds = %88, %85, %80
  br label %100

100:                                              ; preds = %99, %148
  %101 = phi ptr [ %149, %148 ], [ null, %99 ]
  %102 = phi ptr [ %150, %148 ], [ null, %99 ]
  %103 = phi ptr [ %152, %148 ], [ %82, %99 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %153, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.MaskSpline, ptr %103, i64 0, i32 5
  %107 = load i32, ptr %106, align 4, !tbaa !46
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.MaskSpline, ptr %103, i64 0, i32 6
  %111 = zext nneg i32 %107 to i64
  %112 = load ptr, ptr %110, align 8, !tbaa !52
  br label %113

113:                                              ; preds = %137, %109
  %114 = phi ptr [ %101, %109 ], [ %138, %137 ]
  %115 = phi ptr [ %102, %109 ], [ %139, %137 ]
  %116 = phi i64 [ 0, %109 ], [ %140, %137 ]
  %117 = phi i1 [ true, %109 ], [ %141, %137 ]
  %118 = getelementptr inbounds %struct.MaskSplinePoint, ptr %112, i64 %116
  %119 = getelementptr inbounds %struct.BezTriple, ptr %118, i64 0, i32 7
  %120 = load i8, ptr %119, align 1, !tbaa !71
  %121 = getelementptr inbounds %struct.BezTriple, ptr %118, i64 0, i32 8
  %122 = load i8, ptr %121, align 4, !tbaa !74
  %123 = or i8 %122, %120
  %124 = getelementptr inbounds %struct.BezTriple, ptr %118, i64 0, i32 9
  %125 = load i8, ptr %124, align 1, !tbaa !75
  %126 = or i8 %123, %125
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %113
  %130 = icmp eq ptr %114, null
  %131 = icmp eq ptr %114, %103
  %132 = or i1 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = icmp eq ptr %115, null
  %135 = select i1 %134, ptr %103, ptr %114
  %136 = select i1 %134, ptr %118, ptr null
  br label %137

137:                                              ; preds = %133, %113
  %138 = phi ptr [ %114, %113 ], [ %135, %133 ]
  %139 = phi ptr [ %115, %113 ], [ %136, %133 ]
  %140 = add nuw nsw i64 %116, 1
  %141 = icmp ult i64 %140, %111
  %142 = icmp eq i64 %140, %111
  br i1 %142, label %143, label %113, !llvm.loop !100

143:                                              ; preds = %137, %105
  %144 = phi ptr [ %101, %105 ], [ %138, %137 ]
  %145 = phi ptr [ %102, %105 ], [ %139, %137 ]
  %146 = phi i1 [ %108, %105 ], [ %141, %137 ]
  %147 = load ptr, ptr %103, align 8, !tbaa !101
  br label %148

148:                                              ; preds = %129, %143
  %149 = phi ptr [ %144, %143 ], [ null, %129 ]
  %150 = phi ptr [ %145, %143 ], [ null, %129 ]
  %151 = phi i1 [ %146, %143 ], [ %117, %129 ]
  %152 = phi ptr [ %147, %143 ], [ %103, %129 ]
  br i1 %151, label %153, label %100, !llvm.loop !102

153:                                              ; preds = %100, %148, %88
  %154 = phi ptr [ %83, %88 ], [ %101, %100 ], [ %149, %148 ]
  %155 = phi ptr [ %86, %88 ], [ %102, %100 ], [ %150, %148 ]
  call void @ED_mask_select_toggle_all(ptr noundef %11, i32 noundef 2) #7
  %156 = getelementptr inbounds %struct.MaskSpline, ptr %154, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !52
  %158 = ptrtoint ptr %155 to i64
  %159 = ptrtoint ptr %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 272
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds %struct.BezTriple, ptr %155, i64 0, i32 7
  %164 = load i8, ptr %163, align 1, !tbaa !71
  %165 = and i8 %164, -2
  store i8 %165, ptr %163, align 1, !tbaa !71
  %166 = getelementptr inbounds %struct.BezTriple, ptr %155, i64 0, i32 8
  %167 = load i8, ptr %166, align 4, !tbaa !74
  %168 = and i8 %167, -2
  store i8 %168, ptr %166, align 4, !tbaa !74
  %169 = getelementptr inbounds %struct.BezTriple, ptr %155, i64 0, i32 9
  %170 = load i8, ptr %169, align 1, !tbaa !75
  %171 = and i8 %170, -2
  store i8 %171, ptr %169, align 1, !tbaa !75
  %172 = getelementptr inbounds %struct.MaskSpline, ptr %154, i64 0, i32 2
  %173 = load i16, ptr %172, align 8, !tbaa !76
  %174 = and i16 %173, 2
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %153
  %177 = icmp sgt i32 %162, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.MaskSpline, ptr %154, i64 0, i32 5
  %180 = load i32, ptr %179, align 4, !tbaa !46
  %181 = add nsw i32 %180, -1
  %182 = icmp eq i32 %181, %162
  br i1 %182, label %199, label %183

183:                                              ; preds = %178, %153
  call void @BKE_mask_calc_tangent_polyline(ptr noundef %154, ptr noundef %155, ptr noundef nonnull %3) #7
  %184 = getelementptr inbounds [3 x [3 x float]], ptr %155, i64 0, i64 1
  %185 = load float, ptr %4, align 4, !tbaa !34
  %186 = load float, ptr %184, align 4, !tbaa !34
  %187 = fsub float %185, %186
  %188 = getelementptr inbounds float, ptr %4, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !34
  %190 = getelementptr inbounds [3 x [3 x float]], ptr %155, i64 0, i64 1, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !34
  %192 = fsub float %189, %191
  %193 = load float, ptr %3, align 4, !tbaa !34
  %194 = getelementptr inbounds float, ptr %3, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !34
  %196 = fmul float %192, %195
  %197 = call float @llvm.fmuladd.f32(float %193, float %187, float %196)
  %198 = fcmp uge float %197, 0.000000e+00
  br i1 %198, label %212, label %201

199:                                              ; preds = %178, %176
  %200 = icmp eq i32 %162, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %199, %183
  %202 = add nsw i32 %162, -1
  %203 = icmp slt i32 %162, 1
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.MaskSpline, ptr %154, i64 0, i32 5
  %206 = load i32, ptr %205, align 4, !tbaa !46
  %207 = add nsw i32 %206, %202
  %208 = load i16, ptr %172, align 8, !tbaa !76
  %209 = and i16 %208, 2
  %210 = icmp ne i16 %209, 0
  %211 = select i1 %210, i32 %207, i32 0
  br label %212

212:                                              ; preds = %204, %201, %199, %183
  %213 = phi i32 [ %202, %201 ], [ %162, %183 ], [ %211, %204 ], [ %162, %199 ]
  %214 = phi i1 [ true, %201 ], [ true, %183 ], [ %210, %204 ], [ true, %199 ]
  %215 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %216 = getelementptr inbounds %struct.MaskSpline, ptr %154, i64 0, i32 5
  %217 = load i32, ptr %216, align 4, !tbaa !46
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %219, 272
  %221 = call ptr %215(i64 noundef %220, ptr noundef nonnull @.str.15) #7
  %222 = load ptr, ptr %156, align 8, !tbaa !52
  %223 = add nsw i32 %213, 1
  %224 = sext i32 %223 to i64
  %225 = mul nsw i64 %224, 272
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %221, ptr align 8 %222, i64 %225, i1 false)
  %226 = sext i32 %213 to i64
  %227 = getelementptr %struct.MaskSplinePoint, ptr %221, i64 %226
  %228 = getelementptr inbounds %struct.MaskSplinePoint, ptr %227, i64 2
  %229 = load ptr, ptr %156, align 8, !tbaa !52
  %230 = getelementptr inbounds %struct.MaskSplinePoint, ptr %229, i64 %226
  %231 = getelementptr inbounds %struct.MaskSplinePoint, ptr %230, i64 1
  %232 = load i32, ptr %216, align 4, !tbaa !46
  %233 = xor i32 %213, -1
  %234 = add i32 %232, %233
  %235 = sext i32 %234 to i64
  %236 = mul nsw i64 %235, 272
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %228, ptr nonnull align 8 %231, i64 %236, i1 false)
  %237 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %238 = load ptr, ptr %156, align 8, !tbaa !52
  call void %237(ptr noundef %238) #7
  store ptr %221, ptr %156, align 8, !tbaa !52
  %239 = load i32, ptr %216, align 4, !tbaa !46
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %216, align 4, !tbaa !46
  %241 = getelementptr %struct.MaskSplinePoint, ptr %227, i64 1
  br i1 %214, label %243, label %242

242:                                              ; preds = %212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %241, ptr noundef nonnull align 8 dereferenceable(272) %227, i64 272, i1 false), !tbaa.struct !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %227, i8 0, i64 272, i1 false)
  br label %243

243:                                              ; preds = %212, %242
  %244 = phi ptr [ %227, %242 ], [ %241, %212 ]
  %245 = phi ptr [ %241, %242 ], [ %227, %212 ]
  store ptr %244, ptr %30, align 8, !tbaa !70
  call fastcc void @setup_vertex_point(ptr noundef %11, ptr noundef %154, ptr noundef %244, ptr noundef nonnull %4, float noundef 5.000000e-01, ptr noundef %245, i8 noundef zeroext 0)
  %246 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !105
  %248 = icmp eq ptr %247, null
  br i1 %248, label %260, label %249

249:                                              ; preds = %243
  %250 = load ptr, ptr %156, align 8, !tbaa !52
  %251 = ptrtoint ptr %244 to i64
  %252 = ptrtoint ptr %250 to i64
  %253 = sub i64 %251, %252
  %254 = sdiv exact i64 %253, 272
  %255 = trunc i64 %254 to i32
  %256 = load i32, ptr %216, align 4, !tbaa !46
  %257 = srem i32 %255, %256
  %258 = call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef nonnull %21, ptr noundef %154) #7
  %259 = add nsw i32 %258, %257
  call void @BKE_mask_layer_shape_changed_add(ptr noundef nonnull %21, i32 noundef %259, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %260

260:                                              ; preds = %243, %249
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %261

261:                                              ; preds = %77, %260, %66, %71
  %262 = phi i1 [ false, %71 ], [ false, %66 ], [ true, %260 ], [ true, %77 ]
  %263 = phi i32 [ 4, %71 ], [ 2, %66 ], [ undef, %260 ], [ undef, %77 ]
  br i1 %262, label %399, label %403

264:                                              ; preds = %33, %29, %25, %20
  %265 = call fastcc zeroext i8 @add_vertex_subdivide(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %4), !range !98
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %399

267:                                              ; preds = %264
  br i1 %24, label %268, label %274

268:                                              ; preds = %267
  %269 = call ptr @BKE_mask_layer_new(ptr noundef %11, ptr noundef nonnull @.str.16) #7
  %270 = getelementptr inbounds %struct.Mask, ptr %11, i64 0, i32 4
  %271 = load i32, ptr %270, align 4, !tbaa !106
  %272 = add nsw i32 %271, -1
  %273 = getelementptr inbounds %struct.Mask, ptr %11, i64 0, i32 3
  store i32 %272, ptr %273, align 8, !tbaa !108
  br label %349

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !99
  %277 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 5
  %278 = load ptr, ptr %277, align 8, !tbaa !69
  %279 = icmp eq ptr %278, null
  br i1 %279, label %295, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 6
  %282 = load ptr, ptr %281, align 8, !tbaa !70
  %283 = icmp eq ptr %282, null
  br i1 %283, label %295, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 7
  %286 = load i8, ptr %285, align 1, !tbaa !71
  %287 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 8
  %288 = load i8, ptr %287, align 4, !tbaa !74
  %289 = or i8 %288, %286
  %290 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 9
  %291 = load i8, ptr %290, align 1, !tbaa !75
  %292 = or i8 %289, %291
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %349

295:                                              ; preds = %284, %280, %274
  br label %296

296:                                              ; preds = %295, %344
  %297 = phi ptr [ %345, %344 ], [ null, %295 ]
  %298 = phi ptr [ %346, %344 ], [ null, %295 ]
  %299 = phi ptr [ %348, %344 ], [ %276, %295 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %349, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.MaskSpline, ptr %299, i64 0, i32 5
  %303 = load i32, ptr %302, align 4, !tbaa !46
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %339

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.MaskSpline, ptr %299, i64 0, i32 6
  %307 = zext nneg i32 %303 to i64
  %308 = load ptr, ptr %306, align 8, !tbaa !52
  br label %309

309:                                              ; preds = %333, %305
  %310 = phi ptr [ %297, %305 ], [ %334, %333 ]
  %311 = phi ptr [ %298, %305 ], [ %335, %333 ]
  %312 = phi i64 [ 0, %305 ], [ %336, %333 ]
  %313 = phi i1 [ true, %305 ], [ %337, %333 ]
  %314 = getelementptr inbounds %struct.MaskSplinePoint, ptr %308, i64 %312
  %315 = getelementptr inbounds %struct.BezTriple, ptr %314, i64 0, i32 7
  %316 = load i8, ptr %315, align 1, !tbaa !71
  %317 = getelementptr inbounds %struct.BezTriple, ptr %314, i64 0, i32 8
  %318 = load i8, ptr %317, align 4, !tbaa !74
  %319 = or i8 %318, %316
  %320 = getelementptr inbounds %struct.BezTriple, ptr %314, i64 0, i32 9
  %321 = load i8, ptr %320, align 1, !tbaa !75
  %322 = or i8 %319, %321
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %333, label %325

325:                                              ; preds = %309
  %326 = icmp eq ptr %310, null
  %327 = icmp eq ptr %310, %299
  %328 = or i1 %326, %327
  br i1 %328, label %329, label %344

329:                                              ; preds = %325
  %330 = icmp eq ptr %311, null
  %331 = select i1 %330, ptr %299, ptr %310
  %332 = select i1 %330, ptr %314, ptr null
  br label %333

333:                                              ; preds = %329, %309
  %334 = phi ptr [ %310, %309 ], [ %331, %329 ]
  %335 = phi ptr [ %311, %309 ], [ %332, %329 ]
  %336 = add nuw nsw i64 %312, 1
  %337 = icmp ult i64 %336, %307
  %338 = icmp eq i64 %336, %307
  br i1 %338, label %339, label %309, !llvm.loop !100

339:                                              ; preds = %333, %301
  %340 = phi ptr [ %297, %301 ], [ %334, %333 ]
  %341 = phi ptr [ %298, %301 ], [ %335, %333 ]
  %342 = phi i1 [ %304, %301 ], [ %337, %333 ]
  %343 = load ptr, ptr %299, align 8, !tbaa !101
  br label %344

344:                                              ; preds = %325, %339
  %345 = phi ptr [ %340, %339 ], [ null, %325 ]
  %346 = phi ptr [ %341, %339 ], [ null, %325 ]
  %347 = phi i1 [ %342, %339 ], [ %313, %325 ]
  %348 = phi ptr [ %343, %339 ], [ %299, %325 ]
  br i1 %347, label %349, label %296, !llvm.loop !102

349:                                              ; preds = %344, %296, %284, %268
  %350 = phi ptr [ null, %268 ], [ %278, %284 ], [ %297, %296 ], [ %345, %344 ]
  %351 = phi ptr [ %269, %268 ], [ %21, %284 ], [ %21, %296 ], [ %21, %344 ]
  call void @ED_mask_select_toggle_all(ptr noundef %11, i32 noundef 2) #7
  %352 = icmp eq ptr %350, null
  br i1 %352, label %353, label %355

353:                                              ; preds = %349
  %354 = call ptr @BKE_mask_spline_add(ptr noundef %351) #7
  br label %355

355:                                              ; preds = %349, %353
  %356 = phi ptr [ %354, %353 ], [ %350, %349 ]
  %357 = getelementptr inbounds %struct.MaskLayer, ptr %351, i64 0, i32 5
  store ptr %356, ptr %357, align 8, !tbaa !69
  %358 = getelementptr inbounds %struct.MaskSpline, ptr %356, i64 0, i32 6
  %359 = load ptr, ptr %358, align 8, !tbaa !52
  %360 = getelementptr inbounds %struct.MaskLayer, ptr %351, i64 0, i32 6
  store ptr %359, ptr %360, align 8, !tbaa !70
  %361 = load float, ptr %4, align 4, !tbaa !34
  %362 = getelementptr inbounds float, ptr %4, i64 1
  %363 = load float, ptr %362, align 4, !tbaa !34
  %364 = getelementptr inbounds %struct.BezTriple, ptr %359, i64 0, i32 6
  store i8 3, ptr %364, align 2, !tbaa !109
  %365 = getelementptr inbounds %struct.BezTriple, ptr %359, i64 0, i32 5
  store i8 3, ptr %365, align 1, !tbaa !110
  store float %361, ptr %359, align 4, !tbaa !34
  %366 = getelementptr inbounds float, ptr %359, i64 1
  store float %363, ptr %366, align 4, !tbaa !34
  %367 = getelementptr inbounds float, ptr %359, i64 2
  store float 0.000000e+00, ptr %367, align 4, !tbaa !34
  %368 = getelementptr inbounds [3 x [3 x float]], ptr %359, i64 0, i64 1
  store float %361, ptr %368, align 4, !tbaa !34
  %369 = getelementptr inbounds [3 x [3 x float]], ptr %359, i64 0, i64 1, i64 1
  store float %363, ptr %369, align 4, !tbaa !34
  %370 = getelementptr inbounds [3 x [3 x float]], ptr %359, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %370, align 4, !tbaa !34
  %371 = getelementptr inbounds [3 x [3 x float]], ptr %359, i64 0, i64 2
  store float %361, ptr %371, align 4, !tbaa !34
  %372 = getelementptr inbounds [3 x [3 x float]], ptr %359, i64 0, i64 2, i64 1
  store float %363, ptr %372, align 4, !tbaa !34
  %373 = getelementptr inbounds [3 x [3 x float]], ptr %359, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %373, align 4, !tbaa !34
  %374 = getelementptr inbounds %struct.MaskSplinePoint, ptr %359, i64 0, i32 4
  call void @BKE_mask_parent_init(ptr noundef nonnull %374) #7
  %375 = getelementptr inbounds %struct.MaskSpline, ptr %356, i64 0, i32 5
  %376 = load i32, ptr %375, align 4, !tbaa !46
  %377 = icmp eq i32 %376, 1
  br i1 %377, label %379, label %378

378:                                              ; preds = %355
  call void @BKE_mask_calc_handle_adjacent_interp(ptr noundef %356, ptr noundef nonnull %359, float noundef 5.000000e-01) #7
  br label %379

379:                                              ; preds = %355, %378
  %380 = getelementptr inbounds %struct.BezTriple, ptr %359, i64 0, i32 7
  %381 = load i8, ptr %380, align 1, !tbaa !71
  %382 = or i8 %381, 1
  store i8 %382, ptr %380, align 1, !tbaa !71
  %383 = getelementptr inbounds %struct.BezTriple, ptr %359, i64 0, i32 8
  %384 = load i8, ptr %383, align 4, !tbaa !74
  %385 = or i8 %384, 1
  store i8 %385, ptr %383, align 4, !tbaa !74
  %386 = getelementptr inbounds %struct.BezTriple, ptr %359, i64 0, i32 9
  %387 = load i8, ptr %386, align 1, !tbaa !75
  %388 = or i8 %387, 1
  store i8 %388, ptr %386, align 1, !tbaa !75
  call void @ED_mask_select_flush_all(ptr noundef %11) #7
  %389 = load ptr, ptr %358, align 8, !tbaa !52
  %390 = ptrtoint ptr %359 to i64
  %391 = ptrtoint ptr %389 to i64
  %392 = sub i64 %390, %391
  %393 = sdiv exact i64 %392, 272
  %394 = trunc i64 %393 to i32
  %395 = load i32, ptr %375, align 4, !tbaa !46
  %396 = srem i32 %394, %395
  %397 = call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef %351, ptr noundef %356) #7
  %398 = add nsw i32 %397, %396
  call void @BKE_mask_layer_shape_changed_add(ptr noundef %351, i32 noundef %398, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %11) #7
  br label %399

399:                                              ; preds = %379, %264, %261
  %400 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %401 = load i32, ptr %400, align 8, !tbaa !77
  %402 = sitofp i32 %401 to float
  call void @BKE_mask_update_display(ptr noundef %11, float noundef %402) #7
  br label %403

403:                                              ; preds = %261, %399
  %404 = phi i32 [ 4, %399 ], [ %263, %261 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %404
}

; Function Attrs: nounwind uwtable
define internal i32 @add_vertex_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #7
  %10 = call i32 @add_vertex_exec(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %10
}

declare i32 @ED_operator_mask(ptr noundef) #2

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+00, float noundef 1.000000e+00) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_feather_vertex_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store ptr null, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  call void @RNA_float_get_array(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #7
  %11 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, float noundef 9.000000e+00, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  store ptr %11, ptr %5, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, i32 noundef 9, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef null), !range !98
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %18 = load ptr, ptr %4, align 8, !tbaa !38
  %19 = load ptr, ptr %5, align 8, !tbaa !38
  %20 = load float, ptr %7, align 4, !tbaa !34
  %21 = call float @BKE_mask_point_weight(ptr noundef %18, ptr noundef %19, float noundef %20) #7
  %22 = load ptr, ptr %4, align 8, !tbaa !38
  %23 = load ptr, ptr %5, align 8, !tbaa !38
  %24 = load float, ptr %7, align 4, !tbaa !34
  %25 = call float @BKE_mask_point_weight_scalar(ptr noundef %22, ptr noundef %23, float noundef %24) #7
  %26 = fcmp une float %25, 0.000000e+00
  %27 = select i1 %26, float %25, float 1.000000e+00
  %28 = fdiv float %21, %27
  %29 = load ptr, ptr %5, align 8, !tbaa !38
  %30 = load float, ptr %7, align 4, !tbaa !34
  call void @BKE_mask_point_add_uw(ptr noundef %29, float noundef %30, float noundef %28) #7
  %31 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = sitofp i32 %32 to float
  call void @BKE_mask_update_display(ptr noundef %8, float noundef %33) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %8) #7
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #7
  br label %34

34:                                               ; preds = %13, %2, %16
  %35 = phi i32 [ 4, %16 ], [ 4, %2 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_feather_vertex_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #7
  %10 = call i32 @add_feather_vertex_exec(ptr noundef %0, ptr noundef %1), !range !111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %10
}

declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: nounwind uwtable
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
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.17, float noundef 1.000000e+02, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !66
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @primitive_circle_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @create_primitive_from_points(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__const.primitive_circle_add_exec.points, i8 noundef zeroext 1)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @primitive_add_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @ED_mask_get_size(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  call void @ED_mask_cursor_location_get(ptr noundef %7, ptr noundef nonnull %4) #7
  %8 = load i32, ptr %5, align 4, !tbaa !51
  %9 = sitofp i32 %8 to float
  %10 = load float, ptr %4, align 4, !tbaa !34
  %11 = fmul float %10, %9
  store float %11, ptr %4, align 4, !tbaa !34
  %12 = load i32, ptr %6, align 4, !tbaa !51
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, %13
  store float %16, ptr %14, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  call void @RNA_float_set_array(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #7
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = call i32 %22(ptr noundef %0, ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
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
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.17, float noundef 1.000000e+02, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !66
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @primitive_square_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @create_primitive_from_points(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__const.primitive_square_add_exec.points, i8 noundef zeroext 2)
  ret i32 4
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

declare ptr @ED_mask_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_calc_handle_point_auto(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mask_update_display(ptr noundef, float noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @add_vertex_subdivide(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr null, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %9 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 9, i8 noundef zeroext 0, ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef null), !range !98
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !38
  %13 = load ptr, ptr %5, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 272
  %20 = trunc i64 %19 to i32
  call void @ED_mask_select_toggle_all(ptr noundef %1, i32 noundef 2) #7
  %21 = load ptr, ptr %5, align 8, !tbaa !38
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %21, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 272
  %28 = call ptr %22(i64 noundef %27, ptr noundef nonnull @.str.15) #7
  %29 = getelementptr inbounds %struct.MaskSpline, ptr %21, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = shl i64 %19, 32
  %32 = add i64 %31, 4294967296
  %33 = ashr exact i64 %32, 32
  %34 = mul nsw i64 %33, 272
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %30, i64 %34, i1 false)
  %35 = shl i64 %19, 32
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds %struct.MaskSplinePoint, ptr %28, i64 %36
  %38 = getelementptr inbounds %struct.MaskSplinePoint, ptr %37, i64 2
  %39 = load ptr, ptr %29, align 8, !tbaa !52
  %40 = getelementptr inbounds %struct.MaskSplinePoint, ptr %39, i64 %36
  %41 = getelementptr inbounds %struct.MaskSplinePoint, ptr %40, i64 1
  %42 = load i32, ptr %23, align 4, !tbaa !46
  %43 = xor i32 %20, -1
  %44 = add i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, 272
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %38, ptr nonnull align 8 %41, i64 %46, i1 false)
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %48 = load ptr, ptr %29, align 8, !tbaa !52
  call void %47(ptr noundef %48) #7
  store ptr %28, ptr %29, align 8, !tbaa !52
  %49 = load i32, ptr %23, align 4, !tbaa !46
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %23, align 4, !tbaa !46
  %51 = load ptr, ptr %5, align 8, !tbaa !38
  %52 = getelementptr inbounds %struct.MaskSpline, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = shl i64 %19, 32
  %55 = add i64 %54, 4294967296
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds %struct.MaskSplinePoint, ptr %53, i64 %56
  %58 = load float, ptr %8, align 4, !tbaa !34
  call fastcc void @setup_vertex_point(ptr noundef %1, ptr noundef %51, ptr noundef %57, ptr noundef %2, float noundef %58, ptr noundef null, i8 noundef zeroext 1)
  %59 = load ptr, ptr %4, align 8, !tbaa !38
  %60 = load ptr, ptr %5, align 8, !tbaa !38
  %61 = call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef %59, ptr noundef %60) #7
  %62 = add i32 %20, 1
  %63 = add i32 %62, %61
  call void @BKE_mask_layer_shape_changed_add(ptr noundef %59, i32 noundef %63, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %64 = load ptr, ptr %5, align 8, !tbaa !38
  %65 = load ptr, ptr %4, align 8, !tbaa !38
  %66 = getelementptr inbounds %struct.MaskLayer, ptr %65, i64 0, i32 5
  store ptr %64, ptr %66, align 8, !tbaa !69
  %67 = getelementptr inbounds %struct.MaskLayer, ptr %65, i64 0, i32 6
  store ptr %57, ptr %67, align 8, !tbaa !70
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %1) #7
  br label %68

68:                                               ; preds = %3, %11
  %69 = phi i8 [ 1, %11 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i8 %69
}

declare void @ED_mask_select_toggle_all(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @setup_vertex_point(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, float noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 6
  store i8 3, ptr %11, align 2, !tbaa !109
  %12 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 5
  store i8 3, ptr %12, align 1, !tbaa !110
  %13 = icmp eq ptr %5, null
  br i1 %13, label %77, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 5
  %16 = load i8, ptr %15, align 1, !tbaa !113
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %18, label %73

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 6
  %20 = load i8, ptr %19, align 2, !tbaa !114
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, %2
  %26 = select i1 %25, i32 1, i32 -1
  %27 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = add i32 %28, -1
  %30 = icmp sgt i32 %28, 1
  br i1 %30, label %31, label %104

31:                                               ; preds = %22
  %32 = ptrtoint ptr %5 to i64
  %33 = ptrtoint ptr %24 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 272
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 2
  br label %38

38:                                               ; preds = %67, %31
  %39 = phi i32 [ 0, %31 ], [ %70, %67 ]
  %40 = phi i32 [ %36, %31 ], [ %68, %67 ]
  %41 = add nsw i32 %40, %26
  %42 = icmp ne i32 %41, -1
  %43 = icmp slt i32 %41, %28
  %44 = and i1 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %37, align 8, !tbaa !76
  %47 = and i16 %46, 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = select i1 %43, i32 %41, i32 0
  %51 = select i1 %42, i32 %50, i32 %29
  br label %52

52:                                               ; preds = %49, %38
  %53 = phi i32 [ %41, %38 ], [ %51, %49 ]
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.MaskSplinePoint, ptr %24, i64 %54
  %56 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 0, i32 5
  %57 = load i8, ptr %56, align 1, !tbaa !113
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 0, i32 6
  %61 = load i8, ptr %60, align 2, !tbaa !114
  %62 = icmp eq i8 %61, 2
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %52
  %64 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 0, i32 6
  %65 = load i8, ptr %64, align 2, !tbaa !114
  %66 = tail call i8 @llvm.umax.i8(i8 %65, i8 %57)
  store i8 %66, ptr %11, align 2, !tbaa !109
  store i8 %66, ptr %12, align 1, !tbaa !110
  br label %67

67:                                               ; preds = %59, %45, %63
  %68 = phi i32 [ %53, %63 ], [ %41, %45 ], [ %53, %59 ]
  %69 = phi i1 [ true, %63 ], [ true, %45 ], [ false, %59 ]
  %70 = add nuw nsw i32 %39, 1
  %71 = icmp eq i32 %70, %29
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %104, label %38, !llvm.loop !115

73:                                               ; preds = %18, %14
  %74 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 6
  %75 = load i8, ptr %74, align 2, !tbaa !114
  %76 = tail call i8 @llvm.umax.i8(i8 %75, i8 %16)
  br label %102

77:                                               ; preds = %7
  %78 = icmp eq i8 %6, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !46
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %104, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  %86 = ptrtoint ptr %2 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 272
  %90 = trunc i64 %89 to i32
  %91 = add nsw i32 %90, -1
  %92 = srem i32 %91, %81
  %93 = sext i32 %92 to i64
  %94 = add nsw i32 %90, 1
  %95 = srem i32 %94, %81
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.MaskSplinePoint, ptr %85, i64 %93, i32 0, i32 6
  %98 = load i8, ptr %97, align 2, !tbaa !114
  %99 = getelementptr inbounds %struct.MaskSplinePoint, ptr %85, i64 %96, i32 0, i32 5
  %100 = load i8, ptr %99, align 1, !tbaa !113
  %101 = tail call i8 @llvm.umax.i8(i8 %98, i8 %100)
  br label %102

102:                                              ; preds = %73, %83
  %103 = phi i8 [ %101, %83 ], [ %76, %73 ]
  store i8 %103, ptr %11, align 2, !tbaa !109
  store i8 %103, ptr %12, align 1, !tbaa !110
  br label %104

104:                                              ; preds = %67, %102, %22, %77, %79
  store float %8, ptr %2, align 4, !tbaa !34
  %105 = getelementptr inbounds float, ptr %2, i64 1
  store float %10, ptr %105, align 4, !tbaa !34
  %106 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %106, align 4, !tbaa !34
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  store float %8, ptr %107, align 4, !tbaa !34
  %108 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  store float %10, ptr %108, align 4, !tbaa !34
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %109, align 4, !tbaa !34
  %110 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  store float %8, ptr %110, align 4, !tbaa !34
  %111 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2, i64 1
  store float %10, ptr %111, align 4, !tbaa !34
  %112 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %112, align 4, !tbaa !34
  %113 = getelementptr inbounds %struct.MaskSplinePoint, ptr %2, i64 0, i32 4
  tail call void @BKE_mask_parent_init(ptr noundef nonnull %113) #7
  %114 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %115 = load i32, ptr %114, align 4, !tbaa !46
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %118, label %117

117:                                              ; preds = %104
  tail call void @BKE_mask_calc_handle_adjacent_interp(ptr noundef %1, ptr noundef nonnull %2, float noundef %4) #7
  br label %118

118:                                              ; preds = %117, %104
  %119 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 7
  %120 = load i8, ptr %119, align 1, !tbaa !71
  %121 = or i8 %120, 1
  store i8 %121, ptr %119, align 1, !tbaa !71
  %122 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 8
  %123 = load i8, ptr %122, align 4, !tbaa !74
  %124 = or i8 %123, 1
  store i8 %124, ptr %122, align 4, !tbaa !74
  %125 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 9
  %126 = load i8, ptr %125, align 1, !tbaa !75
  %127 = or i8 %126, 1
  store i8 %127, ptr %125, align 1, !tbaa !75
  tail call void @ED_mask_select_flush_all(ptr noundef %0) #7
  ret void
}

declare void @BKE_mask_layer_shape_changed_add(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BKE_mask_parent_init(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_calc_handle_adjacent_interp(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @ED_mask_select_flush_all(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_calc_tangent_polyline(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @BKE_mask_layer_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_add(ptr noundef) local_unnamed_addr #2

declare void @ED_mask_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_mask_point_find_nearest(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_mask_point_weight(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare float @BKE_mask_point_weight_scalar(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_mask_point_add_uw(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @create_primitive_from_points(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.17) #7
  %14 = fptosi float %13 to i32
  call void @ED_mask_get_size(ptr noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %15 = sitofp i32 %14 to float
  %16 = load i32, ptr %7, align 4, !tbaa !51
  %17 = load i32, ptr %8, align 4, !tbaa !51
  %18 = call i32 @llvm.smax.i32(i32 %17, i32 %16)
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %15, %19
  %21 = sitofp i32 %16 to float
  store float %21, ptr %6, align 4, !tbaa !34
  %22 = sitofp i32 %17 to float
  %23 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = load ptr, ptr %11, align 8, !tbaa !67
  call void @RNA_float_get_array(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #7
  %25 = load i32, ptr %7, align 4, !tbaa !51
  %26 = sitofp i32 %25 to float
  %27 = load float, ptr %5, align 4, !tbaa !34
  %28 = fdiv float %27, %26
  store float %28, ptr %5, align 4, !tbaa !34
  %29 = load i32, ptr %8, align 4, !tbaa !51
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fdiv float %32, %30
  store float %33, ptr %31, align 4, !tbaa !34
  call void @BKE_mask_coord_from_frame(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %34 = load float, ptr %5, align 4, !tbaa !34
  %35 = call float @llvm.fmuladd.f32(float %20, float -5.000000e-01, float %34)
  store float %35, ptr %5, align 4, !tbaa !34
  %36 = load float, ptr %31, align 4, !tbaa !34
  %37 = call float @llvm.fmuladd.f32(float %20, float -5.000000e-01, float %36)
  store float %37, ptr %31, align 4, !tbaa !34
  %38 = call ptr @ED_mask_layer_ensure(ptr noundef %0) #7
  %39 = call ptr @CTX_data_edit_mask(ptr noundef %0) #7
  call void @ED_mask_select_toggle_all(ptr noundef %39, i32 noundef 2) #7
  %40 = call ptr @BKE_mask_spline_add(ptr noundef %38) #7
  %41 = getelementptr inbounds %struct.MaskSpline, ptr %40, i64 0, i32 2
  store i16 3, ptr %41, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.MaskSpline, ptr %40, i64 0, i32 5
  store i32 4, ptr %42, align 4, !tbaa !46
  %43 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.MaskSpline, ptr %40, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = call ptr %43(ptr noundef %45, i64 noundef 1088, ptr noundef nonnull @__func__.create_primitive_from_points) #7
  store ptr %46, ptr %44, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.MaskLayer, ptr %38, i64 0, i32 5
  store ptr %40, ptr %47, align 8, !tbaa !69
  %48 = getelementptr inbounds %struct.MaskLayer, ptr %38, i64 0, i32 6
  store ptr null, ptr %48, align 8, !tbaa !70
  br label %49

49:                                               ; preds = %4, %49
  %50 = phi i64 [ 0, %4 ], [ %67, %49 ]
  %51 = load ptr, ptr %44, align 8, !tbaa !52
  %52 = getelementptr inbounds %struct.MaskSplinePoint, ptr %51, i64 %50
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %52, i64 0, i64 1
  %54 = getelementptr inbounds [2 x float], ptr %2, i64 %50
  %55 = load float, ptr %54, align 4, !tbaa !34
  store float %55, ptr %53, align 4, !tbaa !34
  %56 = getelementptr inbounds float, ptr %54, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %52, i64 0, i64 1, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fmul float %20, %55
  store float %59, ptr %53, align 4, !tbaa !34
  %60 = fmul float %20, %57
  store float %60, ptr %58, align 4, !tbaa !34
  %61 = load float, ptr %5, align 4, !tbaa !34
  %62 = fadd float %59, %61
  store float %62, ptr %53, align 4, !tbaa !34
  %63 = load float, ptr %31, align 4, !tbaa !34
  %64 = fadd float %60, %63
  store float %64, ptr %58, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 0, i32 5
  store i8 %3, ptr %65, align 1, !tbaa !113
  %66 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 0, i32 6
  store i8 %3, ptr %66, align 2, !tbaa !114
  call void @BKE_mask_point_select_set(ptr noundef %52, i8 noundef zeroext 1) #7
  %67 = add nuw nsw i64 %50, 1
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %69, label %49, !llvm.loop !116

69:                                               ; preds = %49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %39) #7
  %70 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !77
  %72 = sitofp i32 %71 to float
  call void @BKE_mask_update_display(ptr noundef %39, float noundef %72) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_from_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_mask_layer_ensure(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_point_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_mask_cursor_location_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !36, i64 143}
!41 = !{!"MaskLayer", !39, i64 0, !39, i64 8, !36, i64 16, !42, i64 80, !42, i64 96, !39, i64 112, !39, i64 120, !35, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !49, i64 20}
!47 = !{!"MaskSpline", !39, i64 0, !39, i64 8, !48, i64 16, !36, i64 18, !36, i64 19, !49, i64 20, !39, i64 24, !50, i64 32, !39, i64 216}
!48 = !{!"short", !36, i64 0}
!49 = !{!"int", !36, i64 0}
!50 = !{!"MaskParent", !49, i64 0, !49, i64 4, !39, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!51 = !{!49, !49, i64 0}
!52 = !{!47, !39, i64 24}
!53 = !{!47, !39, i64 216}
!54 = distinct !{!54, !44, !45}
!55 = distinct !{!55, !44, !45}
!56 = distinct !{!56, !44, !45}
!57 = !{!58, !39, i64 0}
!58 = !{!"wmOperatorType", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !42, i64 112, !39, i64 128, !39, i64 136, !39, i64 144, !59, i64 152, !48, i64 184}
!59 = !{!"ExtensionRNA", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!60 = !{!58, !39, i64 24}
!61 = !{!58, !39, i64 8}
!62 = !{!58, !39, i64 32}
!63 = !{!58, !39, i64 48}
!64 = !{!58, !39, i64 72}
!65 = !{!58, !48, i64 184}
!66 = !{!58, !39, i64 88}
!67 = !{!68, !39, i64 112}
!68 = !{!"wmOperator", !39, i64 0, !39, i64 8, !36, i64 16, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 144, !39, i64 152, !48, i64 160, !36, i64 162}
!69 = !{!41, !39, i64 112}
!70 = !{!41, !39, i64 120}
!71 = !{!72, !36, i64 51}
!72 = !{!"MaskSplinePoint", !73, i64 0, !49, i64 72, !49, i64 76, !39, i64 80, !50, i64 88}
!73 = !{!"BezTriple", !36, i64 0, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !35, i64 56, !35, i64 60, !35, i64 64, !36, i64 68}
!74 = !{!72, !36, i64 52}
!75 = !{!72, !36, i64 53}
!76 = !{!47, !48, i64 16}
!77 = !{!78, !49, i64 680}
!78 = !{!"Scene", !79, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !42, i64 152, !39, i64 168, !39, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !49, i64 232, !49, i64 236, !49, i64 240, !48, i64 244, !36, i64 246, !36, i64 247, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !80, i64 280, !89, i64 4264, !42, i64 4296, !42, i64 4312, !39, i64 4328, !39, i64 4336, !39, i64 4344, !39, i64 4352, !39, i64 4360, !39, i64 4368, !48, i64 4376, !48, i64 4378, !49, i64 4380, !42, i64 4384, !90, i64 4400, !91, i64 4416, !94, i64 4600, !39, i64 4608, !95, i64 4616, !39, i64 4640, !96, i64 4648, !96, i64 4656, !82, i64 4664, !83, i64 4824, !97, i64 4888, !39, i64 4952}
!79 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !48, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !39, i64 112}
!80 = !{!"RenderData", !81, i64 0, !39, i64 248, !39, i64 256, !84, i64 264, !85, i64 328, !49, i64 400, !49, i64 404, !49, i64 408, !35, i64 412, !49, i64 416, !49, i64 420, !49, i64 424, !49, i64 428, !48, i64 432, !48, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !49, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !49, i64 484, !49, i64 488, !48, i64 492, !48, i64 494, !49, i64 496, !49, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !36, i64 514, !36, i64 515, !49, i64 516, !49, i64 520, !49, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !86, i64 544, !86, i64 560, !87, i64 576, !42, i64 592, !48, i64 608, !48, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !49, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !35, i64 660, !35, i64 664, !48, i64 668, !48, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !49, i64 1704, !48, i64 1708, !48, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !49, i64 2520, !48, i64 2524, !48, i64 2526, !35, i64 2528, !35, i64 2532, !48, i64 2536, !48, i64 2538, !35, i64 2540, !48, i64 2544, !48, i64 2546, !49, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !35, i64 2560, !35, i64 2564, !39, i64 2568, !49, i64 2576, !35, i64 2580, !36, i64 2584, !88, i64 2616, !49, i64 3976, !49, i64 3980}
!81 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !48, i64 8, !48, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !82, i64 24, !83, i64 184}
!82 = !{!"ColorManagedViewSettings", !49, i64 0, !49, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !39, i64 144, !39, i64 152}
!83 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!84 = !{!"QuicktimeCodecSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !48, i64 48, !48, i64 50, !49, i64 52, !49, i64 56, !49, i64 60}
!85 = !{!"FFMpegCodecData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !35, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !39, i64 64}
!86 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!87 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!88 = !{!"BakeData", !81, i64 0, !36, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!89 = !{!"AudioData", !49, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !49, i64 16, !48, i64 20, !48, i64 22, !35, i64 24, !35, i64 28}
!90 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!91 = !{!"GameData", !90, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !36, i64 34, !92, i64 40, !48, i64 64, !48, i64 66, !35, i64 68, !93, i64 72, !35, i64 128, !35, i64 132, !49, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!92 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !35, i64 8, !35, i64 12, !39, i64 16}
!93 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !49, i64 40, !35, i64 44, !35, i64 48, !48, i64 52, !48, i64 54}
!94 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !48, i64 6}
!95 = !{!"PhysicsSettings", !36, i64 0, !49, i64 12, !49, i64 16, !49, i64 20}
!96 = !{!"long", !36, i64 0}
!97 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!98 = !{i8 0, i8 2}
!99 = !{!41, !39, i64 80}
!100 = distinct !{!100, !44, !45}
!101 = !{!47, !39, i64 0}
!102 = distinct !{!102, !44, !45}
!103 = !{i64 0, i64 36, !104, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 1, !104, i64 49, i64 1, !104, i64 50, i64 1, !104, i64 51, i64 1, !104, i64 52, i64 1, !104, i64 53, i64 1, !104, i64 54, i64 1, !104, i64 55, i64 1, !104, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !104, i64 72, i64 4, !51, i64 76, i64 4, !51, i64 80, i64 8, !38, i64 88, i64 4, !51, i64 92, i64 4, !51, i64 96, i64 8, !38, i64 104, i64 64, !104, i64 168, i64 64, !104, i64 232, i64 8, !104, i64 240, i64 32, !104}
!104 = !{!36, !36, i64 0}
!105 = !{!41, !39, i64 96}
!106 = !{!107, !49, i64 148}
!107 = !{!"Mask", !79, i64 0, !39, i64 120, !42, i64 128, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164}
!108 = !{!107, !49, i64 144}
!109 = !{!73, !36, i64 50}
!110 = !{!73, !36, i64 49}
!111 = !{i32 2, i32 5}
!112 = !{!68, !39, i64 88}
!113 = !{!72, !36, i64 49}
!114 = !{!72, !36, i64 50}
!115 = distinct !{!115, !44, !45}
!116 = distinct !{!116, !44, !45}
