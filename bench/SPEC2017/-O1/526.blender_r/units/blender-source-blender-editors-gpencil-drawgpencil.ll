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
%struct.tGPspoint = type { i32, i32, float, float }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }

@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: nounwind uwtable
define dso_local void @ED_gpencil_draw_2dimage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !34
  switch i8 %9, label %28 [
    i8 6, label %10
    i8 20, label %10
    i8 8, label %23
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !48
  %15 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1
  %16 = load float, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 2
  %20 = load float, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !52
  tail call void @wmOrtho2(float noundef %16, float noundef %18, float noundef %20, float noundef %22) #6
  br label %33

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %25 = load i16, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 6
  %27 = load i16, ptr %26, align 2, !tbaa !48
  br label %33

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 6
  %32 = load i16, ptr %31, align 2, !tbaa !48
  br label %33

33:                                               ; preds = %28, %23, %10
  %34 = phi i16 [ %30, %28 ], [ %25, %23 ], [ %12, %10 ]
  %35 = phi i16 [ %32, %28 ], [ %27, %23 ], [ %14, %10 ]
  %36 = phi i32 [ 9, %28 ], [ 5, %23 ], [ 21, %10 ]
  %37 = sext i16 %35 to i32
  %38 = sext i16 %34 to i32
  %39 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !53
  tail call fastcc void @gp_draw_data(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef %38, i32 noundef %37, i32 noundef %40, i32 noundef %36)
  br label %41

41:                                               ; preds = %1, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @ED_gpencil_data_get_active(ptr noundef) local_unnamed_addr #2

declare void @wmOrtho2(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_draw_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  tail call void @setlinestyle(i32 noundef 0) #6
  tail call void @glEnable(i32 noundef 2848) #6
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #6
  tail call void @glEnable(i32 noundef 3042) #6
  %10 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %199, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds float, ptr %8, i64 1
  %15 = getelementptr inbounds float, ptr %8, i64 2
  %16 = getelementptr inbounds float, ptr %8, i64 3
  %17 = getelementptr inbounds float, ptr %9, i64 1
  %18 = getelementptr inbounds float, ptr %9, i64 2
  %19 = getelementptr inbounds float, ptr %9, i64 3
  %20 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 4
  br label %23

23:                                               ; preds = %13, %195
  %24 = phi ptr [ %11, %13 ], [ %197, %195 ]
  %25 = phi i32 [ %6, %13 ], [ %196, %195 ]
  %26 = getelementptr inbounds %struct.bGPDlayer, ptr %24, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !73
  %28 = trunc i32 %27 to i16
  %29 = lshr i16 %28, 3
  %30 = and i16 %29, 1
  %31 = getelementptr inbounds %struct.bGPDlayer, ptr %24, i64 0, i32 5
  %32 = load i16, ptr %31, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  %33 = and i32 %27, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %195

35:                                               ; preds = %23
  %36 = call ptr @gpencil_layer_getframe(ptr noundef nonnull %24, i32 noundef %5, i16 noundef signext 0) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %195, label %38

38:                                               ; preds = %35
  %39 = sitofp i16 %32 to float
  call void @glLineWidth(float noundef %39) #6
  %40 = getelementptr inbounds %struct.bGPDlayer, ptr %24, i64 0, i32 7
  %41 = load float, ptr %40, align 4, !tbaa !76
  store float %41, ptr %8, align 16, !tbaa !76
  %42 = getelementptr inbounds %struct.bGPDlayer, ptr %24, i64 0, i32 7, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !76
  store float %43, ptr %14, align 4, !tbaa !76
  %44 = getelementptr inbounds %struct.bGPDlayer, ptr %24, i64 0, i32 7, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !76
  store float %45, ptr %15, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.bGPDlayer, ptr %24, i64 0, i32 7, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !76
  store float %47, ptr %16, align 4, !tbaa !76
  store float %41, ptr %9, align 16, !tbaa !76
  store float %43, ptr %17, align 4, !tbaa !76
  store float %45, ptr %18, align 8, !tbaa !76
  store float %47, ptr %19, align 4, !tbaa !76
  call void @glColor4fv(ptr noundef nonnull %8) #6
  %48 = load i16, ptr %31, align 4, !tbaa !75
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %49, 2
  %51 = sitofp i32 %50 to float
  call void @glPointSize(float noundef %51) #6
  %52 = load i32, ptr %26, align 8, !tbaa !73
  %53 = and i32 %25, -33
  %54 = lshr i32 %52, 2
  %55 = and i32 %54, 32
  %56 = or disjoint i32 %55, %53
  %57 = and i32 %52, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %128, label %59

59:                                               ; preds = %38
  %60 = getelementptr inbounds %struct.bGPDlayer, ptr %24, i64 0, i32 6
  %61 = load i16, ptr %60, align 2, !tbaa !77
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %114, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bGPDframe, ptr %36, i64 0, i32 3
  %65 = getelementptr inbounds %struct.bGPDframe, ptr %36, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !78
  %67 = icmp eq ptr %66, null
  br i1 %67, label %89, label %68

68:                                               ; preds = %63, %77
  %69 = phi ptr [ %87, %77 ], [ %66, %63 ]
  %70 = load i32, ptr %64, align 8, !tbaa !80
  %71 = getelementptr inbounds %struct.bGPDframe, ptr %69, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !80
  %73 = sub nsw i32 %70, %72
  %74 = load i16, ptr %60, align 2, !tbaa !77
  %75 = sext i16 %74 to i32
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %68
  %78 = sitofp i32 %73 to float
  %79 = add nsw i32 %75, 1
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %78, %80
  %82 = fsub float 1.000000e+00, %81
  %83 = load float, ptr %16, align 4, !tbaa !76
  %84 = fmul float %82, %83
  %85 = fmul float %84, 0x3FE51EB860000000
  store float %85, ptr %19, align 4, !tbaa !76
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %69, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %56, i16 noundef signext %30, i16 noundef signext %32, ptr noundef nonnull %9)
  %86 = getelementptr inbounds %struct.bGPDframe, ptr %69, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !78
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %68, !llvm.loop !81

89:                                               ; preds = %77, %68, %63
  %90 = load ptr, ptr %36, align 8, !tbaa !84
  %91 = icmp eq ptr %90, null
  br i1 %91, label %127, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.bGPDframe, ptr %36, i64 0, i32 3
  br label %94

94:                                               ; preds = %92, %103
  %95 = phi ptr [ %90, %92 ], [ %112, %103 ]
  %96 = getelementptr inbounds %struct.bGPDframe, ptr %95, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !80
  %98 = load i32, ptr %93, align 8, !tbaa !80
  %99 = sub nsw i32 %97, %98
  %100 = load i16, ptr %60, align 2, !tbaa !77
  %101 = sext i16 %100 to i32
  %102 = icmp sgt i32 %99, %101
  br i1 %102, label %127, label %103

103:                                              ; preds = %94
  %104 = sitofp i32 %99 to float
  %105 = add nsw i32 %101, 1
  %106 = sitofp i32 %105 to float
  %107 = fdiv float %104, %106
  %108 = fsub float 1.000000e+00, %107
  %109 = load float, ptr %16, align 4, !tbaa !76
  %110 = fmul float %108, %109
  %111 = fmul float %110, 0x3FE51EB860000000
  store float %111, ptr %19, align 4, !tbaa !76
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %95, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %56, i16 noundef signext %30, i16 noundef signext %32, ptr noundef nonnull %9)
  %112 = load ptr, ptr %95, align 8, !tbaa !84
  %113 = icmp eq ptr %112, null
  br i1 %113, label %127, label %94, !llvm.loop !85

