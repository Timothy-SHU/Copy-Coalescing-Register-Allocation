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
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.TSpace = type { [3 x float], float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.TriTessFace = type { [3 x ptr], [3 x ptr], [3 x float], i8 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_bake_margin(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  tail call void @IMB_filter_extend(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @IMB_rectfill_alpha(ptr noundef nonnull %0, float noundef 1.000000e+00) #15
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @IMB_filter_extend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_rectfill_alpha(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RE_bake_pixels_populate_from_objects(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i8 noundef zeroext %5, float noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #2 {
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #16
  %14 = icmp eq ptr %9, null
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %16 = sext i32 %3 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str) #15
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %20 = tail call ptr %19(i64 noundef %17, ptr noundef nonnull @.str.1) #15
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %22 = mul nsw i64 %16, 72
  %23 = tail call ptr %21(i64 noundef %22, ptr noundef nonnull @.str.2) #15
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  br i1 %14, label %25, label %33

25:                                               ; preds = %10
  %26 = tail call ptr @CDDM_from_mesh(ptr noundef %0) #15
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %28 = load i32, ptr %24, align 8, !tbaa !49
  %29 = shl nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 6
  %32 = tail call ptr %27(i64 noundef %31, ptr noundef nonnull @.str.3) #15
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %32, ptr noundef %0, i8 noundef zeroext 1, ptr noundef %26) #17
  br label %50

33:                                               ; preds = %10
  %34 = icmp eq i8 %5, 0
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %36 = load i32, ptr %24, align 8, !tbaa !49
  %37 = shl nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 6
  br i1 %34, label %48, label %40

40:                                               ; preds = %33
  %41 = tail call ptr %35(i64 noundef %39, ptr noundef nonnull @.str.3) #15
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %41, ptr noundef %0, i8 noundef zeroext 0, ptr noundef null) #17
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %43 = load i32, ptr %24, align 8, !tbaa !49
  %44 = shl nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 6
  %47 = tail call ptr %42(i64 noundef %46, ptr noundef nonnull @.str.4) #15
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %47, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null) #17
  br label %50

48:                                               ; preds = %33
  %49 = tail call ptr %35(i64 noundef %39, ptr noundef nonnull @.str.4) #15
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %49, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null) #17
  br label %50

50:                                               ; preds = %40, %48, %25
  %51 = phi ptr [ null, %40 ], [ null, %48 ], [ %26, %25 ]
  %52 = phi ptr [ %41, %40 ], [ null, %48 ], [ %32, %25 ]
  %53 = phi ptr [ %47, %40 ], [ %49, %48 ], [ null, %25 ]
  %54 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef %7) #15
  %55 = icmp eq i32 %3, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %92, %50
  %57 = icmp eq i64 %4, 0
  br i1 %57, label %133, label %58

58:                                               ; preds = %56
  %59 = icmp eq i8 %5, 0
  %60 = icmp sgt i32 %3, 0
  %61 = zext nneg i32 %3 to i64
  br label %95

62:                                               ; preds = %50, %92
  %63 = phi i64 [ %93, %92 ], [ 0, %50 ]
  %64 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %63, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  %67 = getelementptr inbounds %struct.Mesh, ptr %66, i64 0, i32 28
  %68 = load i32, ptr %67, align 8, !tbaa !49
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 6
  %71 = call ptr %64(i64 noundef %70, ptr noundef nonnull @.str.5) #15
  %72 = getelementptr inbounds ptr, ptr %18, i64 %63
  store ptr %71, ptr %72, align 8, !tbaa !48
  %73 = load ptr, ptr %65, align 8, !tbaa !54
  call fastcc void @mesh_calc_tri_tessface(ptr noundef %71, ptr noundef %73, i8 noundef zeroext 0, ptr noundef null) #17
  %74 = load ptr, ptr %65, align 8, !tbaa !54
  %75 = call ptr @CDDM_from_mesh(ptr noundef %74) #15
  %76 = getelementptr inbounds ptr, ptr %20, i64 %63
  store ptr %75, ptr %76, align 8, !tbaa !48
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %75, i64 0, i32 25
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = call i32 %78(ptr noundef %75) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %62
  %82 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %23, i64 %63
  %83 = load ptr, ptr %76, align 8, !tbaa !48
  %84 = call ptr @bvhtree_from_mesh_faces(ptr noundef %82, ptr noundef %83, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #15
  %85 = load ptr, ptr %82, align 8, !tbaa !58
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %63, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !60
  %90 = getelementptr inbounds %struct.ID, ptr %89, i64 0, i32 4, i64 2
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %90) #17
  br label %133

92:                                               ; preds = %62, %81
  %93 = add nuw i64 %63, 1
  %94 = icmp eq i64 %93, %16
  br i1 %94, label %56, label %62, !llvm.loop !61

