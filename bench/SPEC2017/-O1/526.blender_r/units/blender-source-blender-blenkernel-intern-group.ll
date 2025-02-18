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
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"groupobject\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_group_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef nonnull %6) #4
  %8 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !38

10:                                               ; preds = %5, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_group_unlink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %15, %1
  %7 = load ptr, ptr %3, align 8, !tbaa !34
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
  %16 = load ptr, ptr %10, align 8, !tbaa !34
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
  %25 = load ptr, ptr %19, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !53

27:                                               ; preds = %24, %6
  %28 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %139, label %31

31:                                               ; preds = %27
  %32 = icmp eq ptr %0, null
  %33 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  br label %37

34:                                               ; preds = %117, %113
  %35 = load ptr, ptr %38, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %139, label %37, !llvm.loop !54

37:                                               ; preds = %31, %34
  %38 = phi ptr [ %29, %31 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %113, label %42

42:                                               ; preds = %37, %110
  %43 = phi ptr [ %111, %110 ], [ %40, %37 ]
  %44 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  br i1 %32, label %110, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %33, align 8, !tbaa !57
  %48 = icmp eq ptr %47, null
  br i1 %48, label %110, label %49

49:                                               ; preds = %46, %58
  %50 = phi i32 [ %59, %58 ], [ 0, %46 ]
  %51 = phi ptr [ %52, %58 ], [ %47, %46 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct.GroupObject, ptr %51, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  %55 = icmp eq ptr %54, %45
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  tail call void @BLI_remlink(ptr noundef nonnull %33, ptr noundef nonnull %51) #4
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %57(ptr noundef nonnull %51) #4
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ 1, %56 ], [ %50, %49 ]
  %60 = icmp eq ptr %52, null
  br i1 %60, label %61, label %49, !llvm.loop !62

61:                                               ; preds = %58
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %110, label %63

63:                                               ; preds = %61
  %64 = icmp eq ptr %45, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr @G, align 8
  %67 = getelementptr inbounds %struct.Main, ptr %66, i64 0, i32 32
  br label %68

68:                                               ; preds = %72, %65
  %69 = phi ptr [ %67, %65 ], [ %70, %72 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Group, ptr %70, i64 0, i32 1
  %74 = tail call ptr @BLI_findptr(ptr noundef nonnull %73, ptr noundef nonnull %45, i32 noundef 16) #4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %68, label %83, !llvm.loop !63

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 53
  %78 = load i16, ptr %77, align 4, !tbaa !64
  %79 = and i16 %78, -4097
  store i16 %79, ptr %77, align 4, !tbaa !64
  %80 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !68
  %82 = and i32 %81, -4097
  store i32 %82, ptr %80, align 8, !tbaa !68
  br label %83

83:                                               ; preds = %72, %63, %76
  %84 = load ptr, ptr %44, align 8, !tbaa !55
  %85 = load ptr, ptr @G, align 8
  %86 = getelementptr inbounds %struct.Main, ptr %85, i64 0, i32 32
  %87 = icmp eq ptr %84, null
  br label %88

88:                                               ; preds = %98, %83
  %89 = phi ptr [ %86, %83 ], [ %90, %98 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  %91 = icmp eq ptr %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %88
  br i1 %87, label %98, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.Group, ptr %90, i64 0, i32 1
  %95 = tail call ptr @BLI_findptr(ptr noundef nonnull %94, ptr noundef nonnull %84, i32 noundef 16) #4
  %96 = icmp ne ptr %95, null
  %97 = zext i1 %96 to i8
  br label %98

98:                                               ; preds = %93, %92
  %99 = phi i8 [ %97, %93 ], [ 0, %92 ]
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %88, label %101, !llvm.loop !63

101:                                              ; preds = %98
  br i1 %91, label %102, label %110

102:                                              ; preds = %88, %101
  %103 = load ptr, ptr %44, align 8, !tbaa !55
  %104 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 53
  %105 = load i16, ptr %104, align 4, !tbaa !64
  %106 = and i16 %105, -4097
  store i16 %106, ptr %104, align 4, !tbaa !64
  %107 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !68
  %109 = and i32 %108, -4097
  store i32 %109, ptr %107, align 8, !tbaa !68
  br label %110

110:                                              ; preds = %61, %46, %42, %101, %102
  %111 = load ptr, ptr %43, align 8, !tbaa !34
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %42, !llvm.loop !69

113:                                              ; preds = %110, %37
  %114 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 22, i32 60
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %34, label %120

117:                                              ; preds = %136, %126
  %118 = load ptr, ptr %121, align 8, !tbaa !34
  %119 = icmp eq ptr %118, null
  br i1 %119, label %34, label %120, !llvm.loop !70

120:                                              ; preds = %113, %117
  %121 = phi ptr [ %118, %117 ], [ %115, %113 ]
  %122 = getelementptr inbounds %struct.SceneRenderLayer, ptr %121, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !71
  %124 = icmp eq ptr %123, %0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store ptr null, ptr %122, align 8, !tbaa !71
  br label %126

126:                                              ; preds = %125, %120
  %127 = getelementptr inbounds %struct.SceneRenderLayer, ptr %121, i64 0, i32 13, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %117, label %130

130:                                              ; preds = %126, %136
  %131 = phi ptr [ %137, %136 ], [ %128, %126 ]
  %132 = getelementptr inbounds %struct.FreestyleLineSet, ptr %131, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !74
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store ptr null, ptr %132, align 8, !tbaa !74
  br label %136

136:                                              ; preds = %130, %135
  %137 = load ptr, ptr %131, align 8, !tbaa !34
  %138 = icmp eq ptr %137, null
  br i1 %138, label %117, label %130, !llvm.loop !76

139:                                              ; preds = %34, %27
  %140 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %141 = load ptr, ptr %140, align 8, !tbaa !34
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %150

143:                                              ; preds = %168, %156
  %144 = load ptr, ptr %151, align 8, !tbaa !34
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %150, !llvm.loop !77

146:                                              ; preds = %143, %139
  %147 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %148 = tail call ptr @BLI_pophead(ptr noundef nonnull %147) #4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %176, label %171

150:                                              ; preds = %139, %143
  %151 = phi ptr [ %144, %143 ], [ %141, %139 ]
  %152 = getelementptr inbounds %struct.Object, ptr %151, i64 0, i32 112
  %153 = load ptr, ptr %152, align 8, !tbaa !78
  %154 = icmp eq ptr %153, %0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store ptr null, ptr %152, align 8, !tbaa !78
  br label %156

156:                                              ; preds = %155, %150
  %157 = getelementptr inbounds %struct.Object, ptr %151, i64 0, i32 109
  %158 = load ptr, ptr %157, align 8, !tbaa !34
  %159 = icmp eq ptr %158, null
  br i1 %159, label %143, label %160

160:                                              ; preds = %156, %168
  %161 = phi ptr [ %169, %168 ], [ %158, %156 ]
  %162 = getelementptr inbounds %struct.ParticleSystem, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !79
  %164 = getelementptr inbounds %struct.ParticleSettings, ptr %163, i64 0, i32 122
  %165 = load ptr, ptr %164, align 8, !tbaa !81
  %166 = icmp eq ptr %165, %0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store ptr null, ptr %164, align 8, !tbaa !81
  br label %168

168:                                              ; preds = %160, %167
  %169 = load ptr, ptr %161, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %143, label %160, !llvm.loop !83

171:                                              ; preds = %146, %171
  %172 = phi ptr [ %174, %171 ], [ %148, %146 ]
  %173 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %173(ptr noundef nonnull %172) #4
  %174 = tail call ptr @BLI_pophead(ptr noundef nonnull %147) #4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %171, !llvm.loop !38

176:                                              ; preds = %171, %146
  %177 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  store i32 0, ptr %177, align 4, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_group_object_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %54, label %10

10:                                               ; preds = %6, %19
  %11 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %12 = phi ptr [ %13, %19 ], [ %8, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.GroupObject, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %12) #4
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %12) #4
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ 1, %17 ], [ %11, %10 ]
  %21 = icmp eq ptr %13, null
  br i1 %21, label %22, label %10, !llvm.loop !62

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %22
  %25 = icmp eq ptr %1, null
  br i1 %25, label %54, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr @G, align 8
  %28 = getelementptr inbounds %struct.Main, ptr %27, i64 0, i32 32
  br label %29

29:                                               ; preds = %33, %26
  %30 = phi ptr [ %28, %26 ], [ %31, %33 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Group, ptr %31, i64 0, i32 1
  %35 = tail call ptr @BLI_findptr(ptr noundef nonnull %34, ptr noundef nonnull %1, i32 noundef 16) #4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %29, label %37, !llvm.loop !63

37:                                               ; preds = %33
  br i1 %32, label %38, label %54

38:                                               ; preds = %29, %37
  %39 = icmp ne ptr %2, null
  %40 = icmp eq ptr %3, null
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %2, ptr noundef nonnull %1) #4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %3, %38 ]
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %47 = load i16, ptr %46, align 4, !tbaa !64
  %48 = and i16 %47, -4097
  store i16 %48, ptr %46, align 4, !tbaa !64
  %49 = icmp eq ptr %45, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Base, ptr %45, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !68
  %53 = and i32 %52, -4097
  store i32 %53, ptr %51, align 8, !tbaa !68
  br label %54

54:                                               ; preds = %4, %6, %22, %24, %37, %50, %44
  %55 = phi i8 [ 1, %44 ], [ 1, %50 ], [ 1, %37 ], [ 1, %24 ], [ 0, %22 ], [ 0, %6 ], [ 0, %4 ]
  ret i8 %55
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_group_object_find(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @G, align 8
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 32
  %6 = select i1 %3, ptr %5, ptr %0
  %7 = icmp eq ptr %1, null
  br label %8

8:                                                ; preds = %18, %2
  %9 = phi ptr [ %6, %2 ], [ %10, %18 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  br i1 %7, label %18, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.Group, ptr %10, i64 0, i32 1
  %15 = tail call ptr @BLI_findptr(ptr noundef nonnull %14, ptr noundef nonnull %1, i32 noundef 16) #4
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %12, %13
  %19 = phi i8 [ %17, %13 ], [ 0, %12 ]
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %8, label %21, !llvm.loop !63

21:                                               ; preds = %8, %18
  %22 = phi ptr [ %10, %18 ], [ null, %8 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_group_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21063, ptr noundef %1) #4
  %4 = getelementptr inbounds %struct.Group, ptr %3, i64 0, i32 2
  store i32 1048575, ptr %4, align 8, !tbaa !85
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_group_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  tail call void @BLI_duplicatelist(ptr noundef nonnull %3, ptr noundef nonnull %4) #4
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_group_object_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %10 = tail call ptr @BLI_findptr(ptr noundef nonnull %9, ptr noundef %1, i32 noundef 16) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str) #4
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %14) #4
  %15 = getelementptr inbounds %struct.GroupObject, ptr %14, i64 0, i32 2
  store ptr %1, ptr %15, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %17 = load i16, ptr %16, align 4, !tbaa !64
  %18 = and i16 %17, 4096
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = icmp ne ptr %2, null
  %22 = icmp eq ptr %3, null
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %2, ptr noundef %1) #4
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %3, %20 ]
  %28 = load i16, ptr %16, align 4, !tbaa !64
  %29 = or i16 %28, 4096
  store i16 %29, ptr %16, align 4, !tbaa !64
  %30 = icmp eq ptr %27, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !68
  %34 = or i32 %33, 4096
  store i32 %34, ptr %32, align 8, !tbaa !68
  br label %35

