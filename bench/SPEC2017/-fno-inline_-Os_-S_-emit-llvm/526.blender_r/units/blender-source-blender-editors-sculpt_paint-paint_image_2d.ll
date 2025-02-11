; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_image_2d.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_image_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImagePaintState = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, [2 x float], i32, i8, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ListBase = type { ptr, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.BrushPainter = type { ptr, ptr, [2 x float], [2 x float], i16, ptr, %struct.rctf, %struct.rctf, %struct.BrushPainterCache }
%struct.rctf = type { float, float, float, float }
%struct.BrushPainterCache = type { i8, i8, i8, i8, i8, i32, float, float, float, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ImagePaintRegion = type { i32, i32, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.BlurKernel = type { ptr, i32, i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"ImagePaintState\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Image requires 4 color channels to paint\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Packed MultiLayer files cannot be painted\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.paint_2d_bucket_fill = private unnamed_addr constant [21 x i8] c"paint_2d_bucket_fill\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bucket_fill_bitmap\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"brush_painter_mask\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"BrushPainter\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_2d_stroke(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 6
  %18 = select i1 %16, ptr null, ptr %17
  %19 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %13, ptr noundef %18, ptr noundef null) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %83, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 38
  %23 = load i32, ptr %22, align 8, !tbaa !14
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 12
  %30 = load i16, ptr %29, align 4, !tbaa !20
  %31 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 8
  %32 = icmp eq i8 %3, 0
  %33 = select i1 %32, i16 %30, i16 6
  store i16 %33, ptr %31, align 2, !tbaa !25
  %34 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  %36 = load float, ptr %2, align 4, !tbaa !27
  %37 = getelementptr inbounds float, ptr %2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !27
  %39 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %35, float noundef %36, float noundef %38, ptr noundef nonnull %8, ptr noundef nonnull %39) #14
  %40 = load ptr, ptr %34, align 8, !tbaa !26
  %41 = load float, ptr %1, align 4, !tbaa !27
  %42 = getelementptr inbounds float, ptr %1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !27
  %44 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %40, float noundef %41, float noundef %43, ptr noundef nonnull %9, ptr noundef nonnull %44) #14
  %45 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %46 = load <2 x i32>, ptr %45, align 8, !tbaa !28
  %47 = sitofp <2 x i32> %46 to <2 x float>
  %48 = load <2 x float>, ptr %8, align 8, !tbaa !27
  %49 = fmul <2 x float> %48, %47
  store <2 x float> %49, ptr %8, align 8, !tbaa !27
  %50 = load <2 x float>, ptr %9, align 8, !tbaa !27
  %51 = fmul <2 x float> %50, %47
  store <2 x float> %51, ptr %9, align 8, !tbaa !27
  %52 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 4
  %53 = load i16, ptr %52, align 8, !tbaa !29
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %56 = load ptr, ptr %34, align 8, !tbaa !26
  %57 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %56, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %10, ptr noundef nonnull %57) #14
  %58 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 3
  %59 = load <2 x float>, ptr %10, align 8, !tbaa !27
  %60 = load <2 x i32>, ptr %45, align 8, !tbaa !28
  %61 = sitofp <2 x i32> %60 to <2 x float>
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %58, align 8, !tbaa !27
  store i16 0, ptr %52, align 8, !tbaa !29
  %63 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %63, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %66

64:                                               ; preds = %21
  %65 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %65, ptr noundef nonnull %9) #15
  br label %66

66:                                               ; preds = %64, %55
  %67 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  %69 = icmp ne ptr %68, null
  %70 = zext i1 %69 to i8
  call fastcc void @brush_painter_2d_require_imbuf(ptr noundef nonnull %11, i8 noundef zeroext %70, i8 noundef zeroext %26) #15
  call fastcc void @brush_painter_2d_refresh_cache(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %2, float noundef %4, float noundef %5, float noundef %6) #15
  %71 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 8, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 8, i32 11
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 8, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !36
  %77 = call fastcc i32 @paint_2d_op(ptr noundef nonnull %0, ptr noundef %72, ptr noundef %74, ptr noundef %76, ptr noundef nonnull %9, ptr noundef nonnull %8) #15, !range !37
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 19
  store i8 1, ptr %80, align 8, !tbaa !38
  br label %81

81:                                               ; preds = %79, %66
  %82 = load ptr, ptr %12, align 8, !tbaa !12
  call void @BKE_image_release_ibuf(ptr noundef %82, ptr noundef nonnull %19, ptr noundef null) #14
  br label %83

