; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_image_2d.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_image_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImagePaintRegion = type { i32, i32, i32, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ImagePaintState = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, [2 x float], i32, i8, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ListBase = type { ptr, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
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
%struct.BlurKernel = type { ptr, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

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

; Function Attrs: nounwind uwtable
define dso_local void @paint_2d_stroke(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x %struct.ImagePaintRegion], align 16
  %20 = alloca [2 x i32], align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca [4 x %struct.ImagePaintRegion], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [4 x float], align 16
  %32 = alloca [3 x float], align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.ImBuf, align 8
  %40 = alloca %struct.ImBuf, align 8
  %41 = alloca [2 x float], align 4
  %42 = alloca [2 x float], align 4
  %43 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #7
  %44 = load ptr, ptr %0, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  %47 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %48, i64 0, i32 6
  %51 = select i1 %49, ptr null, ptr %50
  %52 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %46, ptr noundef %51, ptr noundef null) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %7
  %55 = getelementptr inbounds %struct.ImBuf, ptr %52, i64 0, i32 38
  %56 = load i32, ptr %55, align 8, !tbaa !43
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  br label %60

60:                                               ; preds = %54, %7
  %61 = phi i8 [ 1, %7 ], [ %59, %54 ]
  br i1 %53, label %1457, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.Brush, ptr %64, i64 0, i32 12
  %66 = load i16, ptr %65, align 4, !tbaa !49
  %67 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 8
  %68 = icmp eq i8 %3, 0
  %69 = select i1 %68, i16 %66, i16 6
  store i16 %69, ptr %67, align 2, !tbaa !54
  %70 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !55
  %72 = load float, ptr %2, align 4, !tbaa !56
  %73 = getelementptr inbounds float, ptr %2, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !56
  %75 = getelementptr inbounds [2 x float], ptr %41, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %71, float noundef %72, float noundef %74, ptr noundef nonnull %41, ptr noundef nonnull %75) #7
  %76 = load ptr, ptr %70, align 8, !tbaa !55
  %77 = load float, ptr %1, align 4, !tbaa !56
  %78 = getelementptr inbounds float, ptr %1, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !56
  %80 = getelementptr inbounds [2 x float], ptr %42, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %76, float noundef %77, float noundef %79, ptr noundef nonnull %42, ptr noundef nonnull %80) #7
  %81 = getelementptr inbounds %struct.ImBuf, ptr %52, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !57
  %83 = sitofp i32 %82 to float
  %84 = load float, ptr %41, align 4, !tbaa !56
  %85 = fmul float %84, %83
  store float %85, ptr %41, align 4, !tbaa !56
  %86 = getelementptr inbounds %struct.ImBuf, ptr %52, i64 0, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !58
  %88 = sitofp i32 %87 to float
  %89 = load float, ptr %75, align 4, !tbaa !56
  %90 = fmul float %89, %88
  store float %90, ptr %75, align 4, !tbaa !56
  %91 = load float, ptr %42, align 4, !tbaa !56
  %92 = fmul float %91, %83
  store float %92, ptr %42, align 4, !tbaa !56
  %93 = load float, ptr %80, align 4, !tbaa !56
  %94 = fmul float %93, %88
  store float %94, ptr %80, align 4, !tbaa !56
  %95 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 4
  %96 = load i16, ptr %95, align 8, !tbaa !59
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #7
  %99 = load ptr, ptr %70, align 8, !tbaa !55
  %100 = getelementptr inbounds [2 x float], ptr %43, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %99, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %43, ptr noundef nonnull %100) #7
  %101 = load float, ptr %43, align 4, !tbaa !56
  %102 = load i32, ptr %81, align 8, !tbaa !57
  %103 = sitofp i32 %102 to float
  %104 = fmul float %101, %103
  %105 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 3
  store float %104, ptr %105, align 8, !tbaa !56
  %106 = load float, ptr %100, align 4, !tbaa !56
  %107 = load i32, ptr %86, align 4, !tbaa !58
  %108 = sitofp i32 %107 to float
  %109 = fmul float %106, %108
  %110 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 3, i64 1
  store float %109, ptr %110, align 4, !tbaa !56
  store i16 0, ptr %95, align 8, !tbaa !59
  %111 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2
  %112 = load float, ptr %41, align 4, !tbaa !56
  store float %112, ptr %111, align 4, !tbaa !56
  %113 = load float, ptr %75, align 4, !tbaa !56
  %114 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2, i64 1
  store float %113, ptr %114, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #7
  br label %118

115:                                              ; preds = %62
  %116 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2
  store float %92, ptr %116, align 4, !tbaa !56
  %117 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2, i64 1
  store float %94, ptr %117, align 4, !tbaa !56
  br label %118

118:                                              ; preds = %115, %98
  %119 = getelementptr inbounds %struct.ImBuf, ptr %52, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !63
  %121 = icmp ne ptr %120, null
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !64
  %125 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8
  %126 = load i8, ptr %125, align 8, !tbaa !65
  %127 = icmp eq i8 %126, %122
  br i1 %127, label %153, label %128

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !66
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @IMB_freeImBuf(ptr noundef nonnull %130) #7
  br label %133

133:                                              ; preds = %132, %128
  %134 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 11
  %135 = load ptr, ptr %134, align 8, !tbaa !67
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %138(ptr noundef nonnull %135) #7
  br label %139

139:                                              ; preds = %137, %133
  %140 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 12
  %141 = load ptr, ptr %140, align 8, !tbaa !69
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %144(ptr noundef nonnull %141) #7
  br label %145

145:                                              ; preds = %143, %139
  %146 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 13
  %147 = load ptr, ptr %146, align 8, !tbaa !70
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %150(ptr noundef nonnull %147) #7
  br label %151

151:                                              ; preds = %149, %145
  store ptr null, ptr %129, align 8, !tbaa !66
  %152 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  store i32 -1, ptr %152, align 8, !tbaa !71
  br label %153

153:                                              ; preds = %151, %118
  store i8 %122, ptr %125, align 8, !tbaa !65
  %154 = icmp ne i8 %61, 0
  %155 = and i1 %154, %121
  %156 = zext i1 %155 to i8
  %157 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 1
  store i8 %156, ptr %157, align 1, !tbaa !72
  %158 = getelementptr inbounds %struct.Brush, ptr %124, i64 0, i32 3, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !73
  %160 = icmp eq ptr %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.Brush, ptr %124, i64 0, i32 36
  %163 = load i8, ptr %162, align 2, !tbaa !74
  %164 = icmp eq i8 %163, 0
  %165 = zext i1 %164 to i8
  br label %166

166:                                              ; preds = %153, %161
  %167 = phi i8 [ 0, %153 ], [ %165, %161 ]
  %168 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 3
  store i8 %167, ptr %168, align 1, !tbaa !75
  %169 = getelementptr inbounds %struct.Brush, ptr %124, i64 0, i32 4, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !76
  %171 = icmp ne ptr %170, null
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 4
  store i8 %172, ptr %173, align 4, !tbaa !77
  %174 = load ptr, ptr %44, align 8, !tbaa !78
  %175 = getelementptr inbounds %struct.Scene, ptr %174, i64 0, i32 20
  %176 = load ptr, ptr %175, align 8, !tbaa !79
  %177 = load ptr, ptr %123, align 8, !tbaa !64
  %178 = fmul float %6, 2.000000e+00
  %179 = fptosi float %178 to i32
  %180 = getelementptr inbounds %struct.Brush, ptr %177, i64 0, i32 16
  %181 = load i32, ptr %180, align 8, !tbaa !98
  %182 = and i32 %181, 2097152
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %166
  %185 = getelementptr inbounds %struct.Brush, ptr %177, i64 0, i32 32
  %186 = load i32, ptr %185, align 8, !tbaa !99
  %187 = add i32 %186, -1
  %188 = icmp ult i32 %187, 2
  br i1 %188, label %193, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 8
  %191 = load float, ptr %190, align 4, !tbaa !100
  %192 = fcmp une float %191, %4
  br label %193

193:                                              ; preds = %189, %184, %166
  %194 = phi i1 [ false, %166 ], [ %192, %189 ], [ true, %184 ]
  %195 = getelementptr inbounds %struct.Brush, ptr %177, i64 0, i32 3, i32 13
  %196 = load float, ptr %195, align 4, !tbaa !101
  %197 = fneg float %196
  %198 = getelementptr inbounds %struct.Brush, ptr %177, i64 0, i32 4, i32 13
  %199 = load float, ptr %198, align 4, !tbaa !102
  %200 = fneg float %199
  %201 = call ptr @BKE_image_pool_new() #7
  %202 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 5
  store ptr %201, ptr %202, align 8, !tbaa !103
  %203 = load i8, ptr %168, align 1, !tbaa !75
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %226, label %205

205:                                              ; preds = %193
  %206 = getelementptr inbounds %struct.Brush, ptr %177, i64 0, i32 3, i32 20
  %207 = load i8, ptr %206, align 4, !tbaa !104
  switch i8 %207, label %212 [
    i8 0, label %208
    i8 4, label %219
  ]

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.ToolSettings, ptr %176, i64 0, i32 73, i32 8
  %210 = load float, ptr %209, align 4, !tbaa !105
  %211 = fsub float %210, %196
  br label %219

212:                                              ; preds = %205
  %213 = load i32, ptr %180, align 8, !tbaa !98
  %214 = and i32 %213, 256
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %215, i1 true, i1 %194
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i8
  br label %219

219:                                              ; preds = %212, %208, %205
  %220 = phi float [ %211, %208 ], [ %197, %205 ], [ %197, %212 ]
  %221 = phi i8 [ 0, %208 ], [ 0, %205 ], [ %218, %212 ]
  %222 = phi i32 [ 0, %208 ], [ 1, %205 ], [ 0, %212 ]
  %223 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 3
  %224 = zext i8 %207 to i32
  %225 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 6
  call fastcc void @brush_painter_2d_tex_mapping(ptr noundef nonnull %0, i32 noundef %179, ptr noundef nonnull %223, ptr noundef nonnull %41, ptr noundef nonnull %2, i32 noundef %224, ptr noundef nonnull %225)
  br label %226

226:                                              ; preds = %219, %193
  %227 = phi float [ %220, %219 ], [ %197, %193 ]
  %228 = phi i8 [ %221, %219 ], [ 0, %193 ]
  %229 = phi i32 [ %222, %219 ], [ 0, %193 ]
  %230 = load i8, ptr %173, align 4, !tbaa !77
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %622, label %232

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.Brush, ptr %177, i64 0, i32 4, i32 20
  %234 = load i8, ptr %233, align 4, !tbaa !107
  switch i8 %234, label %239 [
    i8 0, label %235
    i8 4, label %246
  ]

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.ToolSettings, ptr %176, i64 0, i32 73, i32 8
  %237 = load float, ptr %236, align 4, !tbaa !105
  %238 = fsub float %237, %199
  br label %246

239:                                              ; preds = %232
  %240 = load i32, ptr %180, align 8, !tbaa !98
  %241 = and i32 %240, 256
  %242 = icmp eq i32 %241, 0
  %243 = lshr exact i32 %241, 8
  %244 = xor i32 %243, 1
  %245 = zext i1 %242 to i8
  br label %246

246:                                              ; preds = %239, %235, %232
  %247 = phi float [ %238, %235 ], [ %200, %232 ], [ %200, %239 ]
  %248 = phi i32 [ 0, %235 ], [ 1, %232 ], [ %244, %239 ]
  %249 = phi i8 [ 0, %235 ], [ 0, %232 ], [ %245, %239 ]
  %250 = getelementptr inbounds %struct.Brush, ptr %177, i64 0, i32 17
  %251 = load i32, ptr %250, align 4, !tbaa !108
  %252 = icmp ne i32 %251, 0
  %253 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 5
  %254 = load i32, ptr %253, align 8, !tbaa !109
  %255 = icmp eq i32 %254, %179
  br i1 %255, label %256, label %264

256:                                              ; preds = %246
  %257 = and i32 %248, 255
  %258 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 7
  %259 = load float, ptr %258, align 8, !tbaa !110
  %260 = fcmp une float %247, %259
  %261 = icmp ne i32 %257, 0
  %262 = select i1 %252, i1 true, i1 %261
  %263 = or i1 %262, %260
  br i1 %263, label %264, label %622

264:                                              ; preds = %256, %246
  %265 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 12
  %266 = load ptr, ptr %265, align 8, !tbaa !111
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %269(ptr noundef nonnull %266) #7
  store ptr null, ptr %265, align 8, !tbaa !111
  br label %270

270:                                              ; preds = %268, %264
  %271 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 3
  %272 = load i8, ptr %233, align 4, !tbaa !107
  %273 = zext i8 %272 to i32
  %274 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7
  call fastcc void @brush_painter_2d_tex_mapping(ptr noundef nonnull %0, i32 noundef %179, ptr noundef nonnull %271, ptr noundef nonnull %41, ptr noundef nonnull %2, i32 noundef %273, ptr noundef nonnull %274)
  %275 = icmp eq i8 %249, 0
  %276 = select i1 %252, i1 true, i1 %275
  br i1 %276, label %580, label %277

277:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #7
  %278 = load ptr, ptr %265, align 8, !tbaa !111
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !68
  %282 = sext i32 %179 to i64
  %283 = shl nsw i64 %282, 1
  %284 = mul i64 %283, %282
  %285 = call ptr %281(i64 noundef %284, ptr noundef nonnull @.str.4) #7
  store ptr %285, ptr %265, align 8, !tbaa !111
  br label %286

286:                                              ; preds = %280, %277
  %287 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 13
  %288 = load ptr, ptr %287, align 8, !tbaa !112
  %289 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !68
  %290 = sext i32 %179 to i64
  %291 = shl nsw i64 %290, 1
  %292 = mul i64 %291, %290
  %293 = call ptr %289(i64 noundef %292, ptr noundef nonnull @.str.4) #7
  store ptr %293, ptr %287, align 8, !tbaa !112
  %294 = icmp eq ptr %288, null
  br i1 %294, label %323, label %295

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 2480, ptr nonnull %39) #7
  call void @llvm.lifetime.start.p0(i64 2480, ptr nonnull %40) #7
  %296 = getelementptr inbounds %struct.ImBuf, ptr %39, i64 0, i32 3
  store i32 %179, ptr %296, align 4, !tbaa !58
  %297 = getelementptr inbounds %struct.ImBuf, ptr %39, i64 0, i32 2
  store i32 %179, ptr %297, align 8, !tbaa !57
  %298 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 14
  %299 = load i32, ptr %298, align 8, !tbaa !113
  %300 = getelementptr inbounds %struct.ImBuf, ptr %40, i64 0, i32 2
  store i32 %299, ptr %300, align 8, !tbaa !57
  %301 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 15
  %302 = load i32, ptr %301, align 4, !tbaa !114
  %303 = getelementptr inbounds %struct.ImBuf, ptr %40, i64 0, i32 3
  store i32 %302, ptr %303, align 4, !tbaa !58
  store i32 0, ptr %36, align 4, !tbaa !115
  store i32 0, ptr %35, align 4, !tbaa !115
  store i32 %299, ptr %37, align 4, !tbaa !115
  store i32 %302, ptr %38, align 4, !tbaa !115
  %304 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2
  %305 = load float, ptr %304, align 8, !tbaa !56
  %306 = fptosi float %305 to i32
  %307 = load float, ptr %41, align 4, !tbaa !56
  %308 = fptosi float %307 to i32
  %309 = sdiv i32 %179, 2
  %310 = sdiv i32 %299, -2
  %311 = add nsw i32 %310, %309
  %312 = add i32 %311, %306
  %313 = sub i32 %312, %308
  store i32 %313, ptr %33, align 4, !tbaa !115
  %314 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !56
  %316 = fptosi float %315 to i32
  %317 = load float, ptr %75, align 4, !tbaa !56
  %318 = fptosi float %317 to i32
  %319 = sdiv i32 %302, -2
  %320 = add nsw i32 %319, %309
  %321 = add i32 %320, %316
  %322 = sub i32 %321, %318
  store i32 %322, ptr %34, align 4, !tbaa !115
  call void @IMB_rectclip(ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38) #7
  call void @llvm.lifetime.end.p0(i64 2480, ptr nonnull %40) #7
  call void @llvm.lifetime.end.p0(i64 2480, ptr nonnull %39) #7
  br label %324

323:                                              ; preds = %286
  store i32 0, ptr %36, align 4, !tbaa !115
  store i32 0, ptr %35, align 4, !tbaa !115
  store i32 0, ptr %34, align 4, !tbaa !115
  store i32 0, ptr %33, align 4, !tbaa !115
  store i32 0, ptr %38, align 4, !tbaa !115
  store i32 0, ptr %37, align 4, !tbaa !115
  br label %324

324:                                              ; preds = %323, %295
  %325 = load i32, ptr %33, align 4, !tbaa !115
  %326 = call i32 @llvm.smin.i32(i32 %325, i32 %179)
  %327 = load i32, ptr %34, align 4, !tbaa !115
  %328 = call i32 @llvm.smin.i32(i32 %327, i32 %179)
  %329 = load i32, ptr %37, align 4, !tbaa !115
  %330 = add nsw i32 %329, %325
  %331 = call i32 @llvm.smin.i32(i32 %330, i32 %179)
  %332 = load i32, ptr %38, align 4, !tbaa !115
  %333 = add nsw i32 %332, %327
  %334 = call i32 @llvm.smin.i32(i32 %333, i32 %179)
  %335 = icmp slt i32 %325, %331
  %336 = icmp slt i32 %327, %334
  %337 = select i1 %335, i1 %336, i1 false
  br i1 %337, label %338, label %401

338:                                              ; preds = %324
  %339 = load ptr, ptr %44, align 8, !tbaa !78
  %340 = load ptr, ptr %123, align 8, !tbaa !64
  %341 = load float, ptr %274, align 8, !tbaa.struct !116
  %342 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 1
  %343 = load float, ptr %342, align 4, !tbaa.struct !117
  %344 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 2
  %345 = load float, ptr %344, align 8, !tbaa.struct !118
  %346 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 3
  %347 = load float, ptr %346, align 4, !tbaa.struct !119
  %348 = load ptr, ptr %202, align 8, !tbaa !103
  %349 = load ptr, ptr %265, align 8, !tbaa !69
  %350 = load ptr, ptr %287, align 8, !tbaa !70
  %351 = load i32, ptr %36, align 4, !tbaa !115
  %352 = load i32, ptr %35, align 4, !tbaa !115
  %353 = getelementptr inbounds float, ptr %12, i64 1
  %354 = getelementptr inbounds float, ptr %12, i64 2
  %355 = sub i32 %351, %328
  %356 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 14
  %357 = sub i32 %352, %326
  %358 = sext i32 %326 to i64
  %359 = sext i32 %328 to i64
  br label %360

360:                                              ; preds = %397, %338
  %361 = phi i64 [ %359, %338 ], [ %398, %397 ]
  %362 = phi i16 [ undef, %338 ], [ %393, %397 ]
  %363 = mul nsw i64 %361, %290
  %364 = trunc i64 %361 to i32
  %365 = sitofp i32 %364 to float
  %366 = call float @llvm.fmuladd.f32(float %365, float %347, float %345)
  %367 = add i32 %355, %364
  br label %368

