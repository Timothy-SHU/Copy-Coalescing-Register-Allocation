; ModuleID = 'blender/source/blender/modifiers/intern/MOD_smoke.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_smoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeFlowSettings = type { ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, [3 x float], float, float, float, float, float, i32, float, float, i32, [64 x i8], i16, i16, i16, i16, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.ListBase = type { ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
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
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }

@modifierType_Smoke = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Smoke\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SmokeModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144, i32 2, i32 193, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr null, ptr @foreachIDLink, ptr null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"Smoke Flow\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Smoke Coll\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Smoke Flow/Coll\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Field Source Object\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @smokeModifier_copy(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = trunc i32 %3 to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call ptr @smokeModifier_do(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %9) #6
  br label %13

13:                                               ; preds = %4, %7
  %14 = phi ptr [ %12, %7 ], [ %2, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  store i32 0, ptr %3, align 4, !tbaa !40
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store float -1.000000e+00, ptr %4, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr noundef readonly %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %11, i64 0, i32 23
  %15 = load i16, ptr %14, align 8, !tbaa !45
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %11, i64 0, i32 21
  %19 = load i16, ptr %18, align 4, !tbaa !48
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, i64 0, i64 4
  %22 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %11, i64 0, i32 24
  %23 = load i16, ptr %22, align 2, !tbaa !49
  %24 = icmp eq i16 %23, 1
  %25 = or disjoint i64 %21, 32
  %26 = select i1 %24, i64 %25, i64 %21
  br label %27

27:                                               ; preds = %17, %13, %9, %4, %2
  %28 = phi i64 [ 0, %13 ], [ 0, %9 ], [ 0, %4 ], [ 0, %2 ], [ %26, %17 ]
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr noundef %0) #0 {
  tail call void @smokeModifier_free(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %140, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %140, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = icmp eq ptr %14, null
  br i1 %15, label %140, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %84, label %24

24:                                               ; preds = %20
  br i1 %19, label %52, label %25

25:                                               ; preds = %16, %24
  %26 = getelementptr inbounds %struct.Group, ptr %18, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %25, %49
  %30 = phi ptr [ %50, %49 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.GroupObject, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @modifiers_findByType(ptr noundef nonnull %32, i32 noundef 31) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.SmokeModifierData, ptr %35, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !40
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.SmokeModifierData, ptr %35, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %31, align 8, !tbaa !55
  %48 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %47) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %48, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #6
  br label %49

49:                                               ; preds = %34, %37, %42, %46, %29
  %50 = load ptr, ptr %30, align 8, !tbaa !54
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %29, !llvm.loop !57

52:                                               ; preds = %49, %25, %24
  %53 = load ptr, ptr %13, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !53
  %56 = icmp eq ptr %55, null
  br i1 %56, label %116, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Group, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = icmp eq ptr %59, null
  br i1 %60, label %116, label %61

61:                                               ; preds = %57, %81
  %62 = phi ptr [ %82, %81 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.GroupObject, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @modifiers_findByType(ptr noundef nonnull %64, i32 noundef 31) #6
  %68 = icmp eq ptr %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.SmokeModifierData, ptr %67, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !40
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.SmokeModifierData, ptr %67, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %63, align 8, !tbaa !55
  %80 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %79) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %80, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #6
  br label %81

81:                                               ; preds = %66, %69, %74, %78, %61
  %82 = load ptr, ptr %62, align 8, !tbaa !54
  %83 = icmp eq ptr %82, null
  br i1 %83, label %116, label %61, !llvm.loop !61

84:                                               ; preds = %20
  %85 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !54
  %87 = icmp eq ptr %86, null
  br i1 %87, label %116, label %88

88:                                               ; preds = %84, %113
  %89 = phi ptr [ %114, %113 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.Base, ptr %89, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !62
  %92 = tail call ptr @modifiers_findByType(ptr noundef %91, i32 noundef 31) #6
  %93 = icmp eq ptr %92, null
  br i1 %93, label %113, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.SmokeModifierData, ptr %92, i64 0, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !40
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.SmokeModifierData, ptr %92, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !44
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %99, %94
  %104 = and i32 %96, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.SmokeModifierData, ptr %92, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !60
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106, %99
  %111 = load ptr, ptr %90, align 8, !tbaa !62
  %112 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %111) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %112, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.2) #6
  br label %113

113:                                              ; preds = %110, %106, %103, %88
  %114 = load ptr, ptr %89, align 8, !tbaa !54
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %88, !llvm.loop !64

116:                                              ; preds = %81, %113, %57, %84, %52
  %117 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !54
  %119 = icmp eq ptr %118, null
  br i1 %119, label %140, label %120

