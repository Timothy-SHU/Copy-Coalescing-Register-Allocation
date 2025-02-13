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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_maskrasterize_handle_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 32, ptr noundef nonnull @.str) #14
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_maskrasterize_handle_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %55, label %6

6:                                                ; preds = %1, %49
  %7 = phi i32 [ %50, %49 ], [ 0, %1 ]
  %8 = phi ptr [ %51, %49 ], [ %4, %1 ]
  %9 = getelementptr inbounds %struct.MaskRasterLayer, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #14
  br label %14

14:                                               ; preds = %12, %6
  %15 = getelementptr inbounds %struct.MaskRasterLayer, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #14
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.MaskRasterLayer, ptr %8, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MaskRasterLayer, ptr %8, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.MaskRasterLayer, ptr %8, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !49
  %29 = mul i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %24
  %32 = zext i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %41
  %34 = phi i64 [ 0, %31 ], [ %42, %41 ]
  %35 = load ptr, ptr %21, align 8, !tbaa !47
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %40(ptr noundef nonnull %37) #14
  br label %41

41:                                               ; preds = %39, %33
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, %32
  br i1 %43, label %44, label %33, !llvm.loop !50

44:                                               ; preds = %41
  %45 = load ptr, ptr %21, align 8, !tbaa !47
  br label %46

46:                                               ; preds = %44, %24
  %47 = phi ptr [ %45, %44 ], [ %22, %24 ]
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %48(ptr noundef %47) #14
  br label %49

49:                                               ; preds = %20, %46
  %50 = add nuw i32 %7, 1
  %51 = getelementptr inbounds %struct.MaskRasterLayer, ptr %8, i64 1
  %52 = icmp eq i32 %50, %3
  br i1 %52, label %53, label %6, !llvm.loop !52

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !43
  br label %55

55:                                               ; preds = %53, %1
  %56 = phi ptr [ %54, %53 ], [ %4, %1 ]
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %57(ptr noundef %56) #14
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %58(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_maskrasterize_handle_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.rctf, align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.ScanFillContext, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.rctf, align 4
  %19 = alloca %struct.ListBase, align 8
  %20 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) @__const.BKE_maskrasterize_handle_init.default_bounds, i64 16, i1 false)
  %21 = tail call fastcc i32 @min_ii(i32 noundef %2, i32 noundef %3) #16
  %22 = sitofp i32 %21 to float
  %23 = fdiv float 1.000000e+00, %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %24 = icmp eq i8 %4, 0
  %25 = insertelement <2 x i32> poison, i32 %2, i64 0
  %26 = insertelement <2 x i32> %25, i32 %3, i64 1
  %27 = shufflevector <2 x i32> %26, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %28 = icmp sle <2 x i32> %26, %27
  %29 = sitofp <2 x i32> %27 to <2 x float>
  %30 = insertelement <2 x i1> poison, i1 %24, i64 0
  %31 = shufflevector <2 x i1> %30, <2 x i1> poison, <2 x i32> zeroinitializer
  %32 = or <2 x i1> %28, %31
  %33 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %34 = fdiv <2 x float> %29, %33
  %35 = select <2 x i1> %32, <2 x float> <float 1.000000e+00, float 1.000000e+00>, <2 x float> %34
  store <2 x float> %35, ptr %9, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.BKE_maskrasterize_handle_init.zvec, i64 12, i1 false)
  %36 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %37 = tail call i32 @BLI_countlist(ptr noundef nonnull %36) #14
  %38 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 1
  store i32 %37, ptr %38, align 8, !tbaa !38
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %40 = zext i32 %37 to i64
  %41 = mul nuw nsw i64 %40, 72
  %42 = tail call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.1) #14
  store ptr %42, ptr %0, align 8, !tbaa !43
  %43 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 2
  tail call void @BLI_rctf_init_minmax(ptr noundef nonnull %43) #14
  %44 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #14
  %45 = load ptr, ptr %36, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %663, label %47

47:                                               ; preds = %7
  %48 = icmp eq i8 %6, 0
  %49 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %50 = getelementptr inbounds %struct.ScanFillContext, ptr %11, i64 0, i32 3
  %51 = icmp eq i32 %2, %3
  %52 = or i1 %51, %24
  %53 = icmp eq i8 %5, 1
  %54 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %55 = fmul float %23, 2.000000e+00
  %56 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  %57 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %58 = getelementptr inbounds %struct.ScanFillContext, ptr %11, i64 0, i32 1
  %59 = getelementptr inbounds %struct.ScanFillContext, ptr %11, i64 0, i32 2
  %60 = extractelement <2 x i1> %28, i64 1
  %61 = extractelement <2 x float> %34, i64 1
  %62 = extractelement <2 x float> %34, i64 0
  br label %63

63:                                               ; preds = %47, %658
  %64 = phi ptr [ %45, %47 ], [ %661, %658 ]
  %65 = phi i32 [ 0, %47 ], [ %660, %658 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #15
  %66 = getelementptr inbounds %struct.MaskLayer, ptr %64, i64 0, i32 13
  %67 = load i8, ptr %66, align 1, !tbaa !54
  %68 = and i8 %67, 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, ptr %38, align 8, !tbaa !38
  %72 = add i32 %71, -1
  store i32 %72, ptr %38, align 8, !tbaa !38
  %73 = add i32 %65, -1
  br label %658

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.MaskLayer, ptr %64, i64 0, i32 3
  %76 = call i32 @BLI_countlist(ptr noundef nonnull %75) #14
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %78 = zext i32 %76 to i64
  %79 = mul nuw nsw i64 %78, 20
  %80 = call ptr %77(i64 noundef %79, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #14
  call void @BLI_scanfill_begin_arena(ptr noundef nonnull %11, ptr noundef %44) #14
  %81 = load ptr, ptr %75, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %382, label %83

83:                                               ; preds = %74, %379
  %84 = phi ptr [ %380, %379 ], [ %81, %74 ]
  %85 = phi i32 [ %371, %379 ], [ 0, %74 ]
  %86 = phi i32 [ %370, %379 ], [ 0, %74 ]
  %87 = phi i32 [ %369, %379 ], [ 0, %74 ]
  %88 = phi i32 [ %368, %379 ], [ 0, %74 ]
  %89 = getelementptr inbounds %struct.MaskSpline, ptr %84, i64 0, i32 2
  %90 = load i16, ptr %89, align 8, !tbaa !57
  %91 = trunc i16 %90 to i8
  %92 = lshr i8 %91, 1
  %93 = and i8 %92, 1
  %94 = and i16 %90, 4
  %95 = icmp eq i16 %94, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  %96 = call i32 @BKE_mask_spline_resolution(ptr noundef nonnull %84, i32 noundef %2, i32 noundef %3) #14
  %97 = lshr i32 %96, 2
  %98 = call i32 @BKE_mask_spline_feather_resolution(ptr noundef nonnull %84, i32 noundef %2, i32 noundef %3) #14
  %99 = lshr i32 %98, 2
  %100 = call i32 @llvm.umax.i32(i32 %97, i32 %99)
  %101 = call i32 @llvm.umin.i32(i32 %100, i32 512)
  %102 = call i32 @llvm.umax.i32(i32 %101, i32 4)
  %103 = call ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef nonnull %84, ptr noundef nonnull %12, i32 noundef %102) #14
  br i1 %48, label %106, label %104

104:                                              ; preds = %83
  %105 = call ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef nonnull %84, ptr noundef nonnull %13, i32 noundef %102, i8 noundef zeroext 0) #14
  br label %107

106:                                              ; preds = %83
  store i32 0, ptr %13, align 4, !tbaa !61
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi ptr [ %105, %104 ], [ null, %106 ]
  %109 = load i32, ptr %12, align 4, !tbaa !61
  %110 = icmp ugt i32 %109, 3
  br i1 %110, label %111, label %366

111:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  store float 0.000000e+00, ptr %49, align 4, !tbaa !53
  %112 = load i16, ptr %50, align 8, !tbaa !62
  %113 = add i16 %112, 1
  store i16 %113, ptr %50, align 8, !tbaa !62
  br i1 %52, label %152, label %114

114:                                              ; preds = %111
  br i1 %60, label %119, label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %13, align 4, !tbaa !61
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, ptr null, ptr %108
  br label %125

119:                                              ; preds = %114
  %120 = getelementptr inbounds [2 x float], ptr %103, i64 0, i64 1
  %121 = load i32, ptr %13, align 4, !tbaa !61
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds [2 x float], ptr %108, i64 0, i64 1
  %124 = select i1 %122, ptr null, ptr %123
  br label %125

125:                                              ; preds = %119, %115
  %126 = phi i32 [ %116, %115 ], [ %121, %119 ]
  %127 = phi ptr [ %103, %115 ], [ %120, %119 ]
  %128 = phi ptr [ %118, %115 ], [ %124, %119 ]
  %129 = phi float [ %61, %115 ], [ %62, %119 ]
  br label %130

130:                                              ; preds = %125, %130
  %131 = phi i32 [ 0, %125 ], [ %137, %130 ]
  %132 = phi ptr [ %127, %125 ], [ %138, %130 ]
  %133 = load float, ptr %132, align 4, !tbaa !53
  %134 = fadd float %133, -5.000000e-01
  %135 = fdiv float %134, %129
  %136 = fadd float %135, 5.000000e-01
  store float %136, ptr %132, align 4, !tbaa !53
  %137 = add nuw i32 %131, 1
  %138 = getelementptr inbounds float, ptr %132, i64 2
  %139 = icmp eq i32 %137, %109
  br i1 %139, label %140, label %130, !llvm.loop !64

140:                                              ; preds = %130
  %141 = icmp eq i32 %126, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %140, %142
  %143 = phi i32 [ %149, %142 ], [ 0, %140 ]
  %144 = phi ptr [ %150, %142 ], [ %128, %140 ]
  %145 = load float, ptr %144, align 4, !tbaa !53
  %146 = fadd float %145, -5.000000e-01
  %147 = fdiv float %146, %129
  %148 = fadd float %147, 5.000000e-01
  store float %148, ptr %144, align 4, !tbaa !53
  %149 = add nuw i32 %143, 1
  %150 = getelementptr inbounds float, ptr %144, i64 2
  %151 = icmp eq i32 %149, %126
  br i1 %151, label %152, label %142, !llvm.loop !65

152:                                              ; preds = %142, %140, %111
  br i1 %53, label %153, label %161

153:                                              ; preds = %152
  br i1 %48, label %154, label %160

154:                                              ; preds = %153
  store i32 %109, ptr %13, align 4, !tbaa !61
  %155 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %156 = zext i32 %109 to i64
  %157 = shl nuw nsw i64 %156, 3
  %158 = call ptr %155(i64 noundef %157, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #14
  %159 = load i32, ptr %12, align 4, !tbaa !61
  call fastcc void @maskrasterize_spline_differentiate_point_outset(ptr noundef %158, ptr noundef %103, i32 noundef %159, float noundef %23, i8 noundef zeroext 0) #16
  br label %161

160:                                              ; preds = %153
  call fastcc void @maskrasterize_spline_differentiate_point_outset(ptr noundef %108, ptr noundef %103, i32 noundef %109, float noundef %23, i8 noundef zeroext 1) #16
  br label %161

161:                                              ; preds = %154, %160, %152
  %162 = phi ptr [ %158, %154 ], [ %108, %160 ], [ %108, %152 ]
  br i1 %95, label %163, label %236

163:                                              ; preds = %161
  %164 = load i16, ptr %89, align 8, !tbaa !57
  %165 = and i16 %164, 8
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load i32, ptr %13, align 4, !tbaa !61
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %84, ptr noundef %162, i32 noundef %168) #14
  br label %169

