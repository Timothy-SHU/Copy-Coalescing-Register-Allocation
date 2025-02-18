; ModuleID = 'blender/source/blender/render/intern/source/bake_api.c'
source_filename = "blender/source/blender/render/intern/source/bake_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.BakePixel = type { i32, [2 x float], float, float, float, float }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BakeHighPolyData = type { ptr, ptr, ptr, ptr, i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.TriTessFace = type { [3 x ptr], [3 x ptr], [3 x float], i8 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.TSpace = type { [3 x float], float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BakeDataZSpan = type { ptr, i32, ptr, ptr, float, float, float, float }
%struct.BakeImages = type { ptr, ptr, i32 }
%struct.ZSpan = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, float, ptr, ptr, ptr, ptr }
%struct.BakeImage = type { ptr, i32, i32, i64 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"MVerts Highpoly Mesh Array\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Highpoly Derived Meshes\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Highpoly BVH Trees\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"MVerts Lowpoly Mesh\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MVerts Cage Mesh\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"MVerts Highpoly Mesh\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Baking: out of memory while creating BHVTree for object \22%s\22\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"bake zspan\00", align 1
@R = external local_unnamed_addr global %struct.Render, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"MVerts Mesh\00", align 1
@__const.RE_bake_ibuf_clear.vec_solid = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@__const.RE_bake_ibuf_clear.nor_alpha = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00], align 16
@__const.RE_bake_ibuf_clear.nor_solid = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00], align 16
@.str.9 = private unnamed_addr constant [35 x i8] c"Bake Highpoly to Lowpoly: BVH Rays\00", align 1
@__const.normal_compress.swizzle_index = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 0, i32 1, i32 2], align 16
@__const.normal_compress.swizzle_sign = private unnamed_addr constant [6 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @RE_bake_mask_fill(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %2, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %2, i64 %8
  store i8 2, ptr %13, align 1, !tbaa !40
  br label %14

14:                                               ; preds = %7, %12
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %1
  br i1 %16, label %17, label %7, !llvm.loop !41

17:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_bake_margin(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  tail call void @IMB_filter_extend(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 8, !tbaa !44
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @IMB_rectfill_alpha(ptr noundef %0, float noundef 1.000000e+00) #11
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

declare void @IMB_filter_extend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @IMB_rectfill_alpha(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @RE_bake_pixels_populate_from_objects(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i8 noundef zeroext %5, float noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #2 {
  %11 = alloca [2 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [2 x [3 x [3 x float]]], align 16
  %16 = alloca [2 x [3 x float]], align 16
  %17 = alloca [2 x ptr], align 16
  %18 = alloca [4 x [4 x float]], align 16
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #11
  %21 = icmp eq ptr %9, null
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %23 = sext i32 %3 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #11
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %27 = tail call ptr %26(i64 noundef %24, ptr noundef nonnull @.str.1) #11
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %29 = mul nsw i64 %23, 72
  %30 = tail call ptr %28(i64 noundef %29, ptr noundef nonnull @.str.2) #11
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  br i1 %21, label %32, label %40

32:                                               ; preds = %10
  %33 = tail call ptr @CDDM_from_mesh(ptr noundef %0) #11
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %35 = load i32, ptr %31, align 8, !tbaa !50
  %36 = shl nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 6
  %39 = tail call ptr %34(i64 noundef %38, ptr noundef nonnull @.str.3) #11
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %39, ptr noundef %0, i8 noundef zeroext 1, ptr noundef %33)
  br label %57

40:                                               ; preds = %10
  %41 = icmp eq i8 %5, 0
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %43 = load i32, ptr %31, align 8, !tbaa !50
  %44 = shl nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 6
  br i1 %41, label %55, label %47

47:                                               ; preds = %40
  %48 = tail call ptr %42(i64 noundef %46, ptr noundef nonnull @.str.3) #11
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %48, ptr noundef %0, i8 noundef zeroext 0, ptr noundef null)
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %50 = load i32, ptr %31, align 8, !tbaa !50
  %51 = shl nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 6
  %54 = tail call ptr %49(i64 noundef %53, ptr noundef nonnull @.str.4) #11
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %54, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null)
  br label %57

55:                                               ; preds = %40
  %56 = tail call ptr %42(i64 noundef %46, ptr noundef nonnull @.str.4) #11
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %56, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null)
  br label %57

57:                                               ; preds = %47, %55, %32
  %58 = phi ptr [ null, %47 ], [ null, %55 ], [ %33, %32 ]
  %59 = phi ptr [ %48, %47 ], [ null, %55 ], [ %39, %32 ]
  %60 = phi ptr [ %54, %47 ], [ %56, %55 ], [ null, %32 ]
  %61 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef %7) #11
  %62 = icmp eq i32 %3, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %121, %57
  %64 = icmp eq i64 %4, 0
  br i1 %64, label %347, label %65

65:                                               ; preds = %63
  %66 = icmp eq i8 %5, 0
  %67 = getelementptr inbounds [2 x ptr], ptr %17, i64 0, i64 1
  %68 = getelementptr inbounds [2 x [3 x float]], ptr %16, i64 0, i64 1
  %69 = getelementptr inbounds float, ptr %16, i64 1
  %70 = getelementptr inbounds [2 x [3 x float]], ptr %16, i64 0, i64 1, i64 1
  %71 = getelementptr inbounds float, ptr %16, i64 2
  %72 = getelementptr inbounds [2 x [3 x float]], ptr %16, i64 0, i64 1, i64 2
  %73 = getelementptr inbounds float, ptr %19, i64 1
  %74 = getelementptr inbounds float, ptr %19, i64 2
  %75 = getelementptr inbounds float, ptr %20, i64 1
  %76 = getelementptr inbounds float, ptr %20, i64 2
  %77 = mul nsw i64 %23, 36
  %78 = icmp sgt i32 %3, 0
  %79 = getelementptr inbounds float, ptr %13, i64 1
  %80 = getelementptr inbounds float, ptr %13, i64 2
  %81 = getelementptr inbounds float, ptr %19, i64 1
  %82 = getelementptr inbounds float, ptr %14, i64 1
  %83 = getelementptr inbounds float, ptr %19, i64 2
  %84 = getelementptr inbounds float, ptr %14, i64 2
  %85 = icmp sgt i32 %3, 0
  %86 = getelementptr inbounds float, ptr %11, i64 1
  %87 = icmp sgt i32 %3, 0
  %88 = zext nneg i32 %3 to i64
  %89 = zext nneg i32 %3 to i64
  %90 = zext nneg i32 %3 to i64
  br label %124

91:                                               ; preds = %57, %121
  %92 = phi i64 [ %122, %121 ], [ 0, %57 ]
  %93 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %94 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %92, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !55
  %96 = getelementptr inbounds %struct.Mesh, ptr %95, i64 0, i32 28
  %97 = load i32, ptr %96, align 8, !tbaa !50
  %98 = sext i32 %97 to i64
  %99 = shl nsw i64 %98, 6
  %100 = call ptr %93(i64 noundef %99, ptr noundef nonnull @.str.5) #11
  %101 = getelementptr inbounds ptr, ptr %25, i64 %92
  store ptr %100, ptr %101, align 8, !tbaa !49
  %102 = load ptr, ptr %94, align 8, !tbaa !55
  call fastcc void @mesh_calc_tri_tessface(ptr noundef %100, ptr noundef %102, i8 noundef zeroext 0, ptr noundef null)
  %103 = load ptr, ptr %94, align 8, !tbaa !55
  %104 = call ptr @CDDM_from_mesh(ptr noundef %103) #11
  %105 = getelementptr inbounds ptr, ptr %27, i64 %92
  store ptr %104, ptr %105, align 8, !tbaa !49
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %104, i64 0, i32 25
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  %108 = call i32 %107(ptr noundef %104) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %91
  %111 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %30, i64 %92
  %112 = load ptr, ptr %105, align 8, !tbaa !49
  %113 = call ptr @bvhtree_from_mesh_faces(ptr noundef %111, ptr noundef %112, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #11
  %114 = load ptr, ptr %111, align 8, !tbaa !59
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %92, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !61
  %119 = getelementptr inbounds %struct.ID, ptr %118, i64 0, i32 4, i64 2
  %120 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %119)
  br label %347

121:                                              ; preds = %91, %110
  %122 = add nuw i64 %92, 1
  %123 = icmp eq i64 %122, %23
  br i1 %123, label %63, label %91, !llvm.loop !62

124:                                              ; preds = %65, %344
  %125 = phi i64 [ 0, %65 ], [ %345, %344 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %126 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !34
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  br i1 %87, label %130, label %344

130:                                              ; preds = %129, %130
  %131 = phi i64 [ %135, %130 ], [ 0, %129 ]
  %132 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !63
  %134 = getelementptr inbounds %struct.BakePixel, ptr %133, i64 %125
  store i32 -1, ptr %134, align 4, !tbaa !34
  %135 = add nuw nsw i64 %131, 1
  %136 = icmp eq i64 %135, %90
  br i1 %136, label %344, label %130, !llvm.loop !64

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %125, i32 1
  %139 = load float, ptr %138, align 4, !tbaa !65
  %140 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %125, i32 1, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !65
  br i1 %66, label %209, label %142

142:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #11
  %143 = sext i32 %127 to i64
  %144 = getelementptr inbounds %struct.TriTessFace, ptr %59, i64 %143
  store ptr %144, ptr %17, align 16, !tbaa !49
  %145 = getelementptr inbounds %struct.TriTessFace, ptr %60, i64 %143
  store ptr %145, ptr %67, align 8, !tbaa !49
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %180, %146 ]
  %148 = getelementptr inbounds [2 x [3 x [3 x float]]], ptr %15, i64 0, i64 %147
  %149 = getelementptr inbounds [2 x ptr], ptr %17, i64 0, i64 %147
  %150 = load ptr, ptr %149, align 8, !tbaa !49
  %151 = load ptr, ptr %150, align 8, !tbaa !49
  %152 = load float, ptr %151, align 4, !tbaa !65
  store float %152, ptr %148, align 4, !tbaa !65
  %153 = getelementptr inbounds float, ptr %151, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !65
  %155 = getelementptr inbounds float, ptr %148, i64 1
  store float %154, ptr %155, align 4, !tbaa !65
  %156 = getelementptr inbounds float, ptr %151, i64 2
  %157 = load float, ptr %156, align 4, !tbaa !65
  %158 = getelementptr inbounds float, ptr %148, i64 2
  store float %157, ptr %158, align 4, !tbaa !65
  %159 = getelementptr inbounds [2 x [3 x [3 x float]]], ptr %15, i64 0, i64 %147, i64 1
  %160 = getelementptr inbounds [3 x ptr], ptr %150, i64 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !49
  %162 = load float, ptr %161, align 4, !tbaa !65
  store float %162, ptr %159, align 4, !tbaa !65
  %163 = getelementptr inbounds float, ptr %161, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !65
  %165 = getelementptr inbounds float, ptr %159, i64 1
  store float %164, ptr %165, align 4, !tbaa !65
  %166 = getelementptr inbounds float, ptr %161, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !65
  %168 = getelementptr inbounds float, ptr %159, i64 2
  store float %167, ptr %168, align 4, !tbaa !65
  %169 = getelementptr inbounds [2 x [3 x [3 x float]]], ptr %15, i64 0, i64 %147, i64 2
  %170 = getelementptr inbounds [3 x ptr], ptr %150, i64 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !49
  %172 = load float, ptr %171, align 4, !tbaa !65
  store float %172, ptr %169, align 4, !tbaa !65
  %173 = getelementptr inbounds float, ptr %171, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !65
  %175 = getelementptr inbounds float, ptr %169, i64 1
  store float %174, ptr %175, align 4, !tbaa !65
  %176 = getelementptr inbounds float, ptr %171, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !65
  %178 = getelementptr inbounds float, ptr %169, i64 2
  store float %177, ptr %178, align 4, !tbaa !65
  %179 = getelementptr inbounds [2 x [3 x float]], ptr %16, i64 0, i64 %147
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %148, float noundef %139, float noundef %141, ptr noundef nonnull %179) #11
  %180 = add nuw nsw i64 %147, 1
  %181 = icmp eq i64 %147, 0
  br i1 %181, label %146, label %182, !llvm.loop !66

182:                                              ; preds = %146
  call void @mul_m4_v3(ptr noundef %7, ptr noundef nonnull %16) #11
  call void @mul_m4_v3(ptr noundef %8, ptr noundef nonnull %68) #11
  %183 = load float, ptr %16, align 16, !tbaa !65
  %184 = load float, ptr %68, align 4, !tbaa !65
  %185 = fsub float %183, %184
  %186 = load float, ptr %69, align 4, !tbaa !65
  %187 = load float, ptr %70, align 16, !tbaa !65
  %188 = fsub float %186, %187
  %189 = load float, ptr %71, align 8, !tbaa !65
  %190 = load float, ptr %72, align 4, !tbaa !65
  %191 = fsub float %189, %190
  %192 = fmul float %188, %188
  %193 = call float @llvm.fmuladd.f32(float %185, float %185, float %192)
  %194 = call float @llvm.fmuladd.f32(float %191, float %191, float %193)
  %195 = fcmp ogt float %194, 0x38AA95A5C0000000
  br i1 %195, label %196, label %202

196:                                              ; preds = %182
  %197 = call float @sqrtf(float noundef %194) #11
  %198 = fdiv float 1.000000e+00, %197
  %199 = fmul float %185, %198
  %200 = fmul float %188, %198
  %201 = fmul float %191, %198
  br label %202

202:                                              ; preds = %182, %196
  %203 = phi float [ %200, %196 ], [ 0.000000e+00, %182 ]
  %204 = phi float [ %199, %196 ], [ 0.000000e+00, %182 ]
  %205 = phi float [ %201, %196 ], [ 0.000000e+00, %182 ]
  %206 = load float, ptr %68, align 4, !tbaa !65
  store float %206, ptr %19, align 4, !tbaa !65
  %207 = load float, ptr %70, align 16, !tbaa !65
  store float %207, ptr %73, align 4, !tbaa !65
  %208 = load float, ptr %72, align 4, !tbaa !65
  store float %208, ptr %74, align 4, !tbaa !65
  store float %204, ptr %20, align 4, !tbaa !65
  store float %203, ptr %75, align 4, !tbaa !65
  store float %205, ptr %76, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %15) #11
  br label %212