368:                                              ; preds = %392, %360
  %369 = phi i64 [ %358, %360 ], [ %394, %392 ]
  %370 = phi i16 [ %362, %360 ], [ %393, %392 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #7
  %371 = add nsw i64 %369, %363
  %372 = getelementptr inbounds i16, ptr %349, i64 %371
  %373 = getelementptr inbounds i16, ptr %350, i64 %371
  br i1 %294, label %374, label %381

374:                                              ; preds = %368
  %375 = trunc i64 %369 to i32
  %376 = sitofp i32 %375 to float
  %377 = call float @llvm.fmuladd.f32(float %376, float %343, float %341)
  store float %377, ptr %12, align 4, !tbaa !56
  store float %366, ptr %353, align 4, !tbaa !56
  store float 0.000000e+00, ptr %354, align 4, !tbaa !56
  %378 = call float @BKE_brush_sample_masktex(ptr noundef %339, ptr noundef %340, ptr noundef nonnull %12, i32 noundef 0, ptr noundef %348) #7
  %379 = fmul float %378, 6.553500e+04
  %380 = fptoui float %379 to i16
  br label %381

381:                                              ; preds = %374, %368
  %382 = phi i16 [ %370, %368 ], [ %380, %374 ]
  br i1 %294, label %392, label %383

383:                                              ; preds = %381
  %384 = load i32, ptr %356, align 8, !tbaa !120
  %385 = mul i32 %384, %367
  %386 = trunc i64 %369 to i32
  %387 = add i32 %357, %386
  %388 = add i32 %387, %385
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i16, ptr %288, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !121
  br label %392

392:                                              ; preds = %383, %381
  %393 = phi i16 [ %391, %383 ], [ %382, %381 ]
  store i16 %393, ptr %373, align 2, !tbaa !121
  store i16 %393, ptr %372, align 2, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #7
  %394 = add nsw i64 %369, 1
  %395 = trunc i64 %394 to i32
  %396 = icmp eq i32 %331, %395
  br i1 %396, label %397, label %368, !llvm.loop !122

397:                                              ; preds = %392
  %398 = add nsw i64 %361, 1
  %399 = trunc i64 %398 to i32
  %400 = icmp eq i32 %334, %399
  br i1 %400, label %401, label %360, !llvm.loop !125

401:                                              ; preds = %397, %324
  br i1 %294, label %404, label %402

402:                                              ; preds = %401
  %403 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %403(ptr noundef nonnull %288) #7
  br label %404

404:                                              ; preds = %402, %401
  %405 = icmp sgt i32 %326, 0
  %406 = icmp sgt i32 %179, 0
  %407 = and i1 %406, %405
  br i1 %407, label %408, label %447

408:                                              ; preds = %404
  %409 = load ptr, ptr %44, align 8, !tbaa !78
  %410 = load ptr, ptr %123, align 8, !tbaa !64
  %411 = load float, ptr %274, align 8, !tbaa.struct !116
  %412 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 1
  %413 = load float, ptr %412, align 4, !tbaa.struct !117
  %414 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 2
  %415 = load float, ptr %414, align 8, !tbaa.struct !118
  %416 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 3
  %417 = load float, ptr %416, align 4, !tbaa.struct !119
  %418 = load ptr, ptr %202, align 8, !tbaa !103
  %419 = load ptr, ptr %265, align 8, !tbaa !69
  %420 = load ptr, ptr %287, align 8, !tbaa !70
  %421 = getelementptr inbounds float, ptr %11, i64 1
  %422 = getelementptr inbounds float, ptr %11, i64 2
  %423 = zext i32 %179 to i64
  %424 = zext i32 %326 to i64
  br label %425

425:                                              ; preds = %444, %408
  %426 = phi i64 [ 0, %408 ], [ %445, %444 ]
  %427 = mul nsw i64 %426, %290
  %428 = trunc i64 %426 to i32
  %429 = sitofp i32 %428 to float
  %430 = call float @llvm.fmuladd.f32(float %429, float %417, float %415)
  br label %431

431:                                              ; preds = %431, %425
  %432 = phi i64 [ 0, %425 ], [ %442, %431 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #7
  %433 = add nsw i64 %432, %427
  %434 = getelementptr inbounds i16, ptr %419, i64 %433
  %435 = getelementptr inbounds i16, ptr %420, i64 %433
  %436 = trunc i64 %432 to i32
  %437 = sitofp i32 %436 to float
  %438 = call float @llvm.fmuladd.f32(float %437, float %413, float %411)
  store float %438, ptr %11, align 4, !tbaa !56
  store float %430, ptr %421, align 4, !tbaa !56
  store float 0.000000e+00, ptr %422, align 4, !tbaa !56
  %439 = call float @BKE_brush_sample_masktex(ptr noundef %409, ptr noundef %410, ptr noundef nonnull %11, i32 noundef 0, ptr noundef %418) #7
  %440 = fmul float %439, 6.553500e+04
  %441 = fptoui float %440 to i16
  store i16 %441, ptr %435, align 2, !tbaa !121
  store i16 %441, ptr %434, align 2, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #7
  %442 = add nuw nsw i64 %432, 1
  %443 = icmp eq i64 %442, %424
  br i1 %443, label %444, label %431, !llvm.loop !122

444:                                              ; preds = %431
  %445 = add nuw nsw i64 %426, 1
  %446 = icmp eq i64 %445, %423
  br i1 %446, label %447, label %425, !llvm.loop !125

447:                                              ; preds = %444, %404
  %448 = icmp slt i32 %330, %179
  %449 = and i1 %406, %448
  br i1 %449, label %450, label %490

450:                                              ; preds = %447
  %451 = load ptr, ptr %44, align 8, !tbaa !78
  %452 = load ptr, ptr %123, align 8, !tbaa !64
  %453 = load float, ptr %274, align 8, !tbaa.struct !116
  %454 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 1
  %455 = load float, ptr %454, align 4, !tbaa.struct !117
  %456 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 2
  %457 = load float, ptr %456, align 8, !tbaa.struct !118
  %458 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 3
  %459 = load float, ptr %458, align 4, !tbaa.struct !119
  %460 = load ptr, ptr %202, align 8, !tbaa !103
  %461 = load ptr, ptr %265, align 8, !tbaa !69
  %462 = load ptr, ptr %287, align 8, !tbaa !70
  %463 = getelementptr inbounds float, ptr %10, i64 1
  %464 = getelementptr inbounds float, ptr %10, i64 2
  %465 = sext i32 %331 to i64
  %466 = zext i32 %179 to i64
  br label %467

467:                                              ; preds = %487, %450
  %468 = phi i64 [ 0, %450 ], [ %488, %487 ]
  %469 = mul nsw i64 %468, %290
  %470 = trunc i64 %468 to i32
  %471 = sitofp i32 %470 to float
  %472 = call float @llvm.fmuladd.f32(float %471, float %459, float %457)
  br label %473

473:                                              ; preds = %473, %467
  %474 = phi i64 [ %465, %467 ], [ %484, %473 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  %475 = add nsw i64 %474, %469
  %476 = getelementptr inbounds i16, ptr %461, i64 %475
  %477 = getelementptr inbounds i16, ptr %462, i64 %475
  %478 = trunc i64 %474 to i32
  %479 = sitofp i32 %478 to float
  %480 = call float @llvm.fmuladd.f32(float %479, float %455, float %453)
  store float %480, ptr %10, align 4, !tbaa !56
  store float %472, ptr %463, align 4, !tbaa !56
  store float 0.000000e+00, ptr %464, align 4, !tbaa !56
  %481 = call float @BKE_brush_sample_masktex(ptr noundef %451, ptr noundef %452, ptr noundef nonnull %10, i32 noundef 0, ptr noundef %460) #7
  %482 = fmul float %481, 6.553500e+04
  %483 = fptoui float %482 to i16
  store i16 %483, ptr %477, align 2, !tbaa !121
  store i16 %483, ptr %476, align 2, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  %484 = add nsw i64 %474, 1
  %485 = trunc i64 %484 to i32
  %486 = icmp eq i32 %485, %179
  br i1 %486, label %487, label %473, !llvm.loop !122

487:                                              ; preds = %473
  %488 = add nuw nsw i64 %468, 1
  %489 = icmp eq i64 %488, %466
  br i1 %489, label %490, label %467, !llvm.loop !125

490:                                              ; preds = %487, %447
  %491 = icmp sgt i32 %328, 0
  %492 = select i1 %335, i1 %491, i1 false
  br i1 %492, label %493, label %533

493:                                              ; preds = %490
  %494 = load ptr, ptr %44, align 8, !tbaa !78
  %495 = load ptr, ptr %123, align 8, !tbaa !64
  %496 = load float, ptr %274, align 8, !tbaa.struct !116
  %497 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 1
  %498 = load float, ptr %497, align 4, !tbaa.struct !117
  %499 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 2
  %500 = load float, ptr %499, align 8, !tbaa.struct !118
  %501 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 3
  %502 = load float, ptr %501, align 4, !tbaa.struct !119
  %503 = load ptr, ptr %202, align 8, !tbaa !103
  %504 = load ptr, ptr %265, align 8, !tbaa !69
  %505 = load ptr, ptr %287, align 8, !tbaa !70
  %506 = getelementptr inbounds float, ptr %9, i64 1
  %507 = getelementptr inbounds float, ptr %9, i64 2
  %508 = sext i32 %326 to i64
  %509 = zext i32 %328 to i64
  br label %510

510:                                              ; preds = %530, %493
  %511 = phi i64 [ 0, %493 ], [ %531, %530 ]
  %512 = mul nsw i64 %511, %290
  %513 = trunc i64 %511 to i32
  %514 = sitofp i32 %513 to float
  %515 = call float @llvm.fmuladd.f32(float %514, float %502, float %500)
  br label %516

516:                                              ; preds = %516, %510
  %517 = phi i64 [ %508, %510 ], [ %527, %516 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %518 = add nsw i64 %517, %512
  %519 = getelementptr inbounds i16, ptr %504, i64 %518
  %520 = getelementptr inbounds i16, ptr %505, i64 %518
  %521 = trunc i64 %517 to i32
  %522 = sitofp i32 %521 to float
  %523 = call float @llvm.fmuladd.f32(float %522, float %498, float %496)
  store float %523, ptr %9, align 4, !tbaa !56
  store float %515, ptr %506, align 4, !tbaa !56
  store float 0.000000e+00, ptr %507, align 4, !tbaa !56
  %524 = call float @BKE_brush_sample_masktex(ptr noundef %494, ptr noundef %495, ptr noundef nonnull %9, i32 noundef 0, ptr noundef %503) #7
  %525 = fmul float %524, 6.553500e+04
  %526 = fptoui float %525 to i16
  store i16 %526, ptr %520, align 2, !tbaa !121
  store i16 %526, ptr %519, align 2, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  %527 = add nsw i64 %517, 1
  %528 = trunc i64 %527 to i32
  %529 = icmp eq i32 %331, %528
  br i1 %529, label %530, label %516, !llvm.loop !122

530:                                              ; preds = %516
  %531 = add nuw nsw i64 %511, 1
  %532 = icmp eq i64 %531, %509
  br i1 %532, label %533, label %510, !llvm.loop !125

533:                                              ; preds = %530, %490
  %534 = icmp slt i32 %333, %179
  %535 = select i1 %335, i1 %534, i1 false
  br i1 %535, label %536, label %577

536:                                              ; preds = %533
  %537 = load ptr, ptr %44, align 8, !tbaa !78
  %538 = load ptr, ptr %123, align 8, !tbaa !64
  %539 = load float, ptr %274, align 8, !tbaa.struct !116
  %540 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 1
  %541 = load float, ptr %540, align 4, !tbaa.struct !117
  %542 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 2
  %543 = load float, ptr %542, align 8, !tbaa.struct !118
  %544 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 3
  %545 = load float, ptr %544, align 4, !tbaa.struct !119
  %546 = load ptr, ptr %202, align 8, !tbaa !103
  %547 = load ptr, ptr %265, align 8, !tbaa !69
  %548 = load ptr, ptr %287, align 8, !tbaa !70
  %549 = getelementptr inbounds float, ptr %8, i64 1
  %550 = getelementptr inbounds float, ptr %8, i64 2
  %551 = sext i32 %326 to i64
  %552 = sext i32 %334 to i64
  br label %553

553:                                              ; preds = %573, %536
  %554 = phi i64 [ %552, %536 ], [ %574, %573 ]
  %555 = mul nsw i64 %554, %290
  %556 = trunc i64 %554 to i32
  %557 = sitofp i32 %556 to float
  %558 = call float @llvm.fmuladd.f32(float %557, float %545, float %543)
  br label %559

559:                                              ; preds = %559, %553
  %560 = phi i64 [ %551, %553 ], [ %570, %559 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  %561 = add nsw i64 %560, %555
  %562 = getelementptr inbounds i16, ptr %547, i64 %561
  %563 = getelementptr inbounds i16, ptr %548, i64 %561
  %564 = trunc i64 %560 to i32
  %565 = sitofp i32 %564 to float
  %566 = call float @llvm.fmuladd.f32(float %565, float %541, float %539)
  store float %566, ptr %8, align 4, !tbaa !56
  store float %558, ptr %549, align 4, !tbaa !56
  store float 0.000000e+00, ptr %550, align 4, !tbaa !56
  %567 = call float @BKE_brush_sample_masktex(ptr noundef %537, ptr noundef %538, ptr noundef nonnull %8, i32 noundef 0, ptr noundef %546) #7
  %568 = fmul float %567, 6.553500e+04
  %569 = fptoui float %568 to i16
  store i16 %569, ptr %563, align 2, !tbaa !121
  store i16 %569, ptr %562, align 2, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  %570 = add nsw i64 %560, 1
  %571 = trunc i64 %570 to i32
  %572 = icmp eq i32 %331, %571
  br i1 %572, label %573, label %559, !llvm.loop !122

573:                                              ; preds = %559
  %574 = add nsw i64 %554, 1
  %575 = trunc i64 %574 to i32
  %576 = icmp eq i32 %575, %179
  br i1 %576, label %577, label %553, !llvm.loop !125

577:                                              ; preds = %573, %533
  %578 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 14
  store i32 %179, ptr %578, align 8, !tbaa !113
  %579 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 15
  store i32 %179, ptr %579, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #7
  br label %620

580:                                              ; preds = %270
  %581 = load ptr, ptr %44, align 8, !tbaa !78
  %582 = load ptr, ptr %123, align 8, !tbaa !64
  %583 = load float, ptr %274, align 8, !tbaa.struct !116
  %584 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 1
  %585 = load float, ptr %584, align 4, !tbaa.struct !117
  %586 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 2
  %587 = load float, ptr %586, align 8, !tbaa.struct !118
  %588 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 7, i32 3
  %589 = load float, ptr %588, align 4, !tbaa.struct !119
  %590 = load ptr, ptr %202, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #7
  %591 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !68
  %592 = sext i32 %179 to i64
  %593 = shl nsw i64 %592, 1
  %594 = mul i64 %593, %592
  %595 = call ptr %591(i64 noundef %594, ptr noundef nonnull @.str.4) #7
  %596 = icmp sgt i32 %179, 0
  br i1 %596, label %597, label %619

597:                                              ; preds = %580
  %598 = getelementptr inbounds float, ptr %32, i64 1
  %599 = getelementptr inbounds float, ptr %32, i64 2
  br label %600

600:                                              ; preds = %597, %616
  %601 = phi ptr [ %595, %597 ], [ %614, %616 ]
  %602 = phi i32 [ 0, %597 ], [ %617, %616 ]
  %603 = sitofp i32 %602 to float
  %604 = call float @llvm.fmuladd.f32(float %603, float %589, float %587)
  br label %605

605:                                              ; preds = %600, %605
  %606 = phi ptr [ %601, %600 ], [ %614, %605 ]
  %607 = phi i32 [ 0, %600 ], [ %613, %605 ]
  %608 = sitofp i32 %607 to float
  %609 = call float @llvm.fmuladd.f32(float %608, float %585, float %583)
  store float %609, ptr %32, align 4, !tbaa !56
  store float %604, ptr %598, align 4, !tbaa !56
  store float 0.000000e+00, ptr %599, align 4, !tbaa !56
  %610 = call float @BKE_brush_sample_masktex(ptr noundef %581, ptr noundef %582, ptr noundef nonnull %32, i32 noundef 0, ptr noundef %590) #7
  %611 = fmul float %610, 6.553500e+04
  %612 = fptoui float %611 to i16
  store i16 %612, ptr %606, align 2, !tbaa !121
  %613 = add nuw nsw i32 %607, 1
  %614 = getelementptr inbounds i16, ptr %606, i64 1
  %615 = icmp eq i32 %613, %179
  br i1 %615, label %616, label %605, !llvm.loop !126

616:                                              ; preds = %605
  %617 = add nuw nsw i32 %602, 1
  %618 = icmp eq i32 %617, %179
  br i1 %618, label %619, label %600, !llvm.loop !127

619:                                              ; preds = %616, %580
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #7
  store ptr %595, ptr %265, align 8, !tbaa !111
  br label %620

620:                                              ; preds = %619, %577
  %621 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 7
  store float %247, ptr %621, align 8, !tbaa !110
  br label %622

622:                                              ; preds = %620, %256, %226
  %623 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 5
  %624 = load i32, ptr %623, align 8, !tbaa !109
  %625 = icmp eq i32 %624, %179
  br i1 %625, label %667, label %626

626:                                              ; preds = %622
  %627 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 11
  %628 = load ptr, ptr %627, align 8, !tbaa !128
  %629 = icmp eq ptr %628, null
  br i1 %629, label %632, label %630

630:                                              ; preds = %626
  %631 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %631(ptr noundef nonnull %628) #7
  store ptr null, ptr %627, align 8, !tbaa !128
  br label %632

632:                                              ; preds = %630, %626
  %633 = load ptr, ptr %123, align 8, !tbaa !64
  %634 = sub nsw i32 0, %179
  %635 = sitofp i32 %634 to float
  %636 = call float @llvm.fmuladd.f32(float %635, float 5.000000e-01, float 5.000000e-01)
  %637 = fptosi float %636 to i32
  %638 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !68
  %639 = sext i32 %179 to i64
  %640 = shl nsw i64 %639, 1
  %641 = mul i64 %640, %639
  %642 = call ptr %638(i64 noundef %641, ptr noundef nonnull @.str.4) #7
  %643 = icmp sgt i32 %179, 0
  br i1 %643, label %644, label %666

644:                                              ; preds = %632, %663
  %645 = phi ptr [ %661, %663 ], [ %642, %632 ]
  %646 = phi i32 [ %664, %663 ], [ 0, %632 ]
  %647 = add nsw i32 %646, %637
  %648 = sitofp i32 %647 to float
  %649 = fmul float %648, %648
  br label %650

650:                                              ; preds = %644, %650
  %651 = phi ptr [ %645, %644 ], [ %661, %650 ]
  %652 = phi i32 [ 0, %644 ], [ %660, %650 ]
  %653 = add nsw i32 %652, %637
  %654 = sitofp i32 %653 to float
  %655 = call float @llvm.fmuladd.f32(float %654, float %654, float %649)
  %656 = call float @sqrtf(float noundef %655) #7
  %657 = call float @BKE_brush_curve_strength_clamp(ptr noundef %633, float noundef %656, float noundef %6) #7
  %658 = fmul float %657, 6.553500e+04
  %659 = fptoui float %658 to i16
  store i16 %659, ptr %651, align 2, !tbaa !121
  %660 = add nuw nsw i32 %652, 1
  %661 = getelementptr inbounds i16, ptr %651, i64 1
  %662 = icmp eq i32 %660, %179
  br i1 %662, label %663, label %650, !llvm.loop !129

663:                                              ; preds = %650
  %664 = add nuw nsw i32 %646, 1
  %665 = icmp eq i32 %664, %179
  br i1 %665, label %666, label %644, !llvm.loop !130

666:                                              ; preds = %663, %632
  store ptr %642, ptr %627, align 8, !tbaa !128
  br label %667

667:                                              ; preds = %666, %622
  %668 = load i32, ptr %623, align 8, !tbaa !109
  %669 = icmp eq i32 %668, %179
  br i1 %669, label %670, label %678

670:                                              ; preds = %667
  %671 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 6
  %672 = load float, ptr %671, align 4, !tbaa !131
  %673 = fcmp une float %227, %672
  %674 = and i32 %229, 255
  %675 = icmp ne i32 %674, 0
  %676 = or i1 %675, %673
  %677 = select i1 %676, i1 true, i1 %194
  br i1 %677, label %678, label %814

678:                                              ; preds = %670, %667
  %679 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 9
  %680 = load ptr, ptr %679, align 8, !tbaa !132
  %681 = icmp eq ptr %680, null
  br i1 %681, label %683, label %682

682:                                              ; preds = %678
  call void @IMB_freeImBuf(ptr noundef nonnull %680) #7
  store ptr null, ptr %679, align 8, !tbaa !132
  br label %683

683:                                              ; preds = %682, %678
  %684 = icmp eq i8 %228, 0
  br i1 %684, label %686, label %685

685:                                              ; preds = %683
  call fastcc void @brush_painter_imbuf_partial_update(ptr noundef nonnull %44, ptr noundef nonnull %41, i32 noundef %179)
  br label %811

686:                                              ; preds = %683
  %687 = load ptr, ptr %44, align 8, !tbaa !78
  %688 = load ptr, ptr %123, align 8, !tbaa !64
  %689 = getelementptr inbounds %struct.Scene, ptr %687, i64 0, i32 45
  %690 = call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %689) #7
  %691 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 6
  %692 = load float, ptr %691, align 8, !tbaa.struct !116
  %693 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 6, i32 1
  %694 = load float, ptr %693, align 4, !tbaa.struct !117
  %695 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 6, i32 2
  %696 = load float, ptr %695, align 8, !tbaa.struct !118
  %697 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 6, i32 3
  %698 = load float, ptr %697, align 4, !tbaa.struct !119
  %699 = load ptr, ptr %202, align 8, !tbaa !103
  %700 = load i8, ptr %157, align 1, !tbaa !72
  %701 = load i8, ptr %125, align 8, !tbaa !65
  %702 = load i8, ptr %168, align 1, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #7
  %703 = icmp eq i8 %701, 0
  %704 = select i1 %703, i32 1, i32 32
  %705 = call ptr @IMB_allocImBuf(i32 noundef %179, i32 noundef %179, i8 noundef zeroext 32, i32 noundef %704) #7
  %706 = getelementptr inbounds %struct.Brush, ptr %688, i64 0, i32 36
  %707 = load i8, ptr %706, align 2, !tbaa !74
  %708 = icmp eq i8 %707, 0
  br i1 %708, label %709, label %712

709:                                              ; preds = %686
  %710 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 2
  %711 = load i8, ptr %710, align 2, !tbaa !133
  call void @paint_brush_color_get(ptr noundef %687, ptr noundef %688, i8 noundef zeroext %700, i8 noundef zeroext %711, float noundef %5, float noundef %4, ptr noundef nonnull %29, ptr noundef %690) #7
  br label %715

712:                                              ; preds = %686
  store float 1.000000e+00, ptr %29, align 4, !tbaa !56
  %713 = getelementptr inbounds [3 x float], ptr %29, i64 0, i64 1
  store float 1.000000e+00, ptr %713, align 4, !tbaa !56
  %714 = getelementptr inbounds [3 x float], ptr %29, i64 0, i64 2
  store float 1.000000e+00, ptr %714, align 4, !tbaa !56
  br label %715

715:                                              ; preds = %712, %709
  %716 = icmp sgt i32 %179, 0
  br i1 %716, label %717, label %810

717:                                              ; preds = %715
  %718 = icmp eq i8 %702, 0
  %719 = getelementptr inbounds float, ptr %30, i64 1
  %720 = getelementptr inbounds float, ptr %30, i64 2
  %721 = getelementptr inbounds float, ptr %29, i64 1
  %722 = getelementptr inbounds float, ptr %31, i64 1
  %723 = getelementptr inbounds float, ptr %29, i64 2
  %724 = getelementptr inbounds float, ptr %31, i64 2
  %725 = getelementptr inbounds float, ptr %29, i64 1
  %726 = getelementptr inbounds float, ptr %31, i64 1
  %727 = getelementptr inbounds float, ptr %29, i64 2
  %728 = getelementptr inbounds float, ptr %31, i64 2
  %729 = getelementptr inbounds [4 x float], ptr %31, i64 0, i64 3
  %730 = getelementptr inbounds %struct.ImBuf, ptr %705, i64 0, i32 9
  %731 = getelementptr inbounds [4 x float], ptr %31, i64 0, i64 3
  %732 = getelementptr inbounds float, ptr %31, i64 1
  %733 = getelementptr inbounds float, ptr %31, i64 2
  %734 = getelementptr inbounds %struct.ImBuf, ptr %705, i64 0, i32 8
  %735 = getelementptr inbounds [4 x float], ptr %31, i64 0, i64 3
  %736 = zext nneg i32 %179 to i64
  %737 = zext nneg i32 %179 to i64
  br label %738

738:                                              ; preds = %717, %807
  %739 = phi i64 [ 0, %717 ], [ %808, %807 ]
  %740 = trunc i64 %739 to i32
  %741 = sitofp i32 %740 to float
  %742 = call float @llvm.fmuladd.f32(float %741, float %698, float %696)
  %743 = trunc i64 %739 to i32
  %744 = mul i32 %743, %179
  %745 = trunc i64 %739 to i32
  %746 = mul i32 %745, %179
  br label %747

747:                                              ; preds = %738, %804
  %748 = phi i64 [ 0, %738 ], [ %805, %804 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #7
  br i1 %718, label %764, label %749

749:                                              ; preds = %747
  %750 = trunc i64 %748 to i32
  %751 = sitofp i32 %750 to float
  %752 = call float @llvm.fmuladd.f32(float %751, float %694, float %692)
  store float %752, ptr %30, align 4, !tbaa !56
  store float %742, ptr %719, align 4, !tbaa !56
  store float 0.000000e+00, ptr %720, align 4, !tbaa !56
  %753 = call float @BKE_brush_sample_tex_3D(ptr noundef %687, ptr noundef %688, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef 0, ptr noundef %699) #7
  %754 = load float, ptr %29, align 4, !tbaa !56
  %755 = load float, ptr %31, align 16, !tbaa !56
  %756 = fmul float %754, %755
  store float %756, ptr %31, align 16, !tbaa !56
  %757 = load float, ptr %721, align 4, !tbaa !56
  %758 = load float, ptr %722, align 4, !tbaa !56
  %759 = fmul float %757, %758
  store float %759, ptr %722, align 4, !tbaa !56
  %760 = load float, ptr %723, align 4, !tbaa !56
  %761 = load float, ptr %724, align 8, !tbaa !56
  %762 = fmul float %760, %761
  store float %762, ptr %724, align 8, !tbaa !56
  br i1 %703, label %763, label %769

763:                                              ; preds = %749
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %31, ptr noundef %690) #7
  br label %768

764:                                              ; preds = %747
  %765 = load float, ptr %29, align 4, !tbaa !56
  store float %765, ptr %31, align 16, !tbaa !56
  %766 = load float, ptr %725, align 4, !tbaa !56
  store float %766, ptr %726, align 4, !tbaa !56
  %767 = load float, ptr %727, align 4, !tbaa !56
  store float %767, ptr %728, align 8, !tbaa !56
  store float 1.000000e+00, ptr %729, align 4, !tbaa !56
  br label %768

768:                                              ; preds = %764, %763
  br i1 %703, label %787, label %769

769:                                              ; preds = %768, %749
  %770 = load ptr, ptr %730, align 8, !tbaa !63
  %771 = trunc i64 %748 to i32
  %772 = add i32 %746, %771
  %773 = shl nsw i32 %772, 2
  %774 = zext nneg i32 %773 to i64
  %775 = getelementptr inbounds float, ptr %770, i64 %774
  %776 = load float, ptr %731, align 4, !tbaa !56
  %777 = load float, ptr %31, align 16, !tbaa !56
  %778 = fmul float %776, %777
  store float %778, ptr %775, align 4, !tbaa !56
  %779 = load float, ptr %732, align 4, !tbaa !56
  %780 = fmul float %776, %779
  %781 = getelementptr inbounds float, ptr %775, i64 1
  store float %780, ptr %781, align 4, !tbaa !56
  %782 = load float, ptr %733, align 8, !tbaa !56
  %783 = fmul float %776, %782
  %784 = getelementptr inbounds float, ptr %775, i64 2
  store float %783, ptr %784, align 4, !tbaa !56
  %785 = load float, ptr %731, align 4, !tbaa !56
  %786 = getelementptr inbounds float, ptr %775, i64 3
  store float %785, ptr %786, align 4, !tbaa !56
  br label %804

787:                                              ; preds = %768
  %788 = load ptr, ptr %734, align 8, !tbaa !134
  %789 = trunc i64 %748 to i32
  %790 = add i32 %744, %789
  %791 = shl nsw i32 %790, 2
  %792 = zext nneg i32 %791 to i64
  %793 = getelementptr inbounds i8, ptr %788, i64 %792
  call void @rgb_float_to_uchar(ptr noundef %793, ptr noundef nonnull %31) #7
  %794 = load float, ptr %735, align 4
  %795 = fcmp ugt float %794, 0.000000e+00
  br i1 %795, label %796, label %800

796:                                              ; preds = %787
  %797 = fcmp ogt float %794, 0x3FEFEFEFE0000000
  %798 = call float @llvm.fmuladd.f32(float %794, float 2.550000e+02, float 5.000000e-01)
  %799 = select i1 %797, float 2.550000e+02, float %798
  br label %800

800:                                              ; preds = %796, %787
  %801 = phi float [ %799, %796 ], [ 0.000000e+00, %787 ]
  %802 = fptoui float %801 to i8
  %803 = getelementptr inbounds i8, ptr %793, i64 3
  store i8 %802, ptr %803, align 1, !tbaa !135
  br label %804

804:                                              ; preds = %800, %769
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #7
  %805 = add nuw nsw i64 %748, 1
  %806 = icmp eq i64 %805, %737
  br i1 %806, label %807, label %747, !llvm.loop !136

807:                                              ; preds = %804
  %808 = add nuw nsw i64 %739, 1
  %809 = icmp eq i64 %808, %736
  br i1 %809, label %810, label %738, !llvm.loop !137

810:                                              ; preds = %807, %715
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #7
  store ptr %705, ptr %679, align 8, !tbaa !132
  br label %811

811:                                              ; preds = %810, %685
  store i32 %179, ptr %623, align 8, !tbaa !109
  %812 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 6
  store float %227, ptr %812, align 4, !tbaa !131
  %813 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 8
  store float %4, ptr %813, align 4, !tbaa !100
  br label %831

814:                                              ; preds = %670
  %815 = icmp eq i8 %228, 0
  br i1 %815, label %831, label %816

816:                                              ; preds = %814
  %817 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2
  %818 = load float, ptr %817, align 8, !tbaa !56
  %819 = fptosi float %818 to i32
  %820 = load float, ptr %41, align 4, !tbaa !56
  %821 = fptosi float %820 to i32
  %822 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 2, i64 1
  %823 = load float, ptr %822, align 4, !tbaa !56
  %824 = fptosi float %823 to i32
  %825 = load float, ptr %75, align 4, !tbaa !56
  %826 = fptosi float %825 to i32
  %827 = icmp ne i32 %819, %821
  %828 = icmp ne i32 %824, %826
  %829 = select i1 %827, i1 true, i1 %828
  br i1 %829, label %830, label %831

830:                                              ; preds = %816
  call fastcc void @brush_painter_imbuf_partial_update(ptr noundef nonnull %44, ptr noundef nonnull %41, i32 noundef %179)
  br label %831

831:                                              ; preds = %811, %814, %816, %830
  %832 = load ptr, ptr %202, align 8, !tbaa !103
  call void @BKE_image_pool_free(ptr noundef %832) #7
  store ptr null, ptr %202, align 8, !tbaa !103
  %833 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 9
  %834 = load ptr, ptr %833, align 8, !tbaa !66
  %835 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 11
  %836 = load ptr, ptr %835, align 8, !tbaa !67
  %837 = getelementptr inbounds %struct.BrushPainter, ptr %44, i64 0, i32 8, i32 12
  %838 = load ptr, ptr %837, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %23) #7
  %839 = load ptr, ptr %63, align 8, !tbaa !48
  %840 = getelementptr inbounds %struct.Brush, ptr %839, i64 0, i32 16
  %841 = load i32, ptr %840, align 8, !tbaa !98
  %842 = trunc i32 %841 to i16
  %843 = and i16 %842, 2
  %844 = load i16, ptr %67, align 2, !tbaa !54
  %845 = getelementptr inbounds %struct.Brush, ptr %839, i64 0, i32 1, i32 1
  %846 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 3
  %847 = load ptr, ptr %846, align 8, !tbaa !138
  %848 = call float @BKE_brush_alpha_get(ptr noundef %847, ptr noundef %839) #7
  %849 = load float, ptr %41, align 4, !tbaa !56
  %850 = getelementptr inbounds %struct.ImBuf, ptr %834, i64 0, i32 2
  %851 = load i32, ptr %850, align 8, !tbaa !57
  %852 = sdiv i32 %851, 2
  %853 = sitofp i32 %852 to float
  %854 = fsub float %849, %853
  %855 = fadd float %854, 1.000000e+00
  %856 = call float @llvm.floor.f32(float %855)
  %857 = fptosi float %856 to i32
  %858 = load float, ptr %75, align 4, !tbaa !56
  %859 = getelementptr inbounds %struct.ImBuf, ptr %834, i64 0, i32 3
  %860 = load i32, ptr %859, align 4, !tbaa !58
  %861 = sdiv i32 %860, 2
  %862 = sitofp i32 %861 to float
  %863 = fsub float %858, %862
  %864 = fadd float %863, 1.000000e+00
  %865 = call float @llvm.floor.f32(float %864)
  %866 = fptosi float %865 to i32
  %867 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 7
  %868 = load i16, ptr %867, align 8, !tbaa !139
  switch i16 %868, label %1352 [
    i16 1, label %869
    i16 2, label %1266
    i16 3, label %1309
  ]

869:                                              ; preds = %831
  %870 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %871 = load ptr, ptr %870, align 8, !tbaa !140
  %872 = load ptr, ptr %0, align 8, !tbaa !34
  %873 = getelementptr inbounds %struct.BrushPainter, ptr %872, i64 0, i32 8, i32 2
  %874 = load i8, ptr %873, align 2, !tbaa !133
  %875 = load ptr, ptr %63, align 8, !tbaa !48
  %876 = getelementptr inbounds %struct.Brush, ptr %875, i64 0, i32 16
  %877 = load i32, ptr %876, align 8, !tbaa !98
  %878 = lshr i32 %877, 9
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = getelementptr inbounds %struct.Brush, ptr %875, i64 0, i32 47
  %882 = load float, ptr %881, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #7
  %883 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 20
  %884 = load ptr, ptr %883, align 8, !tbaa !142
  store i32 %851, ptr %22, align 4, !tbaa !115
  %885 = getelementptr inbounds [2 x i32], ptr %22, i64 0, i64 1
  store i32 %860, ptr %885, align 4, !tbaa !115
  store i32 %857, ptr %21, align 4, !tbaa !115
  %886 = getelementptr inbounds [2 x i32], ptr %21, i64 0, i64 1
  store i32 %866, ptr %886, align 4, !tbaa !115
  %887 = getelementptr inbounds [2 x i32], ptr %20, i64 0, i64 1
  store i32 0, ptr %887, align 4, !tbaa !115
  store i32 0, ptr %20, align 4, !tbaa !115
  %888 = icmp eq i16 %843, 0
  br i1 %888, label %889, label %895

889:                                              ; preds = %869
  call void @IMB_rectclip(ptr noundef %871, ptr noundef %834, ptr noundef nonnull %21, ptr noundef nonnull %886, ptr noundef nonnull %20, ptr noundef nonnull %887, ptr noundef nonnull %22, ptr noundef nonnull %885) #7
  %890 = load i32, ptr %22, align 4, !tbaa !115
  %891 = icmp ne i32 %890, 0
  %892 = load i32, ptr %885, align 4
  %893 = icmp sgt i32 %892, 0
  %894 = select i1 %891, i1 %893, i1 false
  br i1 %894, label %898, label %1265

895:                                              ; preds = %869
  %896 = load i32, ptr %885, align 4, !tbaa !115
  %897 = icmp sgt i32 %896, 0
  br i1 %897, label %898, label %1265

898:                                              ; preds = %889, %895
  %899 = icmp eq i16 %843, 0
  %900 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 2
  %901 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 3
  %902 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 9
  %903 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 2
  %904 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 8
  %905 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 2
  %906 = getelementptr inbounds %struct.BlurKernel, ptr %884, i64 0, i32 1
  %907 = getelementptr inbounds %struct.BlurKernel, ptr %884, i64 0, i32 3
  %908 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 2
  %909 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 3
  %910 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 3
  %911 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 8
  %912 = getelementptr inbounds %struct.ImBuf, ptr %871, i64 0, i32 8
  %913 = icmp eq i8 %880, %874
  %914 = getelementptr inbounds %struct.ImBuf, ptr %834, i64 0, i32 9
  %915 = getelementptr inbounds %struct.ImBuf, ptr %834, i64 0, i32 8
  br label %916

916:                                              ; preds = %898, %1261
  %917 = phi i32 [ 0, %898 ], [ %1262, %1261 ]
  %918 = load i32, ptr %22, align 4, !tbaa !115
  %919 = icmp sgt i32 %918, 0
  br i1 %919, label %920, label %1261

920:                                              ; preds = %916, %1257
  %921 = phi i32 [ %1258, %1257 ], [ 0, %916 ]
  %922 = load i32, ptr %21, align 4, !tbaa !115
  %923 = add nsw i32 %922, %921
  %924 = load i32, ptr %886, align 4, !tbaa !115
  %925 = add nsw i32 %924, %917
  br i1 %899, label %937, label %926

926:                                              ; preds = %920
  %927 = load i32, ptr %900, align 8, !tbaa !57
  %928 = srem i32 %923, %927
  %929 = icmp slt i32 %928, 0
  %930 = select i1 %929, i32 %927, i32 0
  %931 = add nsw i32 %930, %928
  %932 = load i32, ptr %901, align 4, !tbaa !58
  %933 = srem i32 %925, %932
  %934 = icmp slt i32 %933, 0
  %935 = select i1 %934, i32 %932, i32 0
  %936 = add nsw i32 %935, %933
  br label %937

937:                                              ; preds = %926, %920
  %938 = phi i32 [ %925, %920 ], [ %936, %926 ]
  %939 = phi i32 [ %923, %920 ], [ %931, %926 ]
  %940 = load ptr, ptr %902, align 8, !tbaa !63
  %941 = icmp eq ptr %940, null
  br i1 %941, label %956, label %942

942:                                              ; preds = %937
  %943 = load i32, ptr %903, align 8, !tbaa !57
  %944 = mul nsw i32 %943, %938
  %945 = add nsw i32 %944, %939
  %946 = shl nsw i32 %945, 2
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds float, ptr %940, i64 %947
  %949 = load float, ptr %948, align 4, !tbaa !56
  %950 = getelementptr inbounds float, ptr %948, i64 1
  %951 = load float, ptr %950, align 4, !tbaa !56
  %952 = getelementptr inbounds float, ptr %948, i64 2
  %953 = load float, ptr %952, align 4, !tbaa !56
  %954 = getelementptr inbounds float, ptr %948, i64 3
  %955 = load float, ptr %954, align 4, !tbaa !56
  br label %980

956:                                              ; preds = %937
  %957 = load ptr, ptr %904, align 8, !tbaa !134
  %958 = load i32, ptr %905, align 8, !tbaa !57
  %959 = mul nsw i32 %958, %938
  %960 = add nsw i32 %959, %939
  %961 = shl nsw i32 %960, 2
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds i8, ptr %957, i64 %962
  %964 = getelementptr inbounds i8, ptr %963, i64 3
  %965 = load i8, ptr %964, align 1, !tbaa !135
  %966 = uitofp i8 %965 to float
  %967 = fmul float %966, 0x3F70101020000000
  %968 = fmul float %967, 0x3F70101020000000
  %969 = load i8, ptr %963, align 1, !tbaa !135
  %970 = uitofp i8 %969 to float
  %971 = fmul float %968, %970
  %972 = getelementptr inbounds i8, ptr %963, i64 1
  %973 = load i8, ptr %972, align 1, !tbaa !135
  %974 = uitofp i8 %973 to float
  %975 = fmul float %968, %974
  %976 = getelementptr inbounds i8, ptr %963, i64 2
  %977 = load i8, ptr %976, align 1, !tbaa !135
  %978 = uitofp i8 %977 to float
  %979 = fmul float %968, %978
  br label %980

980:                                              ; preds = %942, %956
  %981 = phi float [ %967, %956 ], [ %955, %942 ]
  %982 = phi float [ %979, %956 ], [ %953, %942 ]
  %983 = phi float [ %975, %956 ], [ %951, %942 ]
  %984 = phi float [ %971, %956 ], [ %949, %942 ]
  %985 = load i32, ptr %906, align 8, !tbaa !143
  %986 = icmp sgt i32 %985, 0
  br i1 %986, label %987, label %1131

987:                                              ; preds = %980
  %988 = zext nneg i32 %985 to i64
  %989 = zext nneg i32 %985 to i64
  %990 = load i32, ptr %907, align 8, !tbaa !145
  %991 = load ptr, ptr %884, align 8, !tbaa !146
  %992 = load i32, ptr %908, align 8, !tbaa !57
  %993 = zext nneg i32 %985 to i64
  br label %994

994:                                              ; preds = %987, %1128
  %995 = phi i64 [ 0, %987 ], [ %1129, %1128 ]
  %996 = phi float [ 0.000000e+00, %987 ], [ %1125, %1128 ]
  %997 = phi float [ 0.000000e+00, %987 ], [ %1123, %1128 ]
  %998 = phi float [ 0.000000e+00, %987 ], [ %1122, %1128 ]
  %999 = phi float [ 0.000000e+00, %987 ], [ %1121, %1128 ]
  %1000 = phi float [ 0.000000e+00, %987 ], [ %1120, %1128 ]
  %1001 = trunc i64 %995 to i32
  %1002 = add i32 %925, %1001
  %1003 = sub i32 %1002, %990
  %1004 = mul nsw i64 %995, %988
  %1005 = mul nsw i32 %992, %1003
  %1006 = mul nsw i32 %992, %1003
  %1007 = getelementptr float, ptr %991, i64 %1004
  br label %1008

1008:                                             ; preds = %994, %1119
  %1009 = phi i64 [ 0, %994 ], [ %1126, %1119 ]
  %1010 = phi float [ %996, %994 ], [ %1125, %1119 ]
  %1011 = phi float [ %997, %994 ], [ %1123, %1119 ]
  %1012 = phi float [ %998, %994 ], [ %1122, %1119 ]
  %1013 = phi float [ %999, %994 ], [ %1121, %1119 ]
  %1014 = phi float [ %1000, %994 ], [ %1120, %1119 ]
  %1015 = trunc i64 %1009 to i32
  %1016 = add i32 %923, %1015
  %1017 = sub i32 %1016, %990
  %1018 = getelementptr float, ptr %1007, i64 %1009
  %1019 = load float, ptr %1018, align 4, !tbaa !56
  %1020 = icmp ugt i32 %992, %1017
  br i1 %1020, label %1021, label %1024

1021:                                             ; preds = %1008
  %1022 = load i32, ptr %909, align 4, !tbaa !58
  %1023 = icmp ugt i32 %1022, %1003
  br i1 %1023, label %1071, label %1024

1024:                                             ; preds = %1021, %1008
  br i1 %888, label %1119, label %1025

1025:                                             ; preds = %1024
  %1026 = srem i32 %1017, %992
  %1027 = icmp slt i32 %1026, 0
  %1028 = select i1 %1027, i32 %992, i32 0
  %1029 = add nsw i32 %1028, %1026
  %1030 = load i32, ptr %910, align 4, !tbaa !58
  %1031 = srem i32 %1003, %1030
  %1032 = icmp slt i32 %1031, 0
  %1033 = select i1 %1032, i32 %1030, i32 0
  %1034 = add nsw i32 %1033, %1031
  br i1 %941, label %1048, label %1035

1035:                                             ; preds = %1025
  %1036 = mul nsw i32 %1034, %992
  %1037 = add nsw i32 %1036, %1029
  %1038 = shl nsw i32 %1037, 2
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds float, ptr %940, i64 %1039
  %1041 = load float, ptr %1040, align 4, !tbaa !56
  %1042 = getelementptr inbounds float, ptr %1040, i64 1
  %1043 = load float, ptr %1042, align 4, !tbaa !56
  %1044 = getelementptr inbounds float, ptr %1040, i64 2
  %1045 = load float, ptr %1044, align 4, !tbaa !56
  %1046 = getelementptr inbounds float, ptr %1040, i64 3
  %1047 = load float, ptr %1046, align 4, !tbaa !56
  br label %1106

1048:                                             ; preds = %1025
  %1049 = load ptr, ptr %911, align 8, !tbaa !134
  %1050 = mul nsw i32 %1034, %992
  %1051 = add nsw i32 %1050, %1029
  %1052 = shl nsw i32 %1051, 2
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds i8, ptr %1049, i64 %1053
  %1055 = getelementptr inbounds i8, ptr %1054, i64 3
  %1056 = load i8, ptr %1055, align 1, !tbaa !135
  %1057 = uitofp i8 %1056 to float
  %1058 = fmul float %1057, 0x3F70101020000000
  %1059 = fmul float %1058, 0x3F70101020000000
  %1060 = load i8, ptr %1054, align 1, !tbaa !135
  %1061 = uitofp i8 %1060 to float
  %1062 = fmul float %1059, %1061
  %1063 = getelementptr inbounds i8, ptr %1054, i64 1
  %1064 = load i8, ptr %1063, align 1, !tbaa !135
  %1065 = uitofp i8 %1064 to float
  %1066 = fmul float %1059, %1065
  %1067 = getelementptr inbounds i8, ptr %1054, i64 2
  %1068 = load i8, ptr %1067, align 1, !tbaa !135
  %1069 = uitofp i8 %1068 to float
  %1070 = fmul float %1059, %1069
  br label %1106

1071:                                             ; preds = %1021
  br i1 %941, label %1084, label %1072

1072:                                             ; preds = %1071
  %1073 = add nsw i32 %1005, %1017
  %1074 = shl nsw i32 %1073, 2
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds float, ptr %940, i64 %1075
  %1077 = load float, ptr %1076, align 4, !tbaa !56
  %1078 = getelementptr inbounds float, ptr %1076, i64 1
  %1079 = load float, ptr %1078, align 4, !tbaa !56
  %1080 = getelementptr inbounds float, ptr %1076, i64 2
  %1081 = load float, ptr %1080, align 4, !tbaa !56
  %1082 = getelementptr inbounds float, ptr %1076, i64 3
  %1083 = load float, ptr %1082, align 4, !tbaa !56
  br label %1106

1084:                                             ; preds = %1071
  %1085 = load ptr, ptr %912, align 8, !tbaa !134
  %1086 = add nsw i32 %1006, %1017
  %1087 = shl nsw i32 %1086, 2
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds i8, ptr %1085, i64 %1088
  %1090 = getelementptr inbounds i8, ptr %1089, i64 3
  %1091 = load i8, ptr %1090, align 1, !tbaa !135
  %1092 = uitofp i8 %1091 to float
  %1093 = fmul float %1092, 0x3F70101020000000
  %1094 = fmul float %1093, 0x3F70101020000000
  %1095 = load i8, ptr %1089, align 1, !tbaa !135
  %1096 = uitofp i8 %1095 to float
  %1097 = fmul float %1094, %1096
  %1098 = getelementptr inbounds i8, ptr %1089, i64 1
  %1099 = load i8, ptr %1098, align 1, !tbaa !135
  %1100 = uitofp i8 %1099 to float
  %1101 = fmul float %1094, %1100
  %1102 = getelementptr inbounds i8, ptr %1089, i64 2
  %1103 = load i8, ptr %1102, align 1, !tbaa !135
  %1104 = uitofp i8 %1103 to float
  %1105 = fmul float %1094, %1104
  br label %1106

1106:                                             ; preds = %1084, %1072, %1048, %1035
  %1107 = phi float [ %1058, %1048 ], [ %1047, %1035 ], [ %1093, %1084 ], [ %1083, %1072 ]
  %1108 = phi float [ %1070, %1048 ], [ %1045, %1035 ], [ %1105, %1084 ], [ %1081, %1072 ]
  %1109 = phi float [ %1066, %1048 ], [ %1043, %1035 ], [ %1101, %1084 ], [ %1079, %1072 ]
  %1110 = phi float [ %1062, %1048 ], [ %1041, %1035 ], [ %1097, %1084 ], [ %1077, %1072 ]
  %1111 = fmul float %1019, %1110
  %1112 = fmul float %1019, %1109
  %1113 = fmul float %1019, %1108
  %1114 = fmul float %1019, %1107
  %1115 = fadd float %1011, %1111
  %1116 = fadd float %1012, %1112
  %1117 = fadd float %1013, %1113
  %1118 = fadd float %1014, %1114
  br label %1119

1119:                                             ; preds = %1106, %1024
  %1120 = phi float [ %1118, %1106 ], [ %1014, %1024 ]
  %1121 = phi float [ %1117, %1106 ], [ %1013, %1024 ]
  %1122 = phi float [ %1116, %1106 ], [ %1012, %1024 ]
  %1123 = phi float [ %1115, %1106 ], [ %1011, %1024 ]
  %1124 = phi float [ %1019, %1106 ], [ 0.000000e+00, %1024 ]
  %1125 = fadd float %1010, %1124
  %1126 = add nuw nsw i64 %1009, 1
  %1127 = icmp eq i64 %1126, %993
  br i1 %1127, label %1128, label %1008, !llvm.loop !147

1128:                                             ; preds = %1119
  %1129 = add nuw nsw i64 %995, 1
  %1130 = icmp eq i64 %1129, %989
  br i1 %1130, label %1131, label %994, !llvm.loop !148

1131:                                             ; preds = %1128, %980
  %1132 = phi float [ 0.000000e+00, %980 ], [ %1120, %1128 ]
  %1133 = phi float [ 0.000000e+00, %980 ], [ %1121, %1128 ]
  %1134 = phi float [ 0.000000e+00, %980 ], [ %1122, %1128 ]
  %1135 = phi float [ 0.000000e+00, %980 ], [ %1123, %1128 ]
  %1136 = phi float [ 0.000000e+00, %980 ], [ %1125, %1128 ]
  %1137 = fcmp ogt float %1136, 0.000000e+00
  br i1 %1137, label %1138, label %1162

1138:                                             ; preds = %1131
  %1139 = fdiv float 1.000000e+00, %1136
  %1140 = fmul float %1135, %1139
  %1141 = fmul float %1134, %1139
  %1142 = fmul float %1133, %1139
  %1143 = fmul float %1132, %1139
  br i1 %913, label %1162, label %1144

1144:                                             ; preds = %1138
  %1145 = fsub float %984, %1140
  %1146 = fsub float %983, %1141
  %1147 = fsub float %982, %1142
  %1148 = fmul float %1146, 0x3FE28F5C20000000
  %1149 = call float @llvm.fmuladd.f32(float %1145, float 0x3FD3333340000000, float %1148)
  %1150 = call float @llvm.fmuladd.f32(float %1147, float 0x3FBEB851E0000000, float %1149)
  %1151 = call float @llvm.fabs.f32(float %1150)
  %1152 = fcmp ogt float %1151, %882
  br i1 %1152, label %1153, label %1162

1153:                                             ; preds = %1144
  %1154 = load ptr, ptr %846, align 8, !tbaa !138
  %1155 = load ptr, ptr %63, align 8, !tbaa !48
  %1156 = call float @BKE_brush_alpha_get(ptr noundef %1154, ptr noundef %1155) #7
  %1157 = fcmp une float %1156, 0.000000e+00
  br i1 %1157, label %1158, label %1162

1158:                                             ; preds = %1153
  %1159 = call float @llvm.fmuladd.f32(float %1150, float %1156, float %984)
  %1160 = call float @llvm.fmuladd.f32(float %1150, float %1156, float %983)
  %1161 = call float @llvm.fmuladd.f32(float %1150, float %1156, float %982)
  br label %1162

1162:                                             ; preds = %1131, %1144, %1153, %1158, %1138
  %1163 = phi float [ %1143, %1138 ], [ %981, %1158 ], [ %981, %1153 ], [ %981, %1144 ], [ %981, %1131 ]
  %1164 = phi float [ %1142, %1138 ], [ %1161, %1158 ], [ %982, %1153 ], [ %982, %1144 ], [ %982, %1131 ]
  %1165 = phi float [ %1141, %1138 ], [ %1160, %1158 ], [ %983, %1153 ], [ %983, %1144 ], [ %983, %1131 ]
  %1166 = phi float [ %1140, %1138 ], [ %1159, %1158 ], [ %984, %1153 ], [ %984, %1144 ], [ %984, %1131 ]
  %1167 = load i32, ptr %20, align 4, !tbaa !115
  %1168 = add nsw i32 %1167, %921
  %1169 = load i32, ptr %887, align 4, !tbaa !115
  %1170 = add nsw i32 %1169, %917
  %1171 = load ptr, ptr %914, align 8, !tbaa !63
  %1172 = icmp eq ptr %1171, null
  br i1 %1172, label %1190, label %1173

1173:                                             ; preds = %1162
  %1174 = load i32, ptr %850, align 8, !tbaa !57
  %1175 = mul nsw i32 %1174, %1170
  %1176 = add nsw i32 %1175, %1168
  %1177 = shl nsw i32 %1176, 2
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds float, ptr %1171, i64 %1178
  %1180 = fcmp oeq float %1163, 0.000000e+00
  %1181 = getelementptr inbounds float, ptr %1179, i64 3
  %1182 = load float, ptr %1181, align 4, !tbaa !56
  %1183 = select i1 %1180, float 1.000000e+00, float %1163
  %1184 = fdiv float %1182, %1183
  %1185 = fmul float %1166, %1184
  store float %1185, ptr %1179, align 4, !tbaa !56
  %1186 = fmul float %1165, %1184
  %1187 = getelementptr inbounds float, ptr %1179, i64 1
  store float %1186, ptr %1187, align 4, !tbaa !56
  %1188 = fmul float %1164, %1184
  %1189 = getelementptr inbounds float, ptr %1179, i64 2
  store float %1188, ptr %1189, align 4, !tbaa !56
  br label %1257

1190:                                             ; preds = %1162
  %1191 = load ptr, ptr %915, align 8, !tbaa !134
  %1192 = load i32, ptr %850, align 8, !tbaa !57
  %1193 = mul nsw i32 %1192, %1170
  %1194 = add nsw i32 %1193, %1168
  %1195 = shl nsw i32 %1194, 2
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds i8, ptr %1191, i64 %1196
  %1198 = fcmp oeq float %1163, 0.000000e+00
  %1199 = fcmp oeq float %1163, 1.000000e+00
  %1200 = or i1 %1198, %1199
  br i1 %1200, label %1201, label %1224

1201:                                             ; preds = %1190
  %1202 = fcmp ugt float %1166, 0.000000e+00
  br i1 %1202, label %1203, label %1208

1203:                                             ; preds = %1201
  %1204 = fcmp ogt float %1166, 0x3FEFEFEFE0000000
  br i1 %1204, label %1208, label %1205

1205:                                             ; preds = %1203
  %1206 = call float @llvm.fmuladd.f32(float %1166, float 2.550000e+02, float 5.000000e-01)
  %1207 = fptoui float %1206 to i8
  br label %1208

1208:                                             ; preds = %1205, %1203, %1201
  %1209 = phi i8 [ 0, %1201 ], [ %1207, %1205 ], [ -1, %1203 ]
  %1210 = fcmp ugt float %1165, 0.000000e+00
  br i1 %1210, label %1211, label %1216

1211:                                             ; preds = %1208
  %1212 = fcmp ogt float %1165, 0x3FEFEFEFE0000000
  br i1 %1212, label %1216, label %1213

1213:                                             ; preds = %1211
  %1214 = call float @llvm.fmuladd.f32(float %1165, float 2.550000e+02, float 5.000000e-01)
  %1215 = fptoui float %1214 to i8
  br label %1216

1216:                                             ; preds = %1213, %1211, %1208
  %1217 = phi i8 [ 0, %1208 ], [ %1215, %1213 ], [ -1, %1211 ]
  %1218 = fcmp ugt float %1164, 0.000000e+00
  br i1 %1218, label %1219, label %1251

1219:                                             ; preds = %1216
  %1220 = fcmp ogt float %1164, 0x3FEFEFEFE0000000
  br i1 %1220, label %1251, label %1221

1221:                                             ; preds = %1219
  %1222 = call float @llvm.fmuladd.f32(float %1164, float 2.550000e+02, float 5.000000e-01)
  %1223 = fptoui float %1222 to i8
  br label %1251

1224:                                             ; preds = %1190
  %1225 = fdiv float 1.000000e+00, %1163
  %1226 = fmul float %1225, %1166
  %1227 = fcmp ugt float %1226, 0.000000e+00
  br i1 %1227, label %1228, label %1233

1228:                                             ; preds = %1224
  %1229 = fcmp ogt float %1226, 0x3FEFEFEFE0000000
  br i1 %1229, label %1233, label %1230

1230:                                             ; preds = %1228
  %1231 = call float @llvm.fmuladd.f32(float %1226, float 2.550000e+02, float 5.000000e-01)
  %1232 = fptoui float %1231 to i8
  br label %1233

1233:                                             ; preds = %1230, %1228, %1224
  %1234 = phi i8 [ 0, %1224 ], [ %1232, %1230 ], [ -1, %1228 ]
  %1235 = fmul float %1225, %1165
  %1236 = fcmp ugt float %1235, 0.000000e+00
  br i1 %1236, label %1237, label %1242

1237:                                             ; preds = %1233
  %1238 = fcmp ogt float %1235, 0x3FEFEFEFE0000000
  br i1 %1238, label %1242, label %1239

1239:                                             ; preds = %1237
  %1240 = call float @llvm.fmuladd.f32(float %1235, float 2.550000e+02, float 5.000000e-01)
  %1241 = fptoui float %1240 to i8
  br label %1242

1242:                                             ; preds = %1239, %1237, %1233
  %1243 = phi i8 [ 0, %1233 ], [ %1241, %1239 ], [ -1, %1237 ]
  %1244 = fmul float %1164, %1225
  %1245 = fcmp ugt float %1244, 0.000000e+00
  br i1 %1245, label %1246, label %1251

1246:                                             ; preds = %1242
  %1247 = fcmp ogt float %1244, 0x3FEFEFEFE0000000
  br i1 %1247, label %1251, label %1248

1248:                                             ; preds = %1246
  %1249 = call float @llvm.fmuladd.f32(float %1244, float 2.550000e+02, float 5.000000e-01)
  %1250 = fptoui float %1249 to i8
  br label %1251

1251:                                             ; preds = %1248, %1246, %1242, %1221, %1219, %1216
  %1252 = phi i8 [ 0, %1216 ], [ %1223, %1221 ], [ -1, %1219 ], [ 0, %1242 ], [ %1250, %1248 ], [ -1, %1246 ]
  %1253 = phi i8 [ %1217, %1216 ], [ %1217, %1221 ], [ %1217, %1219 ], [ %1243, %1242 ], [ %1243, %1248 ], [ %1243, %1246 ]
  %1254 = phi i8 [ %1209, %1216 ], [ %1209, %1221 ], [ %1209, %1219 ], [ %1234, %1242 ], [ %1234, %1248 ], [ %1234, %1246 ]
  store i8 %1254, ptr %1197, align 1, !tbaa !135
  %1255 = getelementptr inbounds i8, ptr %1197, i64 1
  store i8 %1253, ptr %1255, align 1, !tbaa !135
  %1256 = getelementptr inbounds i8, ptr %1197, i64 2
  store i8 %1252, ptr %1256, align 1, !tbaa !135
  br label %1257

1257:                                             ; preds = %1251, %1173
  %1258 = add nuw nsw i32 %921, 1
  %1259 = load i32, ptr %22, align 4, !tbaa !115
  %1260 = icmp slt i32 %1258, %1259
  br i1 %1260, label %920, label %1261, !llvm.loop !149

1261:                                             ; preds = %1257, %916
  %1262 = add nuw nsw i32 %917, 1
  %1263 = load i32, ptr %885, align 4, !tbaa !115
  %1264 = icmp slt i32 %1262, %1263
  br i1 %1264, label %916, label %1265, !llvm.loop !150

1265:                                             ; preds = %1261, %895, %889
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #7
  br label %1352

1266:                                             ; preds = %831
  %1267 = load float, ptr %42, align 4, !tbaa !56
  %1268 = fcmp oeq float %1267, %849
  %1269 = load float, ptr %80, align 4
  %1270 = fcmp oeq float %1269, %858
  %1271 = select i1 %1268, i1 %1270, i1 false
  br i1 %1271, label %1452, label %1272

1272:                                             ; preds = %1266
  %1273 = fsub float %1267, %853
  %1274 = fadd float %1273, 1.000000e+00
  %1275 = call float @llvm.floor.f32(float %1274)
  %1276 = fptosi float %1275 to i32
  %1277 = fsub float %1269, %862
  %1278 = fadd float %1277, 1.000000e+00
  %1279 = call float @llvm.floor.f32(float %1278)
  %1280 = fptosi float %1279 to i32
  %1281 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %1282 = load ptr, ptr %1281, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %19) #7
  store i32 0, ptr %19, align 16, !tbaa !151
  %1283 = getelementptr inbounds %struct.ImagePaintRegion, ptr %19, i64 0, i32 1
  store i32 0, ptr %1283, align 4, !tbaa !153
  %1284 = getelementptr inbounds %struct.ImagePaintRegion, ptr %19, i64 0, i32 2
  store i32 %1276, ptr %1284, align 8, !tbaa !154
  %1285 = getelementptr inbounds %struct.ImagePaintRegion, ptr %19, i64 0, i32 3
  store i32 %1280, ptr %1285, align 4, !tbaa !155
  %1286 = getelementptr inbounds %struct.ImagePaintRegion, ptr %19, i64 0, i32 4
  store i32 %851, ptr %1286, align 16, !tbaa !156
  %1287 = getelementptr inbounds %struct.ImagePaintRegion, ptr %19, i64 0, i32 5
  store i32 %860, ptr %1287, align 4, !tbaa !157
  %1288 = call fastcc i32 @paint_2d_torus_split_region(ptr noundef nonnull %19, ptr noundef %834, ptr noundef %1282)
  %1289 = icmp sgt i32 %1288, 0
  br i1 %1289, label %1290, label %1308

1290:                                             ; preds = %1272
  %1291 = zext nneg i32 %1288 to i64
  br label %1292

1292:                                             ; preds = %1290, %1292
  %1293 = phi i64 [ 0, %1290 ], [ %1306, %1292 ]
  %1294 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %19, i64 0, i64 %1293
  %1295 = load i32, ptr %1294, align 8, !tbaa !151
  %1296 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %19, i64 0, i64 %1293, i32 1
  %1297 = load i32, ptr %1296, align 4, !tbaa !153
  %1298 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %19, i64 0, i64 %1293, i32 2
  %1299 = load i32, ptr %1298, align 8, !tbaa !154
  %1300 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %19, i64 0, i64 %1293, i32 3
  %1301 = load i32, ptr %1300, align 4, !tbaa !155
  %1302 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %19, i64 0, i64 %1293, i32 4
  %1303 = load i32, ptr %1302, align 8, !tbaa !156
  %1304 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %19, i64 0, i64 %1293, i32 5
  %1305 = load i32, ptr %1304, align 4, !tbaa !157
  call void @IMB_rectblend(ptr noundef %834, ptr noundef %834, ptr noundef %1282, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %1295, i32 noundef %1297, i32 noundef %1295, i32 noundef %1297, i32 noundef %1299, i32 noundef %1301, i32 noundef %1303, i32 noundef %1305, i32 noundef 1001, i8 noundef zeroext 0) #7
  %1306 = add nuw nsw i64 %1293, 1
  %1307 = icmp eq i64 %1306, %1291
  br i1 %1307, label %1308, label %1292, !llvm.loop !158

1308:                                             ; preds = %1292, %1272
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %19) #7
  br label %1352

1309:                                             ; preds = %831
  %1310 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 11
  %1311 = load ptr, ptr %1310, align 8, !tbaa !159
  %1312 = icmp eq ptr %1311, null
  br i1 %1312, label %1352, label %1313

1313:                                             ; preds = %1309
  %1314 = load float, ptr %845, align 4, !tbaa !56
  %1315 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %1316 = load ptr, ptr %1315, align 8, !tbaa !140
  %1317 = getelementptr inbounds %struct.ImBuf, ptr %1316, i64 0, i32 2
  %1318 = load i32, ptr %1317, align 8, !tbaa !57
  %1319 = sitofp i32 %1318 to float
  %1320 = fneg float %1314
  %1321 = call float @llvm.fmuladd.f32(float %1320, float %1319, float %849)
  %1322 = getelementptr inbounds %struct.Brush, ptr %839, i64 0, i32 1, i32 1, i64 1
  %1323 = load float, ptr %1322, align 4, !tbaa !56
  %1324 = getelementptr inbounds %struct.ImBuf, ptr %1316, i64 0, i32 3
  %1325 = load i32, ptr %1324, align 4, !tbaa !58
  %1326 = sitofp i32 %1325 to float
  %1327 = fneg float %1323
  %1328 = call float @llvm.fmuladd.f32(float %1327, float %1326, float %858)
  %1329 = fsub float %1321, %853
  %1330 = fadd float %1329, 1.000000e+00
  %1331 = call float @llvm.floor.f32(float %1330)
  %1332 = fptosi float %1331 to i32
  %1333 = fsub float %1328, %862
  %1334 = fadd float %1333, 1.000000e+00
  %1335 = call float @llvm.floor.f32(float %1334)
  %1336 = fptosi float %1335 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #7
  store i32 %851, ptr %13, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  store i32 %860, ptr %14, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  store i32 0, ptr %15, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #7
  store i32 0, ptr %16, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #7
  store i32 %1332, ptr %17, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #7
  store i32 %1336, ptr %18, align 4, !tbaa !115
  %1337 = getelementptr inbounds %struct.ImBuf, ptr %834, i64 0, i32 4
  %1338 = load i8, ptr %1337, align 8, !tbaa !160
  %1339 = getelementptr inbounds %struct.ImBuf, ptr %834, i64 0, i32 6
  %1340 = load i32, ptr %1339, align 8, !tbaa !161
  %1341 = call ptr @IMB_allocImBuf(i32 noundef %851, i32 noundef %860, i8 noundef zeroext %1338, i32 noundef %1340) #7
  call void @IMB_rectclip(ptr noundef %1341, ptr noundef nonnull %1311, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %13, ptr noundef nonnull %14) #7
  %1342 = load i32, ptr %15, align 4, !tbaa !115
  %1343 = load i32, ptr %16, align 4, !tbaa !115
  %1344 = load i32, ptr %13, align 4, !tbaa !115
  %1345 = load i32, ptr %14, align 4, !tbaa !115
  call void @IMB_rectblend(ptr noundef %1341, ptr noundef %1341, ptr noundef %834, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %1342, i32 noundef %1343, i32 noundef %1342, i32 noundef %1343, i32 noundef %1342, i32 noundef %1343, i32 noundef %1344, i32 noundef %1345, i32 noundef 1002, i8 noundef zeroext 0) #7
  %1346 = load i32, ptr %15, align 4, !tbaa !115
  %1347 = load i32, ptr %16, align 4, !tbaa !115
  %1348 = load i32, ptr %17, align 4, !tbaa !115
  %1349 = load i32, ptr %18, align 4, !tbaa !115
  %1350 = load i32, ptr %13, align 4, !tbaa !115
  %1351 = load i32, ptr %14, align 4, !tbaa !115
  call void @IMB_rectblend(ptr noundef %1341, ptr noundef %1341, ptr noundef nonnull %1311, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %1346, i32 noundef %1347, i32 noundef %1346, i32 noundef %1347, i32 noundef %1348, i32 noundef %1349, i32 noundef %1350, i32 noundef %1351, i32 noundef 1001, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #7
  br label %1352

1352:                                             ; preds = %1313, %1309, %1308, %1265, %831
  %1353 = phi ptr [ null, %1265 ], [ null, %1308 ], [ %1341, %1313 ], [ null, %1309 ], [ null, %831 ]
  %1354 = icmp eq ptr %1353, null
  %1355 = select i1 %1354, ptr %834, ptr %1353
  %1356 = icmp eq i16 %843, 0
  %1357 = getelementptr inbounds %struct.ImBuf, ptr %1355, i64 0, i32 2
  %1358 = load i32, ptr %1357, align 8, !tbaa !57
  %1359 = getelementptr inbounds %struct.ImBuf, ptr %1355, i64 0, i32 3
  %1360 = load i32, ptr %1359, align 4, !tbaa !58
  store i32 %857, ptr %23, align 16, !tbaa !151
  %1361 = getelementptr inbounds %struct.ImagePaintRegion, ptr %23, i64 0, i32 1
  store i32 %866, ptr %1361, align 4, !tbaa !153
  %1362 = getelementptr inbounds %struct.ImagePaintRegion, ptr %23, i64 0, i32 2
  store i32 0, ptr %1362, align 8, !tbaa !154
  %1363 = getelementptr inbounds %struct.ImagePaintRegion, ptr %23, i64 0, i32 3
  store i32 0, ptr %1363, align 4, !tbaa !155
  %1364 = getelementptr inbounds %struct.ImagePaintRegion, ptr %23, i64 0, i32 4
  store i32 %1358, ptr %1364, align 16, !tbaa !156
  %1365 = getelementptr inbounds %struct.ImagePaintRegion, ptr %23, i64 0, i32 5
  store i32 %1360, ptr %1365, align 4, !tbaa !157
  br i1 %1356, label %1370, label %1366

1366:                                             ; preds = %1352
  %1367 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %1368 = load ptr, ptr %1367, align 8, !tbaa !140
  %1369 = call fastcc i32 @paint_2d_torus_split_region(ptr noundef nonnull %23, ptr noundef %1368, ptr noundef %1355)
  br label %1370

1370:                                             ; preds = %1352, %1366
  %1371 = phi i32 [ %1369, %1366 ], [ 1, %1352 ]
  %1372 = icmp sgt i32 %1371, 0
  br i1 %1372, label %1373, label %1450

1373:                                             ; preds = %1370
  %1374 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %1375 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 14
  %1376 = sext i16 %844 to i32
  %1377 = sext i16 %844 to i32
  %1378 = zext nneg i32 %1371 to i64
  br label %1379

1379:                                             ; preds = %1373, %1447
  %1380 = phi i64 [ 0, %1373 ], [ %1448, %1447 ]
  %1381 = load ptr, ptr %45, align 8, !tbaa !41
  %1382 = load ptr, ptr %1374, align 8, !tbaa !140
  %1383 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380
  %1384 = load i32, ptr %1383, align 8, !tbaa !151
  %1385 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380, i32 1
  %1386 = load i32, ptr %1385, align 4, !tbaa !153
  %1387 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380, i32 4
  %1388 = load i32, ptr %1387, align 8, !tbaa !156
  %1389 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380, i32 5
  %1390 = load i32, ptr %1389, align 4, !tbaa !157
  call void @ED_imapaint_dirty_region(ptr noundef %1381, ptr noundef %1382, i32 noundef %1384, i32 noundef %1386, i32 noundef %1388, i32 noundef %1390) #7
  %1391 = load i8, ptr %1375, align 8, !tbaa !162
  %1392 = icmp eq i8 %1391, 0
  br i1 %1392, label %1441, label %1393

1393:                                             ; preds = %1379
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #7
  %1394 = load ptr, ptr %1374, align 8, !tbaa !140
  call void @imapaint_region_tiles(ptr noundef %1394, i32 noundef %1384, i32 noundef %1386, i32 noundef %1388, i32 noundef %1390, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %27) #7
  %1395 = call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 0) #7
  %1396 = load i32, ptr %25, align 4, !tbaa !115
  %1397 = load i32, ptr %27, align 4, !tbaa !115
  %1398 = icmp sgt i32 %1396, %1397
  br i1 %1398, label %1440, label %1399

1399:                                             ; preds = %1393
  %1400 = getelementptr inbounds %struct.ImBuf, ptr %1395, i64 0, i32 9
  %1401 = getelementptr inbounds %struct.ImBuf, ptr %1395, i64 0, i32 8
  %1402 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380, i32 2
  %1403 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380, i32 3
  br label %1404

1404:                                             ; preds = %1399, %1436
  %1405 = phi i32 [ %1396, %1399 ], [ %1437, %1436 ]
  %1406 = load i32, ptr %24, align 4, !tbaa !115
  %1407 = load i32, ptr %26, align 4, !tbaa !115
  %1408 = icmp sgt i32 %1406, %1407
  br i1 %1408, label %1436, label %1409

1409:                                             ; preds = %1404
  %1410 = shl nsw i32 %1405, 6
  %1411 = sub nsw i32 %1386, %1410
  br label %1412

1412:                                             ; preds = %1409, %1412
  %1413 = phi i32 [ %1406, %1409 ], [ %1433, %1412 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #7
  %1414 = shl nsw i32 %1413, 6
  %1415 = sub nsw i32 %1384, %1414
  %1416 = load ptr, ptr %1374, align 8, !tbaa !140
  %1417 = getelementptr inbounds %struct.ImBuf, ptr %1416, i64 0, i32 9
  %1418 = load ptr, ptr %1417, align 8, !tbaa !63
  %1419 = icmp eq ptr %1418, null
  %1420 = load ptr, ptr %45, align 8, !tbaa !41
  %1421 = call ptr @image_undo_find_tile(ptr noundef %1420, ptr noundef %1416, i32 noundef %1413, i32 noundef %1405, ptr noundef nonnull %28, i8 noundef zeroext 0) #7
  %1422 = select i1 %1419, ptr %1401, ptr %1400
  store ptr %1421, ptr %1422, align 8, !tbaa !68
  %1423 = load ptr, ptr %1374, align 8, !tbaa !140
  %1424 = load ptr, ptr %28, align 8, !tbaa !68
  %1425 = load i32, ptr %1402, align 8, !tbaa !154
  %1426 = load i32, ptr %1403, align 4, !tbaa !155
  %1427 = load ptr, ptr %63, align 8, !tbaa !48
  %1428 = getelementptr inbounds %struct.Brush, ptr %1427, i64 0, i32 16
  %1429 = load i32, ptr %1428, align 8, !tbaa !98
  %1430 = lshr i32 %1429, 13
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  call void @IMB_rectblend(ptr noundef %1423, ptr noundef %1395, ptr noundef %1355, ptr noundef %1424, ptr noundef %836, ptr noundef %838, float noundef %848, i32 noundef %1384, i32 noundef %1386, i32 noundef %1415, i32 noundef %1411, i32 noundef %1425, i32 noundef %1426, i32 noundef %1388, i32 noundef %1390, i32 noundef %1376, i8 noundef zeroext %1432) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #7
  %1433 = add nsw i32 %1413, 1
  %1434 = load i32, ptr %26, align 4, !tbaa !115
  %1435 = icmp slt i32 %1413, %1434
  br i1 %1435, label %1412, label %1436, !llvm.loop !163

1436:                                             ; preds = %1412, %1404
  %1437 = add nsw i32 %1405, 1
  %1438 = load i32, ptr %27, align 4, !tbaa !115
  %1439 = icmp slt i32 %1405, %1438
  br i1 %1439, label %1404, label %1440, !llvm.loop !164

1440:                                             ; preds = %1436, %1393
  call void @IMB_freeImBuf(ptr noundef %1395) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #7
  br label %1447

1441:                                             ; preds = %1379
  %1442 = load ptr, ptr %1374, align 8, !tbaa !140
  %1443 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380, i32 2
  %1444 = load i32, ptr %1443, align 8, !tbaa !154
  %1445 = getelementptr inbounds [4 x %struct.ImagePaintRegion], ptr %23, i64 0, i64 %1380, i32 3
  %1446 = load i32, ptr %1445, align 4, !tbaa !155
  call void @IMB_rectblend(ptr noundef %1442, ptr noundef %1442, ptr noundef %1355, ptr noundef null, ptr noundef %836, ptr noundef %838, float noundef %848, i32 noundef %1384, i32 noundef %1386, i32 noundef %1384, i32 noundef %1386, i32 noundef %1444, i32 noundef %1446, i32 noundef %1388, i32 noundef %1390, i32 noundef %1377, i8 noundef zeroext 0) #7
  br label %1447

1447:                                             ; preds = %1441, %1440
  %1448 = add nuw nsw i64 %1380, 1
  %1449 = icmp eq i64 %1448, %1378
  br i1 %1449, label %1450, label %1379, !llvm.loop !165

1450:                                             ; preds = %1447, %1370
  br i1 %1354, label %1453, label %1451

1451:                                             ; preds = %1450
  call void @IMB_freeImBuf(ptr noundef nonnull %1353) #7
  br label %1453

1452:                                             ; preds = %1266
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %23) #7
  br label %1455

1453:                                             ; preds = %1450, %1451
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %23) #7
  %1454 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 19
  store i8 1, ptr %1454, align 8, !tbaa !166
  br label %1455

