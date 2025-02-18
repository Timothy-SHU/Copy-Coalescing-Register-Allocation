; ModuleID = 'blender/source/blender/blenloader/intern/versioning_defaults.c'
source_filename = "blender/source/blender/blenloader/intern/versioning_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Sculpt = type { %struct.Paint, i32, [3 x i32], float, i32, float, float, ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLO_update_defaults_userpref_blend() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !34
  %2 = or i32 %1, 1090520064
  store i32 %2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !34
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 18), align 4, !tbaa !45
  store i32 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLO_update_defaults_startup_blend(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1, %34
  %6 = phi ptr [ %35, %34 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 0, i32 2
  store i8 32, ptr %7, align 2, !tbaa !48
  %8 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 0, i32 5
  store i8 15, ptr %8, align 1, !tbaa !69
  %9 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 60
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %5 ]
  %14 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 13, i32 4
  store float 0x3FB99999A0000000, ptr %14, align 4, !tbaa !70
  %15 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 12
  store float 5.000000e-01, ptr %15, align 4, !tbaa !73
  %16 = load ptr, ptr %13, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %12, !llvm.loop !74

18:                                               ; preds = %12, %5
  %19 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Paint, ptr %24, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !85
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !85
  %30 = getelementptr inbounds %struct.Sculpt, ptr %24, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !87
  %32 = or i32 %31, 2048
  store i32 %32, ptr %30, align 8, !tbaa !87
  %33 = getelementptr inbounds %struct.Sculpt, ptr %24, i64 0, i32 3
  store float 1.200000e+01, ptr %33, align 8, !tbaa !88
  br label %34

34:                                               ; preds = %22, %26, %18
  %35 = load ptr, ptr %6, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %5, !llvm.loop !89

37:                                               ; preds = %34, %1
  %38 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %48, %41 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %42, i64 0, i32 9
  store i32 10242, ptr %43, align 4, !tbaa !90
  %44 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %42, i64 0, i32 25
  store i32 1, ptr %44, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %42, i64 0, i32 26
  store i32 1, ptr %45, align 4, !tbaa !93
  %46 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %42, i64 0, i32 27
  store float 1.000000e+00, ptr %46, align 8, !tbaa !94
  %47 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %42, i64 0, i32 18
  store i32 10, ptr %47, align 8, !tbaa !95
  %48 = load ptr, ptr %42, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %41, !llvm.loop !96

50:                                               ; preds = %41, %37
  %51 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = icmp eq ptr %52, null
  br i1 %53, label %91, label %57

54:                                               ; preds = %62, %57
  %55 = load ptr, ptr %58, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %91, label %57, !llvm.loop !97

57:                                               ; preds = %50, %54
  %58 = phi ptr [ %55, %54 ], [ %52, %50 ]
  %59 = getelementptr inbounds %struct.bScreen, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = icmp eq ptr %60, null
  br i1 %61, label %54, label %65

62:                                               ; preds = %86, %82
  %63 = load ptr, ptr %66, align 8, !tbaa !47
  %64 = icmp eq ptr %63, null
  br i1 %64, label %54, label %65, !llvm.loop !98

65:                                               ; preds = %57, %62
  %66 = phi ptr [ %63, %62 ], [ %60, %57 ]
  %67 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = icmp eq ptr %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %65, %79
  %71 = phi ptr [ %80, %79 ], [ %68, %65 ]
  %72 = getelementptr inbounds %struct.SpaceLink, ptr %71, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !99
  %74 = icmp eq i32 %73, 20
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.SpaceClip, ptr %71, i64 0, i32 12
  %77 = load i32, ptr %76, align 8, !tbaa !101
  %78 = and i32 %77, -2049
  store i32 %78, ptr %76, align 8, !tbaa !101
  br label %79

79:                                               ; preds = %70, %75
  %80 = load ptr, ptr %71, align 8, !tbaa !47
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %70, !llvm.loop !107

82:                                               ; preds = %79, %65
  %83 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 20
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  %85 = icmp eq ptr %84, null
  br i1 %85, label %62, label %86

86:                                               ; preds = %82, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.ARegion, ptr %87, i64 0, i32 22
  tail call void @BLI_freelistN(ptr noundef nonnull %88) #3
  %89 = load ptr, ptr %87, align 8, !tbaa !47
  %90 = icmp eq ptr %89, null
  br i1 %90, label %62, label %86, !llvm.loop !108

91:                                               ; preds = %54, %50
  %92 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %93 = load ptr, ptr %92, align 8, !tbaa !47
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %91, %95
  %96 = phi ptr [ %101, %95 ], [ %93, %91 ]
  %97 = getelementptr inbounds %struct.Mesh, ptr %96, i64 0, i32 39
  store float 0x400921FB60000000, ptr %97, align 8, !tbaa !109
  %98 = getelementptr inbounds %struct.Mesh, ptr %96, i64 0, i32 38
  %99 = load i16, ptr %98, align 2, !tbaa !112
  %100 = and i16 %99, -5
  store i16 %100, ptr %98, align 2, !tbaa !112
  %101 = load ptr, ptr %96, align 8, !tbaa !47
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95, !llvm.loop !113

103:                                              ; preds = %95, %91
  %104 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %105 = load ptr, ptr %104, align 8, !tbaa !47
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %113, %107 ], [ %105, %103 ]
  %109 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 128
  %110 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 128, i64 2
  store float 0.000000e+00, ptr %110, align 8, !tbaa !114
  %111 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 128, i64 1
  store float 0.000000e+00, ptr %111, align 4, !tbaa !114
  store float 0.000000e+00, ptr %109, align 8, !tbaa !114
  %112 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 128, i64 3
  store float 1.000000e+00, ptr %112, align 4, !tbaa !114
  %113 = load ptr, ptr %108, align 8, !tbaa !47
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %107, !llvm.loop !115