95:                                               ; preds = %58, %130
  %96 = phi i64 [ 0, %58 ], [ %131, %130 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  %97 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !34
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  br i1 %60, label %101, label %130

101:                                              ; preds = %100, %101
  %102 = phi i64 [ %106, %101 ], [ 0, %100 ]
  %103 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !62
  %105 = getelementptr inbounds %struct.BakePixel, ptr %104, i64 %96
  store i32 -1, ptr %105, align 4, !tbaa !34
  %106 = add nuw nsw i64 %102, 1
  %107 = icmp eq i64 %106, %61
  br i1 %107, label %130, label %101, !llvm.loop !63

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %96, i32 1
  %110 = load float, ptr %109, align 4, !tbaa !64
  %111 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %96, i32 1, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !64
  br i1 %59, label %114, label %113

113:                                              ; preds = %108
  call fastcc void @calc_point_from_barycentric_cage(ptr noundef %52, ptr noundef %53, ptr noundef %7, ptr noundef %8, i32 noundef %98, float noundef %110, float noundef %112, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  br label %117

114:                                              ; preds = %108
  br i1 %14, label %116, label %115

115:                                              ; preds = %114
  call fastcc void @calc_point_from_barycentric_extrusion(ptr noundef %53, ptr noundef %7, ptr noundef nonnull %11, i32 noundef %98, float noundef %110, float noundef %112, float noundef %6, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext 1) #17
  br label %117

116:                                              ; preds = %114
  call fastcc void @calc_point_from_barycentric_extrusion(ptr noundef %52, ptr noundef %7, ptr noundef nonnull %11, i32 noundef %98, float noundef %110, float noundef %112, float noundef %6, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext 0) #17
  br label %117

117:                                              ; preds = %115, %116, %113
  %118 = trunc i64 %96 to i32
  %119 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %96, i32 2
  %120 = load float, ptr %119, align 4, !tbaa !65
  %121 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %96, i32 3
  %122 = load float, ptr %121, align 4, !tbaa !66
  %123 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %96, i32 4
  %124 = load float, ptr %123, align 4, !tbaa !67
  %125 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %96, i32 5
  %126 = load float, ptr %125, align 4, !tbaa !68
  %127 = call fastcc zeroext i8 @cast_ray_highpoly(ptr noundef %23, ptr noundef %18, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %118, i32 noundef %3, float noundef %120, float noundef %122, float noundef %124, float noundef %126) #17, !range !69
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  store i32 -1, ptr %97, align 4, !tbaa !34
  br label %130

130:                                              ; preds = %101, %100, %117, %129
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  %131 = add nuw i64 %96, 1
  %132 = icmp eq i64 %131, %4
  br i1 %132, label %133, label %95, !llvm.loop !70

133:                                              ; preds = %130, %56, %87
  %134 = phi i8 [ 0, %87 ], [ 1, %56 ], [ 1, %130 ]
  br i1 %55, label %153, label %135

135:                                              ; preds = %133, %150
  %136 = phi i64 [ %151, %150 ], [ 0, %133 ]
  %137 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %23, i64 %136
  call void @free_bvhtree_from_mesh(ptr noundef %137) #15
  %138 = getelementptr inbounds ptr, ptr %20, i64 %136
  %139 = load ptr, ptr %138, align 8, !tbaa !48
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.DerivedMesh, ptr %139, i64 0, i32 95
  %143 = load ptr, ptr %142, align 8, !tbaa !71
  call void %143(ptr noundef nonnull %139) #15
  br label %144

144:                                              ; preds = %141, %135
  %145 = getelementptr inbounds ptr, ptr %18, i64 %136
  %146 = load ptr, ptr %145, align 8, !tbaa !48
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %149(ptr noundef nonnull %146) #15
  br label %150

150:                                              ; preds = %144, %148
  %151 = add nuw i64 %136, 1
  %152 = icmp eq i64 %151, %16
  br i1 %152, label %153, label %135, !llvm.loop !72

153:                                              ; preds = %150, %133
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %154(ptr noundef %18) #15
  %155 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %155(ptr noundef %23) #15
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %156(ptr noundef %20) #15
  %157 = icmp eq ptr %51, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.DerivedMesh, ptr %51, i64 0, i32 95
  %160 = load ptr, ptr %159, align 8, !tbaa !71
  call void %160(ptr noundef nonnull %51) #15
  br label %161

161:                                              ; preds = %158, %153
  %162 = icmp eq ptr %52, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %161
  %164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %164(ptr noundef nonnull %52) #15
  br label %165

165:                                              ; preds = %163, %161
  %166 = icmp eq ptr %53, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %165
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %168(ptr noundef nonnull %53) #15
  br label %169

169:                                              ; preds = %167, %165
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  ret i8 %134
}

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_calc_tri_tessface(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !73 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %6 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %5, i32 noundef 4) #15
  %7 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %8 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %7, i32 noundef 0) #15
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  tail call void @DM_ensure_normals(ptr noundef %3) #15
  tail call void @DM_add_tangent_layer(ptr noundef %3) #15
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = tail call ptr %12(ptr noundef %3, i32 noundef 8) #15
  %14 = icmp ne ptr %13, null
  %15 = load ptr, ptr %11, align 8, !tbaa !74
  %16 = tail call ptr %15(ptr noundef %3, i32 noundef 18) #15
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi ptr [ %16, %10 ], [ undef, %4 ]
  %19 = phi ptr [ %13, %10 ], [ null, %4 ]
  %20 = phi i1 [ %14, %10 ], [ undef, %4 ]
  %21 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %22 = load i32, ptr %21, align 8, !tbaa !49
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %107

24:                                               ; preds = %17, %101
  %25 = phi i64 [ %103, %101 ], [ 0, %17 ]
  %26 = phi i32 [ %102, %101 ], [ -1, %17 ]
  %27 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25
  %28 = shl i64 %25, 2
  %29 = and i64 %28, 4294967292
  %30 = getelementptr inbounds %struct.TSpace, ptr %18, i64 %29
  %31 = add nsw i32 %26, 1
  %32 = load i32, ptr %27, align 4, !tbaa !75
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %8, i64 %33
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35
  store ptr %34, ptr %36, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !77
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.MVert, ptr %8, i64 %39
  %41 = getelementptr inbounds [3 x ptr], ptr %36, i64 0, i64 1
  store ptr %40, ptr %41, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !78
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %8, i64 %44
  %46 = getelementptr inbounds [3 x ptr], ptr %36, i64 0, i64 2
  store ptr %45, ptr %46, align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 6
  %48 = load i8, ptr %47, align 1, !tbaa !79
  %49 = and i8 %48, 1
  %50 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35, i32 3
  store i8 %49, ptr %50, align 4, !tbaa !80
  br i1 %9, label %72, label %51

51:                                               ; preds = %24
  %52 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35, i32 1
  store ptr %30, ptr %52, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.TSpace, ptr %30, i64 1
  %54 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35, i32 1, i64 1
  store ptr %53, ptr %54, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.TSpace, ptr %30, i64 2
  %56 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35, i32 1, i64 2
  store ptr %55, ptr %56, align 8, !tbaa !48
  br i1 %20, label %68, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !82
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35, i32 2
  br i1 %60, label %66, label %62

62:                                               ; preds = %57
  %63 = zext i32 %59 to i64
  %64 = getelementptr inbounds %struct.MVert, ptr %8, i64 %63
  %65 = tail call float @normal_quad_v3(ptr noundef nonnull %61, ptr noundef %34, ptr noundef %40, ptr noundef %45, ptr noundef nonnull %64) #15
  br label %72

66:                                               ; preds = %57
  %67 = tail call float @normal_tri_v3(ptr noundef nonnull %61, ptr noundef %34, ptr noundef %40, ptr noundef %45) #15
  br label %72

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35, i32 2
  %70 = mul nuw nsw i64 %25, 3
  %71 = getelementptr inbounds float, ptr %19, i64 %70
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %69, ptr noundef %71) #17
  br label %72

72:                                               ; preds = %68, %66, %62, %24
  %73 = getelementptr inbounds %struct.MFace, ptr %6, i64 %25, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !82
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %72
  %77 = add nsw i32 %26, 2
  %78 = load i32, ptr %27, align 4, !tbaa !75
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.MVert, ptr %8, i64 %79
  %81 = sext i32 %77 to i64
  %82 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %81
  store ptr %80, ptr %82, align 8, !tbaa !48
  %83 = load i32, ptr %42, align 4, !tbaa !78
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.MVert, ptr %8, i64 %84
  %86 = getelementptr inbounds [3 x ptr], ptr %82, i64 0, i64 1
  store ptr %85, ptr %86, align 8, !tbaa !48
  %87 = zext i32 %74 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %8, i64 %87
  %89 = getelementptr inbounds [3 x ptr], ptr %82, i64 0, i64 2
  store ptr %88, ptr %89, align 8, !tbaa !48
  %90 = load i8, ptr %47, align 1, !tbaa !79
  %91 = and i8 %90, 1
  %92 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %81, i32 3
  store i8 %91, ptr %92, align 4, !tbaa !80
  br i1 %9, label %101, label %93

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %81, i32 1
  store ptr %30, ptr %94, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.TSpace, ptr %30, i64 2
  %96 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %81, i32 1, i64 1
  store ptr %95, ptr %96, align 8, !tbaa !48
  %97 = getelementptr inbounds %struct.TSpace, ptr %30, i64 3
  %98 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %81, i32 1, i64 2
  store ptr %97, ptr %98, align 8, !tbaa !48
  %99 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %81, i32 2
  %100 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %35, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %99, ptr noundef nonnull %100) #17
  br label %101

