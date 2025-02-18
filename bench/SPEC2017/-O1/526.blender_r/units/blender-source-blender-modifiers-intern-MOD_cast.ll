; ModuleID = 'blender/source/blender/modifiers/intern/MOD_cast.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CastModifierData = type { %struct.ModifierData, ptr, float, float, float, [64 x i8], i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }

@modifierType_Cast = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Cast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CastModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 200, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"Cast Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %8 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  %9 = load i16, ptr %8, align 2, !tbaa !34
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @cuboid_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4)
  br label %13

12:                                               ; preds = %6
  tail call fastcc void @sphere_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4)
  br label %13

13:                                               ; preds = %12, %11
  %14 = icmp eq ptr %7, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  tail call void %17(ptr noundef %7) #8
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %8 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  %9 = load i16, ptr %8, align 2, !tbaa !34
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @cuboid_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5)
  br label %13

12:                                               ; preds = %6
  tail call fastcc void @sphere_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5)
  br label %13

13:                                               ; preds = %12, %11
  %14 = icmp eq ptr %7, %3
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  tail call void %17(ptr noundef %7) #8
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  store float 5.000000e-01, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 3
  store float 0.000000e+00, ptr %3, align 4, !tbaa !47
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  store i16 46, ptr %5, align 4, !tbaa !49
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  store i16 0, ptr %6, align 2, !tbaa !34
  %7 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 5
  store i8 0, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.CastModifierData, ptr %1, i64 0, i32 5
  %4 = load i8, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  %4 = load i16, ptr %3, align 4, !tbaa !49
  %5 = and i16 %4, 14
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !46
  %8 = fcmp oeq float %7, 0.000000e+00
  %9 = icmp eq i16 %5, 0
  %10 = select i1 %8, i1 true, i1 %9
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #8
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str) #8
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #8
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @cuboid_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [8 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store ptr null, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %17 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !46
  %19 = fsub float 1.000000e+00, %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #8
  %20 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  %21 = load i16, ptr %20, align 4, !tbaa !49
  %22 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !47
  %26 = fcmp ogt float %25, 0x3E80000000000000
  %27 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 5
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %28 = icmp eq ptr %23, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %5
  %30 = and i16 %21, 16
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %33) #8
  %35 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %35) #8
  %36 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #8
  br label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %40 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %38, ptr noundef nonnull %39) #8
  %41 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %38, ptr noundef nonnull %41) #8
  br label %42

42:                                               ; preds = %37, %5
  %43 = zext i16 %21 to i32
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  %46 = and i1 %45, %26
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load float, ptr %24, align 4, !tbaa !47
  %49 = fneg float %48
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ 0, %47 ], [ %54, %50 ]
  %52 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %51
  store float %49, ptr %52, align 4, !tbaa !53
  %53 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %51
  store float %48, ptr %53, align 4, !tbaa !53
  %54 = add nuw nsw i64 %51, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %136, label %50, !llvm.loop !54

56:                                               ; preds = %42
  br i1 %45, label %69, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 4
  %59 = load float, ptr %58, align 8, !tbaa !48
  %60 = fcmp ogt float %59, 0.000000e+00
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = fneg float %59
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %67, %63 ]
  %65 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %64
  store float %62, ptr %65, align 4, !tbaa !53
  %66 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %64
  store float %59, ptr %66, align 4, !tbaa !53
  %67 = add nuw nsw i64 %64, 1
  %68 = icmp eq i64 %67, 3
  br i1 %68, label %136, label %63, !llvm.loop !57

69:                                               ; preds = %57, %56
  %70 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x46293E5940000000, ptr %70, align 4, !tbaa !53
  %71 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0x46293E5940000000, ptr %71, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !53
  %72 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %72, align 4, !tbaa !53
  %73 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %73, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !53
  br i1 %28, label %74, label %78

74:                                               ; preds = %69
  %75 = icmp sgt i32 %4, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %74
  %77 = zext nneg i32 %4 to i64
  br label %103

78:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11) #8
  %79 = icmp sgt i32 %4, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %78
  %81 = getelementptr inbounds float, ptr %11, i64 1
  %82 = getelementptr inbounds float, ptr %14, i64 1
  %83 = getelementptr inbounds float, ptr %11, i64 2
  %84 = getelementptr inbounds float, ptr %14, i64 2
  %85 = zext nneg i32 %4 to i64
  br label %86