169:                                              ; preds = %167, %163
  call fastcc void @copy_v2_v2(ptr noundef nonnull %14, ptr noundef %103) #16
  %170 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %14) #14
  %171 = getelementptr inbounds %struct.ScanFillVert, ptr %170, i64 0, i32 2
  store i32 %86, ptr %171, align 8, !tbaa !66
  %172 = load i32, ptr %12, align 4, !tbaa !61
  %173 = add i32 %172, %86
  %174 = getelementptr inbounds %struct.ScanFillVert, ptr %170, i64 0, i32 5
  store i32 %173, ptr %174, align 4, !tbaa !67
  %175 = add i32 %86, 1
  %176 = icmp ugt i32 %172, 1
  br i1 %176, label %177, label %190

177:                                              ; preds = %169, %177
  %178 = phi i64 [ %186, %177 ], [ 1, %169 ]
  %179 = phi i32 [ %187, %177 ], [ %175, %169 ]
  %180 = getelementptr inbounds [2 x float], ptr %103, i64 %178
  call fastcc void @copy_v2_v2(ptr noundef nonnull %14, ptr noundef nonnull %180) #16
  %181 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %14) #14
  %182 = getelementptr inbounds %struct.ScanFillVert, ptr %181, i64 0, i32 2
  store i32 %179, ptr %182, align 8, !tbaa !66
  %183 = load i32, ptr %12, align 4, !tbaa !61
  %184 = add i32 %183, %179
  %185 = getelementptr inbounds %struct.ScanFillVert, ptr %181, i64 0, i32 5
  store i32 %184, ptr %185, align 4, !tbaa !67
  %186 = add nuw nsw i64 %178, 1
  %187 = add i32 %179, 1
  %188 = zext i32 %183 to i64
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %177, label %190, !llvm.loop !69

190:                                              ; preds = %177, %169
  %191 = phi i32 [ %172, %169 ], [ %183, %177 ]
  %192 = phi i32 [ %175, %169 ], [ %187, %177 ]
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %212, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %56, align 8, !tbaa !70
  %196 = icmp eq ptr %162, null
  br label %197

197:                                              ; preds = %194, %206
  %198 = phi ptr [ %170, %194 ], [ %208, %206 ]
  %199 = phi i32 [ %88, %194 ], [ %207, %206 ]
  %200 = phi i32 [ 0, %194 ], [ %209, %206 ]
  %201 = phi ptr [ %195, %194 ], [ %198, %206 ]
  %202 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %11, ptr noundef %201, ptr noundef %198) #14
  br i1 %196, label %206, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.ScanFillEdge, ptr %202, i64 0, i32 6
  store i8 -1, ptr %204, align 1, !tbaa !66
  %205 = add i32 %199, 1
  br label %206

206:                                              ; preds = %203, %197
  %207 = phi i32 [ %205, %203 ], [ %199, %197 ]
  %208 = load ptr, ptr %198, align 8, !tbaa !71
  %209 = add nuw i32 %200, 1
  %210 = load i32, ptr %12, align 4, !tbaa !61
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %197, label %212, !llvm.loop !72

212:                                              ; preds = %206, %190
  %213 = phi i32 [ 0, %190 ], [ %210, %206 ]
  %214 = phi i32 [ %88, %190 ], [ %207, %206 ]
  %215 = icmp eq ptr %162, null
  br i1 %215, label %361, label %216

216:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #15
  store float 1.000000e+00, ptr %57, align 4, !tbaa !53
  %217 = load i32, ptr %13, align 4, !tbaa !61
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %216, %219
  %220 = phi i64 [ %226, %219 ], [ 0, %216 ]
  %221 = phi i32 [ %225, %219 ], [ %192, %216 ]
  %222 = getelementptr inbounds [2 x float], ptr %162, i64 %220
  call fastcc void @copy_v2_v2(ptr noundef nonnull %15, ptr noundef nonnull %222) #16
  %223 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %15) #14
  %224 = getelementptr inbounds %struct.ScanFillVert, ptr %223, i64 0, i32 5
  store i32 -1, ptr %224, align 4, !tbaa !67
  %225 = add i32 %221, 1
  %226 = add nuw nsw i64 %220, 1
  %227 = load i32, ptr %13, align 4, !tbaa !61
  %228 = zext i32 %227 to i64
  %229 = icmp ult i64 %226, %228
  br i1 %229, label %219, label %230, !llvm.loop !73

230:                                              ; preds = %219
  %231 = load i32, ptr %12, align 4, !tbaa !61
  br label %232

232:                                              ; preds = %230, %216
  %233 = phi i32 [ %213, %216 ], [ %231, %230 ]
  %234 = phi i32 [ %192, %216 ], [ %225, %230 ]
  %235 = add i32 %233, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #15
  br label %361

236:                                              ; preds = %161
  %237 = icmp eq ptr %162, null
  br i1 %237, label %361, label %238

238:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #15
  store float 1.000000e+00, ptr %54, align 4, !tbaa !53
  %239 = load i16, ptr %89, align 8, !tbaa !57
  %240 = and i16 %239, 8
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %262, label %242

242:                                              ; preds = %238
  %243 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %244 = load i32, ptr %13, align 4, !tbaa !61
  %245 = zext i32 %244 to i64
  %246 = shl nuw nsw i64 %245, 3
  %247 = call ptr %243(i64 noundef %246, ptr noundef nonnull @.str.2) #14
  %248 = load i32, ptr %12, align 4, !tbaa !61
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %242, %250
  %251 = phi i64 [ %255, %250 ], [ 0, %242 ]
  %252 = getelementptr inbounds [2 x float], ptr %103, i64 %251
  %253 = getelementptr inbounds [2 x float], ptr %162, i64 %251
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %16, ptr noundef %252, ptr noundef nonnull %253) #16
  %254 = getelementptr inbounds [2 x float], ptr %247, i64 %251
  call fastcc void @add_v2_v2v2(ptr noundef %254, ptr noundef %252, ptr noundef nonnull %16) #16
  %255 = add nuw nsw i64 %251, 1
  %256 = load i32, ptr %12, align 4, !tbaa !61
  %257 = zext i32 %256 to i64
  %258 = icmp ult i64 %255, %257
  br i1 %258, label %250, label %259, !llvm.loop !74

259:                                              ; preds = %250, %242
  %260 = load i32, ptr %13, align 4, !tbaa !61
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %84, ptr noundef nonnull %162, i32 noundef %260) #14
  %261 = load i32, ptr %13, align 4, !tbaa !61
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %84, ptr noundef %247, i32 noundef %261) #14
  br label %262

262:                                              ; preds = %238, %259
  %263 = phi ptr [ %247, %259 ], [ null, %238 ]
  %264 = zext i32 %85 to i64
  %265 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %264
  store i32 %86, ptr %265, align 4, !tbaa !75
  %266 = load i32, ptr %12, align 4, !tbaa !61
  %267 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %264, i32 1
  store i32 %266, ptr %267, align 4, !tbaa !77
  %268 = icmp eq i32 %266, 0
  br i1 %268, label %298, label %269

269:                                              ; preds = %262
  %270 = icmp eq ptr %263, null
  br label %271

271:                                              ; preds = %269, %288
  %272 = phi i64 [ 0, %269 ], [ %294, %288 ]
  %273 = phi i32 [ %86, %269 ], [ %292, %288 ]
  %274 = phi i32 [ %87, %269 ], [ %293, %288 ]
  %275 = getelementptr inbounds [2 x float], ptr %103, i64 %272
  call fastcc void @copy_v2_v2(ptr noundef nonnull %14, ptr noundef %275) #16
  %276 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %14) #14
  %277 = getelementptr inbounds %struct.ScanFillVert, ptr %276, i64 0, i32 2
  store i32 %273, ptr %277, align 8, !tbaa !66
  %278 = getelementptr inbounds %struct.ScanFillVert, ptr %276, i64 0, i32 5
  store i32 -1, ptr %278, align 4, !tbaa !67
  %279 = add i32 %273, 1
  %280 = getelementptr inbounds [2 x float], ptr %162, i64 %272
  call fastcc void @copy_v2_v2(ptr noundef nonnull %17, ptr noundef nonnull %280) #16
  %281 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %17) #14
  %282 = getelementptr inbounds %struct.ScanFillVert, ptr %281, i64 0, i32 2
  store i32 %279, ptr %282, align 8, !tbaa !66
  %283 = getelementptr inbounds %struct.ScanFillVert, ptr %281, i64 0, i32 5
  store i32 -1, ptr %283, align 4, !tbaa !67
  %284 = add i32 %273, 2
  br i1 %270, label %287, label %285

285:                                              ; preds = %271
  %286 = getelementptr inbounds [2 x float], ptr %263, i64 %272
  call fastcc void @copy_v2_v2(ptr noundef nonnull %17, ptr noundef nonnull %286) #16
  br label %288

287:                                              ; preds = %271
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %17) #16
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %17, ptr noundef nonnull %14, ptr noundef nonnull %16) #16
  br label %288

288:                                              ; preds = %287, %285
  %289 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %17) #14
  %290 = getelementptr inbounds %struct.ScanFillVert, ptr %289, i64 0, i32 2
  store i32 %284, ptr %290, align 8, !tbaa !66
  %291 = getelementptr inbounds %struct.ScanFillVert, ptr %289, i64 0, i32 5
  store i32 -1, ptr %291, align 4, !tbaa !67
  %292 = add i32 %273, 3
  %293 = add i32 %274, 2
  %294 = add nuw nsw i64 %272, 1
  %295 = load i32, ptr %12, align 4, !tbaa !61
  %296 = zext i32 %295 to i64
  %297 = icmp ult i64 %294, %296
  br i1 %297, label %271, label %298, !llvm.loop !78

298:                                              ; preds = %288, %262
  %299 = phi i32 [ %87, %262 ], [ %293, %288 ]
  %300 = phi i32 [ %86, %262 ], [ %292, %288 ]
  %301 = icmp eq i8 %93, 0
  %302 = add i32 %299, -2
  %303 = select i1 %301, i32 %302, i32 %299
  %304 = icmp eq ptr %263, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %298
  %306 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %306(ptr noundef nonnull %263) #14
  br label %307

307:                                              ; preds = %305, %298
  %308 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %264, i32 2
  store i32 0, ptr %308, align 4, !tbaa !79
  %309 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %264, i32 3
  store i32 0, ptr %309, align 4, !tbaa !80
  br i1 %301, label %310, label %356

310:                                              ; preds = %307
  %311 = call fastcc float @len_v2v2(ptr noundef %103, ptr noundef nonnull %162) #16
  %312 = fdiv float %311, %55
  %313 = fptoui float %312 to i32
  %314 = call fastcc i32 @clampis_uint(i32 noundef %313) #16
  %315 = uitofp i32 %314 to float
  %316 = fdiv float 1.000000e+00, %315
  br label %317