83:                                               ; preds = %7, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  store float %3, ptr %0, align 4, !tbaa !27
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_2d_require_imbuf(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !40
  %8 = icmp eq i8 %7, %1
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @IMB_freeImBuf(ptr noundef nonnull %11) #14
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %19(ptr noundef nonnull %16) #14
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %25(ptr noundef nonnull %22) #14
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %31(ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %30, %26
  store ptr null, ptr %10, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 -1, ptr %33, align 8, !tbaa !43
  br label %34

34:                                               ; preds = %32, %3
  store i8 %1, ptr %6, align 8, !tbaa !40
  %35 = icmp ne i8 %1, 0
  %36 = icmp ne i8 %2, 0
  %37 = and i1 %35, %36
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 1
  store i8 %38, ptr %39, align 1, !tbaa !44
  %40 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 3, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 36
  %45 = load i8, ptr %44, align 2, !tbaa !46
  %46 = icmp eq i8 %45, 0
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %43, %34
  %49 = phi i8 [ 0, %34 ], [ %47, %43 ]
  %50 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 3
  store i8 %49, ptr %50, align 1, !tbaa !47
  %51 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 4, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = icmp ne ptr %52, null
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 4
  store i8 %54, ptr %55, align 4, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_2d_refresh_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 {
  %8 = load ptr, ptr %1, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = fmul float %6, 2.000000e+00
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %17 = and i32 %16, 2097152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 32
  %21 = load i32, ptr %20, align 8, !tbaa !71
  %22 = add i32 %21, -1
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 8
  %26 = load float, ptr %25, align 4, !tbaa !72
  %27 = fcmp une float %26, %4
  br label %28

28:                                               ; preds = %19, %24, %7
  %29 = phi i1 [ false, %7 ], [ %27, %24 ], [ true, %19 ]
  %30 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 3, i32 13
  %31 = load float, ptr %30, align 4, !tbaa !73
  %32 = fneg float %31
  %33 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 4, i32 13
  %34 = load float, ptr %33, align 4, !tbaa !74
  %35 = fneg float %34
  %36 = tail call ptr @BKE_image_pool_new() #14
  %37 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 5
  store ptr %36, ptr %37, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !47
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 3, i32 20
  %43 = load i8, ptr %42, align 4, !tbaa !76
  switch i8 %43, label %48 [
    i8 0, label %44
    i8 4, label %53
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 73, i32 8
  %46 = load float, ptr %45, align 4, !tbaa !77
  %47 = fsub float %46, %31
  br label %53

48:                                               ; preds = %41
  %49 = load i32, ptr %15, align 8, !tbaa !70
  %50 = and i32 %49, 256
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %51, i1 true, i1 %29
  br label %53

53:                                               ; preds = %48, %41, %44
  %54 = phi float [ %47, %44 ], [ %32, %41 ], [ %32, %48 ]
  %55 = phi i1 [ true, %44 ], [ true, %41 ], [ %52, %48 ]
  %56 = phi i1 [ false, %44 ], [ true, %41 ], [ false, %48 ]
  %57 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 3
  %58 = zext i8 %43 to i32
  %59 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 6
  tail call fastcc void @brush_painter_2d_tex_mapping(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %57, ptr noundef %2, ptr noundef %3, i32 noundef %58, ptr noundef nonnull %59) #15
  br label %60

60:                                               ; preds = %53, %28
  %61 = phi float [ %54, %53 ], [ %32, %28 ]
  %62 = phi i1 [ %55, %53 ], [ true, %28 ]
  %63 = phi i1 [ %56, %53 ], [ false, %28 ]
  %64 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 4
  %65 = load i8, ptr %64, align 4, !tbaa !49
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %113, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 4, i32 20
  %69 = load i8, ptr %68, align 4, !tbaa !79
  switch i8 %69, label %74 [
    i8 0, label %70
    i8 4, label %79
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 73, i32 8
  %72 = load float, ptr %71, align 4, !tbaa !77
  %73 = fsub float %72, %34
  br label %79

74:                                               ; preds = %67
  %75 = load i32, ptr %15, align 8, !tbaa !70
  %76 = and i32 %75, 256
  %77 = icmp ne i32 %76, 0
  %78 = icmp eq i32 %76, 0
  br label %79

79:                                               ; preds = %74, %67, %70
  %80 = phi float [ %73, %70 ], [ %35, %67 ], [ %35, %74 ]
  %81 = phi i1 [ false, %70 ], [ true, %67 ], [ %78, %74 ]
  %82 = phi i1 [ true, %70 ], [ true, %67 ], [ %77, %74 ]
  %83 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 17
  %84 = load i32, ptr %83, align 4, !tbaa !80
  %85 = icmp ne i32 %84, 0
  %86 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !81
  %88 = icmp eq i32 %87, %14
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 7
  %91 = load float, ptr %90, align 8, !tbaa !82
  %92 = fcmp une float %80, %91
  %93 = select i1 %85, i1 true, i1 %81
  %94 = or i1 %93, %92
  br i1 %94, label %95, label %113

95:                                               ; preds = %89, %79
  %96 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 12
  %97 = load ptr, ptr %96, align 8, !tbaa !83
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %100(ptr noundef nonnull %97) #14
  store ptr null, ptr %96, align 8, !tbaa !83
  %101 = load i8, ptr %68, align 4, !tbaa !79
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i8 [ %101, %99 ], [ %69, %95 ]
  %104 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 3
  %105 = zext i8 %103 to i32
  %106 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 7
  tail call fastcc void @brush_painter_2d_tex_mapping(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %104, ptr noundef %2, ptr noundef %3, i32 noundef %105, ptr noundef nonnull %106) #15
  %107 = select i1 %85, i1 true, i1 %82
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  tail call fastcc void @brush_painter_mask_imbuf_partial_update(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %14) #15
  br label %111

109:                                              ; preds = %102
  %110 = tail call fastcc ptr @brush_painter_mask_ibuf_new(ptr noundef nonnull %1, i32 noundef %14) #15
  store ptr %110, ptr %96, align 8, !tbaa !83
  br label %111

111:                                              ; preds = %109, %108
  %112 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 7
  store float %80, ptr %112, align 8, !tbaa !82
  br label %113

113:                                              ; preds = %111, %89, %60
  %114 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 5
  %115 = load i32, ptr %114, align 8, !tbaa !81
  %116 = icmp eq i32 %115, %14
  br i1 %116, label %127, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 11
  %119 = load ptr, ptr %118, align 8, !tbaa !84
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %122(ptr noundef nonnull %119) #14
  store ptr null, ptr %118, align 8, !tbaa !84
  br label %123

123:                                              ; preds = %117, %121
  %124 = tail call fastcc ptr @brush_painter_curve_mask_new(ptr noundef nonnull %1, i32 noundef %14, float noundef %6) #15
  store ptr %124, ptr %118, align 8, !tbaa !84
  %125 = load i32, ptr %114, align 8, !tbaa !81
  %126 = icmp eq i32 %125, %14
  br i1 %126, label %127, label %133

127:                                              ; preds = %113, %123
  %128 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 6
  %129 = load float, ptr %128, align 4, !tbaa !85
  %130 = fcmp une float %61, %129
  %131 = or i1 %63, %130
  %132 = select i1 %131, i1 true, i1 %29
  br i1 %132, label %133, label %145

133:                                              ; preds = %127, %123
  %134 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !86
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call void @IMB_freeImBuf(ptr noundef nonnull %135) #14
  store ptr null, ptr %134, align 8, !tbaa !86
  br label %138

138:                                              ; preds = %137, %133
  br i1 %62, label %140, label %139

139:                                              ; preds = %138
  tail call fastcc void @brush_painter_imbuf_partial_update(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %14) #15
  br label %142

140:                                              ; preds = %138
  %141 = tail call fastcc ptr @brush_painter_imbuf_new(ptr noundef nonnull %1, i32 noundef %14, float noundef %4, float noundef %5) #15
  store ptr %141, ptr %134, align 8, !tbaa !86
  br label %142

142:                                              ; preds = %140, %139
  store i32 %14, ptr %114, align 8, !tbaa !81
  %143 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 6
  store float %61, ptr %143, align 4, !tbaa !85
  %144 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 8, i32 8
  store float %4, ptr %144, align 4, !tbaa !72
  br label %157

145:                                              ; preds = %127
  br i1 %62, label %157, label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.BrushPainter, ptr %1, i64 0, i32 2
  %148 = load <2 x float>, ptr %147, align 8, !tbaa !27
  %149 = fptosi <2 x float> %148 to <2 x i32>
  %150 = load <2 x float>, ptr %2, align 4, !tbaa !27
  %151 = fptosi <2 x float> %150 to <2 x i32>
  %152 = icmp ne <2 x i32> %149, %151
  %153 = extractelement <2 x i1> %152, i64 0
  %154 = extractelement <2 x i1> %152, i64 1
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  tail call fastcc void @brush_painter_imbuf_partial_update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %14) #15
  br label %157

157:                                              ; preds = %156, %146, %145, %142
  %158 = load ptr, ptr %37, align 8, !tbaa !75
  tail call void @BKE_image_pool_free(ptr noundef %158) #14
  store ptr null, ptr %37, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @paint_2d_op(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca [4 x %struct.ImagePaintRegion], align 16
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #13
  %17 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.Brush, ptr %18, i64 0, i32 16
  %20 = load i32, ptr %19, align 8, !tbaa !70
  %21 = trunc i32 %20 to i16
  %22 = and i16 %21, 2
  %23 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !25
  %25 = getelementptr inbounds %struct.Brush, ptr %18, i64 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %26 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = tail call float @BKE_brush_alpha_get(ptr noundef %27, ptr noundef %18) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call fastcc void @paint_2d_convert_brushco(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %9) #15
  %29 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 7
  %30 = load i16, ptr %29, align 8, !tbaa !88
  switch i16 %30, label %62 [
    i16 1, label %31
    i16 2, label %34
    i16 3, label %47
  ]

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !89
  call fastcc void @paint_2d_lift_soften(ptr noundef nonnull %0, ptr noundef %33, ptr noundef %1, ptr noundef nonnull %9, i16 noundef signext %22) #15
  br label %62

34:                                               ; preds = %6
  %35 = load float, ptr %4, align 4, !tbaa !27
  %36 = load float, ptr %5, align 4, !tbaa !27
  %37 = fcmp oeq float %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds float, ptr %4, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !27
  %41 = getelementptr inbounds float, ptr %5, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !27
  %43 = fcmp oeq float %40, %42
  br i1 %43, label %164, label %44

44:                                               ; preds = %38, %34
  call fastcc void @paint_2d_convert_brushco(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %10) #15
  %45 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !89
  call fastcc void @paint_2d_lift_smear(ptr noundef %46, ptr noundef %1, ptr noundef nonnull %10) #15
  br label %62

47:                                               ; preds = %6
  %48 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  %54 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 2
  %55 = load <2 x float>, ptr %5, align 4, !tbaa !27
  %56 = load <2 x float>, ptr %25, align 4, !tbaa !27
  %57 = load <2 x i32>, ptr %54, align 8, !tbaa !28
  %58 = sitofp <2 x i32> %57 to <2 x float>
  %59 = fneg <2 x float> %56
  %60 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> %58, <2 x float> %55)
  store <2 x float> %60, ptr %8, align 8, !tbaa !27
  call fastcc void @paint_2d_convert_brushco(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %11) #15
  %61 = call fastcc ptr @paint_2d_lift_clone(ptr noundef nonnull %49, ptr noundef %1, ptr noundef nonnull %11) #15
  br label %62

62:                                               ; preds = %6, %44, %51, %47, %31
  %63 = phi ptr [ null, %31 ], [ null, %44 ], [ %61, %51 ], [ null, %47 ], [ null, %6 ]
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, ptr %1, ptr %63
  %66 = icmp eq i16 %22, 0
  %67 = load i32, ptr %9, align 4, !tbaa !28
  %68 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  %69 = load i32, ptr %68, align 4, !tbaa !28
  %70 = getelementptr inbounds %struct.ImBuf, ptr %65, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !91
  %72 = getelementptr inbounds %struct.ImBuf, ptr %65, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !92
  call fastcc void @paint_2d_set_region(ptr noundef nonnull %7, i32 noundef %67, i32 noundef %69, i32 noundef 0, i32 noundef 0, i32 noundef %71, i32 noundef %73) #15
  br i1 %66, label %79, label %74

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !89
  %77 = call fastcc i32 @paint_2d_torus_split_region(ptr noundef nonnull %7, ptr noundef %76, ptr noundef %65) #15
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %162

79:                                               ; preds = %62, %74
  %80 = phi i32 [ %77, %74 ], [ 1, %62 ]
  %81 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 9
  %82 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %83 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 14
  %84 = sext i16 %24 to i32
  %85 = zext nneg i32 %80 to i64
  br label %86

86:                                               ; preds = %79, %159
  %87 = phi i64 [ 0, %79 ], [ %160, %159 ]
  %88 = load ptr, ptr %81, align 8, !tbaa !12
  %89 = load ptr, ptr %82, align 8, !tbaa !89
  %90 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87
  %91 = load i32, ptr %90, align 8, !tbaa !93
  %92 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !95
  %94 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87, i32 4
  %95 = load i32, ptr %94, align 8, !tbaa !96
  %96 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !97
  call void @ED_imapaint_dirty_region(ptr noundef %88, ptr noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #14
  %98 = load i8, ptr %83, align 8, !tbaa !98
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %153, label %100

100:                                              ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #13
  %101 = load ptr, ptr %82, align 8, !tbaa !89
  call void @imapaint_region_tiles(ptr noundef %101, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #14
  %102 = call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 0) #14
  %103 = load i32, ptr %13, align 4, !tbaa !28
  %104 = load i32, ptr %15, align 4, !tbaa !28
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %152, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ImBuf, ptr %102, i64 0, i32 9
  %108 = getelementptr inbounds %struct.ImBuf, ptr %102, i64 0, i32 8
  %109 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87, i32 2
  %110 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87, i32 3
  %111 = load i32, ptr %14, align 4, !tbaa !28
  br label %112

112:                                              ; preds = %106, %147
  %113 = phi i32 [ %104, %106 ], [ %148, %147 ]
  %114 = phi i32 [ %111, %106 ], [ %149, %147 ]
  %115 = phi i32 [ %103, %106 ], [ %150, %147 ]
  %116 = load i32, ptr %12, align 4, !tbaa !28
  %117 = icmp sgt i32 %116, %114
  br i1 %117, label %147, label %118

118:                                              ; preds = %112
  %119 = shl nsw i32 %115, 6
  %120 = sub nsw i32 %93, %119
  br label %121

121:                                              ; preds = %118, %121
  %122 = phi i32 [ %116, %118 ], [ %142, %121 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %123 = shl nsw i32 %122, 6
  %124 = sub nsw i32 %91, %123
  %125 = load ptr, ptr %82, align 8, !tbaa !89
  %126 = getelementptr inbounds %struct.ImBuf, ptr %125, i64 0, i32 9
  %127 = load ptr, ptr %126, align 8, !tbaa !33
  %128 = icmp eq ptr %127, null
  %129 = load ptr, ptr %81, align 8, !tbaa !12
  %130 = call ptr @image_undo_find_tile(ptr noundef %129, ptr noundef nonnull %125, i32 noundef %122, i32 noundef %115, ptr noundef nonnull %16, i8 noundef zeroext 0) #14
  %131 = select i1 %128, ptr %108, ptr %107
  store ptr %130, ptr %131, align 8, !tbaa !41
  %132 = load ptr, ptr %82, align 8, !tbaa !89
  %133 = load ptr, ptr %16, align 8, !tbaa !41
  %134 = load i32, ptr %109, align 8, !tbaa !99
  %135 = load i32, ptr %110, align 4, !tbaa !100
  %136 = load ptr, ptr %17, align 8, !tbaa !19
  %137 = getelementptr inbounds %struct.Brush, ptr %136, i64 0, i32 16
  %138 = load i32, ptr %137, align 8, !tbaa !70
  %139 = lshr i32 %138, 13
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  call void @IMB_rectblend(ptr noundef %132, ptr noundef nonnull %102, ptr noundef %65, ptr noundef %133, ptr noundef %2, ptr noundef %3, float noundef %28, i32 noundef %91, i32 noundef %93, i32 noundef %124, i32 noundef %120, i32 noundef %134, i32 noundef %135, i32 noundef %95, i32 noundef %97, i32 noundef %84, i8 noundef zeroext %141) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  %142 = add nsw i32 %122, 1
  %143 = load i32, ptr %14, align 4, !tbaa !28
  %144 = icmp slt i32 %122, %143
  br i1 %144, label %121, label %145, !llvm.loop !101

145:                                              ; preds = %121
  %146 = load i32, ptr %15, align 4, !tbaa !28
  br label %147

147:                                              ; preds = %145, %112
  %148 = phi i32 [ %146, %145 ], [ %113, %112 ]
  %149 = phi i32 [ %143, %145 ], [ %114, %112 ]
  %150 = add nsw i32 %115, 1
  %151 = icmp slt i32 %115, %148
  br i1 %151, label %112, label %152, !llvm.loop !103

152:                                              ; preds = %147, %100
  call void @IMB_freeImBuf(ptr noundef %102) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  br label %159

153:                                              ; preds = %86
  %154 = load ptr, ptr %82, align 8, !tbaa !89
  %155 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !99
  %157 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %7, i64 0, i64 %87, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !100
  call void @IMB_rectblend(ptr noundef %154, ptr noundef %154, ptr noundef %65, ptr noundef null, ptr noundef %2, ptr noundef %3, float noundef %28, i32 noundef %91, i32 noundef %93, i32 noundef %91, i32 noundef %93, i32 noundef %156, i32 noundef %158, i32 noundef %95, i32 noundef %97, i32 noundef %84, i8 noundef zeroext 0) #14
  br label %159

159:                                              ; preds = %152, %153
  %160 = add nuw nsw i64 %87, 1
  %161 = icmp eq i64 %160, %85
  br i1 %161, label %162, label %86, !llvm.loop !104

162:                                              ; preds = %159, %74
  br i1 %64, label %164, label %163

163:                                              ; preds = %162
  call void @IMB_freeImBuf(ptr noundef nonnull %63) #14
  br label %164

164:                                              ; preds = %162, %163, %38
  %165 = phi i32 [ 0, %38 ], [ 1, %163 ], [ 1, %162 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #13
  ret i32 %165
}

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @paint_2d_new_stroke(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %8 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %7) #14
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %10 = tail call ptr %9(i64 noundef 152, ptr noundef nonnull @.str) #14
  %11 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %12 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !13
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 3
  store ptr %4, ptr %16, align 8, !tbaa !87
  %17 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %18 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 6
  store ptr %8, ptr %19, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 36
  %21 = load i8, ptr %20, align 2, !tbaa !46
  %22 = zext i8 %21 to i16
  %23 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 7
  store i16 %22, ptr %23, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 12
  %25 = load i16, ptr %24, align 4, !tbaa !20
  %26 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 8
  store i16 %25, ptr %26, align 2, !tbaa !25
  %27 = load ptr, ptr %12, align 8, !tbaa !13
  %28 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 9
  store ptr %29, ptr %30, align 8, !tbaa !12
  %31 = tail call fastcc i32 @paint_2d_canvas_set(ptr noundef %10, ptr noundef %29) #15, !range !37
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !113
  tail call void @BKE_report(ptr noundef %39, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !115
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !113
  tail call void @BKE_report(ptr noundef %46, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %47

47:                                               ; preds = %44, %40
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %48(ptr noundef nonnull %10) #14
  br label %61

49:                                               ; preds = %3
  %50 = load i8, ptr %20, align 2, !tbaa !46
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = tail call ptr @paint_new_blur_kernel(ptr noundef nonnull %8, i8 noundef zeroext 0) #14
  %54 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 20
  store ptr %53, ptr %54, align 8, !tbaa !116
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr %19, align 8, !tbaa !19
  tail call void @paint_brush_init_tex(ptr noundef %56) #14
  %57 = load ptr, ptr %19, align 8, !tbaa !19
  %58 = icmp eq i32 %2, 1
  %59 = zext i1 %58 to i8
  %60 = tail call fastcc ptr @brush_painter_2d_new(ptr noundef nonnull %4, ptr noundef %57, i8 noundef zeroext %59) #15
  store ptr %60, ptr %10, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %55, %47
  %62 = phi ptr [ %10, %55 ], [ null, %47 ]
  ret ptr %62
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @paint_2d_canvas_set(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  %7 = select i1 %5, ptr null, ptr %6
  %8 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %1, ptr noundef %7, ptr noundef null) #14
  %9 = icmp eq ptr %1, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %20 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 12
  store ptr %19, ptr %20, align 8, !tbaa !115
  br label %91

21:                                               ; preds = %14, %10
  %22 = icmp eq ptr %8, null
  br i1 %22, label %91, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !120
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %29 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 13
  store ptr %28, ptr %29, align 8, !tbaa !112
  br label %91

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !121
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !33
  %37 = icmp eq ptr %36, null
  br i1 %37, label %91, label %38

38:                                               ; preds = %30, %34
  %39 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 9
  store ptr %1, ptr %39, align 8, !tbaa !12
  %40 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  store ptr %8, ptr %40, align 8, !tbaa !89
  %41 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 7
  %42 = load i16, ptr %41, align 8, !tbaa !88
  %43 = icmp eq i16 %42, 3
  br i1 %43, label %44, label %86

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = getelementptr inbounds %struct.Brush, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !122
  %49 = load ptr, ptr %3, align 8, !tbaa !13
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.SpaceImage, ptr %49, i64 0, i32 6
  %52 = select i1 %50, ptr null, ptr %51
  %53 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %48, ptr noundef %52, ptr noundef null) #14
  %54 = icmp ne ptr %48, null
  %55 = icmp ne ptr %53, null
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !121
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !33
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %44
  tail call void @BKE_image_release_ibuf(ptr noundef %48, ptr noundef %53, ptr noundef null) #14
  %66 = load ptr, ptr %39, align 8, !tbaa !12
  %67 = load ptr, ptr %40, align 8, !tbaa !89
  tail call void @BKE_image_release_ibuf(ptr noundef %66, ptr noundef %67, ptr noundef null) #14
  br label %91

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 11
  store ptr %53, ptr %69, align 8, !tbaa !90
  %70 = load ptr, ptr %40, align 8, !tbaa !89
  %71 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !33
  %73 = icmp eq ptr %72, null
  br i1 %73, label %85, label %86

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 11
  store ptr %53, ptr %75, align 8, !tbaa !90
  %76 = load ptr, ptr %40, align 8, !tbaa !89
  %77 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 9
  %78 = load ptr, ptr %77, align 8, !tbaa !33
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !33
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  tail call void @IMB_float_from_rect(ptr noundef nonnull %53) #14
  br label %86

85:                                               ; preds = %68
  tail call void @IMB_rect_from_float(ptr noundef nonnull %53) #14
  br label %86

86:                                               ; preds = %68, %74, %80, %84, %85, %38
  %87 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !19
  %89 = tail call zeroext i8 @paint_use_opacity_masking(ptr noundef %88) #14
  %90 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 14
  store i8 %89, ptr %90, align 8, !tbaa !98
  br label %91

91:                                               ; preds = %34, %21, %2, %86, %65, %27, %18
  %92 = phi i32 [ 0, %18 ], [ 0, %27 ], [ 1, %86 ], [ 0, %65 ], [ 0, %2 ], [ 0, %21 ], [ 0, %34 ]
  ret i32 %92
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @paint_new_blur_kernel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paint_brush_init_tex(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @brush_painter_2d_new(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %5 = tail call ptr %4(i64 noundef 152, ptr noundef nonnull @.str.5) #14
  %6 = getelementptr inbounds %struct.BrushPainter, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !39
  store ptr %0, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.BrushPainter, ptr %5, i64 0, i32 4
  store i16 1, ptr %7, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.BrushPainter, ptr %5, i64 0, i32 8, i32 5
  store i32 -1, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.BrushPainter, ptr %5, i64 0, i32 8, i32 2
  store i8 %2, ptr %9, align 2, !tbaa !123
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_2d_redraw(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 19
  %5 = load i8, ptr %4, align 8, !tbaa !38
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 6
  %14 = select i1 %12, ptr null, ptr %13
  %15 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %9, ptr noundef %14, ptr noundef null) #14
  %16 = load ptr, ptr %10, align 8, !tbaa !13
  %17 = load ptr, ptr %8, align 8, !tbaa !12
  tail call void @imapaint_image_update(ptr noundef %16, ptr noundef %17, ptr noundef %15, i16 noundef signext 0) #14
  tail call void @ED_imapaint_clear_partial_redraw() #14
  %18 = load ptr, ptr %8, align 8, !tbaa !12
  tail call void @BKE_image_release_ibuf(ptr noundef %18, ptr noundef %15, ptr noundef null) #14
  store i8 0, ptr %4, align 8, !tbaa !38
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %39, label %22

20:                                               ; preds = %3
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %20, %7
  %23 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.SpaceImage, ptr %28, i64 0, i32 21
  %32 = load i16, ptr %31, align 2, !tbaa !124
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  tail call void @GPU_free_image(ptr noundef nonnull %24) #14
  %35 = load ptr, ptr %23, align 8, !tbaa !12
  br label %36

36:                                               ; preds = %34, %30, %22
  %37 = phi ptr [ %35, %34 ], [ %24, %30 ], [ null, %22 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %37) #14
  %38 = load ptr, ptr %23, align 8, !tbaa !12
  tail call void @DAG_id_tag_update(ptr noundef %38, i16 noundef signext 0) #14
  br label %50

39:                                               ; preds = %7
  %40 = load ptr, ptr %10, align 8, !tbaa !13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.SpaceImage, ptr %40, i64 0, i32 21
  %44 = load i16, ptr %43, align 2, !tbaa !124
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %39
  %47 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %47) #14
  br label %50

48:                                               ; preds = %42
  %49 = load ptr, ptr %8, align 8, !tbaa !12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772167, ptr noundef %49) #14
  br label %50

50:                                               ; preds = %20, %36, %48, %46
  ret void
}

; Function Attrs: optsize
declare void @imapaint_image_update(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_imapaint_clear_partial_redraw() local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_2d_stroke_done(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @paint_2d_canvas_free(ptr noundef %0) #15
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @brush_painter_2d_free(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  tail call void @paint_brush_exit_tex(ptr noundef %4) #14
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %5(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_2d_canvas_free(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  tail call void @BKE_image_release_ibuf(ptr noundef %3, ptr noundef %5, ptr noundef null) #14
  %6 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  tail call void @BKE_image_release_ibuf(ptr noundef %9, ptr noundef %11, ptr noundef null) #14
  %12 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  tail call void @paint_delete_blur_kernel(ptr noundef nonnull %13) #14
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %17 = load ptr, ptr %12, align 8, !tbaa !116
  tail call void %16(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %15, %1
  tail call void @image_undo_remove_masks() #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_2d_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %16(ptr noundef nonnull %13) #14
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %22(ptr noundef nonnull %19) #14
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %28(ptr noundef nonnull %25) #14
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %30(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: optsize
declare void @paint_brush_exit_tex(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_2d_bucket_fill(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca i32, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca i32, align 4
  %12 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %15 = icmp ne ptr %2, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 26
  %18 = load float, ptr %17, align 8, !tbaa !126
  br label %19

19:                                               ; preds = %5, %16
  %20 = phi float [ %18, %16 ], [ 1.000000e+00, %5 ]
  %21 = icmp eq ptr %14, null
  br i1 %21, label %211, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 6
  %24 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %14, ptr noundef nonnull %23, ptr noundef null) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %211, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !33
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  call fastcc void @linearrgb_to_srgb_uchar3(ptr noundef nonnull %6, ptr noundef %1) #15
  %31 = fmul float %20, 2.550000e+02
  %32 = fptoui float %31 to i8
  %33 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 %32, ptr %33, align 1, !tbaa !127
  br label %36

34:                                               ; preds = %26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #15
  %35 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float %20, ptr %35, align 4, !tbaa !27
  br label %36

36:                                               ; preds = %34, %30
  %37 = icmp ne ptr %3, null
  %38 = and i1 %15, %37
  br i1 %38, label %101, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !92
  tail call void @ED_imapaint_dirty_region(ptr noundef nonnull %14, ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef %41, i32 noundef %43) #14
  %44 = load i32, ptr %40, align 8, !tbaa !91
  %45 = icmp sgt i32 %44, 0
  br i1 %29, label %49, label %46

46:                                               ; preds = %39
  br i1 %45, label %47, label %210

47:                                               ; preds = %46
  %48 = load i32, ptr %42, align 4, !tbaa !92
  br label %53

49:                                               ; preds = %39
  br i1 %45, label %50, label %210

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %52 = load i32, ptr %42, align 4, !tbaa !92
  br label %77

53:                                               ; preds = %47, %72
  %54 = phi i32 [ %73, %72 ], [ %44, %47 ]
  %55 = phi i32 [ %74, %72 ], [ %48, %47 ]
  %56 = phi i32 [ %75, %72 ], [ 0, %47 ]
  %57 = icmp sgt i32 %55, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53, %58
  %59 = phi i32 [ %67, %58 ], [ 0, %53 ]
  %60 = load ptr, ptr %27, align 8, !tbaa !33
  %61 = load i32, ptr %40, align 8, !tbaa !91
  %62 = mul nsw i32 %61, %59
  %63 = add nsw i32 %62, %56
  %64 = shl nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr %60, i64 %65
  call fastcc void @blend_color_mix_float(ptr noundef %66, ptr noundef %66, ptr noundef nonnull %7) #15
  %67 = add nuw nsw i32 %59, 1
  %68 = load i32, ptr %42, align 4, !tbaa !92
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %58, label %70, !llvm.loop !128

70:                                               ; preds = %58
  %71 = load i32, ptr %40, align 8, !tbaa !91
  br label %72

72:                                               ; preds = %70, %53
  %73 = phi i32 [ %71, %70 ], [ %54, %53 ]
  %74 = phi i32 [ %68, %70 ], [ %55, %53 ]
  %75 = add nuw nsw i32 %56, 1
  %76 = icmp slt i32 %75, %73
  br i1 %76, label %53, label %210, !llvm.loop !129

77:                                               ; preds = %50, %95
  %78 = phi i32 [ %44, %50 ], [ %96, %95 ]
  %79 = phi i32 [ %52, %50 ], [ %97, %95 ]
  %80 = phi i64 [ 0, %50 ], [ %98, %95 ]
  %81 = icmp sgt i32 %79, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77, %82
  %83 = phi i32 [ %90, %82 ], [ 0, %77 ]
  %84 = load ptr, ptr %51, align 8, !tbaa !121
  %85 = load i32, ptr %40, align 8, !tbaa !91
  %86 = mul nsw i32 %85, %83
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, ptr %84, i64 %87
  %89 = getelementptr inbounds i32, ptr %88, i64 %80
  call fastcc void @blend_color_mix_byte(ptr noundef %89, ptr noundef %89, ptr noundef nonnull %6) #15
  %90 = add nuw nsw i32 %83, 1
  %91 = load i32, ptr %42, align 4, !tbaa !92
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %82, label %93, !llvm.loop !130

93:                                               ; preds = %82
  %94 = load i32, ptr %40, align 8, !tbaa !91
  br label %95

95:                                               ; preds = %93, %77
  %96 = phi i32 [ %94, %93 ], [ %78, %77 ]
  %97 = phi i32 [ %91, %93 ], [ %79, %77 ]
  %98 = add nuw nsw i64 %80, 1
  %99 = sext i32 %96 to i64
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %77, label %210, !llvm.loop !131

101:                                              ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %102 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %104 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %105 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 50
  %106 = load float, ptr %105, align 4, !tbaa !132
  %107 = fmul float %106, %106
  %108 = getelementptr inbounds %struct.ImagePaintState, ptr %4, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !26
  %110 = load float, ptr %3, align 4, !tbaa !27
  %111 = getelementptr inbounds float, ptr %3, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !27
  %113 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %109, float noundef %110, float noundef %112, ptr noundef nonnull %9, ptr noundef nonnull %113) #14
  %114 = load float, ptr %9, align 4, !tbaa !27
  %115 = load i32, ptr %102, align 8, !tbaa !91
  %116 = sitofp i32 %115 to float
  %117 = fmul float %114, %116
  %118 = fptosi float %117 to i32
  %119 = load float, ptr %113, align 4, !tbaa !27
  %120 = load i32, ptr %104, align 4, !tbaa !92
  %121 = sitofp i32 %120 to float
  %122 = fmul float %119, %121
  %123 = fptosi float %122 to i32
  %124 = icmp sle i32 %115, %118
  %125 = icmp slt i32 %118, 0
  %126 = or i1 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %101
  %128 = icmp slt i32 %120, %123
  %129 = icmp slt i32 %123, 0
  %130 = or i1 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %101
  call void @BKE_image_release_ibuf(ptr noundef nonnull %14, ptr noundef nonnull %24, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %211

132:                                              ; preds = %127
  call void @ED_imapaint_dirty_region(ptr noundef nonnull %14, ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef %115, i32 noundef %120) #14
  %133 = call ptr @BLI_stack_new(i64 noundef 4, ptr noundef nonnull @__func__.paint_2d_bucket_fill) #14
  %134 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %135 = load i32, ptr %102, align 8, !tbaa !91
  %136 = load i32, ptr %104, align 4, !tbaa !92
  %137 = mul nsw i32 %136, %135
  %138 = ashr i32 %137, 5
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = shl nsw i64 %140, 2
  %142 = call ptr %134(i64 noundef %141, ptr noundef nonnull @.str.3) #14
  %143 = load i32, ptr %102, align 8, !tbaa !91
  %144 = mul nsw i32 %143, %123
  %145 = add nsw i32 %144, %118
  store i32 %145, ptr %8, align 4, !tbaa !28
  br i1 %29, label %151, label %146

146:                                              ; preds = %132
  %147 = load ptr, ptr %27, align 8, !tbaa !33
  %148 = shl nsw i32 %145, 2
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, ptr %147, i64 %149
  call fastcc void @copy_v4_v4(ptr noundef nonnull %10, ptr noundef %150) #15
  br label %157

151:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  %152 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !121
  %154 = sext i32 %145 to i64
  %155 = getelementptr inbounds i32, ptr %153, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !28
  store i32 %156, ptr %11, align 4, !tbaa !28
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  br label %157

157:                                              ; preds = %151, %146
  call void @BLI_stack_push(ptr noundef %133, ptr noundef nonnull %8) #14
  %158 = load i32, ptr %8, align 4, !tbaa !28
  %159 = and i32 %158, 31
  %160 = shl nuw i32 1, %159
  %161 = ashr i32 %158, 5
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %142, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !28
  %165 = or i32 %160, %164
  store i32 %165, ptr %163, align 4, !tbaa !28
  %166 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %133) #14
  %167 = icmp eq i8 %166, 0
  br i1 %29, label %171, label %168

168:                                              ; preds = %157
  br i1 %167, label %169, label %208

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 12
  br label %175

171:                                              ; preds = %157
  br i1 %167, label %172, label %208

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %174 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 12
  br label %192

175:                                              ; preds = %169, %175
  call void @BLI_stack_pop(ptr noundef %133, ptr noundef nonnull %8) #14
  %176 = load ptr, ptr %27, align 8, !tbaa !33
  %177 = load i32, ptr %8, align 4, !tbaa !28
  %178 = shl nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, ptr %176, i64 %179
  %181 = load i16, ptr %170, align 4, !tbaa !20
  %182 = sext i16 %181 to i32
  call void @IMB_blend_color_float(ptr noundef %180, ptr noundef %180, ptr noundef nonnull %7, i32 noundef %182) #14
  %183 = load i32, ptr %8, align 4, !tbaa !28
  %184 = srem i32 %183, %103
  %185 = sdiv i32 %183, %103
  %186 = add nsw i32 %184, -1
  %187 = add nsw i32 %185, -1
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %186, i32 noundef %187, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %186, i32 noundef %185, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  %188 = add nsw i32 %185, 1
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %186, i32 noundef %188, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %184, i32 noundef %188, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %184, i32 noundef %187, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  %189 = add nsw i32 %184, 1
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %189, i32 noundef %187, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %189, i32 noundef %185, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %189, i32 noundef %188, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  %190 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %133) #14
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %175, label %208, !llvm.loop !133

192:                                              ; preds = %172, %192
  call void @BLI_stack_pop(ptr noundef %133, ptr noundef nonnull %8) #14
  %193 = load ptr, ptr %173, align 8, !tbaa !121
  %194 = load i32, ptr %8, align 4, !tbaa !28
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, ptr %193, i64 %195
  %197 = load i16, ptr %174, align 4, !tbaa !20
  %198 = sext i16 %197 to i32
  call void @IMB_blend_color_byte(ptr noundef %196, ptr noundef %196, ptr noundef nonnull %6, i32 noundef %198) #14
  %199 = load i32, ptr %8, align 4, !tbaa !28
  %200 = srem i32 %199, %103
  %201 = sdiv i32 %199, %103
  %202 = add nsw i32 %200, -1
  %203 = add nsw i32 %201, -1
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %202, i32 noundef %203, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %202, i32 noundef %201, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  %204 = add nsw i32 %201, 1
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %202, i32 noundef %204, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %200, i32 noundef %204, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %200, i32 noundef %203, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  %205 = add nsw i32 %200, 1
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %205, i32 noundef %203, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %205, i32 noundef %201, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %205, i32 noundef %204, ptr noundef nonnull %24, ptr noundef %133, ptr noundef %142, ptr noundef nonnull %10, float noundef %107) #15
  %206 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %133) #14
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %192, label %208, !llvm.loop !134

208:                                              ; preds = %175, %192, %168, %171
  %209 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %209(ptr noundef %142) #14
  call void @BLI_stack_free(ptr noundef %133) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %210

210:                                              ; preds = %72, %95, %46, %49, %208
  call void @imapaint_image_update(ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %24, i16 noundef signext 0) #14
  call void @ED_imapaint_clear_partial_redraw() #14
  call void @BKE_image_release_ibuf(ptr noundef nonnull %14, ptr noundef nonnull %24, ptr noundef null) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %14) #14
  br label %211

211:                                              ; preds = %131, %22, %19, %210
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_uchar3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #15
  %4 = load float, ptr %3, align 4
  %5 = fcmp ugt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = fcmp ogt float %4, 0x3FEFEFEFE0000000
  %8 = tail call float @llvm.fmuladd.f32(float %4, float 2.550000e+02, float 5.000000e-01)
  %9 = select i1 %7, float 2.550000e+02, float %8
  %10 = fptoui float %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 0, %2 ]
  store i8 %12, ptr %0, align 1, !tbaa !127
  %13 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = fcmp ugt float %14, 0.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = fcmp ogt float %14, 0x3FEFEFEFE0000000
  %18 = tail call float @llvm.fmuladd.f32(float %14, float 2.550000e+02, float 5.000000e-01)
  %19 = select i1 %17, float 2.550000e+02, float %18
  %20 = fptoui float %19 to i8
  br label %21

21:                                               ; preds = %11, %16
  %22 = phi i8 [ %20, %16 ], [ 0, %11 ]
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %22, ptr %23, align 1, !tbaa !127
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %25 = load float, ptr %24, align 4
  %26 = fcmp ugt float %25, 0.000000e+00
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = fcmp ogt float %25, 0x3FEFEFEFE0000000
  %29 = tail call float @llvm.fmuladd.f32(float %25, float 2.550000e+02, float 5.000000e-01)
  %30 = select i1 %28, float 2.550000e+02, float %29
  %31 = fptoui float %30 to i8
  br label %32

32:                                               ; preds = %21, %27
  %33 = phi i8 [ %31, %27 ], [ 0, %21 ]
  %34 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %33, ptr %34, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  store float %3, ptr %0, align 4, !tbaa !27
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @ED_imapaint_dirty_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_mix_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !27
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = load float, ptr %1, align 4, !tbaa !27
  %10 = load float, ptr %2, align 4, !tbaa !27
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %10)
  store float %11, ptr %0, align 4, !tbaa !27
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !27
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !27
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %15)
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !27
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !27
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !27
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !27
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !27
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %5)
  %27 = getelementptr inbounds float, ptr %0, i64 3
  store float %26, ptr %27, align 4, !tbaa !27
  br label %29

28:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #15
  br label %29

29:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_mix_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !127
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !127
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %9, %12
  %14 = load i8, ptr %1, align 1, !tbaa !127
  %15 = zext i8 %14 to i32
  %16 = mul nuw nsw i32 %13, %15
  %17 = mul nuw nsw i32 %8, 255
  %18 = load i8, ptr %2, align 1, !tbaa !127
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %17, %19
  %21 = add nuw nsw i32 %20, %16
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !127
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %13, %24
  %26 = getelementptr inbounds i8, ptr %2, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !127
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %17, %28
  %30 = add nuw nsw i32 %29, %25
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !127
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %13, %33
  %35 = getelementptr inbounds i8, ptr %2, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !127
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %17, %37
  %39 = add nuw nsw i32 %38, %34
  %40 = add nuw nsw i32 %13, %17
  %41 = tail call fastcc i32 @divide_round_i(i32 noundef %21, i32 noundef %40) #15
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %0, align 1, !tbaa !127
  %43 = tail call fastcc i32 @divide_round_i(i32 noundef %30, i32 noundef %40) #15
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !127
  %46 = tail call fastcc i32 @divide_round_i(i32 noundef %39, i32 noundef %40) #15
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !127
  %49 = tail call fastcc i32 @divide_round_i(i32 noundef %40, i32 noundef 255) #15
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %50, ptr %51, align 1, !tbaa !127
  br label %53

52:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #15
  br label %53

53:                                               ; preds = %52, %7
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  store float %3, ptr %0, align 4, !tbaa !27
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !27
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !27
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stack_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_blend_color_float(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_2d_fill_add_pixel_float(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !91
  %11 = icmp sle i32 %10, %0
  %12 = icmp slt i32 %0, 0
  %13 = or i1 %12, %11
  br i1 %13, label %51, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !92
  %17 = icmp sle i32 %16, %1
  %18 = icmp slt i32 %1, 0
  %19 = or i1 %18, %17
  br i1 %19, label %51, label %20

20:                                               ; preds = %14
  %21 = mul nsw i32 %10, %1
  %22 = add nsw i32 %21, %0
  store i32 %22, ptr %8, align 4, !tbaa !28
  %23 = ashr i32 %22, 5
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %4, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !28
  %27 = and i32 %22, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !33
  %34 = shl nsw i32 %22, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr %33, i64 %35
  %37 = tail call fastcc zeroext i8 @compare_len_squared_v3v3(ptr noundef %36, ptr noundef %5, float noundef %6) #15, !range !135
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  call void @BLI_stack_push(ptr noundef %3, ptr noundef nonnull %8) #14
  %40 = load i32, ptr %8, align 4, !tbaa !28
  %41 = and i32 %40, 31
  %42 = shl nuw i32 1, %41
  %43 = ashr i32 %40, 5
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %39, %31
  %46 = phi i64 [ %44, %39 ], [ %24, %31 ]
  %47 = phi i32 [ %42, %39 ], [ %28, %31 ]
  %48 = getelementptr inbounds i32, ptr %4, i64 %46
  %49 = load i32, ptr %48, align 4, !tbaa !28
  %50 = or i32 %47, %49
  store i32 %50, ptr %48, align 4, !tbaa !28
  br label %51

51:                                               ; preds = %20, %45, %7, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: optsize
declare void @IMB_blend_color_byte(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %10 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = icmp sle i32 %11, %0
  %13 = icmp slt i32 %0, 0
  %14 = or i1 %13, %12
  br i1 %14, label %51, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !92
  %18 = icmp sle i32 %17, %1
  %19 = icmp slt i32 %1, 0
  %20 = or i1 %19, %18
  br i1 %20, label %51, label %21

21:                                               ; preds = %15
  %22 = mul nsw i32 %11, %1
  %23 = add nsw i32 %22, %0
  store i32 %23, ptr %8, align 4, !tbaa !28
  %24 = ashr i32 %23, 5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !28
  %28 = and i32 %23, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !121
  %35 = sext i32 %23 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  call void @rgba_uchar_to_float(ptr noundef nonnull %9, ptr noundef %36) #14
  %37 = call fastcc zeroext i8 @compare_len_squared_v3v3(ptr noundef nonnull %9, ptr noundef %5, float noundef %6) #15, !range !135
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  call void @BLI_stack_push(ptr noundef %3, ptr noundef nonnull %8) #14
  %40 = load i32, ptr %8, align 4, !tbaa !28
  %41 = and i32 %40, 31
  %42 = shl nuw i32 1, %41
  %43 = ashr i32 %40, 5
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i64 [ %44, %39 ], [ %25, %32 ]
  %47 = phi i32 [ %42, %39 ], [ %29, %32 ]
  %48 = getelementptr inbounds i32, ptr %4, i64 %46
  %49 = load i32, ptr %48, align 4, !tbaa !28
  %50 = or i32 %47, %49
  store i32 %50, ptr %48, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  br label %51

51:                                               ; preds = %21, %45, %7, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: optsize
declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_2d_gradient_fill(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 8
  %12 = alloca [2 x float], align 8
  %13 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %173, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 6
  %19 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef null) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %173, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ImagePaintState, ptr %4, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  %24 = load float, ptr %3, align 4, !tbaa !27
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !27
  %27 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %23, float noundef %24, float noundef %26, ptr noundef nonnull %9, ptr noundef nonnull %27) #14
  %28 = load ptr, ptr %22, align 8, !tbaa !26
  %29 = load float, ptr %2, align 4, !tbaa !27
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !27
  %32 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %28, float noundef %29, float noundef %31, ptr noundef nonnull %8, ptr noundef nonnull %32) #14
  %33 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %34 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %35 = load <2 x i32>, ptr %33, align 8, !tbaa !28
  %36 = sitofp <2 x i32> %35 to <2 x float>
  %37 = load <2 x float>, ptr %9, align 8, !tbaa !27
  %38 = fmul <2 x float> %37, %36
  store <2 x float> %38, ptr %9, align 8, !tbaa !27
  %39 = load <2 x float>, ptr %8, align 8, !tbaa !27
  %40 = fmul <2 x float> %39, %36
  store <2 x float> %40, ptr %8, align 8, !tbaa !27
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  %41 = call fastcc float @len_squared_v2(ptr noundef nonnull %10) #15
  %42 = fdiv float 1.000000e+00, %41
  %43 = call float @sqrtf(float noundef %41) #14
  %44 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !33
  %46 = icmp eq ptr %45, null
  %47 = load i32, ptr %33, align 8, !tbaa !91
  %48 = load i32, ptr %34, align 4, !tbaa !92
  call void @ED_imapaint_dirty_region(ptr noundef nonnull %15, ptr noundef nonnull %19, i32 noundef 0, i32 noundef 0, i32 noundef %47, i32 noundef %48) #14
  %49 = load i32, ptr %33, align 8, !tbaa !91
  %50 = icmp sgt i32 %49, 0
  br i1 %46, label %59, label %51

51:                                               ; preds = %21
  br i1 %50, label %52, label %172

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 33
  %54 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %55 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %56 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %57 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 12
  %58 = load i32, ptr %34, align 4, !tbaa !92
  br label %68

59:                                               ; preds = %21
  br i1 %50, label %60, label %172

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 33
  %62 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %63 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %64 = getelementptr inbounds i8, ptr %6, i64 3
  %65 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 8
  %66 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 12
  %67 = load i32, ptr %34, align 4, !tbaa !92
  br label %119

68:                                               ; preds = %52, %113
  %69 = phi i32 [ %49, %52 ], [ %114, %113 ]
  %70 = phi i32 [ %58, %52 ], [ %115, %113 ]
  %71 = phi float [ undef, %52 ], [ %116, %113 ]
  %72 = phi i32 [ 0, %52 ], [ %117, %113 ]
  %73 = icmp sgt i32 %70, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %68
  %75 = sitofp i32 %72 to float
  %76 = insertelement <2 x float> poison, float %75, i64 0
  br label %77

77:                                               ; preds = %74, %91
  %78 = phi float [ %71, %74 ], [ %92, %91 ]
  %79 = phi i32 [ 0, %74 ], [ %108, %91 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %80 = sitofp i32 %79 to float
  %81 = load <2 x float>, ptr %8, align 8, !tbaa !27
  %82 = insertelement <2 x float> %76, float %80, i64 1
  %83 = fsub <2 x float> %82, %81
  store <2 x float> %83, ptr %11, align 8, !tbaa !27
  %84 = load i32, ptr %53, align 4, !tbaa !136
  switch i32 %84, label %91 [
    i32 0, label %85
    i32 1, label %88
  ]

85:                                               ; preds = %77
  %86 = call fastcc float @dot_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %10) #15
  %87 = fmul float %42, %86
  br label %91

88:                                               ; preds = %77
  %89 = call fastcc float @len_v2(ptr noundef nonnull %11) #15
  %90 = fdiv float %89, %43
  br label %91

91:                                               ; preds = %77, %88, %85
  %92 = phi float [ %78, %77 ], [ %90, %88 ], [ %87, %85 ]
  %93 = load ptr, ptr %54, align 8, !tbaa !137
  %94 = call zeroext i8 @do_colorband(ptr noundef %93, float noundef %92, ptr noundef nonnull %7) #14
  %95 = load float, ptr %55, align 4, !tbaa !27
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %95) #15
  %96 = load float, ptr %56, align 8, !tbaa !126
  %97 = load float, ptr %55, align 4, !tbaa !27
  %98 = fmul float %96, %97
  store float %98, ptr %55, align 4, !tbaa !27
  %99 = load ptr, ptr %44, align 8, !tbaa !33
  %100 = load i32, ptr %33, align 8, !tbaa !91
  %101 = mul nsw i32 %100, %79
  %102 = add nsw i32 %101, %72
  %103 = shl nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, ptr %99, i64 %104
  %106 = load i16, ptr %57, align 4, !tbaa !20
  %107 = sext i16 %106 to i32
  call void @IMB_blend_color_float(ptr noundef %105, ptr noundef %105, ptr noundef nonnull %7, i32 noundef %107) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  %108 = add nuw nsw i32 %79, 1
  %109 = load i32, ptr %34, align 4, !tbaa !92
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %77, label %111, !llvm.loop !138

111:                                              ; preds = %91
  %112 = load i32, ptr %33, align 8, !tbaa !91
  br label %113

113:                                              ; preds = %111, %68
  %114 = phi i32 [ %69, %68 ], [ %112, %111 ]
  %115 = phi i32 [ %70, %68 ], [ %109, %111 ]
  %116 = phi float [ %71, %68 ], [ %92, %111 ]
  %117 = add nuw nsw i32 %72, 1
  %118 = icmp slt i32 %117, %114
  br i1 %118, label %68, label %172, !llvm.loop !139

119:                                              ; preds = %60, %165
  %120 = phi i32 [ %49, %60 ], [ %166, %165 ]
  %121 = phi i32 [ %67, %60 ], [ %167, %165 ]
  %122 = phi i64 [ 0, %60 ], [ %169, %165 ]
  %123 = phi float [ undef, %60 ], [ %168, %165 ]
  %124 = icmp sgt i32 %121, 0
  br i1 %124, label %125, label %165

125:                                              ; preds = %119
  %126 = trunc i64 %122 to i32
  %127 = sitofp i32 %126 to float
  %128 = insertelement <2 x float> poison, float %127, i64 0
  br label %129

129:                                              ; preds = %125, %143
  %130 = phi float [ %123, %125 ], [ %144, %143 ]
  %131 = phi i32 [ 0, %125 ], [ %160, %143 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %132 = sitofp i32 %131 to float
  %133 = load <2 x float>, ptr %8, align 8, !tbaa !27
  %134 = insertelement <2 x float> %128, float %132, i64 1
  %135 = fsub <2 x float> %134, %133
  store <2 x float> %135, ptr %12, align 8, !tbaa !27
  %136 = load i32, ptr %61, align 4, !tbaa !136
  switch i32 %136, label %143 [
    i32 0, label %137
    i32 1, label %140
  ]

137:                                              ; preds = %129
  %138 = call fastcc float @dot_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %10) #15
  %139 = fmul float %42, %138
  br label %143

140:                                              ; preds = %129
  %141 = call fastcc float @len_v2(ptr noundef nonnull %12) #15
  %142 = fdiv float %141, %43
  br label %143

143:                                              ; preds = %129, %140, %137
  %144 = phi float [ %130, %129 ], [ %142, %140 ], [ %139, %137 ]
  %145 = load ptr, ptr %62, align 8, !tbaa !137
  %146 = call zeroext i8 @do_colorband(ptr noundef %145, float noundef %144, ptr noundef nonnull %7) #14
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %7) #15
  call void @rgba_float_to_uchar(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %147 = load float, ptr %63, align 8, !tbaa !126
  %148 = load i8, ptr %64, align 1, !tbaa !127
  %149 = uitofp i8 %148 to float
  %150 = fmul float %147, %149
  %151 = fptoui float %150 to i8
  store i8 %151, ptr %64, align 1, !tbaa !127
  %152 = load ptr, ptr %65, align 8, !tbaa !121
  %153 = load i32, ptr %33, align 8, !tbaa !91
  %154 = mul nsw i32 %153, %131
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %152, i64 %155
  %157 = getelementptr inbounds i32, ptr %156, i64 %122
  %158 = load i16, ptr %66, align 4, !tbaa !20
  %159 = sext i16 %158 to i32
  call void @IMB_blend_color_byte(ptr noundef %157, ptr noundef %157, ptr noundef nonnull %6, i32 noundef %159) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  %160 = add nuw nsw i32 %131, 1
  %161 = load i32, ptr %34, align 4, !tbaa !92
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %129, label %163, !llvm.loop !140

163:                                              ; preds = %143
  %164 = load i32, ptr %33, align 8, !tbaa !91
  br label %165

165:                                              ; preds = %163, %119
  %166 = phi i32 [ %120, %119 ], [ %164, %163 ]
  %167 = phi i32 [ %121, %119 ], [ %161, %163 ]
  %168 = phi float [ %123, %119 ], [ %144, %163 ]
  %169 = add nuw nsw i64 %122, 1
  %170 = sext i32 %166 to i64
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %119, label %172, !llvm.loop !141

172:                                              ; preds = %113, %165, %51, %59
  call void @imapaint_image_update(ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %19, i16 noundef signext 0) #14
  call void @ED_imapaint_clear_partial_redraw() #14
  call void @BKE_image_release_ibuf(ptr noundef nonnull %15, ptr noundef nonnull %19, ptr noundef null) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %15) #14
  br label %173

173:                                              ; preds = %17, %5, %172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !27
  %5 = load float, ptr %2, align 4, !tbaa !27
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !27
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load float, ptr %0, align 4, !tbaa !27
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !27
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !27
  %4 = load float, ptr %1, align 4, !tbaa !27
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load float, ptr %0, align 4, !tbaa !27
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !27
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !27
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #14
  store float %4, ptr %0, align 4, !tbaa !27
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !27
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #14
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !27
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #14
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_pool_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_2d_tex_mapping(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !91
  %16 = sitofp i32 %15 to float
  %17 = fdiv float 1.000000e+00, %16
  %18 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !92
  %20 = sitofp i32 %19 to float
  %21 = fdiv float 1.000000e+00, %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  %22 = load float, ptr %3, align 4, !tbaa !27
  %23 = sdiv i32 %1, 2
  %24 = sitofp i32 %23 to float
  %25 = fsub float %22, %24
  %26 = fadd float %25, 1.000000e+00
  %27 = tail call float @llvm.floor.f32(float %26)
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !27
  %31 = fsub float %30, %24
  %32 = fadd float %31, 1.000000e+00
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptosi float %33 to i32
  switch i32 %5, label %75 [
    i32 5, label %35
    i32 2, label %64
  ]

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !26
  %38 = sitofp i32 %28 to float
  %39 = fmul float %17, %38
  %40 = sitofp i32 %34 to float
  %41 = fmul float %21, %40
  call void @UI_view2d_view_to_region(ptr noundef %37, float noundef %39, float noundef %41, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %42 = load ptr, ptr %36, align 8, !tbaa !26
  %43 = add nsw i32 %28, %1
  %44 = sitofp i32 %43 to float
  %45 = fmul float %17, %44
  %46 = add nsw i32 %34, %1
  %47 = sitofp i32 %46 to float
  %48 = fmul float %21, %47
  call void @UI_view2d_view_to_region(ptr noundef %42, float noundef %45, float noundef %48, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %49 = load i32, ptr %8, align 4, !tbaa !28
  %50 = sitofp i32 %49 to float
  store float %50, ptr %6, align 4, !tbaa !142
  %51 = load i32, ptr %9, align 4, !tbaa !28
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %52, ptr %53, align 4, !tbaa !143
  %54 = load i32, ptr %10, align 4, !tbaa !28
  %55 = sub nsw i32 %54, %49
  %56 = sitofp i32 %55 to float
  %57 = sitofp i32 %1 to float
  %58 = fdiv float %56, %57
  %59 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %58, ptr %59, align 4, !tbaa !144
  %60 = load i32, ptr %11, align 4, !tbaa !28
  %61 = sub nsw i32 %60, %51
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %62, %57
  br label %111

64:                                               ; preds = %7
  %65 = sitofp i32 %28 to float
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %17, float -5.000000e-01)
  %67 = sitofp i32 %34 to float
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %21, float -5.000000e-01)
  %69 = fmul float %68, 2.000000e+00
  %70 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %69, ptr %70, align 4, !tbaa !143
  %71 = insertelement <2 x float> poison, float %66, i64 0
  %72 = insertelement <2 x float> %71, float %17, i64 1
  %73 = fmul <2 x float> %72, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %73, ptr %6, align 4, !tbaa !27
  %74 = fmul float %21, 2.000000e+00
  br label %111

75:                                               ; preds = %7
  %76 = and i32 %5, -5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load float, ptr %4, align 4, !tbaa !27
  %80 = sitofp i32 %1 to float
  %81 = fneg float %80
  %82 = tail call float @llvm.fmuladd.f32(float %81, float 5.000000e-01, float %79)
  %83 = fadd float %82, 5.000000e-01
  store float %83, ptr %6, align 4, !tbaa !142
  %84 = getelementptr inbounds float, ptr %4, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !27
  %86 = tail call float @llvm.fmuladd.f32(float %81, float 5.000000e-01, float %85)
  %87 = fadd float %86, 5.000000e-01
  %88 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %87, ptr %88, align 4, !tbaa !143
  %89 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float 1.000000e+00, ptr %89, align 4, !tbaa !144
  br label %111

90:                                               ; preds = %75
  %91 = sub nsw i32 0, %1
  %92 = sitofp i32 %91 to double
  %93 = fmul double %92, 5.000000e-01
  %94 = fptosi double %93 to i32
  %95 = fptosi float %22 to i32
  %96 = add nsw i32 %95, %94
  %97 = load float, ptr %2, align 4, !tbaa !27
  %98 = fptosi float %97 to i32
  %99 = sub i32 %96, %98
  %100 = sitofp i32 %99 to float
  store float %100, ptr %6, align 4, !tbaa !142
  %101 = load float, ptr %29, align 4, !tbaa !27
  %102 = fptosi float %101 to i32
  %103 = add nsw i32 %102, %94
  %104 = getelementptr inbounds float, ptr %2, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !27
  %106 = fptosi float %105 to i32
  %107 = sub i32 %103, %106
  %108 = sitofp i32 %107 to float
  %109 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %108, ptr %109, align 4, !tbaa !143
  %110 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float 1.000000e+00, ptr %110, align 4, !tbaa !144
  br label %111

111:                                              ; preds = %64, %90, %78, %35
  %112 = phi float [ %74, %64 ], [ 1.000000e+00, %90 ], [ 1.000000e+00, %78 ], [ %63, %35 ]
  %113 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  store float %112, ptr %113, align 4, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_mask_imbuf_partial_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ImBuf, align 8
  %11 = alloca %struct.ImBuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %12 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = sext i32 %2 to i64
  %17 = shl nsw i64 %16, 1
  %18 = mul i64 %17, %16
  br label %25

19:                                               ; preds = %3
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %21 = sext i32 %2 to i64
  %22 = shl nsw i64 %21, 1
  %23 = mul i64 %22, %21
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str.4) #14
  store ptr %24, ptr %12, align 8, !tbaa !83
  br label %25

25:                                               ; preds = %15, %19
  %26 = phi i64 [ %18, %15 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !146
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %30 = tail call ptr %29(i64 noundef %26, ptr noundef nonnull @.str.4) #14
  store ptr %30, ptr %27, align 8, !tbaa !146
  %31 = icmp eq ptr %28, null
  br i1 %31, label %65, label %32

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2480, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 2480, ptr nonnull %11) #13
  %33 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 3
  store i32 %2, ptr %33, align 4, !tbaa !92
  %34 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  store i32 %2, ptr %34, align 8, !tbaa !91
  %35 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !147
  %37 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !91
  %38 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 15
  %39 = load i32, ptr %38, align 4, !tbaa !148
  %40 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 3
  store i32 %39, ptr %40, align 4, !tbaa !92
  store i32 0, ptr %7, align 4, !tbaa !28
  store i32 0, ptr %6, align 4, !tbaa !28
  store i32 %36, ptr %8, align 4, !tbaa !28
  store i32 %39, ptr %9, align 4, !tbaa !28
  %41 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !27
  %43 = fptosi float %42 to i32
  %44 = load float, ptr %1, align 4, !tbaa !27
  %45 = fptosi float %44 to i32
  %46 = sdiv i32 %2, 2
  %47 = sdiv i32 %36, -2
  %48 = add nsw i32 %47, %46
  %49 = add i32 %48, %43
  %50 = sub i32 %49, %45
  store i32 %50, ptr %4, align 4, !tbaa !28
  %51 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 2, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !27
  %53 = fptosi float %52 to i32
  %54 = getelementptr inbounds float, ptr %1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !27
  %56 = fptosi float %55 to i32
  %57 = sdiv i32 %39, -2
  %58 = add nsw i32 %57, %46
  %59 = add i32 %58, %53
  %60 = sub i32 %59, %56
  store i32 %60, ptr %5, align 4, !tbaa !28
  call void @IMB_rectclip(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 2480, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 2480, ptr nonnull %10) #13
  %61 = load i32, ptr %4, align 4, !tbaa !28
  %62 = load i32, ptr %5, align 4, !tbaa !28
  %63 = load i32, ptr %8, align 4, !tbaa !28
  %64 = load i32, ptr %9, align 4, !tbaa !28
  br label %66

65:                                               ; preds = %25
  store i32 0, ptr %7, align 4, !tbaa !28
  store i32 0, ptr %6, align 4, !tbaa !28
  store i32 0, ptr %5, align 4, !tbaa !28
  store i32 0, ptr %4, align 4, !tbaa !28
  store i32 0, ptr %9, align 4, !tbaa !28
  store i32 0, ptr %8, align 4, !tbaa !28
  br label %66

66:                                               ; preds = %65, %32
  %67 = phi i32 [ 0, %65 ], [ %64, %32 ]
  %68 = phi i32 [ 0, %65 ], [ %63, %32 ]
  %69 = phi i32 [ 0, %65 ], [ %62, %32 ]
  %70 = phi i32 [ 0, %65 ], [ %61, %32 ]
  %71 = call fastcc i32 @min_ii(i32 noundef %70, i32 noundef %2) #15
  %72 = call fastcc i32 @min_ii(i32 noundef %69, i32 noundef %2) #15
  %73 = add nsw i32 %68, %70
  %74 = call fastcc i32 @min_ii(i32 noundef %73, i32 noundef %2) #15
  %75 = add nsw i32 %67, %69
  %76 = call fastcc i32 @min_ii(i32 noundef %75, i32 noundef %2) #15
  %77 = icmp slt i32 %71, %74
  %78 = icmp slt i32 %72, %76
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load i32, ptr %6, align 4, !tbaa !28
  %82 = load i32, ptr %7, align 4, !tbaa !28
  call fastcc void @brush_painter_mask_imbuf_update(ptr noundef nonnull %0, ptr noundef %28, i32 noundef %71, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %81, i32 noundef %82, i32 noundef %2) #15
  br label %83

83:                                               ; preds = %80, %66
  br i1 %31, label %86, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %85(ptr noundef nonnull %28) #14
  br label %86

86:                                               ; preds = %84, %83
  %87 = icmp sgt i32 %71, 0
  %88 = icmp sgt i32 %2, 0
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call fastcc void @brush_painter_mask_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %71, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %2) #15
  br label %91

91:                                               ; preds = %90, %86
  %92 = icmp slt i32 %74, %2
  %93 = and i1 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call fastcc void @brush_painter_mask_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef %74, i32 noundef 0, i32 noundef %2, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %2) #15
  br label %95

95:                                               ; preds = %94, %91
  %96 = icmp sgt i32 %72, 0
  %97 = and i1 %96, %77
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  call fastcc void @brush_painter_mask_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef %71, i32 noundef 0, i32 noundef %74, i32 noundef %72, i32 noundef 0, i32 noundef 0, i32 noundef %2) #15
  br label %99

99:                                               ; preds = %98, %95
  %100 = icmp slt i32 %76, %2
  %101 = and i1 %77, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  call fastcc void @brush_painter_mask_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef %71, i32 noundef %76, i32 noundef %74, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %2) #15
  br label %103

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 14
  store i32 %2, ptr %104, align 8, !tbaa !147
  %105 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 15
  store i32 %2, ptr %105, align 4, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @brush_painter_mask_ibuf_new(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = alloca [3 x float], align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %8 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !149
  %9 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %12 = sext i32 %1 to i64
  %13 = shl nsw i64 %12, 1
  %14 = mul i64 %13, %12
  %15 = tail call ptr %11(i64 noundef %14, ptr noundef nonnull @.str.4) #14
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2, %29
  %18 = phi ptr [ %27, %29 ], [ %15, %2 ]
  %19 = phi i32 [ %30, %29 ], [ 0, %2 ]
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %27, %20 ], [ %18, %17 ]
  %22 = phi i32 [ %26, %20 ], [ 0, %17 ]
  call fastcc void @brush_imbuf_tex_co(ptr noundef nonnull %3, i32 noundef %22, i32 noundef %19, ptr noundef nonnull %4) #15
  %23 = call float @BKE_brush_sample_masktex(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %4, i32 noundef 0, ptr noundef %10) #14
  %24 = fmul float %23, 6.553500e+04
  %25 = fptoui float %24 to i16
  store i16 %25, ptr %21, align 2, !tbaa !150
  %26 = add nuw nsw i32 %22, 1
  %27 = getelementptr inbounds i16, ptr %21, i64 1
  %28 = icmp eq i32 %26, %1
  br i1 %28, label %29, label %20, !llvm.loop !151