1455:                                             ; preds = %1452, %1453
  %1456 = load ptr, ptr %45, align 8, !tbaa !41
  call void @BKE_image_release_ibuf(ptr noundef %1456, ptr noundef nonnull %52, ptr noundef null) #7
  br label %1457

1457:                                             ; preds = %60, %1455
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @paint_2d_new_stroke(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %8 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %7) #7
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %10 = tail call ptr %9(i64 noundef 152, ptr noundef nonnull @.str) #7
  %11 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !42
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 3
  store ptr %4, ptr %16, align 8, !tbaa !138
  %17 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %18 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !167
  %19 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 6
  store ptr %8, ptr %19, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 36
  %21 = load i8, ptr %20, align 2, !tbaa !74
  %22 = zext i8 %21 to i16
  %23 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 7
  store i16 %22, ptr %23, align 8, !tbaa !139
  %24 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 12
  %25 = load i16, ptr %24, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 8
  store i16 %25, ptr %26, align 2, !tbaa !54
  %27 = load ptr, ptr %12, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !168
  %30 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 9
  store ptr %29, ptr %30, align 8, !tbaa !41
  %31 = icmp eq ptr %27, null
  %32 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 6
  %33 = select i1 %31, ptr null, ptr %32
  %34 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %29, ptr noundef %33, ptr noundef null) #7
  %35 = icmp eq ptr %29, null
  br i1 %35, label %112, label %36

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.Image, ptr %29, i64 0, i32 22
  %38 = load ptr, ptr %37, align 8, !tbaa !174
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Image, ptr %29, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !176
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 4, i64 2
  %46 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 12
  store ptr %45, ptr %46, align 8, !tbaa !177
  br label %112

