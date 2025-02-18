; ModuleID = 'blender/source/blender/editors/render/render_view.c'
source_filename = "blender/source/blender/editors/render/render_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [14 x i8] c"Render Result\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Cancel Render View\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cancel show render view\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"RENDER_OT_view_cancel\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Show/Hide Render View\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Toggle show render view\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RENDER_OT_view_show\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @render_view_open(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #5
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 43
  %8 = load i16, ptr %7, align 8, !tbaa !34
  switch i16 %8, label %62 [
    i16 3, label %207
    i16 2, label %9
    i16 0, label %52
  ]

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %11 = load i32, ptr %10, align 4, !tbaa !62
  %12 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 30
  %13 = load i16, ptr %12, align 2, !tbaa !63
  %14 = sext i16 %13 to i32
  %15 = mul nsw i32 %11, %14
  %16 = sdiv i32 %15, 100
  %17 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = mul nsw i32 %18, %14
  %20 = sdiv i32 %19, 100
  %21 = tail call i32 @llvm.smax.i32(i32 %16, i32 310)
  %22 = add nuw nsw i32 %21, 10
  %23 = tail call i32 @llvm.smax.i32(i32 %20, i32 216)
  %24 = add nuw nsw i32 %23, 40
  %25 = sitofp i32 %1 to float
  %26 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !65
  %27 = fdiv float %25, %26
  %28 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !69
  %30 = sitofp i16 %29 to float
  %31 = fadd float %27, %30
  %32 = lshr i32 %22, 1
  %33 = sitofp i32 %32 to float
  %34 = fsub float %31, %33
  %35 = fptosi float %34 to i32
  store i32 %35, ptr %4, align 4, !tbaa !71
  %36 = sitofp i32 %2 to float
  %37 = fdiv float %36, %26
  %38 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 7
  %39 = load i16, ptr %38, align 2, !tbaa !72
  %40 = sitofp i16 %39 to float
  %41 = fadd float %37, %40
  %42 = lshr i32 %24, 1
  %43 = sitofp i32 %42 to float
  %44 = fsub float %41, %43
  %45 = fptosi float %44 to i32
  %46 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  store i32 %45, ptr %46, align 4, !tbaa !73
  %47 = add nsw i32 %22, %35
  %48 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !74
  %49 = add nsw i32 %24, %45
  %50 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  store i32 %49, ptr %50, align 4, !tbaa !75
  call void @WM_window_open_temp(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #5
  %51 = call ptr @CTX_wm_area(ptr noundef %0) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %62

52:                                               ; preds = %3
  %53 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ScrArea, ptr %53, i64 0, i32 8
  %57 = load i8, ptr %56, align 8, !tbaa !76
  %58 = icmp ne i8 %57, 6
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ true, %52 ], [ %58, %55 ]
  %61 = tail call ptr @ED_screen_full_newspace(ptr noundef %0, ptr noundef %53, i32 noundef 6) #5
  br label %62