114:                                              ; preds = %59
  %115 = getelementptr inbounds %struct.bGPDframe, ptr %36, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !78
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load float, ptr %16, align 4, !tbaa !76
  %120 = fdiv float %119, 7.000000e+00
  store float %120, ptr %19, align 4, !tbaa !76
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %116, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %56, i16 noundef signext %30, i16 noundef signext %32, ptr noundef nonnull %9)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load ptr, ptr %36, align 8, !tbaa !84
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load float, ptr %16, align 4, !tbaa !76
  %126 = fmul float %125, 2.500000e-01
  store float %126, ptr %19, align 4, !tbaa !76
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %122, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %56, i16 noundef signext %30, i16 noundef signext %32, ptr noundef nonnull %9)
  br label %127

127:                                              ; preds = %94, %103, %121, %124, %89
  call void @glColor4fv(ptr noundef nonnull %8) #6
  br label %128

128:                                              ; preds = %127, %38
  %129 = load float, ptr %16, align 4, !tbaa !76
  store float %129, ptr %19, align 4, !tbaa !76
  call fastcc void @gp_draw_strokes(ptr noundef nonnull %36, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %56, i16 noundef signext %30, i16 noundef signext %32, ptr noundef nonnull %9)
  %130 = call i32 @ED_gpencil_session_active() #6
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %195, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %26, align 8, !tbaa !73
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %195, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.bGPDframe, ptr %36, i64 0, i32 4
  %138 = load i32, ptr %137, align 4, !tbaa !86
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %195, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %20, align 8, !tbaa !87
  %143 = load i16, ptr %21, align 4, !tbaa !89
  %144 = sext i16 %143 to i32
  %145 = load i16, ptr %22, align 2, !tbaa !90
  %146 = icmp ne ptr %142, null
  %147 = icmp sgt i16 %143, 0
  %148 = and i1 %146, %147
  %149 = and i32 %25, 6
  %150 = icmp eq i32 %149, 0
  %151 = and i1 %150, %148
  br i1 %151, label %152, label %195

152:                                              ; preds = %141
  %153 = icmp eq i16 %143, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %152
  call void @glBegin(i32 noundef 0) #6
  call void @glVertex2iv(ptr noundef nonnull %142) #6
  call void @glEnd() #6
  br label %195

155:                                              ; preds = %152
  %156 = icmp sgt i16 %145, -1
  br i1 %156, label %157, label %195

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.tGPspoint, ptr %142, i64 0, i32 2
  %159 = load float, ptr %158, align 4, !tbaa !91
  %160 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  call void @setlinestyle(i32 noundef 2) #6
  br label %164

164:                                              ; preds = %163, %157
  %165 = fmul float %159, %39
  call void @glLineWidth(float noundef %165) #6
  call void @glBegin(i32 noundef 3) #6
  %166 = icmp sgt i16 %143, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %164, %185
  %168 = phi float [ %186, %185 ], [ %159, %164 ]
  %169 = phi i32 [ %187, %185 ], [ 0, %164 ]
  %170 = phi ptr [ %188, %185 ], [ %142, %164 ]
  %171 = getelementptr inbounds %struct.tGPspoint, ptr %170, i64 0, i32 2
  %172 = load float, ptr %171, align 4, !tbaa !91
  %173 = fsub float %172, %168
  %174 = call float @llvm.fabs.f32(float %173)
  %175 = fcmp ogt float %174, 0x3FC99999A0000000
  br i1 %175, label %176, label %184

176:                                              ; preds = %167
  call void @glEnd() #6
  %177 = load float, ptr %171, align 4, !tbaa !91
  %178 = fmul float %177, %39
  call void @glLineWidth(float noundef %178) #6
  call void @glBegin(i32 noundef 3) #6
  %179 = icmp eq i32 %169, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.tGPspoint, ptr %170, i64 -1
  call void @glVertex2iv(ptr noundef nonnull %181) #6
  br label %182

182:                                              ; preds = %180, %176
  call void @glVertex2iv(ptr noundef nonnull %170) #6
  %183 = load float, ptr %171, align 4, !tbaa !91
  br label %185