29:                                               ; preds = %20
  %30 = add nuw nsw i32 %19, 1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %17, !llvm.loop !152

32:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @brush_painter_curve_mask_new(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sub nsw i32 0, %1
  %8 = sitofp i32 %7 to float
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 5.000000e-01, float 5.000000e-01)
  %10 = fptosi float %9 to i32
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %12 = sext i32 %1 to i64
  %13 = shl nsw i64 %12, 1
  %14 = mul i64 %13, %12
  %15 = tail call ptr %11(i64 noundef %14, ptr noundef nonnull @.str.4) #14
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = getelementptr inbounds float, ptr %4, i64 1
  br label %19

19:                                               ; preds = %36, %17
  %20 = phi ptr [ %15, %17 ], [ %34, %36 ]
  %21 = phi i32 [ 0, %17 ], [ %37, %36 ]
  %22 = add nsw i32 %21, %10
  %23 = sitofp i32 %22 to float
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %20, %19 ], [ %34, %24 ]
  %26 = phi i32 [ 0, %19 ], [ %33, %24 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %27 = add nsw i32 %26, %10
  %28 = sitofp i32 %27 to float
  store float %28, ptr %4, align 4, !tbaa !27
  store float %23, ptr %18, align 4, !tbaa !27
  %29 = call fastcc float @len_v2(ptr noundef nonnull %4) #15
  %30 = tail call float @BKE_brush_curve_strength_clamp(ptr noundef %6, float noundef %29, float noundef %2) #14
  %31 = fmul float %30, 6.553500e+04
  %32 = fptoui float %31 to i16
  store i16 %32, ptr %25, align 2, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %33 = add nuw nsw i32 %26, 1
  %34 = getelementptr inbounds i16, ptr %25, i64 1
  %35 = icmp eq i32 %33, %1
  br i1 %35, label %36, label %24, !llvm.loop !153

36:                                               ; preds = %24
  %37 = add nuw nsw i32 %21, 1
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %39, label %19, !llvm.loop !154

39:                                               ; preds = %36, %3
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_imbuf_partial_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %11 = load i8, ptr %10, align 8, !tbaa !155
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 1, i32 32
  %14 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = tail call ptr @IMB_allocImBuf(i32 noundef %2, i32 noundef %2, i8 noundef zeroext 32, i32 noundef %13) #14
  store ptr %18, ptr %14, align 8, !tbaa !86
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi ptr [ %18, %17 ], [ %15, %3 ]
  %21 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !156
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %2, i32 noundef %2, i8 noundef zeroext 32, i32 noundef %13) #14
  store ptr %23, ptr %21, align 8, !tbaa !156
  %24 = icmp eq ptr %22, null
  store i32 0, ptr %7, align 4, !tbaa !28
  store i32 0, ptr %6, align 4, !tbaa !28
  br i1 %24, label %54, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !91
  store i32 %27, ptr %8, align 4, !tbaa !28
  %28 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !92
  store i32 %29, ptr %9, align 4, !tbaa !28
  %30 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !27
  %32 = fptosi float %31 to i32
  %33 = load float, ptr %1, align 4, !tbaa !27
  %34 = fptosi float %33 to i32
  %35 = sdiv i32 %2, 2
  %36 = sdiv i32 %27, -2
  %37 = add nsw i32 %36, %35
  %38 = add i32 %37, %32
  %39 = sub i32 %38, %34
  store i32 %39, ptr %4, align 4, !tbaa !28
  %40 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 2, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !27
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds float, ptr %1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !27
  %45 = fptosi float %44 to i32
  %46 = sdiv i32 %29, -2
  %47 = add nsw i32 %46, %35
  %48 = add i32 %47, %42
  %49 = sub i32 %48, %45
  store i32 %49, ptr %5, align 4, !tbaa !28
  call void @IMB_rectclip(ptr noundef %23, ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %50 = load i32, ptr %4, align 4, !tbaa !28
  %51 = load i32, ptr %5, align 4, !tbaa !28
  %52 = load i32, ptr %8, align 4, !tbaa !28
  %53 = load i32, ptr %9, align 4, !tbaa !28
  br label %55

54:                                               ; preds = %19
  store i32 0, ptr %5, align 4, !tbaa !28
  store i32 0, ptr %4, align 4, !tbaa !28
  store i32 0, ptr %9, align 4, !tbaa !28
  store i32 0, ptr %8, align 4, !tbaa !28
  br label %55

55:                                               ; preds = %54, %25
  %56 = phi i32 [ 0, %54 ], [ %53, %25 ]
  %57 = phi i32 [ 0, %54 ], [ %52, %25 ]
  %58 = phi i32 [ 0, %54 ], [ %51, %25 ]
  %59 = phi i32 [ 0, %54 ], [ %50, %25 ]
  %60 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !91
  %62 = call fastcc i32 @min_ii(i32 noundef %59, i32 noundef %61) #15
  %63 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !92
  %65 = call fastcc i32 @min_ii(i32 noundef %58, i32 noundef %64) #15
  %66 = add nsw i32 %57, %59
  %67 = call fastcc i32 @min_ii(i32 noundef %66, i32 noundef %61) #15
  %68 = add nsw i32 %56, %58
  %69 = call fastcc i32 @min_ii(i32 noundef %68, i32 noundef %64) #15
  %70 = icmp slt i32 %62, %67
  %71 = icmp slt i32 %65, %69
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load i32, ptr %6, align 4, !tbaa !28
  %75 = load i32, ptr %7, align 4, !tbaa !28
  call fastcc void @brush_painter_imbuf_update(ptr noundef nonnull %0, ptr noundef %22, i32 noundef %62, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %74, i32 noundef %75) #15
  br label %76

76:                                               ; preds = %73, %55
  br i1 %24, label %78, label %77

77:                                               ; preds = %76
  call void @IMB_freeImBuf(ptr noundef nonnull %22) #14
  br label %78

78:                                               ; preds = %77, %76
  %79 = icmp sgt i32 %62, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = load i32, ptr %63, align 4, !tbaa !92
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call fastcc void @brush_painter_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %62, i32 noundef %81, i32 noundef 0, i32 noundef 0) #15
  br label %84

