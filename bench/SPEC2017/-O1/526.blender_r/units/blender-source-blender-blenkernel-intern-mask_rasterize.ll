; ModuleID = 'blender/source/blender/blenkernel/intern/mask_rasterize.c'
source_filename = "blender/source/blender/blenkernel/intern/mask_rasterize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rctf = type { float, float, float, float }
%struct.MaskRasterHandle = type { ptr, i32, %struct.rctf }
%struct.MaskRasterLayer = type { i32, ptr, ptr, %struct.rctf, ptr, [2 x float], i32, i32, float, i8, i8, i8 }
%struct.ScanFillContext = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i16, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.ScanFillVert = type { ptr, ptr, %union.anon, [3 x float], [2 x float], i32, i16, i8, i8 }
%union.anon = type { ptr }
%struct.ScanFillEdge = type { ptr, ptr, ptr, ptr, i16, i8, %union.anon.0 }
%union.anon.0 = type { i8 }
%struct.MaskRasterSplineInfo = type { i32, i32, i32, i32, i8 }
%struct.ScanFillFace = type { ptr, ptr, ptr, ptr, ptr }
%struct.LinkNode = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"MaskRasterHandle\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__const.BKE_maskrasterize_handle_init.default_bounds = private unnamed_addr constant %struct.rctf { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00 }, align 4
@__const.BKE_maskrasterize_handle_init.zvec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"MaskRasterLayer\00", align 1
@__func__.BKE_maskrasterize_handle_init = private unnamed_addr constant [30 x i8] c"BKE_maskrasterize_handle_init\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"diff_feather_points_flip\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"maskrast_face_coords\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"maskrast_face_index\00", align 1
@__func__.layer_bucket_init = private unnamed_addr constant [18 x i8] c"layer_bucket_init\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_maskrasterize_handle_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 32, ptr noundef nonnull @.str) #8
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_maskrasterize_handle_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !43
  br label %7

7:                                                ; preds = %5, %48
  %8 = phi i32 [ %49, %48 ], [ 0, %5 ]
  %9 = phi ptr [ %50, %48 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.MaskRasterLayer, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #8
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.MaskRasterLayer, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #8
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.MaskRasterLayer, ptr %9, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.MaskRasterLayer, ptr %9, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.MaskRasterLayer, ptr %9, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !49
  %30 = mul i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = zext i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %42
  %35 = phi i64 [ 0, %32 ], [ %43, %42 ]
  %36 = load ptr, ptr %22, align 8, !tbaa !47
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %38) #8
  br label %42

42:                                               ; preds = %40, %34
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, %33
  br i1 %44, label %45, label %34, !llvm.loop !50

45:                                               ; preds = %42, %25
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %47 = load ptr, ptr %22, align 8, !tbaa !47
  tail call void %46(ptr noundef %47) #8
  br label %48

48:                                               ; preds = %21, %45
  %49 = add nuw i32 %8, 1
  %50 = getelementptr inbounds %struct.MaskRasterLayer, ptr %9, i64 1
  %51 = icmp eq i32 %49, %3
  br i1 %51, label %52, label %7, !llvm.loop !53

52:                                               ; preds = %48, %1
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %54 = load ptr, ptr %0, align 8, !tbaa !43
  tail call void %53(ptr noundef %54) #8
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %55(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_maskrasterize_handle_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.rctf, align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.ScanFillContext, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca %struct.rctf, align 4
  %18 = alloca %struct.ListBase, align 8
  %19 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) @__const.BKE_maskrasterize_handle_init.default_bounds, i64 16, i1 false)
  %20 = tail call i32 @llvm.smin.i32(i32 %2, i32 %3)
  %21 = sitofp i32 %20 to float
  %22 = fdiv float 1.000000e+00, %21
  %23 = icmp eq i8 %4, 0
  %24 = icmp sle i32 %2, %3
  %25 = or i1 %24, %23
  %26 = sitofp i32 %3 to float
  %27 = sitofp i32 %2 to float
  %28 = fdiv float %26, %27
  %29 = select i1 %25, float 1.000000e+00, float %28
  %30 = icmp sge i32 %2, %3
  %31 = or i1 %30, %23
  %32 = fdiv float %27, %26
  %33 = select i1 %31, float 1.000000e+00, float %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.BKE_maskrasterize_handle_init.zvec, i64 12, i1 false)
  %34 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %35 = tail call i32 @BLI_countlist(ptr noundef nonnull %34) #8
  %36 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 1
  store i32 %35, ptr %36, align 8, !tbaa !38
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %38 = zext i32 %35 to i64
  %39 = mul nuw nsw i64 %38, 72
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.1) #8
  store ptr %40, ptr %0, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 2
  tail call void @BLI_rctf_init_minmax(ptr noundef nonnull %41) #8
  %42 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #8
  %43 = load ptr, ptr %34, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %1284, label %45

45:                                               ; preds = %7
  %46 = icmp eq i8 %6, 0
  %47 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %48 = getelementptr inbounds %struct.ScanFillContext, ptr %11, i64 0, i32 3
  %49 = icmp eq i32 %2, %3
  %50 = or i1 %49, %23
  %51 = icmp eq i8 %5, 1
  %52 = fmul float %22, %22
  %53 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %54 = getelementptr inbounds float, ptr %14, i64 1
  %55 = getelementptr inbounds float, ptr %16, i64 1
  %56 = fmul float %22, 2.000000e+00
  %57 = getelementptr inbounds float, ptr %16, i64 1
  %58 = getelementptr inbounds float, ptr %16, i64 1
  %59 = getelementptr inbounds float, ptr %14, i64 1
  %60 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  %61 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %62 = getelementptr inbounds float, ptr %15, i64 1
  %63 = getelementptr inbounds %struct.ScanFillContext, ptr %11, i64 0, i32 1
  %64 = getelementptr inbounds %struct.ScanFillContext, ptr %11, i64 0, i32 2
  %65 = getelementptr inbounds %struct.ScanFillContext, ptr %11, i64 0, i32 1
  %66 = getelementptr inbounds float, ptr %8, i64 1
  br label %67

67:                                               ; preds = %45, %1279
  %68 = phi ptr [ %43, %45 ], [ %1282, %1279 ]
  %69 = phi i32 [ 0, %45 ], [ %1281, %1279 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #8
  %70 = getelementptr inbounds %struct.MaskLayer, ptr %68, i64 0, i32 13
  %71 = load i8, ptr %70, align 1, !tbaa !54
  %72 = and i8 %71, 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load i32, ptr %36, align 8, !tbaa !38
  %76 = add i32 %75, -1
  store i32 %76, ptr %36, align 8, !tbaa !38
  %77 = add i32 %69, -1
  br label %1279

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.MaskLayer, ptr %68, i64 0, i32 3
  %80 = call i32 @BLI_countlist(ptr noundef nonnull %79) #8
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %82 = zext i32 %80 to i64
  %83 = mul nuw nsw i64 %82, 20
  %84 = call ptr %81(i64 noundef %83, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #8
  call void @BLI_scanfill_begin_arena(ptr noundef nonnull %11, ptr noundef %42) #8
  %85 = load ptr, ptr %79, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %656, label %87

87:                                               ; preds = %78, %653
  %88 = phi ptr [ %654, %653 ], [ %85, %78 ]
  %89 = phi i32 [ %645, %653 ], [ 0, %78 ]
  %90 = phi i32 [ %644, %653 ], [ 0, %78 ]
  %91 = phi i32 [ %643, %653 ], [ 0, %78 ]
  %92 = phi i32 [ %642, %653 ], [ 0, %78 ]
  %93 = getelementptr inbounds %struct.MaskSpline, ptr %88, i64 0, i32 2
  %94 = load i16, ptr %93, align 8, !tbaa !57
  %95 = trunc i16 %94 to i8
  %96 = lshr i8 %95, 1
  %97 = and i8 %96, 1
  %98 = and i16 %94, 4
  %99 = icmp eq i16 %98, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  %100 = call i32 @BKE_mask_spline_resolution(ptr noundef nonnull %88, i32 noundef %2, i32 noundef %3) #8
  %101 = lshr i32 %100, 2
  %102 = call i32 @BKE_mask_spline_feather_resolution(ptr noundef nonnull %88, i32 noundef %2, i32 noundef %3) #8
  %103 = lshr i32 %102, 2
  %104 = call i32 @llvm.umax.i32(i32 %101, i32 %103)
  %105 = call i32 @llvm.umin.i32(i32 %104, i32 512)
  %106 = call i32 @llvm.umax.i32(i32 %105, i32 4)
  %107 = call ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef nonnull %88, ptr noundef nonnull %12, i32 noundef %106) #8
  br i1 %46, label %110, label %108

108:                                              ; preds = %87
  %109 = call ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef nonnull %88, ptr noundef nonnull %13, i32 noundef %106, i8 noundef zeroext 0) #8
  br label %111

110:                                              ; preds = %87
  store i32 0, ptr %13, align 4, !tbaa !61
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi ptr [ %109, %108 ], [ null, %110 ]
  %113 = load i32, ptr %12, align 4, !tbaa !61
  %114 = icmp ugt i32 %113, 3
  br i1 %114, label %115, label %640

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  store float 0.000000e+00, ptr %47, align 4, !tbaa !62
  %116 = load i16, ptr %48, align 8, !tbaa !63
  %117 = add i16 %116, 1
  store i16 %117, ptr %48, align 8, !tbaa !63
  br i1 %50, label %157, label %118

118:                                              ; preds = %115
  br i1 %30, label %123, label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %13, align 4, !tbaa !61
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, ptr null, ptr %112
  br label %129

123:                                              ; preds = %118
  %124 = getelementptr inbounds [2 x float], ptr %107, i64 0, i64 1
  %125 = load i32, ptr %13, align 4, !tbaa !61
  %126 = icmp eq i32 %125, 0
  %127 = getelementptr inbounds [2 x float], ptr %112, i64 0, i64 1
  %128 = select i1 %126, ptr null, ptr %127
  br label %129

129:                                              ; preds = %123, %119
  %130 = phi ptr [ %107, %119 ], [ %124, %123 ]
  %131 = phi ptr [ %122, %119 ], [ %128, %123 ]
  %132 = phi float [ %32, %119 ], [ %28, %123 ]
  %133 = call i32 @llvm.umax.i32(i32 %113, i32 1)
  br label %134

134:                                              ; preds = %129, %134
  %135 = phi i32 [ 0, %129 ], [ %141, %134 ]
  %136 = phi ptr [ %130, %129 ], [ %142, %134 ]
  %137 = load float, ptr %136, align 4, !tbaa !62
  %138 = fadd float %137, -5.000000e-01
  %139 = fdiv float %138, %132
  %140 = fadd float %139, 5.000000e-01
  store float %140, ptr %136, align 4, !tbaa !62
  %141 = add nuw i32 %135, 1
  %142 = getelementptr inbounds float, ptr %136, i64 2
  %143 = icmp eq i32 %141, %133
  br i1 %143, label %144, label %134, !llvm.loop !65

144:                                              ; preds = %134
  %145 = load i32, ptr %13, align 4, !tbaa !61
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %144, %147
  %148 = phi i32 [ %154, %147 ], [ 0, %144 ]
  %149 = phi ptr [ %155, %147 ], [ %131, %144 ]
  %150 = load float, ptr %149, align 4, !tbaa !62
  %151 = fadd float %150, -5.000000e-01
  %152 = fdiv float %151, %132
  %153 = fadd float %152, 5.000000e-01
  store float %153, ptr %149, align 4, !tbaa !62
  %154 = add nuw i32 %148, 1
  %155 = getelementptr inbounds float, ptr %149, i64 2
  %156 = icmp eq i32 %154, %145
  br i1 %156, label %157, label %147, !llvm.loop !66

157:                                              ; preds = %147, %144, %115
  br i1 %51, label %158, label %334

158:                                              ; preds = %157
  br i1 %46, label %159, label %244