184:                                              ; preds = %167
  call void @glVertex2iv(ptr noundef nonnull %170) #6
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi float [ %183, %182 ], [ %168, %184 ]
  %187 = add nuw nsw i32 %169, 1
  %188 = getelementptr inbounds %struct.tGPspoint, ptr %170, i64 1
  %189 = icmp eq i32 %187, %144
  br i1 %189, label %190, label %167, !llvm.loop !95

190:                                              ; preds = %185, %164
  call void @glEnd() #6
  call void @glLineWidth(float noundef 1.000000e+00) #6
  %191 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !93
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void @setlinestyle(i32 noundef 0) #6
  br label %195

195:                                              ; preds = %194, %190, %155, %154, %141, %128, %132, %136, %35, %23
  %196 = phi i32 [ %25, %23 ], [ %25, %35 ], [ %56, %136 ], [ %56, %132 ], [ %56, %128 ], [ %56, %141 ], [ %56, %154 ], [ %56, %155 ], [ %56, %190 ], [ %56, %194 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  %197 = load ptr, ptr %24, align 8, !tbaa !72
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %23, !llvm.loop !96

199:                                              ; preds = %195, %7
  call void @glDisable(i32 noundef 3042) #6
  call void @glDisable(i32 noundef 2848) #6
  call void @glLineWidth(float noundef 1.000000e+00) #6
  call void @glPointSize(float noundef 1.000000e+00) #6
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = icmp eq ptr %3, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #6
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
  %21 = load i16, ptr %20, align 8, !tbaa !43
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !48
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !53
  tail call fastcc void @gp_draw_data(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, i32 noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %19)
  br label %28

28:                                               ; preds = %7, %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_gpencil_draw_view3d(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = tail call ptr @ED_gpencil_data_get_active_v3d(ptr noundef %0, ptr noundef %1) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %12 = load i8, ptr %11, align 1, !tbaa !98
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !100
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @ED_view3d_calc_camera_border(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %5, i8 noundef zeroext 1) #6
  %19 = load float, ptr %5, align 4, !tbaa !101
  %20 = fadd float %19, 5.000000e-01
  %21 = call float @llvm.floor.f32(float %20)
  %22 = fptosi float %21 to i32
  %23 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !102
  %25 = fadd float %24, 5.000000e-01
  %26 = call float @llvm.floor.f32(float %25)
  %27 = fptosi float %26 to i32
  %28 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !103
  %30 = fsub float %29, %19
  %31 = fadd float %30, 5.000000e-01
  %32 = call float @llvm.floor.f32(float %31)
  %33 = fptosi float %32 to i32
  %34 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !104
  %36 = fsub float %35, %24
  %37 = fadd float %36, 5.000000e-01
  %38 = call float @llvm.floor.f32(float %37)
  %39 = fptosi float %38 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %47

40:                                               ; preds = %14, %10
  %41 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %42 = load i16, ptr %41, align 8, !tbaa !43
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %45 = load i16, ptr %44, align 2, !tbaa !48
  %46 = sext i16 %45 to i32
  br label %47

47:                                               ; preds = %40, %18
  %48 = phi i32 [ 0, %40 ], [ %22, %18 ]
  %49 = phi i32 [ 0, %40 ], [ %27, %18 ]
  %50 = phi i32 [ %43, %40 ], [ %33, %18 ]
  %51 = phi i32 [ %46, %40 ], [ %39, %18 ]
  %52 = icmp eq i8 %3, 0
  %53 = select i1 %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !53
  call fastcc void @gp_draw_data(ptr noundef nonnull %8, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %55, i32 noundef %53)
  br label %56

56:                                               ; preds = %4, %47
  ret void
}

declare ptr @ED_gpencil_data_get_active_v3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_gpencil_draw_ex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @gp_draw_data(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 5)
  ret void
}

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_draw_strokes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca i32, align 4
  tail call void @glColor4fv(ptr noundef %8) #6
  %13 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %371, label %16

16:                                               ; preds = %9
  %17 = and i32 %5, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %5, 4
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %5, 8
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 32
  %24 = icmp eq i32 %23, 0
  %25 = sitofp i16 %7 to float
  %26 = fdiv float 0x3FC99999A0000000, %25
  %27 = icmp eq i16 %6, 0
  %28 = trunc i32 %5 to i16
  %29 = sitofp i16 %7 to float
  %30 = fmul float %29, 5.000000e-01
  %31 = fcmp olt float %30, 3.000000e+00
  %32 = and i32 %5, 20
  %33 = icmp eq i32 %32, 20
  %34 = or i1 %33, %31
  %35 = sitofp i32 %3 to float
  %36 = sitofp i32 %1 to float
  %37 = sitofp i32 %4 to float
  %38 = sitofp i32 %2 to float
  %39 = sitofp i32 %3 to float
  %40 = sitofp i32 %1 to float
  %41 = sitofp i32 %4 to float
  %42 = sitofp i32 %2 to float
  %43 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %44 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %45 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %46 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %47 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %48 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %49 = sitofp i32 %3 to float
  %50 = sitofp i32 %1 to float
  %51 = sitofp i32 %4 to float
  %52 = sitofp i32 %2 to float
  %53 = sitofp i32 %3 to float
  %54 = sitofp i32 %1 to float
  %55 = sitofp i32 %4 to float
  %56 = sitofp i32 %2 to float
  %57 = icmp eq i16 %6, 0
  %58 = sitofp i32 %3 to float
  %59 = sitofp i32 %1 to float
  %60 = sitofp i32 %4 to float
  %61 = sitofp i32 %2 to float
  %62 = sitofp i32 %3 to float
  %63 = sitofp i32 %1 to float
  %64 = sitofp i32 %4 to float
  %65 = sitofp i32 %2 to float
  %66 = trunc i32 %5 to i16
  br label %67

67:                                               ; preds = %16, %368
  %68 = phi ptr [ %14, %16 ], [ %369, %368 ]
  %69 = getelementptr inbounds %struct.bGPDstroke, ptr %68, i64 0, i32 6
  %70 = load i16, ptr %69, align 2, !tbaa !105
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %18, label %74, label %73

