; ModuleID = 'blender/source/blender/editors/space_view3d/drawanimviz.c'
source_filename = "blender/source/blender/editors/space_view3d/drawanimviz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.bMotionPath = type { ptr, i32, i32, i32, i32 }
%struct.bMotionPathVert = type { [3 x float], i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @draw_motion_paths_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %6 = load i8, ptr %5, align 8, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @glDisable(i32 noundef 2929) #6
  br label %9

9:                                                ; preds = %8, %2
  tail call void @glPushMatrix() #6
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %10) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @draw_motion_path_instance(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [4 x i8], align 1
  %7 = alloca [32 x i8], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x i8], align 1
  %10 = alloca %struct.DLRBT_Tree, align 8
  %11 = alloca float, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [32 x i8], align 16
  %15 = getelementptr inbounds %struct.bAnimVizSettings, ptr %3, i64 0, i32 9
  %16 = load i16, ptr %15, align 2, !tbaa !48
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.bAnimVizSettings, ptr %3, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !50
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.bAnimVizSettings, ptr %3, i64 0, i32 14
  %25 = load i32, ptr %24, align 4, !tbaa !70
  %26 = sub nsw i32 %23, %25
  %27 = getelementptr inbounds %struct.bAnimVizSettings, ptr %3, i64 0, i32 15
  %28 = load i32, ptr %27, align 4, !tbaa !71
  %29 = add nsw i32 %28, %23
  br label %35

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.bAnimVizSettings, ptr %3, i64 0, i32 12
  %32 = load i32, ptr %31, align 4, !tbaa !72
  %33 = getelementptr inbounds %struct.bAnimVizSettings, ptr %3, i64 0, i32 13
  %34 = load i32, ptr %33, align 4, !tbaa !73
  br label %35

35:                                               ; preds = %30, %21
  %36 = phi i32 [ %29, %21 ], [ %34, %30 ]
  %37 = phi i32 [ %26, %21 ], [ %32, %30 ]
  %38 = getelementptr inbounds %struct.bMotionPath, ptr %4, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !74
  %40 = tail call i32 @llvm.smax.i32(i32 %37, i32 %39)
  %41 = getelementptr inbounds %struct.bMotionPath, ptr %4, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !76
  %43 = tail call i32 @llvm.smin.i32(i32 %36, i32 %42)
  %44 = icmp sgt i32 %40, %42
  %45 = icmp slt i32 %43, %39
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %277, label %47

47:                                               ; preds = %35
  %48 = sub nsw i32 %43, %40
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %277, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %4, align 8, !tbaa !77
  %52 = icmp eq ptr %51, null
  br i1 %52, label %277, label %53

53:                                               ; preds = %50
  %54 = sub nsw i32 %40, %39
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bMotionPathVert, ptr %51, i64 %55
  tail call void @glShadeModel(i32 noundef 7425) #6
  tail call void @glBegin(i32 noundef 3) #6
  %57 = icmp eq ptr %2, null
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %59 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %60 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  br label %61

61:                                               ; preds = %53, %107
  %62 = phi ptr [ %56, %53 ], [ %109, %107 ]
  %63 = phi i32 [ 0, %53 ], [ %108, %107 ]
  br i1 %57, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %58, align 8, !tbaa !78
  %66 = getelementptr inbounds %struct.Bone, ptr %65, i64 0, i32 10
  %67 = load i32, ptr %66, align 8, !tbaa !80
  %68 = and i32 %67, 1
  br label %73

69:                                               ; preds = %61
  %70 = load i16, ptr %59, align 4, !tbaa !82
  %71 = and i16 %70, 1
  %72 = zext nneg i16 %71 to i32
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i32 [ %68, %64 ], [ %72, %69 ]
  %75 = trunc i32 %74 to i16
  %76 = add nsw i32 %63, %40
  %77 = load i32, ptr %60, align 8, !tbaa !51
  %78 = sub nsw i32 %76, %77
  %79 = tail call i32 @llvm.abs.i32(i32 %78, i1 true)
  %80 = icmp eq i32 %79, 1
  %81 = select i1 %80, i32 49, i32 2
  %82 = icmp slt i32 %76, %77
  br i1 %82, label %83, label %93