86:                                               ; preds = %80, %86
  %87 = phi i64 [ 0, %80 ], [ %100, %86 ]
  %88 = getelementptr inbounds [3 x float], ptr %3, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !53
  %90 = load float, ptr %11, align 4, !tbaa !53
  %91 = fsub float %89, %90
  store float %91, ptr %14, align 4, !tbaa !53
  %92 = getelementptr inbounds float, ptr %88, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !53
  %94 = load float, ptr %81, align 4, !tbaa !53
  %95 = fsub float %93, %94
  store float %95, ptr %82, align 4, !tbaa !53
  %96 = getelementptr inbounds float, ptr %88, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !53
  %98 = load float, ptr %83, align 4, !tbaa !53
  %99 = fsub float %97, %98
  store float %99, ptr %84, align 4, !tbaa !53
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %14) #8
  %100 = add nuw nsw i64 %87, 1
  %101 = icmp eq i64 %100, %85
  br i1 %101, label %102, label %86, !llvm.loop !58

102:                                              ; preds = %86, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  br label %108

103:                                              ; preds = %76, %103
  %104 = phi i64 [ 0, %76 ], [ %106, %103 ]
  %105 = getelementptr inbounds [3 x float], ptr %3, i64 %104
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %105) #8
  %106 = add nuw nsw i64 %104, 1
  %107 = icmp eq i64 %106, %77
  br i1 %107, label %108, label %103, !llvm.loop !59

108:                                              ; preds = %103, %74, %102
  %109 = load float, ptr %8, align 4, !tbaa !53
  %110 = call float @llvm.fabs.f32(float %109)
  %111 = load float, ptr %9, align 4, !tbaa !53
  %112 = call float @llvm.fabs.f32(float %111)
  %113 = fcmp ogt float %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store float %110, ptr %9, align 4, !tbaa !53
  br label %115

115:                                              ; preds = %114, %108
  %116 = load float, ptr %71, align 4, !tbaa !53
  %117 = call float @llvm.fabs.f32(float %116)
  %118 = load float, ptr %73, align 4, !tbaa !53
  %119 = call float @llvm.fabs.f32(float %118)
  %120 = fcmp ogt float %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store float %117, ptr %73, align 4, !tbaa !53
  br label %122

122:                                              ; preds = %121, %115
  %123 = load float, ptr %70, align 4, !tbaa !53
  %124 = call float @llvm.fabs.f32(float %123)
  %125 = load float, ptr %72, align 4, !tbaa !53
  %126 = call float @llvm.fabs.f32(float %125)
  %127 = fcmp ogt float %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store float %124, ptr %72, align 4, !tbaa !53
  br label %129

129:                                              ; preds = %128, %122
  %130 = load float, ptr %9, align 4, !tbaa !53
  %131 = fneg float %130
  store float %131, ptr %8, align 4, !tbaa !53
  %132 = load float, ptr %73, align 4, !tbaa !53
  %133 = fneg float %132
  store float %133, ptr %71, align 4, !tbaa !53
  %134 = load float, ptr %72, align 4, !tbaa !53
  %135 = fneg float %134
  store float %135, ptr %70, align 4, !tbaa !53
  br label %136

136:                                              ; preds = %63, %50, %129
  %137 = load float, ptr %8, align 4, !tbaa !53
  %138 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 6
  store float %137, ptr %138, align 8, !tbaa !53
  %139 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 4
  store float %137, ptr %139, align 16, !tbaa !53
  %140 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 2
  store float %137, ptr %140, align 8, !tbaa !53
  store float %137, ptr %10, align 16, !tbaa !53
  %141 = load float, ptr %9, align 4, !tbaa !53
  %142 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 7
  store float %141, ptr %142, align 4, !tbaa !53
  %143 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 5
  store float %141, ptr %143, align 4, !tbaa !53
  %144 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 3
  store float %141, ptr %144, align 4, !tbaa !53
  %145 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 1
  store float %141, ptr %145, align 4, !tbaa !53
  %146 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !53
  %148 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 5, i64 1
  store float %147, ptr %148, align 16, !tbaa !53
  %149 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 4, i64 1
  store float %147, ptr %149, align 4, !tbaa !53
  %150 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  store float %147, ptr %150, align 16, !tbaa !53
  %151 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %147, ptr %151, align 4, !tbaa !53
  %152 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !53
  %154 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 7, i64 1
  store float %153, ptr %154, align 8, !tbaa !53
  %155 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 6, i64 1
  store float %153, ptr %155, align 4, !tbaa !53
  %156 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 3, i64 1
  store float %153, ptr %156, align 8, !tbaa !53
  %157 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  store float %153, ptr %157, align 4, !tbaa !53
  %158 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !53
  %160 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 3, i64 2
  store float %159, ptr %160, align 4, !tbaa !53
  %161 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  store float %159, ptr %161, align 16, !tbaa !53
  %162 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  store float %159, ptr %162, align 4, !tbaa !53
  %163 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %159, ptr %163, align 8, !tbaa !53
  %164 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !53
  %166 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 7, i64 2
  store float %165, ptr %166, align 4, !tbaa !53
  %167 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 6, i64 2
  store float %165, ptr %167, align 16, !tbaa !53
  %168 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 5, i64 2
  store float %165, ptr %168, align 4, !tbaa !53
  %169 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 4, i64 2
  store float %165, ptr %169, align 8, !tbaa !53
  %170 = icmp sgt i32 %4, 0
  br i1 %170, label %171, label %309