73:                                               ; preds = %67
  br i1 %72, label %368, label %75

74:                                               ; preds = %67
  br i1 %72, label %75, label %368

75:                                               ; preds = %73, %74
  %76 = getelementptr inbounds %struct.bGPDstroke, ptr %68, i64 0, i32 6
  %77 = load i16, ptr %76, align 2, !tbaa !105
  %78 = and i16 %77, 2
  %79 = icmp eq i16 %78, 0
  br i1 %20, label %81, label %80

80:                                               ; preds = %75
  br i1 %79, label %368, label %82

81:                                               ; preds = %75
  br i1 %79, label %82, label %368

82:                                               ; preds = %80, %81
  %83 = getelementptr inbounds %struct.bGPDstroke, ptr %68, i64 0, i32 6
  %84 = load i16, ptr %83, align 2, !tbaa !105
  %85 = and i16 %84, 4
  %86 = icmp eq i16 %85, 0
  br i1 %22, label %88, label %87

87:                                               ; preds = %82
  br i1 %86, label %368, label %89

88:                                               ; preds = %82
  br i1 %86, label %89, label %368

89:                                               ; preds = %87, %88
  %90 = getelementptr inbounds %struct.bGPDstroke, ptr %68, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !108
  %92 = icmp eq ptr %91, null
  br i1 %92, label %368, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.bGPDstroke, ptr %68, i64 0, i32 4
  %95 = load i32, ptr %94, align 8, !tbaa !109
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %368, label %97

97:                                               ; preds = %93
  br i1 %18, label %151, label %98

98:                                               ; preds = %97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4, !tbaa !110
  br i1 %24, label %100, label %99