47:                                               ; preds = %40, %36
  %48 = icmp eq ptr %34, null
  br i1 %48, label %112, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !178
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 4, i64 2
  %55 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 13
  store ptr %54, ptr %55, align 8, !tbaa !179
  br label %112

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !134
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = icmp eq ptr %62, null
  br i1 %63, label %112, label %64

64:                                               ; preds = %60, %56
  store ptr %29, ptr %30, align 8, !tbaa !41
  %65 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 10
  store ptr %34, ptr %65, align 8, !tbaa !140
  %66 = load i16, ptr %23, align 8, !tbaa !139
  %67 = icmp eq i16 %66, 3
  br i1 %67, label %68, label %106

68:                                               ; preds = %64
  %69 = load ptr, ptr %19, align 8, !tbaa !48
  %70 = getelementptr inbounds %struct.Brush, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !180
  %72 = load ptr, ptr %12, align 8, !tbaa !42
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %struct.SpaceImage, ptr %72, i64 0, i32 6
  %75 = select i1 %73, ptr null, ptr %74
  %76 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %71, ptr noundef %75, ptr noundef null) #7
  %77 = icmp ne ptr %71, null
  %78 = icmp ne ptr %76, null
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %88

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !134
  %83 = icmp ne ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !63
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %68
  tail call void @BKE_image_release_ibuf(ptr noundef %71, ptr noundef %76, ptr noundef null) #7
  %89 = load ptr, ptr %30, align 8, !tbaa !41
  %90 = load ptr, ptr %65, align 8, !tbaa !140
  tail call void @BKE_image_release_ibuf(ptr noundef %89, ptr noundef %90, ptr noundef null) #7
  br label %112