209:                                              ; preds = %137
  br i1 %21, label %211, label %210

210:                                              ; preds = %209
  call fastcc void @calc_point_from_barycentric_extrusion(ptr noundef %60, ptr noundef %7, ptr noundef nonnull %18, i32 noundef %127, float noundef %139, float noundef %141, float noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %20, i8 noundef zeroext 1)
  br label %212

211:                                              ; preds = %209
  call fastcc void @calc_point_from_barycentric_extrusion(ptr noundef %59, ptr noundef %7, ptr noundef nonnull %18, i32 noundef %127, float noundef %139, float noundef %141, float noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %20, i8 noundef zeroext 0)
  br label %212

212:                                              ; preds = %210, %211, %202
  %213 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %125, i32 2
  %214 = load float, ptr %213, align 4, !tbaa !67
  %215 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %125, i32 3
  %216 = load float, ptr %215, align 4, !tbaa !68
  %217 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %125, i32 4
  %218 = load float, ptr %217, align 4, !tbaa !69
  %219 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %125, i32 5
  %220 = load float, ptr %219, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %221 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %222 = call ptr %221(i64 noundef %77, ptr noundef nonnull @.str.9) #11
  br i1 %78, label %231, label %223

223:                                              ; preds = %301, %212
  %224 = phi i32 [ -1, %212 ], [ %303, %301 ]
  br i1 %85, label %225, label %340

225:                                              ; preds = %223
  %226 = shl i64 %125, 32
  %227 = ashr exact i64 %226, 32
  %228 = shl i64 %125, 32
  %229 = ashr exact i64 %228, 32
  %230 = zext i32 %224 to i64
  br label %306

231:                                              ; preds = %212, %301
  %232 = phi i64 [ %304, %301 ], [ 0, %212 ]
  %233 = phi i32 [ %303, %301 ], [ -1, %212 ]
  %234 = phi float [ %302, %301 ], [ 0x47EFFFFFE0000000, %212 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %235 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %222, i64 %232
  store i32 -1, ptr %235, align 4, !tbaa !71
  %236 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %222, i64 %232, i32 3
  store float 1.000000e+04, ptr %236, align 4, !tbaa !73
  %237 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %232, i32 6
  call void @mul_v3_m4v3(ptr noundef nonnull %12, ptr noundef nonnull %237, ptr noundef nonnull %19) #11
  %238 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %232, i32 7
  call void @mul_v3_m4v3(ptr noundef nonnull %13, ptr noundef nonnull %238, ptr noundef nonnull %20) #11
  %239 = load float, ptr %13, align 4, !tbaa !65
  %240 = load float, ptr %79, align 4, !tbaa !65
  %241 = fmul float %240, %240
  %242 = call float @llvm.fmuladd.f32(float %239, float %239, float %241)
  %243 = load float, ptr %80, align 4, !tbaa !65
  %244 = call float @llvm.fmuladd.f32(float %243, float %243, float %242)
  %245 = fcmp ogt float %244, 0x38AA95A5C0000000
  br i1 %245, label %246, label %255

246:                                              ; preds = %231
  %247 = call float @sqrtf(float noundef %244) #11
  %248 = fdiv float 1.000000e+00, %247
  %249 = load float, ptr %13, align 4, !tbaa !65
  %250 = fmul float %249, %248
  store float %250, ptr %13, align 4, !tbaa !65
  %251 = load float, ptr %79, align 4, !tbaa !65
  %252 = fmul float %248, %251
  store float %252, ptr %79, align 4, !tbaa !65
  %253 = load float, ptr %80, align 4, !tbaa !65
  %254 = fmul float %248, %253
  br label %256

255:                                              ; preds = %231
  store float 0.000000e+00, ptr %13, align 4, !tbaa !65
  store float 0.000000e+00, ptr %79, align 4, !tbaa !65
  br label %256

256:                                              ; preds = %255, %246
  %257 = phi float [ 0.000000e+00, %255 ], [ %254, %246 ]
  store float %257, ptr %80, align 4, !tbaa !65
  %258 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %30, i64 %232
  %259 = load ptr, ptr %258, align 8, !tbaa !59
  %260 = icmp eq ptr %259, null
  br i1 %260, label %265, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %30, i64 %232, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !74
  %264 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %259, ptr noundef nonnull %12, ptr noundef nonnull %13, float noundef 0.000000e+00, ptr noundef nonnull %235, ptr noundef %263, ptr noundef nonnull %258) #11
  br label %265

265:                                              ; preds = %261, %256
  %266 = load i32, ptr %235, align 4, !tbaa !71
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %301, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %222, i64 %232, i32 2
  %270 = load float, ptr %13, align 4, !tbaa !65
  %271 = load float, ptr %269, align 4, !tbaa !65
  %272 = load float, ptr %79, align 4, !tbaa !65
  %273 = getelementptr inbounds float, ptr %269, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !65
  %275 = fmul float %272, %274
  %276 = call float @llvm.fmuladd.f32(float %270, float %271, float %275)
  %277 = load float, ptr %80, align 4, !tbaa !65
  %278 = getelementptr inbounds float, ptr %269, i64 2
  %279 = load float, ptr %278, align 4, !tbaa !65
  %280 = call float @llvm.fmuladd.f32(float %277, float %279, float %276)
  %281 = fcmp olt float %280, 0.000000e+00
  br i1 %281, label %282, label %301

282:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %283 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %232, i32 5
  %284 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %222, i64 %232, i32 1
  call void @mul_v3_m4v3(ptr noundef nonnull %14, ptr noundef nonnull %283, ptr noundef nonnull %284) #11
  %285 = load float, ptr %19, align 4, !tbaa !65
  %286 = load float, ptr %14, align 4, !tbaa !65
  %287 = fsub float %285, %286
  %288 = load float, ptr %81, align 4, !tbaa !65
  %289 = load float, ptr %82, align 4, !tbaa !65
  %290 = fsub float %288, %289
  %291 = load float, ptr %83, align 4, !tbaa !65
  %292 = load float, ptr %84, align 4, !tbaa !65
  %293 = fsub float %291, %292
  %294 = fmul float %290, %290
  %295 = call float @llvm.fmuladd.f32(float %287, float %287, float %294)
  %296 = call float @llvm.fmuladd.f32(float %293, float %293, float %295)
  %297 = fcmp olt float %296, %234
  %298 = select i1 %297, float %296, float %234
  %299 = trunc i64 %232 to i32
  %300 = select i1 %297, i32 %299, i32 %233
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  br label %301