317:                                              ; preds = %310, %317
  %318 = phi i32 [ %300, %310 ], [ %326, %317 ]
  %319 = phi i32 [ 1, %310 ], [ %327, %317 ]
  %320 = uitofp i32 %319 to float
  %321 = fmul float %316, %320
  %322 = fmul float %321, 0x400921FB60000000
  call fastcc void @rotate_point_v2(ptr noundef nonnull %17, ptr noundef nonnull %162, ptr noundef %103, float noundef %322, ptr noundef nonnull %9) #16
  %323 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %17) #14
  %324 = getelementptr inbounds %struct.ScanFillVert, ptr %323, i64 0, i32 2
  store i32 %318, ptr %324, align 8, !tbaa !66
  %325 = getelementptr inbounds %struct.ScanFillVert, ptr %323, i64 0, i32 5
  store i32 -1, ptr %325, align 4, !tbaa !67
  %326 = add i32 %318, 1
  %327 = add nuw i32 %319, 1
  %328 = icmp eq i32 %327, %314
  br i1 %328, label %329, label %317, !llvm.loop !81

329:                                              ; preds = %317
  store i32 %314, ptr %308, align 4, !tbaa !79
  %330 = load i32, ptr %12, align 4, !tbaa !61
  %331 = add i32 %330, -1
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [2 x float], ptr %103, i64 %332
  %334 = getelementptr inbounds [2 x float], ptr %162, i64 %332
  %335 = call fastcc float @len_v2v2(ptr noundef %333, ptr noundef nonnull %334) #16
  %336 = fdiv float %335, %55
  %337 = fptoui float %336 to i32
  %338 = call fastcc i32 @clampis_uint(i32 noundef %337) #16
  %339 = uitofp i32 %338 to float
  %340 = fdiv float 1.000000e+00, %339
  br label %341

341:                                              ; preds = %329, %341
  %342 = phi i32 [ %326, %329 ], [ %350, %341 ]
  %343 = phi i32 [ 1, %329 ], [ %351, %341 ]
  %344 = uitofp i32 %343 to float
  %345 = fmul float %340, %344
  %346 = fmul float %345, 0xC00921FB60000000
  call fastcc void @rotate_point_v2(ptr noundef nonnull %17, ptr noundef nonnull %334, ptr noundef %333, float noundef %346, ptr noundef nonnull %9) #16
  %347 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %11, ptr noundef nonnull %17) #14
  %348 = getelementptr inbounds %struct.ScanFillVert, ptr %347, i64 0, i32 2
  store i32 %342, ptr %348, align 8, !tbaa !66
  %349 = getelementptr inbounds %struct.ScanFillVert, ptr %347, i64 0, i32 5
  store i32 -1, ptr %349, align 4, !tbaa !67
  %350 = add i32 %342, 1
  %351 = add nuw i32 %343, 1
  %352 = icmp eq i32 %351, %338
  br i1 %352, label %353, label %341, !llvm.loop !82

353:                                              ; preds = %341
  %354 = add i32 %314, %303
  %355 = add i32 %354, %338
  store i32 %338, ptr %309, align 4, !tbaa !80
  br label %356

356:                                              ; preds = %353, %307
  %357 = phi i32 [ %299, %307 ], [ %355, %353 ]
  %358 = phi i32 [ %300, %307 ], [ %350, %353 ]
  %359 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %264, i32 4
  store i8 %93, ptr %359, align 4, !tbaa !83
  %360 = add i32 %85, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #15
  br label %361

361:                                              ; preds = %236, %356, %212, %232
  %362 = phi i32 [ %214, %232 ], [ %214, %212 ], [ %88, %356 ], [ %88, %236 ]
  %363 = phi i32 [ %235, %232 ], [ %87, %212 ], [ %357, %356 ], [ %87, %236 ]
  %364 = phi i32 [ %234, %232 ], [ %192, %212 ], [ %358, %356 ], [ %86, %236 ]
  %365 = phi i32 [ %85, %232 ], [ %85, %212 ], [ %360, %356 ], [ %85, %236 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  br label %366

366:                                              ; preds = %361, %107
  %367 = phi ptr [ %162, %361 ], [ %108, %107 ]
  %368 = phi i32 [ %362, %361 ], [ %88, %107 ]
  %369 = phi i32 [ %363, %361 ], [ %87, %107 ]
  %370 = phi i32 [ %364, %361 ], [ %86, %107 ]
  %371 = phi i32 [ %365, %361 ], [ %85, %107 ]
  %372 = icmp eq ptr %103, null
  br i1 %372, label %375, label %373

373:                                              ; preds = %366
  %374 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %374(ptr noundef nonnull %103) #14
  br label %375

375:                                              ; preds = %373, %366
  %376 = icmp eq ptr %367, null
  br i1 %376, label %379, label %377

377:                                              ; preds = %375
  %378 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %378(ptr noundef nonnull %367) #14
  br label %379

379:                                              ; preds = %377, %375
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  %380 = load ptr, ptr %84, align 8, !tbaa !34
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %83, !llvm.loop !84

382:                                              ; preds = %379, %74
  %383 = phi i32 [ 0, %74 ], [ %368, %379 ]
  %384 = phi i32 [ 0, %74 ], [ %369, %379 ]
  %385 = phi i32 [ 0, %74 ], [ %370, %379 ]
  %386 = phi i32 [ 0, %74 ], [ %371, %379 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %387 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %388 = zext i32 %385 to i64
  %389 = mul nuw nsw i64 %388, 12
  %390 = call ptr %387(i64 noundef %389, ptr noundef nonnull @.str.3) #14
  call void @BLI_rctf_init_minmax(ptr noundef nonnull %18) #14
  %391 = load ptr, ptr %11, align 8, !tbaa !85
  %392 = icmp eq ptr %391, null
  br i1 %392, label %405, label %393

393:                                              ; preds = %382, %402
  %394 = phi ptr [ %396, %402 ], [ %391, %382 ]
  %395 = phi ptr [ %403, %402 ], [ %390, %382 ]
  %396 = load ptr, ptr %394, align 8, !tbaa !71
  %397 = getelementptr inbounds %struct.ScanFillVert, ptr %394, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef %395, ptr noundef nonnull %397) #16
  %398 = getelementptr inbounds %struct.ScanFillVert, ptr %394, i64 0, i32 5
  %399 = load i32, ptr %398, align 4, !tbaa !67
  %400 = icmp eq i32 %399, -1
  br i1 %400, label %401, label %402

401:                                              ; preds = %393
  call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef nonnull %394) #14
  br label %402

402:                                              ; preds = %401, %393
  call void @BLI_rctf_do_minmax_v(ptr noundef nonnull %18, ptr noundef %395) #14
  %403 = getelementptr inbounds float, ptr %395, i64 3
  %404 = icmp eq ptr %396, null
  br i1 %404, label %405, label %393, !llvm.loop !86

405:                                              ; preds = %402, %382
  %406 = getelementptr inbounds %struct.MaskLayer, ptr %64, i64 0, i32 12
  %407 = load i8, ptr %406, align 2, !tbaa !87
  %408 = icmp sgt i8 %407, -1
  br i1 %408, label %433, label %409

409:                                              ; preds = %405
  %410 = call zeroext i8 @BLI_scanfill_calc_self_isect(ptr noundef nonnull %11, ptr noundef nonnull %19, ptr noundef nonnull %20) #14
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %433, label %412

412:                                              ; preds = %409
  %413 = call i32 @BLI_countlist(ptr noundef nonnull %11) #14
  %414 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %415 = add i32 %413, %385
  %416 = zext i32 %415 to i64
  %417 = mul nuw nsw i64 %416, 12
  %418 = call ptr %414(ptr noundef %390, i64 noundef %417, ptr noundef nonnull @__func__.BKE_maskrasterize_handle_init) #14
  %419 = load ptr, ptr %11, align 8, !tbaa !34
  %420 = icmp eq ptr %419, null
  br i1 %420, label %433, label %421

421:                                              ; preds = %412
  %422 = getelementptr inbounds [3 x float], ptr %418, i64 %388
  br label %423

423:                                              ; preds = %421, %423
  %424 = phi ptr [ %431, %423 ], [ %419, %421 ]
  %425 = phi i32 [ %428, %423 ], [ %385, %421 ]
  %426 = phi ptr [ %430, %423 ], [ %422, %421 ]
  %427 = getelementptr inbounds %struct.ScanFillVert, ptr %424, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef %426, ptr noundef nonnull %427) #16
  %428 = add i32 %425, 1
  %429 = getelementptr inbounds %struct.ScanFillVert, ptr %424, i64 0, i32 2
  store i32 %425, ptr %429, align 8, !tbaa !66
  %430 = getelementptr inbounds float, ptr %426, i64 3
  %431 = load ptr, ptr %424, align 8, !tbaa !34
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %423, !llvm.loop !88

433:                                              ; preds = %423, %412, %409, %405
  %434 = phi ptr [ %390, %409 ], [ %390, %405 ], [ %418, %412 ], [ %418, %423 ]
  %435 = phi i32 [ 0, %409 ], [ 0, %405 ], [ 4, %412 ], [ 4, %423 ]
  %436 = phi i1 [ true, %409 ], [ true, %405 ], [ false, %412 ], [ false, %423 ]
  %437 = load i8, ptr %406, align 2, !tbaa !87
  %438 = and i8 %437, 64
  %439 = icmp eq i8 %438, 0
  %440 = or disjoint i32 %435, 8
  %441 = select i1 %439, i32 %440, i32 %435
  %442 = call i32 @BLI_scanfill_calc_ex(ptr noundef nonnull %11, i32 noundef %441, ptr noundef nonnull %10) #14
  br i1 %436, label %444, label %443

443:                                              ; preds = %433
  call void @BLI_movelisttolist(ptr noundef nonnull %11, ptr noundef nonnull %19) #14
  call void @BLI_movelisttolist(ptr noundef nonnull %58, ptr noundef nonnull %20) #14
  br label %444

444:                                              ; preds = %443, %433
  %445 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %446 = zext i32 %442 to i64
  %447 = zext i32 %384 to i64
  %448 = add nuw nsw i64 %446, %447
  %449 = shl nuw nsw i64 %448, 4
  %450 = call ptr %445(i64 noundef %449, ptr noundef nonnull @.str.4) #14
  %451 = load ptr, ptr %59, align 8, !tbaa !89
  %452 = icmp eq ptr %451, null
  br i1 %452, label %474, label %453