159:                                              ; preds = %158
  store i32 %113, ptr %13, align 4, !tbaa !61
  %160 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %161 = zext i32 %113 to i64
  %162 = shl nuw nsw i64 %161, 3
  %163 = call ptr %160(i64 noundef %162, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #8
  %164 = load i32, ptr %12, align 4, !tbaa !61
  %165 = add i32 %164, -2
  %166 = add i32 %164, -1
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds [2 x float], ptr %107, i64 %167
  %169 = zext i32 %166 to i64
  %170 = getelementptr inbounds [2 x float], ptr %107, i64 %169
  %171 = load float, ptr %168, align 4, !tbaa !62
  %172 = load float, ptr %170, align 4, !tbaa !62
  %173 = fsub float %171, %172
  %174 = getelementptr inbounds float, ptr %168, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !62
  %176 = getelementptr inbounds float, ptr %170, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !62
  %178 = fsub float %175, %177
  %179 = fmul float %178, %178
  %180 = call float @llvm.fmuladd.f32(float %173, float %173, float %179)
  %181 = fcmp ogt float %180, 0x38AA95A5C0000000
  br i1 %181, label %182, label %187

182:                                              ; preds = %159
  %183 = call float @sqrtf(float noundef %180) #8
  %184 = fdiv float 1.000000e+00, %183
  %185 = fmul float %173, %184
  %186 = fmul float %178, %184
  br label %187

187:                                              ; preds = %182, %159
  %188 = phi float [ %185, %182 ], [ 0.000000e+00, %159 ]
  %189 = phi float [ %186, %182 ], [ 0.000000e+00, %159 ]
  %190 = icmp eq i32 %164, 0
  br i1 %190, label %334, label %191

191:                                              ; preds = %187
  %192 = zext i32 %164 to i64
  br label %193

193:                                              ; preds = %230, %191
  %194 = phi i64 [ 0, %191 ], [ %241, %230 ]
  %195 = phi i32 [ %166, %191 ], [ %242, %230 ]
  %196 = phi float [ %188, %191 ], [ %218, %230 ]
  %197 = phi float [ %189, %191 ], [ %219, %230 ]
  %198 = zext i32 %195 to i64
  %199 = getelementptr inbounds [2 x float], ptr %107, i64 %198
  %200 = getelementptr inbounds [2 x float], ptr %107, i64 %194
  %201 = load float, ptr %199, align 4, !tbaa !62
  %202 = load float, ptr %200, align 4, !tbaa !62
  %203 = fsub float %201, %202
  %204 = getelementptr inbounds float, ptr %199, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !62
  %206 = getelementptr inbounds float, ptr %200, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !62
  %208 = fsub float %205, %207
  %209 = fmul float %208, %208
  %210 = call float @llvm.fmuladd.f32(float %203, float %203, float %209)
  %211 = fcmp ogt float %210, 0x38AA95A5C0000000
  br i1 %211, label %212, label %217

212:                                              ; preds = %193
  %213 = call float @sqrtf(float noundef %210) #8
  %214 = fdiv float 1.000000e+00, %213
  %215 = fmul float %203, %214
  %216 = fmul float %208, %214
  br label %217

217:                                              ; preds = %212, %193
  %218 = phi float [ %215, %212 ], [ 0.000000e+00, %193 ]
  %219 = phi float [ %216, %212 ], [ 0.000000e+00, %193 ]
  %220 = fadd float %196, %218
  %221 = fadd float %197, %219
  %222 = fmul float %221, %221
  %223 = call float @llvm.fmuladd.f32(float %220, float %220, float %222)
  %224 = fcmp ogt float %223, 0x38AA95A5C0000000
  br i1 %224, label %225, label %230

225:                                              ; preds = %217
  %226 = call float @sqrtf(float noundef %223) #8
  %227 = fdiv float 1.000000e+00, %226
  %228 = fmul float %220, %227
  %229 = fmul float %221, %227
  br label %230

230:                                              ; preds = %225, %217
  %231 = phi float [ %228, %225 ], [ 0.000000e+00, %217 ]
  %232 = phi float [ %229, %225 ], [ 0.000000e+00, %217 ]
  %233 = load float, ptr %200, align 4, !tbaa !62
  %234 = call float @llvm.fmuladd.f32(float %232, float %22, float %233)
  %235 = getelementptr inbounds [2 x float], ptr %163, i64 %194
  store float %234, ptr %235, align 4, !tbaa !62
  %236 = getelementptr inbounds [2 x float], ptr %107, i64 %194, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !62
  %238 = fneg float %231
  %239 = call float @llvm.fmuladd.f32(float %238, float %22, float %237)
  %240 = getelementptr inbounds [2 x float], ptr %163, i64 %194, i64 1
  store float %239, ptr %240, align 4, !tbaa !62
  %241 = add nuw nsw i64 %194, 1
  %242 = trunc i64 %194 to i32
  %243 = icmp eq i64 %241, %192
  br i1 %243, label %334, label %193, !llvm.loop !67

244:                                              ; preds = %158
  %245 = add i32 %113, -2
  %246 = add i32 %113, -1
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds [2 x float], ptr %107, i64 %247
  %249 = zext i32 %246 to i64
  %250 = getelementptr inbounds [2 x float], ptr %107, i64 %249
  %251 = load float, ptr %248, align 4, !tbaa !62
  %252 = load float, ptr %250, align 4, !tbaa !62
  %253 = fsub float %251, %252
  %254 = getelementptr inbounds float, ptr %248, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !62
  %256 = getelementptr inbounds float, ptr %250, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !62
  %258 = fsub float %255, %257
  %259 = fmul float %258, %258
  %260 = call float @llvm.fmuladd.f32(float %253, float %253, float %259)
  %261 = fcmp ogt float %260, 0x38AA95A5C0000000
  br i1 %261, label %262, label %267

262:                                              ; preds = %244
  %263 = call float @sqrtf(float noundef %260) #8
  %264 = fdiv float 1.000000e+00, %263
  %265 = fmul float %253, %264
  %266 = fmul float %258, %264
  br label %267

267:                                              ; preds = %244, %262
  %268 = phi float [ %265, %262 ], [ 0.000000e+00, %244 ]
  %269 = phi float [ %266, %262 ], [ 0.000000e+00, %244 ]
  %270 = zext i32 %113 to i64
  br label %271

271:                                              ; preds = %330, %267
  %272 = phi i64 [ 0, %267 ], [ %331, %330 ]
  %273 = phi i32 [ %246, %267 ], [ %332, %330 ]
  %274 = phi float [ %268, %267 ], [ %296, %330 ]
  %275 = phi float [ %269, %267 ], [ %297, %330 ]
  %276 = zext i32 %273 to i64
  %277 = getelementptr inbounds [2 x float], ptr %107, i64 %276
  %278 = getelementptr inbounds [2 x float], ptr %107, i64 %272
  %279 = load float, ptr %277, align 4, !tbaa !62
  %280 = load float, ptr %278, align 4, !tbaa !62
  %281 = fsub float %279, %280
  %282 = getelementptr inbounds float, ptr %277, i64 1
  %283 = load float, ptr %282, align 4, !tbaa !62
  %284 = getelementptr inbounds float, ptr %278, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !62
  %286 = fsub float %283, %285
  %287 = fmul float %286, %286
  %288 = call float @llvm.fmuladd.f32(float %281, float %281, float %287)
  %289 = fcmp ogt float %288, 0x38AA95A5C0000000
  br i1 %289, label %290, label %295

290:                                              ; preds = %271
  %291 = call float @sqrtf(float noundef %288) #8
  %292 = fdiv float 1.000000e+00, %291
  %293 = fmul float %281, %292
  %294 = fmul float %286, %292
  br label %295

295:                                              ; preds = %290, %271
  %296 = phi float [ %293, %290 ], [ 0.000000e+00, %271 ]
  %297 = phi float [ %294, %290 ], [ 0.000000e+00, %271 ]
  %298 = getelementptr inbounds [2 x float], ptr %112, i64 %272
  %299 = load float, ptr %278, align 4, !tbaa !62
  %300 = load float, ptr %298, align 4, !tbaa !62
  %301 = fsub float %299, %300
  %302 = load float, ptr %284, align 4, !tbaa !62
  %303 = getelementptr inbounds float, ptr %298, i64 1
  %304 = load float, ptr %303, align 4, !tbaa !62
  %305 = fsub float %302, %304
  %306 = fmul float %305, %305
  %307 = call float @llvm.fmuladd.f32(float %301, float %301, float %306)
  %308 = fcmp olt float %307, %52
  br i1 %308, label %309, label %330

309:                                              ; preds = %295
  %310 = fadd float %274, %296
  %311 = fadd float %275, %297
  %312 = fmul float %311, %311
  %313 = call float @llvm.fmuladd.f32(float %310, float %310, float %312)
  %314 = fcmp ogt float %313, 0x38AA95A5C0000000
  br i1 %314, label %315, label %320

315:                                              ; preds = %309
  %316 = call float @sqrtf(float noundef %313) #8
  %317 = fdiv float 1.000000e+00, %316
  %318 = fmul float %310, %317
  %319 = fmul float %311, %317
  br label %320

320:                                              ; preds = %315, %309
  %321 = phi float [ %318, %315 ], [ 0.000000e+00, %309 ]
  %322 = phi float [ %319, %315 ], [ 0.000000e+00, %309 ]
  %323 = load float, ptr %278, align 4, !tbaa !62
  %324 = call float @llvm.fmuladd.f32(float %322, float %22, float %323)
  store float %324, ptr %298, align 4, !tbaa !62
  %325 = getelementptr inbounds [2 x float], ptr %107, i64 %272, i64 1
  %326 = load float, ptr %325, align 4, !tbaa !62
  %327 = fneg float %321
  %328 = call float @llvm.fmuladd.f32(float %327, float %22, float %326)
  %329 = getelementptr inbounds [2 x float], ptr %112, i64 %272, i64 1
  store float %328, ptr %329, align 4, !tbaa !62
  br label %330

330:                                              ; preds = %320, %295
  %331 = add nuw nsw i64 %272, 1
  %332 = trunc i64 %272 to i32
  %333 = icmp eq i64 %331, %270
  br i1 %333, label %334, label %271, !llvm.loop !67

334:                                              ; preds = %330, %230, %187, %157
  %335 = phi ptr [ %112, %157 ], [ %163, %187 ], [ %163, %230 ], [ %112, %330 ]
  br i1 %99, label %336, label %415

336:                                              ; preds = %334
  %337 = load i16, ptr %93, align 8, !tbaa !57
  %338 = and i16 %337, 8
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  %341 = load i32, ptr %13, align 4, !tbaa !61
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %88, ptr noundef %335, i32 noundef %341) #8
  br label %342

342:                                              ; preds = %340, %336
  %343 = load float, ptr %107, align 4, !tbaa !62
  store float %343, ptr %14, align 4, !tbaa !62
  %344 = getelementptr inbounds float, ptr %107, i64 1
  %345 = load float, ptr %344, align 4, !tbaa !62
  store float %345, ptr %59, align 4, !tbaa !62
  %346 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %14) #8
  %347 = getelementptr inbounds %struct.ScanFillVert, ptr %346, i64 0, i32 2
  store i32 %90, ptr %347, align 8, !tbaa !68
  %348 = load i32, ptr %12, align 4, !tbaa !61
  %349 = add i32 %348, %90
  %350 = getelementptr inbounds %struct.ScanFillVert, ptr %346, i64 0, i32 5
  store i32 %349, ptr %350, align 4, !tbaa !69
  %351 = add i32 %90, 1
  %352 = icmp ugt i32 %348, 1
  br i1 %352, label %353, label %369

353:                                              ; preds = %342, %353
  %354 = phi i64 [ %365, %353 ], [ 1, %342 ]
  %355 = phi i32 [ %366, %353 ], [ %351, %342 ]
  %356 = getelementptr inbounds [2 x float], ptr %107, i64 %354
  %357 = load float, ptr %356, align 4, !tbaa !62
  store float %357, ptr %14, align 4, !tbaa !62
  %358 = getelementptr inbounds float, ptr %356, i64 1
  %359 = load float, ptr %358, align 4, !tbaa !62
  store float %359, ptr %59, align 4, !tbaa !62
  %360 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %14) #8
  %361 = getelementptr inbounds %struct.ScanFillVert, ptr %360, i64 0, i32 2
  store i32 %355, ptr %361, align 8, !tbaa !68
  %362 = load i32, ptr %12, align 4, !tbaa !61
  %363 = add i32 %362, %355
  %364 = getelementptr inbounds %struct.ScanFillVert, ptr %360, i64 0, i32 5
  store i32 %363, ptr %364, align 4, !tbaa !69
  %365 = add nuw nsw i64 %354, 1
  %366 = add i32 %355, 1
  %367 = zext i32 %362 to i64
  %368 = icmp ult i64 %365, %367
  br i1 %368, label %353, label %369, !llvm.loop !71

369:                                              ; preds = %353, %342
  %370 = phi i32 [ %351, %342 ], [ %366, %353 ]
  %371 = load i32, ptr %12, align 4, !tbaa !61
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %391, label %373

373:                                              ; preds = %369
  %374 = load ptr, ptr %60, align 8, !tbaa !72
  %375 = icmp eq ptr %335, null
  br label %376

376:                                              ; preds = %373, %385
  %377 = phi ptr [ %346, %373 ], [ %387, %385 ]
  %378 = phi i32 [ %92, %373 ], [ %386, %385 ]
  %379 = phi i32 [ 0, %373 ], [ %388, %385 ]
  %380 = phi ptr [ %374, %373 ], [ %377, %385 ]
  %381 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %11, ptr noundef %380, ptr noundef %377) #8
  br i1 %375, label %385, label %382

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.ScanFillEdge, ptr %381, i64 0, i32 6
  store i8 -1, ptr %383, align 1, !tbaa !68
  %384 = add i32 %378, 1
  br label %385

385:                                              ; preds = %382, %376
  %386 = phi i32 [ %384, %382 ], [ %378, %376 ]
  %387 = load ptr, ptr %377, align 8, !tbaa !73
  %388 = add nuw i32 %379, 1
  %389 = load i32, ptr %12, align 4, !tbaa !61
  %390 = icmp ult i32 %388, %389
  br i1 %390, label %376, label %391, !llvm.loop !74

391:                                              ; preds = %385, %369
  %392 = phi i32 [ %92, %369 ], [ %386, %385 ]
  %393 = icmp eq ptr %335, null
  br i1 %393, label %635, label %394

394:                                              ; preds = %391
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  store float 1.000000e+00, ptr %61, align 4, !tbaa !62
  %395 = load i32, ptr %13, align 4, !tbaa !61
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %411, label %397