99:                                               ; preds = %98
  call void @glGetIntegerv(i32 noundef 2930, ptr noundef nonnull %12) #6
  call void @glDepthMask(i8 noundef zeroext 0) #6
  call void @glEnable(i32 noundef 2929) #6
  call void @bglPolygonOffset(float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i32, ptr %94, align 8, !tbaa !109
  %102 = icmp eq i32 %101, 1
  %103 = load ptr, ptr %90, align 8, !tbaa !108
  br i1 %102, label %104, label %107

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.bGPDstroke, ptr %68, i64 0, i32 6
  %106 = load i16, ptr %105, align 2, !tbaa !105
  call fastcc void @gp_draw_stroke_point(ptr noundef %103, i16 noundef signext %7, i16 noundef signext %28, i16 noundef signext %106, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %146

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.bGPDspoint, ptr %103, i64 0, i32 3
  %109 = load float, ptr %108, align 4, !tbaa !111
  %110 = fmul float %109, %25
  call void @glLineWidth(float noundef %110) #6
  call void @glBegin(i32 noundef 3) #6
  %111 = icmp sgt i32 %101, 0
  %112 = icmp ne ptr %103, null
  %113 = and i1 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %107, %129
  %115 = phi i32 [ %131, %129 ], [ 0, %107 ]
  %116 = phi float [ %130, %129 ], [ %109, %107 ]
  %117 = phi ptr [ %132, %129 ], [ %103, %107 ]
  %118 = getelementptr inbounds %struct.bGPDspoint, ptr %117, i64 0, i32 3
  %119 = load float, ptr %118, align 4, !tbaa !111
  %120 = fsub float %119, %116
  %121 = call float @llvm.fabs.f32(float %120)
  %122 = fcmp ogt float %121, %26
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  call void @glEnd() #6
  %124 = load float, ptr %118, align 4, !tbaa !111
  %125 = fmul float %124, %25
  call void @glLineWidth(float noundef %125) #6
  call void @glBegin(i32 noundef 3) #6
  %126 = icmp eq i32 %115, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.bGPDspoint, ptr %117, i64 -1
  call void @glVertex3fv(ptr noundef nonnull %128) #6
  br label %129

129:                                              ; preds = %114, %123, %127
  %130 = phi float [ %124, %127 ], [ %124, %123 ], [ %116, %114 ]
  call void @glVertex3fv(ptr noundef nonnull %117) #6
  %131 = add nuw nsw i32 %115, 1
  %132 = getelementptr inbounds %struct.bGPDspoint, ptr %117, i64 1
  %133 = icmp eq i32 %131, %101
  br i1 %133, label %134, label %114, !llvm.loop !113

134:                                              ; preds = %129, %107
  call void @glEnd() #6
  br i1 %27, label %146, label %135

135:                                              ; preds = %134
  call void @glBegin(i32 noundef 0) #6
  %136 = icmp sgt i32 %101, 0
  %137 = icmp ne ptr %103, null
  %138 = and i1 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %135, %139
  %140 = phi i32 [ %142, %139 ], [ 0, %135 ]
  %141 = phi ptr [ %143, %139 ], [ %103, %135 ]
  call void @glVertex3fv(ptr noundef nonnull %141) #6
  %142 = add nuw nsw i32 %140, 1
  %143 = getelementptr inbounds %struct.bGPDspoint, ptr %141, i64 1
  %144 = icmp eq i32 %142, %101
  br i1 %144, label %145, label %139, !llvm.loop !114

145:                                              ; preds = %139, %135
  call void @glEnd() #6
  br label %146

146:                                              ; preds = %145, %134, %104
  br i1 %24, label %150, label %147

147:                                              ; preds = %146
  %148 = load i32, ptr %12, align 4, !tbaa !110
  %149 = trunc i32 %148 to i8
  call void @glDepthMask(i8 noundef zeroext %149) #6
  call void @glDisable(i32 noundef 2929) #6
  call void @bglPolygonOffset(float noundef 0.000000e+00, float noundef 0.000000e+00) #6
  br label %150

150:                                              ; preds = %147, %146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  br label %368

151:                                              ; preds = %97
  %152 = icmp eq i32 %95, 1
  %153 = getelementptr inbounds %struct.bGPDstroke, ptr %68, i64 0, i32 6
  %154 = load i16, ptr %153, align 2, !tbaa !105
  br i1 %152, label %155, label %156

155:                                              ; preds = %151
  call fastcc void @gp_draw_stroke_point(ptr noundef nonnull %91, i16 noundef signext %7, i16 noundef signext %66, i16 noundef signext %154, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %368

156:                                              ; preds = %151
  br i1 %34, label %157, label %187

157:                                              ; preds = %156
  call void @glBegin(i32 noundef 3) #6
  %158 = zext i16 %154 to i32
  %159 = and i32 %158, 2
  %160 = icmp eq i32 %159, 0
  %161 = and i32 %158, 4
  %162 = icmp eq i32 %161, 0
  br label %163

163:                                              ; preds = %157, %183
  %164 = phi ptr [ %91, %157 ], [ %185, %183 ]
  %165 = phi i32 [ 0, %157 ], [ %184, %183 ]
  %166 = load float, ptr %164, align 4, !tbaa !115
  br i1 %160, label %170, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.bGPDspoint, ptr %164, i64 0, i32 1
  %169 = load float, ptr %168, align 4, !tbaa !116
  call void @glVertex2f(float noundef %166, float noundef %169) #6
  br label %183

170:                                              ; preds = %163
  br i1 %162, label %176, label %171

171:                                              ; preds = %170
  %172 = call float @llvm.fmuladd.f32(float %166, float %49, float %50)
  %173 = getelementptr inbounds %struct.bGPDspoint, ptr %164, i64 0, i32 1
  %174 = load float, ptr %173, align 4, !tbaa !116
  %175 = call float @llvm.fmuladd.f32(float %174, float %51, float %52)
  call void @glVertex2f(float noundef %172, float noundef %175) #6
  br label %183

176:                                              ; preds = %170
  %177 = fdiv float %166, 1.000000e+02
  %178 = call float @llvm.fmuladd.f32(float %177, float %53, float %54)
  %179 = getelementptr inbounds %struct.bGPDspoint, ptr %164, i64 0, i32 1
  %180 = load float, ptr %179, align 4, !tbaa !116
  %181 = fdiv float %180, 1.000000e+02
  %182 = call float @llvm.fmuladd.f32(float %181, float %55, float %56)
  call void @glVertex2f(float noundef %178, float noundef %182) #6
  br label %183

183:                                              ; preds = %176, %171, %167
  %184 = add nuw nsw i32 %165, 1
  %185 = getelementptr inbounds %struct.bGPDspoint, ptr %164, i64 1
  %186 = icmp eq i32 %184, %95
  br i1 %186, label %337, label %163, !llvm.loop !117

187:                                              ; preds = %156
  call void @glShadeModel(i32 noundef 7424) #6
  call void @glBegin(i32 noundef 7) #6
  %188 = zext i16 %154 to i32
  %189 = and i32 %188, 2
  %190 = icmp eq i32 %189, 0
  %191 = and i32 %188, 4
  %192 = icmp eq i32 %191, 0
  %193 = add nsw i32 %95, -2
  %194 = add nsw i32 %95, -2
  br label %195

195:                                              ; preds = %187, %334
  %196 = phi ptr [ %91, %187 ], [ %200, %334 ]
  %197 = phi i32 [ 0, %187 ], [ %335, %334 ]
  %198 = phi float [ undef, %187 ], [ %251, %334 ]
  %199 = phi float [ undef, %187 ], [ %250, %334 ]
  %200 = getelementptr %struct.bGPDspoint, ptr %196, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %201 = load float, ptr %196, align 4, !tbaa !115
  br i1 %190, label %208, label %202

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 0, i32 1
  %204 = load float, ptr %203, align 4, !tbaa !116
  %205 = load float, ptr %200, align 4, !tbaa !115
  %206 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 1, i32 1
  %207 = load float, ptr %206, align 4, !tbaa !116
  br label %233

208:                                              ; preds = %195
  br i1 %192, label %219, label %209

209:                                              ; preds = %208
  %210 = call float @llvm.fmuladd.f32(float %201, float %35, float %36)
  %211 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 0, i32 1
  %212 = load float, ptr %211, align 4, !tbaa !116
  %213 = call float @llvm.fmuladd.f32(float %212, float %37, float %38)
  %214 = load float, ptr %200, align 4, !tbaa !115
  %215 = call float @llvm.fmuladd.f32(float %214, float %35, float %36)
  %216 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 1, i32 1
  %217 = load float, ptr %216, align 4, !tbaa !116
  %218 = call float @llvm.fmuladd.f32(float %217, float %37, float %38)
  br label %233

219:                                              ; preds = %208
  %220 = fdiv float %201, 1.000000e+02
  %221 = call float @llvm.fmuladd.f32(float %220, float %39, float %40)
  %222 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 0, i32 1
  %223 = load float, ptr %222, align 4, !tbaa !116
  %224 = fdiv float %223, 1.000000e+02
  %225 = call float @llvm.fmuladd.f32(float %224, float %41, float %42)
  %226 = load float, ptr %200, align 4, !tbaa !115
  %227 = fdiv float %226, 1.000000e+02
  %228 = call float @llvm.fmuladd.f32(float %227, float %39, float %40)
  %229 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 1, i32 1
  %230 = load float, ptr %229, align 4, !tbaa !116
  %231 = fdiv float %230, 1.000000e+02
  %232 = call float @llvm.fmuladd.f32(float %231, float %41, float %42)
  br label %233

233:                                              ; preds = %219, %209, %202
  %234 = phi float [ %201, %202 ], [ %210, %209 ], [ %221, %219 ]
  %235 = phi float [ %207, %202 ], [ %218, %209 ], [ %232, %219 ]
  %236 = phi float [ %205, %202 ], [ %215, %209 ], [ %228, %219 ]
  %237 = phi float [ %204, %202 ], [ %213, %209 ], [ %225, %219 ]
  %238 = fsub float %235, %237
  %239 = fsub float %236, %234
  %240 = fmul float %238, %238
  %241 = call float @llvm.fmuladd.f32(float %239, float %239, float %240)
  %242 = fcmp ogt float %241, 0x38AA95A5C0000000
  br i1 %242, label %243, label %248

243:                                              ; preds = %233
  %244 = call float @sqrtf(float noundef %241) #6
  %245 = fdiv float 1.000000e+00, %244
  %246 = fmul float %239, %245
  %247 = fmul float %238, %245
  br label %248

248:                                              ; preds = %243, %233
  %249 = phi float [ %246, %243 ], [ 0.000000e+00, %233 ]
  %250 = phi float [ %247, %243 ], [ 0.000000e+00, %233 ]
  %251 = fneg float %249
  %252 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 0, i32 3
  %253 = load float, ptr %252, align 4, !tbaa !111
  %254 = fmul float %30, %253
  %255 = icmp eq i32 %197, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %248
  %257 = fmul float %250, %254
  %258 = fmul float %257, 5.000000e-01
  %259 = fmul float %254, %251
  %260 = fmul float %259, 5.000000e-01
  %261 = call float @llvm.fmuladd.f32(float %259, float 7.500000e-01, float %234)
  %262 = fneg float %250
  %263 = fmul float %254, %262
  %264 = call float @llvm.fmuladd.f32(float %263, float 7.500000e-01, float %237)
  %265 = fsub float %261, %258
  store float %265, ptr %10, align 4, !tbaa !76
  %266 = fsub float %264, %260
  store float %266, ptr %45, align 4, !tbaa !76
  %267 = fadd float %261, %258
  store float %267, ptr %11, align 4, !tbaa !76
  %268 = fadd float %264, %260
  store float %268, ptr %46, align 4, !tbaa !76
  call void @glVertex2fv(ptr noundef nonnull %10) #6
  call void @glVertex2fv(ptr noundef nonnull %11) #6
  %269 = fsub float %234, %257
  store float %269, ptr %10, align 4, !tbaa !76
  %270 = fsub float %237, %259
  store float %270, ptr %45, align 4, !tbaa !76
  br label %308

271:                                              ; preds = %248
  %272 = fadd float %199, %250
  %273 = fmul float %272, 5.000000e-01
  %274 = fsub float %198, %249
  %275 = fmul float %274, 5.000000e-01
  %276 = fmul float %275, %275
  %277 = call float @llvm.fmuladd.f32(float %273, float %273, float %276)
  %278 = fcmp ogt float %277, 0x38AA95A5C0000000
  br i1 %278, label %279, label %284

279:                                              ; preds = %271
  %280 = call float @sqrtf(float noundef %277) #6
  %281 = fdiv float 1.000000e+00, %280
  %282 = fmul float %273, %281
  %283 = fmul float %275, %281
  br label %284

284:                                              ; preds = %279, %271
  %285 = phi float [ %282, %279 ], [ 0.000000e+00, %271 ]
  %286 = phi float [ %283, %279 ], [ 0.000000e+00, %271 ]
  %287 = fmul float %254, %285
  %288 = fmul float %254, %286
  %289 = fmul float %288, %288
  %290 = call float @llvm.fmuladd.f32(float %287, float %287, float %289)
  %291 = call float @sqrtf(float noundef %290) #6
  %292 = fneg float %291
  %293 = call float @llvm.fmuladd.f32(float %292, float 2.000000e+00, float %254)
  %294 = fmul float %291, 2.000000e+00
  %295 = fcmp olt float %294, %254
  br i1 %295, label %296, label %303

296:                                              ; preds = %284
  %297 = fsub float %291, %254
  %298 = call float @llvm.fabs.f32(float %297)
  %299 = fcmp ult float %298, 0x3E80000000000000
  br i1 %299, label %303, label %300

300:                                              ; preds = %296
  %301 = call float @llvm.fmuladd.f32(float %285, float %293, float %287)
  %302 = call float @llvm.fmuladd.f32(float %286, float %293, float %288)
  br label %303

303:                                              ; preds = %300, %296, %284
  %304 = phi float [ %288, %296 ], [ %302, %300 ], [ %288, %284 ]
  %305 = phi float [ %287, %296 ], [ %301, %300 ], [ %287, %284 ]
  %306 = fsub float %234, %305
  store float %306, ptr %10, align 4, !tbaa !76
  %307 = fsub float %237, %304
  store float %307, ptr %43, align 4, !tbaa !76
  br label %308

308:                                              ; preds = %303, %256
  %309 = phi float [ %305, %303 ], [ %257, %256 ]
  %310 = phi float [ %304, %303 ], [ %259, %256 ]
  %311 = phi ptr [ %44, %303 ], [ %46, %256 ]
  %312 = fadd float %234, %309
  store float %312, ptr %11, align 4, !tbaa !76
  %313 = fadd float %237, %310
  store float %313, ptr %311, align 4, !tbaa !76
  call void @glVertex2fv(ptr noundef nonnull %11) #6
  call void @glVertex2fv(ptr noundef nonnull %10) #6
  call void @glVertex2fv(ptr noundef nonnull %10) #6
  call void @glVertex2fv(ptr noundef nonnull %11) #6
  %314 = icmp eq i32 %197, %193
  br i1 %314, label %315, label %334

315:                                              ; preds = %308
  %316 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 1, i32 3
  %317 = load float, ptr %316, align 4, !tbaa !111
  %318 = fmul float %30, %317
  %319 = fmul float %250, %318
  %320 = fmul float %318, %251
  %321 = fsub float %236, %319
  store float %321, ptr %10, align 4, !tbaa !76
  %322 = fsub float %235, %320
  store float %322, ptr %47, align 4, !tbaa !76
  %323 = fadd float %236, %319
  store float %323, ptr %11, align 4, !tbaa !76
  %324 = fadd float %235, %320
  store float %324, ptr %48, align 4, !tbaa !76
  call void @glVertex2fv(ptr noundef nonnull %11) #6
  call void @glVertex2fv(ptr noundef nonnull %10) #6
  call void @glVertex2fv(ptr noundef nonnull %10) #6
  call void @glVertex2fv(ptr noundef nonnull %11) #6
  %325 = fmul float %319, 5.000000e-01
  %326 = fmul float %320, 5.000000e-01
  %327 = fmul float %249, %318
  %328 = call float @llvm.fmuladd.f32(float %327, float 7.500000e-01, float %236)
  %329 = call float @llvm.fmuladd.f32(float %319, float 7.500000e-01, float %235)
  %330 = fsub float %328, %325
  store float %330, ptr %10, align 4, !tbaa !76
  %331 = fsub float %329, %326
  store float %331, ptr %47, align 4, !tbaa !76
  %332 = fadd float %328, %325
  store float %332, ptr %11, align 4, !tbaa !76
  %333 = fadd float %329, %326
  store float %333, ptr %48, align 4, !tbaa !76
  call void @glVertex2fv(ptr noundef nonnull %11) #6
  call void @glVertex2fv(ptr noundef nonnull %10) #6
  br label %334

334:                                              ; preds = %315, %308
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %335 = add nuw nsw i32 %197, 1
  %336 = icmp eq i32 %197, %194
  br i1 %336, label %337, label %195, !llvm.loop !118

337:                                              ; preds = %334, %183
  call void @glEnd() #6
  br i1 %57, label %368, label %338

338:                                              ; preds = %337
  call void @glBegin(i32 noundef 0) #6
  %339 = zext i16 %154 to i32
  %340 = and i32 %339, 2
  %341 = icmp eq i32 %340, 0
  %342 = and i32 %339, 4
  %343 = icmp eq i32 %342, 0
  %344 = call i32 @llvm.smax.i32(i32 %95, i32 1)
  br label %345

345:                                              ; preds = %338, %363
  %346 = phi i32 [ 0, %338 ], [ %364, %363 ]
  %347 = phi ptr [ %91, %338 ], [ %365, %363 ]
  br i1 %341, label %349, label %348

348:                                              ; preds = %345
  call void @glVertex2fv(ptr noundef nonnull %347) #6
  br label %363

349:                                              ; preds = %345
  %350 = load float, ptr %347, align 4, !tbaa !115
  br i1 %343, label %356, label %351

351:                                              ; preds = %349
  %352 = call float @llvm.fmuladd.f32(float %350, float %58, float %59)
  %353 = getelementptr inbounds %struct.bGPDspoint, ptr %347, i64 0, i32 1
  %354 = load float, ptr %353, align 4, !tbaa !116
  %355 = call float @llvm.fmuladd.f32(float %354, float %60, float %61)
  call void @glVertex2f(float noundef %352, float noundef %355) #6
  br label %363

356:                                              ; preds = %349
  %357 = fdiv float %350, 1.000000e+02
  %358 = call float @llvm.fmuladd.f32(float %357, float %62, float %63)
  %359 = getelementptr inbounds %struct.bGPDspoint, ptr %347, i64 0, i32 1
  %360 = load float, ptr %359, align 4, !tbaa !116
  %361 = fdiv float %360, 1.000000e+02
  %362 = call float @llvm.fmuladd.f32(float %361, float %64, float %65)
  call void @glVertex2f(float noundef %358, float noundef %362) #6
  br label %363

363:                                              ; preds = %356, %351, %348
  %364 = add nuw nsw i32 %346, 1
  %365 = getelementptr inbounds %struct.bGPDspoint, ptr %347, i64 1
  %366 = icmp eq i32 %364, %344
  br i1 %366, label %367, label %345, !llvm.loop !119

367:                                              ; preds = %363
  call void @glEnd() #6
  br label %368

368:                                              ; preds = %367, %337, %150, %155, %89, %93, %88, %87, %81, %80, %74, %73
  %369 = load ptr, ptr %68, align 8, !tbaa !72
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %67, !llvm.loop !120

371:                                              ; preds = %368, %9
  ret void
}

declare i32 @ED_gpencil_session_active() local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #2

declare void @bglPolygonOffset(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_draw_stroke_point(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [2 x float], align 4
  %10 = zext i16 %3 to i32
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @glBegin(i32 noundef 0) #6
  tail call void @glVertex3fv(ptr noundef %0) #6
  tail call void @glEnd() #6
  br label %65

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %15 = and i32 %10, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load float, ptr %0, align 4, !tbaa !115
  store float %18, ptr %9, align 4, !tbaa !76
  %19 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !116
  br label %45

21:                                               ; preds = %14
  %22 = and i32 %10, 4
  %23 = icmp eq i32 %22, 0
  %24 = load float, ptr %0, align 4, !tbaa !115
  br i1 %23, label %34, label %25

25:                                               ; preds = %21
  %26 = sitofp i32 %6 to float
  %27 = sitofp i32 %4 to float
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %27)
  store float %28, ptr %9, align 4, !tbaa !76
  %29 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !116
  %31 = sitofp i32 %7 to float
  %32 = sitofp i32 %5 to float
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %31, float %32)
  br label %45

34:                                               ; preds = %21
  %35 = fdiv float %24, 1.000000e+02
  %36 = sitofp i32 %6 to float
  %37 = sitofp i32 %4 to float
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %37)
  store float %38, ptr %9, align 4, !tbaa !76
  %39 = getelementptr inbounds %struct.bGPDspoint, ptr %0, i64 0, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !116
  %41 = fdiv float %40, 1.000000e+02
  %42 = sitofp i32 %7 to float
  %43 = sitofp i32 %5 to float
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %42, float %43)
  br label %45

