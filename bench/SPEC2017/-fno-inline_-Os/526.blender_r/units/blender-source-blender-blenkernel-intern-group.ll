; ModuleID = 'blender/source/blender/blenkernel/intern/group.c'
source_filename = "blender/source/blender/blenkernel/intern/group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"groupobject\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_group_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call fastcc void @free_group_object(ptr noundef nonnull %6) #5
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !34

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_group_object(ptr noundef %0) unnamed_addr #0 !PGOFuncName !36 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %2(ptr noundef %0) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_group_unlink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %9

6:                                                ; preds = %15
  %7 = load ptr, ptr %3, align 8, !tbaa !37
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %18

9:                                                ; preds = %1, %15
  %10 = phi ptr [ %16, %15 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.Material, ptr %10, i64 0, i32 105
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store ptr null, ptr %11, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %9, %14
  %16 = load ptr, ptr %10, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %6, label %9, !llvm.loop !52

18:                                               ; preds = %6, %24
  %19 = phi ptr [ %25, %24 ], [ %7, %6 ]
  %20 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 105
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store ptr null, ptr %20, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %18, %23
  %25 = load ptr, ptr %19, align 8, !tbaa !37
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !53

27:                                               ; preds = %24, %1, %6
  %28 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %86, label %34

31:                                               ; preds = %64, %60
  %32 = load ptr, ptr %35, align 8, !tbaa !37
  %33 = icmp eq ptr %32, null
  br i1 %33, label %86, label %34, !llvm.loop !54

34:                                               ; preds = %27, %31
  %35 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.Scene, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !37
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %34, %57
  %40 = phi ptr [ %58, %57 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = tail call zeroext i8 @BKE_group_object_unlink(ptr noundef %0, ptr noundef %42, ptr noundef nonnull %35, ptr noundef nonnull %40) #5, !range !57
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %41, align 8, !tbaa !55
  %47 = tail call ptr @BKE_group_object_find(ptr noundef null, ptr noundef %46) #5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load ptr, ptr %41, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 53
  %52 = load i16, ptr %51, align 4, !tbaa !58
  %53 = and i16 %52, -4097
  store i16 %53, ptr %51, align 4, !tbaa !58
  %54 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !62
  %56 = and i32 %55, -4097
  store i32 %56, ptr %54, align 8, !tbaa !62
  br label %57

57:                                               ; preds = %39, %45, %49
  %58 = load ptr, ptr %40, align 8, !tbaa !37
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %39, !llvm.loop !63

60:                                               ; preds = %57, %34
  %61 = getelementptr inbounds %struct.Scene, ptr %35, i64 0, i32 22, i32 60
  %62 = load ptr, ptr %61, align 8, !tbaa !37
  %63 = icmp eq ptr %62, null
  br i1 %63, label %31, label %67

64:                                               ; preds = %83, %73
  %65 = load ptr, ptr %68, align 8, !tbaa !37
  %66 = icmp eq ptr %65, null
  br i1 %66, label %31, label %67, !llvm.loop !64

67:                                               ; preds = %60, %64
  %68 = phi ptr [ %65, %64 ], [ %62, %60 ]
  %69 = getelementptr inbounds %struct.SceneRenderLayer, ptr %68, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store ptr null, ptr %69, align 8, !tbaa !65
  br label %73

73:                                               ; preds = %72, %67
  %74 = getelementptr inbounds %struct.SceneRenderLayer, ptr %68, i64 0, i32 13, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !37
  %76 = icmp eq ptr %75, null
  br i1 %76, label %64, label %77

77:                                               ; preds = %73, %83
  %78 = phi ptr [ %84, %83 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.FreestyleLineSet, ptr %78, i64 0, i32 12
  %80 = load ptr, ptr %79, align 8, !tbaa !68
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store ptr null, ptr %79, align 8, !tbaa !68
  br label %83

83:                                               ; preds = %77, %82
  %84 = load ptr, ptr %78, align 8, !tbaa !37
  %85 = icmp eq ptr %84, null
  br i1 %85, label %64, label %77, !llvm.loop !70

86:                                               ; preds = %31, %27
  %87 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %88 = load ptr, ptr %87, align 8, !tbaa !37
  %89 = icmp eq ptr %88, null
  br i1 %89, label %114, label %93

90:                                               ; preds = %111, %99
  %91 = load ptr, ptr %94, align 8, !tbaa !37
  %92 = icmp eq ptr %91, null
  br i1 %92, label %114, label %93, !llvm.loop !71

93:                                               ; preds = %86, %90
  %94 = phi ptr [ %91, %90 ], [ %88, %86 ]
  %95 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 112
  %96 = load ptr, ptr %95, align 8, !tbaa !72
  %97 = icmp eq ptr %96, %0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store ptr null, ptr %95, align 8, !tbaa !72
  br label %99

99:                                               ; preds = %98, %93
  %100 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 109
  %101 = load ptr, ptr %100, align 8, !tbaa !37
  %102 = icmp eq ptr %101, null
  br i1 %102, label %90, label %103

103:                                              ; preds = %99, %111
  %104 = phi ptr [ %112, %111 ], [ %101, %99 ]
  %105 = getelementptr inbounds %struct.ParticleSystem, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !73
  %107 = getelementptr inbounds %struct.ParticleSettings, ptr %106, i64 0, i32 122
  %108 = load ptr, ptr %107, align 8, !tbaa !75
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store ptr null, ptr %107, align 8, !tbaa !75
  br label %111

111:                                              ; preds = %103, %110
  %112 = load ptr, ptr %104, align 8, !tbaa !37
  %113 = icmp eq ptr %112, null
  br i1 %113, label %90, label %103, !llvm.loop !77

114:                                              ; preds = %90, %86
  tail call void @BKE_group_free(ptr noundef %0) #5
  %115 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  store i32 0, ptr %115, align 4, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_group_object_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @group_object_unlink_internal(ptr noundef %0, ptr noundef %1) #5, !range !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @BKE_group_object_find(ptr noundef null, ptr noundef nonnull %1) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = icmp ne ptr %2, null
  %14 = icmp eq ptr %3, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %2, ptr noundef nonnull %1) #4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %3, %12 ]
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %21 = load i16, ptr %20, align 4, !tbaa !58
  %22 = and i16 %21, -4097
  store i16 %22, ptr %20, align 4, !tbaa !58
  %23 = icmp eq ptr %19, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = and i32 %26, -4097
  store i32 %27, ptr %25, align 8, !tbaa !62
  br label %28

28:                                               ; preds = %4, %7, %9, %24, %18
  %29 = phi i8 [ 1, %18 ], [ 1, %24 ], [ 1, %9 ], [ 1, %7 ], [ 0, %4 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_group_object_find(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @G, align 8
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 32
  %6 = select i1 %3, ptr %5, ptr %0
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %9, ptr noundef %1) #5, !range !57
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %7, label %14, !llvm.loop !81

14:                                               ; preds = %7, %11
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_group_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21063, ptr noundef %1) #4
  %4 = getelementptr inbounds %struct.Group, ptr %3, i64 0, i32 2
  store i32 1048575, ptr %4, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_group_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  tail call void @BLI_duplicatelist(ptr noundef nonnull %3, ptr noundef nonnull %4) #4
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_group_object_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @group_object_add_internal(ptr noundef %0, ptr noundef %1) #5, !range !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %9 = load i16, ptr %8, align 4, !tbaa !58
  %10 = and i16 %9, 4096
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = icmp ne ptr %2, null
  %14 = icmp eq ptr %3, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %2, ptr noundef nonnull %1) #4
  %18 = load i16, ptr %8, align 4, !tbaa !58
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i16 [ %18, %16 ], [ %9, %12 ]
  %21 = phi ptr [ %17, %16 ], [ %3, %12 ]
  %22 = or i16 %20, 4096
  store i16 %22, ptr %8, align 4, !tbaa !58
  %23 = icmp eq ptr %21, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = or i32 %26, 4096
  store i32 %27, ptr %25, align 8, !tbaa !62
  br label %28

28:                                               ; preds = %4, %7, %24, %19
  %29 = phi i8 [ 1, %19 ], [ 1, %24 ], [ 1, %7 ], [ 0, %4 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @group_object_add_internal(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !83 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %8 = tail call ptr @BLI_findptr(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef 16) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str) #4
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %12) #4
  %13 = getelementptr inbounds %struct.GroupObject, ptr %12, i64 0, i32 2
  store ptr %1, ptr %13, align 8, !tbaa !84
  br label %14

14:                                               ; preds = %6, %2, %10
  %15 = phi i8 [ 1, %10 ], [ 0, %2 ], [ 0, %6 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @group_object_unlink_internal(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !86 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4, %16
  %9 = phi i32 [ %17, %16 ], [ 0, %4 ]
  %10 = phi ptr [ %11, %16 ], [ %6, %4 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.GroupObject, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %10) #4
  tail call fastcc void @free_group_object(ptr noundef nonnull %10) #5
  br label %16

16:                                               ; preds = %15, %8
  %17 = phi i32 [ 1, %15 ], [ %9, %8 ]
  %18 = icmp eq ptr %11, null
  br i1 %18, label %19, label %8, !llvm.loop !89

19:                                               ; preds = %16, %4, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %17, %16 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_group_object_exists(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %8 = tail call ptr @BLI_findptr(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef 16) #4
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_group_tag_recalc(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.GroupObject, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.GroupObject, ptr %8, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !90
  %15 = trunc i16 %14 to i8
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 103
  store i8 %15, ptr %16, align 1, !tbaa !91
  br label %17

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %8, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !92

20:                                               ; preds = %17, %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_group_is_animated(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.GroupObject, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %6, %11
  %16 = load ptr, ptr %7, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !94

18:                                               ; preds = %11, %15, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_group_handle_recalc_and_update(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Group, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %18
  %9 = phi ptr [ %19, %18 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.GroupObject, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 103
  %15 = load i8, ptr %14, align 1, !tbaa !91
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @BKE_object_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #4
  br label %18

18:                                               ; preds = %8, %17, %13
  %19 = load ptr, ptr %9, align 8, !tbaa !37
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !95

21:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"group.c:free_group_object"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !38, i64 0}
!42 = !{!"Global", !38, i64 0, !39, i64 8, !39, i64 1032, !39, i64 2056, !39, i64 2057, !39, i64 2058, !43, i64 2064, !39, i64 2080, !39, i64 2081, !39, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !39, i64 2090, !44, i64 2092, !45, i64 2096, !45, i64 2100, !39, i64 2104, !45, i64 2108, !45, i64 2112, !39, i64 2116}
!43 = !{!"ListBase", !38, i64 0, !38, i64 8}
!44 = !{!"short", !39, i64 0}
!45 = !{!"int", !39, i64 0}
!46 = !{!47, !38, i64 784}
!47 = !{!"Material", !48, i64 0, !38, i64 120, !44, i64 128, !44, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !50, i64 224, !51, i64 312, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !44, i64 356, !44, i64 358, !44, i64 360, !39, i64 362, !39, i64 363, !49, i64 364, !49, i64 368, !44, i64 372, !44, i64 374, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !44, i64 392, !44, i64 394, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !44, i64 412, !44, i64 414, !44, i64 416, !44, i64 418, !49, i64 420, !49, i64 424, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !49, i64 456, !39, i64 460, !49, i64 524, !49, i64 528, !49, i64 532, !45, i64 536, !39, i64 540, !39, i64 541, !39, i64 542, !39, i64 543, !44, i64 544, !44, i64 546, !44, i64 548, !39, i64 550, !39, i64 551, !44, i64 552, !44, i64 554, !49, i64 556, !49, i64 560, !39, i64 564, !49, i64 580, !49, i64 584, !44, i64 588, !44, i64 590, !38, i64 592, !38, i64 600, !39, i64 608, !39, i64 609, !39, i64 610, !39, i64 611, !44, i64 612, !44, i64 614, !49, i64 616, !49, i64 620, !39, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !49, i64 800, !49, i64 804, !49, i64 808, !49, i64 812, !49, i64 816, !44, i64 820, !44, i64 822, !39, i64 824, !39, i64 836, !49, i64 848, !49, i64 852, !49, i64 856, !49, i64 860, !49, i64 864, !49, i64 868, !49, i64 872, !44, i64 876, !44, i64 878, !45, i64 880, !44, i64 884, !44, i64 886, !39, i64 888, !44, i64 904, !44, i64 906, !44, i64 908, !44, i64 910, !44, i64 912, !39, i64 914, !38, i64 920, !43, i64 928}
!48 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !44, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !38, i64 112}
!49 = !{!"float", !39, i64 0}
!50 = !{!"VolumeSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !39, i64 16, !39, i64 28, !39, i64 40, !49, i64 52, !49, i64 56, !49, i64 60, !44, i64 64, !44, i64 66, !44, i64 68, !44, i64 70, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84}
!51 = !{!"GameSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !35}
!54 = distinct !{!54, !35}
!55 = !{!56, !38, i64 32}
!56 = !{!"Base", !38, i64 0, !38, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !44, i64 28, !44, i64 30, !38, i64 32}
!57 = !{i8 0, i8 2}
!58 = !{!59, !44, i64 948}
!59 = !{!"Object", !48, i64 0, !38, i64 120, !38, i64 128, !44, i64 136, !44, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !60, i64 312, !38, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !45, i64 432, !45, i64 436, !38, i64 440, !38, i64 448, !45, i64 456, !45, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !49, i64 616, !49, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !45, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !39, i64 966, !39, i64 967, !45, i64 968, !45, i64 972, !45, i64 976, !45, i64 980, !45, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !39, i64 1042, !39, i64 1043, !44, i64 1044, !39, i64 1046, !39, i64 1047, !49, i64 1048, !49, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !49, i64 1120, !44, i64 1124, !44, i64 1126, !39, i64 1128, !45, i64 1144, !45, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !44, i64 1162, !39, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !44, i64 1266, !49, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !61, i64 1304, !61, i64 1312, !45, i64 1320, !45, i64 1324, !43, i64 1328, !43, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !43, i64 1400, !38, i64 1416}
!60 = !{!"bAnimVizSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44}
!61 = !{!"long", !39, i64 0}
!62 = !{!56, !45, i64 24}
!63 = distinct !{!63, !35}
!64 = distinct !{!64, !35}
!65 = !{!66, !38, i64 88}
!66 = !{!"SceneRenderLayer", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 80, !38, i64 88, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !49, i64 124, !67, i64 128}
!67 = !{!"FreestyleConfig", !43, i64 0, !45, i64 16, !45, i64 20, !45, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !43, i64 40}
!68 = !{!69, !38, i64 112}
!69 = !{!"FreestyleLineSet", !38, i64 0, !38, i64 8, !39, i64 16, !45, i64 80, !45, i64 84, !44, i64 88, !44, i64 90, !45, i64 92, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !38, i64 112, !38, i64 120}
!70 = distinct !{!70, !35}
!71 = distinct !{!71, !35}
!72 = !{!59, !38, i64 1256}
!73 = !{!74, !38, i64 16}
!74 = !{!"ParticleSystem", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !43, i64 72, !43, i64 88, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !43, i64 152, !39, i64 168, !39, i64 232, !49, i64 296, !49, i64 300, !49, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !44, i64 340, !44, i64 342, !44, i64 344, !44, i64 346, !39, i64 348, !39, i64 540, !44, i64 564, !44, i64 566, !38, i64 568, !38, i64 576, !43, i64 584, !38, i64 600, !38, i64 608, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 632, !38, i64 640, !49, i64 648, !49, i64 652}
!75 = !{!76, !38, i64 720}
!76 = !{!"ParticleSettings", !48, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !45, i64 152, !45, i64 156, !44, i64 160, !44, i64 162, !44, i64 164, !44, i64 166, !44, i64 168, !44, i64 170, !44, i64 172, !44, i64 174, !45, i64 176, !45, i64 180, !44, i64 184, !44, i64 186, !44, i64 188, !44, i64 190, !44, i64 192, !44, i64 194, !44, i64 196, !44, i64 198, !44, i64 200, !44, i64 202, !44, i64 204, !44, i64 206, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !49, i64 232, !49, i64 236, !39, i64 240, !39, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !44, i64 268, !44, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !39, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !44, i64 340, !39, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !39, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !39, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !45, i64 444, !45, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !39, i64 552, !49, i64 560, !49, i64 564, !45, i64 568, !45, i64 572, !39, i64 576, !38, i64 720, !43, i64 728, !38, i64 744, !38, i64 752, !38, i64 760, !38, i64 768, !38, i64 776, !38, i64 784, !44, i64 792, !39, i64 794}
!77 = distinct !{!77, !35}
!78 = !{!79, !45, i64 100}
!79 = !{!"Group", !48, i64 0, !43, i64 120, !45, i64 136, !39, i64 140}
!80 = !{i32 0, i32 2}
!81 = distinct !{!81, !35}
!82 = !{!79, !45, i64 136}
!83 = !{!"group.c:group_object_add_internal"}
!84 = !{!85, !38, i64 16}
!85 = !{!"GroupObject", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !44, i64 32, !39, i64 34}
!86 = !{!"group.c:group_object_unlink_internal"}
!87 = !{!79, !38, i64 120}
!88 = !{!85, !38, i64 0}
!89 = distinct !{!89, !35}
!90 = !{!85, !44, i64 32}
!91 = !{!59, !39, i64 1161}
!92 = distinct !{!92, !35}
!93 = !{!59, !38, i64 232}
!94 = distinct !{!94, !35}
!95 = distinct !{!95, !35}
