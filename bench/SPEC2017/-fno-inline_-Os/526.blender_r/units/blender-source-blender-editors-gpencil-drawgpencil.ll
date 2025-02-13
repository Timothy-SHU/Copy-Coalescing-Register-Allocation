; ModuleID = 'blender/source/blender/editors/gpencil/drawgpencil.c'
source_filename = "blender/source/blender/editors/gpencil/drawgpencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.tGPspoint = type { i32, i32, float, float }
%struct.bGPDspoint = type { float, float, float, float, float }

@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_draw_2dimage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !34
  switch i8 %9, label %24 [
    i8 6, label %10
    i8 20, label %10
    i8 8, label %21
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %12 = load <2 x i16>, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1
  %14 = load float, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !51
  tail call void @wmOrtho2(float noundef %14, float noundef %16, float noundef %18, float noundef %20) #11
  br label %27

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %23 = load <2 x i16>, ptr %22, align 8, !tbaa !43
  br label %27

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %26 = load <2 x i16>, ptr %25, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %24, %21, %10
  %28 = phi i32 [ 9, %24 ], [ 5, %21 ], [ 21, %10 ]
  %29 = phi <2 x i16> [ %26, %24 ], [ %23, %21 ], [ %12, %10 ]
  %30 = extractelement <2 x i16> %29, i64 1
  %31 = sext i16 %30 to i32
  %32 = extractelement <2 x i16> %29, i64 0
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !52
  tail call fastcc void @gp_draw_data(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef %33, i32 noundef %31, i32 noundef %35, i32 noundef %28) #12
  br label %36

36:                                               ; preds = %1, %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_gpencil_data_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wmOrtho2(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !71 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  tail call void @setlinestyle(i32 noundef 0) #11
  tail call void @glEnable(i32 noundef 2848) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  tail call void @glEnable(i32 noundef 3042) #11
  %10 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %138, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %15 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %16 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 4
  br label %19

19:                                               ; preds = %13, %134
  %20 = phi ptr [ %11, %13 ], [ %136, %134 ]
  %21 = phi i32 [ %6, %13 ], [ %135, %134 ]
  %22 = getelementptr inbounds %struct.bGPDlayer, ptr %20, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !73
  %24 = trunc i32 %23 to i16
  %25 = lshr i16 %24, 3
  %26 = and i16 %25, 1
  %27 = getelementptr inbounds %struct.bGPDlayer, ptr %20, i64 0, i32 5
  %28 = load i16, ptr %27, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %29 = and i32 %23, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %134

31:                                               ; preds = %19
  %32 = call ptr @gpencil_layer_getframe(ptr noundef nonnull %20, i32 noundef %5, i16 noundef signext 0) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %134, label %34

34:                                               ; preds = %31
  %35 = sitofp i16 %28 to float
  call void @glLineWidth(float noundef %35) #11
  %36 = getelementptr inbounds %struct.bGPDlayer, ptr %20, i64 0, i32 7
  call fastcc void @copy_v4_v4(ptr noundef nonnull %8, ptr noundef nonnull %36) #12
  call fastcc void @copy_v4_v4(ptr noundef nonnull %9, ptr noundef nonnull %36) #12
  call void @glColor4fv(ptr noundef nonnull %8) #11
  %37 = load i16, ptr %27, align 4, !tbaa !75
  %38 = sext i16 %37 to i32
  %39 = add nsw i32 %38, 2
  %40 = sitofp i32 %39 to float
  call void @glPointSize(float noundef %40) #11
  %41 = load i32, ptr %22, align 8, !tbaa !73
  %42 = and i32 %21, -33
  %43 = lshr i32 %41, 2
  %44 = and i32 %43, 32
  %45 = or disjoint i32 %44, %42
  %46 = and i32 %41, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %115, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.bGPDlayer, ptr %20, i64 0, i32 6
  %50 = load i16, ptr %49, align 2, !tbaa !76
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %101, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 3
  %54 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !77
  %56 = icmp eq ptr %55, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %52, %66
  %58 = phi ptr [ %76, %66 ], [ %55, %52 ]
  %59 = load i32, ptr %53, align 8, !tbaa !79
  %60 = getelementptr inbounds %struct.bGPDframe, ptr %58, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !79
  %62 = sub nsw i32 %59, %61
  %63 = load i16, ptr %49, align 2, !tbaa !76
  %64 = sext i16 %63 to i32
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %57
  %67 = sitofp i32 %62 to float
  %68 = add nsw i32 %64, 1
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %67, %69
  %71 = fsub float 1.000000e+00, %70
  %72 = load float, ptr %14, align 4, !tbaa !80
  %73 = fmul float %71, %72
  %74 = fmul float %73, 0x3FE51EB860000000
  store float %74, ptr %15, align 4, !tbaa !80
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %58, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  %75 = getelementptr inbounds %struct.bGPDframe, ptr %58, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !77
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %57, !llvm.loop !81

78:                                               ; preds = %66, %57, %52
  %79 = load ptr, ptr %32, align 8, !tbaa !83
  %80 = icmp eq ptr %79, null
  br i1 %80, label %114, label %81

81:                                               ; preds = %78, %90
  %82 = phi ptr [ %99, %90 ], [ %79, %78 ]
  %83 = getelementptr inbounds %struct.bGPDframe, ptr %82, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !79
  %85 = load i32, ptr %53, align 8, !tbaa !79
  %86 = sub nsw i32 %84, %85
  %87 = load i16, ptr %49, align 2, !tbaa !76
  %88 = sext i16 %87 to i32
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %114, label %90

90:                                               ; preds = %81
  %91 = sitofp i32 %86 to float
  %92 = add nsw i32 %88, 1
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %91, %93
  %95 = fsub float 1.000000e+00, %94
  %96 = load float, ptr %14, align 4, !tbaa !80
  %97 = fmul float %95, %96
  %98 = fmul float %97, 0x3FE51EB860000000
  store float %98, ptr %15, align 4, !tbaa !80
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %82, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  %99 = load ptr, ptr %82, align 8, !tbaa !83
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %81, !llvm.loop !84

101:                                              ; preds = %48
  %102 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !77
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load float, ptr %14, align 4, !tbaa !80
  %107 = fdiv float %106, 7.000000e+00
  store float %107, ptr %15, align 4, !tbaa !80
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %103, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  br label %108

108:                                              ; preds = %105, %101
  %109 = load ptr, ptr %32, align 8, !tbaa !83
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load float, ptr %14, align 4, !tbaa !80
  %113 = fmul float %112, 2.500000e-01
  store float %113, ptr %15, align 4, !tbaa !80
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %109, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  br label %114

114:                                              ; preds = %81, %90, %108, %111, %78
  call void @glColor4fv(ptr noundef nonnull %8) #11
  br label %115

115:                                              ; preds = %114, %34
  %116 = load float, ptr %14, align 4, !tbaa !80
  store float %116, ptr %15, align 4, !tbaa !80
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %32, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  %117 = call i32 @ED_gpencil_session_active() #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %22, align 8, !tbaa !73
  %121 = and i32 %120, 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 4
  %125 = load i32, ptr %124, align 4, !tbaa !85
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %16, align 8, !tbaa !86
  %130 = load i16, ptr %17, align 4, !tbaa !88
  %131 = sext i16 %130 to i32
  %132 = trunc i32 %45 to i16
  %133 = load i16, ptr %18, align 2, !tbaa !89
  call fastcc void @gp_draw_stroke_buffer(ptr noundef %129, i32 noundef %131, i16 noundef signext %28, i16 noundef signext %132, i16 noundef signext %133) #12
  br label %134

134:                                              ; preds = %115, %119, %123, %128, %31, %19
  %135 = phi i32 [ %21, %19 ], [ %21, %31 ], [ %45, %128 ], [ %45, %123 ], [ %45, %119 ], [ %45, %115 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  %136 = load ptr, ptr %20, align 8, !tbaa !72
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %19, !llvm.loop !90

138:                                              ; preds = %134, %7
  call void @glDisable(i32 noundef 3042) #11
  call void @glDisable(i32 noundef 2848) #11
  call void @glLineWidth(float noundef 1.000000e+00) #11
  call void @glPointSize(float noundef 1.000000e+00) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = icmp eq ptr %3, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i8 %12, 6
  %14 = icmp eq i8 %12, 20
  %15 = or i1 %13, %14
  %16 = select i1 %15, i32 16, i32 0
  %17 = icmp eq i8 %1, 0
  %18 = or disjoint i32 %16, 5
  %19 = select i1 %17, i32 %16, i32 %18
  %20 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !91
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !52
  tail call fastcc void @gp_draw_data(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, i32 noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %19) #12
  br label %28

28:                                               ; preds = %7, %2, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_draw_view3d(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = tail call ptr @ED_gpencil_data_get_active_v3d(ptr noundef %0, ptr noundef %1) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %12 = load i8, ptr %11, align 1, !tbaa !94
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !96
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @ED_view3d_calc_camera_border(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %5, i8 noundef zeroext 1) #11
  %19 = load float, ptr %5, align 4, !tbaa !98
  %20 = call fastcc i32 @iroundf(float noundef %19) #12
  %21 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !99
  %23 = call fastcc i32 @iroundf(float noundef %22) #12
  %24 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !100
  %26 = fsub float %25, %19
  %27 = call fastcc i32 @iroundf(float noundef %26) #12
  %28 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !101
  %30 = fsub float %29, %22
  %31 = call fastcc i32 @iroundf(float noundef %30) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %39

32:                                               ; preds = %14, %10
  %33 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %34 = load i16, ptr %33, align 8, !tbaa !91
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %37 = load i16, ptr %36, align 2, !tbaa !92
  %38 = sext i16 %37 to i32
  br label %39

39:                                               ; preds = %32, %18
  %40 = phi i32 [ 0, %32 ], [ %20, %18 ]
  %41 = phi i32 [ 0, %32 ], [ %23, %18 ]
  %42 = phi i32 [ %35, %32 ], [ %27, %18 ]
  %43 = phi i32 [ %38, %32 ], [ %31, %18 ]
  %44 = icmp eq i8 %3, 0
  %45 = select i1 %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !52
  call fastcc void @gp_draw_data(ptr noundef nonnull %8, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %47, i32 noundef %45) #12
  br label %48

48:                                               ; preds = %4, %39
  ret void
}

; Function Attrs: optsize
declare ptr @ED_gpencil_data_get_active_v3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #3 !PGOFuncName !102 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_draw_ex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @gp_draw_data(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 5) #12
  ret void
}

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !103 {
  %3 = load float, ptr %1, align 4, !tbaa !80
  store float %3, ptr %0, align 4, !tbaa !80
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !80
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !80
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !80
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_strokes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) unnamed_addr #0 !PGOFuncName !104 {
  %10 = alloca i32, align 4
  tail call void @glColor4fv(ptr noundef %8) #11
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = icmp eq ptr %12, null
  br i1 %13, label %74, label %14

14:                                               ; preds = %9
  %15 = and i32 %5, 2
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %5, 4
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %5, 8
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %5, 32
  %22 = icmp eq i32 %21, 0
  %23 = trunc i32 %5 to i16
  br label %24

24:                                               ; preds = %14, %71
  %25 = phi ptr [ %12, %14 ], [ %72, %71 ]
  %26 = getelementptr inbounds %struct.bGPDstroke, ptr %25, i64 0, i32 6
  %27 = load i16, ptr %26, align 2, !tbaa !105
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %16, label %31, label %30

30:                                               ; preds = %24
  br i1 %29, label %71, label %32

31:                                               ; preds = %24
  br i1 %29, label %32, label %71

32:                                               ; preds = %30, %31
  %33 = and i16 %27, 2
  %34 = icmp eq i16 %33, 0
  br i1 %18, label %36, label %35

35:                                               ; preds = %32
  br i1 %34, label %71, label %37

36:                                               ; preds = %32
  br i1 %34, label %37, label %71

37:                                               ; preds = %35, %36
  %38 = and i16 %27, 4
  %39 = icmp eq i16 %38, 0
  br i1 %20, label %41, label %40

40:                                               ; preds = %37
  br i1 %39, label %71, label %42

41:                                               ; preds = %37
  br i1 %39, label %42, label %71

42:                                               ; preds = %40, %41
  %43 = getelementptr inbounds %struct.bGPDstroke, ptr %25, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !108
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bGPDstroke, ptr %25, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !109
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  br i1 %16, label %67, label %51

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !tbaa !110
  br i1 %22, label %54, label %52

52:                                               ; preds = %51
  call void @glGetIntegerv(i32 noundef 2930, ptr noundef nonnull %10) #11
  call void @glDepthMask(i8 noundef zeroext 0) #11
  call void @glEnable(i32 noundef 2929) #11
  call void @bglPolygonOffset(float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  %53 = load i32, ptr %47, align 8, !tbaa !109
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ %53, %52 ], [ %48, %51 ]
  %56 = icmp eq i32 %55, 1
  %57 = load ptr, ptr %43, align 8, !tbaa !108
  br i1 %56, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.bGPDstroke, ptr %25, i64 0, i32 6
  %60 = load i16, ptr %59, align 2, !tbaa !105
  call fastcc void @gp_draw_stroke_point(ptr noundef %57, i16 noundef signext %7, i16 noundef signext %23, i16 noundef signext %60, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %62

61:                                               ; preds = %54
  call fastcc void @gp_draw_stroke_3d(ptr noundef %57, i32 noundef %55, i16 noundef signext %7, i16 noundef signext %6) #12
  br label %62

62:                                               ; preds = %61, %58
  br i1 %22, label %66, label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %10, align 4, !tbaa !110
  %65 = trunc i32 %64 to i8
  call void @glDepthMask(i8 noundef zeroext %65) #11
  call void @glDisable(i32 noundef 2929) #11
  call void @bglPolygonOffset(float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  br label %66

66:                                               ; preds = %63, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  br label %71

67:                                               ; preds = %50
  %68 = icmp eq i32 %48, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  call fastcc void @gp_draw_stroke_point(ptr noundef nonnull %44, i16 noundef signext %7, i16 noundef signext %23, i16 noundef signext %27, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %71

70:                                               ; preds = %67
  call fastcc void @gp_draw_stroke(ptr noundef nonnull %44, i32 noundef %48, i16 noundef signext %7, i16 noundef signext %23, i16 noundef signext %27, i16 noundef signext %6, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %71

71:                                               ; preds = %66, %70, %69, %42, %46, %41, %40, %36, %35, %31, %30
  %72 = load ptr, ptr %25, align 8, !tbaa !72
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %24, !llvm.loop !111

74:                                               ; preds = %71, %9
  ret void
}

; Function Attrs: optsize
declare i32 @ED_gpencil_session_active() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_stroke_buffer(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !112 {
  %6 = icmp ne ptr %0, null
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  %9 = and i16 %3, 6
  %10 = icmp eq i16 %9, 0
  %11 = and i1 %8, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %5
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @glBegin(i32 noundef 0) #11
  tail call void @glVertex2iv(ptr noundef nonnull %0) #11
  tail call void @glEnd() #11
  br label %55

15:                                               ; preds = %12
  %16 = icmp sgt i16 %4, -1
  br i1 %16, label %17, label %55

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.tGPspoint, ptr %0, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !113
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !115
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @setlinestyle(i32 noundef 2) #11
  br label %24

24:                                               ; preds = %17, %23
  %25 = sitofp i16 %2 to float
  %26 = fmul float %19, %25
  tail call void @glLineWidth(float noundef %26) #11
  tail call void @glBegin(i32 noundef 3) #11
  br label %27

27:                                               ; preds = %24, %45
  %28 = phi float [ %46, %45 ], [ %19, %24 ]
  %29 = phi i32 [ %47, %45 ], [ 0, %24 ]
  %30 = phi ptr [ %48, %45 ], [ %0, %24 ]
  %31 = getelementptr inbounds %struct.tGPspoint, ptr %30, i64 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !113
  %33 = fsub float %32, %28
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ogt float %34, 0x3FC99999A0000000
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  tail call void @glEnd() #11
  %37 = load float, ptr %31, align 4, !tbaa !113
  %38 = fmul float %37, %25
  tail call void @glLineWidth(float noundef %38) #11
  tail call void @glBegin(i32 noundef 3) #11
  %39 = icmp eq i32 %29, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tGPspoint, ptr %30, i64 -1
  tail call void @glVertex2iv(ptr noundef nonnull %41) #11
  br label %42

42:                                               ; preds = %40, %36
  tail call void @glVertex2iv(ptr noundef nonnull %30) #11
  %43 = load float, ptr %31, align 4, !tbaa !113
  br label %45

44:                                               ; preds = %27
  tail call void @glVertex2iv(ptr noundef nonnull %30) #11
  br label %45

45:                                               ; preds = %42, %44
  %46 = phi float [ %43, %42 ], [ %28, %44 ]
  %47 = add nuw nsw i32 %29, 1
  %48 = getelementptr inbounds %struct.tGPspoint, ptr %30, i64 1
  %49 = icmp eq i32 %47, %1
  br i1 %49, label %50, label %27, !llvm.loop !116

50:                                               ; preds = %45
  tail call void @glEnd() #11
  tail call void @glLineWidth(float noundef 1.000000e+00) #11
  %51 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !115
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @setlinestyle(i32 noundef 0) #11
  br label %55

55:                                               ; preds = %14, %15, %54, %50, %5
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglPolygonOffset(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_stroke_point(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !117 {
  %9 = alloca [2 x float], align 4
  %10 = zext i16 %3 to i32
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @glBegin(i32 noundef 0) #11
  tail call void @glVertex3fv(ptr noundef %0) #11
  tail call void @glEnd() #11
  br label %68

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %15 = and i32 %10, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load <2 x float>, ptr %0, align 4, !tbaa !80
  %19 = extractelement <2 x float> %18, i64 0
  store float %19, ptr %9, align 4, !tbaa !80
  br label %51

20:                                               ; preds = %14
  %21 = and i32 %10, 4
  %22 = icmp eq i32 %21, 0
  %23 = load float, ptr %0, align 4, !tbaa !118
  br i1 %22, label %37, label %24

24:                                               ; preds = %20
  %25 = insertelement <2 x i32> poison, i32 %6, i64 0
  %26 = insertelement <2 x i32> %25, i32 %7, i64 1
  %27 = sitofp <2 x i32> %26 to <2 x float>
  %28 = insertelement <2 x i32> poison, i32 %4, i64 0
  %29 = insertelement <2 x i32> %28, i32 %5, i64 1
  %30 = sitofp <2 x i32> %29 to <2 x float>
  %31 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !120
  %33 = insertelement <2 x float> poison, float %23, i64 0
  %34 = insertelement <2 x float> %33, float %32, i64 1
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %27, <2 x float> %30)
  %36 = extractelement <2 x float> %35, i64 0
  store float %36, ptr %9, align 4, !tbaa !80
  br label %51

37:                                               ; preds = %20
  %38 = insertelement <2 x i32> poison, i32 %6, i64 0
  %39 = insertelement <2 x i32> %38, i32 %7, i64 1
  %40 = sitofp <2 x i32> %39 to <2 x float>
  %41 = insertelement <2 x i32> poison, i32 %4, i64 0
  %42 = insertelement <2 x i32> %41, i32 %5, i64 1
  %43 = sitofp <2 x i32> %42 to <2 x float>
  %44 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !120
  %46 = insertelement <2 x float> poison, float %23, i64 0
  %47 = insertelement <2 x float> %46, float %45, i64 1
  %48 = fdiv <2 x float> %47, <float 1.000000e+02, float 1.000000e+02>
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %40, <2 x float> %43)
  %50 = extractelement <2 x float> %49, i64 0
  store float %50, ptr %9, align 4, !tbaa !80
  br label %51

51:                                               ; preds = %24, %37, %17
  %52 = phi <2 x float> [ %35, %24 ], [ %49, %37 ], [ %18, %17 ]
  %53 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %54 = extractelement <2 x float> %52, i64 1
  store float %54, ptr %53, align 4, !tbaa !80
  %55 = icmp slt i16 %1, 3
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = and i16 %2, 16
  %58 = icmp eq i16 %57, 0
  %59 = or i1 %58, %16
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %51
  tail call void @glBegin(i32 noundef 0) #11
  call void @glVertex2fv(ptr noundef nonnull %9) #11
  call void @glEnd() #11
  br label %67

61:                                               ; preds = %56
  %62 = tail call ptr @gluNewQuadric() #11
  tail call void @gluQuadricDrawStyle(ptr noundef %62, i32 noundef 100012) #11
  %63 = extractelement <2 x float> %52, i64 0
  tail call void @glTranslatef(float noundef %63, float noundef %54, float noundef 0.000000e+00) #11
  %64 = sitofp i16 %1 to double
  tail call void @gluDisk(ptr noundef %62, double noundef 0.000000e+00, double noundef %64, i32 noundef 32, i32 noundef 1) #11
  %65 = fneg float %63
  %66 = fneg float %54
  tail call void @glTranslatef(float noundef %65, float noundef %66, float noundef 0.000000e+00) #11
  tail call void @gluDeleteQuadric(ptr noundef %62) #11
  br label %67

67:                                               ; preds = %61, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %68

68:                                               ; preds = %67, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_stroke_3d(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 !PGOFuncName !121 {
  %5 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !122
  %7 = sitofp i16 %2 to float
  %8 = fmul float %6, %7
  tail call void @glLineWidth(float noundef %8) #11
  tail call void @glBegin(i32 noundef 3) #11
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = fdiv float 0x3FC99999A0000000, %7
  br label %12

12:                                               ; preds = %10, %27
  %13 = phi i32 [ 0, %10 ], [ %29, %27 ]
  %14 = phi float [ %6, %10 ], [ %28, %27 ]
  %15 = phi ptr [ %0, %10 ], [ %30, %27 ]
  %16 = getelementptr inbounds %struct.bGPDspoint, ptr %15, i64 0, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !122
  %18 = fsub float %17, %14
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ogt float %19, %11
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  tail call void @glEnd() #11
  %22 = load float, ptr %16, align 4, !tbaa !122
  %23 = fmul float %22, %7
  tail call void @glLineWidth(float noundef %23) #11
  tail call void @glBegin(i32 noundef 3) #11
  %24 = icmp eq i32 %13, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bGPDspoint, ptr %15, i64 -1
  tail call void @glVertex3fv(ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %12, %21, %25
  %28 = phi float [ %22, %25 ], [ %22, %21 ], [ %14, %12 ]
  tail call void @glVertex3fv(ptr noundef nonnull %15) #11
  %29 = add nuw nsw i32 %13, 1
  %30 = getelementptr inbounds %struct.bGPDspoint, ptr %15, i64 1
  %31 = icmp eq i32 %29, %1
  br i1 %31, label %32, label %12, !llvm.loop !123

32:                                               ; preds = %27, %4
  tail call void @glEnd() #11
  %33 = icmp eq i16 %3, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %32
  tail call void @glBegin(i32 noundef 0) #11
  %35 = icmp ne ptr %0, null
  %36 = and i1 %9, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %34, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %34 ]
  %39 = phi ptr [ %41, %37 ], [ %0, %34 ]
  tail call void @glVertex3fv(ptr noundef nonnull %39) #11
  %40 = add nuw nsw i32 %38, 1
  %41 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 1
  %42 = icmp eq i32 %40, %1
  br i1 %42, label %43, label %37, !llvm.loop !124

43:                                               ; preds = %37, %34
  tail call void @glEnd() #11
  br label %44

44:                                               ; preds = %43, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_stroke(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 !PGOFuncName !125 {
  %11 = alloca [2 x float], align 8
  %12 = alloca [2 x float], align 8
  %13 = alloca [2 x float], align 8
  %14 = alloca [2 x float], align 8
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 8
  %17 = alloca [2 x float], align 8
  %18 = sitofp i16 %2 to float
  %19 = fmul float %18, 5.000000e-01
  %20 = fcmp olt float %19, 3.000000e+00
  %21 = and i16 %3, 20
  %22 = icmp eq i16 %21, 20
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %10
  tail call void @glBegin(i32 noundef 3) #11
  %25 = icmp sgt i32 %1, 0
  %26 = icmp ne ptr %0, null
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = zext i16 %4 to i32
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %29, 4
  %33 = icmp eq i32 %32, 0
  %34 = sitofp i32 %8 to float
  %35 = sitofp i32 %6 to float
  %36 = sitofp i32 %9 to float
  %37 = sitofp i32 %7 to float
  br label %38

38:                                               ; preds = %28, %58
  %39 = phi ptr [ %0, %28 ], [ %60, %58 ]
  %40 = phi i32 [ 0, %28 ], [ %59, %58 ]
  %41 = load float, ptr %39, align 4, !tbaa !118
  br i1 %31, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 0, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !120
  tail call void @glVertex2f(float noundef %41, float noundef %44) #11
  br label %58

45:                                               ; preds = %38
  br i1 %33, label %51, label %46

46:                                               ; preds = %45
  %47 = tail call float @llvm.fmuladd.f32(float %41, float %34, float %35)
  %48 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !120
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %36, float %37)
  tail call void @glVertex2f(float noundef %47, float noundef %50) #11
  br label %58

51:                                               ; preds = %45
  %52 = fdiv float %41, 1.000000e+02
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %34, float %35)
  %54 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !120
  %56 = fdiv float %55, 1.000000e+02
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %36, float %37)
  tail call void @glVertex2f(float noundef %53, float noundef %57) #11
  br label %58

58:                                               ; preds = %42, %51, %46
  %59 = add nuw nsw i32 %40, 1
  %60 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 1
  %61 = icmp eq i32 %59, %1
  br i1 %61, label %62, label %38, !llvm.loop !126

62:                                               ; preds = %58, %24
  tail call void @glEnd() #11
  br label %198

63:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  tail call void @glShadeModel(i32 noundef 7424) #11
  tail call void @glBegin(i32 noundef 7) #11
  %64 = icmp sgt i32 %1, 1
  br i1 %64, label %65, label %197

65:                                               ; preds = %63
  %66 = zext i16 %4 to i32
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %66, 4
  %70 = icmp eq i32 %69, 0
  %71 = insertelement <2 x i32> poison, i32 %8, i64 0
  %72 = insertelement <2 x i32> %71, i32 %9, i64 1
  %73 = sitofp <2 x i32> %72 to <2 x float>
  %74 = insertelement <2 x i32> poison, i32 %6, i64 0
  %75 = insertelement <2 x i32> %74, i32 %7, i64 1
  %76 = sitofp <2 x i32> %75 to <2 x float>
  %77 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  %78 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %79 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %80 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %81 = add nsw i32 %1, -2
  %82 = add nsw i32 %1, -2
  br label %83

83:                                               ; preds = %65, %194
  %84 = phi ptr [ %0, %65 ], [ %86, %194 ]
  %85 = phi i32 [ 0, %65 ], [ %195, %194 ]
  %86 = getelementptr %struct.bGPDspoint, ptr %84, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %87 = load float, ptr %84, align 4, !tbaa !118
  br i1 %68, label %94, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 1
  %90 = load float, ptr %89, align 4, !tbaa !120
  %91 = load <2 x float>, ptr %86, align 4, !tbaa !80
  %92 = insertelement <2 x float> poison, float %87, i64 0
  %93 = insertelement <2 x float> %92, float %90, i64 1
  br label %113

94:                                               ; preds = %83
  br i1 %70, label %103, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 1
  %97 = load float, ptr %96, align 4, !tbaa !120
  %98 = insertelement <2 x float> poison, float %87, i64 0
  %99 = insertelement <2 x float> %98, float %97, i64 1
  %100 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %99, <2 x float> %73, <2 x float> %76)
  %101 = load <2 x float>, ptr %86, align 4, !tbaa !80
  %102 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %101, <2 x float> %73, <2 x float> %76)
  br label %113

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 1
  %105 = load float, ptr %104, align 4, !tbaa !120
  %106 = insertelement <2 x float> poison, float %87, i64 0
  %107 = insertelement <2 x float> %106, float %105, i64 1
  %108 = fdiv <2 x float> %107, <float 1.000000e+02, float 1.000000e+02>
  %109 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %108, <2 x float> %73, <2 x float> %76)
  %110 = load <2 x float>, ptr %86, align 4, !tbaa !80
  %111 = fdiv <2 x float> %110, <float 1.000000e+02, float 1.000000e+02>
  %112 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %111, <2 x float> %73, <2 x float> %76)
  br label %113

113:                                              ; preds = %95, %103, %88
  %114 = phi <2 x float> [ %91, %88 ], [ %102, %95 ], [ %112, %103 ]
  %115 = phi <2 x float> [ %93, %88 ], [ %100, %95 ], [ %109, %103 ]
  %116 = fsub <2 x float> %114, %115
  store <2 x float> %116, ptr %14, align 8, !tbaa !80
  call fastcc void @normalize_v2(ptr noundef nonnull %14) #12
  %117 = load <2 x float>, ptr %14, align 8, !tbaa !80
  %118 = extractelement <2 x float> %117, i64 0
  %119 = fneg float %118
  store float %119, ptr %77, align 4, !tbaa !80
  %120 = extractelement <2 x float> %117, i64 1
  store float %120, ptr %15, align 4, !tbaa !80
  %121 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 3
  %122 = load float, ptr %121, align 4, !tbaa !122
  %123 = fmul float %19, %122
  %124 = icmp eq i32 %85, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %113
  %126 = fneg float %120
  %127 = fmul float %123, %126
  %128 = shufflevector <2 x float> %117, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %129 = insertelement <2 x float> %128, float %119, i64 1
  %130 = insertelement <2 x float> poison, float %123, i64 0
  %131 = shufflevector <2 x float> %130, <2 x float> poison, <2 x i32> zeroinitializer
  %132 = fmul <2 x float> %129, %131
  %133 = fmul <2 x float> %132, <float 5.000000e-01, float 5.000000e-01>
  %134 = extractelement <2 x float> %133, i64 0
  store float %134, ptr %16, align 8, !tbaa !80
  %135 = shufflevector <2 x float> %132, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %136 = insertelement <2 x float> %135, float %127, i64 1
  %137 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %136, <2 x float> <float 7.500000e-01, float 7.500000e-01>, <2 x float> %115)
  %138 = fsub <2 x float> %137, %133
  store <2 x float> %138, ptr %12, align 8, !tbaa !80
  %139 = fadd <2 x float> %137, %133
  store <2 x float> %139, ptr %13, align 8, !tbaa !80
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  %140 = fsub <2 x float> %115, %132
  store <2 x float> %140, ptr %12, align 8, !tbaa !80
  %141 = fadd <2 x float> %115, %132
  store <2 x float> %141, ptr %13, align 8, !tbaa !80
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  br label %170

142:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %143 = shufflevector <2 x float> %117, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %144 = load <2 x float>, ptr %11, align 8, !tbaa !80
  %145 = fadd <2 x float> %144, %143
  %146 = fsub <2 x float> %144, %143
  %147 = shufflevector <2 x float> %145, <2 x float> %146, <2 x i32> <i32 0, i32 3>
  %148 = fmul <2 x float> %147, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %148, ptr %17, align 8, !tbaa !80
  call fastcc void @normalize_v2(ptr noundef nonnull %17) #12
  %149 = load <2 x float>, ptr %17, align 8, !tbaa !80
  %150 = insertelement <2 x float> poison, float %123, i64 0
  %151 = shufflevector <2 x float> %150, <2 x float> poison, <2 x i32> zeroinitializer
  %152 = fmul <2 x float> %151, %149
  store <2 x float> %152, ptr %16, align 8, !tbaa !80
  %153 = call fastcc float @len_v2(ptr noundef nonnull %16) #12
  %154 = fneg float %153
  %155 = call float @llvm.fmuladd.f32(float %154, float 2.000000e+00, float %123)
  %156 = fmul float %153, 2.000000e+00
  %157 = fcmp olt float %156, %123
  br i1 %157, label %158, label %166

158:                                              ; preds = %142
  %159 = fsub float %153, %123
  %160 = call float @llvm.fabs.f32(float %159)
  %161 = fcmp ult float %160, 0x3E80000000000000
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = insertelement <2 x float> poison, float %155, i64 0
  %164 = shufflevector <2 x float> %163, <2 x float> poison, <2 x i32> zeroinitializer
  %165 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %149, <2 x float> %164, <2 x float> %152)
  store <2 x float> %165, ptr %16, align 8, !tbaa !80
  br label %166

166:                                              ; preds = %162, %158, %142
  %167 = phi <2 x float> [ %165, %162 ], [ %152, %158 ], [ %152, %142 ]
  %168 = fsub <2 x float> %115, %167
  store <2 x float> %168, ptr %12, align 8, !tbaa !80
  %169 = fadd <2 x float> %115, %167
  store <2 x float> %169, ptr %13, align 8, !tbaa !80
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  br label %170

170:                                              ; preds = %166, %125
  %171 = icmp eq i32 %85, %81
  br i1 %171, label %172, label %194

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 1, i32 3
  %174 = load float, ptr %173, align 4, !tbaa !122
  %175 = fmul float %19, %174
  %176 = fmul float %175, %119
  store float %176, ptr %78, align 4, !tbaa !80
  %177 = extractelement <2 x float> %114, i64 1
  %178 = fsub float %177, %176
  store float %178, ptr %79, align 4, !tbaa !80
  %179 = fadd float %177, %176
  store float %179, ptr %80, align 4, !tbaa !80
  %180 = insertelement <2 x float> poison, float %175, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  %182 = fmul <2 x float> %117, %181
  %183 = extractelement <2 x float> %182, i64 1
  %184 = extractelement <2 x float> %114, i64 0
  %185 = fsub float %184, %183
  store float %185, ptr %12, align 8, !tbaa !80
  %186 = fadd float %184, %183
  store float %186, ptr %13, align 8, !tbaa !80
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  %187 = shufflevector <2 x float> %182, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %188 = insertelement <2 x float> %187, float %176, i64 1
  %189 = fmul <2 x float> %188, <float 5.000000e-01, float 5.000000e-01>
  %190 = extractelement <2 x float> %189, i64 0
  store float %190, ptr %16, align 8, !tbaa !80
  %191 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %182, <2 x float> <float 7.500000e-01, float 7.500000e-01>, <2 x float> %114)
  %192 = fsub <2 x float> %191, %189
  store <2 x float> %192, ptr %12, align 8, !tbaa !80
  %193 = fadd <2 x float> %191, %189
  store <2 x float> %193, ptr %13, align 8, !tbaa !80
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  br label %194

194:                                              ; preds = %172, %170
  call fastcc void @copy_v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  %195 = add nuw nsw i32 %85, 1
  %196 = icmp eq i32 %85, %82
  br i1 %196, label %197, label %83, !llvm.loop !127

197:                                              ; preds = %194, %63
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  br label %198

198:                                              ; preds = %197, %62
  %199 = icmp eq i16 %5, 0
  br i1 %199, label %237, label %200

200:                                              ; preds = %198
  call void @glBegin(i32 noundef 0) #11
  %201 = icmp sgt i32 %1, 0
  %202 = icmp ne ptr %0, null
  %203 = and i1 %201, %202
  br i1 %203, label %204, label %236

204:                                              ; preds = %200
  %205 = zext i16 %4 to i32
  %206 = and i32 %205, 2
  %207 = icmp eq i32 %206, 0
  %208 = and i32 %205, 4
  %209 = icmp eq i32 %208, 0
  %210 = sitofp i32 %8 to float
  %211 = sitofp i32 %6 to float
  %212 = sitofp i32 %9 to float
  %213 = sitofp i32 %7 to float
  br label %214

214:                                              ; preds = %204, %232
  %215 = phi i32 [ 0, %204 ], [ %233, %232 ]
  %216 = phi ptr [ %0, %204 ], [ %234, %232 ]
  br i1 %207, label %218, label %217

217:                                              ; preds = %214
  call void @glVertex2fv(ptr noundef nonnull %216) #11
  br label %232

218:                                              ; preds = %214
  %219 = load float, ptr %216, align 4, !tbaa !118
  br i1 %209, label %225, label %220

220:                                              ; preds = %218
  %221 = call float @llvm.fmuladd.f32(float %219, float %210, float %211)
  %222 = getelementptr inbounds %struct.bGPDspoint, ptr %216, i64 0, i32 1
  %223 = load float, ptr %222, align 4, !tbaa !120
  %224 = call float @llvm.fmuladd.f32(float %223, float %212, float %213)
  call void @glVertex2f(float noundef %221, float noundef %224) #11
  br label %232

225:                                              ; preds = %218
  %226 = fdiv float %219, 1.000000e+02
  %227 = call float @llvm.fmuladd.f32(float %226, float %210, float %211)
  %228 = getelementptr inbounds %struct.bGPDspoint, ptr %216, i64 0, i32 1
  %229 = load float, ptr %228, align 4, !tbaa !120
  %230 = fdiv float %229, 1.000000e+02
  %231 = call float @llvm.fmuladd.f32(float %230, float %212, float %213)
  call void @glVertex2f(float noundef %227, float noundef %231) #11
  br label %232

232:                                              ; preds = %217, %225, %220
  %233 = add nuw nsw i32 %215, 1
  %234 = getelementptr inbounds %struct.bGPDspoint, ptr %216, i64 1
  %235 = icmp eq i32 %233, %1
  br i1 %235, label %236, label %214, !llvm.loop !128

236:                                              ; preds = %232, %200
  call void @glEnd() #11
  br label %237

237:                                              ; preds = %236, %198
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !129 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !130 {
  %2 = load float, ptr %0, align 4, !tbaa !80
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !80
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !131 {
  %3 = load float, ptr %1, align 4, !tbaa !80
  store float %3, ptr %0, align 4, !tbaa !80
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !80
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !132 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !133 {
  %3 = load float, ptr %0, align 4, !tbaa !80
  %4 = load float, ptr %1, align 4, !tbaa !80
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !134 {
  %4 = load float, ptr %1, align 4, !tbaa !80
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !80
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !80
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #9 !PGOFuncName !135 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !37, i64 72}
!35 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!41, !41, i64 0}
!44 = !{!45, !48, i64 32}
!45 = !{!"ARegion", !36, i64 0, !36, i64 8, !46, i64 16, !39, i64 176, !39, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !48, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!46 = !{!"View2D", !47, i64 0, !47, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !37, i64 80, !37, i64 88, !48, i64 96, !48, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!47 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!48 = !{!"float", !37, i64 0}
!49 = !{!45, !48, i64 36}
!50 = !{!45, !48, i64 40}
!51 = !{!45, !48, i64 44}
!52 = !{!53, !40, i64 680}
!53 = !{!"Scene", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !55, i64 280, !62, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !36, i64 4608, !68, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !57, i64 4664, !58, i64 4824, !70, i64 4888, !36, i64 4952}
!54 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!55 = !{!"RenderData", !56, i64 0, !36, i64 248, !36, i64 256, !59, i64 264, !60, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !48, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !47, i64 544, !47, i64 560, !39, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !40, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !48, i64 660, !48, i64 664, !41, i64 668, !41, i64 670, !48, i64 672, !48, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !48, i64 2528, !48, i64 2532, !41, i64 2536, !41, i64 2538, !48, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !48, i64 2560, !48, i64 2564, !36, i64 2568, !40, i64 2576, !48, i64 2580, !37, i64 2584, !61, i64 2616, !40, i64 3976, !40, i64 3980}
!56 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !48, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !57, i64 24, !58, i64 184}
!57 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !48, i64 136, !48, i64 140, !36, i64 144, !36, i64 152}
!58 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!59 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!60 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !48, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!61 = !{!"BakeData", !56, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !48, i64 1280, !48, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!62 = !{!"AudioData", !40, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !48, i64 24, !48, i64 28}
!63 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!64 = !{!"GameData", !63, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !65, i64 40, !41, i64 64, !41, i64 66, !48, i64 68, !66, i64 72, !48, i64 128, !48, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!65 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !48, i64 8, !48, i64 12, !36, i64 16}
!66 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !40, i64 40, !48, i64 44, !48, i64 48, !41, i64 52, !41, i64 54}
!67 = !{!"UnitSettings", !48, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!68 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!69 = !{!"long", !37, i64 0}
!70 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!71 = !{!"drawgpencil.c:gp_draw_data"}
!72 = !{!36, !36, i64 0}
!73 = !{!74, !40, i64 40}
!74 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !42, i64 16, !36, i64 32, !40, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!75 = !{!74, !41, i64 44}
!76 = !{!74, !41, i64 46}
!77 = !{!78, !36, i64 8}
!78 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36}
!79 = !{!78, !40, i64 32}
!80 = !{!48, !48, i64 0}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!78, !36, i64 0}
!84 = distinct !{!84, !82}
!85 = !{!78, !40, i64 36}
!86 = !{!87, !36, i64 144}
!87 = !{!"bGPdata", !54, i64 0, !42, i64 120, !40, i64 136, !41, i64 140, !41, i64 142, !36, i64 144}
!88 = !{!87, !41, i64 140}
!89 = !{!87, !41, i64 142}
!90 = distinct !{!90, !82}
!91 = !{!45, !41, i64 208}
!92 = !{!45, !41, i64 210}
!93 = !{!45, !36, i64 376}
!94 = !{!95, !37, i64 809}
!95 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !48, i64 776, !48, i64 780, !48, i64 784, !48, i64 788, !37, i64 792, !48, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !48, i64 848, !37, i64 852, !48, i64 864, !37, i64 868}
!96 = !{!97, !40, i64 2096}
!97 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!98 = !{!47, !48, i64 0}
!99 = !{!47, !48, i64 8}
!100 = !{!47, !48, i64 4}
!101 = !{!47, !48, i64 12}
!102 = !{!"drawgpencil.c:iroundf"}
!103 = !{!"drawgpencil.c:copy_v4_v4"}
!104 = !{!"drawgpencil.c:gp_draw_strokes"}
!105 = !{!106, !41, i64 38}
!106 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !41, i64 36, !41, i64 38, !107, i64 40}
!107 = !{!"double", !37, i64 0}
!108 = !{!106, !36, i64 16}
!109 = !{!106, !40, i64 32}
!110 = !{!40, !40, i64 0}
!111 = distinct !{!111, !82}
!112 = !{!"drawgpencil.c:gp_draw_stroke_buffer"}
!113 = !{!114, !48, i64 8}
!114 = !{!"tGPspoint", !40, i64 0, !40, i64 4, !48, i64 8, !48, i64 12}
!115 = !{!97, !40, i64 2100}
!116 = distinct !{!116, !82}
!117 = !{!"drawgpencil.c:gp_draw_stroke_point"}
!118 = !{!119, !48, i64 0}
!119 = !{!"bGPDspoint", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16}
!120 = !{!119, !48, i64 4}
!121 = !{!"drawgpencil.c:gp_draw_stroke_3d"}
!122 = !{!119, !48, i64 12}
!123 = distinct !{!123, !82}
!124 = distinct !{!124, !82}
!125 = !{!"drawgpencil.c:gp_draw_stroke"}
!126 = distinct !{!126, !82}
!127 = distinct !{!127, !82}
!128 = distinct !{!128, !82}
!129 = !{!"drawgpencil.c:normalize_v2"}
!130 = !{!"drawgpencil.c:len_v2"}
!131 = !{!"drawgpencil.c:copy_v2_v2"}
!132 = !{!"drawgpencil.c:normalize_v2_v2"}
!133 = !{!"drawgpencil.c:dot_v2v2"}
!134 = !{!"drawgpencil.c:mul_v2_v2fl"}
!135 = !{!"drawgpencil.c:zero_v2"}