45:                                               ; preds = %25, %34, %17
  %46 = phi float [ %33, %25 ], [ %44, %34 ], [ %20, %17 ]
  %47 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !76
  %48 = icmp slt i16 %1, 3
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = and i16 %2, 16
  %51 = icmp eq i16 %50, 0
  %52 = or i1 %51, %16
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45
  tail call void @glBegin(i32 noundef 0) #6
  call void @glVertex2fv(ptr noundef nonnull %9) #6
  call void @glEnd() #6
  br label %64

54:                                               ; preds = %49
  %55 = tail call ptr @gluNewQuadric() #6
  tail call void @gluQuadricDrawStyle(ptr noundef %55, i32 noundef 100012) #6
  %56 = load float, ptr %9, align 4, !tbaa !76
  %57 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !76
  tail call void @glTranslatef(float noundef %56, float noundef %58, float noundef 0.000000e+00) #6
  %59 = sitofp i16 %1 to double
  tail call void @gluDisk(ptr noundef %55, double noundef 0.000000e+00, double noundef %59, i32 noundef 32, i32 noundef 1) #6
  %60 = load float, ptr %9, align 4, !tbaa !76
  %61 = fneg float %60
  %62 = load float, ptr %57, align 4, !tbaa !76
  %63 = fneg float %62
  tail call void @glTranslatef(float noundef %61, float noundef %63, float noundef 0.000000e+00) #6
  tail call void @gluDeleteQuadric(ptr noundef %55) #6
  br label %64