301:                                              ; preds = %282, %268, %265
  %302 = phi float [ %234, %265 ], [ %298, %282 ], [ %234, %268 ]
  %303 = phi i32 [ %233, %265 ], [ %300, %282 ], [ %233, %268 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  %304 = add nuw nsw i64 %232, 1
  %305 = icmp eq i64 %304, %88
  br i1 %305, label %223, label %231, !llvm.loop !75

306:                                              ; preds = %225, %337
  %307 = phi i64 [ 0, %225 ], [ %338, %337 ]
  %308 = icmp eq i64 %307, %230
  br i1 %308, label %309, label %333

309:                                              ; preds = %306
  %310 = getelementptr inbounds ptr, ptr %25, i64 %307
  %311 = load ptr, ptr %310, align 8, !tbaa !49
  %312 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %222, i64 %307
  %313 = load i32, ptr %312, align 4, !tbaa !71
  %314 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %222, i64 %307, i32 1
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds %struct.TriTessFace, ptr %311, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !49
  %318 = getelementptr inbounds [3 x ptr], ptr %316, i64 0, i64 1
  %319 = load ptr, ptr %318, align 8, !tbaa !49
  %320 = getelementptr inbounds [3 x ptr], ptr %316, i64 0, i64 2
  %321 = load ptr, ptr %320, align 8, !tbaa !49
  call void @resolve_tri_uv_v3(ptr noundef nonnull %11, ptr noundef nonnull %314, ptr noundef %317, ptr noundef %319, ptr noundef %321) #11
  %322 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %307
  %323 = load ptr, ptr %322, align 8, !tbaa !63
  %324 = getelementptr inbounds %struct.BakePixel, ptr %323, i64 %229
  store i32 %313, ptr %324, align 4, !tbaa !34
  %325 = getelementptr inbounds %struct.BakePixel, ptr %323, i64 %229, i32 1
  %326 = load float, ptr %11, align 4, !tbaa !65
  store float %326, ptr %325, align 4, !tbaa !65
  %327 = load float, ptr %86, align 4, !tbaa !65
  %328 = getelementptr inbounds float, ptr %325, i64 1
  store float %327, ptr %328, align 4, !tbaa !65
  %329 = getelementptr inbounds %struct.BakePixel, ptr %323, i64 %229, i32 2
  store float %214, ptr %329, align 4, !tbaa !67
  %330 = getelementptr inbounds %struct.BakePixel, ptr %323, i64 %229, i32 3
  store float %216, ptr %330, align 4, !tbaa !68
  %331 = getelementptr inbounds %struct.BakePixel, ptr %323, i64 %229, i32 4
  store float %218, ptr %331, align 4, !tbaa !69
  %332 = getelementptr inbounds %struct.BakePixel, ptr %323, i64 %229, i32 5
  store float %220, ptr %332, align 4, !tbaa !70
  br label %337

333:                                              ; preds = %306
  %334 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %307
  %335 = load ptr, ptr %334, align 8, !tbaa !63
  %336 = getelementptr inbounds %struct.BakePixel, ptr %335, i64 %227
  store i32 -1, ptr %336, align 4, !tbaa !34
  br label %337

337:                                              ; preds = %333, %309
  %338 = add nuw nsw i64 %307, 1
  %339 = icmp eq i64 %338, %89
  br i1 %339, label %340, label %306, !llvm.loop !76

340:                                              ; preds = %337, %223
  %341 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %341(ptr noundef %222) #11
  %342 = icmp eq i32 %224, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  store i32 -1, ptr %126, align 4, !tbaa !34
  br label %344

344:                                              ; preds = %130, %129, %340, %343
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  %345 = add nuw i64 %125, 1
  %346 = icmp eq i64 %345, %4
  br i1 %346, label %347, label %124, !llvm.loop !77

347:                                              ; preds = %344, %63, %116
  %348 = phi i8 [ 0, %116 ], [ 1, %63 ], [ 1, %344 ]
  %349 = icmp eq i32 %3, 0
  br i1 %349, label %368, label %350

350:                                              ; preds = %347, %365
  %351 = phi i64 [ %366, %365 ], [ 0, %347 ]
  %352 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %30, i64 %351
  call void @free_bvhtree_from_mesh(ptr noundef %352) #11
  %353 = getelementptr inbounds ptr, ptr %27, i64 %351
  %354 = load ptr, ptr %353, align 8, !tbaa !49
  %355 = icmp eq ptr %354, null
  br i1 %355, label %359, label %356

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.DerivedMesh, ptr %354, i64 0, i32 95
  %358 = load ptr, ptr %357, align 8, !tbaa !78
  call void %358(ptr noundef nonnull %354) #11
  br label %359

359:                                              ; preds = %356, %350
  %360 = getelementptr inbounds ptr, ptr %25, i64 %351
  %361 = load ptr, ptr %360, align 8, !tbaa !49
  %362 = icmp eq ptr %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %359
  %364 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %364(ptr noundef nonnull %361) #11
  br label %365

365:                                              ; preds = %359, %363
  %366 = add nuw i64 %351, 1
  %367 = icmp eq i64 %366, %23
  br i1 %367, label %368, label %350, !llvm.loop !79

368:                                              ; preds = %365, %347
  %369 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %369(ptr noundef %25) #11
  %370 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %370(ptr noundef %30) #11
  %371 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %371(ptr noundef %27) #11
  %372 = icmp eq ptr %58, null
  br i1 %372, label %376, label %373

373:                                              ; preds = %368
  %374 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 95
  %375 = load ptr, ptr %374, align 8, !tbaa !78
  call void %375(ptr noundef nonnull %58) #11
  br label %376

376:                                              ; preds = %373, %368
  %377 = icmp eq ptr %59, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %376
  %379 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %379(ptr noundef nonnull %59) #11
  br label %380

380:                                              ; preds = %378, %376
  %381 = icmp eq ptr %60, null
  br i1 %381, label %384, label %382

382:                                              ; preds = %380
  %383 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %383(ptr noundef nonnull %60) #11
  br label %384

384:                                              ; preds = %382, %380
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #11
  ret i8 %348
}

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @mesh_calc_tri_tessface(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %6 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %5, i32 noundef 4) #11
  %7 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %8 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %7, i32 noundef 0) #11
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  tail call void @DM_ensure_normals(ptr noundef %3) #11
  tail call void @DM_add_tangent_layer(ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = tail call ptr %12(ptr noundef %3, i32 noundef 8) #11
  %14 = icmp ne ptr %13, null
  %15 = load ptr, ptr %11, align 8, !tbaa !80
  %16 = tail call ptr %15(ptr noundef %3, i32 noundef 18) #11
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi ptr [ %16, %10 ], [ undef, %4 ]
  %19 = phi ptr [ %13, %10 ], [ null, %4 ]
  %20 = phi i1 [ %14, %10 ], [ undef, %4 ]
  %21 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %22 = load i32, ptr %21, align 8, !tbaa !50
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %122

24:                                               ; preds = %17, %116
  %25 = phi i64 [ %118, %116 ], [ 0, %17 ]
  %26 = phi i32 [ %117, %116 ], [ -1, %17 ]
  %27 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25
  %28 = shl i64 %25, 2
  %29 = and i64 %28, 4294967292
  %30 = getelementptr inbounds %struct.TSpace, ptr %18, i64 %29
  %31 = select i1 %9, ptr null, ptr %30
  %32 = add nsw i32 %26, 1
  %33 = load i32, ptr %27, align 4, !tbaa !81
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MVert, ptr %8, i64 %34
  %36 = sext i32 %32 to i64
  %37 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36
  store ptr %35, ptr %37, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !83
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.MVert, ptr %8, i64 %40
  %42 = getelementptr inbounds [3 x ptr], ptr %37, i64 0, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !49
  %43 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !84
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.MVert, ptr %8, i64 %45
  %47 = getelementptr inbounds [3 x ptr], ptr %37, i64 0, i64 2
  store ptr %46, ptr %47, align 8, !tbaa !49
  %48 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 6
  %49 = load i8, ptr %48, align 1, !tbaa !85
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36, i32 3
  store i8 %50, ptr %51, align 4, !tbaa !86
  br i1 %9, label %80, label %52

52:                                               ; preds = %24
  %53 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36, i32 1
  store ptr %31, ptr %53, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.TSpace, ptr %31, i64 1
  %55 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36, i32 1, i64 1
  store ptr %54, ptr %55, align 8, !tbaa !49
  %56 = getelementptr inbounds %struct.TSpace, ptr %31, i64 2
  %57 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36, i32 1, i64 2
  store ptr %56, ptr %57, align 8, !tbaa !49
  br i1 %20, label %69, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !88
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36, i32 2
  br i1 %61, label %67, label %63

63:                                               ; preds = %58
  %64 = zext i32 %60 to i64
  %65 = getelementptr inbounds %struct.MVert, ptr %8, i64 %64
  %66 = tail call float @normal_quad_v3(ptr noundef nonnull %62, ptr noundef %35, ptr noundef %41, ptr noundef %46, ptr noundef nonnull %65) #11
  br label %80

67:                                               ; preds = %58
  %68 = tail call float @normal_tri_v3(ptr noundef nonnull %62, ptr noundef %35, ptr noundef %41, ptr noundef %46) #11
  br label %80

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36, i32 2
  %71 = mul nuw nsw i64 %25, 3
  %72 = getelementptr inbounds float, ptr %19, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !65
  store float %73, ptr %70, align 4, !tbaa !65
  %74 = getelementptr inbounds float, ptr %72, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !65
  %76 = getelementptr inbounds float, ptr %70, i64 1
  store float %75, ptr %76, align 4, !tbaa !65
  %77 = getelementptr inbounds float, ptr %72, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !65
  %79 = getelementptr inbounds float, ptr %70, i64 2
  store float %78, ptr %79, align 4, !tbaa !65
  br label %80

80:                                               ; preds = %69, %67, %63, %24
  %81 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !88
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %116, label %84

84:                                               ; preds = %80
  %85 = add nsw i32 %26, 2
  %86 = load i32, ptr %27, align 4, !tbaa !81
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %8, i64 %87
  %89 = sext i32 %85 to i64
  %90 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %89
  store ptr %88, ptr %90, align 8, !tbaa !49
  %91 = load i32, ptr %43, align 4, !tbaa !84
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.MVert, ptr %8, i64 %92
  %94 = getelementptr inbounds [3 x ptr], ptr %90, i64 0, i64 1
  store ptr %93, ptr %94, align 8, !tbaa !49
  %95 = zext i32 %82 to i64
  %96 = getelementptr inbounds %struct.MVert, ptr %8, i64 %95
  %97 = getelementptr inbounds [3 x ptr], ptr %90, i64 0, i64 2
  store ptr %96, ptr %97, align 8, !tbaa !49
  %98 = load i8, ptr %48, align 1, !tbaa !85
  %99 = and i8 %98, 1
  %100 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %89, i32 3
  store i8 %99, ptr %100, align 4, !tbaa !86
  br i1 %9, label %116, label %101

101:                                              ; preds = %84
  %102 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %89, i32 1
  store ptr %31, ptr %102, align 8, !tbaa !49
  %103 = getelementptr inbounds %struct.TSpace, ptr %31, i64 2
  %104 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %89, i32 1, i64 1
  store ptr %103, ptr %104, align 8, !tbaa !49
  %105 = getelementptr inbounds %struct.TSpace, ptr %31, i64 3
  %106 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %89, i32 1, i64 2
  store ptr %105, ptr %106, align 8, !tbaa !49
  %107 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %89, i32 2
  %108 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %36, i32 2
  %109 = load float, ptr %108, align 4, !tbaa !65
  store float %109, ptr %107, align 4, !tbaa !65
  %110 = getelementptr inbounds float, ptr %108, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !65
  %112 = getelementptr inbounds float, ptr %107, i64 1
  store float %111, ptr %112, align 4, !tbaa !65
  %113 = getelementptr inbounds float, ptr %108, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !65
  %115 = getelementptr inbounds float, ptr %107, i64 2
  store float %114, ptr %115, align 4, !tbaa !65
  br label %116

116:                                              ; preds = %84, %101, %80
  %117 = phi i32 [ %85, %101 ], [ %85, %84 ], [ %32, %80 ]
  %118 = add nuw nsw i64 %25, 1
  %119 = load i32, ptr %21, align 8, !tbaa !50
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %24, label %122, !llvm.loop !89

122:                                              ; preds = %116, %17
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_point_from_barycentric_extrusion(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, i8 noundef zeroext %9) unnamed_addr #2 {
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %14 = sext i32 %3 to i64
  %15 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %14
  %16 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %14, i32 3
  %17 = load i8, ptr %16, align 4, !tbaa !86
  %18 = or i8 %17, %9
  %19 = icmp eq i8 %18, 0
  %20 = load ptr, ptr %15, align 8, !tbaa !49
  %21 = load float, ptr %20, align 4, !tbaa !65
  store float %21, ptr %11, align 16, !tbaa !65
  %22 = getelementptr inbounds float, ptr %20, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = getelementptr inbounds float, ptr %11, i64 1
  store float %23, ptr %24, align 4, !tbaa !65
  %25 = getelementptr inbounds float, ptr %20, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !65
  %27 = getelementptr inbounds float, ptr %11, i64 2
  store float %26, ptr %27, align 8, !tbaa !65
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %29 = getelementptr inbounds [3 x ptr], ptr %15, i64 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = load float, ptr %30, align 4, !tbaa !65
  store float %31, ptr %28, align 4, !tbaa !65
  %32 = getelementptr inbounds float, ptr %30, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !65
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  store float %33, ptr %34, align 16, !tbaa !65
  %35 = getelementptr inbounds float, ptr %30, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !65
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 2
  store float %36, ptr %37, align 4, !tbaa !65
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  %39 = getelementptr inbounds [3 x ptr], ptr %15, i64 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = load float, ptr %40, align 4, !tbaa !65
  store float %41, ptr %38, align 8, !tbaa !65
  %42 = getelementptr inbounds float, ptr %40, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !65
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  store float %43, ptr %44, align 4, !tbaa !65
  %45 = getelementptr inbounds float, ptr %40, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !65
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 2
  store float %46, ptr %47, align 16, !tbaa !65
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %11, float noundef %4, float noundef %5, ptr noundef nonnull %12) #11
  br i1 %19, label %109, label %48