453:                                              ; preds = %444, %453
  %454 = phi ptr [ %472, %453 ], [ %451, %444 ]
  %455 = phi ptr [ %471, %453 ], [ %450, %444 ]
  %456 = getelementptr inbounds %struct.ScanFillFace, ptr %454, i64 0, i32 4
  %457 = load ptr, ptr %456, align 8, !tbaa !90
  %458 = getelementptr inbounds %struct.ScanFillVert, ptr %457, i64 0, i32 2
  %459 = load i32, ptr %458, align 8, !tbaa !66
  %460 = getelementptr inbounds i32, ptr %455, i64 1
  store i32 %459, ptr %455, align 4, !tbaa !61
  %461 = getelementptr inbounds %struct.ScanFillFace, ptr %454, i64 0, i32 3
  %462 = load ptr, ptr %461, align 8, !tbaa !92
  %463 = getelementptr inbounds %struct.ScanFillVert, ptr %462, i64 0, i32 2
  %464 = load i32, ptr %463, align 8, !tbaa !66
  %465 = getelementptr inbounds i32, ptr %455, i64 2
  store i32 %464, ptr %460, align 4, !tbaa !61
  %466 = getelementptr inbounds %struct.ScanFillFace, ptr %454, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !93
  %468 = getelementptr inbounds %struct.ScanFillVert, ptr %467, i64 0, i32 2
  %469 = load i32, ptr %468, align 8, !tbaa !66
  %470 = getelementptr inbounds i32, ptr %455, i64 3
  store i32 %469, ptr %465, align 4, !tbaa !61
  %471 = getelementptr inbounds i32, ptr %455, i64 4
  store i32 -1, ptr %470, align 4, !tbaa !61
  %472 = load ptr, ptr %454, align 8, !tbaa !94
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %453, !llvm.loop !95

474:                                              ; preds = %453, %444
  %475 = phi ptr [ %450, %444 ], [ %471, %453 ]
  %476 = icmp eq i32 %384, 0
  %477 = load ptr, ptr %58, align 8
  %478 = icmp eq ptr %477, null
  %479 = select i1 %476, i1 true, i1 %478
  br i1 %479, label %510, label %480

480:                                              ; preds = %474, %505
  %481 = phi ptr [ %508, %505 ], [ %477, %474 ]
  %482 = phi ptr [ %507, %505 ], [ %475, %474 ]
  %483 = phi i32 [ %506, %505 ], [ 0, %474 ]
  %484 = getelementptr inbounds %struct.ScanFillEdge, ptr %481, i64 0, i32 6
  %485 = load i8, ptr %484, align 1, !tbaa !66
  %486 = icmp eq i8 %485, -1
  br i1 %486, label %487, label %505

487:                                              ; preds = %480
  %488 = getelementptr inbounds %struct.ScanFillEdge, ptr %481, i64 0, i32 2
  %489 = load ptr, ptr %488, align 8, !tbaa !96
  %490 = getelementptr inbounds %struct.ScanFillVert, ptr %489, i64 0, i32 2
  %491 = load i32, ptr %490, align 8, !tbaa !66
  %492 = getelementptr inbounds i32, ptr %482, i64 1
  store i32 %491, ptr %482, align 4, !tbaa !61
  %493 = getelementptr inbounds %struct.ScanFillEdge, ptr %481, i64 0, i32 3
  %494 = load ptr, ptr %493, align 8, !tbaa !98
  %495 = getelementptr inbounds %struct.ScanFillVert, ptr %494, i64 0, i32 2
  %496 = load i32, ptr %495, align 8, !tbaa !66
  %497 = getelementptr inbounds i32, ptr %482, i64 2
  store i32 %496, ptr %492, align 4, !tbaa !61
  %498 = getelementptr inbounds %struct.ScanFillVert, ptr %494, i64 0, i32 5
  %499 = load i32, ptr %498, align 4, !tbaa !67
  %500 = getelementptr inbounds i32, ptr %482, i64 3
  store i32 %499, ptr %497, align 4, !tbaa !61
  %501 = getelementptr inbounds %struct.ScanFillVert, ptr %489, i64 0, i32 5
  %502 = load i32, ptr %501, align 4, !tbaa !67
  %503 = getelementptr inbounds i32, ptr %482, i64 4
  store i32 %502, ptr %500, align 4, !tbaa !61
  %504 = add i32 %483, 1
  br label %505

505:                                              ; preds = %480, %487
  %506 = phi i32 [ %504, %487 ], [ %483, %480 ]
  %507 = phi ptr [ %503, %487 ], [ %482, %480 ]
  %508 = load ptr, ptr %481, align 8, !tbaa !99
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %480, !llvm.loop !100

510:                                              ; preds = %505, %474
  %511 = phi i32 [ 0, %474 ], [ %506, %505 ]
  %512 = phi ptr [ %475, %474 ], [ %507, %505 ]
  %513 = icmp eq i32 %386, 0
  br i1 %513, label %628, label %514

514:                                              ; preds = %510
  %515 = zext i32 %386 to i64
  br label %516

516:                                              ; preds = %514, %624
  %517 = phi i64 [ %515, %514 ], [ %519, %624 ]
  %518 = phi ptr [ %512, %514 ], [ %626, %624 ]
  %519 = add nsw i64 %517, -1
  %520 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !75
  %522 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %519, i32 1
  %523 = load i32, ptr %522, align 4, !tbaa !77
  %524 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %519, i32 2
  %525 = load i32, ptr %524, align 4, !tbaa !79
  %526 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %519, i32 3
  %527 = load i32, ptr %526, align 4, !tbaa !80
  %528 = add i32 %523, -1
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %549, label %530

530:                                              ; preds = %516, %530
  %531 = phi i32 [ %534, %530 ], [ %521, %516 ]
  %532 = phi i32 [ %547, %530 ], [ 0, %516 ]
  %533 = phi ptr [ %546, %530 ], [ %518, %516 ]
  %534 = add i32 %531, 3
  %535 = getelementptr inbounds i32, ptr %533, i64 1
  store i32 %534, ptr %533, align 4, !tbaa !61
  %536 = getelementptr inbounds i32, ptr %533, i64 2
  store i32 %531, ptr %535, align 4, !tbaa !61
  %537 = add i32 %531, 1
  %538 = getelementptr inbounds i32, ptr %533, i64 3
  store i32 %537, ptr %536, align 4, !tbaa !61
  %539 = add i32 %531, 4
  %540 = getelementptr inbounds i32, ptr %533, i64 4
  store i32 %539, ptr %538, align 4, !tbaa !61
  %541 = getelementptr inbounds i32, ptr %533, i64 5
  store i32 %531, ptr %540, align 4, !tbaa !61
  %542 = getelementptr inbounds i32, ptr %533, i64 6
  store i32 %534, ptr %541, align 4, !tbaa !61
  %543 = add i32 %531, 5
  %544 = getelementptr inbounds i32, ptr %533, i64 7
  store i32 %543, ptr %542, align 4, !tbaa !61
  %545 = add i32 %531, 2
  %546 = getelementptr inbounds i32, ptr %533, i64 8
  store i32 %545, ptr %544, align 4, !tbaa !61
  %547 = add nuw i32 %532, 1
  %548 = icmp eq i32 %547, %528
  br i1 %548, label %549, label %530, !llvm.loop !101

549:                                              ; preds = %530, %516
  %550 = phi ptr [ %518, %516 ], [ %546, %530 ]
  %551 = phi i32 [ %521, %516 ], [ %534, %530 ]
  %552 = getelementptr inbounds %struct.MaskRasterSplineInfo, ptr %80, i64 %519, i32 4
  %553 = load i8, ptr %552, align 4, !tbaa !83
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %567, label %555

555:                                              ; preds = %549
  %556 = getelementptr inbounds i32, ptr %550, i64 1
  store i32 %521, ptr %550, align 4, !tbaa !61
  %557 = getelementptr inbounds i32, ptr %550, i64 2
  store i32 %551, ptr %556, align 4, !tbaa !61
  %558 = add i32 %551, 1
  %559 = getelementptr inbounds i32, ptr %550, i64 3
  store i32 %558, ptr %557, align 4, !tbaa !61
  %560 = add i32 %521, 1
  %561 = getelementptr inbounds i32, ptr %550, i64 4
  store i32 %560, ptr %559, align 4, !tbaa !61
  %562 = getelementptr inbounds i32, ptr %550, i64 5
  store i32 %551, ptr %561, align 4, !tbaa !61
  %563 = getelementptr inbounds i32, ptr %550, i64 6
  store i32 %521, ptr %562, align 4, !tbaa !61
  %564 = add i32 %521, 2
  %565 = getelementptr inbounds i32, ptr %550, i64 7
  store i32 %564, ptr %563, align 4, !tbaa !61
  %566 = add i32 %551, 2
  store i32 %566, ptr %565, align 4, !tbaa !61
  br label %624

567:                                              ; preds = %549
  %568 = mul i32 %523, 3
  %569 = add i32 %568, %521
  %570 = add i32 %525, -2
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %583, label %572

572:                                              ; preds = %567, %572
  %573 = phi i32 [ %579, %572 ], [ %569, %567 ]
  %574 = phi i32 [ %581, %572 ], [ 0, %567 ]
  %575 = phi ptr [ %580, %572 ], [ %550, %567 ]
  %576 = getelementptr inbounds i32, ptr %575, i64 1
  store i32 %521, ptr %575, align 4, !tbaa !61
  %577 = getelementptr inbounds i32, ptr %575, i64 2
  store i32 %521, ptr %576, align 4, !tbaa !61
  %578 = getelementptr inbounds i32, ptr %575, i64 3
  store i32 %573, ptr %577, align 4, !tbaa !61
  %579 = add i32 %573, 1
  %580 = getelementptr inbounds i32, ptr %575, i64 4
  store i32 %579, ptr %578, align 4, !tbaa !61
  %581 = add nuw i32 %574, 1
  %582 = icmp eq i32 %581, %570
  br i1 %582, label %583, label %572, !llvm.loop !102

583:                                              ; preds = %572, %567
  %584 = phi ptr [ %550, %567 ], [ %580, %572 ]
  %585 = getelementptr inbounds i32, ptr %584, i64 1
  store i32 %521, ptr %584, align 4, !tbaa !61
  %586 = getelementptr inbounds i32, ptr %584, i64 2
  store i32 %521, ptr %585, align 4, !tbaa !61
  %587 = add i32 %521, 1
  %588 = getelementptr inbounds i32, ptr %584, i64 3
  store i32 %587, ptr %586, align 4, !tbaa !61
  %589 = getelementptr inbounds i32, ptr %584, i64 4
  store i32 %569, ptr %588, align 4, !tbaa !61
  %590 = getelementptr inbounds i32, ptr %584, i64 5
  store i32 %521, ptr %589, align 4, !tbaa !61
  %591 = getelementptr inbounds i32, ptr %584, i64 6
  store i32 %521, ptr %590, align 4, !tbaa !61
  %592 = add i32 %570, %569
  %593 = getelementptr inbounds i32, ptr %584, i64 7
  store i32 %592, ptr %591, align 4, !tbaa !61
  %594 = add i32 %521, 2
  %595 = getelementptr inbounds i32, ptr %584, i64 8
  store i32 %594, ptr %593, align 4, !tbaa !61
  %596 = add i32 %525, -1
  %597 = add i32 %596, %569
  %598 = add i32 %569, -3
  %599 = add i32 %527, -2
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %612, label %601

601:                                              ; preds = %583, %601
  %602 = phi i32 [ %607, %601 ], [ %597, %583 ]
  %603 = phi i32 [ %610, %601 ], [ 0, %583 ]
  %604 = phi ptr [ %609, %601 ], [ %595, %583 ]
  %605 = getelementptr inbounds i32, ptr %604, i64 1
  store i32 %598, ptr %604, align 4, !tbaa !61
  %606 = getelementptr inbounds i32, ptr %604, i64 2
  store i32 %598, ptr %605, align 4, !tbaa !61
  %607 = add i32 %602, 1
  %608 = getelementptr inbounds i32, ptr %604, i64 3
  store i32 %607, ptr %606, align 4, !tbaa !61
  %609 = getelementptr inbounds i32, ptr %604, i64 4
  store i32 %602, ptr %608, align 4, !tbaa !61
  %610 = add nuw i32 %603, 1
  %611 = icmp eq i32 %610, %599
  br i1 %611, label %612, label %601, !llvm.loop !103