62:                                               ; preds = %3, %59, %9
  %63 = phi i1 [ true, %9 ], [ %60, %59 ], [ true, %3 ]
  %64 = phi ptr [ %51, %9 ], [ %61, %59 ], [ null, %3 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %192

66:                                               ; preds = %62
  %67 = call ptr @CTX_wm_manager(ptr noundef %0) #5
  %68 = getelementptr inbounds %struct.wmWindowManager, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !78
  %70 = icmp eq ptr %69, null
  br i1 %70, label %103, label %71

71:                                               ; preds = %66, %100
  %72 = phi ptr [ %101, %100 ], [ %69, %66 ]
  %73 = getelementptr inbounds %struct.wmWindow, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !79
  %75 = getelementptr inbounds %struct.bScreen, ptr %74, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !80
  %77 = icmp eq ptr %76, %6
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.bScreen, ptr %74, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !78
  %81 = icmp eq ptr %80, null
  br i1 %81, label %100, label %82

82:                                               ; preds = %78, %97
  %83 = phi ptr [ %98, %97 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.ScrArea, ptr %83, i64 0, i32 8
  %85 = load i8, ptr %84, align 8, !tbaa !76
  %86 = icmp eq i8 %85, 6
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ScrArea, ptr %83, i64 0, i32 19
  %89 = load ptr, ptr %88, align 8, !tbaa !82
  %90 = getelementptr inbounds %struct.SpaceImage, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !83
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.Image, ptr %91, i64 0, i32 12
  %95 = load i16, ptr %94, align 2, !tbaa !89
  %96 = icmp eq i16 %95, 4
  br i1 %96, label %103, label %97

97:                                               ; preds = %93, %87, %82
  %98 = load ptr, ptr %83, align 8, !tbaa !78
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %82, !llvm.loop !91

100:                                              ; preds = %97, %78, %71
  %101 = load ptr, ptr %72, align 8, !tbaa !78
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %71, !llvm.loop !94

103:                                              ; preds = %100, %93, %66
  %104 = phi ptr [ %69, %66 ], [ %72, %93 ], [ %101, %100 ]
  %105 = phi ptr [ null, %66 ], [ %83, %93 ], [ null, %100 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  %108 = call ptr @CTX_wm_screen(ptr noundef %0) #5
  %109 = getelementptr inbounds %struct.bScreen, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !78
  %111 = icmp eq ptr %110, null
  br i1 %111, label %126, label %112

112:                                              ; preds = %107, %123
  %113 = phi ptr [ %124, %123 ], [ %110, %107 ]
  %114 = getelementptr inbounds %struct.ScrArea, ptr %113, i64 0, i32 8
  %115 = load i8, ptr %114, align 8, !tbaa !76
  %116 = icmp eq i8 %115, 6
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.ScrArea, ptr %113, i64 0, i32 19
  %119 = load ptr, ptr %118, align 8, !tbaa !82
  %120 = getelementptr inbounds %struct.SpaceImage, ptr %119, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !83
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %117, %112
  %124 = load ptr, ptr %113, align 8, !tbaa !78
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %112, !llvm.loop !95

126:                                              ; preds = %123, %117, %107, %103
  %127 = phi ptr [ %105, %103 ], [ %110, %107 ], [ %113, %117 ], [ %124, %123 ]
  %128 = icmp eq ptr %104, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = call ptr @CTX_wm_window(ptr noundef %0) #5
  %131 = icmp eq ptr %104, %130
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  call void @wm_window_raise(ptr noundef nonnull %104) #5
  br label %133

133:                                              ; preds = %132, %129, %126
  %134 = icmp eq ptr %127, null
  br i1 %134, label %135, label %192

135:                                              ; preds = %133
  %136 = call ptr @CTX_wm_screen(ptr noundef %0) #5
  %137 = getelementptr inbounds %struct.bScreen, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !78
  %139 = icmp eq ptr %138, null
  br i1 %139, label %175, label %140

140:                                              ; preds = %135, %168
  %141 = phi ptr [ %173, %168 ], [ %138, %135 ]
  %142 = phi i16 [ %172, %168 ], [ 0, %135 ]
  %143 = phi i32 [ %171, %168 ], [ 0, %135 ]
  %144 = phi i32 [ %170, %168 ], [ 0, %135 ]
  %145 = phi ptr [ %169, %168 ], [ null, %135 ]
  %146 = getelementptr inbounds %struct.ScrArea, ptr %141, i64 0, i32 10
  %147 = load i16, ptr %146, align 2, !tbaa !96
  %148 = sext i16 %147 to i32
  %149 = icmp sgt i16 %147, 30
  br i1 %149, label %150, label %168

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.ScrArea, ptr %141, i64 0, i32 11
  %152 = load i16, ptr %151, align 4, !tbaa !97
  %153 = icmp sgt i16 %152, 30
  br i1 %153, label %154, label %168

154:                                              ; preds = %150
  %155 = zext nneg i16 %152 to i32
  %156 = mul nuw nsw i32 %155, %148
  %157 = getelementptr inbounds %struct.ScrArea, ptr %141, i64 0, i32 8
  %158 = load i8, ptr %157, align 8, !tbaa !76
  switch i8 %158, label %165 [
    i8 4, label %159
    i8 6, label %168
  ]

159:                                              ; preds = %154
  %160 = icmp eq i16 %142, 0
  %161 = icmp sgt i32 %156, %143
  %162 = select i1 %160, i1 %161, i1 false
  %163 = select i1 %162, ptr %141, ptr %145
  %164 = select i1 %162, i32 %156, i32 %143
  br label %168

165:                                              ; preds = %154
  %166 = icmp sgt i32 %156, %144
  br i1 %166, label %167, label %168

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %167, %165, %159, %154, %150, %140
  %169 = phi ptr [ %141, %167 ], [ %145, %165 ], [ %145, %150 ], [ %145, %140 ], [ %145, %154 ], [ %163, %159 ]
  %170 = phi i32 [ %156, %167 ], [ %144, %165 ], [ %144, %150 ], [ %144, %140 ], [ %144, %154 ], [ %144, %159 ]
  %171 = phi i32 [ %143, %167 ], [ %143, %165 ], [ %143, %150 ], [ %143, %140 ], [ %143, %154 ], [ %164, %159 ]
  %172 = phi i16 [ 1, %167 ], [ %142, %165 ], [ %142, %150 ], [ %142, %140 ], [ %142, %154 ], [ %142, %159 ]
  %173 = load ptr, ptr %141, align 8, !tbaa !78
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %140, !llvm.loop !98

175:                                              ; preds = %168, %135
  %176 = phi ptr [ null, %135 ], [ %169, %168 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  call void @ED_area_newspace(ptr noundef %0, ptr noundef nonnull %176, i32 noundef 6) #5
  br label %185

179:                                              ; preds = %175
  %180 = call ptr @CTX_wm_screen(ptr noundef %0) #5
  %181 = call ptr @BKE_screen_find_big_area(ptr noundef %180, i32 noundef -1, i16 noundef signext 0) #5
  %182 = getelementptr inbounds %struct.ScrArea, ptr %181, i64 0, i32 8
  %183 = load i8, ptr %182, align 8, !tbaa !76
  %184 = icmp eq i8 %183, 6
  br i1 %184, label %192, label %185

185:                                              ; preds = %179, %178
  %186 = phi ptr [ %176, %178 ], [ %181, %179 ]
  %187 = getelementptr inbounds %struct.ScrArea, ptr %186, i64 0, i32 19
  %188 = load ptr, ptr %187, align 8, !tbaa !82
  %189 = getelementptr inbounds %struct.SpaceImage, ptr %188, i64 0, i32 4
  %190 = load i32, ptr %189, align 4, !tbaa !99
  %191 = or i32 %190, 32768
  store i32 %191, ptr %189, align 4, !tbaa !99
  br label %192

192:                                              ; preds = %185, %133, %179, %62
  %193 = phi ptr [ %64, %62 ], [ %181, %179 ], [ %127, %133 ], [ %186, %185 ]
  %194 = getelementptr inbounds %struct.ScrArea, ptr %193, i64 0, i32 19
  %195 = load ptr, ptr %194, align 8, !tbaa !82
  %196 = call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str) #5
  %197 = getelementptr inbounds %struct.SpaceImage, ptr %195, i64 0, i32 5
  store ptr %196, ptr %197, align 8, !tbaa !83
  %198 = getelementptr inbounds %struct.ScrArea, ptr %193, i64 0, i32 6
  %199 = load ptr, ptr %198, align 8, !tbaa !100
  %200 = icmp eq ptr %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.SpaceImage, ptr %195, i64 0, i32 4
  %203 = load i32, ptr %202, align 4, !tbaa !99
  %204 = or i32 %203, 65536
  store i32 %204, ptr %202, align 4, !tbaa !99
  br i1 %63, label %205, label %207

205:                                              ; preds = %201
  %206 = or i32 %203, 98304
  store i32 %206, ptr %202, align 4, !tbaa !99
  br label %207

207:                                              ; preds = %192, %201, %205, %3
  %208 = phi ptr [ null, %3 ], [ %193, %205 ], [ %193, %201 ], [ %193, %192 ]
  ret ptr %208
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @WM_window_open_temp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @ED_screen_full_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @wm_window_raise(ptr noundef) local_unnamed_addr #2

declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RENDER_OT_view_cancel(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_view_cancel_exec, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_image_active, ptr %5, align 8, !tbaa !107
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @render_view_cancel_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #5
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 10
  %8 = load i16, ptr %7, align 2, !tbaa !108
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @wm_window_lower(ptr noundef %3) #5
  br label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = and i32 %15, 32768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = and i32 %15, -32769
  store i32 %19, ptr %14, align 4, !tbaa !99
  %20 = and i32 %15, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %15, -98305
  store i32 %23, ptr %14, align 4, !tbaa !99
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef %4) #5
  br label %31

24:                                               ; preds = %18
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef %4) #5
  br label %31

25:                                               ; preds = %11
  %26 = and i32 %15, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = and i32 %15, -98305
  store i32 %29, ptr %14, align 4, !tbaa !99
  %30 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef %4, i16 noundef signext 1) #5
  br label %31

31:                                               ; preds = %25, %22, %24, %28, %10
  %32 = phi i32 [ 4, %10 ], [ 4, %28 ], [ 4, %24 ], [ 4, %22 ], [ 8, %25 ]
  ret i32 %32
}