83:                                               ; preds = %73
  %84 = icmp eq i16 %75, 0
  %85 = sub nsw i32 %77, %63
  %86 = sub nsw i32 %77, %40
  %87 = sdiv i32 %85, %86
  %88 = sitofp i32 %87 to float
  %89 = fsub float 1.000000e+00, %88
  %90 = tail call float @llvm.fmuladd.f32(float %89, float 5.000000e-01, float 2.500000e-01)
  %91 = tail call float @llvm.fmuladd.f32(float %89, float 0x3FCEB85200000000, float 0x3FE5C28F60000000)
  %92 = select i1 %84, float %91, float %90
  tail call void @UI_ThemeColorBlend(i32 noundef 25, i32 noundef %81, float noundef %92) #6
  br label %107

93:                                               ; preds = %73
  %94 = icmp sgt i32 %76, %77
  %95 = icmp eq i16 %75, 0
  br i1 %94, label %96, label %105

96:                                               ; preds = %93
  %97 = sub nsw i32 %43, %63
  %98 = sub nsw i32 %43, %77
  %99 = sdiv i32 %97, %98
  %100 = sitofp i32 %99 to float
  %101 = fsub float 1.000000e+00, %100
  %102 = tail call float @llvm.fmuladd.f32(float %101, float 5.000000e-01, float 2.500000e-01)
  %103 = tail call float @llvm.fmuladd.f32(float %101, float 0x3FCEB85200000000, float 0x3FE5C28F60000000)
  %104 = select i1 %95, float %103, float %102
  tail call void @UI_ThemeColorBlend(i32 noundef 75, i32 noundef %81, float noundef %104) #6
  br label %107

105:                                              ; preds = %93
  %106 = select i1 %95, float 0x3FEFAE1480000000, float 5.000000e-01
  tail call void @UI_ThemeColorBlendShade(i32 noundef 49, i32 noundef 2, float noundef %106, i32 noundef 10) #6
  br label %107

107:                                              ; preds = %96, %105, %83
  tail call void @glVertex3fv(ptr noundef %62) #6
  %108 = add nuw nsw i32 %63, 1
  %109 = getelementptr inbounds %struct.bMotionPathVert, ptr %62, i64 1
  %110 = icmp eq i32 %108, %48
  br i1 %110, label %111, label %61, !llvm.loop !84

111:                                              ; preds = %107
  tail call void @glEnd() #6
  tail call void @glShadeModel(i32 noundef 7424) #6
  tail call void @glPointSize(float noundef 1.000000e+00) #6
  tail call void @glBegin(i32 noundef 0) #6
  %112 = tail call i32 @llvm.smax.i32(i32 %48, i32 1)
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi ptr [ %117, %113 ], [ %56, %111 ]
  %115 = phi i32 [ %116, %113 ], [ 0, %111 ]
  tail call void @glVertex3fv(ptr noundef %114) #6
  %116 = add nuw nsw i32 %115, 1
  %117 = getelementptr inbounds %struct.bMotionPathVert, ptr %114, i64 1
  %118 = icmp eq i32 %116, %112
  br i1 %118, label %119, label %113, !llvm.loop !87

119:                                              ; preds = %113
  tail call void @glEnd() #6
  tail call void @UI_ThemeColor(i32 noundef 4) #6
  tail call void @glBegin(i32 noundef 0) #6
  %120 = sext i16 %16 to i64
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi ptr [ %56, %119 ], [ %125, %121 ]
  %123 = phi i32 [ 0, %119 ], [ %124, %121 ]
  tail call void @glVertex3fv(ptr noundef %122) #6
  %124 = add nsw i32 %123, %17
  %125 = getelementptr inbounds %struct.bMotionPathVert, ptr %122, i64 %120
  %126 = icmp slt i32 %124, %48
  br i1 %126, label %121, label %127, !llvm.loop !88

127:                                              ; preds = %121
  tail call void @glEnd() #6
  %128 = getelementptr inbounds %struct.bAnimVizSettings, ptr %3, i64 0, i32 10
  %129 = load i16, ptr %128, align 4, !tbaa !89
  %130 = and i16 %129, 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %134 = load i32, ptr %133, align 8, !tbaa !51
  %135 = icmp sge i32 %40, %134
  %136 = icmp sgt i32 %134, %43
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %132
  tail call void @UI_ThemeColor(i32 noundef 49) #6
  tail call void @glPointSize(float noundef 6.000000e+00) #6
  tail call void @glBegin(i32 noundef 0) #6
  %139 = load i32, ptr %133, align 8, !tbaa !51
  %140 = sub nsw i32 %139, %40
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.bMotionPathVert, ptr %56, i64 %141
  tail call void @glVertex3fv(ptr noundef nonnull %142) #6
  tail call void @glEnd() #6
  tail call void @glPointSize(float noundef 1.000000e+00) #6
  tail call void @UI_ThemeColor(i32 noundef 4) #6
  br label %143