612:                                              ; preds = %601, %583
  %613 = phi ptr [ %595, %583 ], [ %609, %601 ]
  %614 = getelementptr inbounds i32, ptr %613, i64 1
  store i32 %598, ptr %613, align 4, !tbaa !61
  %615 = getelementptr inbounds i32, ptr %613, i64 2
  store i32 %598, ptr %614, align 4, !tbaa !61
  %616 = getelementptr inbounds i32, ptr %613, i64 3
  store i32 %597, ptr %615, align 4, !tbaa !61
  %617 = add i32 %569, -2
  %618 = getelementptr inbounds i32, ptr %613, i64 4
  store i32 %617, ptr %616, align 4, !tbaa !61
  %619 = getelementptr inbounds i32, ptr %613, i64 5
  store i32 %598, ptr %618, align 4, !tbaa !61
  %620 = getelementptr inbounds i32, ptr %613, i64 6
  store i32 %598, ptr %619, align 4, !tbaa !61
  %621 = add i32 %569, -1
  %622 = getelementptr inbounds i32, ptr %613, i64 7
  store i32 %621, ptr %620, align 4, !tbaa !61
  %623 = add i32 %599, %597
  store i32 %623, ptr %622, align 4, !tbaa !61
  br label %624

624:                                              ; preds = %612, %555
  %625 = phi ptr [ %550, %555 ], [ %613, %612 ]
  %626 = getelementptr inbounds i32, ptr %625, i64 8
  %627 = icmp eq i64 %519, 0
  br i1 %627, label %628, label %516, !llvm.loop !104

628:                                              ; preds = %624, %510
  %629 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %629(ptr noundef %80) #14
  %630 = load ptr, ptr %0, align 8, !tbaa !43
  %631 = zext i32 %65 to i64
  %632 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631
  %633 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %8, ptr noundef nonnull %18, ptr noundef nonnull %18) #14
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %642, label %635

635:                                              ; preds = %628
  %636 = sub i32 %384, %383
  %637 = add i32 %636, %442
  %638 = add i32 %637, %511
  store i32 %638, ptr %632, align 8, !tbaa !105
  %639 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631, i32 2
  store ptr %434, ptr %639, align 8, !tbaa !46
  %640 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631, i32 1
  store ptr %450, ptr %640, align 8, !tbaa !44
  %641 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %641, ptr noundef nonnull align 4 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !106
  call fastcc void @layer_bucket_init(ptr noundef nonnull %632, float noundef %23) #16
  call void @BLI_rctf_union(ptr noundef nonnull %43, ptr noundef nonnull %18) #14
  br label %645

642:                                              ; preds = %628
  %643 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %643(ptr noundef %434) #14
  %644 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %644(ptr noundef %450) #14
  call fastcc void @layer_bucket_init_dummy(ptr noundef %632) #16
  br label %645

645:                                              ; preds = %642, %635
  %646 = getelementptr inbounds %struct.MaskLayer, ptr %64, i64 0, i32 7
  %647 = load float, ptr %646, align 8, !tbaa !107
  %648 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631, i32 8
  store float %647, ptr %648, align 8, !tbaa !108
  %649 = getelementptr inbounds %struct.MaskLayer, ptr %64, i64 0, i32 8
  %650 = load i8, ptr %649, align 4, !tbaa !109
  %651 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631, i32 9
  store i8 %650, ptr %651, align 4, !tbaa !110
  %652 = getelementptr inbounds %struct.MaskLayer, ptr %64, i64 0, i32 9
  %653 = load i8, ptr %652, align 1, !tbaa !111
  %654 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631, i32 10
  store i8 %653, ptr %654, align 1, !tbaa !112
  %655 = getelementptr inbounds %struct.MaskLayer, ptr %64, i64 0, i32 10
  %656 = load i8, ptr %655, align 2, !tbaa !113
  %657 = getelementptr inbounds %struct.MaskRasterLayer, ptr %630, i64 %631, i32 11
  store i8 %656, ptr %657, align 2, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #15
  call void @BLI_scanfill_end_arena(ptr noundef nonnull %11, ptr noundef %44) #14
  br label %658

658:                                              ; preds = %645, %70
  %659 = phi i32 [ %73, %70 ], [ %65, %645 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #15
  %660 = add i32 %659, 1
  %661 = load ptr, ptr %64, align 8, !tbaa !34
  %662 = icmp eq ptr %661, null
  br i1 %662, label %663, label %63, !llvm.loop !115

663:                                              ; preds = %658, %7
  call void @BLI_memarena_free(ptr noundef %44) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !116 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_scanfill_begin_arena(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_mask_spline_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_mask_spline_feather_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc void @maskrasterize_spline_differentiate_point_outset(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3, i8 noundef zeroext %4) unnamed_addr #5 !PGOFuncName !117 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = add i32 %2, -2
  %10 = add i32 %2, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %11 = fmul float %3, %3
  %12 = zext i32 %9 to i64
  %13 = getelementptr inbounds [2 x float], ptr %1, i64 %12
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds [2 x float], ptr %1, i64 %14
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef %13, ptr noundef %15) #16
  call fastcc void @normalize_v2(ptr noundef nonnull %6) #16
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %5
  %18 = icmp eq i8 %4, 0
  %19 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %20 = zext i32 %2 to i64
  br label %21

21:                                               ; preds = %17, %42
  %22 = phi i64 [ 0, %17 ], [ %43, %42 ]
  %23 = phi i32 [ %10, %17 ], [ %44, %42 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [2 x float], ptr %1, i64 %24
  %26 = getelementptr inbounds [2 x float], ptr %1, i64 %22
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %25, ptr noundef %26) #16
  call fastcc void @normalize_v2(ptr noundef nonnull %7) #16
  br i1 %18, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds [2 x float], ptr %0, i64 %22
  %29 = tail call fastcc float @len_squared_v2v2(ptr noundef %28, ptr noundef %26) #16
  %30 = fcmp olt float %29, %11
  br i1 %30, label %31, label %42

31:                                               ; preds = %27, %21
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  call fastcc void @normalize_v2(ptr noundef nonnull %8) #16
  %32 = load float, ptr %26, align 4, !tbaa !53
  %33 = load float, ptr %19, align 4, !tbaa !53
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %3, float %32)
  %35 = getelementptr inbounds [2 x float], ptr %0, i64 %22
  store float %34, ptr %35, align 4, !tbaa !53
  %36 = getelementptr inbounds [2 x float], ptr %1, i64 %22, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = load float, ptr %8, align 4, !tbaa !53
  %39 = fneg float %38
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %3, float %37)
  %41 = getelementptr inbounds [2 x float], ptr %0, i64 %22, i64 1
  store float %40, ptr %41, align 4, !tbaa !53
  br label %42

42:                                               ; preds = %31, %27
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %43 = add nuw nsw i64 %22, 1
  %44 = trunc i64 %22 to i32
  %45 = icmp eq i64 %43, %20
  br i1 %45, label %46, label %21, !llvm.loop !118

46:                                               ; preds = %42, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !119 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  store float %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !120 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = load float, ptr %2, align 4, !tbaa !53
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !121 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = load float, ptr %2, align 4, !tbaa !53
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @clampis_uint(i32 noundef %0) unnamed_addr #3 !PGOFuncName !122 {
  %2 = tail call i32 @llvm.umin.i32(i32 %0, i32 64)
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 8)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !123 {
  %3 = load float, ptr %0, align 4, !tbaa !53
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @rotate_point_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #8 !PGOFuncName !124 {
  %6 = tail call float @sinf(float noundef %3) #14
  %7 = tail call float @cosf(float noundef %3) #14
  %8 = load float, ptr %1, align 4, !tbaa !53
  %9 = load float, ptr %2, align 4, !tbaa !53
  %10 = fsub float %8, %9
  %11 = load float, ptr %4, align 4, !tbaa !53
  %12 = fdiv float %10, %11
  store float %12, ptr %0, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %4, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !53
  %20 = fdiv float %17, %19
  %21 = getelementptr inbounds float, ptr %0, i64 1
  store float %20, ptr %21, align 4, !tbaa !53
  %22 = fneg float %20
  %23 = fmul float %6, %22
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %7, float %23)
  %25 = load float, ptr %4, align 4, !tbaa !53
  %26 = fmul float %25, %24
  %27 = fmul float %7, %20
  %28 = tail call float @llvm.fmuladd.f32(float %12, float %6, float %27)
  %29 = load float, ptr %18, align 4, !tbaa !53
  %30 = fmul float %28, %29
  %31 = load float, ptr %2, align 4, !tbaa !53
  %32 = fadd float %26, %31
  store float %32, ptr %0, align 4, !tbaa !53
  %33 = load float, ptr %15, align 4, !tbaa !53
  %34 = fadd float %30, %33
  store float %34, ptr %21, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !125 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  store float %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_rctf_do_minmax_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_scanfill_calc_self_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_scanfill_calc_ex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @layer_bucket_init(ptr nocapture noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !126 {
  %3 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @__func__.layer_bucket_init) #14
  %4 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 3
  %5 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #16
  %6 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #16
  %7 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 7
  %9 = insertelement <2 x float> poison, float %5, i64 0
  %10 = insertelement <2 x float> %9, float %6, i64 1
  %11 = insertelement <2 x float> poison, float %1, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fdiv <2 x float> %10, %12
  %14 = fmul <2 x float> %13, <float 2.500000e-01, float 2.500000e-01>
  %15 = fptoui <2 x float> %14 to <2 x i32>
  store <2 x i32> %15, ptr %7, align 8, !tbaa !61
  %16 = extractelement <2 x i32> %15, i64 0
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = icmp ugt i32 %16, 512
  br i1 %19, label %20, label %22

20:                                               ; preds = %18, %2
  %21 = phi i32 [ 8, %2 ], [ 512, %18 ]
  store i32 %21, ptr %7, align 8, !tbaa !48
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %16, %18 ], [ %21, %20 ]
  %24 = extractelement <2 x i32> %15, i64 1
  %25 = icmp ult i32 %24, 8
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = icmp ugt i32 %24, 512
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %22
  %29 = phi i32 [ 8, %22 ], [ 512, %26 ]
  store i32 %29, ptr %8, align 4, !tbaa !49
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %24, %26 ], [ %29, %28 ]
  %32 = fadd <2 x float> %10, <float 0x3E80000000000000, float 0x3E80000000000000>
  %33 = insertelement <2 x i32> poison, i32 %23, i64 0
  %34 = insertelement <2 x i32> %33, i32 %31, i64 1
  %35 = uitofp <2 x i32> %34 to <2 x float>
  %36 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 5
  %37 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 5, i64 1
  %38 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %32
  %39 = fmul <2 x float> %38, %35
  store <2 x float> %39, ptr %36, align 8, !tbaa !53
  %40 = extractelement <2 x float> %32, i64 0
  %41 = extractelement <2 x float> %35, i64 0
  %42 = fdiv float %40, %41
  %43 = extractelement <2 x float> %32, i64 1
  %44 = extractelement <2 x float> %35, i64 1
  %45 = fdiv float %43, %44
  %46 = tail call fastcc float @max_ff(float noundef %42, float noundef %45) #16
  %47 = tail call float @llvm.fmuladd.f32(float %46, float 0x3FF6A09E60000000, float 0x3E80000000000000)
  %48 = fmul float %47, %47
  %49 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !44
  %51 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = mul nuw nsw i32 %31, %23
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %55 = zext nneg i32 %53 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @__func__.layer_bucket_init) #14
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %59 = shl nuw nsw i64 %55, 2
  %60 = tail call ptr %58(i64 noundef %59, ptr noundef nonnull @__func__.layer_bucket_init) #14
  %61 = load i32, ptr %0, align 8, !tbaa !105
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %214, label %63