101:                                              ; preds = %76, %93, %72
  %102 = phi i32 [ %77, %93 ], [ %77, %76 ], [ %31, %72 ]
  %103 = add nuw nsw i64 %25, 1
  %104 = load i32, ptr %21, align 8, !tbaa !49
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %24, label %107, !llvm.loop !83

107:                                              ; preds = %101, %17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_point_from_barycentric_cage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #2 !PGOFuncName !84 {
  %10 = alloca [2 x [3 x [3 x float]]], align 16
  %11 = alloca [2 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %14
  store ptr %15, ptr %13, align 16, !tbaa !48
  %16 = getelementptr inbounds %struct.TriTessFace, ptr %1, i64 %14
  %17 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !48
  br label %18

18:                                               ; preds = %9, %18
  %19 = phi i1 [ true, %9 ], [ false, %18 ]
  %20 = phi i64 [ 0, %9 ], [ 1, %18 ]
  %21 = getelementptr inbounds [2 x [3 x [3 x float]]], ptr %10, i64 0, i64 %20
  %22 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef %24) #17
  %25 = getelementptr inbounds [2 x [3 x [3 x float]]], ptr %10, i64 0, i64 %20, i64 1
  %26 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef %27) #17
  %28 = getelementptr inbounds [2 x [3 x [3 x float]]], ptr %10, i64 0, i64 %20, i64 2
  %29 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef %30) #17
  %31 = getelementptr inbounds [2 x [3 x float]], ptr %11, i64 0, i64 %20
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %21, float noundef %5, float noundef %6, ptr noundef nonnull %31) #15
  br i1 %19, label %18, label %32, !llvm.loop !85

32:                                               ; preds = %18
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %11) #15
  %33 = getelementptr inbounds [2 x [3 x float]], ptr %11, i64 0, i64 1
  call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %33) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %33) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %12) #17
  call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef nonnull %33) #17
  call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_point_from_barycentric_extrusion(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, i8 noundef zeroext %9) unnamed_addr #2 !PGOFuncName !86 {
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %15
  %17 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %15, i32 3
  %18 = load i8, ptr %17, align 4, !tbaa !80
  %19 = or i8 %18, %9
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr %16, align 8, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %21) #17
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %23 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef %24) #17
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  %26 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef %27) #17
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %11, float noundef %4, float noundef %5, ptr noundef nonnull %12) #15
  br i1 %20, label %35, label %28

28:                                               ; preds = %10
  %29 = load ptr, ptr %16, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.MVert, ptr %29, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %11, ptr noundef nonnull %30) #17
  %31 = load ptr, ptr %23, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.MVert, ptr %31, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %22, ptr noundef nonnull %32) #17
  %33 = load ptr, ptr %26, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.MVert, ptr %33, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %25, ptr noundef nonnull %34) #17
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %11, float noundef %4, float noundef %5, ptr noundef nonnull %13) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %13) #17
  br label %37

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %15, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %36) #17
  br label %37

37:                                               ; preds = %35, %28
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %14, ptr noundef nonnull %13, float noundef %6) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %13) #17
  call fastcc void @negate_v3(ptr noundef nonnull %13) #17
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %12) #15
  call void @mul_transposed_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %13) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %13) #17
  call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef nonnull %12) #17
  call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cast_ray_highpoly(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10) unnamed_addr #2 !PGOFuncName !87 {
  %12 = alloca i32, align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  store i32 -1, ptr %12, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %18 = sext i32 %6 to i64
  %19 = mul nsw i64 %18, 36
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.9) #15
  %21 = icmp sgt i32 %6, 0
  br i1 %21, label %22, label %90

22:                                               ; preds = %11
  %23 = zext nneg i32 %6 to i64
  br label %33

24:                                               ; preds = %63
  br i1 %21, label %25, label %90

25:                                               ; preds = %24
  %26 = sext i32 %5 to i64
  %27 = zext i32 %65 to i64
  %28 = zext nneg i32 %6 to i64
  %29 = getelementptr inbounds ptr, ptr %1, i64 %27
  %30 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %20, i64 %27
  %31 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %20, i64 %27, i32 1
  %32 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %27
  br label %68

33:                                               ; preds = %22, %63
  %34 = phi i64 [ 0, %22 ], [ %66, %63 ]
  %35 = phi i32 [ -1, %22 ], [ %65, %63 ]
  %36 = phi float [ 0x47EFFFFFE0000000, %22 ], [ %64, %63 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  %37 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %20, i64 %34
  store i32 -1, ptr %37, align 4, !tbaa !89
  %38 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %20, i64 %34, i32 3
  store float 1.000000e+04, ptr %38, align 4, !tbaa !91
  %39 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %34, i32 6
  call void @mul_v3_m4v3(ptr noundef nonnull %14, ptr noundef nonnull %39, ptr noundef %3) #15
  %40 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %34, i32 7
  call void @mul_v3_m4v3(ptr noundef nonnull %15, ptr noundef nonnull %40, ptr noundef %4) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %15) #17
  %41 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 %34
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 %34, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %42, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef 0.000000e+00, ptr noundef nonnull %37, ptr noundef %46, ptr noundef nonnull %41) #15
  br label %48

48:                                               ; preds = %44, %33
  %49 = load i32, ptr %37, align 4, !tbaa !89
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %20, i64 %34, i32 2
  %53 = call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %52) #17
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #16
  %56 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %34, i32 5
  %57 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %20, i64 %34, i32 1
  call void @mul_v3_m4v3(ptr noundef nonnull %16, ptr noundef nonnull %56, ptr noundef nonnull %57) #15
  %58 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %16, ptr noundef %3) #17
  %59 = fcmp olt float %58, %36
  %60 = select i1 %59, float %58, float %36
  %61 = trunc i64 %34 to i32
  %62 = select i1 %59, i32 %61, i32 %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  br label %63

63:                                               ; preds = %51, %55, %48
  %64 = phi float [ %36, %48 ], [ %60, %55 ], [ %36, %51 ]
  %65 = phi i32 [ %35, %48 ], [ %62, %55 ], [ %35, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  %66 = add nuw nsw i64 %34, 1
  %67 = icmp eq i64 %66, %23
  br i1 %67, label %24, label %33, !llvm.loop !93

68:                                               ; preds = %25, %87
  %69 = phi i64 [ 0, %25 ], [ %88, %87 ]
  %70 = icmp eq i64 %69, %27
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load ptr, ptr %29, align 8, !tbaa !48
  %73 = load i32, ptr %30, align 4, !tbaa !89
  call fastcc void @calc_barycentric_from_point(ptr noundef %72, i32 noundef %73, ptr noundef nonnull %31, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %74 = load i32, ptr %12, align 4, !tbaa !88
  %75 = load ptr, ptr %32, align 8, !tbaa !62
  %76 = getelementptr inbounds %struct.BakePixel, ptr %75, i64 %26
  store i32 %74, ptr %76, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.BakePixel, ptr %75, i64 %26, i32 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %77, ptr noundef nonnull %13) #17
  %78 = load ptr, ptr %32, align 8, !tbaa !62
  %79 = getelementptr inbounds %struct.BakePixel, ptr %78, i64 %26, i32 2
  store float %7, ptr %79, align 4, !tbaa !65
  %80 = getelementptr inbounds %struct.BakePixel, ptr %78, i64 %26, i32 3
  store float %8, ptr %80, align 4, !tbaa !66
  %81 = getelementptr inbounds %struct.BakePixel, ptr %78, i64 %26, i32 4
  store float %9, ptr %81, align 4, !tbaa !67
  %82 = getelementptr inbounds %struct.BakePixel, ptr %78, i64 %26, i32 5
  store float %10, ptr %82, align 4, !tbaa !68
  br label %87

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.BakeHighPolyData, ptr %2, i64 %69
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds %struct.BakePixel, ptr %85, i64 %26
  store i32 -1, ptr %86, align 4, !tbaa !34
  br label %87

87:                                               ; preds = %71, %83
  %88 = add nuw nsw i64 %69, 1
  %89 = icmp eq i64 %88, %28
  br i1 %89, label %90, label %68, !llvm.loop !94

90:                                               ; preds = %87, %11, %24
  %91 = phi i32 [ %65, %24 ], [ -1, %11 ], [ %65, %87 ]
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %92(ptr noundef %20) #15
  %93 = icmp ne i32 %91, -1
  %94 = zext i1 %93 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  ret i8 %94
}

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_bake_pixels_populate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BakeDataZSpan, align 8
  %7 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %158