48:                                               ; preds = %10
  %49 = load ptr, ptr %15, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.MVert, ptr %49, i64 0, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !90
  %52 = sitofp i16 %51 to float
  %53 = fmul float %52, 0x3F00002000000000
  store float %53, ptr %11, align 16, !tbaa !65
  %54 = getelementptr inbounds %struct.MVert, ptr %49, i64 0, i32 1, i64 1
  %55 = load i16, ptr %54, align 2, !tbaa !90
  %56 = sitofp i16 %55 to float
  %57 = fmul float %56, 0x3F00002000000000
  store float %57, ptr %24, align 4, !tbaa !65
  %58 = getelementptr inbounds %struct.MVert, ptr %49, i64 0, i32 1, i64 2
  %59 = load i16, ptr %58, align 2, !tbaa !90
  %60 = sitofp i16 %59 to float
  %61 = fmul float %60, 0x3F00002000000000
  store float %61, ptr %27, align 8, !tbaa !65
  %62 = load ptr, ptr %29, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct.MVert, ptr %62, i64 0, i32 1
  %64 = load i16, ptr %63, align 2, !tbaa !90
  %65 = sitofp i16 %64 to float
  %66 = fmul float %65, 0x3F00002000000000
  store float %66, ptr %28, align 4, !tbaa !65
  %67 = getelementptr inbounds %struct.MVert, ptr %62, i64 0, i32 1, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !90
  %69 = sitofp i16 %68 to float
  %70 = fmul float %69, 0x3F00002000000000
  store float %70, ptr %34, align 16, !tbaa !65
  %71 = getelementptr inbounds %struct.MVert, ptr %62, i64 0, i32 1, i64 2
  %72 = load i16, ptr %71, align 2, !tbaa !90
  %73 = sitofp i16 %72 to float
  %74 = fmul float %73, 0x3F00002000000000
  store float %74, ptr %37, align 4, !tbaa !65
  %75 = load ptr, ptr %39, align 8, !tbaa !49
  %76 = getelementptr inbounds %struct.MVert, ptr %75, i64 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !90
  %78 = sitofp i16 %77 to float
  %79 = fmul float %78, 0x3F00002000000000
  store float %79, ptr %38, align 8, !tbaa !65
  %80 = getelementptr inbounds %struct.MVert, ptr %75, i64 0, i32 1, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !90
  %82 = sitofp i16 %81 to float
  %83 = fmul float %82, 0x3F00002000000000
  store float %83, ptr %44, align 4, !tbaa !65
  %84 = getelementptr inbounds %struct.MVert, ptr %75, i64 0, i32 1, i64 2
  %85 = load i16, ptr %84, align 2, !tbaa !90
  %86 = sitofp i16 %85 to float
  %87 = fmul float %86, 0x3F00002000000000
  store float %87, ptr %47, align 16, !tbaa !65
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %11, float noundef %4, float noundef %5, ptr noundef nonnull %13) #11
  %88 = load float, ptr %13, align 4, !tbaa !65
  %89 = getelementptr inbounds float, ptr %13, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !65
  %91 = fmul float %90, %90
  %92 = call float @llvm.fmuladd.f32(float %88, float %88, float %91)
  %93 = getelementptr inbounds float, ptr %13, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !65
  %95 = call float @llvm.fmuladd.f32(float %94, float %94, float %92)
  %96 = fcmp ogt float %95, 0x38AA95A5C0000000
  br i1 %96, label %97, label %106

97:                                               ; preds = %48
  %98 = call float @sqrtf(float noundef %95) #11
  %99 = fdiv float 1.000000e+00, %98
  %100 = load float, ptr %13, align 4, !tbaa !65
  %101 = fmul float %100, %99
  store float %101, ptr %13, align 4, !tbaa !65
  %102 = load float, ptr %89, align 4, !tbaa !65
  %103 = fmul float %99, %102
  store float %103, ptr %89, align 4, !tbaa !65
  %104 = load float, ptr %93, align 4, !tbaa !65
  %105 = fmul float %99, %104
  br label %107

106:                                              ; preds = %48
  store float 0.000000e+00, ptr %13, align 4, !tbaa !65
  store float 0.000000e+00, ptr %89, align 4, !tbaa !65
  br label %107

107:                                              ; preds = %97, %106
  %108 = phi float [ 0.000000e+00, %106 ], [ %105, %97 ]
  store float %108, ptr %93, align 4, !tbaa !65
  br label %118

109:                                              ; preds = %10
  %110 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %14, i32 2
  %111 = load float, ptr %110, align 4, !tbaa !65
  store float %111, ptr %13, align 4, !tbaa !65
  %112 = getelementptr inbounds float, ptr %110, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !65
  %114 = getelementptr inbounds float, ptr %13, i64 1
  store float %113, ptr %114, align 4, !tbaa !65
  %115 = getelementptr inbounds float, ptr %110, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !65
  %117 = getelementptr inbounds float, ptr %13, i64 2
  store float %116, ptr %117, align 4, !tbaa !65
  br label %118

118:                                              ; preds = %109, %107
  %119 = load float, ptr %13, align 4, !tbaa !65
  %120 = fmul float %119, %6
  %121 = getelementptr inbounds float, ptr %13, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !65
  %123 = fmul float %122, %6
  %124 = getelementptr inbounds float, ptr %13, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !65
  %126 = fmul float %125, %6
  %127 = load float, ptr %12, align 4, !tbaa !65
  %128 = fadd float %120, %127
  store float %128, ptr %12, align 4, !tbaa !65
  %129 = getelementptr inbounds float, ptr %12, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !65
  %131 = fadd float %123, %130
  store float %131, ptr %129, align 4, !tbaa !65
  %132 = getelementptr inbounds float, ptr %12, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !65
  %134 = fadd float %126, %133
  store float %134, ptr %132, align 4, !tbaa !65
  %135 = fmul float %122, %122
  %136 = call float @llvm.fmuladd.f32(float %119, float %119, float %135)
  %137 = call float @llvm.fmuladd.f32(float %125, float %125, float %136)
  %138 = fcmp ogt float %137, 0x38AA95A5C0000000
  br i1 %138, label %139, label %148

139:                                              ; preds = %118
  %140 = call float @sqrtf(float noundef %137) #11
  %141 = fdiv float 1.000000e+00, %140
  %142 = load float, ptr %13, align 4, !tbaa !65
  %143 = fmul float %142, %141
  store float %143, ptr %13, align 4, !tbaa !65
  %144 = load float, ptr %121, align 4, !tbaa !65
  %145 = fmul float %141, %144
  store float %145, ptr %121, align 4, !tbaa !65
  %146 = load float, ptr %124, align 4, !tbaa !65
  %147 = fmul float %141, %146
  br label %149

148:                                              ; preds = %118
  store float 0.000000e+00, ptr %13, align 4, !tbaa !65
  store float 0.000000e+00, ptr %121, align 4, !tbaa !65
  br label %149

149:                                              ; preds = %139, %148
  %150 = phi float [ 0.000000e+00, %148 ], [ %147, %139 ]
  store float %150, ptr %124, align 4, !tbaa !65
  %151 = load float, ptr %13, align 4, !tbaa !65
  %152 = fneg float %151
  store float %152, ptr %13, align 4, !tbaa !65
  %153 = load float, ptr %121, align 4, !tbaa !65
  %154 = fneg float %153
  store float %154, ptr %121, align 4, !tbaa !65
  %155 = fneg float %150
  store float %155, ptr %124, align 4, !tbaa !65
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %12) #11
  call void @mul_transposed_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %13) #11
  %156 = load float, ptr %13, align 4, !tbaa !65
  %157 = load float, ptr %121, align 4, !tbaa !65
  %158 = fmul float %157, %157
  %159 = call float @llvm.fmuladd.f32(float %156, float %156, float %158)
  %160 = load float, ptr %124, align 4, !tbaa !65
  %161 = call float @llvm.fmuladd.f32(float %160, float %160, float %159)
  %162 = fcmp ogt float %161, 0x38AA95A5C0000000
  br i1 %162, label %163, label %172