35:                                               ; preds = %8, %4, %12, %31, %26
  %36 = phi i8 [ 1, %26 ], [ 1, %31 ], [ 1, %12 ], [ 0, %4 ], [ 0, %8 ]
  ret i8 %36
}

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_group_object_exists(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %8 = tail call ptr @BLI_findptr(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 16) #4
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 0, %2 ]
  ret i8 %12
}

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_group_tag_recalc(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.GroupObject, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.GroupObject, ptr %8, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !86
  %15 = trunc i16 %14 to i8
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 103
  store i8 %15, ptr %16, align 1, !tbaa !87
  br label %17

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %8, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !88

20:                                               ; preds = %17, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_group_is_animated(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.GroupObject, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %6, %11
  %16 = load ptr, ptr %7, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !90

18:                                               ; preds = %11, %15, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %11 ], [ 0, %15 ]
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_group_handle_recalc_and_update(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Group, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %18
  %9 = phi ptr [ %19, %18 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.GroupObject, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 103
  %15 = load i8, ptr %14, align 1, !tbaa !87
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @BKE_object_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #4
  br label %18

18:                                               ; preds = %8, %17, %13
  %19 = load ptr, ptr %9, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !91

21:                                               ; preds = %18, %4
  ret void
}

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !35, i64 0}
!42 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !43, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !36, i64 2090, !44, i64 2092, !45, i64 2096, !45, i64 2100, !36, i64 2104, !45, i64 2108, !45, i64 2112, !36, i64 2116}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!"short", !36, i64 0}
!45 = !{!"int", !36, i64 0}
!46 = !{!47, !35, i64 784}
!47 = !{!"Material", !48, i64 0, !35, i64 120, !44, i64 128, !44, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !50, i64 224, !51, i64 312, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !44, i64 356, !44, i64 358, !44, i64 360, !36, i64 362, !36, i64 363, !49, i64 364, !49, i64 368, !44, i64 372, !44, i64 374, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !44, i64 392, !44, i64 394, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !44, i64 412, !44, i64 414, !44, i64 416, !44, i64 418, !49, i64 420, !49, i64 424, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !49, i64 456, !36, i64 460, !49, i64 524, !49, i64 528, !49, i64 532, !45, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !44, i64 544, !44, i64 546, !44, i64 548, !36, i64 550, !36, i64 551, !44, i64 552, !44, i64 554, !49, i64 556, !49, i64 560, !36, i64 564, !49, i64 580, !49, i64 584, !44, i64 588, !44, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !44, i64 612, !44, i64 614, !49, i64 616, !49, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !49, i64 800, !49, i64 804, !49, i64 808, !49, i64 812, !49, i64 816, !44, i64 820, !44, i64 822, !36, i64 824, !36, i64 836, !49, i64 848, !49, i64 852, !49, i64 856, !49, i64 860, !49, i64 864, !49, i64 868, !49, i64 872, !44, i64 876, !44, i64 878, !45, i64 880, !44, i64 884, !44, i64 886, !36, i64 888, !44, i64 904, !44, i64 906, !44, i64 908, !44, i64 910, !44, i64 912, !36, i64 914, !35, i64 920, !43, i64 928}
!48 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !44, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !35, i64 112}
!49 = !{!"float", !36, i64 0}
!50 = !{!"VolumeSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !49, i64 52, !49, i64 56, !49, i64 60, !44, i64 64, !44, i64 66, !44, i64 68, !44, i64 70, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84}
!51 = !{!"GameSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!52 = distinct !{!52, !39, !40}
!53 = distinct !{!53, !39, !40}
!54 = distinct !{!54, !39, !40}
!55 = !{!56, !35, i64 32}
!56 = !{!"Base", !35, i64 0, !35, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !44, i64 28, !44, i64 30, !35, i64 32}
!57 = !{!58, !35, i64 120}
!58 = !{!"Group", !48, i64 0, !43, i64 120, !45, i64 136, !36, i64 140}
!59 = !{!60, !35, i64 0}
!60 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !36, i64 34}
!61 = !{!60, !35, i64 16}
!62 = distinct !{!62, !39, !40}
!63 = distinct !{!63, !39, !40}
!64 = !{!65, !44, i64 948}
!65 = !{!"Object", !48, i64 0, !35, i64 120, !35, i64 128, !44, i64 136, !44, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !66, i64 312, !35, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !45, i64 432, !45, i64 436, !35, i64 440, !35, i64 448, !45, i64 456, !45, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !49, i64 616, !49, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !45, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !36, i64 966, !36, i64 967, !45, i64 968, !45, i64 972, !45, i64 976, !45, i64 980, !45, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !36, i64 1042, !36, i64 1043, !44, i64 1044, !36, i64 1046, !36, i64 1047, !49, i64 1048, !49, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !49, i64 1120, !44, i64 1124, !44, i64 1126, !36, i64 1128, !45, i64 1144, !45, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !44, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !44, i64 1266, !49, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !67, i64 1304, !67, i64 1312, !45, i64 1320, !45, i64 1324, !43, i64 1328, !43, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !43, i64 1400, !35, i64 1416}
!66 = !{!"bAnimVizSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44}
!67 = !{!"long", !36, i64 0}
!68 = !{!56, !45, i64 24}
!69 = distinct !{!69, !39, !40}
!70 = distinct !{!70, !39, !40}
!71 = !{!72, !35, i64 88}
!72 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !49, i64 124, !73, i64 128}
!73 = !{!"FreestyleConfig", !43, i64 0, !45, i64 16, !45, i64 20, !45, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !43, i64 40}
!74 = !{!75, !35, i64 112}
!75 = !{!"FreestyleLineSet", !35, i64 0, !35, i64 8, !36, i64 16, !45, i64 80, !45, i64 84, !44, i64 88, !44, i64 90, !45, i64 92, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !35, i64 112, !35, i64 120}
!76 = distinct !{!76, !39, !40}
!77 = distinct !{!77, !39, !40}
!78 = !{!65, !35, i64 1256}
!79 = !{!80, !35, i64 16}
!80 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !43, i64 72, !43, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !36, i64 168, !36, i64 232, !49, i64 296, !49, i64 300, !49, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !44, i64 340, !44, i64 342, !44, i64 344, !44, i64 346, !36, i64 348, !36, i64 540, !44, i64 564, !44, i64 566, !35, i64 568, !35, i64 576, !43, i64 584, !35, i64 600, !35, i64 608, !45, i64 616, !45, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !49, i64 648, !49, i64 652}
!81 = !{!82, !35, i64 720}
!82 = !{!"ParticleSettings", !48, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !45, i64 152, !45, i64 156, !44, i64 160, !44, i64 162, !44, i64 164, !44, i64 166, !44, i64 168, !44, i64 170, !44, i64 172, !44, i64 174, !45, i64 176, !45, i64 180, !44, i64 184, !44, i64 186, !44, i64 188, !44, i64 190, !44, i64 192, !44, i64 194, !44, i64 196, !44, i64 198, !44, i64 200, !44, i64 202, !44, i64 204, !44, i64 206, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !49, i64 232, !49, i64 236, !36, i64 240, !36, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !44, i64 268, !44, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !36, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !44, i64 340, !36, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !36, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !36, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !45, i64 444, !45, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !36, i64 552, !49, i64 560, !49, i64 564, !45, i64 568, !45, i64 572, !36, i64 576, !35, i64 720, !43, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !44, i64 792, !36, i64 794}
!83 = distinct !{!83, !39, !40}
!84 = !{!58, !45, i64 100}
!85 = !{!58, !45, i64 136}
!86 = !{!60, !44, i64 32}
!87 = !{!65, !36, i64 1161}
!88 = distinct !{!88, !39, !40}
!89 = !{!65, !35, i64 232}
!90 = distinct !{!90, !39, !40}
!91 = distinct !{!91, !39, !40}