11:                                               ; preds = %5
  store ptr %1, ptr %6, align 8, !tbaa !96
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.BakeImages, ptr %3, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !98
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 224
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.7) #15
  %18 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !100
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %11
  %21 = add i64 %2, 3
  %22 = and i64 %21, -4
  %23 = add i64 %2, -1
  %24 = insertelement <4 x i64> poison, i64 %23, i64 0
  %25 = shufflevector <4 x i64> %24, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %26

26:                                               ; preds = %48, %20
  %27 = phi i64 [ 0, %20 ], [ %49, %48 ]
  %28 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %20 ], [ %50, %48 ]
  %29 = icmp ule <4 x i64> %28, %25
  %30 = extractelement <4 x i1> %29, i64 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %27
  store i32 -1, ptr %32, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %31, %26
  %34 = extractelement <4 x i1> %29, i64 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = or disjoint i64 %27, 1
  %37 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %36
  store i32 -1, ptr %37, align 4, !tbaa !34
  br label %38

38:                                               ; preds = %35, %33
  %39 = extractelement <4 x i1> %29, i64 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = or disjoint i64 %27, 2
  %42 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %41
  store i32 -1, ptr %42, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %40, %38
  %44 = extractelement <4 x i1> %29, i64 3
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = or disjoint i64 %27, 3
  %47 = getelementptr inbounds %struct.BakePixel, ptr %1, i64 %46
  store i32 -1, ptr %47, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %45, %43
  %49 = add i64 %27, 4
  %50 = add <4 x i64> %28, <i64 4, i64 4, i64 4, i64 4>
  %51 = icmp eq i64 %49, %22
  br i1 %51, label %52, label %26, !llvm.loop !101

52:                                               ; preds = %48, %11
  %53 = load i32, ptr %13, align 8, !tbaa !98
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %64, %55 ], [ 0, %52 ]
  %57 = getelementptr inbounds %struct.ZSpan, ptr %17, i64 %56
  %58 = load ptr, ptr %3, align 8, !tbaa !104
  %59 = getelementptr inbounds %struct.BakeImage, ptr %58, i64 %56, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !105
  %61 = getelementptr inbounds %struct.BakeImage, ptr %58, i64 %56, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !108
  %63 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !109
  tail call void @zbuf_alloc_span(ptr noundef %57, i32 noundef %60, i32 noundef %62, float noundef %63) #15
  %64 = add nuw i64 %56, 1
  %65 = load i32, ptr %13, align 8, !tbaa !98
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %55, label %68, !llvm.loop !123

68:                                               ; preds = %55, %52
  %69 = icmp eq ptr %4, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = load i8, ptr %4, align 1, !tbaa !40
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70, %68
  %74 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %75 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %74, i32 noundef 5) #15
  br label %80

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %78 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %77, i32 noundef 5, ptr noundef nonnull %4) #15
  %79 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %77, i32 noundef 5, i32 noundef %78) #15
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi ptr [ %75, %73 ], [ %79, %76 ]
  %82 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %83 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %82, i32 noundef 4) #15
  %84 = icmp eq ptr %81, null
  br i1 %84, label %158, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %87 = load i32, ptr %86, align 8, !tbaa !49
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.BakeImages, ptr %3, i64 0, i32 1
  %91 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 2
  %92 = getelementptr inbounds %struct.BakeDataZSpan, ptr %6, i64 0, i32 1
  %93 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 1
  %94 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 2
  %95 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 3
  br label %99

96:                                               ; preds = %141, %85
  %97 = load i32, ptr %13, align 8, !tbaa !98
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %155, label %147