143:                                              ; preds = %138, %132, %127
  %144 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %145 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %146 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %144, ptr noundef nonnull %145) #6
  %147 = load i16, ptr %128, align 4, !tbaa !89
  %148 = and i16 %147, 1
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %218, label %150

150:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @UI_GetThemeColor3ubv(i32 noundef 4, ptr noundef nonnull %6) #6
  %151 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  store i8 -1, ptr %151, align 1, !tbaa !90
  %152 = sub nsw i32 %48, %17
  %153 = sext i16 %16 to i64
  %154 = sub nsw i64 0, %153
  %155 = sext i16 %16 to i64
  br label %156

156:                                              ; preds = %150, %213
  %157 = phi ptr [ %56, %150 ], [ %215, %213 ]
  %158 = phi i32 [ 0, %150 ], [ %214, %213 ]
  %159 = add nsw i32 %158, %40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  %160 = icmp eq i32 %158, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %159) #6
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %144, ptr noundef %157) #6
  br label %210

163:                                              ; preds = %156
  %164 = icmp sge i32 %158, %17
  %165 = icmp slt i32 %158, %152
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %213

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.bMotionPathVert, ptr %157, i64 %154
  %169 = load float, ptr %157, align 4, !tbaa !91
  %170 = load float, ptr %168, align 4, !tbaa !91
  %171 = fcmp oeq float %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = getelementptr inbounds float, ptr %157, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !91
  %175 = getelementptr inbounds float, ptr %168, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !91
  %177 = fcmp oeq float %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = getelementptr inbounds float, ptr %157, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !91
  %181 = getelementptr inbounds float, ptr %168, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !91
  %183 = fcmp oeq float %180, %182
  %184 = zext i1 %183 to i8
  br label %185

185:                                              ; preds = %167, %172, %178
  %186 = phi i8 [ 0, %172 ], [ 0, %167 ], [ %184, %178 ]
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.bMotionPathVert, ptr %157, i64 %153
  %190 = load float, ptr %189, align 4, !tbaa !91
  %191 = fcmp oeq float %169, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = getelementptr inbounds float, ptr %157, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !91
  %195 = getelementptr inbounds float, ptr %189, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !91
  %197 = fcmp oeq float %194, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %192
  %199 = getelementptr inbounds float, ptr %157, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !91
  %201 = getelementptr inbounds float, ptr %189, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !91
  %203 = fcmp oeq float %200, %202
  %204 = zext i1 %203 to i8
  br label %205

205:                                              ; preds = %188, %192, %198
  %206 = phi i8 [ 0, %192 ], [ 0, %188 ], [ %204, %198 ]
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205, %185
  %209 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %159) #6
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %144, ptr noundef nonnull %157) #6
  br label %210

210:                                              ; preds = %161, %208
  %211 = phi i32 [ %209, %208 ], [ %162, %161 ]
  %212 = sext i32 %211 to i64
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef %212, i16 noundef signext 0, i16 noundef signext 6, ptr noundef nonnull %6) #6
  br label %213

213:                                              ; preds = %210, %205, %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #6
  %214 = add nsw i32 %158, %17
  %215 = getelementptr inbounds %struct.bMotionPathVert, ptr %157, i64 %155
  %216 = icmp slt i32 %214, %48
  br i1 %216, label %156, label %217, !llvm.loop !92

217:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %218

218:                                              ; preds = %217, %143
  %219 = load i16, ptr %128, align 4, !tbaa !89
  %220 = and i16 %219, 2
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %277, label %222

222:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  %223 = call ptr @BKE_animdata_from_id(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #6
  call void @BLI_dlrbTree_init(ptr noundef nonnull %10) #6
  %224 = icmp eq ptr %223, null
  br i1 %224, label %240, label %225

225:                                              ; preds = %222
  %226 = icmp eq ptr %2, null
  br i1 %226, label %237, label %227

227:                                              ; preds = %225
  %228 = load i16, ptr %128, align 4, !tbaa !89
  %229 = and i16 %228, 8
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = load ptr, ptr %223, align 8, !tbaa !93
  %233 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 4
  %234 = call ptr @BKE_action_group_find_name(ptr noundef %232, ptr noundef nonnull %233) #6
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  call void @agroup_to_keylist(ptr noundef nonnull %223, ptr noundef nonnull %234, ptr noundef nonnull %10, ptr noundef null) #6
  br label %239

237:                                              ; preds = %227, %225
  %238 = load ptr, ptr %223, align 8, !tbaa !93
  call void @action_to_keylist(ptr noundef nonnull %223, ptr noundef %238, ptr noundef nonnull %10, ptr noundef null) #6
  br label %239

239:                                              ; preds = %237, %236
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %10) #6
  br label %240

