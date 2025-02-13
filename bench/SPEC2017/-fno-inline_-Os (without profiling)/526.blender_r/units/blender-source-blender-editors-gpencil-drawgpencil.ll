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
  %9 = load i8, ptr %8, align 8, !tbaa !5
  switch i8 %9, label %24 [
    i8 6, label %10
    i8 20, label %10
    i8 8, label %21
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %12 = load <2 x i16>, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1
  %14 = load float, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !20
  %17 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !22
  tail call void @wmOrtho2(float noundef %14, float noundef %16, float noundef %18, float noundef %20) #11
  br label %27

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %23 = load <2 x i16>, ptr %22, align 8, !tbaa !14
  br label %27

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %26 = load <2 x i16>, ptr %25, align 8, !tbaa !14
  br label %27

27:                                               ; preds = %24, %21, %10
  %28 = phi i32 [ 9, %24 ], [ 5, %21 ], [ 21, %10 ]
  %29 = phi <2 x i16> [ %26, %24 ], [ %23, %21 ], [ %12, %10 ]
  %30 = extractelement <2 x i16> %29, i64 1
  %31 = sext i16 %30 to i32
  %32 = extractelement <2 x i16> %29, i64 0
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !23
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
define internal fastcc void @gp_draw_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  tail call void @setlinestyle(i32 noundef 0) #11
  tail call void @glEnable(i32 noundef 2848) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  tail call void @glEnable(i32 noundef 3042) #11
  %10 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !42
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
  %23 = load i32, ptr %22, align 8, !tbaa !43
  %24 = trunc i32 %23 to i16
  %25 = lshr i16 %24, 3
  %26 = and i16 %25, 1
  %27 = getelementptr inbounds %struct.bGPDlayer, ptr %20, i64 0, i32 5
  %28 = load i16, ptr %27, align 4, !tbaa !45
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
  %37 = load i16, ptr %27, align 4, !tbaa !45
  %38 = sext i16 %37 to i32
  %39 = add nsw i32 %38, 2
  %40 = sitofp i32 %39 to float
  call void @glPointSize(float noundef %40) #11
  %41 = load i32, ptr %22, align 8, !tbaa !43
  %42 = and i32 %21, -33
  %43 = lshr i32 %41, 2
  %44 = and i32 %43, 32
  %45 = or disjoint i32 %44, %42
  %46 = and i32 %41, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %115, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.bGPDlayer, ptr %20, i64 0, i32 6
  %50 = load i16, ptr %49, align 2, !tbaa !46
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %101, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 3
  %54 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %52, %66
  %58 = phi ptr [ %76, %66 ], [ %55, %52 ]
  %59 = load i32, ptr %53, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct.bGPDframe, ptr %58, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !49
  %62 = sub nsw i32 %59, %61
  %63 = load i16, ptr %49, align 2, !tbaa !46
  %64 = sext i16 %63 to i32
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %57
  %67 = sitofp i32 %62 to float
  %68 = add nsw i32 %64, 1
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %67, %69
  %71 = fsub float 1.000000e+00, %70
  %72 = load float, ptr %14, align 4, !tbaa !50
  %73 = fmul float %71, %72
  %74 = fmul float %73, 0x3FE51EB860000000
  store float %74, ptr %15, align 4, !tbaa !50
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %58, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  %75 = getelementptr inbounds %struct.bGPDframe, ptr %58, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !47
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %57, !llvm.loop !51

78:                                               ; preds = %66, %57, %52
  %79 = load ptr, ptr %32, align 8, !tbaa !53
  %80 = icmp eq ptr %79, null
  br i1 %80, label %114, label %81

81:                                               ; preds = %78, %90
  %82 = phi ptr [ %99, %90 ], [ %79, %78 ]
  %83 = getelementptr inbounds %struct.bGPDframe, ptr %82, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !49
  %85 = load i32, ptr %53, align 8, !tbaa !49
  %86 = sub nsw i32 %84, %85
  %87 = load i16, ptr %49, align 2, !tbaa !46
  %88 = sext i16 %87 to i32
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %114, label %90

90:                                               ; preds = %81
  %91 = sitofp i32 %86 to float
  %92 = add nsw i32 %88, 1
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %91, %93
  %95 = fsub float 1.000000e+00, %94
  %96 = load float, ptr %14, align 4, !tbaa !50
  %97 = fmul float %95, %96
  %98 = fmul float %97, 0x3FE51EB860000000
  store float %98, ptr %15, align 4, !tbaa !50
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %82, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  %99 = load ptr, ptr %82, align 8, !tbaa !53
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %81, !llvm.loop !54

101:                                              ; preds = %48
  %102 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load float, ptr %14, align 4, !tbaa !50
  %107 = fdiv float %106, 7.000000e+00
  store float %107, ptr %15, align 4, !tbaa !50
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %103, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  br label %108

108:                                              ; preds = %105, %101
  %109 = load ptr, ptr %32, align 8, !tbaa !53
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load float, ptr %14, align 4, !tbaa !50
  %113 = fmul float %112, 2.500000e-01
  store float %113, ptr %15, align 4, !tbaa !50
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %109, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  br label %114

114:                                              ; preds = %81, %90, %108, %111, %78
  call void @glColor4fv(ptr noundef nonnull %8) #11
  br label %115

115:                                              ; preds = %114, %34
  %116 = load float, ptr %14, align 4, !tbaa !50
  store float %116, ptr %15, align 4, !tbaa !50
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %32, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %45, i16 noundef signext %26, i16 noundef signext %28, ptr noundef nonnull %9) #12
  %117 = call i32 @ED_gpencil_session_active() #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %22, align 8, !tbaa !43
  %121 = and i32 %120, 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 4
  %125 = load i32, ptr %124, align 4, !tbaa !55
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %16, align 8, !tbaa !56
  %130 = load i16, ptr %17, align 4, !tbaa !58
  %131 = sext i16 %130 to i32
  %132 = trunc i32 %45 to i16
  %133 = load i16, ptr %18, align 2, !tbaa !59
  call fastcc void @gp_draw_stroke_buffer(ptr noundef %129, i32 noundef %131, i16 noundef signext %28, i16 noundef signext %132, i16 noundef signext %133) #12
  br label %134