397:                                              ; preds = %394, %397
  %398 = phi i64 [ %407, %397 ], [ 0, %394 ]
  %399 = phi i32 [ %406, %397 ], [ %370, %394 ]
  %400 = getelementptr inbounds [2 x float], ptr %335, i64 %398
  %401 = load float, ptr %400, align 4, !tbaa !62
  store float %401, ptr %15, align 4, !tbaa !62
  %402 = getelementptr inbounds float, ptr %400, i64 1
  %403 = load float, ptr %402, align 4, !tbaa !62
  store float %403, ptr %62, align 4, !tbaa !62
  %404 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %15) #8
  %405 = getelementptr inbounds %struct.ScanFillVert, ptr %404, i64 0, i32 5
  store i32 -1, ptr %405, align 4, !tbaa !69
  %406 = add i32 %399, 1
  %407 = add nuw nsw i64 %398, 1
  %408 = load i32, ptr %13, align 4, !tbaa !61
  %409 = zext i32 %408 to i64
  %410 = icmp ult i64 %407, %409
  br i1 %410, label %397, label %411, !llvm.loop !75

411:                                              ; preds = %397, %394
  %412 = phi i32 [ %370, %394 ], [ %406, %397 ]
  %413 = load i32, ptr %12, align 4, !tbaa !61
  %414 = add i32 %413, %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  br label %635

415:                                              ; preds = %334
  %416 = icmp eq ptr %335, null
  br i1 %416, label %635, label %417

417:                                              ; preds = %415
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  store float 1.000000e+00, ptr %53, align 4, !tbaa !62
  %418 = load i16, ptr %93, align 8, !tbaa !57
  %419 = and i16 %418, 8
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %453, label %421

421:                                              ; preds = %417
  %422 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %423 = load i32, ptr %13, align 4, !tbaa !61
  %424 = zext i32 %423 to i64
  %425 = shl nuw nsw i64 %424, 3
  %426 = call ptr %422(i64 noundef %425, ptr noundef nonnull @.str.2) #8
  %427 = load i32, ptr %12, align 4, !tbaa !61
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %450, label %429

429:                                              ; preds = %421
  %430 = zext i32 %427 to i64
  br label %431

431:                                              ; preds = %429, %431
  %432 = phi i64 [ 0, %429 ], [ %448, %431 ]
  %433 = getelementptr inbounds [2 x float], ptr %107, i64 %432
  %434 = getelementptr inbounds [2 x float], ptr %335, i64 %432
  %435 = load float, ptr %433, align 4, !tbaa !62
  %436 = load float, ptr %434, align 4, !tbaa !62
  %437 = fsub float %435, %436
  %438 = getelementptr inbounds float, ptr %433, i64 1
  %439 = load float, ptr %438, align 4, !tbaa !62
  %440 = getelementptr inbounds float, ptr %434, i64 1
  %441 = load float, ptr %440, align 4, !tbaa !62
  %442 = fsub float %439, %441
  %443 = getelementptr inbounds [2 x float], ptr %426, i64 %432
  %444 = fadd float %435, %437
  store float %444, ptr %443, align 4, !tbaa !62
  %445 = load float, ptr %438, align 4, !tbaa !62
  %446 = fadd float %442, %445
  %447 = getelementptr inbounds float, ptr %443, i64 1
  store float %446, ptr %447, align 4, !tbaa !62
  %448 = add nuw nsw i64 %432, 1
  %449 = icmp eq i64 %448, %430
  br i1 %449, label %450, label %431, !llvm.loop !76

450:                                              ; preds = %431, %421
  %451 = load i32, ptr %13, align 4, !tbaa !61
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %88, ptr noundef nonnull %335, i32 noundef %451) #8
  %452 = load i32, ptr %13, align 4, !tbaa !61
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %88, ptr noundef %426, i32 noundef %452) #8
  br label %453

453:                                              ; preds = %417, %450
  %454 = phi ptr [ %426, %450 ], [ null, %417 ]
  %455 = zext i32 %89 to i64
  %456 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %455
  store i32 %90, ptr %456, align 4, !tbaa !77
  %457 = load i32, ptr %12, align 4, !tbaa !61
  %458 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %455, i32 1
  store i32 %457, ptr %458, align 4, !tbaa !79
  %459 = load i32, ptr %12, align 4, !tbaa !61
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %508, label %461

461:                                              ; preds = %453
  %462 = icmp eq ptr %454, null
  br label %463

463:                                              ; preds = %461, %497
  %464 = phi i64 [ 0, %461 ], [ %504, %497 ]
  %465 = phi i32 [ %90, %461 ], [ %502, %497 ]
  %466 = phi i32 [ %91, %461 ], [ %503, %497 ]
  %467 = getelementptr inbounds [2 x float], ptr %107, i64 %464
  %468 = load float, ptr %467, align 4, !tbaa !62
  store float %468, ptr %14, align 4, !tbaa !62
  %469 = getelementptr inbounds float, ptr %467, i64 1
  %470 = load float, ptr %469, align 4, !tbaa !62
  store float %470, ptr %54, align 4, !tbaa !62
  %471 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %14) #8
  %472 = getelementptr inbounds %struct.ScanFillVert, ptr %471, i64 0, i32 2
  store i32 %465, ptr %472, align 8, !tbaa !68
  %473 = getelementptr inbounds %struct.ScanFillVert, ptr %471, i64 0, i32 5
  store i32 -1, ptr %473, align 4, !tbaa !69
  %474 = add i32 %465, 1
  %475 = getelementptr inbounds [2 x float], ptr %335, i64 %464
  %476 = load float, ptr %475, align 4, !tbaa !62
  store float %476, ptr %16, align 4, !tbaa !62
  %477 = getelementptr inbounds float, ptr %475, i64 1
  %478 = load float, ptr %477, align 4, !tbaa !62
  store float %478, ptr %55, align 4, !tbaa !62
  %479 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %16) #8
  %480 = getelementptr inbounds %struct.ScanFillVert, ptr %479, i64 0, i32 2
  store i32 %474, ptr %480, align 8, !tbaa !68
  %481 = getelementptr inbounds %struct.ScanFillVert, ptr %479, i64 0, i32 5
  store i32 -1, ptr %481, align 4, !tbaa !69
  %482 = add i32 %465, 2
  br i1 %462, label %488, label %483

483:                                              ; preds = %463
  %484 = getelementptr inbounds [2 x float], ptr %454, i64 %464
  %485 = load float, ptr %484, align 4, !tbaa !62
  store float %485, ptr %16, align 4, !tbaa !62
  %486 = getelementptr inbounds float, ptr %484, i64 1
  %487 = load float, ptr %486, align 4, !tbaa !62
  br label %497

488:                                              ; preds = %463
  %489 = load float, ptr %14, align 4, !tbaa !62
  %490 = load float, ptr %16, align 4, !tbaa !62
  %491 = fsub float %489, %490
  %492 = load float, ptr %54, align 4, !tbaa !62
  %493 = load float, ptr %55, align 4, !tbaa !62
  %494 = fsub float %492, %493
  %495 = fadd float %489, %491
  store float %495, ptr %16, align 4, !tbaa !62
  %496 = fadd float %492, %494
  br label %497

497:                                              ; preds = %488, %483
  %498 = phi float [ %487, %483 ], [ %496, %488 ]
  store float %498, ptr %55, align 4, !tbaa !62
  %499 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %16) #8
  %500 = getelementptr inbounds %struct.ScanFillVert, ptr %499, i64 0, i32 2
  store i32 %482, ptr %500, align 8, !tbaa !68
  %501 = getelementptr inbounds %struct.ScanFillVert, ptr %499, i64 0, i32 5
  store i32 -1, ptr %501, align 4, !tbaa !69
  %502 = add i32 %465, 3
  %503 = add i32 %466, 2
  %504 = add nuw nsw i64 %464, 1
  %505 = load i32, ptr %12, align 4, !tbaa !61
  %506 = zext i32 %505 to i64
  %507 = icmp ult i64 %504, %506
  br i1 %507, label %463, label %508, !llvm.loop !80

508:                                              ; preds = %497, %453
  %509 = phi i32 [ %91, %453 ], [ %503, %497 ]
  %510 = phi i32 [ %90, %453 ], [ %502, %497 ]
  %511 = icmp eq i8 %97, 0
  %512 = add i32 %509, -2
  %513 = select i1 %511, i32 %512, i32 %509
  %514 = icmp eq ptr %454, null
  br i1 %514, label %517, label %515

515:                                              ; preds = %508
  %516 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %516(ptr noundef nonnull %454) #8
  br label %517

517:                                              ; preds = %515, %508
  %518 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %455, i32 2
  store i32 0, ptr %518, align 4, !tbaa !81
  %519 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %455, i32 3
  store i32 0, ptr %519, align 4, !tbaa !82
  br i1 %511, label %520, label %630

520:                                              ; preds = %517
  %521 = load float, ptr %107, align 4, !tbaa !62
  %522 = load float, ptr %335, align 4, !tbaa !62
  %523 = fsub float %521, %522
  %524 = getelementptr inbounds float, ptr %107, i64 1
  %525 = load float, ptr %524, align 4, !tbaa !62
  %526 = getelementptr inbounds float, ptr %335, i64 1
  %527 = load float, ptr %526, align 4, !tbaa !62
  %528 = fsub float %525, %527
  %529 = fmul float %528, %528
  %530 = call float @llvm.fmuladd.f32(float %523, float %523, float %529)
  %531 = call float @sqrtf(float noundef %530) #8
  %532 = fdiv float %531, %56
  %533 = fptoui float %532 to i32
  %534 = call i32 @llvm.umin.i32(i32 %533, i32 64)
  %535 = call i32 @llvm.umax.i32(i32 %534, i32 8)
  %536 = uitofp i32 %535 to float
  %537 = fdiv float 1.000000e+00, %536
  br label %538

538:                                              ; preds = %520, %538
  %539 = phi i32 [ %510, %520 ], [ %568, %538 ]
  %540 = phi i32 [ 1, %520 ], [ %569, %538 ]
  %541 = uitofp i32 %540 to float
  %542 = fmul float %537, %541
  %543 = fmul float %542, 0x400921FB60000000
  %544 = call float @sinf(float noundef %543) #8
  %545 = call float @cosf(float noundef %543) #8
  %546 = load float, ptr %335, align 4, !tbaa !62
  %547 = load float, ptr %107, align 4, !tbaa !62
  %548 = fsub float %546, %547
  %549 = fdiv float %548, %29
  store float %549, ptr %16, align 4, !tbaa !62
  %550 = load float, ptr %526, align 4, !tbaa !62
  %551 = load float, ptr %524, align 4, !tbaa !62
  %552 = fsub float %550, %551
  %553 = fdiv float %552, %33
  store float %553, ptr %57, align 4, !tbaa !62
  %554 = fneg float %553
  %555 = fmul float %544, %554
  %556 = call float @llvm.fmuladd.f32(float %549, float %545, float %555)
  %557 = fmul float %29, %556
  %558 = fmul float %545, %553
  %559 = call float @llvm.fmuladd.f32(float %549, float %544, float %558)
  %560 = fmul float %33, %559
  %561 = load float, ptr %107, align 4, !tbaa !62
  %562 = fadd float %561, %557
  store float %562, ptr %16, align 4, !tbaa !62
  %563 = load float, ptr %524, align 4, !tbaa !62
  %564 = fadd float %563, %560
  store float %564, ptr %57, align 4, !tbaa !62
  %565 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %16) #8
  %566 = getelementptr inbounds %struct.ScanFillVert, ptr %565, i64 0, i32 2
  store i32 %539, ptr %566, align 8, !tbaa !68
  %567 = getelementptr inbounds %struct.ScanFillVert, ptr %565, i64 0, i32 5
  store i32 -1, ptr %567, align 4, !tbaa !69
  %568 = add i32 %539, 1
  %569 = add nuw nsw i32 %540, 1
  %570 = icmp eq i32 %569, %535
  br i1 %570, label %571, label %538, !llvm.loop !83

571:                                              ; preds = %538
  store i32 %535, ptr %518, align 4, !tbaa !81
  %572 = load i32, ptr %12, align 4, !tbaa !61
  %573 = add i32 %572, -1
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds [2 x float], ptr %107, i64 %574
  %576 = getelementptr inbounds [2 x float], ptr %335, i64 %574
  %577 = load float, ptr %575, align 4, !tbaa !62
  %578 = load float, ptr %576, align 4, !tbaa !62
  %579 = fsub float %577, %578
  %580 = getelementptr inbounds float, ptr %575, i64 1
  %581 = load float, ptr %580, align 4, !tbaa !62
  %582 = getelementptr inbounds float, ptr %576, i64 1
  %583 = load float, ptr %582, align 4, !tbaa !62
  %584 = fsub float %581, %583
  %585 = fmul float %584, %584
  %586 = call float @llvm.fmuladd.f32(float %579, float %579, float %585)
  %587 = call float @sqrtf(float noundef %586) #8
  %588 = fdiv float %587, %56
  %589 = fptoui float %588 to i32
  %590 = call i32 @llvm.umin.i32(i32 %589, i32 64)
  %591 = call i32 @llvm.umax.i32(i32 %590, i32 8)
  %592 = uitofp i32 %591 to float
  %593 = fdiv float 1.000000e+00, %592
  br label %594