171:                                              ; preds = %136
  %172 = getelementptr inbounds float, ptr %16, i64 1
  %173 = getelementptr inbounds float, ptr %16, i64 2
  %174 = and i32 %43, 16
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds float, ptr %11, i64 1
  %177 = getelementptr inbounds float, ptr %11, i64 2
  %178 = getelementptr inbounds float, ptr %15, i64 1
  %179 = getelementptr inbounds float, ptr %15, i64 2
  %180 = and i32 %43, 2
  %181 = icmp eq i32 %180, 0
  %182 = and i32 %43, 4
  %183 = icmp eq i32 %182, 0
  %184 = and i32 %43, 8
  %185 = icmp eq i32 %184, 0
  %186 = and i32 %43, 16
  %187 = icmp eq i32 %186, 0
  %188 = getelementptr inbounds float, ptr %11, i64 1
  %189 = getelementptr inbounds float, ptr %11, i64 2
  %190 = zext nneg i32 %4 to i64
  br label %191

191:                                              ; preds = %171, %304
  %192 = phi i64 [ 0, %171 ], [ %307, %304 ]
  %193 = phi float [ %18, %171 ], [ %306, %304 ]
  %194 = phi float [ %19, %171 ], [ %305, %304 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  %195 = getelementptr inbounds [3 x float], ptr %3, i64 %192
  %196 = load float, ptr %195, align 4, !tbaa !53
  store float %196, ptr %16, align 4, !tbaa !53
  %197 = getelementptr inbounds float, ptr %195, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !53
  store float %198, ptr %172, align 4, !tbaa !53
  %199 = getelementptr inbounds float, ptr %195, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !53
  store float %200, ptr %173, align 4, !tbaa !53
  br i1 %28, label %210, label %201

201:                                              ; preds = %191
  br i1 %175, label %203, label %202

202:                                              ; preds = %201
  call void @mul_m4_v3(ptr noundef nonnull %12, ptr noundef nonnull %16) #8
  br label %210

203:                                              ; preds = %201
  %204 = load float, ptr %11, align 4, !tbaa !53
  %205 = fsub float %196, %204
  store float %205, ptr %16, align 4, !tbaa !53
  %206 = load float, ptr %176, align 4, !tbaa !53
  %207 = fsub float %198, %206
  store float %207, ptr %172, align 4, !tbaa !53
  %208 = load float, ptr %177, align 4, !tbaa !53
  %209 = fsub float %200, %208
  store float %209, ptr %173, align 4, !tbaa !53
  br label %210

210:                                              ; preds = %202, %203, %191
  br i1 %26, label %211, label %224

211:                                              ; preds = %210
  %212 = load float, ptr %16, align 4, !tbaa !53
  %213 = call float @llvm.fabs.f32(float %212)
  %214 = load float, ptr %24, align 4, !tbaa !47
  %215 = fcmp ogt float %213, %214
  br i1 %215, label %304, label %216

216:                                              ; preds = %211
  %217 = load float, ptr %172, align 4, !tbaa !53
  %218 = call float @llvm.fabs.f32(float %217)
  %219 = fcmp ogt float %218, %214
  br i1 %219, label %304, label %220

220:                                              ; preds = %216
  %221 = load float, ptr %173, align 4, !tbaa !53
  %222 = call float @llvm.fabs.f32(float %221)
  %223 = fcmp ogt float %222, %214
  br i1 %223, label %304, label %224

224:                                              ; preds = %220, %210
  %225 = load ptr, ptr %6, align 8, !tbaa !52
  %226 = icmp eq ptr %225, null
  br i1 %226, label %236, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.MDeformVert, ptr %225, i64 %192
  %229 = load i32, ptr %7, align 4, !tbaa !60
  %230 = call float @defvert_find_weight(ptr noundef nonnull %228, i32 noundef %229) #8
  %231 = fcmp une float %230, 0.000000e+00
  %232 = fmul float %18, %230
  %233 = fsub float 1.000000e+00, %232
  %234 = select i1 %231, float %233, float %194
  %235 = select i1 %231, float %232, float %193
  br i1 %231, label %236, label %304

236:                                              ; preds = %227, %224
  %237 = phi float [ %234, %227 ], [ %194, %224 ]
  %238 = phi float [ %235, %227 ], [ %193, %224 ]
  %239 = load float, ptr %16, align 4, !tbaa !53
  %240 = fcmp ogt float %239, 0.000000e+00
  %241 = zext i1 %240 to i32
  %242 = load float, ptr %172, align 4, !tbaa !53
  %243 = fcmp ogt float %242, 0.000000e+00
  %244 = or disjoint i32 %241, 2
  %245 = select i1 %243, i32 %244, i32 %241
  %246 = load float, ptr %173, align 4, !tbaa !53
  %247 = fcmp ogt float %246, 0.000000e+00
  %248 = or disjoint i32 %245, 4
  %249 = select i1 %247, i32 %248, i32 %245
  %250 = zext nneg i32 %249 to i64
  %251 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 %250
  %252 = load float, ptr %251, align 4, !tbaa !53
  store float %252, ptr %15, align 4, !tbaa !53
  %253 = getelementptr inbounds float, ptr %251, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !53
  store float %254, ptr %178, align 4, !tbaa !53
  %255 = getelementptr inbounds float, ptr %251, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !53
  store float %256, ptr %179, align 4, !tbaa !53
  %257 = fdiv float %239, %252
  %258 = fdiv float %242, %254
  %259 = fdiv float %246, %256
  %260 = fcmp ogt float %258, %257
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, float %258, float %257
  %263 = fcmp ogt float %259, %262
  %264 = select i1 %263, i64 2, i64 %261
  %265 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %264
  %266 = load float, ptr %265, align 4, !tbaa !53
  %267 = call float @llvm.fabs.f32(float %266)
  %268 = fcmp olt float %267, 0x3E80000000000000
  br i1 %268, label %304, label %269

269:                                              ; preds = %236
  %270 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %264
  %271 = load float, ptr %270, align 4, !tbaa !53
  %272 = fdiv float %271, %266
  br i1 %181, label %277, label %273

273:                                              ; preds = %269
  %274 = fmul float %238, %239
  %275 = fmul float %274, %272
  %276 = call float @llvm.fmuladd.f32(float %237, float %239, float %275)
  store float %276, ptr %16, align 4, !tbaa !53
  br label %277

277:                                              ; preds = %273, %269
  br i1 %183, label %282, label %278

278:                                              ; preds = %277
  %279 = fmul float %238, %242
  %280 = fmul float %279, %272
  %281 = call float @llvm.fmuladd.f32(float %237, float %242, float %280)
  store float %281, ptr %172, align 4, !tbaa !53
  br label %282

282:                                              ; preds = %278, %277
  br i1 %185, label %287, label %283

283:                                              ; preds = %282
  %284 = fmul float %238, %246
  %285 = fmul float %284, %272
  %286 = call float @llvm.fmuladd.f32(float %237, float %246, float %285)
  store float %286, ptr %173, align 4, !tbaa !53
  br label %287

287:                                              ; preds = %283, %282
  br i1 %28, label %300, label %288

288:                                              ; preds = %287
  br i1 %187, label %290, label %289

289:                                              ; preds = %288
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #8
  br label %300

290:                                              ; preds = %288
  %291 = load float, ptr %11, align 4, !tbaa !53
  %292 = load float, ptr %16, align 4, !tbaa !53
  %293 = fadd float %291, %292
  store float %293, ptr %16, align 4, !tbaa !53
  %294 = load float, ptr %188, align 4, !tbaa !53
  %295 = load float, ptr %172, align 4, !tbaa !53
  %296 = fadd float %294, %295
  store float %296, ptr %172, align 4, !tbaa !53
  %297 = load float, ptr %189, align 4, !tbaa !53
  %298 = load float, ptr %173, align 4, !tbaa !53
  %299 = fadd float %297, %298
  store float %299, ptr %173, align 4, !tbaa !53
  br label %300

300:                                              ; preds = %289, %290, %287
  %301 = load float, ptr %16, align 4, !tbaa !53
  store float %301, ptr %195, align 4, !tbaa !53
  %302 = load float, ptr %172, align 4, !tbaa !53
  store float %302, ptr %197, align 4, !tbaa !53
  %303 = load float, ptr %173, align 4, !tbaa !53
  store float %303, ptr %199, align 4, !tbaa !53
  br label %304

304:                                              ; preds = %236, %211, %216, %220, %227, %300
  %305 = phi float [ %237, %300 ], [ %234, %227 ], [ %194, %220 ], [ %194, %216 ], [ %194, %211 ], [ %237, %236 ]
  %306 = phi float [ %238, %300 ], [ %235, %227 ], [ %193, %220 ], [ %193, %216 ], [ %193, %211 ], [ %238, %236 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  %307 = add nuw nsw i64 %192, 1
  %308 = icmp eq i64 %307, %190
  br i1 %308, label %309, label %191, !llvm.loop !61

309:                                              ; preds = %304, %136
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sphere_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store ptr null, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %12 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !46
  %14 = fsub float 1.000000e+00, %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  %15 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  %16 = load i16, ptr %15, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  %18 = load i16, ptr %17, align 2, !tbaa !34
  %19 = icmp eq i16 %18, 1
  %20 = and i16 %16, -9
  %21 = select i1 %19, i16 %20, i16 %16
  %22 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %5
  %26 = and i16 %21, 16
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  %30 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %29) #8
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %31) #8
  %32 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %9) #8
  br label %33