91:                                               ; preds = %84, %80
  %92 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 11
  store ptr %76, ptr %92, align 8, !tbaa !159
  %93 = load ptr, ptr %65, align 8, !tbaa !140
  %94 = getelementptr inbounds %struct.ImBuf, ptr %93, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !63
  %96 = icmp ne ptr %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !63
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @IMB_float_from_rect(ptr noundef nonnull %76) #7
  br label %106

102:                                              ; preds = %97
  %103 = or i1 %83, %96
  br i1 %103, label %106, label %105

104:                                              ; preds = %91
  br i1 %83, label %106, label %105

105:                                              ; preds = %102, %104
  tail call void @IMB_rect_from_float(ptr noundef nonnull %76) #7
  br label %106

106:                                              ; preds = %102, %105, %104, %101, %64
  %107 = load ptr, ptr %19, align 8, !tbaa !48
  %108 = tail call zeroext i8 @paint_use_opacity_masking(ptr noundef %107) #7
  %109 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 14
  store i8 %108, ptr %109, align 8, !tbaa !162
  %110 = load i8, ptr %20, align 2, !tbaa !74
  %111 = icmp eq i8 %110, 1
  br i1 %111, label %128, label %131

112:                                              ; preds = %60, %47, %3, %88, %53, %44
  %113 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 13
  %114 = load ptr, ptr %113, align 8, !tbaa !179
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !181
  tail call void @BKE_report(ptr noundef %118, i32 noundef 16, ptr noundef nonnull @.str.1) #7
  br label %119

119:                                              ; preds = %116, %112
  %120 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 12
  %121 = load ptr, ptr %120, align 8, !tbaa !177
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %125 = load ptr, ptr %124, align 8, !tbaa !181
  tail call void @BKE_report(ptr noundef %125, i32 noundef 16, ptr noundef nonnull @.str.2) #7
  br label %126

126:                                              ; preds = %123, %119
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %127(ptr noundef %10) #7
  br label %142

128:                                              ; preds = %106
  %129 = tail call ptr @paint_new_blur_kernel(ptr noundef %8, i8 noundef zeroext 0) #7
  %130 = getelementptr inbounds %struct.ImagePaintState, ptr %10, i64 0, i32 20
  store ptr %129, ptr %130, align 8, !tbaa !142
  br label %131

131:                                              ; preds = %128, %106
  %132 = load ptr, ptr %19, align 8, !tbaa !48
  tail call void @paint_brush_init_tex(ptr noundef %132) #7
  %133 = load ptr, ptr %19, align 8, !tbaa !48
  %134 = icmp eq i32 %2, 1
  %135 = zext i1 %134 to i8
  %136 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %137 = tail call ptr %136(i64 noundef 152, ptr noundef nonnull @.str.5) #7
  %138 = getelementptr inbounds %struct.BrushPainter, ptr %137, i64 0, i32 1
  store ptr %133, ptr %138, align 8, !tbaa !64
  store ptr %4, ptr %137, align 8, !tbaa !78
  %139 = getelementptr inbounds %struct.BrushPainter, ptr %137, i64 0, i32 4
  store i16 1, ptr %139, align 8, !tbaa !59
  %140 = getelementptr inbounds %struct.BrushPainter, ptr %137, i64 0, i32 8, i32 5
  store i32 -1, ptr %140, align 8, !tbaa !71
  %141 = getelementptr inbounds %struct.BrushPainter, ptr %137, i64 0, i32 8, i32 2
  store i8 %135, ptr %141, align 2, !tbaa !133
  store ptr %137, ptr %10, align 8, !tbaa !34
  br label %142

142:                                              ; preds = %131, %126
  %143 = phi ptr [ %10, %131 ], [ null, %126 ]
  ret ptr %143
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @paint_new_blur_kernel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @paint_brush_init_tex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paint_2d_redraw(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 19
  %5 = load i8, ptr %4, align 8, !tbaa !166
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 6
  %14 = select i1 %12, ptr null, ptr %13
  %15 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %9, ptr noundef %14, ptr noundef null) #7
  %16 = load ptr, ptr %10, align 8, !tbaa !42
  %17 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @imapaint_image_update(ptr noundef %16, ptr noundef %17, ptr noundef %15, i16 noundef signext 0) #7
  tail call void @ED_imapaint_clear_partial_redraw() #7
  %18 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @BKE_image_release_ibuf(ptr noundef %18, ptr noundef %15, ptr noundef null) #7
  store i8 0, ptr %4, align 8, !tbaa !166
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %38, label %22

20:                                               ; preds = %3
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %20, %7
  %23 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImagePaintState, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.SpaceImage, ptr %28, i64 0, i32 21
  %32 = load i16, ptr %31, align 2, !tbaa !183
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  tail call void @GPU_free_image(ptr noundef nonnull %24) #7
  br label %35

35:                                               ; preds = %34, %30, %22
  %36 = load ptr, ptr %23, align 8, !tbaa !41
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %36) #7
  %37 = load ptr, ptr %23, align 8, !tbaa !41
  tail call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 0) #7
  br label %49

38:                                               ; preds = %7
  %39 = load ptr, ptr %10, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.SpaceImage, ptr %39, i64 0, i32 21
  %43 = load i16, ptr %42, align 2, !tbaa !183
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38
  %46 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  tail call void @ED_region_tag_redraw(ptr noundef %46) #7
  br label %49

47:                                               ; preds = %41
  %48 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772167, ptr noundef %48) #7
  br label %49

49:                                               ; preds = %20, %35, %47, %45
  ret void
}

declare void @imapaint_image_update(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_imapaint_clear_partial_redraw() local_unnamed_addr #2

declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paint_2d_stroke_done(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  tail call void @BKE_image_release_ibuf(ptr noundef %3, ptr noundef %5, ptr noundef null) #7
  %6 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  %10 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  tail call void @BKE_image_release_ibuf(ptr noundef %9, ptr noundef %11, ptr noundef null) #7
  %12 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  tail call void @paint_delete_blur_kernel(ptr noundef nonnull %13) #7
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  %17 = load ptr, ptr %12, align 8, !tbaa !142
  tail call void %16(ptr noundef %17) #7
  br label %18

18:                                               ; preds = %1, %15
  tail call void @image_undo_remove_masks() #7
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.BrushPainter, ptr %19, i64 0, i32 8, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %21) #7
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.BrushPainter, ptr %19, i64 0, i32 8, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @IMB_freeImBuf(ptr noundef nonnull %26) #7
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.BrushPainter, ptr %19, i64 0, i32 8, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %34(ptr noundef nonnull %31) #7
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.BrushPainter, ptr %19, i64 0, i32 8, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %40(ptr noundef nonnull %37) #7
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.BrushPainter, ptr %19, i64 0, i32 8, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %46(ptr noundef nonnull %43) #7
  br label %47

47:                                               ; preds = %41, %45
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %48(ptr noundef %19) #7
  %49 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void @paint_brush_exit_tex(ptr noundef %49) #7
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %50(ptr noundef nonnull %0) #7
  ret void
}

declare void @paint_brush_exit_tex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paint_2d_bucket_fill(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x float], align 16
  %16 = alloca i32, align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca [4 x float], align 16
  %19 = alloca i32, align 4
  %20 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #7
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7
  %23 = icmp ne ptr %2, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 26
  %26 = load float, ptr %25, align 8, !tbaa !185
  br label %27

27:                                               ; preds = %5, %24
  %28 = phi float [ %26, %24 ], [ 1.000000e+00, %5 ]
  %29 = icmp eq ptr %22, null
  br i1 %29, label %753, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.SpaceImage, ptr %20, i64 0, i32 6
  %32 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %31, ptr noundef null) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %753, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = icmp eq ptr %36, null
  %38 = load float, ptr %1, align 4, !tbaa !56
  %39 = getelementptr inbounds float, ptr %1, i64 1
  br i1 %37, label %40, label %76

40:                                               ; preds = %34
  %41 = tail call float @linearrgb_to_srgb(float noundef %38) #7
  %42 = load float, ptr %39, align 4, !tbaa !56
  %43 = tail call float @linearrgb_to_srgb(float noundef %42) #7
  %44 = getelementptr inbounds float, ptr %1, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !56
  %46 = tail call float @linearrgb_to_srgb(float noundef %45) #7
  %47 = fcmp ugt float %41, 0.000000e+00
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = fcmp ogt float %41, 0x3FEFEFEFE0000000
  %50 = tail call float @llvm.fmuladd.f32(float %41, float 2.550000e+02, float 5.000000e-01)
  %51 = select i1 %49, float 2.550000e+02, float %50
  %52 = fptoui float %51 to i8
  br label %53

53:                                               ; preds = %48, %40
  %54 = phi i8 [ %52, %48 ], [ 0, %40 ]
  store i8 %54, ptr %14, align 4, !tbaa !135
  %55 = fcmp ugt float %43, 0.000000e+00
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = fcmp ogt float %43, 0x3FEFEFEFE0000000
  %58 = tail call float @llvm.fmuladd.f32(float %43, float 2.550000e+02, float 5.000000e-01)
  %59 = select i1 %57, float 2.550000e+02, float %58
  %60 = fptoui float %59 to i8
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i8 [ %60, %56 ], [ 0, %53 ]
  %63 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %62, ptr %63, align 1, !tbaa !135
  %64 = fcmp ugt float %46, 0.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = fcmp ogt float %46, 0x3FEFEFEFE0000000
  %67 = tail call float @llvm.fmuladd.f32(float %46, float 2.550000e+02, float 5.000000e-01)
  %68 = select i1 %66, float 2.550000e+02, float %67
  %69 = fptoui float %68 to i8
  br label %70

70:                                               ; preds = %61, %65
  %71 = phi i8 [ %69, %65 ], [ 0, %61 ]
  %72 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %71, ptr %72, align 2, !tbaa !135
  %73 = fmul float %28, 2.550000e+02
  %74 = fptoui float %73 to i8
  %75 = getelementptr inbounds i8, ptr %14, i64 3
  store i8 %74, ptr %75, align 1, !tbaa !135
  br label %83

76:                                               ; preds = %34
  store float %38, ptr %15, align 16, !tbaa !56
  %77 = load float, ptr %39, align 4, !tbaa !56
  %78 = getelementptr inbounds float, ptr %15, i64 1
  store float %77, ptr %78, align 4, !tbaa !56
  %79 = getelementptr inbounds float, ptr %1, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !56
  %81 = getelementptr inbounds float, ptr %15, i64 2
  store float %80, ptr %81, align 8, !tbaa !56
  %82 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  store float %28, ptr %82, align 4, !tbaa !56
  br label %83

83:                                               ; preds = %76, %70
  %84 = icmp ne ptr %3, null
  %85 = and i1 %23, %84
  br i1 %85, label %214, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !57
  %89 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !58
  tail call void @ED_imapaint_dirty_region(ptr noundef nonnull %22, ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef %88, i32 noundef %90) #7
  %91 = load i32, ptr %87, align 8, !tbaa !57
  %92 = icmp sgt i32 %91, 0
  br i1 %37, label %103, label %93

93:                                               ; preds = %86
  br i1 %92, label %94, label %752

94:                                               ; preds = %93
  %95 = load i32, ptr %89, align 4, !tbaa !58
  %96 = icmp sgt i32 %95, 0
  %97 = getelementptr inbounds float, ptr %15, i64 3
  %98 = getelementptr inbounds float, ptr %15, i64 1
  %99 = getelementptr inbounds float, ptr %15, i64 2
  %100 = zext nneg i32 %91 to i64
  %101 = zext nneg i32 %91 to i64
  %102 = zext nneg i32 %95 to i64
  br label %109

103:                                              ; preds = %86
  br i1 %92, label %104, label %752

104:                                              ; preds = %103
  %105 = getelementptr inbounds i8, ptr %14, i64 3
  %106 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 8
  %107 = getelementptr inbounds i8, ptr %14, i64 1
  %108 = getelementptr inbounds i8, ptr %14, i64 2
  br label %143

109:                                              ; preds = %94, %140
  %110 = phi i64 [ 0, %94 ], [ %141, %140 ]
  br i1 %96, label %111, label %140

111:                                              ; preds = %109, %137
  %112 = phi i64 [ %138, %137 ], [ 0, %109 ]
  %113 = load float, ptr %97, align 4, !tbaa !56
  %114 = fcmp une float %113, 0.000000e+00
  br i1 %114, label %115, label %137

115:                                              ; preds = %111
  %116 = load ptr, ptr %35, align 8, !tbaa !63
  %117 = mul i64 %112, %100
  %118 = add i64 %117, %110
  %119 = shl i64 %118, 2
  %120 = and i64 %119, 4294967292
  %121 = getelementptr inbounds float, ptr %116, i64 %120
  %122 = fsub float 1.000000e+00, %113
  %123 = load float, ptr %121, align 4, !tbaa !56
  %124 = load float, ptr %15, align 16, !tbaa !56
  %125 = tail call float @llvm.fmuladd.f32(float %122, float %123, float %124)
  store float %125, ptr %121, align 4, !tbaa !56
  %126 = getelementptr inbounds float, ptr %121, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !56
  %128 = load float, ptr %98, align 4, !tbaa !56
  %129 = tail call float @llvm.fmuladd.f32(float %122, float %127, float %128)
  store float %129, ptr %126, align 4, !tbaa !56
  %130 = getelementptr inbounds float, ptr %121, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !56
  %132 = load float, ptr %99, align 8, !tbaa !56
  %133 = tail call float @llvm.fmuladd.f32(float %122, float %131, float %132)
  store float %133, ptr %130, align 4, !tbaa !56
  %134 = getelementptr inbounds float, ptr %121, i64 3
  %135 = load float, ptr %134, align 4, !tbaa !56
  %136 = tail call float @llvm.fmuladd.f32(float %122, float %135, float %113)
  store float %136, ptr %134, align 4, !tbaa !56
  br label %137

137:                                              ; preds = %111, %115
  %138 = add nuw nsw i64 %112, 1
  %139 = icmp eq i64 %138, %102
  br i1 %139, label %140, label %111, !llvm.loop !186

140:                                              ; preds = %137, %109
  %141 = add nuw nsw i64 %110, 1
  %142 = icmp eq i64 %141, %101
  br i1 %142, label %752, label %109, !llvm.loop !187

143:                                              ; preds = %104, %209
  %144 = phi i64 [ 0, %104 ], [ %210, %209 ]
  %145 = load i32, ptr %89, align 4, !tbaa !58
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %209

147:                                              ; preds = %143, %205
  %148 = phi i32 [ %206, %205 ], [ 0, %143 ]
  %149 = load i8, ptr %105, align 1, !tbaa !135
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %205, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %106, align 8, !tbaa !134
  %153 = load i32, ptr %87, align 8, !tbaa !57
  %154 = mul nsw i32 %153, %148
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %152, i64 %155
  %157 = getelementptr inbounds i32, ptr %156, i64 %144
  %158 = zext i8 %149 to i32
  %159 = xor i32 %158, 255
  %160 = getelementptr inbounds i8, ptr %157, i64 3
  %161 = load i8, ptr %160, align 1, !tbaa !135
  %162 = zext i8 %161 to i32
  %163 = mul nuw nsw i32 %159, %162
  %164 = load i8, ptr %157, align 1, !tbaa !135
  %165 = zext i8 %164 to i32
  %166 = mul nuw nsw i32 %163, %165
  %167 = mul nuw nsw i32 %158, 255
  %168 = load i8, ptr %14, align 4, !tbaa !135
  %169 = zext i8 %168 to i32
  %170 = mul nuw nsw i32 %167, %169
  %171 = add nuw nsw i32 %170, %166
  %172 = getelementptr inbounds i8, ptr %157, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !135
  %174 = zext i8 %173 to i32
  %175 = mul nuw nsw i32 %163, %174
  %176 = load i8, ptr %107, align 1, !tbaa !135
  %177 = zext i8 %176 to i32
  %178 = mul nuw nsw i32 %167, %177
  %179 = add nuw nsw i32 %178, %175
  %180 = getelementptr inbounds i8, ptr %157, i64 2
  %181 = load i8, ptr %180, align 1, !tbaa !135
  %182 = zext i8 %181 to i32
  %183 = mul nuw nsw i32 %163, %182
  %184 = load i8, ptr %108, align 2, !tbaa !135
  %185 = zext i8 %184 to i32
  %186 = mul nuw nsw i32 %167, %185
  %187 = add nuw nsw i32 %186, %183
  %188 = add nuw nsw i32 %163, %167
  %189 = shl nuw nsw i32 %171, 1
  %190 = add nuw nsw i32 %189, %188
  %191 = shl nuw nsw i32 %188, 1
  %192 = udiv i32 %190, %191
  %193 = trunc i32 %192 to i8
  store i8 %193, ptr %157, align 1, !tbaa !135
  %194 = shl nuw nsw i32 %179, 1
  %195 = add nuw nsw i32 %194, %188
  %196 = udiv i32 %195, %191
  %197 = trunc i32 %196 to i8
  store i8 %197, ptr %172, align 1, !tbaa !135
  %198 = shl nuw nsw i32 %187, 1
  %199 = add nuw nsw i32 %198, %188
  %200 = udiv i32 %199, %191
  %201 = trunc i32 %200 to i8
  store i8 %201, ptr %180, align 1, !tbaa !135
  %202 = add nuw nsw i32 %191, 255
  %203 = udiv i32 %202, 510
  %204 = trunc i32 %203 to i8
  store i8 %204, ptr %160, align 1, !tbaa !135
  br label %205

205:                                              ; preds = %147, %151
  %206 = add nuw nsw i32 %148, 1
  %207 = load i32, ptr %89, align 4, !tbaa !58
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %147, label %209, !llvm.loop !188

209:                                              ; preds = %205, %143
  %210 = add nuw nsw i64 %144, 1
  %211 = load i32, ptr %87, align 8, !tbaa !57
  %212 = sext i32 %211 to i64
  %213 = icmp slt i64 %210, %212
  br i1 %213, label %143, label %752, !llvm.loop !189

214:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #7
  %215 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #7
  %217 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #7
  %218 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 50
  %219 = load float, ptr %218, align 4, !tbaa !190
  %220 = fmul float %219, %219
  %221 = getelementptr inbounds %struct.ImagePaintState, ptr %4, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !55
  %223 = load float, ptr %3, align 4, !tbaa !56
  %224 = getelementptr inbounds float, ptr %3, i64 1
  %225 = load float, ptr %224, align 4, !tbaa !56
  %226 = getelementptr inbounds [2 x float], ptr %17, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %222, float noundef %223, float noundef %225, ptr noundef nonnull %17, ptr noundef nonnull %226) #7
  %227 = load float, ptr %17, align 4, !tbaa !56
  %228 = load i32, ptr %215, align 8, !tbaa !57
  %229 = sitofp i32 %228 to float
  %230 = fmul float %227, %229
  %231 = fptosi float %230 to i32
  %232 = load float, ptr %226, align 4, !tbaa !56
  %233 = load i32, ptr %217, align 4, !tbaa !58
  %234 = sitofp i32 %233 to float
  %235 = fmul float %232, %234
  %236 = fptosi float %235 to i32
  %237 = icmp sle i32 %228, %231
  %238 = icmp slt i32 %231, 0
  %239 = or i1 %237, %238
  br i1 %239, label %244, label %240

240:                                              ; preds = %214
  %241 = icmp slt i32 %233, %236
  %242 = icmp slt i32 %236, 0
  %243 = or i1 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240, %214
  call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef %32, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #7
  br label %753

245:                                              ; preds = %240
  call void @ED_imapaint_dirty_region(ptr noundef nonnull %22, ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef %228, i32 noundef %233) #7
  %246 = call ptr @BLI_stack_new(i64 noundef 4, ptr noundef nonnull @__func__.paint_2d_bucket_fill) #7
  %247 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %248 = load i32, ptr %215, align 8, !tbaa !57
  %249 = load i32, ptr %217, align 4, !tbaa !58
  %250 = mul nsw i32 %249, %248
  %251 = ashr i32 %250, 5
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = shl nsw i64 %253, 2
  %255 = call ptr %247(i64 noundef %254, ptr noundef nonnull @.str.3) #7
  %256 = load i32, ptr %215, align 8, !tbaa !57
  %257 = mul nsw i32 %256, %236
  %258 = add nsw i32 %257, %231
  store i32 %258, ptr %16, align 4, !tbaa !115
  br i1 %37, label %274, label %259

259:                                              ; preds = %245
  %260 = load ptr, ptr %35, align 8, !tbaa !63
  %261 = shl nsw i32 %258, 2
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, ptr %260, i64 %262
  %264 = load float, ptr %263, align 4, !tbaa !56
  store float %264, ptr %18, align 16, !tbaa !56
  %265 = getelementptr inbounds float, ptr %263, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !56
  %267 = getelementptr inbounds float, ptr %18, i64 1
  store float %266, ptr %267, align 4, !tbaa !56
  %268 = getelementptr inbounds float, ptr %263, i64 2
  %269 = load float, ptr %268, align 4, !tbaa !56
  %270 = getelementptr inbounds float, ptr %18, i64 2
  store float %269, ptr %270, align 8, !tbaa !56
  %271 = getelementptr inbounds float, ptr %263, i64 3
  %272 = load float, ptr %271, align 4, !tbaa !56
  %273 = getelementptr inbounds float, ptr %18, i64 3
  store float %272, ptr %273, align 4, !tbaa !56
  br label %280

274:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #7
  %275 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 8
  %276 = load ptr, ptr %275, align 8, !tbaa !134
  %277 = sext i32 %258 to i64
  %278 = getelementptr inbounds i32, ptr %276, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !115
  store i32 %279, ptr %19, align 4, !tbaa !115
  call void @rgba_uchar_to_float(ptr noundef nonnull %18, ptr noundef nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #7
  br label %280

280:                                              ; preds = %274, %259
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %16) #7
  %281 = load i32, ptr %16, align 4, !tbaa !115
  %282 = and i32 %281, 31
  %283 = shl nuw i32 1, %282
  %284 = ashr i32 %281, 5
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, ptr %255, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !115
  %288 = or i32 %283, %287
  store i32 %288, ptr %286, align 4, !tbaa !115
  %289 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %246) #7
  %290 = icmp eq i8 %289, 0
  br i1 %37, label %310, label %291

291:                                              ; preds = %280
  br i1 %290, label %292, label %750

292:                                              ; preds = %291
  %293 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 12
  %294 = getelementptr inbounds float, ptr %18, i64 1
  %295 = getelementptr inbounds float, ptr %18, i64 2
  %296 = getelementptr inbounds float, ptr %18, i64 1
  %297 = getelementptr inbounds float, ptr %18, i64 2
  %298 = getelementptr inbounds float, ptr %18, i64 1
  %299 = getelementptr inbounds float, ptr %18, i64 2
  %300 = getelementptr inbounds float, ptr %18, i64 1
  %301 = getelementptr inbounds float, ptr %18, i64 2
  %302 = getelementptr inbounds float, ptr %18, i64 1
  %303 = getelementptr inbounds float, ptr %18, i64 2
  %304 = getelementptr inbounds float, ptr %18, i64 1
  %305 = getelementptr inbounds float, ptr %18, i64 2
  %306 = getelementptr inbounds float, ptr %18, i64 1
  %307 = getelementptr inbounds float, ptr %18, i64 2
  %308 = getelementptr inbounds float, ptr %18, i64 1
  %309 = getelementptr inbounds float, ptr %18, i64 2
  br label %314

310:                                              ; preds = %280
  br i1 %290, label %311, label %750

311:                                              ; preds = %310
  %312 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 8
  %313 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 12
  br label %734

314:                                              ; preds = %292, %731
  call void @BLI_stack_pop(ptr noundef %246, ptr noundef nonnull %16) #7
  %315 = load ptr, ptr %35, align 8, !tbaa !63
  %316 = load i32, ptr %16, align 4, !tbaa !115
  %317 = shl nsw i32 %316, 2
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, ptr %315, i64 %318
  %320 = load i16, ptr %293, align 4, !tbaa !49
  %321 = sext i16 %320 to i32
  call void @IMB_blend_color_float(ptr noundef %319, ptr noundef %319, ptr noundef nonnull %15, i32 noundef %321) #7
  %322 = load i32, ptr %16, align 4, !tbaa !115
  %323 = srem i32 %322, %216
  %324 = sdiv i32 %322, %216
  %325 = add nsw i32 %323, -1
  %326 = add nsw i32 %324, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #7
  %327 = load i32, ptr %215, align 8, !tbaa !57
  %328 = icmp slt i32 %327, %323
  %329 = icmp slt i32 %323, 1
  %330 = or i1 %329, %328
  br i1 %330, label %377, label %331