84:                                               ; preds = %83, %80, %78
  %85 = load i32, ptr %60, align 8, !tbaa !91
  %86 = icmp slt i32 %67, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, ptr %63, align 4, !tbaa !92
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call fastcc void @brush_painter_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef %67, i32 noundef 0, i32 noundef %85, i32 noundef %88, i32 noundef 0, i32 noundef 0) #15
  br label %91

91:                                               ; preds = %90, %87, %84
  %92 = icmp sgt i32 %65, 0
  %93 = and i1 %92, %70
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call fastcc void @brush_painter_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef %62, i32 noundef 0, i32 noundef %67, i32 noundef %65, i32 noundef 0, i32 noundef 0) #15
  br label %95

95:                                               ; preds = %94, %91
  br i1 %70, label %96, label %100

96:                                               ; preds = %95
  %97 = load i32, ptr %63, align 4, !tbaa !92
  %98 = icmp slt i32 %69, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call fastcc void @brush_painter_imbuf_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef %62, i32 noundef %69, i32 noundef %67, i32 noundef %97, i32 noundef 0, i32 noundef 0) #15
  br label %100

100:                                              ; preds = %99, %96, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @brush_painter_imbuf_new(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = load ptr, ptr %0, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 45
  %13 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %14 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !149
  %15 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 1
  %19 = load i8, ptr %18, align 1, !tbaa !44
  %20 = load i8, ptr %17, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %23 = icmp eq i8 %20, 0
  %24 = select i1 %23, i32 1, i32 32
  %25 = tail call ptr @IMB_allocImBuf(i32 noundef %1, i32 noundef %1, i8 noundef zeroext 32, i32 noundef %24) #14
  %26 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 36
  %27 = load i8, ptr %26, align 2, !tbaa !46
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 2
  %31 = load i8, ptr %30, align 2, !tbaa !123
  call void @paint_brush_color_get(ptr noundef %9, ptr noundef nonnull %11, i8 noundef zeroext %19, i8 noundef zeroext %31, float noundef %3, float noundef %2, ptr noundef nonnull %6, ptr noundef %13) #14
  br label %34

32:                                               ; preds = %4
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %6, align 8, !tbaa !27
  %33 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 1.000000e+00, ptr %33, align 8, !tbaa !27
  br label %34

34:                                               ; preds = %32, %29
  %35 = icmp sgt i32 %1, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %34
  %37 = icmp eq i8 %22, 0
  %38 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %39 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 9
  %40 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 8
  %41 = zext nneg i32 %1 to i64
  br label %42

42:                                               ; preds = %86, %36
  %43 = phi i64 [ 0, %36 ], [ %87, %86 ]
  %44 = trunc i64 %43 to i32
  %45 = mul i32 %44, %1
  %46 = trunc i64 %43 to i32
  br label %47

47:                                               ; preds = %42, %83
  %48 = phi i64 [ 0, %42 ], [ %84, %83 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  br i1 %37, label %55, label %49

49:                                               ; preds = %47
  %50 = trunc i64 %48 to i32
  call fastcc void @brush_imbuf_tex_co(ptr noundef nonnull %5, i32 noundef %50, i32 noundef %46, ptr noundef nonnull %7) #15
  %51 = call float @BKE_brush_sample_tex_3D(ptr noundef %9, ptr noundef %11, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0, ptr noundef %16) #14
  call fastcc void @mul_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #15
  br i1 %23, label %54, label %52

52:                                               ; preds = %49
  %53 = load float, ptr %38, align 4, !tbaa !27
  br label %56

54:                                               ; preds = %49
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %8, ptr noundef %13) #14
  br label %66

55:                                               ; preds = %47
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #15
  store float 1.000000e+00, ptr %38, align 4, !tbaa !27
  br i1 %23, label %66, label %56

56:                                               ; preds = %52, %55
  %57 = phi float [ %53, %52 ], [ 1.000000e+00, %55 ]
  %58 = load ptr, ptr %39, align 8, !tbaa !33
  %59 = trunc i64 %48 to i32
  %60 = add i32 %45, %59
  %61 = shl nsw i32 %60, 2
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %58, i64 %62
  call fastcc void @mul_v3_v3fl(ptr noundef %63, ptr noundef nonnull %8, float noundef %57) #15
  %64 = load float, ptr %38, align 4, !tbaa !27
  %65 = getelementptr inbounds float, ptr %63, i64 3
  store float %64, ptr %65, align 4, !tbaa !27
  br label %83

66:                                               ; preds = %54, %55
  %67 = load ptr, ptr %40, align 8, !tbaa !121
  %68 = trunc i64 %48 to i32
  %69 = add i32 %45, %68
  %70 = shl nsw i32 %69, 2
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %67, i64 %71
  call void @rgb_float_to_uchar(ptr noundef %72, ptr noundef nonnull %8) #14
  %73 = load float, ptr %38, align 4
  %74 = fcmp ugt float %73, 0.000000e+00
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = fcmp ogt float %73, 0x3FEFEFEFE0000000
  %77 = call float @llvm.fmuladd.f32(float %73, float 2.550000e+02, float 5.000000e-01)
  %78 = select i1 %76, float 2.550000e+02, float %77
  br label %79

79:                                               ; preds = %66, %75
  %80 = phi float [ %78, %75 ], [ 0.000000e+00, %66 ]
  %81 = fptoui float %80 to i8
  %82 = getelementptr inbounds i8, ptr %72, i64 3
  store i8 %81, ptr %82, align 1, !tbaa !127
  br label %83

83:                                               ; preds = %79, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  %84 = add nuw nsw i64 %48, 1
  %85 = icmp eq i64 %84, %41
  br i1 %85, label %86, label %47, !llvm.loop !157

86:                                               ; preds = %83
  %87 = add nuw nsw i64 %43, 1
  %88 = icmp eq i64 %87, %41
  br i1 %88, label %89, label %42, !llvm.loop !158

89:                                               ; preds = %86, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret ptr %25
}