99:                                               ; preds = %89, %141
  %100 = phi i64 [ 0, %89 ], [ %143, %141 ]
  %101 = phi i32 [ -1, %89 ], [ %142, %141 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %102 = getelementptr inbounds %struct.MTFace, ptr %81, i64 %100
  %103 = getelementptr inbounds %struct.MFace, ptr %83, i64 %100, i32 4
  %104 = load i16, ptr %103, align 4, !tbaa !124
  %105 = load ptr, ptr %90, align 8, !tbaa !125
  %106 = sext i16 %104 to i64
  %107 = getelementptr inbounds i32, ptr %105, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !88
  %109 = load ptr, ptr %3, align 8, !tbaa !104
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds %struct.BakeImage, ptr %109, i64 %110
  store ptr %111, ptr %91, align 8, !tbaa !126
  %112 = add nsw i32 %101, 1
  store i32 %112, ptr %92, align 8, !tbaa !127
  %113 = getelementptr inbounds %struct.BakeImage, ptr %109, i64 %110, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !105
  %115 = sitofp i32 %114 to float
  %116 = getelementptr inbounds %struct.BakeImage, ptr %109, i64 %110, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !108
  %118 = sitofp i32 %117 to float
  br label %119

119:                                              ; preds = %99, %119
  %120 = phi i64 [ 0, %99 ], [ %129, %119 ]
  %121 = getelementptr inbounds [4 x [2 x float]], ptr %102, i64 0, i64 %120
  %122 = load float, ptr %121, align 8, !tbaa !64
  %123 = call float @llvm.fmuladd.f32(float %122, float %115, float 0xBFE0083120000000)
  %124 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 %120
  store float %123, ptr %124, align 8, !tbaa !64
  %125 = getelementptr inbounds [4 x [2 x float]], ptr %102, i64 0, i64 %120, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !64
  %127 = call float @llvm.fmuladd.f32(float %126, float %118, float 0xBFE0106240000000)
  %128 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 %120, i64 1
  store float %127, ptr %128, align 4, !tbaa !64
  %129 = add nuw nsw i64 %120, 1
  %130 = icmp eq i64 %129, 4
  br i1 %130, label %131, label %119, !llvm.loop !128

131:                                              ; preds = %119
  call fastcc void @bake_differentials(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %93, ptr noundef nonnull %94) #17
  %132 = load ptr, ptr %18, align 8, !tbaa !100
  %133 = getelementptr inbounds %struct.ZSpan, ptr %132, i64 %110
  call void @zspan_scanconvert(ptr noundef %133, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull @store_bake_pixel) #15
  %134 = getelementptr inbounds %struct.MFace, ptr %83, i64 %100, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !82
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %131
  %138 = add nsw i32 %101, 2
  store i32 %138, ptr %92, align 8, !tbaa !127
  call fastcc void @bake_differentials(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %94, ptr noundef nonnull %95) #17
  %139 = load ptr, ptr %18, align 8, !tbaa !100
  %140 = getelementptr inbounds %struct.ZSpan, ptr %139, i64 %110
  call void @zspan_scanconvert(ptr noundef %140, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %94, ptr noundef nonnull %95, ptr noundef nonnull @store_bake_pixel) #15
  br label %141

141:                                              ; preds = %137, %131
  %142 = phi i32 [ %138, %137 ], [ %112, %131 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %143 = add nuw i64 %100, 1
  %144 = load i32, ptr %86, align 8, !tbaa !49
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %143, %145
  br i1 %146, label %99, label %96, !llvm.loop !129

147:                                              ; preds = %96, %147
  %148 = phi i64 [ %151, %147 ], [ 0, %96 ]
  %149 = load ptr, ptr %18, align 8, !tbaa !100
  %150 = getelementptr inbounds %struct.ZSpan, ptr %149, i64 %148
  call void @zbuf_free_span(ptr noundef %150) #15
  %151 = add nuw i64 %148, 1
  %152 = load i32, ptr %13, align 8, !tbaa !98
  %153 = sext i32 %152 to i64
  %154 = icmp ult i64 %151, %153
  br i1 %154, label %147, label %155, !llvm.loop !130

155:                                              ; preds = %147, %96
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %157 = load ptr, ptr %18, align 8, !tbaa !100
  call void %156(ptr noundef %157) #15
  br label %158

158:                                              ; preds = %80, %5, %155
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bake_differentials(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #6 !PGOFuncName !131 {
  %5 = load float, ptr %2, align 4, !tbaa !64
  %6 = load float, ptr %1, align 4, !tbaa !64
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !64
  %12 = fsub float %9, %11
  %13 = load float, ptr %3, align 4, !tbaa !64
  %14 = fsub float %13, %6
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !64
  %17 = fsub float %16, %11
  %18 = fneg float %14
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %19)
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp ogt float %21, 0x3E80000000000000
  br i1 %22, label %23, label %42

23:                                               ; preds = %4
  %24 = fdiv float 5.000000e-01, %20
  %25 = fsub float %16, %9
  %26 = fmul float %25, %24
  %27 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 4
  store float %26, ptr %27, align 8, !tbaa !132
  %28 = load float, ptr %8, align 4, !tbaa !64
  %29 = load float, ptr %10, align 4, !tbaa !64
  %30 = fsub float %28, %29
  %31 = fmul float %24, %30
  %32 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 6
  store float %31, ptr %32, align 8, !tbaa !133
  %33 = load float, ptr %3, align 4, !tbaa !64
  %34 = load float, ptr %2, align 4, !tbaa !64
  %35 = fsub float %33, %34
  %36 = fmul float %24, %35
  %37 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 5
  store float %36, ptr %37, align 4, !tbaa !134
  %38 = load float, ptr %1, align 4, !tbaa !64
  %39 = load float, ptr %3, align 4, !tbaa !64
  %40 = fsub float %38, %39
  %41 = fmul float %24, %40
  br label %45

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 4
  store <2 x float> zeroinitializer, ptr %43, align 8, !tbaa !64
  %44 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 6
  store float 0.000000e+00, ptr %44, align 8, !tbaa !133
  br label %45

45:                                               ; preds = %42, %23
  %46 = phi float [ %41, %23 ], [ 0.000000e+00, %42 ]
  %47 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 7
  store float %46, ptr %47, align 4
  ret void
}

; Function Attrs: optsize
declare void @zspan_scanconvert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @store_bake_pixel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) #7 !PGOFuncName !135 {
  %6 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.BakeImage, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.BakeImage, ptr %7, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !136
  %12 = mul nsw i32 %9, %2
  %13 = trunc i64 %11 to i32
  %14 = add i32 %12, %1
  %15 = add i32 %14, %13
  %16 = load ptr, ptr %0, align 8, !tbaa !96
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !127
  store i32 %20, ptr %18, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17, i32 1
  tail call fastcc void @copy_v2_fl2(ptr noundef nonnull %21, float noundef %3, float noundef %4) #17
  %22 = getelementptr inbounds %struct.BakeDataZSpan, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.BakePixel, ptr %16, i64 %17, i32 2
  %24 = load <4 x float>, ptr %22, align 8, !tbaa !64
  store <4 x float> %24, ptr %23, align 4, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_bake_normal_world_to_tangent(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x [3 x float]], align 16
  %16 = alloca [3 x float], align 4
  %17 = tail call ptr @CDDM_from_mesh(ptr noundef %4) #15
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 28
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = shl nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 6
  %24 = tail call ptr %18(i64 noundef %23, ptr noundef nonnull @.str.8) #15
  tail call fastcc void @mesh_calc_tri_tessface(ptr noundef %24, ptr noundef %4, i8 noundef zeroext 1, ptr noundef %17) #17
  %25 = icmp eq i64 %1, 0
  br i1 %25, label %88, label %26

26:                                               ; preds = %7
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %29 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2
  br label %32

32:                                               ; preds = %26, %85
  %33 = phi i64 [ 0, %26 ], [ %86, %85 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #16
  %34 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !34
  %36 = mul i64 %33, %27
  %37 = icmp eq i32 %35, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds float, ptr %3, i64 %36
  call fastcc void @copy_v3_fl3(ptr noundef %39) #17
  br label %85

40:                                               ; preds = %32
  %41 = sext i32 %35 to i64
  %42 = getelementptr inbounds %struct.TriTessFace, ptr %24, i64 %41
  %43 = getelementptr inbounds %struct.TriTessFace, ptr %24, i64 %41, i32 3
  %44 = load i8, ptr %43, align 4, !tbaa !80
  %45 = icmp eq i8 %44, 0
  br label %46

46:                                               ; preds = %40, %57
  %47 = phi i64 [ 0, %40 ], [ %64, %57 ]
  br i1 %45, label %53, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 %47
  %50 = getelementptr inbounds [3 x ptr], ptr %42, i64 0, i64 %47
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.MVert, ptr %51, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %49, ptr noundef nonnull %52) #17
  br label %57

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.TriTessFace, ptr %24, i64 %41, i32 2, i64 %47
  %55 = load float, ptr %54, align 4, !tbaa !64
  %56 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %47
  store float %55, ptr %56, align 4, !tbaa !64
  br label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct.TriTessFace, ptr %24, i64 %41, i32 1, i64 %47
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 %47
  call fastcc void @copy_v3_v3(ptr noundef nonnull %60, ptr noundef %59) #17
  %61 = getelementptr inbounds %struct.TSpace, ptr %59, i64 0, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !137
  %63 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %47
  store float %62, ptr %63, align 4, !tbaa !64
  %64 = add nuw nsw i64 %47, 1
  %65 = icmp eq i64 %64, 3
  br i1 %65, label %66, label %46, !llvm.loop !139

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %33, i32 1
  %68 = load float, ptr %67, align 4, !tbaa !64
  %69 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %33, i32 1, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !64
  %71 = fsub float 1.000000e+00, %68
  %72 = fsub float %71, %70
  br i1 %45, label %74, label %73