594:                                              ; preds = %571, %594
  %595 = phi i32 [ %568, %571 ], [ %624, %594 ]
  %596 = phi i32 [ 1, %571 ], [ %625, %594 ]
  %597 = uitofp i32 %596 to float
  %598 = fmul float %593, %597
  %599 = fmul float %598, 0xC00921FB60000000
  %600 = call float @sinf(float noundef %599) #8
  %601 = call float @cosf(float noundef %599) #8
  %602 = load float, ptr %576, align 4, !tbaa !62
  %603 = load float, ptr %575, align 4, !tbaa !62
  %604 = fsub float %602, %603
  %605 = fdiv float %604, %29
  store float %605, ptr %16, align 4, !tbaa !62
  %606 = load float, ptr %582, align 4, !tbaa !62
  %607 = load float, ptr %580, align 4, !tbaa !62
  %608 = fsub float %606, %607
  %609 = fdiv float %608, %33
  store float %609, ptr %58, align 4, !tbaa !62
  %610 = fneg float %609
  %611 = fmul float %600, %610
  %612 = call float @llvm.fmuladd.f32(float %605, float %601, float %611)
  %613 = fmul float %29, %612
  %614 = fmul float %601, %609
  %615 = call float @llvm.fmuladd.f32(float %605, float %600, float %614)
  %616 = fmul float %33, %615
  %617 = load float, ptr %575, align 4, !tbaa !62
  %618 = fadd float %617, %613
  store float %618, ptr %16, align 4, !tbaa !62
  %619 = load float, ptr %580, align 4, !tbaa !62
  %620 = fadd float %619, %616
  store float %620, ptr %58, align 4, !tbaa !62
  %621 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %16) #8
  %622 = getelementptr inbounds %struct.ScanFillVert, ptr %621, i64 0, i32 2
  store i32 %595, ptr %622, align 8, !tbaa !68
  %623 = getelementptr inbounds %struct.ScanFillVert, ptr %621, i64 0, i32 5
  store i32 -1, ptr %623, align 4, !tbaa !69
  %624 = add i32 %595, 1
  %625 = add nuw nsw i32 %596, 1
  %626 = icmp eq i32 %625, %591
  br i1 %626, label %627, label %594, !llvm.loop !84

627:                                              ; preds = %594
  %628 = add i32 %535, %513
  %629 = add i32 %628, %591
  store i32 %591, ptr %519, align 4, !tbaa !82
  br label %630

630:                                              ; preds = %627, %517
  %631 = phi i32 [ %513, %517 ], [ %629, %627 ]
  %632 = phi i32 [ %510, %517 ], [ %624, %627 ]
  %633 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %455, i32 4
  store i8 %97, ptr %633, align 4, !tbaa !85
  %634 = add i32 %89, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  br label %635