; Function Attrs: optsize
declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @IMB_rectclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_mask_imbuf_update(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.rctf, align 4
  %11 = alloca [3 x float], align 4
  %12 = load ptr, ptr %0, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %15 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !149
  %16 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp slt i32 %3, %5
  br i1 %23, label %24, label %66

24:                                               ; preds = %9
  %25 = icmp slt i32 %2, %4
  %26 = sub i32 %7, %3
  %27 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 14
  %28 = sub i32 %6, %2
  %29 = sext i32 %2 to i64
  %30 = sext i32 %3 to i64
  %31 = sext i32 %8 to i64
  br label %32

32:                                               ; preds = %24, %62
  %33 = phi i64 [ %30, %24 ], [ %63, %62 ]
  br i1 %25, label %34, label %62

34:                                               ; preds = %32
  %35 = mul nsw i64 %33, %31
  %36 = trunc i64 %33 to i32
  %37 = add i32 %26, %36
  br label %38

38:                                               ; preds = %34, %57
  %39 = phi i64 [ %29, %34 ], [ %59, %57 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %40 = add nsw i64 %39, %35
  %41 = getelementptr inbounds i16, ptr %20, i64 %40
  %42 = getelementptr inbounds i16, ptr %22, i64 %40
  br i1 %18, label %43, label %48

43:                                               ; preds = %38
  %44 = trunc i64 %39 to i32
  call fastcc void @brush_imbuf_tex_co(ptr noundef nonnull %10, i32 noundef %44, i32 noundef %36, ptr noundef nonnull %11) #15
  %45 = call float @BKE_brush_sample_masktex(ptr noundef %12, ptr noundef %14, ptr noundef nonnull %11, i32 noundef 0, ptr noundef %17) #14
  %46 = fmul float %45, 6.553500e+04
  %47 = fptoui float %46 to i16
  br label %57

48:                                               ; preds = %38
  %49 = load i32, ptr %27, align 8, !tbaa !159
  %50 = mul i32 %49, %37
  %51 = trunc i64 %39 to i32
  %52 = add i32 %28, %51
  %53 = add i32 %52, %50
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i16, ptr %1, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !150
  br label %57

57:                                               ; preds = %43, %48
  %58 = phi i16 [ %56, %48 ], [ %47, %43 ]
  store i16 %58, ptr %42, align 2, !tbaa !150
  store i16 %58, ptr %41, align 2, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  %59 = add nsw i64 %39, 1
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %60, %4
  br i1 %61, label %62, label %38, !llvm.loop !160

62:                                               ; preds = %57, %32
  %63 = add nsw i64 %33, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, %5
  br i1 %65, label %66, label %32, !llvm.loop !161

66:                                               ; preds = %62, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @brush_imbuf_tex_co(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 {
  %5 = load float, ptr %0, align 4, !tbaa !142
  %6 = sitofp i32 %1 to float
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !144
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %5)
  store float %9, ptr %3, align 4, !tbaa !27
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %11 = load float, ptr %10, align 4, !tbaa !143
  %12 = sitofp i32 %2 to float
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !145
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %11)
  %16 = getelementptr inbounds float, ptr %3, i64 1
  store float %15, ptr %16, align 4, !tbaa !27
  %17 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %17, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare float @BKE_brush_sample_masktex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_painter_imbuf_update(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.rctf, align 4
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x i8], align 1
  %14 = load ptr, ptr %0, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 45
  %18 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %19 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !149
  %20 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 1
  %24 = load i8, ptr %23, align 1, !tbaa !44
  %25 = load i8, ptr %22, align 8, !tbaa !40
  %26 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !47
  %28 = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %29 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !125
  %33 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 36
  %34 = load i8, ptr %33, align 2, !tbaa !46
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %8
  %37 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 2
  %38 = load i8, ptr %37, align 2, !tbaa !123
  call void @paint_brush_color_get(ptr noundef %14, ptr noundef nonnull %16, i8 noundef zeroext %24, i8 noundef zeroext %38, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %10, ptr noundef %18) #14
  br label %41

39:                                               ; preds = %8
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %10, align 8, !tbaa !27
  %40 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 1.000000e+00, ptr %40, align 8, !tbaa !27
  br label %41

41:                                               ; preds = %39, %36
  %42 = icmp slt i32 %3, %5
  br i1 %42, label %43, label %156

43:                                               ; preds = %41
  %44 = icmp slt i32 %2, %4
  %45 = icmp eq i8 %27, 0
  %46 = icmp eq i8 %25, 0
  %47 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3
  %48 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 9
  %49 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 2
  %50 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  %51 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 2
  %52 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %53 = sub i32 %7, %3
  %54 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %55 = sub i32 %6, %2
  %56 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 8
  %57 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 8
  %58 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %59 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 1
  %60 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 2
  %61 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 3
  br label %62

62:                                               ; preds = %43, %153
  %63 = phi i32 [ %3, %43 ], [ %154, %153 ]
  br i1 %44, label %64, label %153

64:                                               ; preds = %62
  %65 = add i32 %53, %63
  br label %66

66:                                               ; preds = %64, %150
  %67 = phi i32 [ %2, %64 ], [ %151, %150 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  br i1 %28, label %68, label %73

68:                                               ; preds = %66
  br i1 %45, label %72, label %69

69:                                               ; preds = %68
  call fastcc void @brush_imbuf_tex_co(ptr noundef nonnull %9, i32 noundef %67, i32 noundef %63, ptr noundef nonnull %11) #15
  %70 = call float @BKE_brush_sample_tex_3D(ptr noundef %14, ptr noundef %16, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 0, ptr noundef %21) #14
  call fastcc void @mul_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %10) #15
  br i1 %46, label %71, label %74

71:                                               ; preds = %69
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %12, ptr noundef %18) #14
  br label %102

72:                                               ; preds = %68
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %10) #15
  store float 1.000000e+00, ptr %47, align 4, !tbaa !27
  br label %73