115:                                              ; preds = %107, %103
  %116 = tail call ptr @BKE_brush_add(ptr noundef %0, ptr noundef nonnull @.str) #3
  %117 = getelementptr inbounds %struct.Brush, ptr %116, i64 0, i32 36
  store i8 4, ptr %117, align 2, !tbaa !116
  %118 = getelementptr inbounds %struct.Brush, ptr %116, i64 0, i32 13
  store i16 16, ptr %118, align 2, !tbaa !120
  %119 = tail call ptr @BKE_libblock_find_name_ex(ptr noundef %0, i16 noundef signext 21058, ptr noundef nonnull @.str.1) #3
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.Brush, ptr %119, i64 0, i32 36
  store i8 5, ptr %122, align 2, !tbaa !116
  %123 = getelementptr inbounds %struct.Brush, ptr %119, i64 0, i32 13
  %124 = load i16, ptr %123, align 2, !tbaa !120
  %125 = or i16 %124, 16
  store i16 %125, ptr %123, align 2, !tbaa !120
  br label %126

126:                                              ; preds = %121, %115
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_brush_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_find_name_ex(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 8484}
!35 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !42, i64 8956, !42, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !42, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !43, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !42, i64 10904, !42, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !44, i64 10928}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!44 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 24, !37, i64 26}
!45 = !{!35, !39, i64 8476}
!46 = !{!35, !36, i64 16}
!47 = !{!41, !41, i64 0}
!48 = !{!49, !37, i64 282}
!49 = !{!"Scene", !50, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !51, i64 280, !60, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !61, i64 4400, !62, i64 4416, !65, i64 4600, !41, i64 4608, !66, i64 4616, !41, i64 4640, !67, i64 4648, !67, i64 4656, !53, i64 4664, !54, i64 4824, !68, i64 4888, !41, i64 4952}
!50 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!51 = !{!"RenderData", !52, i64 0, !41, i64 248, !41, i64 256, !55, i64 264, !56, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !57, i64 544, !57, i64 560, !58, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !59, i64 2616, !36, i64 3976, !36, i64 3980}
!52 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !53, i64 24, !54, i64 184}
!53 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!54 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!55 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!56 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!57 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!58 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!59 = !{!"BakeData", !52, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!60 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!61 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!62 = !{!"GameData", !61, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !63, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !64, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!63 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!64 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!65 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!66 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!67 = !{!"long", !37, i64 0}
!68 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!69 = !{!49, !37, i64 285}
!70 = !{!71, !42, i64 156}
!71 = !{!"SceneRenderLayer", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !42, i64 124, !72, i64 128}
!72 = !{!"FreestyleConfig", !40, i64 0, !36, i64 16, !36, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40}
!73 = !{!71, !42, i64 124}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!49, !41, i64 264}
!78 = !{!79, !41, i64 16}
!79 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !42, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !80, i64 64, !82, i64 168, !42, i64 336, !42, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !42, i64 472, !42, i64 476, !83, i64 480, !84, i64 608}
!80 = !{!"ImagePaintSettings", !81, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !42, i64 100}
!81 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!82 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !42, i64 128, !42, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!83 = !{!"UnifiedPaintSettings", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !42, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !42, i64 72, !37, i64 76, !36, i64 84, !42, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !42, i64 120, !36, i64 124}
!84 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !37, i64 20, !37, i64 21, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!85 = !{!86, !36, i64 36}
!86 = !{!"Sculpt", !81, i64 0, !36, i64 40, !37, i64 44, !42, i64 56, !36, i64 60, !42, i64 64, !42, i64 68, !41, i64 72, !41, i64 80}
!87 = !{!86, !36, i64 40}
!88 = !{!86, !42, i64 56}
!89 = distinct !{!89, !75, !76}
!90 = !{!91, !36, i64 156}
!91 = !{!"FreestyleLineStyle", !50, i64 0, !41, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !36, i64 148, !42, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !36, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !36, i64 208, !36, i64 212, !42, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !36, i64 244, !37, i64 248, !41, i64 392, !40, i64 400, !40, i64 416, !40, i64 432, !40, i64 448}
!92 = !{!91, !36, i64 208}
!93 = !{!91, !36, i64 212}
!94 = !{!91, !42, i64 216}
!95 = !{!91, !36, i64 192}
!96 = distinct !{!96, !75, !76}
!97 = distinct !{!97, !75, !76}
!98 = distinct !{!98, !75, !76}
!99 = !{!100, !36, i64 32}
!100 = !{!"SpaceLink", !41, i64 0, !41, i64 8, !40, i64 16, !36, i64 32, !42, i64 36, !37, i64 40}
!101 = !{!102, !36, i64 208}
!102 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !40, i64 16, !36, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !103, i64 56, !41, i64 64, !104, i64 72, !36, i64 208, !39, i64 212, !39, i64 214, !36, i64 216, !37, i64 220, !42, i64 228, !42, i64 232, !36, i64 236, !37, i64 240, !37, i64 304, !36, i64 368, !39, i64 372, !39, i64 374, !36, i64 376, !36, i64 380, !37, i64 384, !106, i64 392}
!103 = !{!"MovieClipUser", !36, i64 0, !39, i64 4, !39, i64 6}
!104 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 8, !36, i64 12, !105, i64 16, !41, i64 80, !41, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112, !41, i64 120, !37, i64 128}
!105 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!106 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!107 = distinct !{!107, !75, !76}
!108 = distinct !{!108, !75, !76}
!109 = !{!110, !42, i64 1352}
!110 = !{!"Mesh", !50, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !111, i64 280, !111, i64 480, !111, i64 680, !111, i64 880, !111, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !42, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!111 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!112 = !{!110, !39, i64 1350}
!113 = distinct !{!113, !75, !76}
!114 = !{!42, !42, i64 0}
!115 = distinct !{!115, !75, !76}
!116 = !{!117, !37, i64 1946}
!117 = !{!"Brush", !50, i64 0, !118, i64 120, !41, i64 144, !119, i64 152, !119, i64 464, !41, i64 776, !41, i64 784, !41, i64 792, !41, i64 800, !41, i64 808, !37, i64 816, !42, i64 1840, !39, i64 1844, !39, i64 1846, !42, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !42, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !42, i64 1884, !42, i64 1888, !37, i64 1892, !42, i64 1904, !37, i64 1908, !36, i64 1920, !42, i64 1924, !42, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !42, i64 1948, !42, i64 1952, !42, i64 1956, !42, i64 1960, !42, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !42, i64 1980, !42, i64 1984, !36, i64 1988, !36, i64 1992, !42, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!118 = !{!"BrushClone", !41, i64 0, !37, i64 8, !42, i64 16, !42, i64 20}
!119 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !42, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308}
!120 = !{!117, !39, i64 1846}