134:                                              ; preds = %115, %119, %123, %128, %31, %19
  %135 = phi i32 [ %21, %19 ], [ %21, %31 ], [ %45, %128 ], [ %45, %123 ], [ %45, %119 ], [ %45, %115 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  %136 = load ptr, ptr %20, align 8, !tbaa !42
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %19, !llvm.loop !60

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
  %12 = load i8, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i8 %12, 6
  %14 = icmp eq i8 %12, 20
  %15 = or i1 %13, %14
  %16 = select i1 %15, i32 16, i32 0
  %17 = icmp eq i8 %1, 0
  %18 = or disjoint i32 %16, 5
  %19 = select i1 %17, i32 %16, i32 %18
  %20 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !61
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !62
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !23
  tail call fastcc void @gp_draw_data(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, i32 noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %19) #12
  br label %28

28:                                               ; preds = %7, %2, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_draw_view3d(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = tail call ptr @ED_gpencil_data_get_active_v3d(ptr noundef %0, ptr noundef %1) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %12 = load i8, ptr %11, align 1, !tbaa !64
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !66
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @ED_view3d_calc_camera_border(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %5, i8 noundef zeroext 1) #11
  %19 = load float, ptr %5, align 4, !tbaa !68
  %20 = call fastcc i32 @iroundf(float noundef %19) #12
  %21 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !69
  %23 = call fastcc i32 @iroundf(float noundef %22) #12
  %24 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !70
  %26 = fsub float %25, %19
  %27 = call fastcc i32 @iroundf(float noundef %26) #12
  %28 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !71
  %30 = fsub float %29, %22
  %31 = call fastcc i32 @iroundf(float noundef %30) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %39

32:                                               ; preds = %14, %10
  %33 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %34 = load i16, ptr %33, align 8, !tbaa !61
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %37 = load i16, ptr %36, align 2, !tbaa !62
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
  %47 = load i32, ptr %46, align 8, !tbaa !23
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
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #3 {
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
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !50
  store float %3, ptr %0, align 4, !tbaa !50
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_strokes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca i32, align 4
  tail call void @glColor4fv(ptr noundef %8) #11
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !42
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
  %27 = load i16, ptr %26, align 2, !tbaa !72
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
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bGPDstroke, ptr %25, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !76
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  br i1 %16, label %67, label %51

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !tbaa !77
  br i1 %22, label %54, label %52

52:                                               ; preds = %51
  call void @glGetIntegerv(i32 noundef 2930, ptr noundef nonnull %10) #11
  call void @glDepthMask(i8 noundef zeroext 0) #11
  call void @glEnable(i32 noundef 2929) #11
  call void @bglPolygonOffset(float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  %53 = load i32, ptr %47, align 8, !tbaa !76
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ %53, %52 ], [ %48, %51 ]
  %56 = icmp eq i32 %55, 1
  %57 = load ptr, ptr %43, align 8, !tbaa !75
  br i1 %56, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.bGPDstroke, ptr %25, i64 0, i32 6
  %60 = load i16, ptr %59, align 2, !tbaa !72
  call fastcc void @gp_draw_stroke_point(ptr noundef %57, i16 noundef signext %7, i16 noundef signext %23, i16 noundef signext %60, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %62

61:                                               ; preds = %54
  call fastcc void @gp_draw_stroke_3d(ptr noundef %57, i32 noundef %55, i16 noundef signext %7, i16 noundef signext %6) #12
  br label %62

62:                                               ; preds = %61, %58
  br i1 %22, label %66, label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %10, align 4, !tbaa !77
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
  %72 = load ptr, ptr %25, align 8, !tbaa !42
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %24, !llvm.loop !78

74:                                               ; preds = %71, %9
  ret void
}

; Function Attrs: optsize
declare i32 @ED_gpencil_session_active() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_stroke_buffer(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 {
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
  %19 = load float, ptr %18, align 4, !tbaa !79
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !81
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
  %32 = load float, ptr %31, align 4, !tbaa !79
  %33 = fsub float %32, %28
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ogt float %34, 0x3FC99999A0000000
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  tail call void @glEnd() #11
  %37 = load float, ptr %31, align 4, !tbaa !79
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
  %43 = load float, ptr %31, align 4, !tbaa !79
  br label %45

44:                                               ; preds = %27
  tail call void @glVertex2iv(ptr noundef nonnull %30) #11
  br label %45

45:                                               ; preds = %42, %44
  %46 = phi float [ %43, %42 ], [ %28, %44 ]
  %47 = add nuw nsw i32 %29, 1
  %48 = getelementptr inbounds %struct.tGPspoint, ptr %30, i64 1
  %49 = icmp eq i32 %47, %1
  br i1 %49, label %50, label %27, !llvm.loop !82

50:                                               ; preds = %45
  tail call void @glEnd() #11
  tail call void @glLineWidth(float noundef 1.000000e+00) #11
  %51 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !81
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
define internal fastcc void @gp_draw_stroke_point(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
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
  %18 = load <2 x float>, ptr %0, align 4, !tbaa !50
  %19 = extractelement <2 x float> %18, i64 0
  store float %19, ptr %9, align 4, !tbaa !50
  br label %51

20:                                               ; preds = %14
  %21 = and i32 %10, 4
  %22 = icmp eq i32 %21, 0
  %23 = load float, ptr %0, align 4, !tbaa !83
  br i1 %22, label %37, label %24

24:                                               ; preds = %20
  %25 = insertelement <2 x i32> poison, i32 %6, i64 0
  %26 = insertelement <2 x i32> %25, i32 %7, i64 1
  %27 = sitofp <2 x i32> %26 to <2 x float>
  %28 = insertelement <2 x i32> poison, i32 %4, i64 0
  %29 = insertelement <2 x i32> %28, i32 %5, i64 1
  %30 = sitofp <2 x i32> %29 to <2 x float>
  %31 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !85
  %33 = insertelement <2 x float> poison, float %23, i64 0
  %34 = insertelement <2 x float> %33, float %32, i64 1
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %27, <2 x float> %30)
  %36 = extractelement <2 x float> %35, i64 0
  store float %36, ptr %9, align 4, !tbaa !50
  br label %51

37:                                               ; preds = %20
  %38 = insertelement <2 x i32> poison, i32 %6, i64 0
  %39 = insertelement <2 x i32> %38, i32 %7, i64 1
  %40 = sitofp <2 x i32> %39 to <2 x float>
  %41 = insertelement <2 x i32> poison, i32 %4, i64 0
  %42 = insertelement <2 x i32> %41, i32 %5, i64 1
  %43 = sitofp <2 x i32> %42 to <2 x float>
  %44 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !85
  %46 = insertelement <2 x float> poison, float %23, i64 0
  %47 = insertelement <2 x float> %46, float %45, i64 1
  %48 = fdiv <2 x float> %47, <float 1.000000e+02, float 1.000000e+02>
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %40, <2 x float> %43)
  %50 = extractelement <2 x float> %49, i64 0
  store float %50, ptr %9, align 4, !tbaa !50
  br label %51

51:                                               ; preds = %24, %37, %17
  %52 = phi <2 x float> [ %35, %24 ], [ %49, %37 ], [ %18, %17 ]
  %53 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %54 = extractelement <2 x float> %52, i64 1
  store float %54, ptr %53, align 4, !tbaa !50
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
define internal fastcc void @gp_draw_stroke_3d(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !86
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
  %17 = load float, ptr %16, align 4, !tbaa !86
  %18 = fsub float %17, %14
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ogt float %19, %11
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  tail call void @glEnd() #11
  %22 = load float, ptr %16, align 4, !tbaa !86
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
  br i1 %31, label %32, label %12, !llvm.loop !87

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
  br i1 %42, label %43, label %37, !llvm.loop !88

43:                                               ; preds = %37, %34
  tail call void @glEnd() #11
  br label %44

44:                                               ; preds = %43, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_draw_stroke(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
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
  %41 = load float, ptr %39, align 4, !tbaa !83
  br i1 %31, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 0, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !85
  tail call void @glVertex2f(float noundef %41, float noundef %44) #11
  br label %58

45:                                               ; preds = %38
  br i1 %33, label %51, label %46

46:                                               ; preds = %45
  %47 = tail call float @llvm.fmuladd.f32(float %41, float %34, float %35)
  %48 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !85
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %36, float %37)
  tail call void @glVertex2f(float noundef %47, float noundef %50) #11
  br label %58

51:                                               ; preds = %45
  %52 = fdiv float %41, 1.000000e+02
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %34, float %35)
  %54 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !85
  %56 = fdiv float %55, 1.000000e+02
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %36, float %37)
  tail call void @glVertex2f(float noundef %53, float noundef %57) #11
  br label %58

58:                                               ; preds = %42, %51, %46
  %59 = add nuw nsw i32 %40, 1
  %60 = getelementptr inbounds %struct.bGPDspoint, ptr %39, i64 1
  %61 = icmp eq i32 %59, %1
  br i1 %61, label %62, label %38, !llvm.loop !89

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
  %87 = load float, ptr %84, align 4, !tbaa !83
  br i1 %68, label %94, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 1
  %90 = load float, ptr %89, align 4, !tbaa !85
  %91 = load <2 x float>, ptr %86, align 4, !tbaa !50
  %92 = insertelement <2 x float> poison, float %87, i64 0
  %93 = insertelement <2 x float> %92, float %90, i64 1
  br label %113

94:                                               ; preds = %83
  br i1 %70, label %103, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 1
  %97 = load float, ptr %96, align 4, !tbaa !85
  %98 = insertelement <2 x float> poison, float %87, i64 0
  %99 = insertelement <2 x float> %98, float %97, i64 1
  %100 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %99, <2 x float> %73, <2 x float> %76)
  %101 = load <2 x float>, ptr %86, align 4, !tbaa !50
  %102 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %101, <2 x float> %73, <2 x float> %76)
  br label %113

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 1
  %105 = load float, ptr %104, align 4, !tbaa !85
  %106 = insertelement <2 x float> poison, float %87, i64 0
  %107 = insertelement <2 x float> %106, float %105, i64 1
  %108 = fdiv <2 x float> %107, <float 1.000000e+02, float 1.000000e+02>
  %109 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %108, <2 x float> %73, <2 x float> %76)
  %110 = load <2 x float>, ptr %86, align 4, !tbaa !50
  %111 = fdiv <2 x float> %110, <float 1.000000e+02, float 1.000000e+02>
  %112 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %111, <2 x float> %73, <2 x float> %76)
  br label %113