331:                                              ; preds = %314
  %332 = load i32, ptr %217, align 4, !tbaa !58
  %333 = icmp slt i32 %332, %324
  %334 = icmp slt i32 %324, 1
  %335 = or i1 %334, %333
  br i1 %335, label %377, label %336

336:                                              ; preds = %331
  %337 = mul nsw i32 %327, %326
  %338 = add nsw i32 %337, %325
  store i32 %338, ptr %13, align 4, !tbaa !115
  %339 = ashr i32 %338, 5
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, ptr %255, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !115
  %343 = and i32 %338, 31
  %344 = shl nuw i32 1, %343
  %345 = and i32 %342, %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %377

347:                                              ; preds = %336
  %348 = load ptr, ptr %35, align 8, !tbaa !63
  %349 = shl nsw i32 %338, 2
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, ptr %348, i64 %350
  %352 = load float, ptr %351, align 4, !tbaa !56
  %353 = load float, ptr %18, align 16, !tbaa !56
  %354 = fsub float %352, %353
  %355 = getelementptr inbounds float, ptr %351, i64 1
  %356 = load float, ptr %355, align 4, !tbaa !56
  %357 = load float, ptr %294, align 4, !tbaa !56
  %358 = fsub float %356, %357
  %359 = getelementptr inbounds float, ptr %351, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !56
  %361 = load float, ptr %295, align 8, !tbaa !56
  %362 = fsub float %360, %361
  %363 = fmul float %358, %358
  %364 = call float @llvm.fmuladd.f32(float %354, float %354, float %363)
  %365 = call float @llvm.fmuladd.f32(float %362, float %362, float %364)
  %366 = fcmp ugt float %365, %220
  br i1 %366, label %368, label %367

367:                                              ; preds = %347
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %13) #7
  br label %368

368:                                              ; preds = %367, %347
  %369 = load i32, ptr %13, align 4, !tbaa !115
  %370 = and i32 %369, 31
  %371 = shl nuw i32 1, %370
  %372 = ashr i32 %369, 5
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, ptr %255, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !115
  %376 = or i32 %371, %375
  store i32 %376, ptr %374, align 4, !tbaa !115
  br label %377

377:                                              ; preds = %314, %331, %336, %368
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  %378 = load i32, ptr %215, align 8, !tbaa !57
  %379 = icmp slt i32 %378, %323
  %380 = or i1 %329, %379
  br i1 %380, label %427, label %381

381:                                              ; preds = %377
  %382 = load i32, ptr %217, align 4, !tbaa !58
  %383 = icmp sle i32 %382, %324
  %384 = icmp slt i32 %324, 0
  %385 = or i1 %384, %383
  br i1 %385, label %427, label %386

386:                                              ; preds = %381
  %387 = mul nsw i32 %378, %324
  %388 = add nsw i32 %387, %325
  store i32 %388, ptr %12, align 4, !tbaa !115
  %389 = ashr i32 %388, 5
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, ptr %255, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !115
  %393 = and i32 %388, 31
  %394 = shl nuw i32 1, %393
  %395 = and i32 %392, %394
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %427

397:                                              ; preds = %386
  %398 = load ptr, ptr %35, align 8, !tbaa !63
  %399 = shl nsw i32 %388, 2
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds float, ptr %398, i64 %400
  %402 = load float, ptr %401, align 4, !tbaa !56
  %403 = load float, ptr %18, align 16, !tbaa !56
  %404 = fsub float %402, %403
  %405 = getelementptr inbounds float, ptr %401, i64 1
  %406 = load float, ptr %405, align 4, !tbaa !56
  %407 = load float, ptr %296, align 4, !tbaa !56
  %408 = fsub float %406, %407
  %409 = getelementptr inbounds float, ptr %401, i64 2
  %410 = load float, ptr %409, align 4, !tbaa !56
  %411 = load float, ptr %297, align 8, !tbaa !56
  %412 = fsub float %410, %411
  %413 = fmul float %408, %408
  %414 = call float @llvm.fmuladd.f32(float %404, float %404, float %413)
  %415 = call float @llvm.fmuladd.f32(float %412, float %412, float %414)
  %416 = fcmp ugt float %415, %220
  br i1 %416, label %418, label %417

417:                                              ; preds = %397
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %12) #7
  br label %418

418:                                              ; preds = %417, %397
  %419 = load i32, ptr %12, align 4, !tbaa !115
  %420 = and i32 %419, 31
  %421 = shl nuw i32 1, %420
  %422 = ashr i32 %419, 5
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, ptr %255, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !115
  %426 = or i32 %421, %425
  store i32 %426, ptr %424, align 4, !tbaa !115
  br label %427

427:                                              ; preds = %377, %381, %386, %418
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  %428 = add nsw i32 %324, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  %429 = load i32, ptr %215, align 8, !tbaa !57
  %430 = icmp slt i32 %429, %323
  %431 = or i1 %329, %430
  br i1 %431, label %478, label %432

432:                                              ; preds = %427
  %433 = load i32, ptr %217, align 4, !tbaa !58
  %434 = icmp sle i32 %433, %428
  %435 = icmp slt i32 %324, -1
  %436 = or i1 %435, %434
  br i1 %436, label %478, label %437

437:                                              ; preds = %432
  %438 = mul nsw i32 %429, %428
  %439 = add nsw i32 %438, %325
  store i32 %439, ptr %11, align 4, !tbaa !115
  %440 = ashr i32 %439, 5
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, ptr %255, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !115
  %444 = and i32 %439, 31
  %445 = shl nuw i32 1, %444
  %446 = and i32 %443, %445
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %478

448:                                              ; preds = %437
  %449 = load ptr, ptr %35, align 8, !tbaa !63
  %450 = shl nsw i32 %439, 2
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds float, ptr %449, i64 %451
  %453 = load float, ptr %452, align 4, !tbaa !56
  %454 = load float, ptr %18, align 16, !tbaa !56
  %455 = fsub float %453, %454
  %456 = getelementptr inbounds float, ptr %452, i64 1
  %457 = load float, ptr %456, align 4, !tbaa !56
  %458 = load float, ptr %298, align 4, !tbaa !56
  %459 = fsub float %457, %458
  %460 = getelementptr inbounds float, ptr %452, i64 2
  %461 = load float, ptr %460, align 4, !tbaa !56
  %462 = load float, ptr %299, align 8, !tbaa !56
  %463 = fsub float %461, %462
  %464 = fmul float %459, %459
  %465 = call float @llvm.fmuladd.f32(float %455, float %455, float %464)
  %466 = call float @llvm.fmuladd.f32(float %463, float %463, float %465)
  %467 = fcmp ugt float %466, %220
  br i1 %467, label %469, label %468

468:                                              ; preds = %448
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %11) #7
  br label %469

469:                                              ; preds = %468, %448
  %470 = load i32, ptr %11, align 4, !tbaa !115
  %471 = and i32 %470, 31
  %472 = shl nuw i32 1, %471
  %473 = ashr i32 %470, 5
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, ptr %255, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !115
  %477 = or i32 %472, %476
  store i32 %477, ptr %475, align 4, !tbaa !115
  br label %478

478:                                              ; preds = %427, %432, %437, %469
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %479 = load i32, ptr %215, align 8, !tbaa !57
  %480 = icmp sle i32 %479, %323
  %481 = icmp slt i32 %323, 0
  %482 = or i1 %481, %480
  br i1 %482, label %529, label %483

483:                                              ; preds = %478
  %484 = load i32, ptr %217, align 4, !tbaa !58
  %485 = icmp sle i32 %484, %428
  %486 = icmp slt i32 %324, -1
  %487 = or i1 %486, %485
  br i1 %487, label %529, label %488

488:                                              ; preds = %483
  %489 = mul nsw i32 %479, %428
  %490 = add nsw i32 %489, %323
  store i32 %490, ptr %10, align 4, !tbaa !115
  %491 = ashr i32 %490, 5
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, ptr %255, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !115
  %495 = and i32 %490, 31
  %496 = shl nuw i32 1, %495
  %497 = and i32 %494, %496
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %529

499:                                              ; preds = %488
  %500 = load ptr, ptr %35, align 8, !tbaa !63
  %501 = shl nsw i32 %490, 2
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds float, ptr %500, i64 %502
  %504 = load float, ptr %503, align 4, !tbaa !56
  %505 = load float, ptr %18, align 16, !tbaa !56
  %506 = fsub float %504, %505
  %507 = getelementptr inbounds float, ptr %503, i64 1
  %508 = load float, ptr %507, align 4, !tbaa !56
  %509 = load float, ptr %300, align 4, !tbaa !56
  %510 = fsub float %508, %509
  %511 = getelementptr inbounds float, ptr %503, i64 2
  %512 = load float, ptr %511, align 4, !tbaa !56
  %513 = load float, ptr %301, align 8, !tbaa !56
  %514 = fsub float %512, %513
  %515 = fmul float %510, %510
  %516 = call float @llvm.fmuladd.f32(float %506, float %506, float %515)
  %517 = call float @llvm.fmuladd.f32(float %514, float %514, float %516)
  %518 = fcmp ugt float %517, %220
  br i1 %518, label %520, label %519

519:                                              ; preds = %499
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %10) #7
  br label %520

520:                                              ; preds = %519, %499
  %521 = load i32, ptr %10, align 4, !tbaa !115
  %522 = and i32 %521, 31
  %523 = shl nuw i32 1, %522
  %524 = ashr i32 %521, 5
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, ptr %255, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !115
  %528 = or i32 %523, %527
  store i32 %528, ptr %526, align 4, !tbaa !115
  br label %529

529:                                              ; preds = %478, %483, %488, %520
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %530 = load i32, ptr %215, align 8, !tbaa !57
  %531 = icmp sle i32 %530, %323
  %532 = or i1 %481, %531
  br i1 %532, label %579, label %533

533:                                              ; preds = %529
  %534 = load i32, ptr %217, align 4, !tbaa !58
  %535 = icmp slt i32 %534, %324
  %536 = icmp slt i32 %324, 1
  %537 = or i1 %536, %535
  br i1 %537, label %579, label %538

538:                                              ; preds = %533
  %539 = mul nsw i32 %530, %326
  %540 = add nsw i32 %539, %323
  store i32 %540, ptr %9, align 4, !tbaa !115
  %541 = ashr i32 %540, 5
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, ptr %255, i64 %542
  %544 = load i32, ptr %543, align 4, !tbaa !115
  %545 = and i32 %540, 31
  %546 = shl nuw i32 1, %545
  %547 = and i32 %544, %546
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %579

549:                                              ; preds = %538
  %550 = load ptr, ptr %35, align 8, !tbaa !63
  %551 = shl nsw i32 %540, 2
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds float, ptr %550, i64 %552
  %554 = load float, ptr %553, align 4, !tbaa !56
  %555 = load float, ptr %18, align 16, !tbaa !56
  %556 = fsub float %554, %555
  %557 = getelementptr inbounds float, ptr %553, i64 1
  %558 = load float, ptr %557, align 4, !tbaa !56
  %559 = load float, ptr %302, align 4, !tbaa !56
  %560 = fsub float %558, %559
  %561 = getelementptr inbounds float, ptr %553, i64 2
  %562 = load float, ptr %561, align 4, !tbaa !56
  %563 = load float, ptr %303, align 8, !tbaa !56
  %564 = fsub float %562, %563
  %565 = fmul float %560, %560
  %566 = call float @llvm.fmuladd.f32(float %556, float %556, float %565)
  %567 = call float @llvm.fmuladd.f32(float %564, float %564, float %566)
  %568 = fcmp ugt float %567, %220
  br i1 %568, label %570, label %569

569:                                              ; preds = %549
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %9) #7
  br label %570

570:                                              ; preds = %569, %549
  %571 = load i32, ptr %9, align 4, !tbaa !115
  %572 = and i32 %571, 31
  %573 = shl nuw i32 1, %572
  %574 = ashr i32 %571, 5
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, ptr %255, i64 %575
  %577 = load i32, ptr %576, align 4, !tbaa !115
  %578 = or i32 %573, %577
  store i32 %578, ptr %576, align 4, !tbaa !115
  br label %579

579:                                              ; preds = %529, %533, %538, %570
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %580 = add nsw i32 %323, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %581 = load i32, ptr %215, align 8, !tbaa !57
  %582 = icmp sle i32 %581, %580
  %583 = icmp slt i32 %323, -1
  %584 = or i1 %583, %582
  br i1 %584, label %631, label %585

585:                                              ; preds = %579
  %586 = load i32, ptr %217, align 4, !tbaa !58
  %587 = icmp slt i32 %586, %324
  %588 = icmp slt i32 %324, 1
  %589 = or i1 %588, %587
  br i1 %589, label %631, label %590

590:                                              ; preds = %585
  %591 = mul nsw i32 %581, %326
  %592 = add nsw i32 %591, %580
  store i32 %592, ptr %8, align 4, !tbaa !115
  %593 = ashr i32 %592, 5
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, ptr %255, i64 %594
  %596 = load i32, ptr %595, align 4, !tbaa !115
  %597 = and i32 %592, 31
  %598 = shl nuw i32 1, %597
  %599 = and i32 %596, %598
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %631

601:                                              ; preds = %590
  %602 = load ptr, ptr %35, align 8, !tbaa !63
  %603 = shl nsw i32 %592, 2
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds float, ptr %602, i64 %604
  %606 = load float, ptr %605, align 4, !tbaa !56
  %607 = load float, ptr %18, align 16, !tbaa !56
  %608 = fsub float %606, %607
  %609 = getelementptr inbounds float, ptr %605, i64 1
  %610 = load float, ptr %609, align 4, !tbaa !56
  %611 = load float, ptr %304, align 4, !tbaa !56
  %612 = fsub float %610, %611
  %613 = getelementptr inbounds float, ptr %605, i64 2
  %614 = load float, ptr %613, align 4, !tbaa !56
  %615 = load float, ptr %305, align 8, !tbaa !56
  %616 = fsub float %614, %615
  %617 = fmul float %612, %612
  %618 = call float @llvm.fmuladd.f32(float %608, float %608, float %617)
  %619 = call float @llvm.fmuladd.f32(float %616, float %616, float %618)
  %620 = fcmp ugt float %619, %220
  br i1 %620, label %622, label %621

621:                                              ; preds = %601
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %8) #7
  br label %622

622:                                              ; preds = %621, %601
  %623 = load i32, ptr %8, align 4, !tbaa !115
  %624 = and i32 %623, 31
  %625 = shl nuw i32 1, %624
  %626 = ashr i32 %623, 5
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i32, ptr %255, i64 %627
  %629 = load i32, ptr %628, align 4, !tbaa !115
  %630 = or i32 %625, %629
  store i32 %630, ptr %628, align 4, !tbaa !115
  br label %631

631:                                              ; preds = %579, %585, %590, %622
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %632 = load i32, ptr %215, align 8, !tbaa !57
  %633 = icmp sle i32 %632, %580
  %634 = or i1 %583, %633
  br i1 %634, label %681, label %635

635:                                              ; preds = %631
  %636 = load i32, ptr %217, align 4, !tbaa !58
  %637 = icmp sle i32 %636, %324
  %638 = icmp slt i32 %324, 0
  %639 = or i1 %638, %637
  br i1 %639, label %681, label %640

640:                                              ; preds = %635
  %641 = mul nsw i32 %632, %324
  %642 = add nsw i32 %641, %580
  store i32 %642, ptr %7, align 4, !tbaa !115
  %643 = ashr i32 %642, 5
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i32, ptr %255, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !115
  %647 = and i32 %642, 31
  %648 = shl nuw i32 1, %647
  %649 = and i32 %646, %648
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %681

651:                                              ; preds = %640
  %652 = load ptr, ptr %35, align 8, !tbaa !63
  %653 = shl nsw i32 %642, 2
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds float, ptr %652, i64 %654
  %656 = load float, ptr %655, align 4, !tbaa !56
  %657 = load float, ptr %18, align 16, !tbaa !56
  %658 = fsub float %656, %657
  %659 = getelementptr inbounds float, ptr %655, i64 1
  %660 = load float, ptr %659, align 4, !tbaa !56
  %661 = load float, ptr %306, align 4, !tbaa !56
  %662 = fsub float %660, %661
  %663 = getelementptr inbounds float, ptr %655, i64 2
  %664 = load float, ptr %663, align 4, !tbaa !56
  %665 = load float, ptr %307, align 8, !tbaa !56
  %666 = fsub float %664, %665
  %667 = fmul float %662, %662
  %668 = call float @llvm.fmuladd.f32(float %658, float %658, float %667)
  %669 = call float @llvm.fmuladd.f32(float %666, float %666, float %668)
  %670 = fcmp ugt float %669, %220
  br i1 %670, label %672, label %671

671:                                              ; preds = %651
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %7) #7
  br label %672

672:                                              ; preds = %671, %651
  %673 = load i32, ptr %7, align 4, !tbaa !115
  %674 = and i32 %673, 31
  %675 = shl nuw i32 1, %674
  %676 = ashr i32 %673, 5
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i32, ptr %255, i64 %677
  %679 = load i32, ptr %678, align 4, !tbaa !115
  %680 = or i32 %675, %679
  store i32 %680, ptr %678, align 4, !tbaa !115
  br label %681

681:                                              ; preds = %631, %635, %640, %672
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %682 = load i32, ptr %215, align 8, !tbaa !57
  %683 = icmp sle i32 %682, %580
  %684 = or i1 %583, %683
  br i1 %684, label %731, label %685

685:                                              ; preds = %681
  %686 = load i32, ptr %217, align 4, !tbaa !58
  %687 = icmp sle i32 %686, %428
  %688 = icmp slt i32 %324, -1
  %689 = or i1 %688, %687
  br i1 %689, label %731, label %690

690:                                              ; preds = %685
  %691 = mul nsw i32 %682, %428
  %692 = add nsw i32 %691, %580
  store i32 %692, ptr %6, align 4, !tbaa !115
  %693 = ashr i32 %692, 5
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32, ptr %255, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !115
  %697 = and i32 %692, 31
  %698 = shl nuw i32 1, %697
  %699 = and i32 %696, %698
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %731

701:                                              ; preds = %690
  %702 = load ptr, ptr %35, align 8, !tbaa !63
  %703 = shl nsw i32 %692, 2
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds float, ptr %702, i64 %704
  %706 = load float, ptr %705, align 4, !tbaa !56
  %707 = load float, ptr %18, align 16, !tbaa !56
  %708 = fsub float %706, %707
  %709 = getelementptr inbounds float, ptr %705, i64 1
  %710 = load float, ptr %709, align 4, !tbaa !56
  %711 = load float, ptr %308, align 4, !tbaa !56
  %712 = fsub float %710, %711
  %713 = getelementptr inbounds float, ptr %705, i64 2
  %714 = load float, ptr %713, align 4, !tbaa !56
  %715 = load float, ptr %309, align 8, !tbaa !56
  %716 = fsub float %714, %715
  %717 = fmul float %712, %712
  %718 = call float @llvm.fmuladd.f32(float %708, float %708, float %717)
  %719 = call float @llvm.fmuladd.f32(float %716, float %716, float %718)
  %720 = fcmp ugt float %719, %220
  br i1 %720, label %722, label %721

721:                                              ; preds = %701
  call void @BLI_stack_push(ptr noundef %246, ptr noundef nonnull %6) #7
  br label %722

722:                                              ; preds = %721, %701
  %723 = load i32, ptr %6, align 4, !tbaa !115
  %724 = and i32 %723, 31
  %725 = shl nuw i32 1, %724
  %726 = ashr i32 %723, 5
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i32, ptr %255, i64 %727
  %729 = load i32, ptr %728, align 4, !tbaa !115
  %730 = or i32 %725, %729
  store i32 %730, ptr %728, align 4, !tbaa !115
  br label %731

731:                                              ; preds = %681, %685, %690, %722
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %732 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %246) #7
  %733 = icmp eq i8 %732, 0
  br i1 %733, label %314, label %750, !llvm.loop !191

734:                                              ; preds = %311, %734
  call void @BLI_stack_pop(ptr noundef %246, ptr noundef nonnull %16) #7
  %735 = load ptr, ptr %312, align 8, !tbaa !134
  %736 = load i32, ptr %16, align 4, !tbaa !115
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i32, ptr %735, i64 %737
  %739 = load i16, ptr %313, align 4, !tbaa !49
  %740 = sext i16 %739 to i32
  call void @IMB_blend_color_byte(ptr noundef %738, ptr noundef %738, ptr noundef nonnull %14, i32 noundef %740) #7
  %741 = load i32, ptr %16, align 4, !tbaa !115
  %742 = srem i32 %741, %216
  %743 = sdiv i32 %741, %216
  %744 = add nsw i32 %742, -1
  %745 = add nsw i32 %743, -1
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %744, i32 noundef %745, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %744, i32 noundef %743, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  %746 = add nsw i32 %743, 1
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %744, i32 noundef %746, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %742, i32 noundef %746, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %742, i32 noundef %745, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  %747 = add nsw i32 %742, 1
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %747, i32 noundef %745, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %747, i32 noundef %743, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  call fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %747, i32 noundef %746, ptr noundef %32, ptr noundef %246, ptr noundef %255, ptr noundef nonnull %18, float noundef %220)
  %748 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %246) #7
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %734, label %750, !llvm.loop !192

750:                                              ; preds = %731, %734, %291, %310
  %751 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %751(ptr noundef %255) #7
  call void @BLI_stack_free(ptr noundef %246) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #7
  br label %752

752:                                              ; preds = %140, %209, %93, %103, %750
  call void @imapaint_image_update(ptr noundef %20, ptr noundef nonnull %22, ptr noundef %32, i16 noundef signext 0) #7
  call void @ED_imapaint_clear_partial_redraw() #7
  call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef %32, ptr noundef null) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %22) #7
  br label %753

753:                                              ; preds = %244, %30, %27, %752
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  ret void
}

declare void @ED_imapaint_dirty_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #2