33:                                               ; preds = %28, %25
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %35 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %36 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %35) #8
  %37 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %34, ptr noundef nonnull %37) #8
  br label %38

38:                                               ; preds = %33, %5
  %39 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 3
  %40 = load float, ptr %39, align 4, !tbaa !47
  %41 = fcmp ule float %40, 0x3E80000000000000
  %42 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 5
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %42, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %43 = zext i16 %21 to i32
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 4
  %47 = select i1 %45, ptr %46, ptr %39
  %48 = load float, ptr %47, align 4, !tbaa !53
  %49 = fcmp ugt float %48, 0.000000e+00
  br i1 %49, label %84, label %50

50:                                               ; preds = %38
  %51 = icmp sgt i32 %4, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %50
  %53 = getelementptr inbounds float, ptr %8, i64 1
  %54 = getelementptr inbounds float, ptr %8, i64 2
  %55 = zext nneg i32 %4 to i64
  br label %56

56:                                               ; preds = %52, %56
  %57 = phi i64 [ 0, %52 ], [ %76, %56 ]
  %58 = phi float [ %48, %52 ], [ %75, %56 ]
  %59 = getelementptr inbounds [3 x float], ptr %3, i64 %57
  %60 = load float, ptr %59, align 4, !tbaa !53
  %61 = load float, ptr %8, align 4, !tbaa !53
  %62 = fsub float %60, %61
  %63 = getelementptr inbounds float, ptr %59, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !53
  %65 = load float, ptr %53, align 4, !tbaa !53
  %66 = fsub float %64, %65
  %67 = getelementptr inbounds float, ptr %59, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !53
  %69 = load float, ptr %54, align 4, !tbaa !53
  %70 = fsub float %68, %69
  %71 = fmul float %66, %66
  %72 = call float @llvm.fmuladd.f32(float %62, float %62, float %71)
  %73 = call float @llvm.fmuladd.f32(float %70, float %70, float %72)
  %74 = call float @sqrtf(float noundef %73) #8
  %75 = fadd float %58, %74
  %76 = add nuw nsw i64 %57, 1
  %77 = icmp eq i64 %76, %55
  br i1 %77, label %78, label %56, !llvm.loop !62