163:                                              ; preds = %149
  %164 = call float @sqrtf(float noundef %161) #11
  %165 = fdiv float 1.000000e+00, %164
  %166 = load float, ptr %13, align 4, !tbaa !65
  %167 = fmul float %166, %165
  store float %167, ptr %13, align 4, !tbaa !65
  %168 = load float, ptr %121, align 4, !tbaa !65
  %169 = fmul float %165, %168
  store float %169, ptr %121, align 4, !tbaa !65
  %170 = load float, ptr %124, align 4, !tbaa !65
  %171 = fmul float %165, %170
  br label %173

172:                                              ; preds = %149
  store float 0.000000e+00, ptr %13, align 4, !tbaa !65
  store float 0.000000e+00, ptr %121, align 4, !tbaa !65
  br label %173

173:                                              ; preds = %163, %172
  %174 = phi float [ 0.000000e+00, %172 ], [ %171, %163 ]
  store float %174, ptr %124, align 4, !tbaa !65
  %175 = load float, ptr %12, align 4, !tbaa !65
  store float %175, ptr %7, align 4, !tbaa !65
  %176 = load float, ptr %129, align 4, !tbaa !65
  %177 = getelementptr inbounds float, ptr %7, i64 1
  store float %176, ptr %177, align 4, !tbaa !65
  %178 = load float, ptr %132, align 4, !tbaa !65
  %179 = getelementptr inbounds float, ptr %7, i64 2
  store float %178, ptr %179, align 4, !tbaa !65
  %180 = load float, ptr %13, align 4, !tbaa !65
  store float %180, ptr %8, align 4, !tbaa !65
  %181 = load float, ptr %121, align 4, !tbaa !65
  %182 = getelementptr inbounds float, ptr %8, i64 1
  store float %181, ptr %182, align 4, !tbaa !65
  %183 = getelementptr inbounds float, ptr %8, i64 2
  store float %174, ptr %183, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #11
  ret void
}

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @RE_bake_pixels_populate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BakeDataZSpan, align 8
  %7 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %198

11:                                               ; preds = %5
  store ptr %1, ptr %6, align 8, !tbaa !92
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.BakeImages, ptr %3, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !94
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 224
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.7) #11
  %18 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !96
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %23, %11
  %21 = load i32, ptr %13, align 8, !tbaa !94
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %28

23:                                               ; preds = %11, %23
  %24 = phi i64 [ %26, %23 ], [ 0, %11 ]
  %25 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %24
  store i32 -1, ptr %25, align 4, !tbaa !34
  %26 = add nuw i64 %24, 1
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %20, label %23, !llvm.loop !97

28:                                               ; preds = %20, %28
  %29 = phi i64 [ %38, %28 ], [ 0, %20 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !96
  %31 = getelementptr inbounds %struct.ZSpan, ptr %30, i64 %29
  %32 = load ptr, ptr %3, align 8, !tbaa !98
  %33 = getelementptr inbounds %struct.BakeImage, ptr %32, i64 %29, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !99
  %35 = getelementptr inbounds %struct.BakeImage, ptr %32, i64 %29, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !102
  %37 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !103
  tail call void @zbuf_alloc_span(ptr noundef %31, i32 noundef %34, i32 noundef %36, float noundef %37) #11
  %38 = add nuw i64 %29, 1
  %39 = load i32, ptr %13, align 8, !tbaa !94
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %28, label %42, !llvm.loop !117

42:                                               ; preds = %28, %20
  %43 = icmp eq ptr %4, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = load i8, ptr %4, align 1, !tbaa !40
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %42
  %48 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %49 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %48, i32 noundef 5) #11
  br label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %52 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %51, i32 noundef 5, ptr noundef nonnull %4) #11
  %53 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %51, i32 noundef 5, i32 noundef %52) #11
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi ptr [ %49, %47 ], [ %53, %50 ]
  %56 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %57 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %56, i32 noundef 4) #11
  %58 = icmp eq ptr %55, null
  br i1 %58, label %198, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %61 = load i32, ptr %60, align 8, !tbaa !50
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.BakeImages, ptr %3, i64 0, i32 1
  %65 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 2
  %66 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 1
  %67 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 1
  %68 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 2
  %69 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 2, i64 1
  %70 = getelementptr inbounds float, ptr %7, i64 1
  %71 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 1, i64 1
  %72 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 4
  %73 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 4
  %74 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 6
  %75 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 5
  %76 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 7
  %77 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 3
  %78 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 3, i64 1
  %79 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 4
  %80 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 4
  %81 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 6
  %82 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 5
  %83 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 7
  br label %87

84:                                               ; preds = %181, %59
  %85 = load i32, ptr %13, align 8, !tbaa !94
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %195, label %187

87:                                               ; preds = %63, %181
  %88 = phi i64 [ 0, %63 ], [ %183, %181 ]
  %89 = phi i32 [ -1, %63 ], [ %182, %181 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  %90 = getelementptr inbounds %struct.MTFace, ptr %55, i64 %88
  %91 = getelementptr inbounds %struct.MFace, ptr %57, i64 %88, i32 4
  %92 = load i16, ptr %91, align 4, !tbaa !118
  %93 = load ptr, ptr %64, align 8, !tbaa !119
  %94 = sext i16 %92 to i64
  %95 = getelementptr inbounds i32, ptr %93, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !120
  %97 = load ptr, ptr %3, align 8, !tbaa !98
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.BakeImage, ptr %97, i64 %98
  store ptr %99, ptr %65, align 8, !tbaa !121
  %100 = add nsw i32 %89, 1
  store i32 %100, ptr %66, align 8, !tbaa !122
  %101 = getelementptr inbounds %struct.BakeImage, ptr %97, i64 %98, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !99
  %103 = sitofp i32 %102 to float
  %104 = getelementptr inbounds %struct.BakeImage, ptr %97, i64 %98, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !102
  %106 = sitofp i32 %105 to float
  br label %107

107:                                              ; preds = %87, %107
  %108 = phi i64 [ 0, %87 ], [ %117, %107 ]
  %109 = getelementptr inbounds [4 x [2 x float]], ptr %90, i64 0, i64 %108
  %110 = load float, ptr %109, align 8, !tbaa !65
  %111 = call float @llvm.fmuladd.f32(float %110, float %103, float 0xBFE0083120000000)
  %112 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 %108
  store float %111, ptr %112, align 8, !tbaa !65
  %113 = getelementptr inbounds [4 x [2 x float]], ptr %90, i64 0, i64 %108, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !65
  %115 = call float @llvm.fmuladd.f32(float %114, float %106, float 0xBFE0106240000000)
  %116 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 %108, i64 1
  store float %115, ptr %116, align 4, !tbaa !65
  %117 = add nuw nsw i64 %108, 1
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %119, label %107, !llvm.loop !123

119:                                              ; preds = %107
  %120 = load float, ptr %67, align 8, !tbaa !65
  %121 = load float, ptr %7, align 16, !tbaa !65
  %122 = fsub float %120, %121
  %123 = load float, ptr %69, align 4, !tbaa !65
  %124 = load float, ptr %70, align 4, !tbaa !65
  %125 = fsub float %123, %124
  %126 = load float, ptr %68, align 16, !tbaa !65
  %127 = fsub float %126, %121
  %128 = load float, ptr %71, align 4, !tbaa !65
  %129 = fsub float %128, %124
  %130 = fneg float %127
  %131 = fmul float %129, %130
  %132 = call float @llvm.fmuladd.f32(float %122, float %125, float %131)
  %133 = call float @llvm.fabs.f32(float %132)
  %134 = fcmp ogt float %133, 0x3E80000000000000
  br i1 %134, label %135, label %144

135:                                              ; preds = %119
  %136 = fdiv float 5.000000e-01, %132
  %137 = fsub float %128, %123
  %138 = fmul float %137, %136
  store float %138, ptr %73, align 8, !tbaa !124
  %139 = fmul float %125, %136
  store float %139, ptr %74, align 8, !tbaa !125
  %140 = fsub float %126, %120
  %141 = fmul float %140, %136
  store float %141, ptr %75, align 4, !tbaa !126
  %142 = fsub float %121, %126
  %143 = fmul float %142, %136
  store float %143, ptr %76, align 4, !tbaa !127
  br label %145

144:                                              ; preds = %119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  br label %145

145:                                              ; preds = %135, %144
  %146 = load ptr, ptr %18, align 8, !tbaa !96
  %147 = getelementptr inbounds %struct.ZSpan, ptr %146, i64 %98
  call void @zspan_scanconvert(ptr noundef %147, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull @store_bake_pixel) #11
  %148 = getelementptr inbounds %struct.MFace, ptr %57, i64 %88, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !88
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %181, label %151

151:                                              ; preds = %145
  %152 = add nsw i32 %89, 2
  store i32 %152, ptr %66, align 8, !tbaa !122
  %153 = load float, ptr %68, align 16, !tbaa !65
  %154 = load float, ptr %7, align 16, !tbaa !65
  %155 = fsub float %153, %154
  %156 = load float, ptr %78, align 4, !tbaa !65
  %157 = load float, ptr %70, align 4, !tbaa !65
  %158 = fsub float %156, %157
  %159 = load float, ptr %77, align 8, !tbaa !65
  %160 = fsub float %159, %154
  %161 = load float, ptr %69, align 4, !tbaa !65
  %162 = fsub float %161, %157
  %163 = fneg float %160
  %164 = fmul float %162, %163
  %165 = call float @llvm.fmuladd.f32(float %155, float %158, float %164)
  %166 = call float @llvm.fabs.f32(float %165)
  %167 = fcmp ogt float %166, 0x3E80000000000000
  br i1 %167, label %168, label %177

168:                                              ; preds = %151
  %169 = fdiv float 5.000000e-01, %165
  %170 = fsub float %161, %156
  %171 = fmul float %170, %169
  store float %171, ptr %80, align 8, !tbaa !124
  %172 = fmul float %158, %169
  store float %172, ptr %81, align 8, !tbaa !125
  %173 = fsub float %159, %153
  %174 = fmul float %173, %169
  store float %174, ptr %82, align 4, !tbaa !126
  %175 = fsub float %154, %159
  %176 = fmul float %175, %169
  store float %176, ptr %83, align 4, !tbaa !127
  br label %178

177:                                              ; preds = %151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  br label %178

178:                                              ; preds = %168, %177
  %179 = load ptr, ptr %18, align 8, !tbaa !96
  %180 = getelementptr inbounds %struct.ZSpan, ptr %179, i64 %98
  call void @zspan_scanconvert(ptr noundef %180, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %68, ptr noundef nonnull %77, ptr noundef nonnull @store_bake_pixel) #11
  br label %181

181:                                              ; preds = %178, %145
  %182 = phi i32 [ %152, %178 ], [ %100, %145 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  %183 = add nuw i64 %88, 1
  %184 = load i32, ptr %60, align 8, !tbaa !50
  %185 = sext i32 %184 to i64
  %186 = icmp ult i64 %183, %185
  br i1 %186, label %87, label %84, !llvm.loop !128

187:                                              ; preds = %84, %187
  %188 = phi i64 [ %191, %187 ], [ 0, %84 ]
  %189 = load ptr, ptr %18, align 8, !tbaa !96
  %190 = getelementptr inbounds %struct.ZSpan, ptr %189, i64 %188
  call void @zbuf_free_span(ptr noundef %190) #11
  %191 = add nuw i64 %188, 1
  %192 = load i32, ptr %13, align 8, !tbaa !94
  %193 = sext i32 %192 to i64
  %194 = icmp ult i64 %191, %193
  br i1 %194, label %187, label %195, !llvm.loop !129

195:                                              ; preds = %187, %84
  %196 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %197 = load ptr, ptr %18, align 8, !tbaa !96
  call void %196(ptr noundef %197) #11
  br label %198

198:                                              ; preds = %54, %5, %195
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #11
  ret void
}

declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @zspan_scanconvert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @store_bake_pixel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) #6 {
  %6 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.BakeImage, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.BakeImage, ptr %7, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !130
  %12 = mul nsw i32 %9, %2
  %13 = trunc i64 %11 to i32
  %14 = add i32 %12, %1
  %15 = add i32 %14, %13
  %16 = load ptr, ptr %0, align 8, !tbaa !92
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !122
  store i32 %20, ptr %18, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17, i32 1
  store float %3, ptr %21, align 4, !tbaa !65
  %22 = getelementptr inbounds float, ptr %21, i64 1
  store float %4, ptr %22, align 4, !tbaa !65
  %23 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 4
  %24 = load float, ptr %23, align 8, !tbaa !124
  %25 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17, i32 2
  store float %24, ptr %25, align 4, !tbaa !67
  %26 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 5
  %27 = load float, ptr %26, align 4, !tbaa !126
  %28 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17, i32 3
  store float %27, ptr %28, align 4, !tbaa !68
  %29 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 6
  %30 = load float, ptr %29, align 8, !tbaa !125
  %31 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17, i32 4
  store float %30, ptr %31, align 4, !tbaa !69
  %32 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 7
  %33 = load float, ptr %32, align 4, !tbaa !127
  %34 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17, i32 5
  store float %33, ptr %34, align 4, !tbaa !70
  ret void
}

declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @RE_bake_normal_world_to_tangent(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = tail call ptr @CDDM_from_mesh(ptr noundef %4) #11
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 28
  %19 = load i32, ptr %18, align 8, !tbaa !50
  %20 = shl nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 6
  %23 = tail call ptr %17(i64 noundef %22, ptr noundef nonnull @.str.8) #11
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %23, ptr noundef %4, i8 noundef zeroext 1, ptr noundef %16)
  %24 = icmp eq i64 %1, 0
  br i1 %24, label %187, label %25

25:                                               ; preds = %7
  %26 = sext i32 %2 to i64
  %27 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %29 = getelementptr inbounds float, ptr %12, i64 1
  %30 = getelementptr inbounds float, ptr %11, i64 2
  %31 = getelementptr inbounds float, ptr %12, i64 2
  %32 = getelementptr inbounds float, ptr %11, i64 1
  %33 = getelementptr inbounds float, ptr %13, i64 1
  %34 = getelementptr inbounds float, ptr %13, i64 2
  %35 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1, i64 1
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1, i64 2
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2, i64 1
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2, i64 2
  %41 = getelementptr inbounds float, ptr %15, i64 1
  %42 = getelementptr inbounds float, ptr %15, i64 2
  br label %43

43:                                               ; preds = %25, %184
  %44 = phi i64 [ 0, %25 ], [ %185, %184 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %45 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !34
  %47 = mul i64 %44, %26
  %48 = icmp eq i32 %46, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds float, ptr %3, i64 %47
  store float 5.000000e-01, ptr %50, align 4, !tbaa !65
  %51 = getelementptr inbounds float, ptr %50, i64 1
  store float 5.000000e-01, ptr %51, align 4, !tbaa !65
  %52 = getelementptr inbounds float, ptr %50, i64 2
  store float 1.000000e+00, ptr %52, align 4, !tbaa !65
  br label %184

53:                                               ; preds = %43
  %54 = sext i32 %46 to i64
  %55 = getelementptr inbounds %struct.TriTessFace, ptr %23, i64 %54
  %56 = getelementptr inbounds %struct.TriTessFace, ptr %23, i64 %54, i32 3
  %57 = load i8, ptr %56, align 4, !tbaa !86
  %58 = icmp eq i8 %57, 0
  br label %59

59:                                               ; preds = %53, %83
  %60 = phi i64 [ 0, %53 ], [ %97, %83 ]
  br i1 %58, label %79, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 %60
  %63 = getelementptr inbounds [3 x ptr], ptr %55, i64 0, i64 %60
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  %65 = getelementptr inbounds %struct.MVert, ptr %64, i64 0, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !90
  %67 = sitofp i16 %66 to float
  %68 = fmul float %67, 0x3F00002000000000
  store float %68, ptr %62, align 4, !tbaa !65
  %69 = getelementptr inbounds %struct.MVert, ptr %64, i64 0, i32 1, i64 1
  %70 = load i16, ptr %69, align 2, !tbaa !90
  %71 = sitofp i16 %70 to float
  %72 = fmul float %71, 0x3F00002000000000
  %73 = getelementptr inbounds float, ptr %62, i64 1
  store float %72, ptr %73, align 4, !tbaa !65
  %74 = getelementptr inbounds %struct.MVert, ptr %64, i64 0, i32 1, i64 2
  %75 = load i16, ptr %74, align 2, !tbaa !90
  %76 = sitofp i16 %75 to float
  %77 = fmul float %76, 0x3F00002000000000
  %78 = getelementptr inbounds float, ptr %62, i64 2
  store float %77, ptr %78, align 4, !tbaa !65
  br label %83

79:                                               ; preds = %59
  %80 = getelementptr inbounds %struct.TriTessFace, ptr %23, i64 %54, i32 2, i64 %60
  %81 = load float, ptr %80, align 4, !tbaa !65
  %82 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %60
  store float %81, ptr %82, align 4, !tbaa !65
  br label %83

83:                                               ; preds = %79, %61
  %84 = getelementptr inbounds %struct.TriTessFace, ptr %23, i64 %54, i32 1, i64 %60
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 %60
  %87 = load float, ptr %85, align 4, !tbaa !65
  store float %87, ptr %86, align 4, !tbaa !65
  %88 = getelementptr inbounds float, ptr %85, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !65
  %90 = getelementptr inbounds float, ptr %86, i64 1
  store float %89, ptr %90, align 4, !tbaa !65
  %91 = getelementptr inbounds float, ptr %85, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !65
  %93 = getelementptr inbounds float, ptr %86, i64 2
  store float %92, ptr %93, align 4, !tbaa !65
  %94 = getelementptr inbounds %struct.TSpace, ptr %85, i64 0, i32 1
  %95 = load float, ptr %94, align 4, !tbaa !131
  %96 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %60
  store float %95, ptr %96, align 4, !tbaa !65
  %97 = add nuw nsw i64 %60, 1
  %98 = icmp eq i64 %97, 3
  br i1 %98, label %99, label %59, !llvm.loop !133

99:                                               ; preds = %83
  %100 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %44, i32 1
  %101 = load float, ptr %100, align 4, !tbaa !65
  %102 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %44, i32 1, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !65
  %104 = fsub float 1.000000e+00, %101
  %105 = fsub float %104, %103
  %106 = icmp eq i8 %57, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %9, float noundef %101, float noundef %103, ptr noundef nonnull %12) #11
  br label %108

108:                                              ; preds = %107, %99
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %8, float noundef %101, float noundef %103, ptr noundef nonnull %11) #11
  %109 = load float, ptr %10, align 4, !tbaa !65
  %110 = load float, ptr %27, align 4, !tbaa !65
  %111 = fmul float %103, %110
  %112 = call float @llvm.fmuladd.f32(float %109, float %101, float %111)
  %113 = load float, ptr %28, align 4, !tbaa !65
  %114 = call float @llvm.fmuladd.f32(float %113, float %105, float %112)
  %115 = fcmp olt float %114, 0.000000e+00
  %116 = select i1 %115, float -1.000000e+00, float 1.000000e+00
  %117 = load float, ptr %29, align 4, !tbaa !65
  %118 = load float, ptr %30, align 4, !tbaa !65
  %119 = load float, ptr %31, align 4, !tbaa !65
  %120 = load float, ptr %32, align 4, !tbaa !65
  %121 = fneg float %119
  %122 = fmul float %120, %121
  %123 = call float @llvm.fmuladd.f32(float %117, float %118, float %122)
  %124 = load float, ptr %11, align 4, !tbaa !65
  %125 = load float, ptr %12, align 4, !tbaa !65
  %126 = fneg float %125
  %127 = fmul float %118, %126
  %128 = call float @llvm.fmuladd.f32(float %119, float %124, float %127)
  %129 = fneg float %117
  %130 = fmul float %124, %129
  %131 = call float @llvm.fmuladd.f32(float %125, float %120, float %130)
  %132 = fmul float %116, %123
  %133 = fmul float %116, %128
  %134 = fmul float %116, %131
  store float %124, ptr %13, align 16, !tbaa !65
  store float %120, ptr %33, align 4, !tbaa !65
  store float %118, ptr %34, align 8, !tbaa !65
  store float %132, ptr %35, align 4, !tbaa !65
  store float %133, ptr %36, align 16, !tbaa !65
  store float %134, ptr %37, align 4, !tbaa !65
  store float %125, ptr %38, align 8, !tbaa !65
  store float %117, ptr %39, align 4, !tbaa !65
  store float %119, ptr %40, align 16, !tbaa !65
  %135 = getelementptr inbounds float, ptr %3, i64 %47
  br label %136

136:                                              ; preds = %108, %136
  %137 = phi i64 [ 0, %108 ], [ %142, %136 ]
  %138 = getelementptr inbounds float, ptr %135, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !65
  %140 = call float @llvm.fmuladd.f32(float %139, float 2.000000e+00, float -1.000000e+00)
  %141 = getelementptr inbounds float, ptr %15, i64 %137
  store float %140, ptr %141, align 4, !tbaa !65
  %142 = add nuw nsw i64 %137, 1
  %143 = icmp eq i64 %142, 3
  br i1 %143, label %144, label %136, !llvm.loop !134