113:                                              ; preds = %95, %103, %88
  %114 = phi <2 x float> [ %91, %88 ], [ %102, %95 ], [ %112, %103 ]
  %115 = phi <2 x float> [ %93, %88 ], [ %100, %95 ], [ %109, %103 ]
  %116 = fsub <2 x float> %114, %115
  store <2 x float> %116, ptr %14, align 8, !tbaa !50
  call fastcc void @normalize_v2(ptr noundef nonnull %14) #12
  %117 = load <2 x float>, ptr %14, align 8, !tbaa !50
  %118 = extractelement <2 x float> %117, i64 0
  %119 = fneg float %118
  store float %119, ptr %77, align 4, !tbaa !50
  %120 = extractelement <2 x float> %117, i64 1
  store float %120, ptr %15, align 4, !tbaa !50
  %121 = getelementptr inbounds %struct.bGPDspoint, ptr %84, i64 0, i32 3
  %122 = load float, ptr %121, align 4, !tbaa !86
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
  store float %134, ptr %16, align 8, !tbaa !50
  %135 = shufflevector <2 x float> %132, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %136 = insertelement <2 x float> %135, float %127, i64 1
  %137 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %136, <2 x float> <float 7.500000e-01, float 7.500000e-01>, <2 x float> %115)
  %138 = fsub <2 x float> %137, %133
  store <2 x float> %138, ptr %12, align 8, !tbaa !50
  %139 = fadd <2 x float> %137, %133
  store <2 x float> %139, ptr %13, align 8, !tbaa !50
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  %140 = fsub <2 x float> %115, %132
  store <2 x float> %140, ptr %12, align 8, !tbaa !50
  %141 = fadd <2 x float> %115, %132
  store <2 x float> %141, ptr %13, align 8, !tbaa !50
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  br label %170

142:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %143 = shufflevector <2 x float> %117, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %144 = load <2 x float>, ptr %11, align 8, !tbaa !50
  %145 = fadd <2 x float> %144, %143
  %146 = fsub <2 x float> %144, %143
  %147 = shufflevector <2 x float> %145, <2 x float> %146, <2 x i32> <i32 0, i32 3>
  %148 = fmul <2 x float> %147, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %148, ptr %17, align 8, !tbaa !50
  call fastcc void @normalize_v2(ptr noundef nonnull %17) #12
  %149 = load <2 x float>, ptr %17, align 8, !tbaa !50
  %150 = insertelement <2 x float> poison, float %123, i64 0
  %151 = shufflevector <2 x float> %150, <2 x float> poison, <2 x i32> zeroinitializer
  %152 = fmul <2 x float> %151, %149
  store <2 x float> %152, ptr %16, align 8, !tbaa !50
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
  store <2 x float> %165, ptr %16, align 8, !tbaa !50
  br label %166

166:                                              ; preds = %162, %158, %142
  %167 = phi <2 x float> [ %165, %162 ], [ %152, %158 ], [ %152, %142 ]
  %168 = fsub <2 x float> %115, %167
  store <2 x float> %168, ptr %12, align 8, !tbaa !50
  %169 = fadd <2 x float> %115, %167
  store <2 x float> %169, ptr %13, align 8, !tbaa !50
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
  %174 = load float, ptr %173, align 4, !tbaa !86
  %175 = fmul float %19, %174
  %176 = fmul float %175, %119
  store float %176, ptr %78, align 4, !tbaa !50
  %177 = extractelement <2 x float> %114, i64 1
  %178 = fsub float %177, %176
  store float %178, ptr %79, align 4, !tbaa !50
  %179 = fadd float %177, %176
  store float %179, ptr %80, align 4, !tbaa !50
  %180 = insertelement <2 x float> poison, float %175, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  %182 = fmul <2 x float> %117, %181
  %183 = extractelement <2 x float> %182, i64 1
  %184 = extractelement <2 x float> %114, i64 0
  %185 = fsub float %184, %183
  store float %185, ptr %12, align 8, !tbaa !50
  %186 = fadd float %184, %183
  store float %186, ptr %13, align 8, !tbaa !50
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glVertex2fv(ptr noundef nonnull %13) #11
  %187 = shufflevector <2 x float> %182, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %188 = insertelement <2 x float> %187, float %176, i64 1
  %189 = fmul <2 x float> %188, <float 5.000000e-01, float 5.000000e-01>
  %190 = extractelement <2 x float> %189, i64 0
  store float %190, ptr %16, align 8, !tbaa !50
  %191 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %182, <2 x float> <float 7.500000e-01, float 7.500000e-01>, <2 x float> %114)
  %192 = fsub <2 x float> %191, %189
  store <2 x float> %192, ptr %12, align 8, !tbaa !50
  %193 = fadd <2 x float> %191, %189
  store <2 x float> %193, ptr %13, align 8, !tbaa !50
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
  br i1 %196, label %197, label %83, !llvm.loop !90

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
  %219 = load float, ptr %216, align 4, !tbaa !83
  br i1 %209, label %225, label %220