78:                                               ; preds = %56, %50
  %79 = phi float [ %48, %50 ], [ %75, %56 ]
  %80 = sitofp i32 %4 to float
  %81 = fdiv float %79, %80
  %82 = fcmp oeq float %81, 0.000000e+00
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %78, %83, %38
  %85 = phi float [ 1.000000e+01, %83 ], [ %81, %78 ], [ %48, %38 ]
  %86 = icmp sgt i32 %4, 0
  br i1 %86, label %87, label %204

87:                                               ; preds = %84
  %88 = getelementptr inbounds float, ptr %11, i64 1
  %89 = getelementptr inbounds float, ptr %11, i64 2
  %90 = and i32 %43, 16
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr inbounds float, ptr %8, i64 1
  %93 = getelementptr inbounds float, ptr %8, i64 2
  %94 = and i32 %43, 2
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %43, 4
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %43, 8
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %43, 16
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds float, ptr %8, i64 1
  %103 = getelementptr inbounds float, ptr %8, i64 2
  %104 = zext nneg i32 %4 to i64
  br label %105

105:                                              ; preds = %87, %199
  %106 = phi i64 [ 0, %87 ], [ %202, %199 ]
  %107 = phi float [ %14, %87 ], [ %201, %199 ]
  %108 = phi float [ %13, %87 ], [ %200, %199 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  %109 = getelementptr inbounds [3 x float], ptr %3, i64 %106
  %110 = load float, ptr %109, align 4, !tbaa !53
  store float %110, ptr %11, align 4, !tbaa !53
  %111 = getelementptr inbounds float, ptr %109, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !53
  store float %112, ptr %88, align 4, !tbaa !53
  %113 = getelementptr inbounds float, ptr %109, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !53
  store float %114, ptr %89, align 4, !tbaa !53
  br i1 %24, label %124, label %115

115:                                              ; preds = %105
  br i1 %91, label %117, label %116

116:                                              ; preds = %115
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %11) #8
  br label %124