declare void @BLI_stack_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_blend_color_float(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_blend_color_byte(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @paint_2d_fill_add_pixel_byte(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %10 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = icmp sle i32 %11, %0
  %13 = icmp slt i32 %0, 0
  %14 = or i1 %13, %12
  br i1 %14, label %64, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !58
  %18 = icmp sle i32 %17, %1
  %19 = icmp slt i32 %1, 0
  %20 = or i1 %19, %18
  br i1 %20, label %64, label %21

21:                                               ; preds = %15
  %22 = mul nsw i32 %11, %1
  %23 = add nsw i32 %22, %0
  store i32 %23, ptr %8, align 4, !tbaa !115
  %24 = ashr i32 %23, 5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !115
  %28 = and i32 %23, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = sext i32 %23 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  call void @rgba_uchar_to_float(ptr noundef nonnull %9, ptr noundef %36) #7
  %37 = load float, ptr %9, align 16, !tbaa !56
  %38 = load float, ptr %5, align 4, !tbaa !56
  %39 = fsub float %37, %38
  %40 = getelementptr inbounds float, ptr %9, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !56
  %42 = getelementptr inbounds float, ptr %5, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !56
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds float, ptr %9, i64 2
  %46 = load float, ptr %45, align 8, !tbaa !56
  %47 = getelementptr inbounds float, ptr %5, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !56
  %49 = fsub float %46, %48
  %50 = fmul float %44, %44
  %51 = call float @llvm.fmuladd.f32(float %39, float %39, float %50)
  %52 = call float @llvm.fmuladd.f32(float %49, float %49, float %51)
  %53 = fcmp ugt float %52, %6
  br i1 %53, label %55, label %54

54:                                               ; preds = %32
  call void @BLI_stack_push(ptr noundef %3, ptr noundef nonnull %8) #7
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, ptr %8, align 4, !tbaa !115
  %57 = and i32 %56, 31
  %58 = shl nuw i32 1, %57
  %59 = ashr i32 %56, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %4, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !115
  %63 = or i32 %58, %62
  store i32 %63, ptr %61, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  br label %64

64:                                               ; preds = %21, %55, %7, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret void
}

declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paint_2d_gradient_fill(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %190, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %10, i64 0, i32 6
  %16 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %190, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImagePaintState, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = load float, ptr %3, align 4, !tbaa !56
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !56
  %24 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %20, float noundef %21, float noundef %23, ptr noundef nonnull %9, ptr noundef nonnull %24) #7
  %25 = load ptr, ptr %19, align 8, !tbaa !55
  %26 = load float, ptr %2, align 4, !tbaa !56
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !56
  %29 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %25, float noundef %26, float noundef %28, ptr noundef nonnull %8, ptr noundef nonnull %29) #7
  %30 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !57
  %32 = sitofp i32 %31 to float
  %33 = load float, ptr %9, align 4, !tbaa !56
  %34 = fmul float %33, %32
  store float %34, ptr %9, align 4, !tbaa !56
  %35 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !58
  %37 = sitofp i32 %36 to float
  %38 = load float, ptr %24, align 4, !tbaa !56
  %39 = fmul float %38, %37
  store float %39, ptr %24, align 4, !tbaa !56
  %40 = load float, ptr %8, align 4, !tbaa !56
  %41 = fmul float %40, %32
  store float %41, ptr %8, align 4, !tbaa !56
  %42 = load float, ptr %29, align 4, !tbaa !56
  %43 = fmul float %42, %37
  store float %43, ptr %29, align 4, !tbaa !56
  %44 = fsub float %34, %41
  %45 = fsub float %39, %43
  %46 = fmul float %45, %45
  %47 = call float @llvm.fmuladd.f32(float %44, float %44, float %46)
  %48 = fdiv float 1.000000e+00, %47
  %49 = call float @sqrtf(float noundef %47) #7
  %50 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = icmp eq ptr %51, null
  %53 = load i32, ptr %30, align 8, !tbaa !57
  %54 = load i32, ptr %35, align 4, !tbaa !58
  call void @ED_imapaint_dirty_region(ptr noundef nonnull %12, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 0, i32 noundef %53, i32 noundef %54) #7
  %55 = load i32, ptr %30, align 8, !tbaa !57
  %56 = icmp sgt i32 %55, 0
  br i1 %52, label %66, label %57

57:                                               ; preds = %18
  br i1 %56, label %58, label %189

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 33
  %60 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %61 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %62 = getelementptr inbounds float, ptr %7, i64 1
  %63 = getelementptr inbounds float, ptr %7, i64 2
  %64 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %65 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 12
  br label %76

66:                                               ; preds = %18
  br i1 %56, label %67, label %189

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 33
  %69 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %70 = getelementptr inbounds float, ptr %7, i64 1
  %71 = getelementptr inbounds float, ptr %7, i64 2
  %72 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %73 = getelementptr inbounds i8, ptr %6, i64 3
  %74 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 8
  %75 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 12
  br label %131

76:                                               ; preds = %58, %126
  %77 = phi float [ undef, %58 ], [ %127, %126 ]
  %78 = phi i32 [ 0, %58 ], [ %128, %126 ]
  %79 = load i32, ptr %35, align 4, !tbaa !58
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %76
  %82 = sitofp i32 %78 to float
  br label %83

83:                                               ; preds = %81, %101
  %84 = phi float [ %77, %81 ], [ %102, %101 ]
  %85 = phi i32 [ 0, %81 ], [ %123, %101 ]
  %86 = load float, ptr %8, align 4, !tbaa !56
  %87 = fsub float %82, %86
  %88 = sitofp i32 %85 to float
  %89 = load float, ptr %29, align 4, !tbaa !56
  %90 = fsub float %88, %89
  %91 = load i32, ptr %59, align 4, !tbaa !193
  switch i32 %91, label %101 [
    i32 0, label %92
    i32 1, label %96
  ]

92:                                               ; preds = %83
  %93 = fmul float %45, %90
  %94 = call float @llvm.fmuladd.f32(float %87, float %44, float %93)
  %95 = fmul float %48, %94
  br label %101

96:                                               ; preds = %83
  %97 = fmul float %90, %90
  %98 = call float @llvm.fmuladd.f32(float %87, float %87, float %97)
  %99 = call float @sqrtf(float noundef %98) #7
  %100 = fdiv float %99, %49
  br label %101

101:                                              ; preds = %83, %96, %92
  %102 = phi float [ %84, %83 ], [ %100, %96 ], [ %95, %92 ]
  %103 = load ptr, ptr %60, align 8, !tbaa !194
  %104 = call zeroext i8 @do_colorband(ptr noundef %103, float noundef %102, ptr noundef nonnull %7) #7
  %105 = load float, ptr %61, align 4, !tbaa !56
  %106 = load float, ptr %7, align 16, !tbaa !56
  %107 = fmul float %105, %106
  store float %107, ptr %7, align 16, !tbaa !56
  %108 = load float, ptr %62, align 4, !tbaa !56
  %109 = fmul float %105, %108
  store float %109, ptr %62, align 4, !tbaa !56
  %110 = load float, ptr %63, align 8, !tbaa !56
  %111 = fmul float %105, %110
  store float %111, ptr %63, align 8, !tbaa !56
  %112 = load float, ptr %64, align 8, !tbaa !185
  %113 = fmul float %105, %112
  store float %113, ptr %61, align 4, !tbaa !56
  %114 = load ptr, ptr %50, align 8, !tbaa !63
  %115 = load i32, ptr %30, align 8, !tbaa !57
  %116 = mul nsw i32 %115, %85
  %117 = add nsw i32 %116, %78
  %118 = shl nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, ptr %114, i64 %119
  %121 = load i16, ptr %65, align 4, !tbaa !49
  %122 = sext i16 %121 to i32
  call void @IMB_blend_color_float(ptr noundef %120, ptr noundef %120, ptr noundef nonnull %7, i32 noundef %122) #7
  %123 = add nuw nsw i32 %85, 1
  %124 = load i32, ptr %35, align 4, !tbaa !58
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %83, label %126, !llvm.loop !195

126:                                              ; preds = %101, %76
  %127 = phi float [ %77, %76 ], [ %102, %101 ]
  %128 = add nuw nsw i32 %78, 1
  %129 = load i32, ptr %30, align 8, !tbaa !57
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %76, label %189, !llvm.loop !196

131:                                              ; preds = %67, %183
  %132 = phi i64 [ 0, %67 ], [ %185, %183 ]
  %133 = phi float [ undef, %67 ], [ %184, %183 ]
  %134 = load i32, ptr %35, align 4, !tbaa !58
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %183

136:                                              ; preds = %131
  %137 = trunc i64 %132 to i32
  %138 = sitofp i32 %137 to float
  br label %139

139:                                              ; preds = %136, %157
  %140 = phi float [ %133, %136 ], [ %158, %157 ]
  %141 = phi i32 [ 0, %136 ], [ %180, %157 ]
  %142 = load float, ptr %8, align 4, !tbaa !56
  %143 = fsub float %138, %142
  %144 = sitofp i32 %141 to float
  %145 = load float, ptr %29, align 4, !tbaa !56
  %146 = fsub float %144, %145
  %147 = load i32, ptr %68, align 4, !tbaa !193
  switch i32 %147, label %157 [
    i32 0, label %148
    i32 1, label %152
  ]

148:                                              ; preds = %139
  %149 = fmul float %45, %146
  %150 = call float @llvm.fmuladd.f32(float %143, float %44, float %149)
  %151 = fmul float %48, %150
  br label %157

152:                                              ; preds = %139
  %153 = fmul float %146, %146
  %154 = call float @llvm.fmuladd.f32(float %143, float %143, float %153)
  %155 = call float @sqrtf(float noundef %154) #7
  %156 = fdiv float %155, %49
  br label %157

157:                                              ; preds = %139, %152, %148
  %158 = phi float [ %140, %139 ], [ %156, %152 ], [ %151, %148 ]
  %159 = load ptr, ptr %69, align 8, !tbaa !194
  %160 = call zeroext i8 @do_colorband(ptr noundef %159, float noundef %158, ptr noundef nonnull %7) #7
  %161 = load float, ptr %7, align 16, !tbaa !56
  %162 = call float @linearrgb_to_srgb(float noundef %161) #7
  store float %162, ptr %7, align 16, !tbaa !56
  %163 = load float, ptr %70, align 4, !tbaa !56
  %164 = call float @linearrgb_to_srgb(float noundef %163) #7
  store float %164, ptr %70, align 4, !tbaa !56
  %165 = load float, ptr %71, align 8, !tbaa !56
  %166 = call float @linearrgb_to_srgb(float noundef %165) #7
  store float %166, ptr %71, align 8, !tbaa !56
  call void @rgba_float_to_uchar(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %167 = load float, ptr %72, align 8, !tbaa !185
  %168 = load i8, ptr %73, align 1, !tbaa !135
  %169 = uitofp i8 %168 to float
  %170 = fmul float %167, %169
  %171 = fptoui float %170 to i8
  store i8 %171, ptr %73, align 1, !tbaa !135
  %172 = load ptr, ptr %74, align 8, !tbaa !134
  %173 = load i32, ptr %30, align 8, !tbaa !57
  %174 = mul nsw i32 %173, %141
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, ptr %172, i64 %175
  %177 = getelementptr inbounds i32, ptr %176, i64 %132
  %178 = load i16, ptr %75, align 4, !tbaa !49
  %179 = sext i16 %178 to i32
  call void @IMB_blend_color_byte(ptr noundef %177, ptr noundef %177, ptr noundef nonnull %6, i32 noundef %179) #7
  %180 = add nuw nsw i32 %141, 1
  %181 = load i32, ptr %35, align 4, !tbaa !58
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %139, label %183, !llvm.loop !197

183:                                              ; preds = %157, %131
  %184 = phi float [ %133, %131 ], [ %158, %157 ]
  %185 = add nuw nsw i64 %132, 1
  %186 = load i32, ptr %30, align 8, !tbaa !57
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %185, %187
  br i1 %188, label %131, label %189, !llvm.loop !198

189:                                              ; preds = %126, %183, %57, %66
  call void @imapaint_image_update(ptr noundef %10, ptr noundef nonnull %12, ptr noundef nonnull %16, i16 noundef signext 0) #7
  call void @ED_imapaint_clear_partial_redraw() #7
  call void @BKE_image_release_ibuf(ptr noundef nonnull %12, ptr noundef nonnull %16, ptr noundef null) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %12) #7
  br label %190

190:                                              ; preds = %14, %5, %189
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_pool_new() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @brush_painter_2d_tex_mapping(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.ImagePaintState, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = sitofp i32 %15 to float
  %17 = fdiv float 1.000000e+00, %16
  %18 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !58
  %20 = sitofp i32 %19 to float
  %21 = fdiv float 1.000000e+00, %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  %22 = load float, ptr %3, align 4, !tbaa !56
  %23 = sdiv i32 %1, 2
  %24 = sitofp i32 %23 to float
  %25 = fsub float %22, %24
  %26 = fadd float %25, 1.000000e+00
  %27 = tail call float @llvm.floor.f32(float %26)
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !56
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
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = sitofp i32 %28 to float
  %39 = fmul float %17, %38
  %40 = sitofp i32 %34 to float
  %41 = fmul float %21, %40
  call void @UI_view2d_view_to_region(ptr noundef %37, float noundef %39, float noundef %41, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %42 = load ptr, ptr %36, align 8, !tbaa !55
  %43 = add nsw i32 %28, %1
  %44 = sitofp i32 %43 to float
  %45 = fmul float %17, %44
  %46 = add nsw i32 %34, %1
  %47 = sitofp i32 %46 to float
  %48 = fmul float %21, %47
  call void @UI_view2d_view_to_region(ptr noundef %42, float noundef %45, float noundef %48, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  %49 = load i32, ptr %8, align 4, !tbaa !115
  %50 = sitofp i32 %49 to float
  store float %50, ptr %6, align 4, !tbaa !199
  %51 = load i32, ptr %9, align 4, !tbaa !115
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %52, ptr %53, align 4, !tbaa !200
  %54 = load i32, ptr %10, align 4, !tbaa !115
  %55 = sub nsw i32 %54, %49
  %56 = sitofp i32 %55 to float
  %57 = sitofp i32 %1 to float
  %58 = fdiv float %56, %57
  %59 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %58, ptr %59, align 4, !tbaa !201
  %60 = load i32, ptr %11, align 4, !tbaa !115
  %61 = sub nsw i32 %60, %51
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %62, %57
  br label %111

64:                                               ; preds = %7
  %65 = sitofp i32 %28 to float
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %17, float -5.000000e-01)
  %67 = fmul float %66, 2.000000e+00
  store float %67, ptr %6, align 4, !tbaa !199
  %68 = sitofp i32 %34 to float
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %21, float -5.000000e-01)
  %70 = fmul float %69, 2.000000e+00
  %71 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %70, ptr %71, align 4, !tbaa !200
  %72 = fmul float %17, 2.000000e+00
  %73 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %72, ptr %73, align 4, !tbaa !201
  %74 = fmul float %21, 2.000000e+00
  br label %111

75:                                               ; preds = %7
  %76 = and i32 %5, -5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load float, ptr %4, align 4, !tbaa !56
  %80 = sitofp i32 %1 to float
  %81 = fneg float %80
  %82 = tail call float @llvm.fmuladd.f32(float %81, float 5.000000e-01, float %79)
  %83 = fadd float %82, 5.000000e-01
  store float %83, ptr %6, align 4, !tbaa !199
  %84 = getelementptr inbounds float, ptr %4, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !56
  %86 = tail call float @llvm.fmuladd.f32(float %81, float 5.000000e-01, float %85)
  %87 = fadd float %86, 5.000000e-01
  %88 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %87, ptr %88, align 4, !tbaa !200
  %89 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float 1.000000e+00, ptr %89, align 4, !tbaa !201
  br label %111

90:                                               ; preds = %75
  %91 = sub nsw i32 0, %1
  %92 = sitofp i32 %91 to double
  %93 = fmul double %92, 5.000000e-01
  %94 = fptosi double %93 to i32
  %95 = fptosi float %22 to i32
  %96 = add nsw i32 %95, %94
  %97 = load float, ptr %2, align 4, !tbaa !56
  %98 = fptosi float %97 to i32
  %99 = sub i32 %96, %98
  %100 = sitofp i32 %99 to float
  store float %100, ptr %6, align 4, !tbaa !199
  %101 = load float, ptr %29, align 4, !tbaa !56
  %102 = fptosi float %101 to i32
  %103 = add nsw i32 %102, %94
  %104 = getelementptr inbounds float, ptr %2, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !56
  %106 = fptosi float %105 to i32
  %107 = sub i32 %103, %106
  %108 = sitofp i32 %107 to float
  %109 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %108, ptr %109, align 4, !tbaa !200
  %110 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float 1.000000e+00, ptr %110, align 4, !tbaa !201
  br label %111

111:                                              ; preds = %64, %90, %78, %35
  %112 = phi float [ %74, %64 ], [ 1.000000e+00, %90 ], [ 1.000000e+00, %78 ], [ %63, %35 ]
  %113 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  store float %112, ptr %113, align 4, !tbaa !202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @brush_painter_imbuf_partial_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %11 = load i8, ptr %10, align 8, !tbaa !203
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 1, i32 32
  %14 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !132
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = tail call ptr @IMB_allocImBuf(i32 noundef %2, i32 noundef %2, i8 noundef zeroext 32, i32 noundef %13) #7
  store ptr %18, ptr %14, align 8, !tbaa !132
  br label %19

19:                                               ; preds = %17, %3
  %20 = load ptr, ptr %14, align 8, !tbaa !132
  %21 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %2, i32 noundef %2, i8 noundef zeroext 32, i32 noundef %13) #7
  store ptr %23, ptr %21, align 8, !tbaa !204
  %24 = icmp eq ptr %22, null
  store i32 0, ptr %7, align 4, !tbaa !115
  store i32 0, ptr %6, align 4, !tbaa !115
  br i1 %24, label %50, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !57
  store i32 %27, ptr %8, align 4, !tbaa !115
  %28 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !58
  store i32 %29, ptr %9, align 4, !tbaa !115
  %30 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !56
  %32 = fptosi float %31 to i32
  %33 = load float, ptr %1, align 4, !tbaa !56
  %34 = fptosi float %33 to i32
  %35 = sdiv i32 %2, 2
  %36 = sdiv i32 %27, -2
  %37 = add nsw i32 %36, %35
  %38 = add i32 %37, %32
  %39 = sub i32 %38, %34
  store i32 %39, ptr %4, align 4, !tbaa !115
  %40 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 2, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !56
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds float, ptr %1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !56
  %45 = fptosi float %44 to i32
  %46 = sdiv i32 %29, -2
  %47 = add nsw i32 %46, %35
  %48 = add i32 %47, %42
  %49 = sub i32 %48, %45
  store i32 %49, ptr %5, align 4, !tbaa !115
  call void @IMB_rectclip(ptr noundef %23, ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  br label %51

50:                                               ; preds = %19
  store i32 0, ptr %5, align 4, !tbaa !115
  store i32 0, ptr %4, align 4, !tbaa !115
  store i32 0, ptr %9, align 4, !tbaa !115
  store i32 0, ptr %8, align 4, !tbaa !115
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, ptr %4, align 4, !tbaa !115
  %53 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !57
  %55 = call i32 @llvm.smin.i32(i32 %52, i32 %54)
  %56 = load i32, ptr %5, align 4, !tbaa !115
  %57 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !58
  %59 = call i32 @llvm.smin.i32(i32 %56, i32 %58)
  %60 = load i32, ptr %8, align 4, !tbaa !115
  %61 = add nsw i32 %60, %52
  %62 = call i32 @llvm.smin.i32(i32 %61, i32 %54)
  %63 = load i32, ptr %9, align 4, !tbaa !115
  %64 = add nsw i32 %63, %56
  %65 = call i32 @llvm.smin.i32(i32 %64, i32 %58)
  %66 = icmp slt i32 %52, %62
  %67 = icmp slt i32 %56, %65
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load i32, ptr %6, align 4, !tbaa !115
  %71 = load i32, ptr %7, align 4, !tbaa !115
  call fastcc void @brush_painter_imbuf_update(ptr noundef %0, ptr noundef %22, i32 noundef %55, i32 noundef %59, i32 noundef %62, i32 noundef %65, i32 noundef %70, i32 noundef %71)
  br label %72

72:                                               ; preds = %69, %51
  br i1 %24, label %74, label %73

73:                                               ; preds = %72
  call void @IMB_freeImBuf(ptr noundef nonnull %22) #7
  br label %74

74:                                               ; preds = %73, %72
  %75 = icmp sgt i32 %55, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = load i32, ptr %57, align 4, !tbaa !58
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call fastcc void @brush_painter_imbuf_update(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %55, i32 noundef %77, i32 noundef 0, i32 noundef 0)
  br label %80

80:                                               ; preds = %79, %76, %74
  %81 = load i32, ptr %53, align 8, !tbaa !57
  %82 = icmp slt i32 %62, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, ptr %57, align 4, !tbaa !58
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  call fastcc void @brush_painter_imbuf_update(ptr noundef %0, ptr noundef null, i32 noundef %62, i32 noundef 0, i32 noundef %81, i32 noundef %84, i32 noundef 0, i32 noundef 0)
  br label %87

87:                                               ; preds = %86, %83, %80
  %88 = icmp sgt i32 %59, 0
  %89 = select i1 %66, i1 %88, i1 false
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call fastcc void @brush_painter_imbuf_update(ptr noundef %0, ptr noundef null, i32 noundef %55, i32 noundef 0, i32 noundef %62, i32 noundef %59, i32 noundef 0, i32 noundef 0)
  br label %91

91:                                               ; preds = %90, %87
  br i1 %66, label %92, label %96

92:                                               ; preds = %91
  %93 = load i32, ptr %57, align 4, !tbaa !58
  %94 = icmp slt i32 %65, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  call fastcc void @brush_painter_imbuf_update(ptr noundef %0, ptr noundef null, i32 noundef %55, i32 noundef %65, i32 noundef %62, i32 noundef %93, i32 noundef 0, i32 noundef 0)
  br label %96

96:                                               ; preds = %95, %92, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @IMB_rectclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_sample_masktex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @brush_painter_imbuf_update(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x i8], align 1
  %13 = load ptr, ptr %0, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 45
  %17 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %16) #7
  %18 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 6
  %19 = load float, ptr %18, align 8, !tbaa.struct !116
  %20 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 6, i32 1
  %21 = load float, ptr %20, align 4, !tbaa.struct !117
  %22 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 6, i32 2
  %23 = load float, ptr %22, align 8, !tbaa.struct !118
  %24 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 6, i32 3
  %25 = load float, ptr %24, align 4, !tbaa.struct !119
  %26 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8
  %29 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 1
  %30 = load i8, ptr %29, align 1, !tbaa !72
  %31 = load i8, ptr %28, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !75
  %34 = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %35 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !184
  %39 = getelementptr inbounds %struct.Brush, ptr %15, i64 0, i32 36
  %40 = load i8, ptr %39, align 2, !tbaa !74
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %8
  %43 = getelementptr inbounds %struct.BrushPainter, ptr %0, i64 0, i32 8, i32 2
  %44 = load i8, ptr %43, align 2, !tbaa !133
  call void @paint_brush_color_get(ptr noundef %13, ptr noundef %15, i8 noundef zeroext %30, i8 noundef zeroext %44, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %9, ptr noundef %17) #7
  br label %48

45:                                               ; preds = %8
  store float 1.000000e+00, ptr %9, align 4, !tbaa !56
  %46 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 1.000000e+00, ptr %46, align 4, !tbaa !56
  %47 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 1.000000e+00, ptr %47, align 4, !tbaa !56
  br label %48

48:                                               ; preds = %45, %42
  %49 = icmp slt i32 %3, %5
  br i1 %49, label %50, label %226

50:                                               ; preds = %48
  %51 = icmp slt i32 %2, %4
  %52 = icmp eq i8 %33, 0
  %53 = getelementptr inbounds float, ptr %10, i64 1
  %54 = getelementptr inbounds float, ptr %10, i64 2
  %55 = getelementptr inbounds float, ptr %9, i64 1
  %56 = getelementptr inbounds float, ptr %11, i64 1
  %57 = getelementptr inbounds float, ptr %9, i64 2
  %58 = getelementptr inbounds float, ptr %11, i64 2
  %59 = icmp eq i8 %31, 0
  %60 = getelementptr inbounds float, ptr %9, i64 1
  %61 = getelementptr inbounds float, ptr %11, i64 1
  %62 = getelementptr inbounds float, ptr %9, i64 2
  %63 = getelementptr inbounds float, ptr %11, i64 2
  %64 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %65 = icmp eq i8 %31, 0
  %66 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 9
  %67 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 2
  %68 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 9
  %69 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 2
  %70 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %71 = sub i32 %7, %3
  %72 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %73 = sub i32 %6, %2
  %74 = getelementptr inbounds float, ptr %11, i64 1
  %75 = getelementptr inbounds float, ptr %11, i64 2
  %76 = getelementptr inbounds float, ptr %11, i64 3
  %77 = getelementptr inbounds float, ptr %11, i64 1
  %78 = getelementptr inbounds float, ptr %11, i64 2
  %79 = getelementptr inbounds float, ptr %11, i64 3
  %80 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 8
  %81 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 2
  %82 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 8
  %83 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 2
  %84 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %85 = sub i32 %7, %3
  %86 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %87 = sub i32 %6, %2
  %88 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 1
  %89 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 2
  %90 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  %91 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 1
  %92 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 2
  %93 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  br label %94

94:                                               ; preds = %50, %223
  %95 = phi i32 [ %3, %50 ], [ %224, %223 ]
  br i1 %51, label %96, label %223

96:                                               ; preds = %94
  %97 = sitofp i32 %95 to float
  %98 = call float @llvm.fmuladd.f32(float %97, float %25, float %23)
  %99 = add i32 %71, %95
  %100 = add i32 %85, %95
  br label %101

101:                                              ; preds = %96, %220
  %102 = phi i32 [ %2, %96 ], [ %221, %220 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7
  br i1 %34, label %103, label %122

103:                                              ; preds = %101
  br i1 %52, label %118, label %104

104:                                              ; preds = %103
  %105 = sitofp i32 %102 to float
  %106 = call float @llvm.fmuladd.f32(float %105, float %21, float %19)
  store float %106, ptr %10, align 4, !tbaa !56
  store float %98, ptr %53, align 4, !tbaa !56
  store float 0.000000e+00, ptr %54, align 4, !tbaa !56
  %107 = call float @BKE_brush_sample_tex_3D(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0, ptr noundef %27) #7
  %108 = load float, ptr %9, align 4, !tbaa !56
  %109 = load float, ptr %11, align 16, !tbaa !56
  %110 = fmul float %108, %109
  store float %110, ptr %11, align 16, !tbaa !56
  %111 = load float, ptr %55, align 4, !tbaa !56
  %112 = load float, ptr %56, align 4, !tbaa !56
  %113 = fmul float %111, %112
  store float %113, ptr %56, align 4, !tbaa !56
  %114 = load float, ptr %57, align 4, !tbaa !56
  %115 = load float, ptr %58, align 8, !tbaa !56
  %116 = fmul float %114, %115
  store float %116, ptr %58, align 8, !tbaa !56
  br i1 %59, label %117, label %123

117:                                              ; preds = %104
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %11, ptr noundef %17) #7
  br label %122

118:                                              ; preds = %103
  %119 = load float, ptr %9, align 4, !tbaa !56
  store float %119, ptr %11, align 16, !tbaa !56
  %120 = load float, ptr %60, align 4, !tbaa !56
  store float %120, ptr %61, align 4, !tbaa !56
  %121 = load float, ptr %62, align 4, !tbaa !56
  store float %121, ptr %63, align 8, !tbaa !56
  store float 1.000000e+00, ptr %64, align 4, !tbaa !56
  br label %122

122:                                              ; preds = %118, %117, %101
  br i1 %65, label %173, label %123

123:                                              ; preds = %104, %122
  %124 = load ptr, ptr %66, align 8, !tbaa !63
  %125 = load i32, ptr %67, align 8, !tbaa !57
  %126 = mul nsw i32 %125, %95
  %127 = add nsw i32 %126, %102
  %128 = shl nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, ptr %124, i64 %129
  %131 = load ptr, ptr %68, align 8, !tbaa !63
  %132 = load i32, ptr %69, align 8, !tbaa !57
  %133 = mul nsw i32 %132, %95
  %134 = add nsw i32 %133, %102
  %135 = shl nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, ptr %131, i64 %136
  br i1 %34, label %154, label %138

138:                                              ; preds = %123
  %139 = load ptr, ptr %70, align 8, !tbaa !63
  %140 = load i32, ptr %72, align 8, !tbaa !57
  %141 = mul nsw i32 %140, %99
  %142 = add i32 %73, %102
  %143 = add nsw i32 %142, %141
  %144 = shl nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, ptr %139, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !56
  store float %147, ptr %11, align 16, !tbaa !56
  %148 = getelementptr inbounds float, ptr %146, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !56
  store float %149, ptr %74, align 4, !tbaa !56
  %150 = getelementptr inbounds float, ptr %146, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !56
  store float %151, ptr %75, align 8, !tbaa !56
  %152 = getelementptr inbounds float, ptr %146, i64 3
  %153 = load float, ptr %152, align 4, !tbaa !56
  store float %153, ptr %76, align 4, !tbaa !56
  br label %154

154:                                              ; preds = %138, %123
  %155 = load float, ptr %11, align 16, !tbaa !56
  store float %155, ptr %137, align 4, !tbaa !56
  %156 = load float, ptr %77, align 4, !tbaa !56
  %157 = getelementptr inbounds float, ptr %137, i64 1
  store float %156, ptr %157, align 4, !tbaa !56
  %158 = load float, ptr %78, align 8, !tbaa !56
  %159 = getelementptr inbounds float, ptr %137, i64 2
  store float %158, ptr %159, align 4, !tbaa !56
  %160 = load float, ptr %79, align 4, !tbaa !56
  %161 = getelementptr inbounds float, ptr %137, i64 3
  store float %160, ptr %161, align 4, !tbaa !56
  %162 = load float, ptr %79, align 4, !tbaa !56
  %163 = load float, ptr %11, align 16, !tbaa !56
  %164 = fmul float %162, %163
  store float %164, ptr %130, align 4, !tbaa !56
  %165 = load float, ptr %77, align 4, !tbaa !56
  %166 = fmul float %162, %165
  %167 = getelementptr inbounds float, ptr %130, i64 1
  store float %166, ptr %167, align 4, !tbaa !56
  %168 = load float, ptr %78, align 8, !tbaa !56
  %169 = fmul float %162, %168
  %170 = getelementptr inbounds float, ptr %130, i64 2
  store float %169, ptr %170, align 4, !tbaa !56
  %171 = load float, ptr %79, align 4, !tbaa !56
  %172 = getelementptr inbounds float, ptr %130, i64 3
  store float %171, ptr %172, align 4, !tbaa !56
  br label %220

173:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  %174 = load ptr, ptr %80, align 8, !tbaa !134
  %175 = load i32, ptr %81, align 8, !tbaa !57
  %176 = mul nsw i32 %175, %95
  %177 = add nsw i32 %176, %102
  %178 = shl nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, ptr %174, i64 %179
  %181 = load ptr, ptr %82, align 8, !tbaa !134
  %182 = load i32, ptr %83, align 8, !tbaa !57
  %183 = mul nsw i32 %182, %95
  %184 = add nsw i32 %183, %102
  %185 = shl nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %181, i64 %186
  br i1 %34, label %204, label %188

188:                                              ; preds = %173
  %189 = load ptr, ptr %84, align 8, !tbaa !134
  %190 = load i32, ptr %86, align 8, !tbaa !57
  %191 = mul nsw i32 %190, %100
  %192 = add i32 %87, %102
  %193 = add nsw i32 %192, %191
  %194 = shl nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %189, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !135
  store i8 %197, ptr %12, align 1, !tbaa !135
  %198 = getelementptr inbounds i8, ptr %196, i64 1
  %199 = load i8, ptr %198, align 1, !tbaa !135
  store i8 %199, ptr %88, align 1, !tbaa !135
  %200 = getelementptr inbounds i8, ptr %196, i64 2
  %201 = load i8, ptr %200, align 1, !tbaa !135
  store i8 %201, ptr %89, align 1, !tbaa !135
  %202 = getelementptr inbounds i8, ptr %196, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !135
  store i8 %203, ptr %90, align 1, !tbaa !135
  br label %205

204:                                              ; preds = %173
  call void @rgba_float_to_uchar(ptr noundef nonnull %12, ptr noundef nonnull %11) #7
  br label %205

205:                                              ; preds = %204, %188
  %206 = load i8, ptr %12, align 1, !tbaa !135
  store i8 %206, ptr %187, align 1, !tbaa !135
  %207 = load i8, ptr %91, align 1, !tbaa !135
  %208 = getelementptr inbounds i8, ptr %187, i64 1
  store i8 %207, ptr %208, align 1, !tbaa !135
  %209 = load i8, ptr %92, align 1, !tbaa !135
  %210 = getelementptr inbounds i8, ptr %187, i64 2
  store i8 %209, ptr %210, align 1, !tbaa !135
  %211 = load i8, ptr %93, align 1, !tbaa !135
  %212 = getelementptr inbounds i8, ptr %187, i64 3
  store i8 %211, ptr %212, align 1, !tbaa !135
  %213 = load i8, ptr %12, align 1, !tbaa !135
  store i8 %213, ptr %180, align 1, !tbaa !135
  %214 = load i8, ptr %91, align 1, !tbaa !135
  %215 = getelementptr inbounds i8, ptr %180, i64 1
  store i8 %214, ptr %215, align 1, !tbaa !135
  %216 = load i8, ptr %92, align 1, !tbaa !135
  %217 = getelementptr inbounds i8, ptr %180, i64 2
  store i8 %216, ptr %217, align 1, !tbaa !135
  %218 = load i8, ptr %93, align 1, !tbaa !135
  %219 = getelementptr inbounds i8, ptr %180, i64 3
  store i8 %218, ptr %219, align 1, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  br label %220

220:                                              ; preds = %205, %154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  %221 = add i32 %102, 1
  %222 = icmp eq i32 %221, %4
  br i1 %222, label %223, label %101, !llvm.loop !205

223:                                              ; preds = %220, %94
  %224 = add i32 %95, 1
  %225 = icmp eq i32 %224, %5
  br i1 %225, label %226, label %94, !llvm.loop !206

226:                                              ; preds = %223, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  ret void
}

declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

declare void @paint_brush_color_get(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_sample_tex_3D(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @paint_2d_torus_split_region(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %10 = load i32, ptr %0, align 4, !tbaa !151
  store i32 %10, ptr %4, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %11 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !153
  store i32 %12, ptr %5, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %13 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !154
  store i32 %14, ptr %6, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %15 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !155
  store i32 %16, ptr %7, align 4, !tbaa !115
  %17 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !156
  %19 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %21 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = srem i32 %10, %22
  %24 = icmp slt i32 %23, 0
  %25 = select i1 %24, i32 %22, i32 0
  %26 = add nsw i32 %23, %25
  store i32 %26, ptr %4, align 4, !tbaa !115
  %27 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !58
  %29 = srem i32 %12, %28
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, i32 %28, i32 0
  %32 = add nsw i32 %29, %31
  store i32 %32, ptr %5, align 4, !tbaa !115
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !57
  %35 = srem i32 %14, %34
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i32 %34, i32 0
  %38 = add nsw i32 %35, %37
  store i32 %38, ptr %6, align 4, !tbaa !115
  %39 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = srem i32 %16, %40
  %42 = icmp slt i32 %41, 0
  %43 = select i1 %42, i32 %40, i32 0
  %44 = add nsw i32 %41, %43
  store i32 %44, ptr %7, align 4, !tbaa !115
  %45 = tail call i32 @llvm.smin.i32(i32 %18, i32 %22)
  store i32 %45, ptr %8, align 4, !tbaa !115
  %46 = tail call i32 @llvm.smin.i32(i32 %20, i32 %28)
  store i32 %46, ptr %9, align 4, !tbaa !115
  call void @IMB_rectclip(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %47 = load i32, ptr %4, align 4, !tbaa !115
  %48 = load i32, ptr %5, align 4, !tbaa !115
  %49 = load i32, ptr %6, align 4, !tbaa !115
  %50 = load i32, ptr %7, align 4, !tbaa !115
  %51 = load i32, ptr %8, align 4, !tbaa !115
  %52 = load i32, ptr %9, align 4, !tbaa !115
  store i32 %47, ptr %0, align 4, !tbaa !151
  store i32 %48, ptr %11, align 4, !tbaa !153
  store i32 %49, ptr %13, align 4, !tbaa !154
  store i32 %50, ptr %15, align 4, !tbaa !155
  store i32 %51, ptr %17, align 4, !tbaa !156
  store i32 %52, ptr %19, align 4, !tbaa !157
  %53 = icmp sge i32 %51, %45
  br i1 %53, label %68, label %54

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 1
  %56 = add nsw i32 %51, %47
  %57 = load i32, ptr %21, align 8, !tbaa !57
  %58 = srem i32 %56, %57
  %59 = add nsw i32 %51, %49
  %60 = load i32, ptr %33, align 8, !tbaa !57
  %61 = srem i32 %59, %60
  %62 = sub nsw i32 %45, %51
  store i32 %58, ptr %55, align 4, !tbaa !151
  %63 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 1, i32 1
  store i32 %48, ptr %63, align 4, !tbaa !153
  %64 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 1, i32 2
  store i32 %61, ptr %64, align 4, !tbaa !154
  %65 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 1, i32 3
  store i32 %50, ptr %65, align 4, !tbaa !155
  %66 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 1, i32 4
  store i32 %62, ptr %66, align 4, !tbaa !156
  %67 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 1, i32 5
  store i32 %52, ptr %67, align 4, !tbaa !157
  br label %68

68:                                               ; preds = %54, %3
  %69 = phi i32 [ 2, %54 ], [ 1, %3 ]
  %70 = icmp sge i32 %52, %46
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = add nuw nsw i32 %69, 1
  %73 = zext nneg i32 %69 to i64
  %74 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %73
  %75 = add nsw i32 %52, %48
  %76 = load i32, ptr %27, align 4, !tbaa !58
  %77 = srem i32 %75, %76
  %78 = add nsw i32 %52, %50
  %79 = load i32, ptr %39, align 4, !tbaa !58
  %80 = srem i32 %78, %79
  %81 = sub nsw i32 %46, %52
  store i32 %47, ptr %74, align 4, !tbaa !151
  %82 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %73, i32 1
  store i32 %77, ptr %82, align 4, !tbaa !153
  %83 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %73, i32 2
  store i32 %49, ptr %83, align 4, !tbaa !154
  %84 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %73, i32 3
  store i32 %80, ptr %84, align 4, !tbaa !155
  %85 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %73, i32 4
  store i32 %51, ptr %85, align 4, !tbaa !156
  %86 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %73, i32 5
  store i32 %81, ptr %86, align 4, !tbaa !157
  br label %87

87:                                               ; preds = %71, %68
  %88 = phi i32 [ %72, %71 ], [ %69, %68 ]
  %89 = or i1 %53, %70
  br i1 %89, label %113, label %90

90:                                               ; preds = %87
  %91 = add nuw nsw i32 %88, 1
  %92 = zext nneg i32 %88 to i64
  %93 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %92
  %94 = add nsw i32 %51, %47
  %95 = load i32, ptr %21, align 8, !tbaa !57
  %96 = srem i32 %94, %95
  %97 = add nsw i32 %52, %48
  %98 = load i32, ptr %27, align 4, !tbaa !58
  %99 = srem i32 %97, %98
  %100 = add nsw i32 %51, %49
  %101 = load i32, ptr %33, align 8, !tbaa !57
  %102 = srem i32 %100, %101
  %103 = add nsw i32 %52, %50
  %104 = load i32, ptr %39, align 4, !tbaa !58
  %105 = srem i32 %103, %104
  %106 = sub nsw i32 %45, %51
  %107 = sub nsw i32 %46, %52
  store i32 %96, ptr %93, align 4, !tbaa !151
  %108 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %92, i32 1
  store i32 %99, ptr %108, align 4, !tbaa !153
  %109 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %92, i32 2
  store i32 %102, ptr %109, align 4, !tbaa !154
  %110 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %92, i32 3
  store i32 %105, ptr %110, align 4, !tbaa !155
  %111 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %92, i32 4
  store i32 %106, ptr %111, align 4, !tbaa !156
  %112 = getelementptr inbounds %struct.ImagePaintRegion, ptr %0, i64 %92, i32 5
  store i32 %107, ptr %112, align 4, !tbaa !157
  br label %113

113:                                              ; preds = %87, %90
  %114 = phi i32 [ %91, %90 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %114
}

declare void @imapaint_region_tiles(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @image_undo_find_tile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_rectblend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @paint_use_opacity_masking(ptr noundef) local_unnamed_addr #2

declare void @paint_delete_blur_kernel(ptr noundef) local_unnamed_addr #2

declare void @image_undo_remove_masks() local_unnamed_addr #2

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!35 = !{!"ImagePaintState", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !39, i64 58, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !37, i64 104, !36, i64 112, !40, i64 120, !37, i64 124, !40, i64 132, !37, i64 136, !36, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!35, !36, i64 64}
!42 = !{!35, !36, i64 8}
!43 = !{!44, !40, i64 2432}
!44 = !{!"ImBuf", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !37, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !36, i64 296, !36, i64 304, !40, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !40, i64 2376, !36, i64 2384, !40, i64 2392, !40, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !40, i64 2432, !46, i64 2436, !47, i64 2456}
!45 = !{!"float", !37, i64 0}
!46 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!47 = !{!"DDSData", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16}
!48 = !{!35, !36, i64 48}
!49 = !{!50, !39, i64 1844}
!50 = !{!"Brush", !51, i64 0, !52, i64 120, !36, i64 144, !53, i64 152, !53, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !45, i64 1840, !39, i64 1844, !39, i64 1846, !45, i64 1848, !40, i64 1852, !40, i64 1856, !40, i64 1860, !45, i64 1864, !40, i64 1868, !40, i64 1872, !40, i64 1876, !40, i64 1880, !45, i64 1884, !45, i64 1888, !37, i64 1892, !45, i64 1904, !37, i64 1908, !40, i64 1920, !45, i64 1924, !45, i64 1928, !40, i64 1932, !40, i64 1936, !40, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !45, i64 1948, !45, i64 1952, !45, i64 1956, !45, i64 1960, !45, i64 1964, !40, i64 1968, !40, i64 1972, !40, i64 1976, !45, i64 1980, !45, i64 1984, !40, i64 1988, !40, i64 1992, !45, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!52 = !{!"BrushClone", !36, i64 0, !37, i64 8, !45, i64 16, !45, i64 20}
!53 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !45, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308}
!54 = !{!35, !39, i64 58}
!55 = !{!35, !36, i64 16}
!56 = !{!45, !45, i64 0}
!57 = !{!44, !40, i64 16}
!58 = !{!44, !40, i64 20}
!59 = !{!60, !39, i64 32}
!60 = !{!"BrushPainter", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 24, !39, i64 32, !36, i64 40, !61, i64 48, !61, i64 64, !62, i64 80}
!61 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!62 = !{!"BrushPainterCache", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !40, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !40, i64 64, !40, i64 68}
!63 = !{!44, !36, i64 48}
!64 = !{!60, !36, i64 8}
!65 = !{!60, !37, i64 80}
!66 = !{!60, !36, i64 104}
!67 = !{!60, !36, i64 120}
!68 = !{!36, !36, i64 0}
!69 = !{!60, !36, i64 128}
!70 = !{!60, !36, i64 136}
!71 = !{!60, !40, i64 88}
!72 = !{!60, !37, i64 81}
!73 = !{!50, !36, i64 168}
!74 = !{!50, !37, i64 1946}
!75 = !{!60, !37, i64 83}
!76 = !{!50, !36, i64 480}
!77 = !{!60, !37, i64 84}
!78 = !{!60, !36, i64 0}
!79 = !{!80, !36, i64 264}
!80 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !81, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !82, i64 280, !89, i64 4264, !81, i64 4296, !81, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !40, i64 4380, !81, i64 4384, !90, i64 4400, !91, i64 4416, !94, i64 4600, !36, i64 4608, !95, i64 4616, !36, i64 4640, !96, i64 4648, !96, i64 4656, !84, i64 4664, !85, i64 4824, !97, i64 4888, !36, i64 4952}
!81 = !{!"ListBase", !36, i64 0, !36, i64 8}
!82 = !{!"RenderData", !83, i64 0, !36, i64 248, !36, i64 256, !86, i64 264, !87, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !45, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !39, i64 432, !39, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !40, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !40, i64 484, !40, i64 488, !39, i64 492, !39, i64 494, !40, i64 496, !40, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !61, i64 544, !61, i64 560, !46, i64 576, !81, i64 592, !39, i64 608, !39, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !40, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !45, i64 660, !45, i64 664, !39, i64 668, !39, i64 670, !45, i64 672, !45, i64 676, !37, i64 680, !40, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !39, i64 2524, !39, i64 2526, !45, i64 2528, !45, i64 2532, !39, i64 2536, !39, i64 2538, !45, i64 2540, !39, i64 2544, !39, i64 2546, !40, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !45, i64 2560, !45, i64 2564, !36, i64 2568, !40, i64 2576, !45, i64 2580, !37, i64 2584, !88, i64 2616, !40, i64 3976, !40, i64 3980}
!83 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !45, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !84, i64 24, !85, i64 184}
!84 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !45, i64 136, !45, i64 140, !36, i64 144, !36, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!86 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !39, i64 48, !39, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!87 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !45, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!88 = !{!"BakeData", !83, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !45, i64 1280, !45, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!89 = !{!"AudioData", !40, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !40, i64 16, !39, i64 20, !39, i64 22, !45, i64 24, !45, i64 28}
!90 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!91 = !{!"GameData", !90, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !92, i64 40, !39, i64 64, !39, i64 66, !45, i64 68, !93, i64 72, !45, i64 128, !45, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!92 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !45, i64 8, !45, i64 12, !36, i64 16}
!93 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !40, i64 40, !45, i64 44, !45, i64 48, !39, i64 52, !39, i64 54}
!94 = !{!"UnitSettings", !45, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!95 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!96 = !{!"long", !37, i64 0}
!97 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!98 = !{!50, !40, i64 1856}
!99 = !{!50, !40, i64 1936}
!100 = !{!62, !45, i64 20}
!101 = !{!50, !45, i64 268}
!102 = !{!50, !45, i64 580}
!103 = !{!60, !36, i64 40}
!104 = !{!50, !37, i64 284}
!105 = !{!106, !45, i64 52}
!106 = !{!"UnifiedPaintSettings", !40, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !37, i64 16, !37, i64 28, !40, i64 40, !37, i64 44, !45, i64 52, !40, i64 56, !40, i64 60, !37, i64 64, !37, i64 65, !45, i64 72, !37, i64 76, !40, i64 84, !45, i64 88, !37, i64 92, !37, i64 100, !40, i64 108, !36, i64 112, !45, i64 120, !40, i64 124}
!107 = !{!50, !37, i64 596}
!108 = !{!50, !40, i64 1860}
!109 = !{!62, !40, i64 8}
!110 = !{!62, !45, i64 16}
!111 = !{!62, !36, i64 48}
!112 = !{!62, !36, i64 56}
!113 = !{!62, !40, i64 64}
!114 = !{!62, !40, i64 68}
!115 = !{!40, !40, i64 0}
!116 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 4, !56, i64 12, i64 4, !56}
!117 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 4, !56}
!118 = !{i64 0, i64 4, !56, i64 4, i64 4, !56}
!119 = !{i64 0, i64 4, !56}
!120 = !{!60, !40, i64 144}
!121 = !{!39, !39, i64 0}
!122 = distinct !{!122, !123, !124}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = distinct !{!125, !123, !124}
!126 = distinct !{!126, !123, !124}
!127 = distinct !{!127, !123, !124}
!128 = !{!62, !36, i64 40}
!129 = distinct !{!129, !123, !124}
!130 = distinct !{!130, !123, !124}
!131 = !{!62, !45, i64 12}
!132 = !{!62, !36, i64 24}
!133 = !{!60, !37, i64 82}
!134 = !{!44, !36, i64 40}
!135 = !{!37, !37, i64 0}
!136 = distinct !{!136, !123, !124}
!137 = distinct !{!137, !123, !124}
!138 = !{!35, !36, i64 24}
!139 = !{!35, !39, i64 56}
!140 = !{!35, !36, i64 72}
!141 = !{!50, !45, i64 1984}
!142 = !{!35, !36, i64 144}
!143 = !{!144, !40, i64 8}
!144 = !{!"", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!145 = !{!144, !40, i64 16}
!146 = !{!144, !36, i64 0}
!147 = distinct !{!147, !123, !124}
!148 = distinct !{!148, !123, !124}
!149 = distinct !{!149, !123, !124}
!150 = distinct !{!150, !123, !124}
!151 = !{!152, !40, i64 0}
!152 = !{!"ImagePaintRegion", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!153 = !{!152, !40, i64 4}
!154 = !{!152, !40, i64 8}
!155 = !{!152, !40, i64 12}
!156 = !{!152, !40, i64 16}
!157 = !{!152, !40, i64 20}
!158 = distinct !{!158, !123, !124}
!159 = !{!35, !36, i64 80}
!160 = !{!44, !37, i64 24}
!161 = !{!44, !40, i64 32}
!162 = !{!35, !37, i64 104}
!163 = distinct !{!163, !123, !124}
!164 = distinct !{!164, !123, !124}
!165 = distinct !{!165, !123, !124}
!166 = !{!35, !37, i64 136}
!167 = !{!35, !36, i64 32}
!168 = !{!169, !36, i64 40}
!169 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !81, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !170, i64 48, !36, i64 88, !171, i64 96, !172, i64 5360, !36, i64 10520, !37, i64 10528, !45, i64 10536, !45, i64 10540, !45, i64 10544, !45, i64 10548, !45, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !173, i64 10568}
!170 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!171 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !45, i64 12, !40, i64 16, !45, i64 20, !45, i64 24, !40, i64 28, !45, i64 32, !40, i64 36, !37, i64 40, !172, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!172 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !45, i64 5128, !45, i64 5132, !39, i64 5136, !39, i64 5138, !40, i64 5140, !37, i64 5144}
!173 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!174 = !{!175, !36, i64 1280}
!175 = !{!"Image", !51, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !40, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !45, i64 1296, !40, i64 1300, !39, i64 1304, !39, i64 1306, !40, i64 1308, !40, i64 1312, !37, i64 1316, !37, i64 1317, !39, i64 1318, !37, i64 1320, !45, i64 1336, !45, i64 1340, !97, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!176 = !{!175, !36, i64 1168}
!177 = !{!35, !36, i64 88}
!178 = !{!44, !40, i64 28}
!179 = !{!35, !36, i64 96}
!180 = !{!50, !36, i64 120}
!181 = !{!182, !36, i64 120}
!182 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !81, i64 128, !36, i64 144, !36, i64 152, !39, i64 160, !37, i64 162}
!183 = !{!169, !39, i64 10562}
!184 = !{!60, !36, i64 112}
!185 = !{!50, !45, i64 1904}
!186 = distinct !{!186, !123, !124}
!187 = distinct !{!187, !123, !124}
!188 = distinct !{!188, !123, !124}
!189 = distinct !{!189, !123, !124}
!190 = !{!50, !45, i64 1996}
!191 = distinct !{!191, !123, !124}
!192 = distinct !{!192, !123, !124}
!193 = !{!50, !40, i64 1940}
!194 = !{!50, !36, i64 800}
!195 = distinct !{!195, !123, !124}
!196 = distinct !{!196, !123, !124}
!197 = distinct !{!197, !123, !124}
!198 = distinct !{!198, !123, !124}
!199 = !{!61, !45, i64 0}
!200 = !{!61, !45, i64 8}
!201 = !{!61, !45, i64 4}
!202 = !{!61, !45, i64 12}
!203 = !{!62, !37, i64 0}
!204 = !{!62, !36, i64 32}
!205 = distinct !{!205, !123, !124}
!206 = distinct !{!206, !123, !124}