73:                                               ; preds = %72, %66
  br i1 %46, label %102, label %74

74:                                               ; preds = %69, %73
  %75 = load ptr, ptr %48, align 8, !tbaa !33
  %76 = load i32, ptr %49, align 8, !tbaa !91
  %77 = mul nsw i32 %76, %63
  %78 = add nsw i32 %77, %67
  %79 = shl nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %75, i64 %80
  %82 = load ptr, ptr %50, align 8, !tbaa !33
  %83 = load i32, ptr %51, align 8, !tbaa !91
  %84 = mul nsw i32 %83, %63
  %85 = add nsw i32 %84, %67
  %86 = shl nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, ptr %82, i64 %87
  br i1 %28, label %98, label %89

89:                                               ; preds = %74
  %90 = load ptr, ptr %52, align 8, !tbaa !33
  %91 = load i32, ptr %54, align 8, !tbaa !91
  %92 = mul nsw i32 %91, %65
  %93 = add i32 %55, %67
  %94 = add nsw i32 %93, %92
  %95 = shl nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, ptr %90, i64 %96
  call fastcc void @copy_v4_v4(ptr noundef nonnull %12, ptr noundef %97) #15
  br label %98

98:                                               ; preds = %89, %74
  call fastcc void @copy_v4_v4(ptr noundef %88, ptr noundef nonnull %12) #15
  %99 = load float, ptr %47, align 4, !tbaa !27
  call fastcc void @mul_v3_v3fl(ptr noundef %81, ptr noundef nonnull %12, float noundef %99) #15
  %100 = load float, ptr %47, align 4, !tbaa !27
  %101 = getelementptr inbounds float, ptr %81, i64 3
  store float %100, ptr %101, align 4, !tbaa !27
  br label %150

102:                                              ; preds = %71, %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  %103 = load ptr, ptr %56, align 8, !tbaa !121
  %104 = load i32, ptr %49, align 8, !tbaa !91
  %105 = mul nsw i32 %104, %63
  %106 = add nsw i32 %105, %67
  %107 = shl nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %103, i64 %108
  %110 = load ptr, ptr %57, align 8, !tbaa !121
  %111 = load i32, ptr %51, align 8, !tbaa !91
  %112 = mul nsw i32 %111, %63
  %113 = add nsw i32 %112, %67
  %114 = shl nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %110, i64 %115
  br i1 %28, label %133, label %117

117:                                              ; preds = %102
  %118 = load ptr, ptr %58, align 8, !tbaa !121
  %119 = load i32, ptr %54, align 8, !tbaa !91
  %120 = mul nsw i32 %119, %65
  %121 = add i32 %55, %67
  %122 = add nsw i32 %121, %120
  %123 = shl nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %118, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !127
  store i8 %126, ptr %13, align 1, !tbaa !127
  %127 = getelementptr inbounds i8, ptr %125, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !127
  store i8 %128, ptr %59, align 1, !tbaa !127
  %129 = getelementptr inbounds i8, ptr %125, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !127
  store i8 %130, ptr %60, align 1, !tbaa !127
  %131 = getelementptr inbounds i8, ptr %125, i64 3
  %132 = load i8, ptr %131, align 1, !tbaa !127
  store i8 %132, ptr %61, align 1, !tbaa !127
  br label %135