117:                                              ; preds = %115
  %118 = load float, ptr %8, align 4, !tbaa !53
  %119 = fsub float %110, %118
  store float %119, ptr %11, align 4, !tbaa !53
  %120 = load float, ptr %92, align 4, !tbaa !53
  %121 = fsub float %112, %120
  store float %121, ptr %88, align 4, !tbaa !53
  %122 = load float, ptr %93, align 4, !tbaa !53
  %123 = fsub float %114, %122
  store float %123, ptr %89, align 4, !tbaa !53
  br label %124

124:                                              ; preds = %116, %117, %105
  %125 = load float, ptr %11, align 4, !tbaa !53
  %126 = load float, ptr %88, align 4, !tbaa !53
  %127 = load float, ptr %89, align 4, !tbaa !53
  %128 = select i1 %19, float 0.000000e+00, float %127
  br i1 %41, label %136, label %129

129:                                              ; preds = %124
  %130 = fmul float %126, %126
  %131 = call float @llvm.fmuladd.f32(float %125, float %125, float %130)
  %132 = call float @llvm.fmuladd.f32(float %128, float %128, float %131)
  %133 = call float @sqrtf(float noundef %132) #8
  %134 = load float, ptr %39, align 4, !tbaa !47
  %135 = fcmp ogt float %133, %134
  br i1 %135, label %199, label %136

136:                                              ; preds = %129, %124
  %137 = load ptr, ptr %6, align 8, !tbaa !52
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.MDeformVert, ptr %137, i64 %106
  %141 = load i32, ptr %7, align 4, !tbaa !60
  %142 = call float @defvert_find_weight(ptr noundef nonnull %140, i32 noundef %141) #8
  %143 = fcmp une float %142, 0.000000e+00
  %144 = fmul float %13, %142
  %145 = fsub float 1.000000e+00, %144
  %146 = select i1 %143, float %144, float %108
  %147 = select i1 %143, float %145, float %107
  br i1 %143, label %148, label %199

148:                                              ; preds = %139, %136
  %149 = phi float [ %146, %139 ], [ %108, %136 ]
  %150 = phi float [ %147, %139 ], [ %107, %136 ]
  %151 = fmul float %126, %126
  %152 = call float @llvm.fmuladd.f32(float %125, float %125, float %151)
  %153 = call float @llvm.fmuladd.f32(float %128, float %128, float %152)
  %154 = fcmp ogt float %153, 0x38AA95A5C0000000
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = call float @sqrtf(float noundef %153) #8
  %157 = fdiv float 1.000000e+00, %156
  %158 = fmul float %125, %157
  %159 = fmul float %126, %157
  %160 = fmul float %128, %157
  br label %161