635:                                              ; preds = %415, %630, %391, %411
  %636 = phi i32 [ %392, %411 ], [ %392, %391 ], [ %92, %630 ], [ %92, %415 ]
  %637 = phi i32 [ %414, %411 ], [ %91, %391 ], [ %631, %630 ], [ %91, %415 ]
  %638 = phi i32 [ %412, %411 ], [ %370, %391 ], [ %632, %630 ], [ %90, %415 ]
  %639 = phi i32 [ %89, %411 ], [ %89, %391 ], [ %634, %630 ], [ %89, %415 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  br label %640

640:                                              ; preds = %635, %111
  %641 = phi ptr [ %335, %635 ], [ %112, %111 ]
  %642 = phi i32 [ %636, %635 ], [ %92, %111 ]
  %643 = phi i32 [ %637, %635 ], [ %91, %111 ]
  %644 = phi i32 [ %638, %635 ], [ %90, %111 ]
  %645 = phi i32 [ %639, %635 ], [ %89, %111 ]
  %646 = icmp eq ptr %107, null
  br i1 %646, label %649, label %647

647:                                              ; preds = %640
  %648 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %648(ptr noundef nonnull %107) #8
  br label %649

649:                                              ; preds = %647, %640
  %650 = icmp eq ptr %641, null
  br i1 %650, label %653, label %651

651:                                              ; preds = %649
  %652 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %652(ptr noundef nonnull %641) #8
  br label %653

653:                                              ; preds = %651, %649
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  %654 = load ptr, ptr %88, align 8, !tbaa !34
  %655 = icmp eq ptr %654, null
  br i1 %655, label %656, label %87, !llvm.loop !86

656:                                              ; preds = %653, %78
  %657 = phi i32 [ 0, %78 ], [ %642, %653 ]
  %658 = phi i32 [ 0, %78 ], [ %643, %653 ]
  %659 = phi i32 [ 0, %78 ], [ %644, %653 ]
  %660 = phi i32 [ 0, %78 ], [ %645, %653 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %661 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %662 = zext i32 %659 to i64
  %663 = mul nuw nsw i64 %662, 12
  %664 = call ptr %661(i64 noundef %663, ptr noundef nonnull @.str.3) #8
  call void @BLI_rctf_init_minmax(ptr noundef nonnull %17) #8
  %665 = load ptr, ptr %11, align 8, !tbaa !87
  %666 = icmp eq ptr %665, null
  br i1 %666, label %686, label %667

667:                                              ; preds = %656, %683
  %668 = phi ptr [ %670, %683 ], [ %665, %656 ]
  %669 = phi ptr [ %684, %683 ], [ %664, %656 ]
  %670 = load ptr, ptr %668, align 8, !tbaa !73
  %671 = getelementptr inbounds %struct.ScanFillVert, ptr %668, i64 0, i32 3
  %672 = load float, ptr %671, align 4, !tbaa !62
  store float %672, ptr %669, align 4, !tbaa !62
  %673 = getelementptr inbounds %struct.ScanFillVert, ptr %668, i64 0, i32 3, i64 1
  %674 = load float, ptr %673, align 4, !tbaa !62
  %675 = getelementptr inbounds float, ptr %669, i64 1
  store float %674, ptr %675, align 4, !tbaa !62
  %676 = getelementptr inbounds %struct.ScanFillVert, ptr %668, i64 0, i32 3, i64 2
  %677 = load float, ptr %676, align 4, !tbaa !62
  %678 = getelementptr inbounds float, ptr %669, i64 2
  store float %677, ptr %678, align 4, !tbaa !62
  %679 = getelementptr inbounds %struct.ScanFillVert, ptr %668, i64 0, i32 5
  %680 = load i32, ptr %679, align 4, !tbaa !69
  %681 = icmp eq i32 %680, -1
  br i1 %681, label %682, label %683

682:                                              ; preds = %667
  call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef nonnull %668) #8
  br label %683

683:                                              ; preds = %682, %667
  call void @BLI_rctf_do_minmax_v(ptr noundef nonnull %17, ptr noundef nonnull %669) #8
  %684 = getelementptr inbounds float, ptr %669, i64 3
  %685 = icmp eq ptr %670, null
  br i1 %685, label %686, label %667, !llvm.loop !88

686:                                              ; preds = %683, %656
  %687 = getelementptr inbounds %struct.MaskLayer, ptr %68, i64 0, i32 12
  %688 = load i8, ptr %687, align 2, !tbaa !89
  %689 = icmp sgt i8 %688, -1
  br i1 %689, label %721, label %690

690:                                              ; preds = %686
  %691 = call zeroext i8 @BLI_scanfill_calc_self_isect(ptr noundef nonnull %11, ptr noundef nonnull %18, ptr noundef nonnull %19) #8
  %692 = icmp eq i8 %691, 0
  br i1 %692, label %721, label %693

693:                                              ; preds = %690
  %694 = call i32 @BLI_countlist(ptr noundef nonnull %11) #8
  %695 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %696 = add i32 %694, %659
  %697 = zext i32 %696 to i64
  %698 = mul nuw nsw i64 %697, 12
  %699 = call ptr %695(ptr noundef %664, i64 noundef %698, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #8
  %700 = load ptr, ptr %11, align 8, !tbaa !34
  %701 = icmp eq ptr %700, null
  br i1 %701, label %721, label %702

702:                                              ; preds = %693
  %703 = getelementptr inbounds [3 x float], ptr %699, i64 %662
  br label %704

704:                                              ; preds = %702, %704
  %705 = phi ptr [ %719, %704 ], [ %700, %702 ]
  %706 = phi i32 [ %716, %704 ], [ %659, %702 ]
  %707 = phi ptr [ %718, %704 ], [ %703, %702 ]
  %708 = getelementptr inbounds %struct.ScanFillVert, ptr %705, i64 0, i32 3
  %709 = load float, ptr %708, align 4, !tbaa !62
  store float %709, ptr %707, align 4, !tbaa !62
  %710 = getelementptr inbounds %struct.ScanFillVert, ptr %705, i64 0, i32 3, i64 1
  %711 = load float, ptr %710, align 4, !tbaa !62
  %712 = getelementptr inbounds float, ptr %707, i64 1
  store float %711, ptr %712, align 4, !tbaa !62
  %713 = getelementptr inbounds %struct.ScanFillVert, ptr %705, i64 0, i32 3, i64 2
  %714 = load float, ptr %713, align 4, !tbaa !62
  %715 = getelementptr inbounds float, ptr %707, i64 2
  store float %714, ptr %715, align 4, !tbaa !62
  %716 = add i32 %706, 1
  %717 = getelementptr inbounds %struct.ScanFillVert, ptr %705, i64 0, i32 2
  store i32 %706, ptr %717, align 8, !tbaa !68
  %718 = getelementptr inbounds float, ptr %707, i64 3
  %719 = load ptr, ptr %705, align 8, !tbaa !34
  %720 = icmp eq ptr %719, null
  br i1 %720, label %721, label %704, !llvm.loop !90

721:                                              ; preds = %704, %693, %690, %686
  %722 = phi ptr [ %664, %690 ], [ %664, %686 ], [ %699, %693 ], [ %699, %704 ]
  %723 = phi i32 [ 0, %690 ], [ 0, %686 ], [ 4, %693 ], [ 4, %704 ]
  %724 = phi i1 [ true, %690 ], [ true, %686 ], [ false, %693 ], [ false, %704 ]
  %725 = load i8, ptr %687, align 2, !tbaa !89
  %726 = and i8 %725, 64
  %727 = icmp eq i8 %726, 0
  %728 = or disjoint i32 %723, 8
  %729 = select i1 %727, i32 %728, i32 %723
  %730 = call i32 @BLI_scanfill_calc_ex(ptr noundef nonnull %11, i32 noundef %729, ptr noundef nonnull %10) #8
  br i1 %724, label %732, label %731

731:                                              ; preds = %721
  call void @BLI_movelisttolist(ptr noundef nonnull %11, ptr noundef nonnull %18) #8
  call void @BLI_movelisttolist(ptr noundef nonnull %63, ptr noundef nonnull %19) #8
  br label %732

732:                                              ; preds = %731, %721
  %733 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %734 = zext i32 %730 to i64
  %735 = zext i32 %658 to i64
  %736 = add nuw nsw i64 %734, %735
  %737 = shl nuw nsw i64 %736, 4
  %738 = call ptr %733(i64 noundef %737, ptr noundef nonnull @.str.4) #8
  %739 = load ptr, ptr %64, align 8, !tbaa !91
  %740 = icmp eq ptr %739, null
  br i1 %740, label %762, label %741

741:                                              ; preds = %732, %741
  %742 = phi ptr [ %760, %741 ], [ %739, %732 ]
  %743 = phi ptr [ %759, %741 ], [ %738, %732 ]
  %744 = getelementptr inbounds %struct.ScanFillFace, ptr %742, i64 0, i32 4
  %745 = load ptr, ptr %744, align 8, !tbaa !92
  %746 = getelementptr inbounds %struct.ScanFillVert, ptr %745, i64 0, i32 2
  %747 = load i32, ptr %746, align 8, !tbaa !68
  %748 = getelementptr inbounds i32, ptr %743, i64 1
  store i32 %747, ptr %743, align 4, !tbaa !61
  %749 = getelementptr inbounds %struct.ScanFillFace, ptr %742, i64 0, i32 3
  %750 = load ptr, ptr %749, align 8, !tbaa !94
  %751 = getelementptr inbounds %struct.ScanFillVert, ptr %750, i64 0, i32 2
  %752 = load i32, ptr %751, align 8, !tbaa !68
  %753 = getelementptr inbounds i32, ptr %743, i64 2
  store i32 %752, ptr %748, align 4, !tbaa !61
  %754 = getelementptr inbounds %struct.ScanFillFace, ptr %742, i64 0, i32 2
  %755 = load ptr, ptr %754, align 8, !tbaa !95
  %756 = getelementptr inbounds %struct.ScanFillVert, ptr %755, i64 0, i32 2
  %757 = load i32, ptr %756, align 8, !tbaa !68
  %758 = getelementptr inbounds i32, ptr %743, i64 3
  store i32 %757, ptr %753, align 4, !tbaa !61
  %759 = getelementptr inbounds i32, ptr %743, i64 4
  store i32 -1, ptr %758, align 4, !tbaa !61
  %760 = load ptr, ptr %742, align 8, !tbaa !96
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %741, !llvm.loop !97

762:                                              ; preds = %741, %732
  %763 = phi ptr [ %738, %732 ], [ %759, %741 ]
  %764 = icmp eq i32 %658, 0
  %765 = load ptr, ptr %65, align 8
  %766 = icmp eq ptr %765, null
  %767 = select i1 %764, i1 true, i1 %766
  br i1 %767, label %798, label %768

768:                                              ; preds = %762, %793
  %769 = phi ptr [ %796, %793 ], [ %765, %762 ]
  %770 = phi ptr [ %795, %793 ], [ %763, %762 ]
  %771 = phi i32 [ %794, %793 ], [ 0, %762 ]
  %772 = getelementptr inbounds %struct.ScanFillEdge, ptr %769, i64 0, i32 6
  %773 = load i8, ptr %772, align 1, !tbaa !68
  %774 = icmp eq i8 %773, -1
  br i1 %774, label %775, label %793

775:                                              ; preds = %768
  %776 = getelementptr inbounds %struct.ScanFillEdge, ptr %769, i64 0, i32 2
  %777 = load ptr, ptr %776, align 8, !tbaa !98
  %778 = getelementptr inbounds %struct.ScanFillVert, ptr %777, i64 0, i32 2
  %779 = load i32, ptr %778, align 8, !tbaa !68
  %780 = getelementptr inbounds i32, ptr %770, i64 1
  store i32 %779, ptr %770, align 4, !tbaa !61
  %781 = getelementptr inbounds %struct.ScanFillEdge, ptr %769, i64 0, i32 3
  %782 = load ptr, ptr %781, align 8, !tbaa !100
  %783 = getelementptr inbounds %struct.ScanFillVert, ptr %782, i64 0, i32 2
  %784 = load i32, ptr %783, align 8, !tbaa !68
  %785 = getelementptr inbounds i32, ptr %770, i64 2
  store i32 %784, ptr %780, align 4, !tbaa !61
  %786 = getelementptr inbounds %struct.ScanFillVert, ptr %782, i64 0, i32 5
  %787 = load i32, ptr %786, align 4, !tbaa !69
  %788 = getelementptr inbounds i32, ptr %770, i64 3
  store i32 %787, ptr %785, align 4, !tbaa !61
  %789 = getelementptr inbounds %struct.ScanFillVert, ptr %777, i64 0, i32 5
  %790 = load i32, ptr %789, align 4, !tbaa !69
  %791 = getelementptr inbounds i32, ptr %770, i64 4
  store i32 %790, ptr %788, align 4, !tbaa !61
  %792 = add i32 %771, 1
  br label %793

793:                                              ; preds = %768, %775
  %794 = phi i32 [ %792, %775 ], [ %771, %768 ]
  %795 = phi ptr [ %791, %775 ], [ %770, %768 ]
  %796 = load ptr, ptr %769, align 8, !tbaa !101
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %768, !llvm.loop !102

798:                                              ; preds = %793, %762
  %799 = phi i32 [ 0, %762 ], [ %794, %793 ]
  %800 = phi ptr [ %763, %762 ], [ %795, %793 ]
  %801 = icmp eq i32 %660, 0
  br i1 %801, label %919, label %802

802:                                              ; preds = %798
  %803 = zext i32 %660 to i64
  br label %804

804:                                              ; preds = %802, %915
  %805 = phi i64 [ %803, %802 ], [ %808, %915 ]
  %806 = phi ptr [ %800, %802 ], [ %917, %915 ]
  %807 = add nsw i64 %805, -1
  %808 = add nsw i64 %805, -1
  %809 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %807
  %810 = load i32, ptr %809, align 4, !tbaa !77
  %811 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %807, i32 1
  %812 = load i32, ptr %811, align 4, !tbaa !79
  %813 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %807, i32 2
  %814 = load i32, ptr %813, align 4, !tbaa !81
  %815 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %807, i32 3
  %816 = load i32, ptr %815, align 4, !tbaa !82
  %817 = add i32 %812, -1
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %838, label %819

819:                                              ; preds = %804, %819
  %820 = phi i32 [ %823, %819 ], [ %810, %804 ]
  %821 = phi i32 [ %836, %819 ], [ 0, %804 ]
  %822 = phi ptr [ %835, %819 ], [ %806, %804 ]
  %823 = add i32 %820, 3
  %824 = getelementptr inbounds i32, ptr %822, i64 1
  store i32 %823, ptr %822, align 4, !tbaa !61
  %825 = getelementptr inbounds i32, ptr %822, i64 2
  store i32 %820, ptr %824, align 4, !tbaa !61
  %826 = add i32 %820, 1
  %827 = getelementptr inbounds i32, ptr %822, i64 3
  store i32 %826, ptr %825, align 4, !tbaa !61
  %828 = add i32 %820, 4
  %829 = getelementptr inbounds i32, ptr %822, i64 4
  store i32 %828, ptr %827, align 4, !tbaa !61
  %830 = getelementptr inbounds i32, ptr %822, i64 5
  store i32 %820, ptr %829, align 4, !tbaa !61
  %831 = getelementptr inbounds i32, ptr %822, i64 6
  store i32 %823, ptr %830, align 4, !tbaa !61
  %832 = add i32 %820, 5
  %833 = getelementptr inbounds i32, ptr %822, i64 7
  store i32 %832, ptr %831, align 4, !tbaa !61
  %834 = add i32 %820, 2
  %835 = getelementptr inbounds i32, ptr %822, i64 8
  store i32 %834, ptr %833, align 4, !tbaa !61
  %836 = add nuw i32 %821, 1
  %837 = icmp eq i32 %836, %817
  br i1 %837, label %838, label %819, !llvm.loop !103

838:                                              ; preds = %819, %804
  %839 = phi ptr [ %806, %804 ], [ %835, %819 ]
  %840 = phi i32 [ %810, %804 ], [ %823, %819 ]
  %841 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %84, i64 %807, i32 4
  %842 = load i8, ptr %841, align 4, !tbaa !85
  %843 = icmp eq i8 %842, 0
  br i1 %843, label %856, label %844

844:                                              ; preds = %838
  %845 = getelementptr inbounds i32, ptr %839, i64 1
  store i32 %810, ptr %839, align 4, !tbaa !61
  %846 = getelementptr inbounds i32, ptr %839, i64 2
  store i32 %840, ptr %845, align 4, !tbaa !61
  %847 = add i32 %840, 1
  %848 = getelementptr inbounds i32, ptr %839, i64 3
  store i32 %847, ptr %846, align 4, !tbaa !61
  %849 = add i32 %810, 1
  %850 = getelementptr inbounds i32, ptr %839, i64 4
  store i32 %849, ptr %848, align 4, !tbaa !61
  %851 = getelementptr inbounds i32, ptr %839, i64 5
  store i32 %840, ptr %850, align 4, !tbaa !61
  %852 = getelementptr inbounds i32, ptr %839, i64 6
  store i32 %810, ptr %851, align 4, !tbaa !61
  %853 = add i32 %810, 2
  %854 = getelementptr inbounds i32, ptr %839, i64 7
  store i32 %853, ptr %852, align 4, !tbaa !61
  %855 = add i32 %840, 2
  store i32 %855, ptr %854, align 4, !tbaa !61
  br label %915

856:                                              ; preds = %838
  %857 = mul i32 %812, 3
  %858 = add i32 %857, %810
  %859 = add i32 %814, -2
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %872, label %861

861:                                              ; preds = %856, %861
  %862 = phi i32 [ %868, %861 ], [ %858, %856 ]
  %863 = phi i32 [ %870, %861 ], [ 0, %856 ]
  %864 = phi ptr [ %869, %861 ], [ %839, %856 ]
  %865 = getelementptr inbounds i32, ptr %864, i64 1
  store i32 %810, ptr %864, align 4, !tbaa !61
  %866 = getelementptr inbounds i32, ptr %864, i64 2
  store i32 %810, ptr %865, align 4, !tbaa !61
  %867 = getelementptr inbounds i32, ptr %864, i64 3
  store i32 %862, ptr %866, align 4, !tbaa !61
  %868 = add i32 %862, 1
  %869 = getelementptr inbounds i32, ptr %864, i64 4
  store i32 %868, ptr %867, align 4, !tbaa !61
  %870 = add nuw i32 %863, 1
  %871 = icmp eq i32 %870, %859
  br i1 %871, label %872, label %861, !llvm.loop !104

872:                                              ; preds = %861, %856
  %873 = phi ptr [ %839, %856 ], [ %869, %861 ]
  %874 = getelementptr inbounds i32, ptr %873, i64 1
  store i32 %810, ptr %873, align 4, !tbaa !61
  %875 = getelementptr inbounds i32, ptr %873, i64 2
  store i32 %810, ptr %874, align 4, !tbaa !61
  %876 = add i32 %810, 1
  %877 = getelementptr inbounds i32, ptr %873, i64 3
  store i32 %876, ptr %875, align 4, !tbaa !61
  %878 = getelementptr inbounds i32, ptr %873, i64 4
  store i32 %858, ptr %877, align 4, !tbaa !61
  %879 = getelementptr inbounds i32, ptr %873, i64 5
  store i32 %810, ptr %878, align 4, !tbaa !61
  %880 = getelementptr inbounds i32, ptr %873, i64 6
  store i32 %810, ptr %879, align 4, !tbaa !61
  %881 = add i32 %814, -2
  %882 = add i32 %881, %858
  %883 = getelementptr inbounds i32, ptr %873, i64 7
  store i32 %882, ptr %880, align 4, !tbaa !61
  %884 = add i32 %810, 2
  %885 = getelementptr inbounds i32, ptr %873, i64 8
  store i32 %884, ptr %883, align 4, !tbaa !61
  %886 = add i32 %814, -1
  %887 = add i32 %886, %858
  %888 = add i32 %858, -3
  %889 = add i32 %816, -2
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %902, label %891

891:                                              ; preds = %872, %891
  %892 = phi i32 [ %897, %891 ], [ %887, %872 ]
  %893 = phi i32 [ %900, %891 ], [ 0, %872 ]
  %894 = phi ptr [ %899, %891 ], [ %885, %872 ]
  %895 = getelementptr inbounds i32, ptr %894, i64 1
  store i32 %888, ptr %894, align 4, !tbaa !61
  %896 = getelementptr inbounds i32, ptr %894, i64 2
  store i32 %888, ptr %895, align 4, !tbaa !61
  %897 = add i32 %892, 1
  %898 = getelementptr inbounds i32, ptr %894, i64 3
  store i32 %897, ptr %896, align 4, !tbaa !61
  %899 = getelementptr inbounds i32, ptr %894, i64 4
  store i32 %892, ptr %898, align 4, !tbaa !61
  %900 = add nuw i32 %893, 1
  %901 = icmp eq i32 %900, %889
  br i1 %901, label %902, label %891, !llvm.loop !105

902:                                              ; preds = %891, %872
  %903 = phi ptr [ %885, %872 ], [ %899, %891 ]
  %904 = getelementptr inbounds i32, ptr %903, i64 1
  store i32 %888, ptr %903, align 4, !tbaa !61
  %905 = getelementptr inbounds i32, ptr %903, i64 2
  store i32 %888, ptr %904, align 4, !tbaa !61
  %906 = getelementptr inbounds i32, ptr %903, i64 3
  store i32 %887, ptr %905, align 4, !tbaa !61
  %907 = add i32 %858, -2
  %908 = getelementptr inbounds i32, ptr %903, i64 4
  store i32 %907, ptr %906, align 4, !tbaa !61
  %909 = getelementptr inbounds i32, ptr %903, i64 5
  store i32 %888, ptr %908, align 4, !tbaa !61
  %910 = getelementptr inbounds i32, ptr %903, i64 6
  store i32 %888, ptr %909, align 4, !tbaa !61
  %911 = add i32 %858, -1
  %912 = getelementptr inbounds i32, ptr %903, i64 7
  store i32 %911, ptr %910, align 4, !tbaa !61
  %913 = add i32 %816, -2
  %914 = add i32 %913, %887
  store i32 %914, ptr %912, align 4, !tbaa !61
  br label %915

915:                                              ; preds = %902, %844
  %916 = phi ptr [ %839, %844 ], [ %903, %902 ]
  %917 = getelementptr inbounds i32, ptr %916, i64 8
  %918 = icmp eq i64 %807, 0
  br i1 %918, label %919, label %804, !llvm.loop !106

919:                                              ; preds = %915, %798
  %920 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %920(ptr noundef %84) #8
  %921 = load ptr, ptr %0, align 8, !tbaa !43
  %922 = zext i32 %69 to i64
  %923 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922
  %924 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef nonnull %17) #8
  %925 = icmp eq i8 %924, 0
  br i1 %925, label %1260, label %926

926:                                              ; preds = %919
  %927 = sub i32 %658, %657
  %928 = add i32 %927, %730
  %929 = add i32 %928, %799
  store i32 %929, ptr %923, align 8, !tbaa !107
  %930 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 2
  store ptr %722, ptr %930, align 8, !tbaa !46
  %931 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 1
  store ptr %738, ptr %931, align 8, !tbaa !44
  %932 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %932, ptr noundef nonnull align 4 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !108
  %933 = call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @__func__.layer_bucket_init) #8
  %934 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 3, i32 1
  %935 = load float, ptr %934, align 4, !tbaa !109
  %936 = load float, ptr %932, align 4, !tbaa !110
  %937 = fsub float %935, %936
  %938 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 3, i32 3
  %939 = load float, ptr %938, align 4, !tbaa !111
  %940 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 3, i32 2
  %941 = load float, ptr %940, align 4, !tbaa !112
  %942 = fsub float %939, %941
  %943 = fdiv float %937, %22
  %944 = fmul float %943, 2.500000e-01
  %945 = fptoui float %944 to i32
  %946 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 6
  store i32 %945, ptr %946, align 8, !tbaa !48
  %947 = fdiv float %942, %22
  %948 = fmul float %947, 2.500000e-01
  %949 = fptoui float %948 to i32
  %950 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 7
  store i32 %949, ptr %950, align 4, !tbaa !49
  %951 = icmp ult i32 %945, 8
  br i1 %951, label %954, label %952

952:                                              ; preds = %926
  %953 = icmp ugt i32 %945, 512
  br i1 %953, label %954, label %956