240:                                              ; preds = %239, %231, %222
  call void @UI_GetThemeColor3ubv(i32 noundef 34, ptr noundef nonnull %9) #6
  %241 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  store i8 -1, ptr %241, align 1, !tbaa !90
  call void @glPointSize(float noundef 4.000000e+00) #6
  call void @glColor3ubv(ptr noundef nonnull %9) #6
  call void @glBegin(i32 noundef 0) #6
  %242 = call i32 @llvm.smax.i32(i32 %48, i32 1)
  br label %243

243:                                              ; preds = %240, %251
  %244 = phi ptr [ %253, %251 ], [ %56, %240 ]
  %245 = phi i32 [ %252, %251 ], [ 0, %240 ]
  %246 = add nsw i32 %245, %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  %247 = sitofp i32 %246 to float
  store float %247, ptr %11, align 4, !tbaa !91
  %248 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %10, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %11) #6
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %243
  call void @glVertex3fv(ptr noundef %244) #6
  br label %251

251:                                              ; preds = %250, %243
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  %252 = add nuw nsw i32 %245, 1
  %253 = getelementptr inbounds %struct.bMotionPathVert, ptr %244, i64 1
  %254 = icmp eq i32 %252, %242
  br i1 %254, label %255, label %243, !llvm.loop !95

255:                                              ; preds = %251
  call void @glEnd() #6
  call void @glPointSize(float noundef 1.000000e+00) #6
  %256 = load i16, ptr %128, align 4, !tbaa !89
  %257 = and i16 %256, 4
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %276, label %259

259:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #6
  %260 = call i32 @llvm.smax.i32(i32 %48, i32 1)
  br label %261

261:                                              ; preds = %259, %271
  %262 = phi ptr [ %273, %271 ], [ %56, %259 ]
  %263 = phi i32 [ %272, %271 ], [ 0, %259 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  %264 = add nsw i32 %263, %40
  %265 = sitofp i32 %264 to float
  store float %265, ptr %13, align 4, !tbaa !91
  %266 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %10, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %13) #6
  %267 = icmp eq ptr %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #6
  %269 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %264) #6
  %270 = sext i32 %269 to i64
  call void @mul_v3_m4v3(ptr noundef nonnull %12, ptr noundef nonnull %144, ptr noundef %262) #6
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %12, ptr noundef nonnull %14, i64 noundef %270, i16 noundef signext 0, i16 noundef signext 6, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #6
  br label %271

271:                                              ; preds = %268, %261
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  %272 = add nuw nsw i32 %263, 1
  %273 = getelementptr inbounds %struct.bMotionPathVert, ptr %262, i64 1
  %274 = icmp eq i32 %272, %260
  br i1 %274, label %275, label %261, !llvm.loop !96

275:                                              ; preds = %271
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #6
  br label %276