144:                                              ; preds = %136
  call void @mul_transposed_mat3_m4_v3(ptr noundef %6, ptr noundef nonnull %15) #11
  %145 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %14, ptr noundef nonnull %13) #11
  call void @mul_m3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #11
  %146 = load float, ptr %15, align 4, !tbaa !65
  %147 = load float, ptr %41, align 4, !tbaa !65
  %148 = fmul float %147, %147
  %149 = call float @llvm.fmuladd.f32(float %146, float %146, float %148)
  %150 = load float, ptr %42, align 4, !tbaa !65
  %151 = call float @llvm.fmuladd.f32(float %150, float %150, float %149)
  %152 = fcmp ogt float %151, 0x38AA95A5C0000000
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = call float @sqrtf(float noundef %151) #11
  %155 = fdiv float 1.000000e+00, %154
  %156 = load float, ptr %15, align 4, !tbaa !65
  %157 = fmul float %156, %155
  store float %157, ptr %15, align 4, !tbaa !65
  %158 = load float, ptr %41, align 4, !tbaa !65
  %159 = fmul float %155, %158
  store float %159, ptr %41, align 4, !tbaa !65
  %160 = load float, ptr %42, align 4, !tbaa !65
  %161 = fmul float %155, %160
  br label %163

162:                                              ; preds = %144
  store float 0.000000e+00, ptr %15, align 4, !tbaa !65
  store float 0.000000e+00, ptr %41, align 4, !tbaa !65
  br label %163

163:                                              ; preds = %153, %162
  %164 = phi float [ 0.000000e+00, %162 ], [ %161, %153 ]
  store float %164, ptr %42, align 4, !tbaa !65
  br label %165

165:                                              ; preds = %163, %165
  %166 = phi i64 [ 0, %163 ], [ %182, %165 ]
  %167 = getelementptr inbounds i32, ptr %5, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !120
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [6 x float], ptr @__const.normal_compress.swizzle_sign, i64 0, i64 %169
  %171 = load float, ptr %170, align 4, !tbaa !65
  %172 = getelementptr inbounds [6 x i32], ptr @__const.normal_compress.swizzle_index, i64 0, i64 %169
  %173 = load i32, ptr %172, align 4, !tbaa !120
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, ptr %15, i64 %174
  %176 = load float, ptr %175, align 4, !tbaa !65
  %177 = fmul float %171, %176
  %178 = fmul float %177, 5.000000e-01
  %179 = fadd float %178, 5.000000e-01
  %180 = fadd float %179, 0x3EE4F8B580000000
  %181 = getelementptr inbounds float, ptr %135, i64 %166
  store float %180, ptr %181, align 4, !tbaa !65
  %182 = add nuw nsw i64 %166, 1
  %183 = icmp eq i64 %182, 3
  br i1 %183, label %184, label %165, !llvm.loop !135

184:                                              ; preds = %165, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #11
  %185 = add nuw i64 %44, 1
  %186 = icmp eq i64 %185, %1
  br i1 %186, label %187, label %43, !llvm.loop !136

187:                                              ; preds = %184, %7
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %188(ptr noundef %23) #11
  %189 = icmp eq ptr %16, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 95
  %192 = load ptr, ptr %191, align 8, !tbaa !78
  call void %192(ptr noundef nonnull %16) #11
  br label %193

193:                                              ; preds = %190, %187
  ret void
}

declare void @interp_barycentric_tri_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_transposed_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @RE_bake_normal_world_to_object(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %9) #11
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %74, label %12

12:                                               ; preds = %6
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds float, ptr %8, i64 1
  %15 = getelementptr inbounds float, ptr %8, i64 2
  br label %16

16:                                               ; preds = %12, %71
  %17 = phi i64 [ 0, %12 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %18 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %71, label %21

21:                                               ; preds = %16
  %22 = mul i64 %17, %13
  %23 = getelementptr inbounds float, ptr %3, i64 %22
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 0, %21 ], [ %30, %24 ]
  %26 = getelementptr inbounds float, ptr %23, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !65
  %28 = call float @llvm.fmuladd.f32(float %27, float 2.000000e+00, float -1.000000e+00)
  %29 = getelementptr inbounds float, ptr %8, i64 %25
  store float %28, ptr %29, align 4, !tbaa !65
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %24, !llvm.loop !134

32:                                               ; preds = %24
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %33 = load float, ptr %8, align 4, !tbaa !65
  %34 = load float, ptr %14, align 4, !tbaa !65
  %35 = fmul float %34, %34
  %36 = call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = load float, ptr %15, align 4, !tbaa !65
  %38 = call float @llvm.fmuladd.f32(float %37, float %37, float %36)
  %39 = fcmp ogt float %38, 0x38AA95A5C0000000
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = call float @sqrtf(float noundef %38) #11
  %42 = fdiv float 1.000000e+00, %41
  %43 = load float, ptr %8, align 4, !tbaa !65
  %44 = fmul float %43, %42
  store float %44, ptr %8, align 4, !tbaa !65
  %45 = load float, ptr %14, align 4, !tbaa !65
  %46 = fmul float %42, %45
  store float %46, ptr %14, align 4, !tbaa !65
  %47 = load float, ptr %15, align 4, !tbaa !65
  %48 = fmul float %42, %47
  br label %50

49:                                               ; preds = %32
  store float 0.000000e+00, ptr %8, align 4, !tbaa !65
  store float 0.000000e+00, ptr %14, align 4, !tbaa !65
  br label %50

50:                                               ; preds = %40, %49
  %51 = phi float [ 0.000000e+00, %49 ], [ %48, %40 ]
  store float %51, ptr %15, align 4, !tbaa !65
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %69, %52 ]
  %54 = getelementptr inbounds i32, ptr %5, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !120
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [6 x float], ptr @__const.normal_compress.swizzle_sign, i64 0, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !65
  %59 = getelementptr inbounds [6 x i32], ptr @__const.normal_compress.swizzle_index, i64 0, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !120
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr %8, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !65
  %64 = fmul float %58, %63
  %65 = fmul float %64, 5.000000e-01
  %66 = fadd float %65, 5.000000e-01
  %67 = fadd float %66, 0x3EE4F8B580000000
  %68 = getelementptr inbounds float, ptr %23, i64 %53
  store float %67, ptr %68, align 4, !tbaa !65
  %69 = add nuw nsw i64 %53, 1
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %71, label %52, !llvm.loop !135

71:                                               ; preds = %52, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  %72 = add nuw i64 %17, 1
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %74, label %16, !llvm.loop !137

74:                                               ; preds = %71, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  ret void
}

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @RE_bake_normal_world_to_world(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = sext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %45
  %11 = phi i64 [ 0, %8 ], [ %46, %45 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %12 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %45, label %15

15:                                               ; preds = %10
  %16 = mul i64 %11, %9
  %17 = getelementptr inbounds float, ptr %3, i64 %16
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %24, %18 ]
  %20 = getelementptr inbounds float, ptr %17, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !65
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float -1.000000e+00)
  %23 = getelementptr inbounds float, ptr %6, i64 %19
  store float %22, ptr %23, align 4, !tbaa !65
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %18, !llvm.loop !134

26:                                               ; preds = %18, %26
  %27 = phi i64 [ %43, %26 ], [ 0, %18 ]
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !120
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [6 x float], ptr @__const.normal_compress.swizzle_sign, i64 0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = getelementptr inbounds [6 x i32], ptr @__const.normal_compress.swizzle_index, i64 0, i64 %30
  %34 = load i32, ptr %33, align 4, !tbaa !120
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr %6, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !65
  %38 = fmul float %32, %37
  %39 = fmul float %38, 5.000000e-01
  %40 = fadd float %39, 5.000000e-01
  %41 = fadd float %40, 0x3EE4F8B580000000
  %42 = getelementptr inbounds float, ptr %17, i64 %27
  store float %41, ptr %42, align 4, !tbaa !65
  %43 = add nuw nsw i64 %27, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %26, !llvm.loop !135

45:                                               ; preds = %26, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  %46 = add nuw i64 %11, 1
  %47 = icmp eq i64 %46, %1
  br i1 %47, label %48, label %10, !llvm.loop !138