954:                                              ; preds = %952, %926
  %955 = phi i32 [ 8, %926 ], [ 512, %952 ]
  store i32 %955, ptr %946, align 8, !tbaa !48
  br label %956

956:                                              ; preds = %954, %952
  %957 = icmp ult i32 %949, 8
  br i1 %957, label %960, label %958

958:                                              ; preds = %956
  %959 = icmp ugt i32 %949, 512
  br i1 %959, label %960, label %962

960:                                              ; preds = %958, %956
  %961 = phi i32 [ 8, %956 ], [ 512, %958 ]
  store i32 %961, ptr %950, align 4, !tbaa !49
  br label %962

962:                                              ; preds = %960, %958
  %963 = fadd float %937, 0x3E80000000000000
  %964 = fdiv float 1.000000e+00, %963
  %965 = load i32, ptr %946, align 8, !tbaa !48
  %966 = uitofp i32 %965 to float
  %967 = fmul float %964, %966
  %968 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 5
  store float %967, ptr %968, align 8, !tbaa !62
  %969 = fadd float %942, 0x3E80000000000000
  %970 = fdiv float 1.000000e+00, %969
  %971 = load i32, ptr %950, align 4, !tbaa !49
  %972 = uitofp i32 %971 to float
  %973 = fmul float %970, %972
  %974 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 5, i64 1
  store float %973, ptr %974, align 4, !tbaa !62
  %975 = fdiv float %963, %966
  %976 = fdiv float %969, %972
  %977 = fcmp ogt float %975, %976
  %978 = select i1 %977, float %975, float %976
  %979 = call float @llvm.fmuladd.f32(float %978, float 0x3FF6A09E60000000, float 0x3E80000000000000)
  %980 = fmul float %979, %979
  %981 = load ptr, ptr %931, align 8, !tbaa !44
  %982 = load ptr, ptr %930, align 8, !tbaa !46
  %983 = mul i32 %971, %965
  %984 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %985 = zext i32 %983 to i64
  %986 = shl nuw nsw i64 %985, 3
  %987 = call ptr %984(i64 noundef %986, ptr noundef nonnull @__func__.layer_bucket_init) #8
  %988 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %989 = shl nuw nsw i64 %985, 2
  %990 = call ptr %988(i64 noundef %989, ptr noundef nonnull @__func__.layer_bucket_init) #8
  %991 = load i32, ptr %923, align 8, !tbaa !107
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %1218, label %993

993:                                              ; preds = %962, %1212
  %994 = phi i64 [ %1213, %1212 ], [ 0, %962 ]
  %995 = phi ptr [ %1214, %1212 ], [ %981, %962 ]
  %996 = getelementptr inbounds i32, ptr %995, i64 3
  %997 = load i32, ptr %996, align 4, !tbaa !61
  %998 = icmp eq i32 %997, -1
  %999 = load i32, ptr %995, align 4, !tbaa !61
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds [3 x float], ptr %982, i64 %1000
  %1002 = getelementptr inbounds i32, ptr %995, i64 1
  %1003 = load i32, ptr %1002, align 4, !tbaa !61
  %1004 = zext i32 %1003 to i64
  %1005 = getelementptr inbounds [3 x float], ptr %982, i64 %1004
  %1006 = getelementptr inbounds i32, ptr %995, i64 2
  %1007 = load i32, ptr %1006, align 4, !tbaa !61
  %1008 = zext i32 %1007 to i64
  %1009 = getelementptr inbounds [3 x float], ptr %982, i64 %1008
  br i1 %998, label %1010, label %1036

1010:                                             ; preds = %993
  %1011 = load float, ptr %1001, align 4, !tbaa !62
  %1012 = load float, ptr %1005, align 4, !tbaa !62
  %1013 = load float, ptr %1009, align 4, !tbaa !62
  %1014 = fcmp olt float %1012, %1013
  %1015 = select i1 %1014, float %1012, float %1013
  %1016 = fcmp olt float %1011, %1015
  %1017 = select i1 %1016, float %1011, float %1015
  %1018 = fcmp ogt float %1012, %1013
  %1019 = select i1 %1018, float %1012, float %1013
  %1020 = fcmp ogt float %1011, %1019
  %1021 = select i1 %1020, float %1011, float %1019
  %1022 = getelementptr inbounds float, ptr %1001, i64 1
  %1023 = load float, ptr %1022, align 4, !tbaa !62
  %1024 = getelementptr inbounds float, ptr %1005, i64 1
  %1025 = load float, ptr %1024, align 4, !tbaa !62
  %1026 = getelementptr inbounds float, ptr %1009, i64 1
  %1027 = load float, ptr %1026, align 4, !tbaa !62
  %1028 = fcmp olt float %1025, %1027
  %1029 = select i1 %1028, float %1025, float %1027
  %1030 = fcmp olt float %1023, %1029
  %1031 = select i1 %1030, float %1023, float %1029
  %1032 = fcmp ogt float %1025, %1027
  %1033 = select i1 %1032, float %1025, float %1027
  %1034 = fcmp ogt float %1023, %1033
  %1035 = select i1 %1034, float %1023, float %1033
  br label %1075

1036:                                             ; preds = %993
  %1037 = zext i32 %997 to i64
  %1038 = getelementptr inbounds [3 x float], ptr %982, i64 %1037
  %1039 = load float, ptr %1001, align 4, !tbaa !62
  %1040 = load float, ptr %1005, align 4, !tbaa !62
  %1041 = load float, ptr %1009, align 4, !tbaa !62
  %1042 = load float, ptr %1038, align 4, !tbaa !62
  %1043 = fcmp olt float %1041, %1042
  %1044 = select i1 %1043, float %1041, float %1042
  %1045 = fcmp olt float %1040, %1044
  %1046 = select i1 %1045, float %1040, float %1044
  %1047 = fcmp olt float %1039, %1046
  %1048 = select i1 %1047, float %1039, float %1046
  %1049 = fcmp ogt float %1041, %1042
  %1050 = select i1 %1049, float %1041, float %1042
  %1051 = fcmp ogt float %1040, %1050
  %1052 = select i1 %1051, float %1040, float %1050
  %1053 = fcmp ogt float %1039, %1052
  %1054 = select i1 %1053, float %1039, float %1052
  %1055 = getelementptr inbounds float, ptr %1001, i64 1
  %1056 = load float, ptr %1055, align 4, !tbaa !62
  %1057 = getelementptr inbounds float, ptr %1005, i64 1
  %1058 = load float, ptr %1057, align 4, !tbaa !62
  %1059 = getelementptr inbounds float, ptr %1009, i64 1
  %1060 = load float, ptr %1059, align 4, !tbaa !62
  %1061 = getelementptr inbounds float, ptr %1038, i64 1
  %1062 = load float, ptr %1061, align 4, !tbaa !62
  %1063 = fcmp olt float %1060, %1062
  %1064 = select i1 %1063, float %1060, float %1062
  %1065 = fcmp olt float %1058, %1064
  %1066 = select i1 %1065, float %1058, float %1064
  %1067 = fcmp olt float %1056, %1066
  %1068 = select i1 %1067, float %1056, float %1066
  %1069 = fcmp ogt float %1060, %1062
  %1070 = select i1 %1069, float %1060, float %1062
  %1071 = fcmp ogt float %1058, %1070
  %1072 = select i1 %1071, float %1058, float %1070
  %1073 = fcmp ogt float %1056, %1072
  %1074 = select i1 %1073, float %1056, float %1072
  br label %1075

1075:                                             ; preds = %1036, %1010
  %1076 = phi float [ %1035, %1010 ], [ %1074, %1036 ]
  %1077 = phi float [ %1031, %1010 ], [ %1068, %1036 ]
  %1078 = phi float [ %1021, %1010 ], [ %1054, %1036 ]
  %1079 = phi float [ %1017, %1010 ], [ %1048, %1036 ]
  %1080 = fcmp olt float %1078, 0.000000e+00
  %1081 = fcmp olt float %1076, 0.000000e+00
  %1082 = select i1 %1080, i1 true, i1 %1081
  %1083 = fcmp ogt float %1079, 1.000000e+00
  %1084 = select i1 %1082, i1 true, i1 %1083
  %1085 = fcmp ogt float %1077, 1.000000e+00
  %1086 = select i1 %1084, i1 true, i1 %1085
  br i1 %1086, label %1212, label %1087

1087:                                             ; preds = %1075
  %1088 = fcmp olt float %1079, 0.000000e+00
  %1089 = select i1 %1088, float 0.000000e+00, float %1079
  %1090 = fcmp olt float %1077, 0.000000e+00
  %1091 = select i1 %1090, float 0.000000e+00, float %1077
  %1092 = fcmp ogt float %1078, 1.000000e+00
  %1093 = select i1 %1092, float 1.000000e+00, float %1078
  %1094 = fcmp ogt float %1076, 1.000000e+00
  %1095 = select i1 %1094, float 1.000000e+00, float %1076
  %1096 = load float, ptr %932, align 8, !tbaa !113
  %1097 = fsub float %1089, %1096
  %1098 = load float, ptr %968, align 8, !tbaa !62
  %1099 = fmul float %1097, %1098
  %1100 = fptoui float %1099 to i32
  %1101 = fsub float %1093, %1096
  %1102 = fmul float %1101, %1098
  %1103 = fptoui float %1102 to i32
  %1104 = load float, ptr %940, align 8, !tbaa !114
  %1105 = fsub float %1091, %1104
  %1106 = load float, ptr %974, align 4, !tbaa !62
  %1107 = fmul float %1105, %1106
  %1108 = fptoui float %1107 to i32
  %1109 = fsub float %1095, %1104
  %1110 = fmul float %1109, %1106
  %1111 = fptoui float %1110 to i32
  %1112 = inttoptr i64 %994 to ptr
  %1113 = load i32, ptr %946, align 8, !tbaa !48
  %1114 = icmp ugt i32 %1113, %1100
  %1115 = add i32 %1113, -1
  %1116 = select i1 %1114, i32 %1100, i32 %1115
  %1117 = icmp ugt i32 %1113, %1103
  %1118 = select i1 %1117, i32 %1103, i32 %1115
  %1119 = load i32, ptr %950, align 4, !tbaa !49
  %1120 = icmp ugt i32 %1119, %1108
  %1121 = add i32 %1119, -1
  %1122 = select i1 %1120, i32 %1108, i32 %1121
  %1123 = icmp ugt i32 %1119, %1111
  %1124 = select i1 %1123, i32 %1111, i32 %1121
  %1125 = icmp ugt i32 %1122, %1124
  br i1 %1125, label %1212, label %1126

1126:                                             ; preds = %1087
  %1127 = icmp ugt i32 %1116, %1118
  br label %1128

1128:                                             ; preds = %1126, %1209
  %1129 = phi i32 [ %1122, %1126 ], [ %1210, %1209 ]
  br i1 %1127, label %1209, label %1130

1130:                                             ; preds = %1128
  %1131 = load i32, ptr %946, align 8, !tbaa !48
  %1132 = mul i32 %1131, %1129
  %1133 = add i32 %1132, %1116
  %1134 = uitofp i32 %1129 to float
  br label %1135

1135:                                             ; preds = %1130, %1205
  %1136 = phi i32 [ %1133, %1130 ], [ %1207, %1205 ]
  %1137 = phi i32 [ %1116, %1130 ], [ %1206, %1205 ]
  %1138 = load ptr, ptr %931, align 8, !tbaa !44
  %1139 = getelementptr inbounds [4 x i32], ptr %1138, i64 %994
  %1140 = load ptr, ptr %930, align 8, !tbaa !46
  %1141 = load float, ptr %932, align 8, !tbaa !113
  %1142 = uitofp i32 %1137 to float
  %1143 = call float @llvm.fmuladd.f32(float %975, float %1142, float %1141)
  %1144 = load float, ptr %940, align 8, !tbaa !114
  %1145 = call float @llvm.fmuladd.f32(float %976, float %1134, float %1144)
  %1146 = fadd float %975, %1143
  %1147 = fadd float %976, %1145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %1148 = fadd float %1143, %1146
  %1149 = fmul float %1148, 5.000000e-01
  store float %1149, ptr %8, align 4, !tbaa !62
  %1150 = fadd float %1145, %1147
  %1151 = fmul float %1150, 5.000000e-01
  store float %1151, ptr %66, align 4, !tbaa !62
  %1152 = getelementptr inbounds i32, ptr %1139, i64 3
  %1153 = load i32, ptr %1152, align 4, !tbaa !61
  %1154 = icmp eq i32 %1153, -1
  %1155 = load i32, ptr %1139, align 4, !tbaa !61
  %1156 = zext i32 %1155 to i64
  %1157 = getelementptr inbounds [3 x float], ptr %1140, i64 %1156
  %1158 = getelementptr inbounds i32, ptr %1139, i64 1
  %1159 = load i32, ptr %1158, align 4, !tbaa !61
  %1160 = zext i32 %1159 to i64
  %1161 = getelementptr inbounds [3 x float], ptr %1140, i64 %1160
  %1162 = getelementptr inbounds i32, ptr %1139, i64 2
  %1163 = load i32, ptr %1162, align 4, !tbaa !61
  %1164 = zext i32 %1163 to i64
  %1165 = getelementptr inbounds [3 x float], ptr %1140, i64 %1164
  br i1 %1154, label %1166, label %1178

1166:                                             ; preds = %1135
  %1167 = call i32 @isect_point_tri_v2(ptr noundef nonnull %8, ptr noundef %1157, ptr noundef %1161, ptr noundef %1165) #8
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1198