declare i32 @ED_operator_image_active(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RENDER_OT_view_show(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !101
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @render_view_show_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !107
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @render_view_show_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 10
  %8 = load i16, ptr %7, align 2, !tbaa !108
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @wm_window_lower(ptr noundef %4) #5
  br label %119

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %13 = tail call ptr @CTX_wm_manager(ptr noundef %0) #5
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %11, %46
  %18 = phi ptr [ %47, %46 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = getelementptr inbounds %struct.bScreen, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = icmp eq ptr %22, %12
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.bScreen, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24, %43
  %29 = phi ptr [ %44, %43 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.ScrArea, ptr %29, i64 0, i32 8
  %31 = load i8, ptr %30, align 8, !tbaa !76
  %32 = icmp eq i8 %31, 6
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ScrArea, ptr %29, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !82
  %36 = getelementptr inbounds %struct.SpaceImage, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Image, ptr %37, i64 0, i32 12
  %41 = load i16, ptr %40, align 2, !tbaa !89
  %42 = icmp eq i16 %41, 4
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %33, %28
  %44 = load ptr, ptr %29, align 8, !tbaa !78
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %28, !llvm.loop !91

46:                                               ; preds = %43, %24, %17
  %47 = load ptr, ptr %18, align 8, !tbaa !78
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %17, !llvm.loop !94

49:                                               ; preds = %46, %39, %11
  %50 = phi ptr [ %15, %11 ], [ %18, %39 ], [ %47, %46 ]
  %51 = phi ptr [ null, %11 ], [ %29, %39 ], [ null, %46 ]
  %52 = tail call ptr @CTX_wm_manager(ptr noundef %0) #5
  %53 = getelementptr inbounds %struct.wmWindowManager, ptr %52, i64 0, i32 3
  %54 = icmp eq ptr %50, %4
  %55 = load ptr, ptr %53, align 8, !tbaa !78
  %56 = icmp eq ptr %55, null
  br i1 %56, label %80, label %57

57:                                               ; preds = %49, %76
  %58 = phi ptr [ %77, %76 ], [ %55, %49 ]
  %59 = getelementptr inbounds %struct.wmWindow, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !79
  %61 = getelementptr inbounds %struct.bScreen, ptr %60, i64 0, i32 10
  %62 = load i16, ptr %61, align 2, !tbaa !108
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.bScreen, ptr %60, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !110
  %67 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 8
  %68 = load i8, ptr %67, align 8, !tbaa !76
  %69 = icmp ne i8 %68, 6
  %70 = icmp ne ptr %58, %50
  %71 = or i1 %54, %70
  %72 = and i1 %69, %71
  br i1 %72, label %76, label %79

73:                                               ; preds = %57
  %74 = icmp ne ptr %58, %50
  %75 = or i1 %54, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %64
  %77 = load ptr, ptr %58, align 8, !tbaa !78
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %57, !llvm.loop !111

79:                                               ; preds = %73, %64
  tail call void @wm_window_raise(ptr noundef nonnull %58) #5
  br label %119

80:                                               ; preds = %76, %49
  %81 = icmp eq ptr %51, null
  br i1 %81, label %113, label %82

82:                                               ; preds = %80
  %83 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !112
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ScrArea, ptr %51, i64 0, i32 19
  %87 = load ptr, ptr %86, align 8, !tbaa !82
  %88 = getelementptr inbounds %struct.SpaceImage, ptr %87, i64 0, i32 4
  %89 = load i32, ptr %88, align 4, !tbaa !99
  %90 = and i32 %89, 32768
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %85
  %93 = and i32 %89, -32769
  store i32 %93, ptr %88, align 4, !tbaa !99
  %94 = and i32 %89, 65536
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = and i32 %89, -98305
  store i32 %97, ptr %88, align 4, !tbaa !99
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef nonnull %51) #5
  br label %119

98:                                               ; preds = %92
  %99 = load ptr, ptr %87, align 8, !tbaa !114
  %100 = icmp eq ptr %99, null
  br i1 %100, label %119, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.SpaceLink, ptr %99, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !115
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load ptr, ptr %99, align 8, !tbaa !117
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.SpaceLink, ptr %106, i64 0, i32 3
  %110 = load i32, ptr %109, align 8, !tbaa !115
  br label %111

111:                                              ; preds = %101, %105, %108
  %112 = phi i32 [ %110, %108 ], [ %103, %105 ], [ %103, %101 ]
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef nonnull %51, i32 noundef %112) #5
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %51) #5
  br label %119

113:                                              ; preds = %80
  %114 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %115 = load i32, ptr %114, align 4, !tbaa !118
  %116 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %117 = load i32, ptr %116, align 8, !tbaa !121
  %118 = tail call ptr @render_view_open(ptr noundef %0, i32 noundef %115, i32 noundef %117)
  br label %119

119:                                              ; preds = %79, %85, %98, %111, %96, %82, %113, %10
  ret i32 4
}