64:                                               ; preds = %54, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  br label %65

65:                                               ; preds = %64, %13
  ret void
}

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare ptr @gluNewQuadric() local_unnamed_addr #2

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !37, i64 72}
!35 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!44, !41, i64 208}
!44 = !{!"ARegion", !36, i64 0, !36, i64 8, !45, i64 16, !39, i64 176, !39, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !47, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!45 = !{!"View2D", !46, i64 0, !46, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !37, i64 80, !37, i64 88, !47, i64 96, !47, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!46 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!47 = !{!"float", !37, i64 0}
!48 = !{!44, !41, i64 210}
!49 = !{!44, !47, i64 32}
!50 = !{!44, !47, i64 36}
!51 = !{!44, !47, i64 40}
!52 = !{!44, !47, i64 44}
!53 = !{!54, !40, i64 680}
!54 = !{!"Scene", !55, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !56, i64 280, !63, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !64, i64 4400, !65, i64 4416, !68, i64 4600, !36, i64 4608, !69, i64 4616, !36, i64 4640, !70, i64 4648, !70, i64 4656, !58, i64 4664, !59, i64 4824, !71, i64 4888, !36, i64 4952}
!55 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!56 = !{!"RenderData", !57, i64 0, !36, i64 248, !36, i64 256, !60, i64 264, !61, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !47, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !46, i64 544, !46, i64 560, !39, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !40, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !47, i64 660, !47, i64 664, !41, i64 668, !41, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !47, i64 2528, !47, i64 2532, !41, i64 2536, !41, i64 2538, !47, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !40, i64 2576, !47, i64 2580, !37, i64 2584, !62, i64 2616, !40, i64 3976, !40, i64 3980}
!57 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !58, i64 24, !59, i64 184}
!58 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!59 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!60 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!61 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !47, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!62 = !{!"BakeData", !57, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!63 = !{!"AudioData", !40, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !47, i64 24, !47, i64 28}
!64 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!65 = !{!"GameData", !64, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !66, i64 40, !41, i64 64, !41, i64 66, !47, i64 68, !67, i64 72, !47, i64 128, !47, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!66 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !47, i64 8, !47, i64 12, !36, i64 16}
!67 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !40, i64 40, !47, i64 44, !47, i64 48, !41, i64 52, !41, i64 54}
!68 = !{!"UnitSettings", !47, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!69 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!70 = !{!"long", !37, i64 0}
!71 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!72 = !{!36, !36, i64 0}
!73 = !{!74, !40, i64 40}
!74 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !42, i64 16, !36, i64 32, !40, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!75 = !{!74, !41, i64 44}
!76 = !{!47, !47, i64 0}
!77 = !{!74, !41, i64 46}
!78 = !{!79, !36, i64 8}
!79 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36}
!80 = !{!79, !40, i64 32}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!79, !36, i64 0}
!85 = distinct !{!85, !82, !83}
!86 = !{!79, !40, i64 36}
!87 = !{!88, !36, i64 144}
!88 = !{!"bGPdata", !55, i64 0, !42, i64 120, !40, i64 136, !41, i64 140, !41, i64 142, !36, i64 144}
!89 = !{!88, !41, i64 140}
!90 = !{!88, !41, i64 142}
!91 = !{!92, !47, i64 8}
!92 = !{!"tGPspoint", !40, i64 0, !40, i64 4, !47, i64 8, !47, i64 12}
!93 = !{!94, !40, i64 2100}
!94 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!95 = distinct !{!95, !82, !83}
!96 = distinct !{!96, !82, !83}
!97 = !{!44, !36, i64 376}
!98 = !{!99, !37, i64 809}
!99 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !47, i64 776, !47, i64 780, !47, i64 784, !47, i64 788, !37, i64 792, !47, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !47, i64 848, !37, i64 852, !47, i64 864, !37, i64 868}
!100 = !{!94, !40, i64 2096}
!101 = !{!46, !47, i64 0}
!102 = !{!46, !47, i64 8}
!103 = !{!46, !47, i64 4}
!104 = !{!46, !47, i64 12}
!105 = !{!106, !41, i64 38}
!106 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !41, i64 36, !41, i64 38, !107, i64 40}
!107 = !{!"double", !37, i64 0}
!108 = !{!106, !36, i64 16}
!109 = !{!106, !40, i64 32}
!110 = !{!40, !40, i64 0}
!111 = !{!112, !47, i64 12}
!112 = !{!"bGPDspoint", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16}
!113 = distinct !{!113, !82, !83}
!114 = distinct !{!114, !82, !83}
!115 = !{!112, !47, i64 0}
!116 = !{!112, !47, i64 4}
!117 = distinct !{!117, !82, !83}
!118 = distinct !{!118, !82, !83}
!119 = distinct !{!119, !82, !83}
!120 = distinct !{!120, !82, !83}