1169:                                             ; preds = %1166
  %1170 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %1157, ptr noundef %1161) #8
  %1171 = fcmp olt float %1170, %980
  br i1 %1171, label %1198, label %1172

1172:                                             ; preds = %1169
  %1173 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %1161, ptr noundef %1165) #8
  %1174 = fcmp olt float %1173, %980
  br i1 %1174, label %1198, label %1175

1175:                                             ; preds = %1172
  %1176 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %1165, ptr noundef %1157) #8
  %1177 = fcmp olt float %1176, %980
  br i1 %1177, label %1198, label %1204

1178:                                             ; preds = %1135
  %1179 = zext i32 %1153 to i64
  %1180 = getelementptr inbounds [3 x float], ptr %1140, i64 %1179
  %1181 = call i32 @isect_point_tri_v2(ptr noundef nonnull %8, ptr noundef %1157, ptr noundef %1161, ptr noundef %1165) #8
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1183, label %1198

1183:                                             ; preds = %1178
  %1184 = call i32 @isect_point_tri_v2(ptr noundef nonnull %8, ptr noundef %1157, ptr noundef %1165, ptr noundef %1180) #8
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1186, label %1198

1186:                                             ; preds = %1183
  %1187 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %1157, ptr noundef %1161) #8
  %1188 = fcmp olt float %1187, %980
  br i1 %1188, label %1198, label %1189

1189:                                             ; preds = %1186
  %1190 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %1161, ptr noundef %1165) #8
  %1191 = fcmp olt float %1190, %980
  br i1 %1191, label %1198, label %1192

1192:                                             ; preds = %1189
  %1193 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %1165, ptr noundef %1180) #8
  %1194 = fcmp olt float %1193, %980
  br i1 %1194, label %1198, label %1195

1195:                                             ; preds = %1192
  %1196 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %1180, ptr noundef %1157) #8
  %1197 = fcmp olt float %1196, %980
  br i1 %1197, label %1198, label %1204

1198:                                             ; preds = %1195, %1192, %1189, %1186, %1183, %1178, %1175, %1172, %1169, %1166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  %1199 = zext i32 %1136 to i64
  %1200 = getelementptr inbounds ptr, ptr %987, i64 %1199
  call void @BLI_linklist_prepend_arena(ptr noundef %1200, ptr noundef %1112, ptr noundef %933) #8
  %1201 = getelementptr inbounds i32, ptr %990, i64 %1199
  %1202 = load i32, ptr %1201, align 4, !tbaa !61
  %1203 = add i32 %1202, 1
  store i32 %1203, ptr %1201, align 4, !tbaa !61
  br label %1205

1204:                                             ; preds = %1195, %1175
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  br label %1205

1205:                                             ; preds = %1204, %1198
  %1206 = add i32 %1137, 1
  %1207 = add i32 %1136, 1
  %1208 = icmp ugt i32 %1206, %1118
  br i1 %1208, label %1209, label %1135, !llvm.loop !115

1209:                                             ; preds = %1205, %1128
  %1210 = add i32 %1129, 1
  %1211 = icmp ugt i32 %1210, %1124
  br i1 %1211, label %1212, label %1128, !llvm.loop !116

1212:                                             ; preds = %1209, %1087, %1075
  %1213 = add nuw nsw i64 %994, 1
  %1214 = getelementptr inbounds i32, ptr %995, i64 4
  %1215 = load i32, ptr %923, align 8, !tbaa !107
  %1216 = zext i32 %1215 to i64
  %1217 = icmp ult i64 %1213, %1216
  br i1 %1217, label %993, label %1218, !llvm.loop !117

1218:                                             ; preds = %1212, %962
  %1219 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1220 = call ptr %1219(i64 noundef %986, ptr noundef nonnull @__func__.layer_bucket_init) #8
  %1221 = icmp eq i32 %983, 0
  br i1 %1221, label %1256, label %1222

1222:                                             ; preds = %1218
  %1223 = zext i32 %983 to i64
  br label %1224

1224:                                             ; preds = %1222, %1253
  %1225 = phi i64 [ 0, %1222 ], [ %1254, %1253 ]
  %1226 = getelementptr inbounds i32, ptr %990, i64 %1225
  %1227 = load i32, ptr %1226, align 4, !tbaa !61
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1251, label %1229

1229:                                             ; preds = %1224
  %1230 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1231 = add i32 %1227, 1
  %1232 = zext i32 %1231 to i64
  %1233 = shl nuw nsw i64 %1232, 2
  %1234 = call ptr %1230(i64 noundef %1233, ptr noundef nonnull @__func__.layer_bucket_init) #8
  %1235 = getelementptr inbounds ptr, ptr %1220, i64 %1225
  store ptr %1234, ptr %1235, align 8, !tbaa !34
  %1236 = getelementptr inbounds ptr, ptr %987, i64 %1225
  %1237 = load ptr, ptr %1236, align 8, !tbaa !34
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %1249, label %1239

1239:                                             ; preds = %1229, %1239
  %1240 = phi ptr [ %1247, %1239 ], [ %1237, %1229 ]
  %1241 = phi ptr [ %1246, %1239 ], [ %1234, %1229 ]
  %1242 = getelementptr inbounds %struct.LinkNode, ptr %1240, i64 0, i32 1
  %1243 = load ptr, ptr %1242, align 8, !tbaa !118
  %1244 = ptrtoint ptr %1243 to i64
  %1245 = trunc i64 %1244 to i32
  store i32 %1245, ptr %1241, align 4, !tbaa !61
  %1246 = getelementptr inbounds i32, ptr %1241, i64 1
  %1247 = load ptr, ptr %1240, align 8, !tbaa !34
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1249, label %1239, !llvm.loop !120

1249:                                             ; preds = %1239, %1229
  %1250 = phi ptr [ %1234, %1229 ], [ %1246, %1239 ]
  store i32 -1, ptr %1250, align 4, !tbaa !61
  br label %1253

1251:                                             ; preds = %1224
  %1252 = getelementptr inbounds ptr, ptr %1220, i64 %1225
  store ptr null, ptr %1252, align 8, !tbaa !34
  br label %1253

1253:                                             ; preds = %1251, %1249
  %1254 = add nuw nsw i64 %1225, 1
  %1255 = icmp eq i64 %1254, %1223
  br i1 %1255, label %1256, label %1224, !llvm.loop !121

1256:                                             ; preds = %1253, %1218
  %1257 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 4
  store ptr %1220, ptr %1257, align 8, !tbaa !47
  %1258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %1258(ptr noundef %987) #8
  %1259 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %1259(ptr noundef %990) #8
  call void @BLI_memarena_free(ptr noundef %933) #8
  call void @BLI_rctf_union(ptr noundef nonnull %41, ptr noundef nonnull %17) #8
  br label %1266

1260:                                             ; preds = %919
  %1261 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %1261(ptr noundef %722) #8
  %1262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %1262(ptr noundef %738) #8
  store i32 0, ptr %923, align 8, !tbaa !107
  %1263 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 1
  %1264 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 4
  %1265 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1263, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1264, i8 0, i64 24, i1 false)
  call void @BLI_rctf_init(ptr noundef nonnull %1265, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00) #8
  br label %1266

1266:                                             ; preds = %1260, %1256
  %1267 = getelementptr inbounds %struct.MaskLayer, ptr %68, i64 0, i32 7
  %1268 = load float, ptr %1267, align 8, !tbaa !122
  %1269 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 8
  store float %1268, ptr %1269, align 8, !tbaa !123
  %1270 = getelementptr inbounds %struct.MaskLayer, ptr %68, i64 0, i32 8
  %1271 = load i8, ptr %1270, align 4, !tbaa !124
  %1272 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 9
  store i8 %1271, ptr %1272, align 4, !tbaa !125
  %1273 = getelementptr inbounds %struct.MaskLayer, ptr %68, i64 0, i32 9
  %1274 = load i8, ptr %1273, align 1, !tbaa !126
  %1275 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 10
  store i8 %1274, ptr %1275, align 1, !tbaa !127
  %1276 = getelementptr inbounds %struct.MaskLayer, ptr %68, i64 0, i32 10
  %1277 = load i8, ptr %1276, align 2, !tbaa !128
  %1278 = getelementptr inbounds %struct.MaskRasterLayer, ptr %921, i64 %922, i32 11
  store i8 %1277, ptr %1278, align 2, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  call void @BLI_scanfill_end_arena(ptr noundef nonnull %11, ptr noundef %42) #8
  br label %1279