declare i32 @ED_operator_screenactive(ptr noundef) #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare void @wm_window_lower(ptr noundef) local_unnamed_addr #2

declare void @ED_screen_full_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_area_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_screen_state_toggle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !40, i64 792}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!35, !41, i64 764}
!63 = !{!35, !40, i64 758}
!64 = !{!35, !41, i64 768}
!65 = !{!66, !45, i64 10908}
!66 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !45, i64 8956, !45, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !45, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !67, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !45, i64 10904, !45, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !68, i64 10928}
!67 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!68 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !40, i64 24, !38, i64 26}
!69 = !{!70, !40, i64 104}
!70 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !41, i64 160, !41, i64 164, !37, i64 168, !42, i64 176, !42, i64 192, !42, i64 208, !42, i64 224, !42, i64 240}
!71 = !{!51, !41, i64 0}
!72 = !{!70, !40, i64 106}
!73 = !{!51, !41, i64 8}
!74 = !{!51, !41, i64 4}
!75 = !{!51, !41, i64 12}
!76 = !{!77, !38, i64 72}
!77 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !51, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!78 = !{!37, !37, i64 0}
!79 = !{!70, !37, i64 24}
!80 = !{!81, !37, i64 184}
!81 = !{!"bScreen", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !37, i64 184, !37, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !37, i64 232, !37, i64 240}
!82 = !{!77, !37, i64 96}
!83 = !{!84, !37, i64 40}
!84 = !{!"SpaceImage", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !41, i64 36, !37, i64 40, !85, i64 48, !37, i64 88, !86, i64 96, !87, i64 5360, !37, i64 10520, !38, i64 10528, !45, i64 10536, !45, i64 10540, !45, i64 10544, !45, i64 10548, !45, i64 10552, !38, i64 10556, !38, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !38, i64 10564, !38, i64 10565, !38, i64 10566, !38, i64 10567, !88, i64 10568}
!85 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!86 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !45, i64 12, !41, i64 16, !45, i64 20, !45, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !38, i64 40, !87, i64 64, !37, i64 5224, !37, i64 5232, !37, i64 5240, !37, i64 5248, !41, i64 5256, !41, i64 5260}
!87 = !{!"Histogram", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 3080, !38, i64 4104, !45, i64 5128, !45, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !38, i64 5144}
!88 = !{!"MaskSpaceInfo", !37, i64 0, !38, i64 8, !38, i64 9, !38, i64 10, !38, i64 11}
!89 = !{!90, !40, i64 1250}
!90 = !{!"Image", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !45, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !38, i64 1316, !38, i64 1317, !40, i64 1318, !38, i64 1320, !45, i64 1336, !45, i64 1340, !61, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !92, !93}
!95 = distinct !{!95, !92, !93}
!96 = !{!77, !40, i64 74}
!97 = !{!77, !40, i64 76}
!98 = distinct !{!98, !92, !93}
!99 = !{!84, !41, i64 36}
!100 = !{!77, !37, i64 48}
!101 = !{!102, !37, i64 0}
!102 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !103, i64 152, !40, i64 184}
!103 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!104 = !{!102, !37, i64 24}
!105 = !{!102, !37, i64 8}
!106 = !{!102, !37, i64 32}
!107 = !{!102, !37, i64 72}
!108 = !{!81, !40, i64 210}
!109 = !{!102, !37, i64 48}
!110 = !{!81, !37, i64 152}
!111 = distinct !{!111, !92, !93}
!112 = !{!113, !38, i64 2090}
!113 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!114 = !{!84, !37, i64 0}
!115 = !{!116, !41, i64 32}
!116 = !{!"SpaceLink", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !45, i64 36, !38, i64 40}
!117 = !{!116, !37, i64 0}
!118 = !{!119, !41, i64 20}
!119 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !120, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!120 = !{!"double", !38, i64 0}
!121 = !{!119, !41, i64 24}