63:                                               ; preds = %30
  %64 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 3, i32 2
  br label %65

65:                                               ; preds = %63, %208
  %66 = phi i32 [ %61, %63 ], [ %209, %208 ]
  %67 = phi i64 [ 0, %63 ], [ %210, %208 ]
  %68 = phi ptr [ %50, %63 ], [ %211, %208 ]
  %69 = getelementptr inbounds i32, ptr %68, i64 3
  %70 = load i32, ptr %69, align 4, !tbaa !61
  %71 = icmp eq i32 %70, -1
  %72 = load i32, ptr %68, align 4, !tbaa !61
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [3 x float], ptr %52, i64 %73
  %75 = getelementptr inbounds i32, ptr %68, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !61
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [3 x float], ptr %52, i64 %77
  %79 = getelementptr inbounds i32, ptr %68, i64 2
  %80 = load i32, ptr %79, align 4, !tbaa !61
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [3 x float], ptr %52, i64 %81
  br i1 %71, label %83, label %101

83:                                               ; preds = %65
  %84 = load float, ptr %74, align 4, !tbaa !53
  %85 = load float, ptr %78, align 4, !tbaa !53
  %86 = load float, ptr %82, align 4, !tbaa !53
  %87 = tail call fastcc float @min_ff(float noundef %85, float noundef %86) #16
  %88 = tail call fastcc float @min_ff(float noundef %84, float noundef %87) #16
  %89 = tail call fastcc float @max_ff(float noundef %85, float noundef %86) #16
  %90 = tail call fastcc float @max_ff(float noundef %84, float noundef %89) #16
  %91 = getelementptr inbounds float, ptr %74, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !53
  %93 = getelementptr inbounds float, ptr %78, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !53
  %95 = getelementptr inbounds float, ptr %82, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !53
  %97 = tail call fastcc float @min_ff(float noundef %94, float noundef %96) #16
  %98 = tail call fastcc float @min_ff(float noundef %92, float noundef %97) #16
  %99 = tail call fastcc float @max_ff(float noundef %94, float noundef %96) #16
  %100 = tail call fastcc float @max_ff(float noundef %92, float noundef %99) #16
  br label %128

101:                                              ; preds = %65
  %102 = zext i32 %70 to i64
  %103 = getelementptr inbounds [3 x float], ptr %52, i64 %102
  %104 = load float, ptr %74, align 4, !tbaa !53
  %105 = load float, ptr %78, align 4, !tbaa !53
  %106 = load float, ptr %82, align 4, !tbaa !53
  %107 = load float, ptr %103, align 4, !tbaa !53
  %108 = tail call fastcc float @min_ff(float noundef %106, float noundef %107) #16
  %109 = tail call fastcc float @min_ff(float noundef %105, float noundef %108) #16
  %110 = tail call fastcc float @min_ff(float noundef %104, float noundef %109) #16
  %111 = tail call fastcc float @max_ff(float noundef %106, float noundef %107) #16
  %112 = tail call fastcc float @max_ff(float noundef %105, float noundef %111) #16
  %113 = tail call fastcc float @max_ff(float noundef %104, float noundef %112) #16
  %114 = getelementptr inbounds float, ptr %74, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !53
  %116 = getelementptr inbounds float, ptr %78, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !53
  %118 = getelementptr inbounds float, ptr %82, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !53
  %120 = getelementptr inbounds float, ptr %103, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !53
  %122 = tail call fastcc float @min_ff(float noundef %119, float noundef %121) #16
  %123 = tail call fastcc float @min_ff(float noundef %117, float noundef %122) #16
  %124 = tail call fastcc float @min_ff(float noundef %115, float noundef %123) #16
  %125 = tail call fastcc float @max_ff(float noundef %119, float noundef %121) #16
  %126 = tail call fastcc float @max_ff(float noundef %117, float noundef %125) #16
  %127 = tail call fastcc float @max_ff(float noundef %115, float noundef %126) #16
  br label %128

128:                                              ; preds = %101, %83
  %129 = phi float [ %100, %83 ], [ %127, %101 ]
  %130 = phi float [ %98, %83 ], [ %124, %101 ]
  %131 = phi float [ %90, %83 ], [ %113, %101 ]
  %132 = phi float [ %88, %83 ], [ %110, %101 ]
  %133 = fcmp olt float %131, 0.000000e+00
  %134 = fcmp olt float %129, 0.000000e+00
  %135 = or i1 %134, %133
  %136 = fcmp ogt float %132, 1.000000e+00
  %137 = or i1 %135, %136
  %138 = fcmp ogt float %130, 1.000000e+00
  %139 = or i1 %138, %137
  br i1 %139, label %208, label %140

140:                                              ; preds = %128
  %141 = fcmp olt float %132, 0.000000e+00
  %142 = select i1 %141, float 0.000000e+00, float %132
  %143 = fcmp olt float %130, 0.000000e+00
  %144 = select i1 %143, float 0.000000e+00, float %130
  %145 = fcmp ogt float %131, 1.000000e+00
  %146 = select i1 %145, float 1.000000e+00, float %131
  %147 = fcmp ogt float %129, 1.000000e+00
  %148 = select i1 %147, float 1.000000e+00, float %129
  %149 = load float, ptr %4, align 8, !tbaa !127
  %150 = fsub float %142, %149
  %151 = load float, ptr %36, align 8, !tbaa !53
  %152 = fmul float %150, %151
  %153 = fptoui float %152 to i32
  %154 = fsub float %146, %149
  %155 = fmul float %154, %151
  %156 = fptoui float %155 to i32
  %157 = load float, ptr %64, align 8, !tbaa !128
  %158 = fsub float %144, %157
  %159 = load float, ptr %37, align 4, !tbaa !53
  %160 = fmul float %158, %159
  %161 = fptoui float %160 to i32
  %162 = fsub float %148, %157
  %163 = fmul float %162, %159
  %164 = fptoui float %163 to i32
  %165 = inttoptr i64 %67 to ptr
  %166 = load i32, ptr %7, align 8, !tbaa !48
  %167 = icmp ugt i32 %166, %153
  %168 = add i32 %166, -1
  %169 = select i1 %167, i32 %153, i32 %168
  %170 = icmp ugt i32 %166, %156
  %171 = select i1 %170, i32 %156, i32 %168
  %172 = load i32, ptr %8, align 4, !tbaa !49
  %173 = icmp ugt i32 %172, %161
  %174 = add i32 %172, -1
  %175 = select i1 %173, i32 %161, i32 %174
  %176 = icmp ugt i32 %172, %164
  %177 = select i1 %176, i32 %164, i32 %174
  %178 = icmp ugt i32 %175, %177
  br i1 %178, label %208, label %179

179:                                              ; preds = %140
  %180 = icmp ugt i32 %169, %171
  %181 = trunc i64 %67 to i32
  br label %182

182:                                              ; preds = %179, %203
  %183 = phi i32 [ %175, %179 ], [ %204, %203 ]
  br i1 %180, label %203, label %184

184:                                              ; preds = %182
  %185 = load i32, ptr %7, align 8, !tbaa !48
  %186 = mul i32 %185, %183
  %187 = add i32 %186, %169
  br label %188

188:                                              ; preds = %184, %199
  %189 = phi i32 [ %201, %199 ], [ %187, %184 ]
  %190 = phi i32 [ %200, %199 ], [ %169, %184 ]
  %191 = tail call fastcc zeroext i8 @layer_bucket_isect_test(ptr noundef nonnull %0, i32 noundef %181, i32 noundef %190, i32 noundef %183, float noundef %42, float noundef %45, float noundef %48) #16, !range !129
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = zext i32 %189 to i64
  %195 = getelementptr inbounds ptr, ptr %57, i64 %194
  tail call void @BLI_linklist_prepend_arena(ptr noundef %195, ptr noundef %165, ptr noundef %3) #14
  %196 = getelementptr inbounds i32, ptr %60, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !61
  %198 = add i32 %197, 1
  store i32 %198, ptr %196, align 4, !tbaa !61
  br label %199

199:                                              ; preds = %188, %193
  %200 = add i32 %190, 1
  %201 = add i32 %189, 1
  %202 = icmp ugt i32 %200, %171
  br i1 %202, label %203, label %188, !llvm.loop !130

203:                                              ; preds = %199, %182
  %204 = add i32 %183, 1
  %205 = icmp ugt i32 %204, %177
  br i1 %205, label %206, label %182, !llvm.loop !131

206:                                              ; preds = %203
  %207 = load i32, ptr %0, align 8, !tbaa !105
  br label %208

208:                                              ; preds = %206, %140, %128
  %209 = phi i32 [ %207, %206 ], [ %66, %140 ], [ %66, %128 ]
  %210 = add nuw nsw i64 %67, 1
  %211 = getelementptr inbounds i32, ptr %68, i64 4
  %212 = zext i32 %209 to i64
  %213 = icmp ult i64 %210, %212
  br i1 %213, label %65, label %214, !llvm.loop !132

214:                                              ; preds = %208, %30
  %215 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %216 = tail call ptr %215(i64 noundef %56, ptr noundef nonnull @__func__.layer_bucket_init) #14
  br label %217

217:                                              ; preds = %214, %246
  %218 = phi i64 [ 0, %214 ], [ %247, %246 ]
  %219 = getelementptr inbounds i32, ptr %60, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !61
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %244, label %222

222:                                              ; preds = %217
  %223 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %224 = add i32 %220, 1
  %225 = zext i32 %224 to i64
  %226 = shl nuw nsw i64 %225, 2
  %227 = tail call ptr %223(i64 noundef %226, ptr noundef nonnull @__func__.layer_bucket_init) #14
  %228 = getelementptr inbounds ptr, ptr %216, i64 %218
  store ptr %227, ptr %228, align 8, !tbaa !34
  %229 = getelementptr inbounds ptr, ptr %57, i64 %218
  %230 = load ptr, ptr %229, align 8, !tbaa !34
  %231 = icmp eq ptr %230, null
  br i1 %231, label %242, label %232

232:                                              ; preds = %222, %232
  %233 = phi ptr [ %240, %232 ], [ %230, %222 ]
  %234 = phi ptr [ %239, %232 ], [ %227, %222 ]
  %235 = getelementptr inbounds %struct.LinkNode, ptr %233, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !133
  %237 = ptrtoint ptr %236 to i64
  %238 = trunc i64 %237 to i32
  store i32 %238, ptr %234, align 4, !tbaa !61
  %239 = getelementptr inbounds i32, ptr %234, i64 1
  %240 = load ptr, ptr %233, align 8, !tbaa !34
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %232, !llvm.loop !135