1279:                                             ; preds = %1266, %74
  %1280 = phi i32 [ %77, %74 ], [ %69, %1266 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #8
  %1281 = add i32 %1280, 1
  %1282 = load ptr, ptr %68, align 8, !tbaa !34
  %1283 = icmp eq ptr %1282, null
  br i1 %1283, label %1284, label %67, !llvm.loop !130

1284:                                             ; preds = %1279, %7
  call void @BLI_memarena_free(ptr noundef %42) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_scanfill_begin_arena(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_mask_spline_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BKE_mask_spline_feather_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_do_minmax_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_scanfill_calc_self_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_scanfill_calc_ex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_scanfill_end_arena(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local float @BKE_maskrasterize_handle_sample(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %227, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !43
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %11 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  br label %12

12:                                               ; preds = %7, %222
  %13 = phi float [ 0.000000e+00, %7 ], [ %223, %222 ]
  %14 = phi ptr [ %8, %7 ], [ %225, %222 ]
  %15 = phi i32 [ 0, %7 ], [ %224, %222 ]
  %16 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 8
  %17 = load float, ptr %16, align 8, !tbaa !123
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %178

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 3
  %21 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %20, ptr noundef %1) #8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %178, label %23

23:                                               ; preds = %19
  %24 = load float, ptr %1, align 4, !tbaa !62
  %25 = load float, ptr %20, align 8, !tbaa !113
  %26 = fsub float %24, %25
  %27 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !62
  %29 = fmul float %26, %28
  %30 = fptoui float %29 to i32
  %31 = load float, ptr %9, align 4, !tbaa !62
  %32 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 3, i32 2
  %33 = load float, ptr %32, align 8, !tbaa !114
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 5, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !62
  %37 = fmul float %34, %36
  %38 = fptoui float %37 to i32
  %39 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !48
  %41 = mul i32 %40, %38
  %42 = add i32 %41, %30
  %43 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = zext i32 %42 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %150, label %49

49:                                               ; preds = %23
  %50 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds [3 x float], ptr %53, i64 0, i64 2
  %55 = getelementptr inbounds [3 x float], ptr %53, i64 1, i64 2
  %56 = getelementptr inbounds [3 x float], ptr %53, i64 2, i64 2
  %57 = getelementptr inbounds [3 x float], ptr %53, i64 3, i64 2
  br label %58

58:                                               ; preds = %146, %49
  %59 = phi ptr [ %47, %49 ], [ %147, %146 ]
  %60 = phi float [ 1.000000e+00, %49 ], [ %148, %146 ]
  %61 = load i32, ptr %59, align 4, !tbaa !61
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %150, label %63

63:                                               ; preds = %58
  %64 = zext i32 %61 to i64
  %65 = getelementptr inbounds [4 x i32], ptr %51, i64 %64
  %66 = getelementptr inbounds i32, ptr %65, i64 3
  %67 = load i32, ptr %66, align 4, !tbaa !61
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load i32, ptr %65, align 4, !tbaa !61
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [3 x float], ptr %53, i64 %71
  %73 = getelementptr inbounds i32, ptr %65, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !61
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [3 x float], ptr %53, i64 %75
  %77 = getelementptr inbounds i32, ptr %65, i64 2
  %78 = load i32, ptr %77, align 4, !tbaa !61
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [3 x float], ptr %53, i64 %79
  %81 = call zeroext i8 @isect_point_tri_v2_cw(ptr noundef nonnull %1, ptr noundef %72, ptr noundef %76, ptr noundef %80) #8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %137, label %138

83:                                               ; preds = %63
  %84 = load float, ptr %54, align 4, !tbaa !62
  %85 = fcmp olt float %84, %60
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load float, ptr %55, align 4, !tbaa !62
  %88 = fcmp olt float %87, %60
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load float, ptr %56, align 4, !tbaa !62
  %91 = fcmp olt float %90, %60
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load float, ptr %57, align 4, !tbaa !62
  %94 = fcmp olt float %93, %60
  br i1 %94, label %95, label %137

95:                                               ; preds = %92, %89, %86, %83
  %96 = load i32, ptr %65, align 4, !tbaa !61
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [3 x float], ptr %53, i64 %97
  %99 = getelementptr inbounds i32, ptr %65, i64 1
  %100 = load i32, ptr %99, align 4, !tbaa !61
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [3 x float], ptr %53, i64 %101
  %103 = getelementptr inbounds i32, ptr %65, i64 2
  %104 = load i32, ptr %103, align 4, !tbaa !61
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [3 x float], ptr %53, i64 %105
  %107 = call i32 @isect_point_tri_v2(ptr noundef nonnull %1, ptr noundef %98, ptr noundef %102, ptr noundef %106) #8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %95
  %110 = load i32, ptr %65, align 4, !tbaa !61
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [3 x float], ptr %53, i64 %111
  %113 = load i32, ptr %103, align 4, !tbaa !61
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [3 x float], ptr %53, i64 %114
  %116 = load i32, ptr %66, align 4, !tbaa !61
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [3 x float], ptr %53, i64 %117
  %119 = call i32 @isect_point_tri_v2(ptr noundef nonnull %1, ptr noundef %112, ptr noundef %115, ptr noundef %118) #8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %109, %95
  %122 = load i32, ptr %65, align 4, !tbaa !61
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [3 x float], ptr %53, i64 %123
  %125 = load i32, ptr %99, align 4, !tbaa !61
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [3 x float], ptr %53, i64 %126
  %128 = load i32, ptr %103, align 4, !tbaa !61
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [3 x float], ptr %53, i64 %129
  %131 = load i32, ptr %66, align 4, !tbaa !61
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [3 x float], ptr %53, i64 %132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @barycentric_weights_v2_quad(ptr noundef %124, ptr noundef %127, ptr noundef %130, ptr noundef %133, ptr noundef nonnull %1, ptr noundef nonnull %3) #8
  %134 = load float, ptr %10, align 8, !tbaa !62
  %135 = load float, ptr %11, align 4, !tbaa !62
  %136 = fadd float %134, %135
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %138

137:                                              ; preds = %109, %92, %69
  br label %138

138:                                              ; preds = %137, %121, %69
  %139 = phi float [ 1.000000e+00, %137 ], [ %136, %121 ], [ 0.000000e+00, %69 ]
  %140 = fcmp olt float %139, %60
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = fcmp oeq float %139, 0.000000e+00
  br i1 %142, label %146, label %143

143:                                              ; preds = %141, %138
  %144 = phi float [ %139, %141 ], [ %60, %138 ]
  %145 = getelementptr inbounds i32, ptr %59, i64 1
  br label %146

146:                                              ; preds = %143, %141
  %147 = phi ptr [ %145, %143 ], [ %59, %141 ]
  %148 = phi float [ %144, %143 ], [ %139, %141 ]
  %149 = phi i1 [ true, %143 ], [ false, %141 ]
  br i1 %149, label %58, label %150, !llvm.loop !131

150:                                              ; preds = %58, %146, %23
  %151 = phi float [ 1.000000e+00, %23 ], [ 0.000000e+00, %146 ], [ %60, %58 ]
  %152 = fsub float 1.000000e+00, %151
  %153 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 11
  %154 = load i8, ptr %153, align 2, !tbaa !129
  switch i8 %154, label %170 [
    i8 0, label %155
    i8 1, label %161
    i8 2, label %166
    i8 3, label %168
  ]

155:                                              ; preds = %150
  %156 = fmul float %152, 3.000000e+00
  %157 = fmul float %152, -2.000000e+00
  %158 = fmul float %152, %157
  %159 = fmul float %152, %158
  %160 = call float @llvm.fmuladd.f32(float %156, float %152, float %159)
  br label %170

161:                                              ; preds = %150
  %162 = fneg float %152
  %163 = fmul float %152, %162
  %164 = call float @llvm.fmuladd.f32(float %152, float 2.000000e+00, float %163)
  %165 = call float @sqrtf(float noundef %164) #8
  br label %170

166:                                              ; preds = %150
  %167 = call float @sqrtf(float noundef %152) #8
  br label %170

168:                                              ; preds = %150
  %169 = fmul float %152, %152
  br label %170

170:                                              ; preds = %150, %168, %166, %161, %155
  %171 = phi float [ %152, %150 ], [ %169, %168 ], [ %167, %166 ], [ %165, %161 ], [ %160, %155 ]
  %172 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 9
  %173 = load i8, ptr %172, align 4, !tbaa !125
  %174 = icmp eq i8 %173, 5
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load float, ptr %16, align 8, !tbaa !123
  %177 = fmul float %171, %176
  br label %178

178:                                              ; preds = %12, %19, %170, %175
  %179 = phi float [ %177, %175 ], [ %171, %170 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %12 ]
  %180 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 10
  %181 = load i8, ptr %180, align 1, !tbaa !127
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  %184 = fsub float 1.000000e+00, %179
  %185 = select i1 %183, float %179, float %184
  %186 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 0, i32 9
  %187 = load i8, ptr %186, align 4, !tbaa !125
  switch i8 %187, label %214 [
    i8 7, label %188
    i8 8, label %191
    i8 0, label %194
    i8 1, label %196
    i8 2, label %198
    i8 3, label %201
    i8 4, label %204
    i8 5, label %206
    i8 6, label %211
  ]

188:                                              ; preds = %178
  %189 = fsub float 1.000000e+00, %13
  %190 = call float @llvm.fmuladd.f32(float %185, float %189, float %13)
  br label %216

191:                                              ; preds = %178
  %192 = fneg float %185
  %193 = call float @llvm.fmuladd.f32(float %192, float %13, float %13)
  br label %216

194:                                              ; preds = %178
  %195 = fadd float %13, %185
  br label %216

196:                                              ; preds = %178
  %197 = fsub float %13, %185
  br label %216

198:                                              ; preds = %178
  %199 = fcmp ogt float %13, %185
  %200 = select i1 %199, float %13, float %185
  br label %216

201:                                              ; preds = %178
  %202 = fcmp olt float %13, %185
  %203 = select i1 %202, float %13, float %185
  br label %216

204:                                              ; preds = %178
  %205 = fmul float %13, %185
  br label %216

206:                                              ; preds = %178
  %207 = load float, ptr %16, align 8, !tbaa !123
  %208 = fsub float 1.000000e+00, %207
  %209 = fmul float %185, %207
  %210 = call float @llvm.fmuladd.f32(float %13, float %208, float %209)
  br label %216

211:                                              ; preds = %178
  %212 = fsub float %13, %185
  %213 = call float @llvm.fabs.f32(float %212)
  br label %216

214:                                              ; preds = %178
  %215 = fadd float %13, %185
  br label %216

216:                                              ; preds = %214, %211, %206, %204, %201, %198, %196, %194, %191, %188
  %217 = phi float [ %215, %214 ], [ %213, %211 ], [ %210, %206 ], [ %205, %204 ], [ %203, %201 ], [ %200, %198 ], [ %197, %196 ], [ %195, %194 ], [ %193, %191 ], [ %190, %188 ]
  %218 = fcmp olt float %217, 0.000000e+00
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = fcmp ogt float %217, 1.000000e+00
  br i1 %220, label %221, label %222

221:                                              ; preds = %219
  br label %222

222:                                              ; preds = %216, %219, %221
  %223 = phi float [ 1.000000e+00, %221 ], [ %217, %219 ], [ 0.000000e+00, %216 ]
  %224 = add nuw i32 %15, 1
  %225 = getelementptr inbounds %struct.MaskRasterLayer, ptr %14, i64 1
  %226 = icmp eq i32 %224, %5
  br i1 %226, label %227, label %12, !llvm.loop !132

227:                                              ; preds = %222, %2
  %228 = phi float [ 0.000000e+00, %2 ], [ %223, %222 ]
  ret float %228
}

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_maskrasterize_buffer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = uitofp i32 %1 to float
  %7 = fdiv float 1.000000e+00, %6
  %8 = uitofp i32 %2 to float
  %9 = fdiv float 1.000000e+00, %8
  %10 = fmul float %7, 5.000000e-01
  %11 = fmul float %9, 5.000000e-01
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %15 = icmp eq i32 %1, 0
  br label %16

16:                                               ; preds = %13, %33
  %17 = phi i32 [ 0, %13 ], [ %34, %33 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %18 = uitofp i32 %17 to float
  %19 = call float @llvm.fmuladd.f32(float %18, float %9, float %11)
  store float %19, ptr %14, align 4, !tbaa !62
  br i1 %15, label %33, label %20

20:                                               ; preds = %16
  %21 = mul i32 %17, %1
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i32 [ %30, %22 ], [ 0, %20 ]
  %24 = phi i32 [ %31, %22 ], [ %21, %20 ]
  %25 = uitofp i32 %23 to float
  %26 = call float @llvm.fmuladd.f32(float %25, float %7, float %10)
  store float %26, ptr %5, align 4, !tbaa !62
  %27 = call float @BKE_maskrasterize_handle_sample(ptr noundef %0, ptr noundef nonnull %5)
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds float, ptr %3, i64 %28
  store float %27, ptr %29, align 4, !tbaa !62
  %30 = add nuw i32 %23, 1
  %31 = add i32 %24, 1
  %32 = icmp eq i32 %30, %1
  br i1 %32, label %33, label %22, !llvm.loop !133

33:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %34 = add nuw i32 %17, 1
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %16, !llvm.loop !134

36:                                               ; preds = %33, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

declare void @BLI_linklist_prepend_arena(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @isect_point_tri_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare zeroext i8 @isect_point_tri_v2_cw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @barycentric_weights_v2_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 8}
!39 = !{!"MaskRasterHandle", !35, i64 0, !40, i64 8, !41, i64 12}
!40 = !{!"int", !36, i64 0}
!41 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!42 = !{!"float", !36, i64 0}
!43 = !{!39, !35, i64 0}
!44 = !{!45, !35, i64 8}
!45 = !{!"MaskRasterLayer", !40, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !35, i64 40, !36, i64 48, !40, i64 56, !40, i64 60, !42, i64 64, !36, i64 68, !36, i64 69, !36, i64 70}
!46 = !{!45, !35, i64 16}
!47 = !{!45, !35, i64 40}
!48 = !{!45, !40, i64 56}
!49 = !{!45, !40, i64 60}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !51, !52}
!54 = !{!55, !36, i64 143}
!55 = !{!"MaskLayer", !35, i64 0, !35, i64 8, !36, i64 16, !56, i64 80, !56, i64 96, !35, i64 112, !35, i64 120, !42, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!56 = !{!"ListBase", !35, i64 0, !35, i64 8}
!57 = !{!58, !59, i64 16}
!58 = !{!"MaskSpline", !35, i64 0, !35, i64 8, !59, i64 16, !36, i64 18, !36, i64 19, !40, i64 20, !35, i64 24, !60, i64 32, !35, i64 216}
!59 = !{!"short", !36, i64 0}
!60 = !{!"MaskParent", !40, i64 0, !40, i64 4, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!61 = !{!40, !40, i64 0}
!62 = !{!42, !42, i64 0}
!63 = !{!64, !59, i64 48}
!64 = !{!"ScanFillContext", !56, i64 0, !56, i64 16, !56, i64 32, !59, i64 48, !35, i64 56}
!65 = distinct !{!65, !51, !52}
!66 = distinct !{!66, !51, !52}
!67 = distinct !{!67, !51, !52}
!68 = !{!36, !36, i64 0}
!69 = !{!70, !40, i64 44}
!70 = !{!"ScanFillVert", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 24, !36, i64 36, !40, i64 44, !59, i64 48, !36, i64 50, !40, i64 51, !40, i64 51}
!71 = distinct !{!71, !51, !52}
!72 = !{!64, !35, i64 8}
!73 = !{!70, !35, i64 0}
!74 = distinct !{!74, !51, !52}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = !{!78, !40, i64 0}
!78 = !{!"MaskRasterSplineInfo", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16}
!79 = !{!78, !40, i64 4}
!80 = distinct !{!80, !51, !52}
!81 = !{!78, !40, i64 8}
!82 = !{!78, !40, i64 12}
!83 = distinct !{!83, !51, !52}
!84 = distinct !{!84, !51, !52}
!85 = !{!78, !36, i64 16}
!86 = distinct !{!86, !51, !52}
!87 = !{!64, !35, i64 0}
!88 = distinct !{!88, !51, !52}
!89 = !{!55, !36, i64 142}
!90 = distinct !{!90, !51, !52}
!91 = !{!64, !35, i64 32}
!92 = !{!93, !35, i64 32}
!93 = !{!"ScanFillFace", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!94 = !{!93, !35, i64 24}
!95 = !{!93, !35, i64 16}
!96 = !{!93, !35, i64 0}
!97 = distinct !{!97, !51, !52}
!98 = !{!99, !35, i64 16}
!99 = !{!"ScanFillEdge", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !59, i64 32, !40, i64 34, !40, i64 34, !36, i64 35}
!100 = !{!99, !35, i64 24}
!101 = !{!99, !35, i64 0}
!102 = distinct !{!102, !51, !52}
!103 = distinct !{!103, !51, !52}
!104 = distinct !{!104, !51, !52}
!105 = distinct !{!105, !51, !52}
!106 = distinct !{!106, !51, !52}
!107 = !{!45, !40, i64 0}
!108 = !{i64 0, i64 4, !62, i64 4, i64 4, !62, i64 8, i64 4, !62, i64 12, i64 4, !62}
!109 = !{!41, !42, i64 4}
!110 = !{!41, !42, i64 0}
!111 = !{!41, !42, i64 12}
!112 = !{!41, !42, i64 8}
!113 = !{!45, !42, i64 24}
!114 = !{!45, !42, i64 32}
!115 = distinct !{!115, !51, !52}
!116 = distinct !{!116, !51, !52}
!117 = distinct !{!117, !51, !52}
!118 = !{!119, !35, i64 8}
!119 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!120 = distinct !{!120, !51, !52}
!121 = distinct !{!121, !51, !52}
!122 = !{!55, !42, i64 128}
!123 = !{!45, !42, i64 64}
!124 = !{!55, !36, i64 132}
!125 = !{!45, !36, i64 68}
!126 = !{!55, !36, i64 133}
!127 = !{!45, !36, i64 69}
!128 = !{!55, !36, i64 134}
!129 = !{!45, !36, i64 70}
!130 = distinct !{!130, !51, !52}
!131 = distinct !{!131, !51, !52}
!132 = distinct !{!132, !51, !52}
!133 = distinct !{!133, !51, !52}
!134 = distinct !{!134, !51, !52}