120:                                              ; preds = %116, %137
  %121 = phi ptr [ %138, %137 ], [ %118, %116 ]
  %122 = getelementptr inbounds %struct.Base, ptr %121, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !62
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 110
  %125 = load ptr, ptr %124, align 8, !tbaa !65
  %126 = icmp eq ptr %125, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.PartDeflect, ptr %125, i64 0, i32 2
  %129 = load i16, ptr %128, align 2, !tbaa !71
  %130 = icmp eq i16 %129, 13
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.PartDeflect, ptr %125, i64 0, i32 40
  %133 = load ptr, ptr %132, align 8, !tbaa !73
  %134 = icmp eq ptr %133, %3
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %123) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %4, ptr noundef %136, i16 noundef signext 40, ptr noundef nonnull @.str.3) #6
  br label %137

137:                                              ; preds = %120, %127, %131, %135
  %138 = load ptr, ptr %121, align 8, !tbaa !54
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %120, !llvm.loop !74

140:                                              ; preds = %137, %116, %12, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #3 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 5
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %13) #6
  %14 = load ptr, ptr %9, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 3
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %15) #6
  %16 = load ptr, ptr %9, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %16, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %17) #6
  %18 = load ptr, ptr %9, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %18, i64 0, i32 49
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %12, %22, %8, %4
  %24 = load i32, ptr %5, align 4, !tbaa !40
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %28, i64 0, i32 3
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %31) #6
  br label %32

32:                                               ; preds = %30, %26, %23
  ret void
}

declare void @smokeModifier_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @smokeModifier_do(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @smokeModifier_free(ptr noundef) local_unnamed_addr #4

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !36, i64 96}
!35 = !{!"ModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !39, i64 140}
!41 = !{!"SmokeModifierData", !35, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !42, i64 136, !39, i64 140}
!42 = !{!"float", !37, i64 0}
!43 = !{!41, !42, i64 136}
!44 = !{!41, !36, i64 120}
!45 = !{!46, !47, i64 176}
!46 = !{!"SmokeFlowSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !37, i64 60, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !42, i64 88, !39, i64 92, !42, i64 96, !42, i64 100, !39, i64 104, !37, i64 108, !47, i64 172, !47, i64 174, !47, i64 176, !47, i64 178, !39, i64 180}
!47 = !{!"short", !37, i64 0}
!48 = !{!46, !47, i64 172}
!49 = !{!46, !47, i64 178}
!50 = !{!41, !36, i64 112}
!51 = !{!52, !36, i64 24}
!52 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !39, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !39, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !47, i64 428, !47, i64 430, !39, i64 432, !42, i64 436, !37, i64 440, !42, i64 452, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !39, i64 520, !42, i64 524, !42, i64 528, !39, i64 532, !37, i64 536, !39, i64 548, !42, i64 552, !42, i64 556, !42, i64 560, !42, i64 564, !42, i64 568, !37, i64 572}
!53 = !{!52, !36, i64 40}
!54 = !{!36, !36, i64 0}
!55 = !{!56, !36, i64 16}
!56 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !47, i64 32, !37, i64 34}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!41, !36, i64 128}
!61 = distinct !{!61, !58, !59}
!62 = !{!63, !36, i64 32}
!63 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !47, i64 28, !47, i64 30, !36, i64 32}
!64 = distinct !{!64, !58, !59}
!65 = !{!66, !36, i64 1240}
!66 = !{!"Object", !67, i64 0, !36, i64 120, !36, i64 128, !47, i64 136, !47, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !68, i64 312, !36, i64 360, !69, i64 368, !69, i64 384, !69, i64 400, !69, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !37, i64 1042, !37, i64 1043, !47, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !69, i64 1056, !69, i64 1072, !69, i64 1088, !69, i64 1104, !42, i64 1120, !47, i64 1124, !47, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !47, i64 1162, !37, i64 1164, !69, i64 1176, !69, i64 1192, !69, i64 1208, !69, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !47, i64 1266, !42, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !70, i64 1304, !70, i64 1312, !39, i64 1320, !39, i64 1324, !69, i64 1328, !69, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !69, i64 1400, !36, i64 1416}
!67 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !47, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!68 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!69 = !{!"ListBase", !36, i64 0, !36, i64 8}
!70 = !{!"long", !37, i64 0}
!71 = !{!72, !47, i64 6}
!72 = !{!"PartDeflect", !39, i64 0, !47, i64 4, !47, i64 6, !47, i64 8, !47, i64 10, !47, i64 12, !47, i64 14, !47, i64 16, !47, i64 18, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !36, i64 128, !36, i64 136, !42, i64 144, !39, i64 148, !36, i64 152}
!73 = !{!72, !36, i64 152}
!74 = distinct !{!74, !58, !59}
!75 = !{!52, !36, i64 512}