48:                                               ; preds = %45, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_bake_ibuf_clear(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.RE_bake_ibuf_clear.vec_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.RE_bake_ibuf_clear.nor_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.RE_bake_ibuf_clear.nor_solid, i64 16, i1 false)
  %8 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #11
  %9 = icmp eq i8 %1, 0
  %10 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 4
  %11 = load i8, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i8 %11, 32
  %13 = select i1 %12, ptr %4, ptr %5
  %14 = select i1 %12, ptr %6, ptr %7
  %15 = select i1 %9, ptr %13, ptr %14
  call void @IMB_rectfill(ptr noundef %8, ptr noundef nonnull %15) #11
  %16 = load ptr, ptr %3, align 8, !tbaa !49
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %8, ptr noundef %16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_rectfill(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @RE_bake_internal(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %5, 4096
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = sext i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %22, %13 ]
  %15 = mul i64 %14, %12
  %16 = getelementptr inbounds float, ptr %6, i64 %15
  %17 = getelementptr inbounds %struct.BakePixel, ptr %2, i64 %14, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !65
  store float %18, ptr %16, align 4, !tbaa !65
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !65
  %21 = getelementptr inbounds float, ptr %16, i64 1
  store float %20, ptr %21, align 4, !tbaa !65
  %22 = add nuw i64 %14, 1
  %23 = icmp eq i64 %22, %3
  br i1 %23, label %24, label %13, !llvm.loop !139

24:                                               ; preds = %13, %9, %7
  %25 = phi i8 [ 0, %7 ], [ 1, %9 ], [ 1, %13 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @RE_pass_depth(i32 noundef %0) local_unnamed_addr #9 {
  ret i32 4
}

declare void @DM_ensure_normals(ptr noundef) local_unnamed_addr #3

declare void @DM_add_tangent_layer(ptr noundef) local_unnamed_addr #3

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @resolve_tri_uv_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

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
!35 = !{!"BakePixel", !36, i64 0, !37, i64 4, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!37, !37, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !37, i64 24}
!45 = !{!"ImBuf", !46, i64 0, !46, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !46, i64 40, !46, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !46, i64 88, !46, i64 96, !46, i64 104, !39, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !46, i64 296, !46, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !46, i64 2368, !36, i64 2376, !46, i64 2384, !36, i64 2392, !36, i64 2396, !46, i64 2400, !46, i64 2408, !46, i64 2416, !46, i64 2424, !36, i64 2432, !47, i64 2436, !48, i64 2456}
!46 = !{!"any pointer", !37, i64 0}
!47 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!48 = !{!"DDSData", !36, i64 0, !36, i64 4, !46, i64 8, !36, i64 16}
!49 = !{!46, !46, i64 0}
!50 = !{!51, !36, i64 1288}
!51 = !{!"Mesh", !52, i64 0, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !54, i64 280, !54, i64 480, !54, i64 680, !54, i64 880, !54, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !53, i64 1348, !53, i64 1350, !39, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !53, i64 1366, !46, i64 1368}
!52 = !{!"ID", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !37, i64 32, !53, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !46, i64 112}
!53 = !{!"short", !37, i64 0}
!54 = !{!"CustomData", !46, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !46, i64 184, !46, i64 192}
!55 = !{!56, !46, i64 24}
!56 = !{!"BakeHighPolyData", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !37, i64 32, !37, i64 36, !37, i64 100, !37, i64 164}
!57 = !{!58, !46, i64 1120}
!58 = !{!"DerivedMesh", !54, i64 0, !54, i64 200, !54, i64 400, !54, i64 600, !54, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !46, i64 1032, !46, i64 1040, !36, i64 1048, !39, i64 1052, !36, i64 1056, !36, i64 1060, !46, i64 1064, !37, i64 1072, !46, i64 1080, !46, i64 1088, !46, i64 1096, !46, i64 1104, !46, i64 1112, !46, i64 1120, !46, i64 1128, !46, i64 1136, !46, i64 1144, !46, i64 1152, !46, i64 1160, !46, i64 1168, !46, i64 1176, !46, i64 1184, !46, i64 1192, !46, i64 1200, !46, i64 1208, !46, i64 1216, !46, i64 1224, !46, i64 1232, !46, i64 1240, !46, i64 1248, !46, i64 1256, !46, i64 1264, !46, i64 1272, !46, i64 1280, !46, i64 1288, !46, i64 1296, !46, i64 1304, !46, i64 1312, !46, i64 1320, !46, i64 1328, !46, i64 1336, !46, i64 1344, !46, i64 1352, !46, i64 1360, !46, i64 1368, !46, i64 1376, !46, i64 1384, !46, i64 1392, !46, i64 1400, !46, i64 1408, !46, i64 1416, !46, i64 1424, !46, i64 1432, !46, i64 1440, !46, i64 1448, !46, i64 1456, !46, i64 1464, !46, i64 1472, !46, i64 1480, !46, i64 1488, !46, i64 1496, !46, i64 1504, !46, i64 1512, !46, i64 1520, !46, i64 1528, !46, i64 1536, !46, i64 1544, !46, i64 1552, !46, i64 1560, !46, i64 1568, !46, i64 1576, !46, i64 1584, !46, i64 1592, !46, i64 1600, !46, i64 1608, !46, i64 1616, !46, i64 1624, !46, i64 1632, !46, i64 1640, !46, i64 1648, !46, i64 1656, !46, i64 1664, !46, i64 1672, !46, i64 1680}
!59 = !{!60, !46, i64 0}
!60 = !{!"BVHTreeFromMesh", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !39, i64 52, !46, i64 56, !37, i64 64}
!61 = !{!56, !46, i64 8}
!62 = distinct !{!62, !42, !43}
!63 = !{!56, !46, i64 0}
!64 = distinct !{!64, !42, !43}
!65 = !{!39, !39, i64 0}
!66 = distinct !{!66, !42, !43}
!67 = !{!35, !39, i64 12}
!68 = !{!35, !39, i64 16}
!69 = !{!35, !39, i64 20}
!70 = !{!35, !39, i64 24}
!71 = !{!72, !36, i64 0}
!72 = !{!"BVHTreeRayHit", !36, i64 0, !37, i64 4, !37, i64 16, !39, i64 28, !36, i64 32}
!73 = !{!72, !39, i64 28}
!74 = !{!60, !46, i64 16}
!75 = distinct !{!75, !42, !43}
!76 = distinct !{!76, !42, !43}
!77 = distinct !{!77, !42, !43}
!78 = !{!58, !46, i64 1680}
!79 = distinct !{!79, !42, !43}
!80 = !{!58, !46, i64 1336}
!81 = !{!82, !36, i64 0}
!82 = !{!"MFace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !53, i64 16, !37, i64 18, !37, i64 19}
!83 = !{!82, !36, i64 4}
!84 = !{!82, !36, i64 8}
!85 = !{!82, !37, i64 19}
!86 = !{!87, !37, i64 60}
!87 = !{!"TriTessFace", !37, i64 0, !37, i64 24, !37, i64 48, !37, i64 60}
!88 = !{!82, !36, i64 12}
!89 = distinct !{!89, !42, !43}
!90 = !{!53, !53, i64 0}
!91 = !{!51, !46, i64 272}
!92 = !{!93, !46, i64 0}
!93 = !{!"BakeDataZSpan", !46, i64 0, !36, i64 8, !46, i64 16, !46, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!94 = !{!95, !36, i64 16}
!95 = !{!"BakeImages", !46, i64 0, !46, i64 8, !36, i64 16}
!96 = !{!93, !46, i64 24}
!97 = distinct !{!97, !42, !43}
!98 = !{!95, !46, i64 0}
!99 = !{!100, !36, i64 8}
!100 = !{!"BakeImage", !46, i64 0, !36, i64 8, !36, i64 12, !101, i64 16}
!101 = !{!"long", !37, i64 0}
!102 = !{!100, !36, i64 12}
!103 = !{!104, !39, i64 196}
!104 = !{!"Render", !46, i64 0, !46, i64 8, !37, i64 16, !36, i64 92, !53, i64 96, !53, i64 98, !53, i64 100, !53, i64 102, !37, i64 104, !46, i64 112, !46, i64 120, !105, i64 128, !36, i64 144, !36, i64 148, !36, i64 152, !47, i64 156, !106, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !39, i64 544, !39, i64 548, !46, i64 552, !37, i64 560, !37, i64 816, !46, i64 1072, !37, i64 1080, !46, i64 1088, !46, i64 1096, !107, i64 1104, !114, i64 5088, !46, i64 5616, !36, i64 5624, !36, i64 5628, !105, i64 5632, !46, i64 5648, !46, i64 5656, !46, i64 5664, !46, i64 5672, !39, i64 5680, !46, i64 5688, !105, i64 5696, !39, i64 5712, !39, i64 5716, !36, i64 5720, !36, i64 5724, !36, i64 5728, !36, i64 5732, !36, i64 5736, !46, i64 5744, !105, i64 5752, !105, i64 5768, !105, i64 5784, !46, i64 5800, !105, i64 5808, !36, i64 5824, !46, i64 5832, !46, i64 5840, !46, i64 5848, !46, i64 5856, !46, i64 5864, !105, i64 5872, !46, i64 5888, !105, i64 5896, !105, i64 5912, !46, i64 5928, !46, i64 5936, !46, i64 5944, !46, i64 5952, !46, i64 5960, !46, i64 5968, !46, i64 5976, !46, i64 5984, !46, i64 5992, !46, i64 6000, !46, i64 6008, !46, i64 6016, !46, i64 6024, !46, i64 6032, !46, i64 6040, !46, i64 6048, !46, i64 6056, !115, i64 6064, !46, i64 6216, !46, i64 6224, !46, i64 6232}
!105 = !{!"ListBase", !46, i64 0, !46, i64 8}
!106 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!107 = !{!"RenderData", !108, i64 0, !46, i64 248, !46, i64 256, !111, i64 264, !112, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !39, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !53, i64 432, !53, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !53, i64 456, !53, i64 458, !53, i64 460, !53, i64 462, !53, i64 464, !53, i64 466, !36, i64 468, !53, i64 472, !53, i64 474, !53, i64 476, !53, i64 478, !53, i64 480, !53, i64 482, !36, i64 484, !36, i64 488, !53, i64 492, !53, i64 494, !36, i64 496, !36, i64 500, !53, i64 504, !53, i64 506, !53, i64 508, !53, i64 510, !53, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !53, i64 528, !53, i64 530, !53, i64 532, !53, i64 534, !53, i64 536, !53, i64 538, !53, i64 540, !53, i64 542, !106, i64 544, !106, i64 560, !47, i64 576, !105, i64 592, !53, i64 608, !53, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !36, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !53, i64 648, !53, i64 650, !53, i64 652, !53, i64 654, !53, i64 656, !53, i64 658, !39, i64 660, !39, i64 664, !53, i64 668, !53, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !36, i64 1704, !53, i64 1708, !53, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !53, i64 2524, !53, i64 2526, !39, i64 2528, !39, i64 2532, !53, i64 2536, !53, i64 2538, !39, i64 2540, !53, i64 2544, !53, i64 2546, !36, i64 2548, !53, i64 2552, !53, i64 2554, !53, i64 2556, !53, i64 2558, !39, i64 2560, !39, i64 2564, !46, i64 2568, !36, i64 2576, !39, i64 2580, !37, i64 2584, !113, i64 2616, !36, i64 3976, !36, i64 3980}
!108 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !53, i64 8, !53, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !109, i64 24, !110, i64 184}
!109 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !46, i64 144, !46, i64 152}
!110 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!111 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !53, i64 48, !53, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!112 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !46, i64 64}
!113 = !{!"BakeData", !108, i64 0, !37, i64 248, !53, i64 1272, !53, i64 1274, !53, i64 1276, !53, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!114 = !{!"World", !52, i64 0, !46, i64 120, !53, i64 128, !53, i64 130, !53, i64 132, !53, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !53, i64 200, !53, i64 202, !53, i64 204, !53, i64 206, !53, i64 208, !53, i64 210, !53, i64 212, !53, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !53, i64 264, !53, i64 266, !53, i64 268, !53, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !53, i64 288, !53, i64 290, !53, i64 292, !53, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !53, i64 324, !53, i64 326, !53, i64 328, !53, i64 330, !53, i64 332, !53, i64 334, !46, i64 336, !46, i64 344, !46, i64 352, !37, i64 360, !53, i64 504, !53, i64 506, !37, i64 508, !46, i64 512, !46, i64 520}
!115 = !{!"RenderStats", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !53, i64 28, !53, i64 30, !53, i64 32, !53, i64 34, !53, i64 36, !53, i64 38, !37, i64 40, !116, i64 48, !116, i64 56, !46, i64 64, !46, i64 72, !37, i64 80, !39, i64 144, !39, i64 148}
!116 = !{!"double", !37, i64 0}
!117 = distinct !{!117, !42, !43}
!118 = !{!82, !53, i64 16}
!119 = !{!95, !46, i64 8}
!120 = !{!36, !36, i64 0}
!121 = !{!93, !46, i64 16}
!122 = !{!93, !36, i64 8}
!123 = distinct !{!123, !42, !43}
!124 = !{!93, !39, i64 32}
!125 = !{!93, !39, i64 40}
!126 = !{!93, !39, i64 36}
!127 = !{!93, !39, i64 44}
!128 = distinct !{!128, !42, !43}
!129 = distinct !{!129, !42, !43}
!130 = !{!100, !101, i64 16}
!131 = !{!132, !39, i64 12}
!132 = !{!"TSpace", !37, i64 0, !39, i64 12}
!133 = distinct !{!133, !42, !43}
!134 = distinct !{!134, !42, !43}
!135 = distinct !{!135, !42, !43}
!136 = distinct !{!136, !42, !43}
!137 = distinct !{!137, !42, !43}
!138 = distinct !{!138, !42, !43}
!139 = distinct !{!139, !42, !43}