276:                                              ; preds = %275, %255
  call void @BLI_dlrbTree_free(ptr noundef nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  br label %277

277:                                              ; preds = %218, %276, %47, %50, %35
  ret void
}

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_cached_text_draw_add(ptr noundef, ptr noundef, i64 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_action_group_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @agroup_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #2

declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_dlrbTree_search_exact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @compare_ak_cfraPtr(ptr noundef, ptr noundef) #2

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_motion_paths_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %3 = load i8, ptr %2, align 8, !tbaa !46
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @glEnable(i32 noundef 2929) #6
  br label %6

6:                                                ; preds = %5, %1
  tail call void @glPopMatrix() #6
  ret void
}

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 376}
!35 = !{!"ARegion", !36, i64 0, !36, i64 8, !39, i64 16, !42, i64 176, !42, i64 192, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !41, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"View2D", !40, i64 0, !40, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !36, i64 128, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!40 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!43 = !{!"int", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!47, !37, i64 344}
!47 = !{!"View3D", !36, i64 0, !36, i64 8, !45, i64 16, !43, i64 32, !41, i64 36, !37, i64 40, !37, i64 56, !41, i64 72, !41, i64 76, !37, i64 80, !37, i64 81, !43, i64 84, !43, i64 88, !44, i64 92, !44, i64 94, !36, i64 96, !36, i64 104, !40, i64 112, !45, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !43, i64 224, !43, i64 228, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !44, i64 240, !44, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !37, i64 260, !37, i64 272, !44, i64 284, !44, i64 286, !44, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!48 = !{!49, !44, i64 26}
!49 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!50 = !{!49, !44, i64 24}
!51 = !{!52, !43, i64 680}
!52 = !{!"Scene", !53, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !44, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !54, i64 280, !61, i64 4264, !45, i64 4296, !45, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !44, i64 4376, !44, i64 4378, !43, i64 4380, !45, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !36, i64 4608, !67, i64 4616, !36, i64 4640, !68, i64 4648, !68, i64 4656, !56, i64 4664, !57, i64 4824, !69, i64 4888, !36, i64 4952}
!53 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!54 = !{!"RenderData", !55, i64 0, !36, i64 248, !36, i64 256, !58, i64 264, !59, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !41, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !44, i64 432, !44, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !43, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !43, i64 484, !43, i64 488, !44, i64 492, !44, i64 494, !43, i64 496, !43, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !40, i64 544, !40, i64 560, !42, i64 576, !45, i64 592, !44, i64 608, !44, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !43, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !41, i64 660, !41, i64 664, !44, i64 668, !44, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !43, i64 1704, !44, i64 1708, !44, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !44, i64 2524, !44, i64 2526, !41, i64 2528, !41, i64 2532, !44, i64 2536, !44, i64 2538, !41, i64 2540, !44, i64 2544, !44, i64 2546, !43, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !43, i64 2576, !41, i64 2580, !37, i64 2584, !60, i64 2616, !43, i64 3976, !43, i64 3980}
!55 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !44, i64 8, !44, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !56, i64 24, !57, i64 184}
!56 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!57 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!58 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !44, i64 48, !44, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!59 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!60 = !{!"BakeData", !55, i64 0, !37, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!61 = !{!"AudioData", !43, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !43, i64 16, !44, i64 20, !44, i64 22, !41, i64 24, !41, i64 28}
!62 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!63 = !{!"GameData", !62, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !37, i64 34, !64, i64 40, !44, i64 64, !44, i64 66, !41, i64 68, !65, i64 72, !41, i64 128, !41, i64 132, !43, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!64 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!65 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !43, i64 40, !41, i64 44, !41, i64 48, !44, i64 52, !44, i64 54}
!66 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !44, i64 6}
!67 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!68 = !{!"long", !37, i64 0}
!69 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!70 = !{!49, !43, i64 40}
!71 = !{!49, !43, i64 44}
!72 = !{!49, !43, i64 32}
!73 = !{!49, !43, i64 36}
!74 = !{!75, !43, i64 12}
!75 = !{!"bMotionPath", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20}
!76 = !{!75, !43, i64 16}
!77 = !{!75, !36, i64 0}
!78 = !{!79, !36, i64 120}
!79 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !37, i64 40, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !45, i64 144, !45, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !41, i64 264, !44, i64 268, !44, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !41, i64 524, !41, i64 528, !41, i64 532, !36, i64 536}
!80 = !{!81, !43, i64 176}
!81 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !45, i64 32, !37, i64 48, !41, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !43, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !37, i64 308, !43, i64 320, !44, i64 324, !37, i64 326}
!82 = !{!83, !44, i64 948}
!83 = !{!"Object", !53, i64 0, !36, i64 120, !36, i64 128, !44, i64 136, !44, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !49, i64 312, !36, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !37, i64 1042, !37, i64 1043, !44, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !41, i64 1120, !44, i64 1124, !44, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !44, i64 1162, !37, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !44, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !68, i64 1304, !68, i64 1312, !43, i64 1320, !43, i64 1324, !45, i64 1328, !45, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !45, i64 1400, !36, i64 1416}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !85, !86}
!88 = distinct !{!88, !85, !86}
!89 = !{!49, !44, i64 28}
!90 = !{!37, !37, i64 0}
!91 = !{!41, !41, i64 0}
!92 = distinct !{!92, !85, !86}
!93 = !{!94, !36, i64 0}
!94 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !36, i64 40, !45, i64 48, !45, i64 64, !43, i64 80, !43, i64 84, !44, i64 88, !44, i64 90, !41, i64 92}
!95 = distinct !{!95, !85, !86}
!96 = distinct !{!96, !85, !86}