220:                                              ; preds = %218
  %221 = call float @llvm.fmuladd.f32(float %219, float %210, float %211)
  %222 = getelementptr inbounds %struct.bGPDspoint, ptr %216, i64 0, i32 1
  %223 = load float, ptr %222, align 4, !tbaa !85
  %224 = call float @llvm.fmuladd.f32(float %223, float %212, float %213)
  call void @glVertex2f(float noundef %221, float noundef %224) #11
  br label %232

225:                                              ; preds = %218
  %226 = fdiv float %219, 1.000000e+02
  %227 = call float @llvm.fmuladd.f32(float %226, float %210, float %211)
  %228 = getelementptr inbounds %struct.bGPDspoint, ptr %216, i64 0, i32 1
  %229 = load float, ptr %228, align 4, !tbaa !85
  %230 = fdiv float %229, 1.000000e+02
  %231 = call float @llvm.fmuladd.f32(float %230, float %212, float %213)
  call void @glVertex2f(float noundef %227, float noundef %231) #11
  br label %232

232:                                              ; preds = %217, %225, %220
  %233 = add nuw nsw i32 %215, 1
  %234 = getelementptr inbounds %struct.bGPDspoint, ptr %216, i64 1
  %235 = icmp eq i32 %233, %1
  br i1 %235, label %236, label %214, !llvm.loop !91

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
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !50
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !50
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !50
  store float %3, ptr %0, align 4, !tbaa !50
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
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
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %0, align 4, !tbaa !50
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #9 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !50
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 72}
!6 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !13, i64 96, !13, i64 112, !13, i64 128, !13, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!11 = !{!"int", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!"ListBase", !7, i64 0, !7, i64 8}
!14 = !{!12, !12, i64 0}
!15 = !{!16, !19, i64 32}
!16 = !{!"ARegion", !7, i64 0, !7, i64 8, !17, i64 16, !10, i64 176, !10, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !19, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !13, i64 248, !13, i64 264, !13, i64 280, !13, i64 296, !13, i64 312, !13, i64 328, !13, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!17 = !{!"View2D", !18, i64 0, !18, i64 16, !10, i64 32, !10, i64 48, !10, i64 64, !8, i64 80, !8, i64 88, !19, i64 96, !19, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!18 = !{!"rctf", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!19 = !{!"float", !8, i64 0}
!20 = !{!16, !19, i64 36}
!21 = !{!16, !19, i64 40}
!22 = !{!16, !19, i64 44}
!23 = !{!24, !11, i64 680}
!24 = !{!"Scene", !25, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !13, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !26, i64 280, !33, i64 4264, !13, i64 4296, !13, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !11, i64 4380, !13, i64 4384, !34, i64 4400, !35, i64 4416, !38, i64 4600, !7, i64 4608, !39, i64 4616, !7, i64 4640, !40, i64 4648, !40, i64 4656, !28, i64 4664, !29, i64 4824, !41, i64 4888, !7, i64 4952}
!25 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!26 = !{!"RenderData", !27, i64 0, !7, i64 248, !7, i64 256, !30, i64 264, !31, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !19, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !12, i64 432, !12, i64 434, !19, i64 436, !19, i64 440, !19, i64 444, !19, i64 448, !19, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !11, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !11, i64 484, !11, i64 488, !12, i64 492, !12, i64 494, !11, i64 496, !11, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !18, i64 544, !18, i64 560, !10, i64 576, !13, i64 592, !12, i64 608, !12, i64 610, !19, i64 612, !19, i64 616, !19, i64 620, !19, i64 624, !11, i64 628, !19, i64 632, !19, i64 636, !19, i64 640, !19, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !19, i64 660, !19, i64 664, !12, i64 668, !12, i64 670, !19, i64 672, !19, i64 676, !8, i64 680, !11, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !12, i64 2524, !12, i64 2526, !19, i64 2528, !19, i64 2532, !12, i64 2536, !12, i64 2538, !19, i64 2540, !12, i64 2544, !12, i64 2546, !11, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !19, i64 2560, !19, i64 2564, !7, i64 2568, !11, i64 2576, !19, i64 2580, !8, i64 2584, !32, i64 2616, !11, i64 3976, !11, i64 3980}
!27 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !19, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !28, i64 24, !29, i64 184}
!28 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !19, i64 136, !19, i64 140, !7, i64 144, !7, i64 152}
!29 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!30 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !12, i64 48, !12, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!31 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !19, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!32 = !{!"BakeData", !27, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !19, i64 1280, !19, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!33 = !{!"AudioData", !11, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !11, i64 16, !12, i64 20, !12, i64 22, !19, i64 24, !19, i64 28}
!34 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!35 = !{!"GameData", !34, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !36, i64 40, !12, i64 64, !12, i64 66, !19, i64 68, !37, i64 72, !19, i64 128, !19, i64 132, !11, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180}
!36 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !19, i64 8, !19, i64 12, !7, i64 16}
!37 = !{!"RecastData", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !11, i64 40, !19, i64 44, !19, i64 48, !12, i64 52, !12, i64 54}
!38 = !{!"UnitSettings", !19, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!39 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!40 = !{!"long", !8, i64 0}
!41 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!44, !11, i64 40}
!44 = !{!"bGPDlayer", !7, i64 0, !7, i64 8, !13, i64 16, !7, i64 32, !11, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 64}
!45 = !{!44, !12, i64 44}
!46 = !{!44, !12, i64 46}
!47 = !{!48, !7, i64 8}
!48 = !{!"bGPDframe", !7, i64 0, !7, i64 8, !13, i64 16, !11, i64 32, !11, i64 36}
!49 = !{!48, !11, i64 32}
!50 = !{!19, !19, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!48, !7, i64 0}
!54 = distinct !{!54, !52}
!55 = !{!48, !11, i64 36}
!56 = !{!57, !7, i64 144}
!57 = !{!"bGPdata", !25, i64 0, !13, i64 120, !11, i64 136, !12, i64 140, !12, i64 142, !7, i64 144}
!58 = !{!57, !12, i64 140}
!59 = !{!57, !12, i64 142}
!60 = distinct !{!60, !52}
!61 = !{!16, !12, i64 208}
!62 = !{!16, !12, i64 210}
!63 = !{!16, !7, i64 376}
!64 = !{!65, !8, i64 809}
!65 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !19, i64 776, !19, i64 780, !19, i64 784, !19, i64 788, !8, i64 792, !19, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !12, i64 824, !12, i64 826, !8, i64 828, !12, i64 844, !12, i64 846, !19, i64 848, !8, i64 852, !19, i64 864, !8, i64 868}
!66 = !{!67, !11, i64 2096}
!67 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !13, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !11, i64 2096, !11, i64 2100, !8, i64 2104, !11, i64 2108, !11, i64 2112, !8, i64 2116}
!68 = !{!18, !19, i64 0}
!69 = !{!18, !19, i64 8}
!70 = !{!18, !19, i64 4}
!71 = !{!18, !19, i64 12}
!72 = !{!73, !12, i64 38}
!73 = !{!"bGPDstroke", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !12, i64 36, !12, i64 38, !74, i64 40}
!74 = !{!"double", !8, i64 0}
!75 = !{!73, !7, i64 16}
!76 = !{!73, !11, i64 32}
!77 = !{!11, !11, i64 0}
!78 = distinct !{!78, !52}
!79 = !{!80, !19, i64 8}
!80 = !{!"tGPspoint", !11, i64 0, !11, i64 4, !19, i64 8, !19, i64 12}
!81 = !{!67, !11, i64 2100}
!82 = distinct !{!82, !52}
!83 = !{!84, !19, i64 0}
!84 = !{!"bGPDspoint", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16}
!85 = !{!84, !19, i64 4}
!86 = !{!84, !19, i64 12}
!87 = distinct !{!87, !52}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !52}