73:                                               ; preds = %66
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %9, float noundef %68, float noundef %70, ptr noundef nonnull %12) #15
  br label %74

74:                                               ; preds = %73, %66
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %8, float noundef %68, float noundef %70, ptr noundef nonnull %11) #15
  %75 = load float, ptr %10, align 4, !tbaa !64
  %76 = load float, ptr %28, align 4, !tbaa !64
  %77 = fmul float %70, %76
  %78 = call float @llvm.fmuladd.f32(float %75, float %68, float %77)
  %79 = load float, ptr %29, align 4, !tbaa !64
  %80 = call float @llvm.fmuladd.f32(float %79, float %72, float %78)
  %81 = fcmp olt float %80, 0.000000e+00
  %82 = select i1 %81, float -1.000000e+00, float 1.000000e+00
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef %82) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %11) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %13) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %12) #17
  %83 = getelementptr inbounds float, ptr %3, i64 %36
  call fastcc void @normal_uncompress(ptr noundef nonnull %16, ptr noundef %83) #17
  call void @mul_transposed_mat3_m4_v3(ptr noundef %6, ptr noundef nonnull %16) #15
  %84 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %15, ptr noundef nonnull %14) #15
  call void @mul_m3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %16) #17
  call fastcc void @normal_compress(ptr noundef %83, ptr noundef nonnull %16, ptr noundef %5) #17
  br label %85

85:                                               ; preds = %74, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #16
  %86 = add nuw i64 %33, 1
  %87 = icmp eq i64 %86, %1
  br i1 %87, label %88, label %32, !llvm.loop !140

88:                                               ; preds = %85, %7
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %89(ptr noundef %24) #15
  %90 = icmp eq ptr %17, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 95
  %93 = load ptr, ptr %92, align 8, !tbaa !71
  call void %93(ptr noundef nonnull %17) #15
  br label %94