242:                                              ; preds = %232, %222
  %243 = phi ptr [ %227, %222 ], [ %239, %232 ]
  store i32 -1, ptr %243, align 4, !tbaa !61
  br label %246

244:                                              ; preds = %217
  %245 = getelementptr inbounds ptr, ptr %216, i64 %218
  store ptr null, ptr %245, align 8, !tbaa !34
  br label %246

246:                                              ; preds = %242, %244
  %247 = add nuw nsw i64 %218, 1
  %248 = icmp eq i64 %247, %55
  br i1 %248, label %249, label %217, !llvm.loop !136

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 4
  store ptr %216, ptr %250, align 8, !tbaa !47
  %251 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %251(ptr noundef %57) #14
  %252 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %252(ptr noundef %60) #14
  tail call void @BLI_memarena_free(ptr noundef %3) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @layer_bucket_init_dummy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !137 {
  store i32 0, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @BLI_rctf_init(ptr noundef nonnull %4, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_scanfill_end_arena(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_maskrasterize_handle_sample(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MaskRasterHandle, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %95, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !43
  br label %8

8:                                                ; preds = %6, %90
  %9 = phi float [ %91, %90 ], [ 0.000000e+00, %6 ]
  %10 = phi ptr [ %93, %90 ], [ %7, %6 ]
  %11 = phi i32 [ %92, %90 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.MaskRasterLayer, ptr %10, i64 0, i32 8
  %13 = load float, ptr %12, align 8, !tbaa !108
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %47

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.MaskRasterLayer, ptr %10, i64 0, i32 3
  %17 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %16, ptr noundef %1) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc float @layer_bucket_depth_from_xy(ptr noundef nonnull %10, ptr noundef %1) #16
  %21 = fsub float 1.000000e+00, %20
  %22 = getelementptr inbounds %struct.MaskRasterLayer, ptr %10, i64 0, i32 11
  %23 = load i8, ptr %22, align 2, !tbaa !114
  switch i8 %23, label %39 [
    i8 0, label %24
    i8 1, label %30
    i8 2, label %35
    i8 3, label %37
  ]

24:                                               ; preds = %19
  %25 = fmul float %21, 3.000000e+00
  %26 = fmul float %21, -2.000000e+00
  %27 = fmul float %21, %26
  %28 = fmul float %21, %27
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %21, float %28)
  br label %39

30:                                               ; preds = %19
  %31 = fneg float %21
  %32 = fmul float %21, %31
  %33 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float %32)
  %34 = tail call float @sqrtf(float noundef %33) #14
  br label %39

35:                                               ; preds = %19
  %36 = tail call float @sqrtf(float noundef %21) #14
  br label %39

37:                                               ; preds = %19
  %38 = fmul float %21, %21
  br label %39

39:                                               ; preds = %19, %37, %35, %30, %24
  %40 = phi float [ %21, %19 ], [ %38, %37 ], [ %36, %35 ], [ %34, %30 ], [ %29, %24 ]
  %41 = getelementptr inbounds %struct.MaskRasterLayer, ptr %10, i64 0, i32 9
  %42 = load i8, ptr %41, align 4, !tbaa !110
  %43 = icmp eq i8 %42, 5
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load float, ptr %12, align 8, !tbaa !108
  %46 = fmul float %40, %45
  br label %47

47:                                               ; preds = %8, %15, %39, %44
  %48 = phi float [ %46, %44 ], [ %40, %39 ], [ 0.000000e+00, %15 ], [ 0.000000e+00, %8 ]
  %49 = getelementptr inbounds %struct.MaskRasterLayer, ptr %10, i64 0, i32 10
  %50 = load i8, ptr %49, align 1, !tbaa !112
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = fsub float 1.000000e+00, %48
  %54 = select i1 %52, float %48, float %53
  %55 = getelementptr inbounds %struct.MaskRasterLayer, ptr %10, i64 0, i32 9
  %56 = load i8, ptr %55, align 4, !tbaa !110
  switch i8 %56, label %81 [
    i8 7, label %57
    i8 8, label %60
    i8 0, label %63
    i8 1, label %65
    i8 2, label %67
    i8 3, label %69
    i8 4, label %71
    i8 5, label %73
    i8 6, label %78
  ]

57:                                               ; preds = %47
  %58 = fsub float 1.000000e+00, %9
  %59 = tail call float @llvm.fmuladd.f32(float %54, float %58, float %9)
  br label %83

60:                                               ; preds = %47
  %61 = fneg float %54
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %9, float %9)
  br label %83

63:                                               ; preds = %47
  %64 = fadd float %9, %54
  br label %83

65:                                               ; preds = %47
  %66 = fsub float %9, %54
  br label %83

67:                                               ; preds = %47
  %68 = tail call fastcc float @max_ff(float noundef %9, float noundef %54) #16
  br label %83

69:                                               ; preds = %47
  %70 = tail call fastcc float @min_ff(float noundef %9, float noundef %54) #16
  br label %83

71:                                               ; preds = %47
  %72 = fmul float %9, %54
  br label %83

73:                                               ; preds = %47
  %74 = load float, ptr %12, align 8, !tbaa !108
  %75 = fsub float 1.000000e+00, %74
  %76 = fmul float %54, %74
  %77 = tail call float @llvm.fmuladd.f32(float %9, float %75, float %76)
  br label %83

78:                                               ; preds = %47
  %79 = fsub float %9, %54
  %80 = tail call float @llvm.fabs.f32(float %79)
  br label %86

81:                                               ; preds = %47
  %82 = fadd float %9, %54
  br label %83

83:                                               ; preds = %81, %73, %71, %69, %67, %65, %63, %60, %57
  %84 = phi float [ %82, %81 ], [ %77, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %60 ], [ %59, %57 ]
  %85 = fcmp olt float %84, 0.000000e+00
  br i1 %85, label %90, label %86

86:                                               ; preds = %78, %83
  %87 = phi float [ %80, %78 ], [ %84, %83 ]
  %88 = fcmp ogt float %87, 1.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %83, %86, %89
  %91 = phi float [ 1.000000e+00, %89 ], [ %87, %86 ], [ 0.000000e+00, %83 ]
  %92 = add nuw i32 %11, 1
  %93 = getelementptr inbounds %struct.MaskRasterLayer, ptr %10, i64 1
  %94 = icmp eq i32 %92, %4
  br i1 %94, label %95, label %8, !llvm.loop !138

95:                                               ; preds = %90, %2
  %96 = phi float [ 0.000000e+00, %2 ], [ %91, %90 ]
  ret float %96
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @layer_bucket_depth_from_xy(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !139 {
  %3 = tail call fastcc i32 @layer_bucket_index_from_xy(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load i32, ptr %8, align 4, !tbaa !61
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %32, label %17

17:                                               ; preds = %10, %27
  %18 = phi i32 [ %30, %27 ], [ %15, %10 ]
  %19 = phi float [ %28, %27 ], [ 1.000000e+00, %10 ]
  %20 = phi ptr [ %29, %27 ], [ %8, %10 ]
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds [4 x i32], ptr %12, i64 %21
  %23 = tail call fastcc float @maskrasterize_layer_isect(ptr noundef %22, ptr noundef %14, float noundef %19, ptr noundef %1) #16
  %24 = fcmp olt float %23, %19
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = fcmp oeq float %23, 0.000000e+00
  br i1 %26, label %32, label %27

27:                                               ; preds = %17, %25
  %28 = phi float [ %23, %25 ], [ %19, %17 ]
  %29 = getelementptr inbounds i32, ptr %20, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !61
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %17, !llvm.loop !140

32:                                               ; preds = %27, %25, %10, %2
  %33 = phi float [ 1.000000e+00, %2 ], [ 1.000000e+00, %10 ], [ %28, %27 ], [ 0.000000e+00, %25 ]
  ret float %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !141 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !142 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %18 = uitofp i32 %17 to float
  %19 = call float @llvm.fmuladd.f32(float %18, float %9, float %11)
  store float %19, ptr %14, align 4, !tbaa !53
  br i1 %15, label %33, label %20

20:                                               ; preds = %16
  %21 = mul i32 %17, %1
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i32 [ %30, %22 ], [ 0, %20 ]
  %24 = phi i32 [ %31, %22 ], [ %21, %20 ]
  %25 = uitofp i32 %23 to float
  %26 = call float @llvm.fmuladd.f32(float %25, float %7, float %10)
  store float %26, ptr %5, align 4, !tbaa !53
  %27 = call float @BKE_maskrasterize_handle_sample(ptr noundef %0, ptr noundef nonnull %5) #16
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds float, ptr %3, i64 %28
  store float %27, ptr %29, align 4, !tbaa !53
  %30 = add nuw i32 %23, 1
  %31 = add i32 %24, 1
  %32 = icmp eq i32 %30, %1
  br i1 %32, label %33, label %22, !llvm.loop !143

33:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %34 = add nuw i32 %17, 1
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %16, !llvm.loop !144

36:                                               ; preds = %33, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !145 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !146 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !147 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !148 {
  %3 = load float, ptr %0, align 4, !tbaa !53
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !149 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !150 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !151 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !152
  %4 = load float, ptr %0, align 4, !tbaa !153
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !155
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !156
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @layer_bucket_isect_test(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 !PGOFuncName !157 {
  %8 = alloca [2 x float], align 8
  %9 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds [4 x i32], ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 3
  %16 = load float, ptr %15, align 8, !tbaa !127
  %17 = insertelement <2 x i32> poison, i32 %2, i64 0
  %18 = insertelement <2 x i32> %17, i32 %3, i64 1
  %19 = uitofp <2 x i32> %18 to <2 x float>
  %20 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 3, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %22 = insertelement <2 x float> poison, float %4, i64 0
  %23 = insertelement <2 x float> %22, float %5, i64 1
  %24 = insertelement <2 x float> poison, float %16, i64 0
  %25 = insertelement <2 x float> %24, float %21, i64 1
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %19, <2 x float> %25)
  %27 = fadd <2 x float> %26, %23
  %28 = fadd <2 x float> %26, %27
  %29 = fmul <2 x float> %28, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %29, ptr %8, align 8, !tbaa !53
  %30 = getelementptr inbounds i32, ptr %12, i64 3
  %31 = load i32, ptr %30, align 4, !tbaa !61
  %32 = icmp eq i32 %31, -1
  %33 = load i32, ptr %12, align 4, !tbaa !61
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %14, i64 %34
  %36 = getelementptr inbounds i32, ptr %12, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [3 x float], ptr %14, i64 %38
  %40 = getelementptr inbounds i32, ptr %12, i64 2
  %41 = load i32, ptr %40, align 4, !tbaa !61
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [3 x float], ptr %14, i64 %42
  br i1 %32, label %44, label %57

44:                                               ; preds = %7
  %45 = call i32 @isect_point_tri_v2(ptr noundef nonnull %8, ptr noundef %35, ptr noundef %39, ptr noundef %43) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %35, ptr noundef %39) #14
  %49 = fcmp olt float %48, %6
  br i1 %49, label %78, label %50

50:                                               ; preds = %47
  %51 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %39, ptr noundef %43) #14
  %52 = fcmp olt float %51, %6
  br i1 %52, label %78, label %53

53:                                               ; preds = %50
  %54 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %43, ptr noundef %35) #14
  %55 = fcmp olt float %54, %6
  br i1 %55, label %78, label %56

56:                                               ; preds = %53
  br label %78

57:                                               ; preds = %7
  %58 = zext i32 %31 to i64
  %59 = getelementptr inbounds [3 x float], ptr %14, i64 %58
  %60 = call i32 @isect_point_tri_v2(ptr noundef nonnull %8, ptr noundef %35, ptr noundef %39, ptr noundef %43) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = call i32 @isect_point_tri_v2(ptr noundef nonnull %8, ptr noundef %35, ptr noundef %43, ptr noundef %59) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %35, ptr noundef %39) #14
  %67 = fcmp olt float %66, %6
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %39, ptr noundef %43) #14
  %70 = fcmp olt float %69, %6
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %43, ptr noundef %59) #14
  %73 = fcmp olt float %72, %6
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef %59, ptr noundef %35) #14
  %76 = fcmp olt float %75, %6
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77, %57, %62, %74, %71, %68, %65, %56, %44, %53, %50, %47
  %79 = phi i8 [ 0, %56 ], [ 1, %44 ], [ 1, %53 ], [ 1, %50 ], [ 1, %47 ], [ 0, %77 ], [ 1, %57 ], [ 1, %62 ], [ 1, %74 ], [ 1, %71 ], [ 1, %68 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  ret i8 %79
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_arena(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @isect_point_tri_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @layer_bucket_index_from_xy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !158 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !127
  %6 = fsub float %3, %5
  %7 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !53
  %9 = fmul float %6, %8
  %10 = fptoui float %9 to i32
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 3, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !128
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 5, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !53
  %18 = fmul float %15, %17
  %19 = fptoui float %18 to i32
  %20 = getelementptr inbounds %struct.MaskRasterLayer, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = mul i32 %21, %19
  %23 = add i32 %22, %10
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @maskrasterize_layer_isect(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !159 {
  %5 = getelementptr inbounds i32, ptr %0, i64 3
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 4, !tbaa !61
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 %10
  %12 = getelementptr inbounds i32, ptr %0, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [3 x float], ptr %1, i64 %14
  %16 = getelementptr inbounds i32, ptr %0, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x float], ptr %1, i64 %18
  %20 = tail call zeroext i8 @isect_point_tri_v2_cw(ptr noundef %3, ptr noundef %11, ptr noundef %15, ptr noundef %19) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %78, label %79

22:                                               ; preds = %4
  %23 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !53
  %25 = fcmp olt float %24, %2
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = fcmp olt float %28, %2
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !53
  %33 = fcmp olt float %32, %2
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds [3 x float], ptr %1, i64 3, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !53
  %37 = fcmp olt float %36, %2
  br i1 %37, label %38, label %78

38:                                               ; preds = %34, %30, %26, %22
  %39 = load i32, ptr %0, align 4, !tbaa !61
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [3 x float], ptr %1, i64 %40
  %42 = getelementptr inbounds i32, ptr %0, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !61
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [3 x float], ptr %1, i64 %44
  %46 = getelementptr inbounds i32, ptr %0, i64 2
  %47 = load i32, ptr %46, align 4, !tbaa !61
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [3 x float], ptr %1, i64 %48
  %50 = tail call i32 @isect_point_tri_v2(ptr noundef %3, ptr noundef %41, ptr noundef %45, ptr noundef %49) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %38
  %53 = load i32, ptr %0, align 4, !tbaa !61
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %1, i64 %54
  %56 = load i32, ptr %46, align 4, !tbaa !61
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [3 x float], ptr %1, i64 %57
  %59 = load i32, ptr %5, align 4, !tbaa !61
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [3 x float], ptr %1, i64 %60
  %62 = tail call i32 @isect_point_tri_v2(ptr noundef %3, ptr noundef %55, ptr noundef %58, ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %52, %38
  %65 = load i32, ptr %0, align 4, !tbaa !61
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [3 x float], ptr %1, i64 %66
  %68 = load i32, ptr %42, align 4, !tbaa !61
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [3 x float], ptr %1, i64 %69
  %71 = load i32, ptr %46, align 4, !tbaa !61
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [3 x float], ptr %1, i64 %72
  %74 = load i32, ptr %5, align 4, !tbaa !61
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [3 x float], ptr %1, i64 %75
  %77 = tail call fastcc float @maskrasterize_layer_z_depth_quad(ptr noundef %3, ptr noundef %67, ptr noundef %70, ptr noundef %73, ptr noundef %76) #16
  br label %79

78:                                               ; preds = %34, %52, %8
  br label %79

79:                                               ; preds = %8, %78, %64
  %80 = phi float [ 1.000000e+00, %78 ], [ %77, %64 ], [ 0.000000e+00, %8 ]
  ret float %80
}

; Function Attrs: optsize
declare zeroext i8 @isect_point_tri_v2_cw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @maskrasterize_layer_z_depth_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !160 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @barycentric_weights_v2_quad(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %0, ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %8 = load float, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fadd float %8, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret float %11
}

; Function Attrs: optsize
declare void @barycentric_weights_v2_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

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
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!42, !42, i64 0}
!54 = !{!55, !36, i64 143}
!55 = !{!"MaskLayer", !35, i64 0, !35, i64 8, !36, i64 16, !56, i64 80, !56, i64 96, !35, i64 112, !35, i64 120, !42, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!56 = !{!"ListBase", !35, i64 0, !35, i64 8}
!57 = !{!58, !59, i64 16}
!58 = !{!"MaskSpline", !35, i64 0, !35, i64 8, !59, i64 16, !36, i64 18, !36, i64 19, !40, i64 20, !35, i64 24, !60, i64 32, !35, i64 216}
!59 = !{!"short", !36, i64 0}
!60 = !{!"MaskParent", !40, i64 0, !40, i64 4, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!61 = !{!40, !40, i64 0}
!62 = !{!63, !59, i64 48}
!63 = !{!"ScanFillContext", !56, i64 0, !56, i64 16, !56, i64 32, !59, i64 48, !35, i64 56}
!64 = distinct !{!64, !51}
!65 = distinct !{!65, !51}
!66 = !{!36, !36, i64 0}
!67 = !{!68, !40, i64 44}
!68 = !{!"ScanFillVert", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 24, !36, i64 36, !40, i64 44, !59, i64 48, !36, i64 50, !40, i64 51, !40, i64 51}
!69 = distinct !{!69, !51}
!70 = !{!63, !35, i64 8}
!71 = !{!68, !35, i64 0}
!72 = distinct !{!72, !51}
!73 = distinct !{!73, !51}
!74 = distinct !{!74, !51}
!75 = !{!76, !40, i64 0}
!76 = !{!"MaskRasterSplineInfo", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16}
!77 = !{!76, !40, i64 4}
!78 = distinct !{!78, !51}
!79 = !{!76, !40, i64 8}
!80 = !{!76, !40, i64 12}
!81 = distinct !{!81, !51}
!82 = distinct !{!82, !51}
!83 = !{!76, !36, i64 16}
!84 = distinct !{!84, !51}
!85 = !{!63, !35, i64 0}
!86 = distinct !{!86, !51}
!87 = !{!55, !36, i64 142}
!88 = distinct !{!88, !51}
!89 = !{!63, !35, i64 32}
!90 = !{!91, !35, i64 32}
!91 = !{!"ScanFillFace", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!92 = !{!91, !35, i64 24}
!93 = !{!91, !35, i64 16}
!94 = !{!91, !35, i64 0}
!95 = distinct !{!95, !51}
!96 = !{!97, !35, i64 16}
!97 = !{!"ScanFillEdge", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !59, i64 32, !40, i64 34, !40, i64 34, !36, i64 35}
!98 = !{!97, !35, i64 24}
!99 = !{!97, !35, i64 0}
!100 = distinct !{!100, !51}
!101 = distinct !{!101, !51}
!102 = distinct !{!102, !51}
!103 = distinct !{!103, !51}
!104 = distinct !{!104, !51}
!105 = !{!45, !40, i64 0}
!106 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53}
!107 = !{!55, !42, i64 128}
!108 = !{!45, !42, i64 64}
!109 = !{!55, !36, i64 132}
!110 = !{!45, !36, i64 68}
!111 = !{!55, !36, i64 133}
!112 = !{!45, !36, i64 69}
!113 = !{!55, !36, i64 134}
!114 = !{!45, !36, i64 70}
!115 = distinct !{!115, !51}
!116 = !{!"mask_rasterize.c:min_ii"}
!117 = !{!"mask_rasterize.c:maskrasterize_spline_differentiate_point_outset"}
!118 = distinct !{!118, !51}
!119 = !{!"mask_rasterize.c:copy_v2_v2"}
!120 = !{!"mask_rasterize.c:sub_v2_v2v2"}
!121 = !{!"mask_rasterize.c:add_v2_v2v2"}
!122 = !{!"mask_rasterize.c:clampis_uint"}
!123 = !{!"mask_rasterize.c:len_v2v2"}
!124 = !{!"mask_rasterize.c:rotate_point_v2"}
!125 = !{!"mask_rasterize.c:copy_v3_v3"}
!126 = !{!"mask_rasterize.c:layer_bucket_init"}
!127 = !{!45, !42, i64 24}
!128 = !{!45, !42, i64 32}
!129 = !{i8 0, i8 2}
!130 = distinct !{!130, !51}
!131 = distinct !{!131, !51}
!132 = distinct !{!132, !51}
!133 = !{!134, !35, i64 8}
!134 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!135 = distinct !{!135, !51}
!136 = distinct !{!136, !51}
!137 = !{!"mask_rasterize.c:layer_bucket_init_dummy"}
!138 = distinct !{!138, !51}
!139 = !{!"mask_rasterize.c:layer_bucket_depth_from_xy"}
!140 = distinct !{!140, !51}
!141 = !{!"mask_rasterize.c:max_ff"}
!142 = !{!"mask_rasterize.c:min_ff"}
!143 = distinct !{!143, !51}
!144 = distinct !{!144, !51}
!145 = !{!"mask_rasterize.c:normalize_v2"}
!146 = !{!"mask_rasterize.c:len_squared_v2v2"}
!147 = !{!"mask_rasterize.c:normalize_v2_v2"}
!148 = !{!"mask_rasterize.c:dot_v2v2"}
!149 = !{!"mask_rasterize.c:mul_v2_v2fl"}
!150 = !{!"mask_rasterize.c:zero_v2"}
!151 = !{!"mask_rasterize.c:BLI_rctf_size_x"}
!152 = !{!41, !42, i64 4}
!153 = !{!41, !42, i64 0}
!154 = !{!"mask_rasterize.c:BLI_rctf_size_y"}
!155 = !{!41, !42, i64 12}
!156 = !{!41, !42, i64 8}
!157 = !{!"mask_rasterize.c:layer_bucket_isect_test"}
!158 = !{!"mask_rasterize.c:layer_bucket_index_from_xy"}
!159 = !{!"mask_rasterize.c:maskrasterize_layer_isect"}
!160 = !{!"mask_rasterize.c:maskrasterize_layer_z_depth_quad"}