133:                                              ; preds = %102
  call void @rgba_float_to_uchar(ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  %134 = load i8, ptr %13, align 1, !tbaa !127
  br label %135

135:                                              ; preds = %133, %117
  %136 = phi i8 [ %134, %133 ], [ %126, %117 ]
  store i8 %136, ptr %116, align 1, !tbaa !127
  %137 = load i8, ptr %59, align 1, !tbaa !127
  %138 = getelementptr inbounds i8, ptr %116, i64 1
  store i8 %137, ptr %138, align 1, !tbaa !127
  %139 = load i8, ptr %60, align 1, !tbaa !127
  %140 = getelementptr inbounds i8, ptr %116, i64 2
  store i8 %139, ptr %140, align 1, !tbaa !127
  %141 = load i8, ptr %61, align 1, !tbaa !127
  %142 = getelementptr inbounds i8, ptr %116, i64 3
  store i8 %141, ptr %142, align 1, !tbaa !127
  %143 = load i8, ptr %13, align 1, !tbaa !127
  store i8 %143, ptr %109, align 1, !tbaa !127
  %144 = load i8, ptr %59, align 1, !tbaa !127
  %145 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 %144, ptr %145, align 1, !tbaa !127
  %146 = load i8, ptr %60, align 1, !tbaa !127
  %147 = getelementptr inbounds i8, ptr %109, i64 2
  store i8 %146, ptr %147, align 1, !tbaa !127
  %148 = load i8, ptr %61, align 1, !tbaa !127
  %149 = getelementptr inbounds i8, ptr %109, i64 3
  store i8 %148, ptr %149, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  br label %150

150:                                              ; preds = %135, %98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  %151 = add i32 %67, 1
  %152 = icmp eq i32 %151, %4
  br i1 %152, label %153, label %66, !llvm.loop !162

153:                                              ; preds = %150, %62
  %154 = add i32 %63, 1
  %155 = icmp eq i32 %154, %5
  br i1 %155, label %156, label %62, !llvm.loop !163

156:                                              ; preds = %153, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paint_brush_color_get(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_sample_tex_3D(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  %4 = load float, ptr %0, align 4, !tbaa !27
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !27
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !27
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !27
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !27
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !27
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !27
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !27
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @paint_2d_convert_brushco(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !27
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !91
  %7 = sdiv i32 %6, 2
  %8 = sitofp i32 %7 to float
  %9 = fsub float %4, %8
  %10 = fadd float %9, 1.000000e+00
  %11 = tail call float @llvm.floor.f32(float %10)
  %12 = fptosi float %11 to i32
  store i32 %12, ptr %2, align 4, !tbaa !28
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !92
  %17 = sdiv i32 %16, 2
  %18 = sitofp i32 %17 to float
  %19 = fsub float %14, %18
  %20 = fadd float %19, 1.000000e+00
  %21 = tail call float @llvm.floor.f32(float %20)
  %22 = fptosi float %21 to i32
  %23 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %22, ptr %23, align 4, !tbaa !28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_2d_lift_soften(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) unnamed_addr #0 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.BrushPainter, ptr %11, i64 0, i32 8, i32 2
  %13 = load i8, ptr %12, align 2, !tbaa !123
  %14 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.Brush, ptr %15, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !70
  %18 = lshr i32 %17, 9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.Brush, ptr %15, i64 0, i32 47
  %22 = load float, ptr %21, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %23 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !116
  %25 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !91
  store i32 %26, ptr %8, align 4, !tbaa !28
  %27 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  store i32 %28, ptr %29, align 4, !tbaa !28
  %30 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %31 = load <2 x i32>, ptr %3, align 4, !tbaa !28
  store <2 x i32> %31, ptr %7, align 8, !tbaa !28
  %32 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 0, ptr %32, align 4, !tbaa !28
  store i32 0, ptr %6, align 4, !tbaa !28
  %33 = icmp eq i16 %4, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  call void @IMB_rectclip(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef nonnull %32, ptr noundef nonnull %8, ptr noundef nonnull %29) #14
  %35 = load i32, ptr %8, align 4, !tbaa !28
  %36 = icmp ne i32 %35, 0
  %37 = load i32, ptr %29, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %42, label %128

40:                                               ; preds = %5
  %41 = icmp sgt i32 %28, 0
  br i1 %41, label %42, label %128

42:                                               ; preds = %34, %40
  %43 = phi i32 [ %37, %34 ], [ %28, %40 ]
  %44 = phi i32 [ %35, %34 ], [ %26, %40 ]
  %45 = trunc i16 %4 to i8
  %46 = getelementptr inbounds %struct.BlurKernel, ptr %24, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BlurKernel, ptr %24, i64 0, i32 3
  %48 = icmp eq i8 %20, %13
  %49 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %50 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %51 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 3
  %52 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %53 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  br label %54

54:                                               ; preds = %42, %123
  %55 = phi i32 [ %43, %42 ], [ %124, %123 ]
  %56 = phi i32 [ %44, %42 ], [ %125, %123 ]
  %57 = phi i32 [ 0, %42 ], [ %126, %123 ]
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %123

59:                                               ; preds = %54, %113
  %60 = phi i32 [ %118, %113 ], [ 0, %54 ]
  %61 = load i32, ptr %7, align 8, !tbaa !28
  %62 = add nsw i32 %61, %60
  %63 = load i32, ptr %30, align 4, !tbaa !28
  %64 = add nsw i32 %63, %57
  call fastcc void @paint_2d_ibuf_rgb_get(ptr noundef %1, i32 noundef %62, i32 noundef %64, i8 noundef zeroext %45, ptr noundef nonnull %10) #15
  call fastcc void @zero_v4(ptr noundef nonnull %9) #15
  %65 = load i32, ptr %46, align 8, !tbaa !165
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %59, %93
  %68 = phi i32 [ %94, %93 ], [ %65, %59 ]
  %69 = phi float [ %95, %93 ], [ 0.000000e+00, %59 ]
  %70 = phi i32 [ %96, %93 ], [ 0, %59 ]
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = add nsw i32 %70, %64
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i32 [ %68, %72 ], [ %91, %74 ]
  %76 = phi i32 [ 0, %72 ], [ %90, %74 ]
  %77 = phi float [ %69, %72 ], [ %89, %74 ]
  %78 = add nsw i32 %76, %62
  %79 = load i32, ptr %47, align 8, !tbaa !167
  %80 = sub i32 %78, %79
  %81 = sub i32 %73, %79
  %82 = load ptr, ptr %24, align 8, !tbaa !168
  %83 = mul nsw i32 %75, %70
  %84 = add nsw i32 %83, %76
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, ptr %82, i64 %85
  %87 = load float, ptr %86, align 4, !tbaa !27
  %88 = call fastcc float @paint_2d_ibuf_add_if(ptr noundef %1, i32 noundef %80, i32 noundef %81, ptr noundef nonnull %9, i16 noundef signext %4, float noundef %87) #15
  %89 = fadd float %77, %88
  %90 = add nuw nsw i32 %76, 1
  %91 = load i32, ptr %46, align 8, !tbaa !165
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %74, label %93, !llvm.loop !169

93:                                               ; preds = %74, %67
  %94 = phi i32 [ %68, %67 ], [ %91, %74 ]
  %95 = phi float [ %69, %67 ], [ %89, %74 ]
  %96 = add nuw nsw i32 %70, 1
  %97 = icmp slt i32 %96, %94
  br i1 %97, label %67, label %98, !llvm.loop !170

98:                                               ; preds = %93
  %99 = fcmp ogt float %95, 0.000000e+00
  br i1 %99, label %100, label %112

100:                                              ; preds = %98
  %101 = fdiv float 1.000000e+00, %95
  call fastcc void @mul_v4_fl(ptr noundef nonnull %9, float noundef %101) #15
  br i1 %48, label %113, label %102

102:                                              ; preds = %100
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  %103 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %9) #15
  store float %103, ptr %49, align 8, !tbaa !27
  store float %103, ptr %50, align 4, !tbaa !27
  store float %103, ptr %9, align 16, !tbaa !27
  %104 = call float @llvm.fabs.f32(float %103)
  %105 = fcmp ogt float %104, %22
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load ptr, ptr %51, align 8, !tbaa !87
  %108 = load ptr, ptr %14, align 8, !tbaa !19
  %109 = call float @BKE_brush_alpha_get(ptr noundef %107, ptr noundef %108) #14
  %110 = load float, ptr %52, align 4, !tbaa !27
  store float %109, ptr %53, align 4, !tbaa !27
  store float %109, ptr %52, align 4, !tbaa !27
  call fastcc void @blend_color_add_float(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  store float %110, ptr %53, align 4, !tbaa !27
  br label %113

111:                                              ; preds = %102
  call fastcc void @copy_v4_v4(ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  br label %113

112:                                              ; preds = %59, %98
  call fastcc void @copy_v4_v4(ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  br label %113

113:                                              ; preds = %100, %111, %106, %112
  %114 = load i32, ptr %6, align 4, !tbaa !28
  %115 = add nsw i32 %114, %60
  %116 = load i32, ptr %32, align 4, !tbaa !28
  %117 = add nsw i32 %116, %57
  call fastcc void @paint_2d_ibuf_rgb_set(ptr noundef %2, i32 noundef %115, i32 noundef %117, ptr noundef nonnull %9) #15
  %118 = add nuw nsw i32 %60, 1
  %119 = load i32, ptr %8, align 4, !tbaa !28
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %59, label %121, !llvm.loop !171

121:                                              ; preds = %113
  %122 = load i32, ptr %29, align 4, !tbaa !28
  br label %123

123:                                              ; preds = %121, %54
  %124 = phi i32 [ %122, %121 ], [ %55, %54 ]
  %125 = phi i32 [ %119, %121 ], [ %56, %54 ]
  %126 = add nuw nsw i32 %57, 1
  %127 = icmp slt i32 %126, %124
  br i1 %127, label %54, label %128, !llvm.loop !172

128:                                              ; preds = %123, %40, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_2d_lift_smear(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [4 x %struct.ImagePaintRegion], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #13
  %5 = load i32, ptr %2, align 4, !tbaa !28
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !92
  call fastcc void @paint_2d_set_region(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #15
  %12 = call fastcc i32 @paint_2d_torus_split_region(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #15
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ 0, %14 ], [ %30, %16 ]
  %18 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %4, i64 0, i64 %17
  %19 = load i32, ptr %18, align 8, !tbaa !93
  %20 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %4, i64 0, i64 %17, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !95
  %22 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %4, i64 0, i64 %17, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !99
  %24 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %4, i64 0, i64 %17, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !100
  %26 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %4, i64 0, i64 %17, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !96
  %28 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %4, i64 0, i64 %17, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !97
  tail call void @IMB_rectblend(ptr noundef %1, ptr noundef %1, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %19, i32 noundef %21, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef 1001, i8 noundef zeroext 0) #14
  %30 = add nuw nsw i64 %17, 1
  %31 = icmp eq i64 %30, %15
  br i1 %31, label %32, label %16, !llvm.loop !173

32:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @paint_2d_lift_clone(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !91
  store i32 %11, ptr %4, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %12 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !92
  store i32 %13, ptr %5, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %14 = load i32, ptr %2, align 4, !tbaa !28
  store i32 %14, ptr %8, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %15 = getelementptr inbounds i32, ptr %2, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !28
  store i32 %16, ptr %9, align 4, !tbaa !28
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 4
  %18 = load i8, ptr %17, align 8, !tbaa !174
  %19 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !175
  %21 = tail call ptr @IMB_allocImBuf(i32 noundef %11, i32 noundef %13, i8 noundef zeroext %18, i32 noundef %20) #14
  call void @IMB_rectclip(ptr noundef %21, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %22 = load i32, ptr %6, align 4, !tbaa !28
  %23 = load i32, ptr %7, align 4, !tbaa !28
  %24 = load i32, ptr %4, align 4, !tbaa !28
  %25 = load i32, ptr %5, align 4, !tbaa !28
  call void @IMB_rectblend(ptr noundef %21, ptr noundef %21, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %22, i32 noundef %23, i32 noundef %22, i32 noundef %23, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef 1002, i8 noundef zeroext 0) #14
  %26 = load i32, ptr %6, align 4, !tbaa !28
  %27 = load i32, ptr %7, align 4, !tbaa !28
  %28 = load i32, ptr %8, align 4, !tbaa !28
  %29 = load i32, ptr %9, align 4, !tbaa !28
  %30 = load i32, ptr %4, align 4, !tbaa !28
  %31 = load i32, ptr %5, align 4, !tbaa !28
  call void @IMB_rectblend(ptr noundef %21, ptr noundef %21, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %26, i32 noundef %27, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef 1001, i8 noundef zeroext 0) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @paint_2d_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #9 {
  store i32 %1, ptr %0, align 4, !tbaa !93
  %8 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 1
  store i32 %2, ptr %8, align 4, !tbaa !95
  %9 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 2
  store i32 %3, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 4, !tbaa !100
  %11 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 4
  store i32 %5, ptr %11, align 4, !tbaa !96
  %12 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 5
  store i32 %6, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @paint_2d_torus_split_region(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %10 = load i32, ptr %0, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %11 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %13 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %15 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %21 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = srem i32 %10, %22
  %24 = icmp slt i32 %23, 0
  %25 = select i1 %24, i32 %22, i32 0
  %26 = add nsw i32 %23, %25
  store i32 %26, ptr %4, align 4, !tbaa !28
  %27 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = srem i32 %12, %28
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, i32 %28, i32 0
  %32 = add nsw i32 %29, %31
  store i32 %32, ptr %5, align 4, !tbaa !28
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !91
  %35 = srem i32 %14, %34
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i32 %34, i32 0
  %38 = add nsw i32 %35, %37
  store i32 %38, ptr %6, align 4, !tbaa !28
  %39 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !92
  %41 = srem i32 %16, %40
  %42 = icmp slt i32 %41, 0
  %43 = select i1 %42, i32 %40, i32 0
  %44 = add nsw i32 %41, %43
  store i32 %44, ptr %7, align 4, !tbaa !28
  %45 = tail call i32 @llvm.smin.i32(i32 %18, i32 %22)
  store i32 %45, ptr %8, align 4, !tbaa !28
  %46 = tail call i32 @llvm.smin.i32(i32 %20, i32 %28)
  store i32 %46, ptr %9, align 4, !tbaa !28
  call void @IMB_rectclip(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %47 = load i32, ptr %4, align 4, !tbaa !28
  %48 = load i32, ptr %5, align 4, !tbaa !28
  %49 = load i32, ptr %6, align 4, !tbaa !28
  %50 = load i32, ptr %7, align 4, !tbaa !28
  %51 = load i32, ptr %8, align 4, !tbaa !28
  %52 = load i32, ptr %9, align 4, !tbaa !28
  call fastcc void @paint_2d_set_region(ptr noundef nonnull %0, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52) #15
  %53 = icmp slt i32 %51, %45
  br i1 %53, label %54, label %64

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 1
  %56 = add nsw i32 %51, %47
  %57 = load i32, ptr %21, align 8, !tbaa !91
  %58 = srem i32 %56, %57
  %59 = add nsw i32 %51, %49
  %60 = load i32, ptr %33, align 8, !tbaa !91
  %61 = srem i32 %59, %60
  %62 = sub nsw i32 %45, %51
  call fastcc void @paint_2d_set_region(ptr noundef nonnull %55, i32 noundef %58, i32 noundef %48, i32 noundef %61, i32 noundef %50, i32 noundef %62, i32 noundef %52) #15
  %63 = icmp slt i32 %52, %46
  br i1 %63, label %66, label %93

64:                                               ; preds = %3
  %65 = icmp slt i32 %52, %46
  br i1 %65, label %66, label %93

66:                                               ; preds = %64, %54
  %67 = phi i32 [ 1, %64 ], [ 2, %54 ]
  %68 = add nuw nsw i32 %67, 1
  %69 = zext nneg i32 %67 to i64
  %70 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %69
  %71 = add nsw i32 %52, %48
  %72 = load i32, ptr %27, align 4, !tbaa !92
  %73 = srem i32 %71, %72
  %74 = add nsw i32 %52, %50
  %75 = load i32, ptr %39, align 4, !tbaa !92
  %76 = srem i32 %74, %75
  %77 = sub nsw i32 %46, %52
  call fastcc void @paint_2d_set_region(ptr noundef nonnull %70, i32 noundef %47, i32 noundef %73, i32 noundef %49, i32 noundef %76, i32 noundef %51, i32 noundef %77) #15
  br i1 %53, label %78, label %93

78:                                               ; preds = %66
  %79 = add nuw nsw i32 %67, 2
  %80 = zext nneg i32 %68 to i64
  %81 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %80
  %82 = add nsw i32 %51, %47
  %83 = load i32, ptr %21, align 8, !tbaa !91
  %84 = srem i32 %82, %83
  %85 = load i32, ptr %27, align 4, !tbaa !92
  %86 = srem i32 %71, %85
  %87 = add nsw i32 %51, %49
  %88 = load i32, ptr %33, align 8, !tbaa !91
  %89 = srem i32 %87, %88
  %90 = load i32, ptr %39, align 4, !tbaa !92
  %91 = srem i32 %74, %90
  %92 = sub nsw i32 %45, %51
  call fastcc void @paint_2d_set_region(ptr noundef nonnull %81, i32 noundef %84, i32 noundef %86, i32 noundef %89, i32 noundef %91, i32 noundef %92, i32 noundef %77) #15
  br label %93

93:                                               ; preds = %54, %64, %78, %66
  %94 = phi i32 [ %79, %78 ], [ %68, %66 ], [ 1, %64 ], [ 2, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %94
}

; Function Attrs: optsize
declare void @imapaint_region_tiles(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @image_undo_find_tile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rectblend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @paint_2d_ibuf_rgb_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) unnamed_addr #10 {
  %6 = icmp eq i8 %3, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = srem i32 %1, %9
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %9, i32 0
  %13 = add nsw i32 %12, %10
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !92
  %16 = srem i32 %2, %15
  %17 = icmp slt i32 %16, 0
  %18 = select i1 %17, i32 %15, i32 0
  %19 = add nsw i32 %18, %16
  br label %20

20:                                               ; preds = %7, %5
  %21 = phi i32 [ %2, %5 ], [ %19, %7 ]
  %22 = phi i32 [ %1, %5 ], [ %13, %7 ]
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = mul nsw i32 %28, %21
  %30 = add nsw i32 %29, %22
  %31 = shl nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %24, i64 %32
  tail call fastcc void @copy_v4_v4(ptr noundef %4, ptr noundef nonnull %33) #15
  br label %44

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !121
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !91
  %39 = mul nsw i32 %38, %21
  %40 = add nsw i32 %39, %22
  %41 = shl nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %36, i64 %42
  tail call fastcc void @straight_uchar_to_premul_float(ptr noundef %4, ptr noundef %43) #15
  br label %44

44:                                               ; preds = %34, %26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #9 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef float @paint_2d_ibuf_add_if(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i16 noundef signext %4, float noundef %5) unnamed_addr #10 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !92
  %14 = icmp ugt i32 %13, %2
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %6
  %16 = icmp eq i16 %4, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %15
  %18 = phi i8 [ 1, %15 ], [ 0, %11 ]
  call fastcc void @paint_2d_ibuf_rgb_get(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %18, ptr noundef nonnull %7) #15
  call fastcc void @mul_v4_fl(ptr noundef nonnull %7, float noundef %5) #15
  call fastcc void @add_v4_v4(ptr noundef %3, ptr noundef nonnull %7) #15
  br label %19

19:                                               ; preds = %15, %17
  %20 = phi float [ %5, %17 ], [ 0.000000e+00, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret float %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v4_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <4 x float>, ptr %0, align 4, !tbaa !27
  %4 = insertelement <4 x float> poison, float %1, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = fmul <4 x float> %3, %5
  store <4 x float> %6, ptr %0, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !27
  %5 = load float, ptr %2, align 4, !tbaa !27
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !27
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !27
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_grayscale(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load float, ptr %0, align 4, !tbaa !27
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !27
  %5 = fmul float %4, 0x3FE28F5C20000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD3333340000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBEB851E0000000, float %6)
  ret float %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_add_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !27
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load float, ptr %1, align 4, !tbaa !27
  %9 = load float, ptr %2, align 4, !tbaa !27
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !27
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %11, float %8)
  store float %12, ptr %0, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !27
  %17 = load float, ptr %10, align 4, !tbaa !27
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %14)
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !27
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !27
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !27
  %24 = load float, ptr %10, align 4, !tbaa !27
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %21)
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !27
  %27 = load float, ptr %10, align 4, !tbaa !27
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !27
  br label %30

29:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #15
  br label %30

30:                                               ; preds = %29, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @paint_2d_ibuf_rgb_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #10 {
  %5 = alloca [4 x i8], align 1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = mul nsw i32 %11, %2
  %13 = add nsw i32 %12, %1
  %14 = shl nsw i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %7, i64 %15
  %17 = getelementptr inbounds float, ptr %3, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !27
  %19 = fcmp oeq float %18, 0.000000e+00
  %20 = getelementptr inbounds float, ptr %16, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !27
  %22 = select i1 %19, float 1.000000e+00, float %18
  %23 = fdiv float %21, %22
  tail call fastcc void @mul_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %3, float noundef %23) #15
  br label %41

24:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = mul nsw i32 %28, %2
  %30 = add nsw i32 %29, %1
  %31 = shl nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %26, i64 %32
  call fastcc void @premul_float_to_straight_uchar(ptr noundef nonnull %5, ptr noundef %3) #15
  %34 = load i8, ptr %5, align 1, !tbaa !127
  store i8 %34, ptr %33, align 1, !tbaa !127
  %35 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !127
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %36, ptr %37, align 1, !tbaa !127
  %38 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !127
  %40 = getelementptr inbounds i8, ptr %33, i64 2
  store i8 %39, ptr %40, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %41

41:                                               ; preds = %24, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_uchar_to_premul_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !127
  %5 = uitofp i8 %4 to float
  %6 = fmul float %5, 0x3F70101020000000
  %7 = fmul float %6, 0x3F70101020000000
  %8 = load i8, ptr %1, align 1, !tbaa !127
  %9 = uitofp i8 %8 to float
  %10 = fmul float %7, %9
  store float %10, ptr %0, align 4, !tbaa !27
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !127
  %13 = uitofp i8 %12 to float
  %14 = fmul float %7, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !27
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !127
  %18 = uitofp i8 %17 to float
  %19 = fmul float %7, %18
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !27
  %21 = getelementptr inbounds float, ptr %0, i64 3
  store float %6, ptr %21, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v4_v4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  %4 = load float, ptr %0, align 4, !tbaa !27
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !27
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !27
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !27
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !27
  %16 = getelementptr inbounds float, ptr %1, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !27
  %18 = getelementptr inbounds float, ptr %0, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !27
  %20 = fadd float %17, %19
  store float %20, ptr %18, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_float_to_straight_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !27
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !27
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = fcmp ogt float %9, 0x3FEFEFEFE0000000
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 2.550000e+02, float 5.000000e-01)
  %15 = fptoui float %14 to i8
  br label %16

16:                                               ; preds = %13, %11, %8
  %17 = phi i8 [ 0, %8 ], [ %15, %13 ], [ -1, %11 ]
  store i8 %17, ptr %0, align 1, !tbaa !127
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !27
  %20 = fcmp ugt float %19, 0.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = fcmp ogt float %19, 0x3FEFEFEFE0000000
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = tail call float @llvm.fmuladd.f32(float %19, float 2.550000e+02, float 5.000000e-01)
  %25 = fptoui float %24 to i8
  br label %26

26:                                               ; preds = %23, %21, %16
  %27 = phi i8 [ 0, %16 ], [ %25, %23 ], [ -1, %21 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !127
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !27
  %31 = fcmp ugt float %30, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = fcmp ogt float %30, 0x3FEFEFEFE0000000
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = tail call float @llvm.fmuladd.f32(float %30, float 2.550000e+02, float 5.000000e-01)
  %36 = fptoui float %35 to i8
  br label %37

37:                                               ; preds = %34, %32, %26
  %38 = phi i8 [ 0, %26 ], [ %36, %34 ], [ -1, %32 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %38, ptr %39, align 1, !tbaa !127
  %40 = load float, ptr %3, align 4, !tbaa !27
  %41 = fcmp ugt float %40, 0.000000e+00
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = fcmp ogt float %40, 0x3FEFEFEFE0000000
  br i1 %43, label %90, label %44

44:                                               ; preds = %42
  %45 = tail call float @llvm.fmuladd.f32(float %40, float 2.550000e+02, float 5.000000e-01)
  %46 = fptoui float %45 to i8
  br label %90

47:                                               ; preds = %2
  %48 = fdiv float 1.000000e+00, %4
  %49 = load float, ptr %1, align 4, !tbaa !27
  %50 = fmul float %48, %49
  %51 = fcmp ugt float %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = fcmp ogt float %50, 0x3FEFEFEFE0000000
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call float @llvm.fmuladd.f32(float %50, float 2.550000e+02, float 5.000000e-01)
  %56 = fptoui float %55 to i8
  br label %57

57:                                               ; preds = %54, %52, %47
  %58 = phi i8 [ 0, %47 ], [ %56, %54 ], [ -1, %52 ]
  store i8 %58, ptr %0, align 1, !tbaa !127
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !27
  %61 = fmul float %48, %60
  %62 = fcmp ugt float %61, 0.000000e+00
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = fcmp ogt float %61, 0x3FEFEFEFE0000000
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = tail call float @llvm.fmuladd.f32(float %61, float 2.550000e+02, float 5.000000e-01)
  %67 = fptoui float %66 to i8
  br label %68

68:                                               ; preds = %65, %63, %57
  %69 = phi i8 [ 0, %57 ], [ %67, %65 ], [ -1, %63 ]
  %70 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %69, ptr %70, align 1, !tbaa !127
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !27
  %73 = fmul float %48, %72
  %74 = fcmp ugt float %73, 0.000000e+00
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = fcmp ogt float %73, 0x3FEFEFEFE0000000
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = tail call float @llvm.fmuladd.f32(float %73, float 2.550000e+02, float 5.000000e-01)
  %79 = fptoui float %78 to i8
  br label %80

80:                                               ; preds = %77, %75, %68
  %81 = phi i8 [ 0, %68 ], [ %79, %77 ], [ -1, %75 ]
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !127
  %83 = load float, ptr %3, align 4, !tbaa !27
  %84 = fcmp ugt float %83, 0.000000e+00
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = fcmp ogt float %83, 0x3FEFEFEFE0000000
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = tail call float @llvm.fmuladd.f32(float %83, float 2.550000e+02, float 5.000000e-01)
  %89 = fptoui float %88 to i8
  br label %90

90:                                               ; preds = %80, %85, %87, %37, %42, %44
  %91 = phi i8 [ 0, %37 ], [ %46, %44 ], [ -1, %42 ], [ 0, %80 ], [ %89, %87 ], [ -1, %85 ]
  %92 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %91, ptr %92, align 1, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @paint_use_opacity_masking(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paint_delete_blur_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @image_undo_remove_masks() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @divide_round_i(i32 noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = shl nsw i32 %0, 1
  %4 = add nsw i32 %3, %1
  %5 = shl nsw i32 %1, 1
  %6 = sdiv i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i8, ptr %1, align 1, !tbaa !127
  store i8 %3, ptr %0, align 1, !tbaa !127
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !127
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !127
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !127
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !127
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !127
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @compare_len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %0, align 4, !tbaa !27
  %5 = load float, ptr %1, align 4, !tbaa !27
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !27
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !27
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !27
  %16 = fsub float %13, %15
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %18)
  %20 = fcmp ole float %19, %2
  %21 = zext i1 %20 to i8
  ret i8 %21
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ImagePaintState", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56, !10, i64 58, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !8, i64 104, !7, i64 112, !11, i64 120, !8, i64 124, !11, i64 132, !8, i64 136, !7, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!6, !7, i64 64}
!13 = !{!6, !7, i64 8}
!14 = !{!15, !11, i64 2432}
!15 = !{!"ImBuf", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !16, i64 112, !8, i64 120, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !7, i64 296, !7, i64 304, !11, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !11, i64 2376, !7, i64 2384, !11, i64 2392, !11, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !11, i64 2432, !17, i64 2436, !18, i64 2456}
!16 = !{!"float", !8, i64 0}
!17 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!18 = !{!"DDSData", !11, i64 0, !11, i64 4, !7, i64 8, !11, i64 16}
!19 = !{!6, !7, i64 48}
!20 = !{!21, !10, i64 1844}
!21 = !{!"Brush", !22, i64 0, !23, i64 120, !7, i64 144, !24, i64 152, !24, i64 464, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !8, i64 816, !16, i64 1840, !10, i64 1844, !10, i64 1846, !16, i64 1848, !11, i64 1852, !11, i64 1856, !11, i64 1860, !16, i64 1864, !11, i64 1868, !11, i64 1872, !11, i64 1876, !11, i64 1880, !16, i64 1884, !16, i64 1888, !8, i64 1892, !16, i64 1904, !8, i64 1908, !11, i64 1920, !16, i64 1924, !16, i64 1928, !11, i64 1932, !11, i64 1936, !11, i64 1940, !8, i64 1944, !8, i64 1945, !8, i64 1946, !8, i64 1947, !16, i64 1948, !16, i64 1952, !16, i64 1956, !16, i64 1960, !16, i64 1964, !11, i64 1968, !11, i64 1972, !11, i64 1976, !16, i64 1980, !16, i64 1984, !11, i64 1988, !11, i64 1992, !16, i64 1996, !8, i64 2000, !8, i64 2012, !8, i64 2024, !8, i64 2032, !8, i64 2040, !8, i64 2048}
!22 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!23 = !{!"BrushClone", !7, i64 0, !8, i64 8, !16, i64 16, !16, i64 20}
!24 = !{!"MTex", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !16, i64 116, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !10, i64 128, !10, i64 130, !8, i64 132, !8, i64 133, !16, i64 140, !16, i64 144, !16, i64 148, !16, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !16, i64 272, !16, i64 276, !16, i64 280, !16, i64 284, !16, i64 288, !16, i64 292, !16, i64 296, !16, i64 300, !16, i64 304, !16, i64 308}
!25 = !{!6, !10, i64 58}
!26 = !{!6, !7, i64 16}
!27 = !{!16, !16, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!30, !10, i64 32}
!30 = !{!"BrushPainter", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 24, !10, i64 32, !7, i64 40, !31, i64 48, !31, i64 64, !32, i64 80}
!31 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!32 = !{!"BrushPainterCache", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !11, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !11, i64 64, !11, i64 68}
!33 = !{!15, !7, i64 48}
!34 = !{!30, !7, i64 104}
!35 = !{!30, !7, i64 120}
!36 = !{!30, !7, i64 128}
!37 = !{i32 0, i32 2}
!38 = !{!6, !8, i64 136}
!39 = !{!30, !7, i64 8}
!40 = !{!30, !8, i64 80}
!41 = !{!7, !7, i64 0}
!42 = !{!30, !7, i64 136}
!43 = !{!30, !11, i64 88}
!44 = !{!30, !8, i64 81}
!45 = !{!21, !7, i64 168}
!46 = !{!21, !8, i64 1946}
!47 = !{!30, !8, i64 83}
!48 = !{!21, !7, i64 480}
!49 = !{!30, !8, i64 84}
!50 = !{!30, !7, i64 0}
!51 = !{!52, !7, i64 264}
!52 = !{!"Scene", !22, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !53, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !10, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !54, i64 280, !61, i64 4264, !53, i64 4296, !53, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !10, i64 4376, !10, i64 4378, !11, i64 4380, !53, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !7, i64 4608, !67, i64 4616, !7, i64 4640, !68, i64 4648, !68, i64 4656, !56, i64 4664, !57, i64 4824, !69, i64 4888, !7, i64 4952}
!53 = !{!"ListBase", !7, i64 0, !7, i64 8}
!54 = !{!"RenderData", !55, i64 0, !7, i64 248, !7, i64 256, !58, i64 264, !59, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !16, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !10, i64 432, !10, i64 434, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !10, i64 456, !10, i64 458, !10, i64 460, !10, i64 462, !10, i64 464, !10, i64 466, !11, i64 468, !10, i64 472, !10, i64 474, !10, i64 476, !10, i64 478, !10, i64 480, !10, i64 482, !11, i64 484, !11, i64 488, !10, i64 492, !10, i64 494, !11, i64 496, !11, i64 500, !10, i64 504, !10, i64 506, !10, i64 508, !10, i64 510, !10, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !10, i64 528, !10, i64 530, !10, i64 532, !10, i64 534, !10, i64 536, !10, i64 538, !10, i64 540, !10, i64 542, !31, i64 544, !31, i64 560, !17, i64 576, !53, i64 592, !10, i64 608, !10, i64 610, !16, i64 612, !16, i64 616, !16, i64 620, !16, i64 624, !11, i64 628, !16, i64 632, !16, i64 636, !16, i64 640, !16, i64 644, !10, i64 648, !10, i64 650, !10, i64 652, !10, i64 654, !10, i64 656, !10, i64 658, !16, i64 660, !16, i64 664, !10, i64 668, !10, i64 670, !16, i64 672, !16, i64 676, !8, i64 680, !11, i64 1704, !10, i64 1708, !10, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !10, i64 2524, !10, i64 2526, !16, i64 2528, !16, i64 2532, !10, i64 2536, !10, i64 2538, !16, i64 2540, !10, i64 2544, !10, i64 2546, !11, i64 2548, !10, i64 2552, !10, i64 2554, !10, i64 2556, !10, i64 2558, !16, i64 2560, !16, i64 2564, !7, i64 2568, !11, i64 2576, !16, i64 2580, !8, i64 2584, !60, i64 2616, !11, i64 3976, !11, i64 3980}
!55 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !10, i64 8, !10, i64 10, !16, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !56, i64 24, !57, i64 184}
!56 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !16, i64 136, !16, i64 140, !7, i64 144, !7, i64 152}
!57 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!58 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !10, i64 48, !10, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!59 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !16, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!60 = !{!"BakeData", !55, i64 0, !8, i64 248, !10, i64 1272, !10, i64 1274, !10, i64 1276, !10, i64 1278, !16, i64 1280, !16, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!61 = !{!"AudioData", !11, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !11, i64 16, !10, i64 20, !10, i64 22, !16, i64 24, !16, i64 28}
!62 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!63 = !{!"GameData", !62, i64 0, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !10, i64 32, !8, i64 34, !64, i64 40, !10, i64 64, !10, i64 66, !16, i64 68, !65, i64 72, !16, i64 128, !16, i64 132, !11, i64 136, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180}
!64 = !{!"GameDome", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !16, i64 8, !16, i64 12, !7, i64 16}
!65 = !{!"RecastData", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !11, i64 40, !16, i64 44, !16, i64 48, !10, i64 52, !10, i64 54}
!66 = !{!"UnitSettings", !16, i64 0, !8, i64 4, !8, i64 5, !10, i64 6}
!67 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!68 = !{!"long", !8, i64 0}
!69 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!70 = !{!21, !11, i64 1856}
!71 = !{!21, !11, i64 1936}
!72 = !{!32, !16, i64 20}
!73 = !{!21, !16, i64 268}
!74 = !{!21, !16, i64 580}
!75 = !{!30, !7, i64 40}
!76 = !{!21, !8, i64 284}
!77 = !{!78, !16, i64 52}
!78 = !{!"UnifiedPaintSettings", !11, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !8, i64 16, !8, i64 28, !11, i64 40, !8, i64 44, !16, i64 52, !11, i64 56, !11, i64 60, !8, i64 64, !8, i64 65, !16, i64 72, !8, i64 76, !11, i64 84, !16, i64 88, !8, i64 92, !8, i64 100, !11, i64 108, !7, i64 112, !16, i64 120, !11, i64 124}
!79 = !{!21, !8, i64 596}
!80 = !{!21, !11, i64 1860}
!81 = !{!32, !11, i64 8}
!82 = !{!32, !16, i64 16}
!83 = !{!32, !7, i64 48}
!84 = !{!32, !7, i64 40}
!85 = !{!32, !16, i64 12}
!86 = !{!32, !7, i64 24}
!87 = !{!6, !7, i64 24}
!88 = !{!6, !10, i64 56}
!89 = !{!6, !7, i64 72}
!90 = !{!6, !7, i64 80}
!91 = !{!15, !11, i64 16}
!92 = !{!15, !11, i64 20}
!93 = !{!94, !11, i64 0}
!94 = !{!"ImagePaintRegion", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!95 = !{!94, !11, i64 4}
!96 = !{!94, !11, i64 16}
!97 = !{!94, !11, i64 20}
!98 = !{!6, !8, i64 104}
!99 = !{!94, !11, i64 8}
!100 = !{!94, !11, i64 12}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = !{!6, !7, i64 32}
!106 = !{!107, !7, i64 40}
!107 = !{!"SpaceImage", !7, i64 0, !7, i64 8, !53, i64 16, !11, i64 32, !11, i64 36, !7, i64 40, !108, i64 48, !7, i64 88, !109, i64 96, !110, i64 5360, !7, i64 10520, !8, i64 10528, !16, i64 10536, !16, i64 10540, !16, i64 10544, !16, i64 10548, !16, i64 10552, !8, i64 10556, !8, i64 10557, !10, i64 10558, !10, i64 10560, !10, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !111, i64 10568}
!108 = !{!"ImageUser", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !10, i64 28, !10, i64 30, !10, i64 32, !10, i64 34, !11, i64 36}
!109 = !{!"Scopes", !11, i64 0, !11, i64 4, !11, i64 8, !16, i64 12, !11, i64 16, !16, i64 20, !16, i64 24, !11, i64 28, !16, i64 32, !11, i64 36, !8, i64 40, !110, i64 64, !7, i64 5224, !7, i64 5232, !7, i64 5240, !7, i64 5248, !11, i64 5256, !11, i64 5260}
!110 = !{!"Histogram", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !16, i64 5128, !16, i64 5132, !10, i64 5136, !10, i64 5138, !11, i64 5140, !8, i64 5144}
!111 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!112 = !{!6, !7, i64 96}
!113 = !{!114, !7, i64 120}
!114 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !53, i64 128, !7, i64 144, !7, i64 152, !10, i64 160, !8, i64 162}
!115 = !{!6, !7, i64 88}
!116 = !{!6, !7, i64 144}
!117 = !{!118, !7, i64 1280}
!118 = !{!"Image", !22, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !8, i64 1176, !10, i64 1240, !10, i64 1242, !10, i64 1244, !10, i64 1246, !10, i64 1248, !10, i64 1250, !11, i64 1252, !10, i64 1256, !10, i64 1258, !10, i64 1260, !10, i64 1262, !10, i64 1264, !10, i64 1266, !11, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !16, i64 1296, !11, i64 1300, !10, i64 1304, !10, i64 1306, !11, i64 1308, !11, i64 1312, !8, i64 1316, !8, i64 1317, !10, i64 1318, !8, i64 1320, !16, i64 1336, !16, i64 1340, !69, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!119 = !{!118, !7, i64 1168}
!120 = !{!15, !11, i64 28}
!121 = !{!15, !7, i64 40}
!122 = !{!21, !7, i64 120}
!123 = !{!30, !8, i64 82}
!124 = !{!107, !10, i64 10562}
!125 = !{!30, !7, i64 112}
!126 = !{!21, !16, i64 1904}
!127 = !{!8, !8, i64 0}
!128 = distinct !{!128, !102}
!129 = distinct !{!129, !102}
!130 = distinct !{!130, !102}
!131 = distinct !{!131, !102}
!132 = !{!21, !16, i64 1996}
!133 = distinct !{!133, !102}
!134 = distinct !{!134, !102}
!135 = !{i8 0, i8 2}
!136 = !{!21, !11, i64 1940}
!137 = !{!21, !7, i64 800}
!138 = distinct !{!138, !102}
!139 = distinct !{!139, !102}
!140 = distinct !{!140, !102}
!141 = distinct !{!141, !102}
!142 = !{!31, !16, i64 0}
!143 = !{!31, !16, i64 8}
!144 = !{!31, !16, i64 4}
!145 = !{!31, !16, i64 12}
!146 = !{!32, !7, i64 56}
!147 = !{!32, !11, i64 64}
!148 = !{!32, !11, i64 68}
!149 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27}
!150 = !{!10, !10, i64 0}
!151 = distinct !{!151, !102}
!152 = distinct !{!152, !102}
!153 = distinct !{!153, !102}
!154 = distinct !{!154, !102}
!155 = !{!32, !8, i64 0}
!156 = !{!32, !7, i64 32}
!157 = distinct !{!157, !102}
!158 = distinct !{!158, !102}
!159 = !{!30, !11, i64 144}
!160 = distinct !{!160, !102}
!161 = distinct !{!161, !102}
!162 = distinct !{!162, !102}
!163 = distinct !{!163, !102}
!164 = !{!21, !16, i64 1984}
!165 = !{!166, !11, i64 8}
!166 = !{!"", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!167 = !{!166, !11, i64 16}
!168 = !{!166, !7, i64 0}
!169 = distinct !{!169, !102}
!170 = distinct !{!170, !102}
!171 = distinct !{!171, !102}
!172 = distinct !{!172, !102}
!173 = distinct !{!173, !102}
!174 = !{!15, !8, i64 24}
!175 = !{!15, !11, i64 32}