161:                                              ; preds = %148, %155
  %162 = phi float [ %159, %155 ], [ 0.000000e+00, %148 ]
  %163 = phi float [ %158, %155 ], [ 0.000000e+00, %148 ]
  %164 = phi float [ %160, %155 ], [ 0.000000e+00, %148 ]
  br i1 %95, label %170, label %165

165:                                              ; preds = %161
  %166 = fmul float %149, %163
  %167 = load float, ptr %11, align 4, !tbaa !53
  %168 = fmul float %150, %167
  %169 = call float @llvm.fmuladd.f32(float %166, float %85, float %168)
  store float %169, ptr %11, align 4, !tbaa !53
  br label %170

170:                                              ; preds = %165, %161
  br i1 %97, label %176, label %171

171:                                              ; preds = %170
  %172 = fmul float %149, %162
  %173 = load float, ptr %88, align 4, !tbaa !53
  %174 = fmul float %150, %173
  %175 = call float @llvm.fmuladd.f32(float %172, float %85, float %174)
  store float %175, ptr %88, align 4, !tbaa !53
  br label %176

176:                                              ; preds = %171, %170
  br i1 %99, label %182, label %177

177:                                              ; preds = %176
  %178 = fmul float %149, %164
  %179 = load float, ptr %89, align 4, !tbaa !53
  %180 = fmul float %150, %179
  %181 = call float @llvm.fmuladd.f32(float %178, float %85, float %180)
  store float %181, ptr %89, align 4, !tbaa !53
  br label %182

182:                                              ; preds = %177, %176
  br i1 %24, label %195, label %183

183:                                              ; preds = %182
  br i1 %101, label %185, label %184

184:                                              ; preds = %183
  call void @mul_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  br label %195

185:                                              ; preds = %183
  %186 = load float, ptr %8, align 4, !tbaa !53
  %187 = load float, ptr %11, align 4, !tbaa !53
  %188 = fadd float %186, %187
  store float %188, ptr %11, align 4, !tbaa !53
  %189 = load float, ptr %102, align 4, !tbaa !53
  %190 = load float, ptr %88, align 4, !tbaa !53
  %191 = fadd float %189, %190
  store float %191, ptr %88, align 4, !tbaa !53
  %192 = load float, ptr %103, align 4, !tbaa !53
  %193 = load float, ptr %89, align 4, !tbaa !53
  %194 = fadd float %192, %193
  store float %194, ptr %89, align 4, !tbaa !53
  br label %195

195:                                              ; preds = %184, %185, %182
  %196 = load float, ptr %11, align 4, !tbaa !53
  store float %196, ptr %109, align 4, !tbaa !53
  %197 = load float, ptr %88, align 4, !tbaa !53
  store float %197, ptr %111, align 4, !tbaa !53
  %198 = load float, ptr %89, align 4, !tbaa !53
  store float %198, ptr %113, align 4, !tbaa !53
  br label %199

199:                                              ; preds = %129, %139, %195
  %200 = phi float [ %149, %195 ], [ %146, %139 ], [ %108, %129 ]
  %201 = phi float [ %150, %195 ], [ %147, %139 ], [ %107, %129 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  %202 = add nuw nsw i64 %106, 1
  %203 = icmp eq i64 %202, %104
  br i1 %203, label %204, label %105, !llvm.loop !63

204:                                              ; preds = %199, %84
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!34 = !{!35, !42, i64 198}
!35 = !{!"CastModifierData", !36, i64 0, !37, i64 112, !41, i64 120, !41, i64 124, !41, i64 128, !38, i64 132, !42, i64 196, !42, i64 198}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!44, !37, i64 1680}
!44 = !{!"DerivedMesh", !45, i64 0, !45, i64 200, !45, i64 400, !45, i64 600, !45, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!45 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!46 = !{!35, !41, i64 120}
!47 = !{!35, !41, i64 124}
!48 = !{!35, !41, i64 128}
!49 = !{!35, !42, i64 196}
!50 = !{!38, !38, i64 0}
!51 = !{!35, !37, i64 112}
!52 = !{!37, !37, i64 0}
!53 = !{!41, !41, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = distinct !{!58, !55, !56}
!59 = distinct !{!59, !55, !56}
!60 = !{!40, !40, i64 0}
!61 = distinct !{!61, !55, !56}
!62 = distinct !{!62, !55, !56}
!63 = distinct !{!63, !55, !56}