94:                                               ; preds = %91, %88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !141 {
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr %0, align 4, !tbaa !64
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 1.000000e+00, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !142 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !143
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !64
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !143
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !144 {
  %3 = load float, ptr %1, align 4, !tbaa !64
  store float %3, ptr %0, align 4, !tbaa !64
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !64
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @interp_barycentric_tri_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !145 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !64
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !64
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !64
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !64
  %15 = load float, ptr %8, align 4, !tbaa !64
  %16 = load float, ptr %2, align 4, !tbaa !64
  %17 = load float, ptr %1, align 4, !tbaa !64
  %18 = load float, ptr %6, align 4, !tbaa !64
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !64
  %23 = load float, ptr %1, align 4, !tbaa !64
  %24 = load float, ptr %10, align 4, !tbaa !64
  %25 = load float, ptr %4, align 4, !tbaa !64
  %26 = load float, ptr %2, align 4, !tbaa !64
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !146 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !64
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @normal_uncompress(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !147 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds float, ptr %1, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !64
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 2.000000e+00, float -1.000000e+00)
  %8 = getelementptr inbounds float, ptr %0, i64 %4
  store float %7, ptr %8, align 4, !tbaa !64
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %3, !llvm.loop !148

11:                                               ; preds = %3
  ret void
}

; Function Attrs: optsize
declare void @mul_transposed_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !149 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @normal_compress(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !150 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %21, %4 ]
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !88
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [6 x float], ptr @__const.normal_compress.swizzle_sign, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds [6 x i32], ptr @__const.normal_compress.swizzle_index, i64 0, i64 %8
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !64
  %16 = fmul float %10, %15
  %17 = fmul float %16, 5.000000e-01
  %18 = fadd float %17, 5.000000e-01
  %19 = fadd float %18, 0x3EE4F8B580000000
  %20 = getelementptr inbounds float, ptr %0, i64 %5
  store float %19, ptr %20, align 4, !tbaa !64
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %4, !llvm.loop !151

23:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_bake_normal_world_to_object(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %9) #15
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = sext i32 %2 to i64
  br label %14

14:                                               ; preds = %12, %22
  %15 = phi i64 [ 0, %12 ], [ %23, %22 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %16 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = mul i64 %15, %13
  %21 = getelementptr inbounds float, ptr %3, i64 %20
  call fastcc void @normal_uncompress(ptr noundef nonnull %8, ptr noundef %21) #17
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #17
  call fastcc void @normal_compress(ptr noundef %21, ptr noundef nonnull %8, ptr noundef %5) #17
  br label %22

22:                                               ; preds = %14, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  %23 = add nuw i64 %15, 1
  %24 = icmp eq i64 %23, %1
  br i1 %24, label %25, label %14, !llvm.loop !152

25:                                               ; preds = %22, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @RE_bake_normal_world_to_world(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = sext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %18
  %11 = phi i64 [ 0, %8 ], [ %19, %18 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %12 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = mul i64 %11, %9
  %17 = getelementptr inbounds float, ptr %3, i64 %16
  call fastcc void @normal_uncompress(ptr noundef nonnull %6, ptr noundef %17) #17
  call fastcc void @normal_compress(ptr noundef %17, ptr noundef nonnull %6, ptr noundef %4) #17
  br label %18

18:                                               ; preds = %10, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  %19 = add nuw i64 %11, 1
  %20 = icmp eq i64 %19, %1
  br i1 %20, label %21, label %10, !llvm.loop !153

21:                                               ; preds = %18, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_bake_ibuf_clear(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.RE_bake_ibuf_clear.vec_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.RE_bake_ibuf_clear.nor_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.RE_bake_ibuf_clear.nor_solid, i64 16, i1 false)
  %8 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #15
  %9 = icmp eq i8 %1, 0
  %10 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 4
  %11 = load i8, ptr %10, align 8, !tbaa !43
  %12 = icmp eq i8 %11, 32
  %13 = select i1 %12, ptr %4, ptr %5
  %14 = select i1 %12, ptr %6, ptr %7
  %15 = select i1 %9, ptr %13, ptr %14
  call void @IMB_rectfill(ptr noundef %8, ptr noundef nonnull %15) #15
  %16 = load ptr, ptr %3, align 8, !tbaa !48
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %16) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_rectfill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @RE_bake_internal(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %5, 4096
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @bake_uv(ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %6) #17
  br label %10

10:                                               ; preds = %7, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %7 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @bake_uv(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !154 {
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %13, %8 ]
  %10 = mul i64 %9, %7
  %11 = getelementptr inbounds float, ptr %3, i64 %10
  %12 = getelementptr inbounds %struct.BakePixel, ptr %0, i64 %9, i32 1
  tail call fastcc void @copy_v2_v2(ptr noundef %11, ptr noundef nonnull %12) #17
  %13 = add nuw i64 %9, 1
  %14 = icmp eq i64 %13, %1
  br i1 %14, label %15, label %8, !llvm.loop !155

15:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @RE_pass_depth(i32 noundef %0) local_unnamed_addr #12 {
  ret i32 4
}

; Function Attrs: optsize
declare void @DM_ensure_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_add_tangent_layer(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !156 {
  %4 = load float, ptr %1, align 4, !tbaa !64
  %5 = load float, ptr %2, align 4, !tbaa !64
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !64
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !64
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !157 {
  %4 = load float, ptr %1, align 4, !tbaa !64
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !64
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !64
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !64
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !64
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !158 {
  %3 = load float, ptr %1, align 4, !tbaa !64
  %4 = load float, ptr %0, align 4, !tbaa !64
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !64
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !64
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !64
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !64
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !64
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !159 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !64
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !64
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !64
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !160 {
  %3 = load float, ptr %0, align 4, !tbaa !64
  %4 = load float, ptr %1, align 4, !tbaa !64
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !64
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !161 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_barycentric_from_point(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) unnamed_addr #2 !PGOFuncName !162 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.TriTessFace, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  tail call void @resolve_tri_uv_v3(ptr noundef %4, ptr noundef %2, ptr noundef %8, ptr noundef %10, ptr noundef %12) #15
  store i32 %1, ptr %3, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !163 {
  %3 = load float, ptr %1, align 4, !tbaa !64
  store float %3, ptr %0, align 4, !tbaa !64
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !64
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @resolve_tri_uv_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl2(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) unnamed_addr #8 !PGOFuncName !164 {
  store float %1, ptr %0, align 4, !tbaa !64
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %4, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !165 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !166 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !64
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !64
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"BakePixel", !36, i64 0, !37, i64 4, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!37, !37, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !37, i64 24}
!44 = !{!"ImBuf", !45, i64 0, !45, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !45, i64 40, !45, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !45, i64 88, !45, i64 96, !45, i64 104, !39, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !45, i64 296, !45, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !45, i64 2368, !36, i64 2376, !45, i64 2384, !36, i64 2392, !36, i64 2396, !45, i64 2400, !45, i64 2408, !45, i64 2416, !45, i64 2424, !36, i64 2432, !46, i64 2436, !47, i64 2456}
!45 = !{!"any pointer", !37, i64 0}
!46 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!47 = !{!"DDSData", !36, i64 0, !36, i64 4, !45, i64 8, !36, i64 16}
!48 = !{!45, !45, i64 0}
!49 = !{!50, !36, i64 1288}
!50 = !{!"Mesh", !51, i64 0, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !53, i64 280, !53, i64 480, !53, i64 680, !53, i64 880, !53, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !52, i64 1348, !52, i64 1350, !39, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !52, i64 1366, !45, i64 1368}
!51 = !{!"ID", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !37, i64 32, !52, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !45, i64 112}
!52 = !{!"short", !37, i64 0}
!53 = !{!"CustomData", !45, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !45, i64 184, !45, i64 192}
!54 = !{!55, !45, i64 24}
!55 = !{!"BakeHighPolyData", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !37, i64 32, !37, i64 36, !37, i64 100, !37, i64 164}
!56 = !{!57, !45, i64 1120}
!57 = !{!"DerivedMesh", !53, i64 0, !53, i64 200, !53, i64 400, !53, i64 600, !53, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !45, i64 1032, !45, i64 1040, !36, i64 1048, !39, i64 1052, !36, i64 1056, !36, i64 1060, !45, i64 1064, !37, i64 1072, !45, i64 1080, !45, i64 1088, !45, i64 1096, !45, i64 1104, !45, i64 1112, !45, i64 1120, !45, i64 1128, !45, i64 1136, !45, i64 1144, !45, i64 1152, !45, i64 1160, !45, i64 1168, !45, i64 1176, !45, i64 1184, !45, i64 1192, !45, i64 1200, !45, i64 1208, !45, i64 1216, !45, i64 1224, !45, i64 1232, !45, i64 1240, !45, i64 1248, !45, i64 1256, !45, i64 1264, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !45, i64 1304, !45, i64 1312, !45, i64 1320, !45, i64 1328, !45, i64 1336, !45, i64 1344, !45, i64 1352, !45, i64 1360, !45, i64 1368, !45, i64 1376, !45, i64 1384, !45, i64 1392, !45, i64 1400, !45, i64 1408, !45, i64 1416, !45, i64 1424, !45, i64 1432, !45, i64 1440, !45, i64 1448, !45, i64 1456, !45, i64 1464, !45, i64 1472, !45, i64 1480, !45, i64 1488, !45, i64 1496, !45, i64 1504, !45, i64 1512, !45, i64 1520, !45, i64 1528, !45, i64 1536, !45, i64 1544, !45, i64 1552, !45, i64 1560, !45, i64 1568, !45, i64 1576, !45, i64 1584, !45, i64 1592, !45, i64 1600, !45, i64 1608, !45, i64 1616, !45, i64 1624, !45, i64 1632, !45, i64 1640, !45, i64 1648, !45, i64 1656, !45, i64 1664, !45, i64 1672, !45, i64 1680}
!58 = !{!59, !45, i64 0}
!59 = !{!"BVHTreeFromMesh", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !39, i64 52, !45, i64 56, !37, i64 64}
!60 = !{!55, !45, i64 8}
!61 = distinct !{!61, !42}
!62 = !{!55, !45, i64 0}
!63 = distinct !{!63, !42}
!64 = !{!39, !39, i64 0}
!65 = !{!35, !39, i64 12}
!66 = !{!35, !39, i64 16}
!67 = !{!35, !39, i64 20}
!68 = !{!35, !39, i64 24}
!69 = !{i8 0, i8 2}
!70 = distinct !{!70, !42}
!71 = !{!57, !45, i64 1680}
!72 = distinct !{!72, !42}
!73 = !{!"bake_api.c:mesh_calc_tri_tessface"}
!74 = !{!57, !45, i64 1336}
!75 = !{!76, !36, i64 0}
!76 = !{!"MFace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !52, i64 16, !37, i64 18, !37, i64 19}
!77 = !{!76, !36, i64 4}
!78 = !{!76, !36, i64 8}
!79 = !{!76, !37, i64 19}
!80 = !{!81, !37, i64 60}
!81 = !{!"TriTessFace", !37, i64 0, !37, i64 24, !37, i64 48, !37, i64 60}
!82 = !{!76, !36, i64 12}
!83 = distinct !{!83, !42}
!84 = !{!"bake_api.c:calc_point_from_barycentric_cage"}
!85 = distinct !{!85, !42}
!86 = !{!"bake_api.c:calc_point_from_barycentric_extrusion"}
!87 = !{!"bake_api.c:cast_ray_highpoly"}
!88 = !{!36, !36, i64 0}
!89 = !{!90, !36, i64 0}
!90 = !{!"BVHTreeRayHit", !36, i64 0, !37, i64 4, !37, i64 16, !39, i64 28, !36, i64 32}
!91 = !{!90, !39, i64 28}
!92 = !{!59, !45, i64 16}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = !{!50, !45, i64 272}
!96 = !{!97, !45, i64 0}
!97 = !{!"BakeDataZSpan", !45, i64 0, !36, i64 8, !45, i64 16, !45, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!98 = !{!99, !36, i64 16}
!99 = !{!"BakeImages", !45, i64 0, !45, i64 8, !36, i64 16}
!100 = !{!97, !45, i64 24}
!101 = distinct !{!101, !42, !102, !103}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = !{!99, !45, i64 0}
!105 = !{!106, !36, i64 8}
!106 = !{!"BakeImage", !45, i64 0, !36, i64 8, !36, i64 12, !107, i64 16}
!107 = !{!"long", !37, i64 0}
!108 = !{!106, !36, i64 12}
!109 = !{!110, !39, i64 196}
!110 = !{!"Render", !45, i64 0, !45, i64 8, !37, i64 16, !36, i64 92, !52, i64 96, !52, i64 98, !52, i64 100, !52, i64 102, !37, i64 104, !45, i64 112, !45, i64 120, !111, i64 128, !36, i64 144, !36, i64 148, !36, i64 152, !46, i64 156, !112, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !39, i64 544, !39, i64 548, !45, i64 552, !37, i64 560, !37, i64 816, !45, i64 1072, !37, i64 1080, !45, i64 1088, !45, i64 1096, !113, i64 1104, !120, i64 5088, !45, i64 5616, !36, i64 5624, !36, i64 5628, !111, i64 5632, !45, i64 5648, !45, i64 5656, !45, i64 5664, !45, i64 5672, !39, i64 5680, !45, i64 5688, !111, i64 5696, !39, i64 5712, !39, i64 5716, !36, i64 5720, !36, i64 5724, !36, i64 5728, !36, i64 5732, !36, i64 5736, !45, i64 5744, !111, i64 5752, !111, i64 5768, !111, i64 5784, !45, i64 5800, !111, i64 5808, !36, i64 5824, !45, i64 5832, !45, i64 5840, !45, i64 5848, !45, i64 5856, !45, i64 5864, !111, i64 5872, !45, i64 5888, !111, i64 5896, !111, i64 5912, !45, i64 5928, !45, i64 5936, !45, i64 5944, !45, i64 5952, !45, i64 5960, !45, i64 5968, !45, i64 5976, !45, i64 5984, !45, i64 5992, !45, i64 6000, !45, i64 6008, !45, i64 6016, !45, i64 6024, !45, i64 6032, !45, i64 6040, !45, i64 6048, !45, i64 6056, !121, i64 6064, !45, i64 6216, !45, i64 6224, !45, i64 6232}
!111 = !{!"ListBase", !45, i64 0, !45, i64 8}
!112 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!113 = !{!"RenderData", !114, i64 0, !45, i64 248, !45, i64 256, !117, i64 264, !118, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !39, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !52, i64 432, !52, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !52, i64 456, !52, i64 458, !52, i64 460, !52, i64 462, !52, i64 464, !52, i64 466, !36, i64 468, !52, i64 472, !52, i64 474, !52, i64 476, !52, i64 478, !52, i64 480, !52, i64 482, !36, i64 484, !36, i64 488, !52, i64 492, !52, i64 494, !36, i64 496, !36, i64 500, !52, i64 504, !52, i64 506, !52, i64 508, !52, i64 510, !52, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !52, i64 528, !52, i64 530, !52, i64 532, !52, i64 534, !52, i64 536, !52, i64 538, !52, i64 540, !52, i64 542, !112, i64 544, !112, i64 560, !46, i64 576, !111, i64 592, !52, i64 608, !52, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !36, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !52, i64 648, !52, i64 650, !52, i64 652, !52, i64 654, !52, i64 656, !52, i64 658, !39, i64 660, !39, i64 664, !52, i64 668, !52, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !36, i64 1704, !52, i64 1708, !52, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !52, i64 2524, !52, i64 2526, !39, i64 2528, !39, i64 2532, !52, i64 2536, !52, i64 2538, !39, i64 2540, !52, i64 2544, !52, i64 2546, !36, i64 2548, !52, i64 2552, !52, i64 2554, !52, i64 2556, !52, i64 2558, !39, i64 2560, !39, i64 2564, !45, i64 2568, !36, i64 2576, !39, i64 2580, !37, i64 2584, !119, i64 2616, !36, i64 3976, !36, i64 3980}
!114 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !52, i64 8, !52, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !115, i64 24, !116, i64 184}
!115 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !45, i64 144, !45, i64 152}
!116 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!117 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !52, i64 48, !52, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!118 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !45, i64 64}
!119 = !{!"BakeData", !114, i64 0, !37, i64 248, !52, i64 1272, !52, i64 1274, !52, i64 1276, !52, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!120 = !{!"World", !51, i64 0, !45, i64 120, !52, i64 128, !52, i64 130, !52, i64 132, !52, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !52, i64 200, !52, i64 202, !52, i64 204, !52, i64 206, !52, i64 208, !52, i64 210, !52, i64 212, !52, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !52, i64 264, !52, i64 266, !52, i64 268, !52, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !52, i64 288, !52, i64 290, !52, i64 292, !52, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !52, i64 324, !52, i64 326, !52, i64 328, !52, i64 330, !52, i64 332, !52, i64 334, !45, i64 336, !45, i64 344, !45, i64 352, !37, i64 360, !52, i64 504, !52, i64 506, !37, i64 508, !45, i64 512, !45, i64 520}
!121 = !{!"RenderStats", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !52, i64 28, !52, i64 30, !52, i64 32, !52, i64 34, !52, i64 36, !52, i64 38, !37, i64 40, !122, i64 48, !122, i64 56, !45, i64 64, !45, i64 72, !37, i64 80, !39, i64 144, !39, i64 148}
!122 = !{!"double", !37, i64 0}
!123 = distinct !{!123, !42}
!124 = !{!76, !52, i64 16}
!125 = !{!99, !45, i64 8}
!126 = !{!97, !45, i64 16}
!127 = !{!97, !36, i64 8}
!128 = distinct !{!128, !42}
!129 = distinct !{!129, !42}
!130 = distinct !{!130, !42}
!131 = !{!"bake_api.c:bake_differentials"}
!132 = !{!97, !39, i64 32}
!133 = !{!97, !39, i64 40}
!134 = !{!97, !39, i64 36}
!135 = !{!"bake_api.c:store_bake_pixel"}
!136 = !{!106, !107, i64 16}
!137 = !{!138, !39, i64 12}
!138 = !{!"TSpace", !37, i64 0, !39, i64 12}
!139 = distinct !{!139, !42}
!140 = distinct !{!140, !42}
!141 = !{!"bake_api.c:copy_v3_fl3"}
!142 = !{!"bake_api.c:normal_short_to_float_v3"}
!143 = !{!52, !52, i64 0}
!144 = !{!"bake_api.c:copy_v3_v3"}
!145 = !{!"bake_api.c:cross_v3_v3v3"}
!146 = !{!"bake_api.c:mul_v3_fl"}
!147 = !{!"bake_api.c:normal_uncompress"}
!148 = distinct !{!148, !42}
!149 = !{!"bake_api.c:normalize_v3"}
!150 = !{!"bake_api.c:normal_compress"}
!151 = distinct !{!151, !42}
!152 = distinct !{!152, !42}
!153 = distinct !{!153, !42}
!154 = !{!"bake_api.c:bake_uv"}
!155 = distinct !{!155, !42}
!156 = !{!"bake_api.c:sub_v3_v3v3"}
!157 = !{!"bake_api.c:mul_v3_v3fl"}
!158 = !{!"bake_api.c:add_v3_v3"}
!159 = !{!"bake_api.c:negate_v3"}
!160 = !{!"bake_api.c:dot_v3v3"}
!161 = !{!"bake_api.c:len_squared_v3v3"}
!162 = !{!"bake_api.c:calc_barycentric_from_point"}
!163 = !{!"bake_api.c:copy_v2_v2"}
!164 = !{!"bake_api.c:copy_v2_fl2"}
!165 = !{!"bake_api.c:normalize_v3_v3"}
!166 = !{!"bake_api.c:zero_v3"}
