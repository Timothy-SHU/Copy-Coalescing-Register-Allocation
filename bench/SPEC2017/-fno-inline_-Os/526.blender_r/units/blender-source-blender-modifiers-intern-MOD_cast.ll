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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !35 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %8 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  %9 = load i16, ptr %8, align 2, !tbaa !36
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @cuboid_do(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4) #11
  br label %13

12:                                               ; preds = %6
  tail call fastcc void @sphere_do(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4) #11
  br label %13

13:                                               ; preds = %12, %11
  %14 = icmp eq ptr %7, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  tail call void %17(ptr noundef %7) #10
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !48 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %8 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  %9 = load i16, ptr %8, align 2, !tbaa !36
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @cuboid_do(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5) #11
  br label %13

12:                                               ; preds = %6
  tail call fastcc void @sphere_do(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5) #11
  br label %13

13:                                               ; preds = %12, %11
  %14 = icmp eq ptr %7, %3
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  tail call void %17(ptr noundef %7) #10
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !49 {
  %2 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  store <2 x float> <float 5.000000e-01, float 0.000000e+00>, ptr %2, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %3, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  store i16 46, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  store i16 0, ptr %5, align 2, !tbaa !36
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 5
  store i8 0, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.CastModifierData, ptr %1, i64 0, i32 5
  %4 = load i8, ptr %3, align 4, !tbaa !53
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  %4 = load i16, ptr %3, align 4, !tbaa !52
  %5 = and i16 %4, 14
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !57
  %8 = fcmp oeq float %7, 0.000000e+00
  %9 = icmp eq i16 %5, 0
  %10 = select i1 %8, i1 true, i1 %9
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !58 {
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str) #10
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !59 {
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #10
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cuboid_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !60 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [8 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store ptr null, ptr %6, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %17 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !57
  %19 = fsub float 1.000000e+00, %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #12
  %20 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  %21 = load i16, ptr %20, align 4, !tbaa !52
  %22 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !62
  %26 = fcmp ogt float %25, 0x3E80000000000000
  %27 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 5
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %28 = icmp eq ptr %23, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %5
  %30 = and i16 %21, 16
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %33) #10
  %35 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %35) #10
  %36 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #10
  br label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %40 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %38, ptr noundef nonnull %39) #10
  %41 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %38, ptr noundef nonnull %41) #10
  br label %42

42:                                               ; preds = %37, %5
  %43 = zext i16 %21 to i32
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  %46 = and i1 %45, %26
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load float, ptr %24, align 4, !tbaa !62
  %49 = fneg float %48
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ 0, %47 ], [ %54, %50 ]
  %52 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %51
  store float %49, ptr %52, align 4, !tbaa !50
  %53 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %51
  store float %48, ptr %53, align 4, !tbaa !50
  %54 = add nuw nsw i64 %51, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %122, label %50, !llvm.loop !63

56:                                               ; preds = %42
  br i1 %45, label %69, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 4
  %59 = load float, ptr %58, align 8, !tbaa !51
  %60 = fcmp ogt float %59, 0.000000e+00
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = fneg float %59
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %67, %63 ]
  %65 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %64
  store float %62, ptr %65, align 4, !tbaa !50
  %66 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %64
  store float %59, ptr %66, align 4, !tbaa !50
  %67 = add nuw nsw i64 %64, 1
  %68 = icmp eq i64 %67, 3
  br i1 %68, label %122, label %63, !llvm.loop !65

69:                                               ; preds = %57, %56
  %70 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x46293E5940000000, ptr %70, align 8, !tbaa !50
  %71 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %8, align 8, !tbaa !50
  %72 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %72, align 8, !tbaa !50
  %73 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %9, align 8, !tbaa !50
  br i1 %28, label %74, label %78

74:                                               ; preds = %69
  %75 = icmp sgt i32 %4, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %74
  %77 = zext nneg i32 %4 to i64
  br label %88

78:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11) #10
  %79 = icmp sgt i32 %4, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %78
  %81 = zext nneg i32 %4 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ 0, %80 ], [ %85, %82 ]
  %84 = getelementptr inbounds [3 x float], ptr %3, i64 %83
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef %84, ptr noundef nonnull %11) #11
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %14) #10
  %85 = add nuw nsw i64 %83, 1
  %86 = icmp eq i64 %85, %81
  br i1 %86, label %87, label %82, !llvm.loop !66

87:                                               ; preds = %82, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  br label %93

88:                                               ; preds = %76, %88
  %89 = phi i64 [ 0, %76 ], [ %91, %88 ]
  %90 = getelementptr inbounds [3 x float], ptr %3, i64 %89
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %90) #10
  %91 = add nuw nsw i64 %89, 1
  %92 = icmp eq i64 %91, %77
  br i1 %92, label %93, label %88, !llvm.loop !67

93:                                               ; preds = %88, %74, %87
  %94 = load float, ptr %8, align 8, !tbaa !50
  %95 = call float @llvm.fabs.f32(float %94)
  %96 = load float, ptr %9, align 8, !tbaa !50
  %97 = call float @llvm.fabs.f32(float %96)
  %98 = fcmp ogt float %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store float %95, ptr %9, align 8, !tbaa !50
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi float [ %95, %99 ], [ %96, %93 ]
  %102 = load float, ptr %71, align 4, !tbaa !50
  %103 = call float @llvm.fabs.f32(float %102)
  %104 = load float, ptr %73, align 4, !tbaa !50
  %105 = call float @llvm.fabs.f32(float %104)
  %106 = fcmp ogt float %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store float %103, ptr %73, align 4, !tbaa !50
  br label %108

108:                                              ; preds = %107, %100
  %109 = phi float [ %103, %107 ], [ %104, %100 ]
  %110 = load float, ptr %70, align 8, !tbaa !50
  %111 = call float @llvm.fabs.f32(float %110)
  %112 = load float, ptr %72, align 8, !tbaa !50
  %113 = call float @llvm.fabs.f32(float %112)
  %114 = fcmp ogt float %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store float %111, ptr %72, align 8, !tbaa !50
  br label %116

116:                                              ; preds = %115, %108
  %117 = phi float [ %111, %115 ], [ %112, %108 ]
  %118 = insertelement <2 x float> poison, float %101, i64 0
  %119 = insertelement <2 x float> %118, float %109, i64 1
  %120 = fneg <2 x float> %119
  store <2 x float> %120, ptr %8, align 8, !tbaa !50
  %121 = fneg float %117
  store float %121, ptr %70, align 8, !tbaa !50
  br label %122

122:                                              ; preds = %63, %50, %116
  %123 = load float, ptr %8, align 8, !tbaa !50
  %124 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 4
  store float %123, ptr %124, align 16, !tbaa !50
  %125 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 2
  store float %123, ptr %125, align 8, !tbaa !50
  %126 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 7
  %127 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 5
  %128 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 3
  %129 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %130 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 5, i64 1
  %131 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 4, i64 1
  %132 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %133 = load <2 x float>, ptr %9, align 8, !tbaa !50
  %134 = extractelement <2 x float> %133, i64 0
  store float %134, ptr %127, align 4, !tbaa !50
  store <2 x float> %133, ptr %126, align 4, !tbaa !50
  store <2 x float> %133, ptr %128, align 4, !tbaa !50
  %135 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %136 = extractelement <2 x float> %133, i64 1
  store float %136, ptr %135, align 4, !tbaa !50
  %137 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 3, i64 2
  %138 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  %139 = load <2 x float>, ptr %129, align 4, !tbaa !50
  %140 = extractelement <2 x float> %139, i64 0
  store float %140, ptr %131, align 4, !tbaa !50
  %141 = extractelement <2 x float> %139, i64 1
  store float %141, ptr %137, align 4, !tbaa !50
  store float %141, ptr %138, align 16, !tbaa !50
  store <2 x float> %139, ptr %132, align 16, !tbaa !50
  %142 = insertelement <4 x float> poison, float %123, i64 0
  %143 = shufflevector <2 x float> %139, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %144 = shufflevector <4 x float> %142, <4 x float> %143, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %145 = shufflevector <2 x float> %133, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %146 = shufflevector <4 x float> %144, <4 x float> %145, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %146, ptr %10, align 16, !tbaa !50
  %147 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %148 = load float, ptr %147, align 8, !tbaa !50
  %149 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 7, i64 2
  store float %148, ptr %149, align 4, !tbaa !50
  %150 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 6, i64 2
  store float %148, ptr %150, align 16, !tbaa !50
  %151 = shufflevector <4 x float> %144, <4 x float> %145, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %152 = insertelement <4 x float> %151, float %148, i64 3
  %153 = shufflevector <4 x float> %152, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  store <4 x float> %153, ptr %130, align 16, !tbaa !50
  %154 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 4, i64 2
  store float %148, ptr %154, align 8, !tbaa !50
  %155 = icmp sgt i32 %4, 0
  br i1 %155, label %156, label %261

156:                                              ; preds = %122
  %157 = and i32 %43, 16
  %158 = icmp eq i32 %157, 0
  %159 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %160 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %161 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %162 = and i32 %43, 2
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %43, 4
  %165 = icmp eq i32 %164, 0
  %166 = and i32 %43, 8
  %167 = icmp eq i32 %166, 0
  %168 = zext nneg i32 %4 to i64
  br label %169

169:                                              ; preds = %156, %256
  %170 = phi i64 [ 0, %156 ], [ %259, %256 ]
  %171 = phi float [ %18, %156 ], [ %258, %256 ]
  %172 = phi float [ %19, %156 ], [ %257, %256 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #12
  %173 = getelementptr inbounds [3 x float], ptr %3, i64 %170
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %173) #11
  br i1 %28, label %177, label %174

174:                                              ; preds = %169
  br i1 %158, label %176, label %175

175:                                              ; preds = %174
  call void @mul_m4_v3(ptr noundef nonnull %12, ptr noundef nonnull %16) #10
  br label %177

176:                                              ; preds = %174
  call fastcc void @sub_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %11) #11
  br label %177

177:                                              ; preds = %175, %176, %169
  br i1 %26, label %178, label %191

178:                                              ; preds = %177
  %179 = load float, ptr %16, align 8, !tbaa !50
  %180 = call float @llvm.fabs.f32(float %179)
  %181 = load float, ptr %24, align 4, !tbaa !62
  %182 = fcmp ogt float %180, %181
  br i1 %182, label %256, label %183

183:                                              ; preds = %178
  %184 = load float, ptr %159, align 4, !tbaa !50
  %185 = call float @llvm.fabs.f32(float %184)
  %186 = fcmp ogt float %185, %181
  br i1 %186, label %256, label %187

187:                                              ; preds = %183
  %188 = load float, ptr %160, align 8, !tbaa !50
  %189 = call float @llvm.fabs.f32(float %188)
  %190 = fcmp ogt float %189, %181
  br i1 %190, label %256, label %191

191:                                              ; preds = %187, %177
  %192 = load ptr, ptr %6, align 8, !tbaa !61
  %193 = icmp eq ptr %192, null
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.MDeformVert, ptr %192, i64 %170
  %196 = load i32, ptr %7, align 4, !tbaa !68
  %197 = call float @defvert_find_weight(ptr noundef nonnull %195, i32 noundef %196) #10
  %198 = fcmp une float %197, 0.000000e+00
  %199 = fmul float %18, %197
  %200 = fsub float 1.000000e+00, %199
  br i1 %198, label %201, label %256

201:                                              ; preds = %194, %191
  %202 = phi float [ %200, %194 ], [ %172, %191 ]
  %203 = phi float [ %199, %194 ], [ %171, %191 ]
  %204 = load float, ptr %160, align 8, !tbaa !50
  %205 = fcmp ogt float %204, 0.000000e+00
  %206 = load <2 x float>, ptr %16, align 8, !tbaa !50
  %207 = extractelement <2 x float> %206, i64 0
  %208 = fcmp ogt float %207, 0.000000e+00
  %209 = zext i1 %208 to i32
  %210 = extractelement <2 x float> %206, i64 1
  %211 = fcmp ogt float %210, 0.000000e+00
  %212 = or disjoint i32 %209, 2
  %213 = select i1 %211, i32 %212, i32 %209
  %214 = or disjoint i32 %213, 4
  %215 = select i1 %205, i32 %214, i32 %213
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds [8 x [3 x float]], ptr %10, i64 0, i64 %216
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %217) #11
  %218 = load <2 x float>, ptr %15, align 8, !tbaa !50
  %219 = fdiv <2 x float> %206, %218
  %220 = load float, ptr %161, align 8, !tbaa !50
  %221 = fdiv float %204, %220
  %222 = extractelement <2 x float> %219, i64 0
  %223 = extractelement <2 x float> %219, i64 1
  %224 = fcmp ogt float %223, %222
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, float %223, float %222
  %227 = fcmp ogt float %221, %226
  %228 = select i1 %227, i64 2, i64 %225
  %229 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %228
  %230 = load float, ptr %229, align 4, !tbaa !50
  %231 = call float @llvm.fabs.f32(float %230)
  %232 = fcmp olt float %231, 0x3E80000000000000
  br i1 %232, label %256, label %233

233:                                              ; preds = %201
  %234 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %228
  %235 = load float, ptr %234, align 4, !tbaa !50
  %236 = fdiv float %235, %230
  br i1 %163, label %241, label %237

237:                                              ; preds = %233
  %238 = fmul float %203, %207
  %239 = fmul float %238, %236
  %240 = call float @llvm.fmuladd.f32(float %202, float %207, float %239)
  store float %240, ptr %16, align 8, !tbaa !50
  br label %241

241:                                              ; preds = %237, %233
  br i1 %165, label %246, label %242

242:                                              ; preds = %241
  %243 = fmul float %203, %210
  %244 = fmul float %243, %236
  %245 = call float @llvm.fmuladd.f32(float %202, float %210, float %244)
  store float %245, ptr %159, align 4, !tbaa !50
  br label %246

246:                                              ; preds = %242, %241
  br i1 %167, label %251, label %247

247:                                              ; preds = %246
  %248 = fmul float %203, %204
  %249 = fmul float %248, %236
  %250 = call float @llvm.fmuladd.f32(float %202, float %204, float %249)
  store float %250, ptr %160, align 8, !tbaa !50
  br label %251

251:                                              ; preds = %247, %246
  br i1 %28, label %255, label %252

252:                                              ; preds = %251
  br i1 %158, label %254, label %253

253:                                              ; preds = %252
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #10
  br label %255

254:                                              ; preds = %252
  call fastcc void @add_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %11) #11
  br label %255

255:                                              ; preds = %253, %254, %251
  call fastcc void @copy_v3_v3(ptr noundef %173, ptr noundef nonnull %16) #11
  br label %256

256:                                              ; preds = %201, %178, %183, %187, %194, %255
  %257 = phi float [ %202, %255 ], [ %172, %194 ], [ %172, %187 ], [ %172, %183 ], [ %172, %178 ], [ %202, %201 ]
  %258 = phi float [ %203, %255 ], [ %171, %194 ], [ %171, %187 ], [ %171, %183 ], [ %171, %178 ], [ %203, %201 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  %259 = add nuw nsw i64 %170, 1
  %260 = icmp eq i64 %259, %168
  br i1 %260, label %261, label %169, !llvm.loop !69

261:                                              ; preds = %256, %122
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sphere_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !70 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store ptr null, ptr %6, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %13 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !57
  %15 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #12
  %16 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 6
  %17 = load i16, ptr %16, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 7
  %19 = load i16, ptr %18, align 2, !tbaa !36
  %20 = icmp eq i16 %19, 1
  %21 = and i16 %17, -9
  %22 = select i1 %20, i16 %21, i16 %17
  %23 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %5
  %27 = and i16 %22, 16
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  %31 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %30) #10
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %32) #10
  %33 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %10) #10
  br label %34

34:                                               ; preds = %29, %26
  %35 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %37 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %35, ptr noundef nonnull %36) #10
  %38 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %35, ptr noundef nonnull %38) #10
  br label %39

39:                                               ; preds = %34, %5
  %40 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !62
  %42 = fcmp ule float %41, 0x3E80000000000000
  %43 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 5
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %43, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %44 = zext i16 %22 to i32
  %45 = and i32 %44, 32
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.CastModifierData, ptr %0, i64 0, i32 4
  %48 = select i1 %46, ptr %47, ptr %40
  %49 = load float, ptr %48, align 4, !tbaa !50
  %50 = fcmp ugt float %49, 0.000000e+00
  br i1 %50, label %69, label %51

51:                                               ; preds = %39
  %52 = icmp sgt i32 %4, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %51
  %54 = zext nneg i32 %4 to i64
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i64 [ 0, %53 ], [ %61, %55 ]
  %57 = phi float [ %49, %53 ], [ %60, %55 ]
  %58 = getelementptr inbounds [3 x float], ptr %3, i64 %56
  %59 = call fastcc float @len_v3v3(ptr noundef nonnull %9, ptr noundef %58) #11
  %60 = fadd float %57, %59
  %61 = add nuw nsw i64 %56, 1
  %62 = icmp eq i64 %61, %54
  br i1 %62, label %63, label %55, !llvm.loop !71

63:                                               ; preds = %55, %51
  %64 = phi float [ %49, %51 ], [ %60, %55 ]
  %65 = sitofp i32 %4 to float
  %66 = fdiv float %64, %65
  %67 = fcmp oeq float %66, 0.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %63, %68, %39
  %70 = phi float [ 1.000000e+01, %68 ], [ %66, %63 ], [ %49, %39 ]
  %71 = icmp sgt i32 %4, 0
  br i1 %71, label %72, label %144

72:                                               ; preds = %69
  %73 = and i32 %44, 16
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %76 = and i32 %44, 2
  %77 = icmp eq i32 %76, 0
  %78 = and i32 %44, 4
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %81 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %82 = and i32 %44, 8
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %85 = zext nneg i32 %4 to i64
  br label %86

86:                                               ; preds = %72, %139
  %87 = phi i64 [ 0, %72 ], [ %142, %139 ]
  %88 = phi float [ %15, %72 ], [ %141, %139 ]
  %89 = phi float [ %14, %72 ], [ %140, %139 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %90 = getelementptr inbounds [3 x float], ptr %3, i64 %87
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %90) #11
  br i1 %25, label %94, label %91

91:                                               ; preds = %86
  br i1 %74, label %93, label %92

92:                                               ; preds = %91
  call void @mul_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %12) #10
  br label %94

93:                                               ; preds = %91
  call fastcc void @sub_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %9) #11
  br label %94

94:                                               ; preds = %92, %93, %86
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %12) #11
  br i1 %20, label %95, label %96

95:                                               ; preds = %94
  store float 0.000000e+00, ptr %75, align 4, !tbaa !50
  br label %96

96:                                               ; preds = %95, %94
  br i1 %42, label %101, label %97

97:                                               ; preds = %96
  %98 = call fastcc float @len_v3(ptr noundef nonnull %8) #11
  %99 = load float, ptr %40, align 4, !tbaa !62
  %100 = fcmp ogt float %98, %99
  br i1 %100, label %139, label %101

101:                                              ; preds = %97, %96
  %102 = load ptr, ptr %6, align 8, !tbaa !61
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.MDeformVert, ptr %102, i64 %87
  %106 = load i32, ptr %7, align 4, !tbaa !68
  %107 = call float @defvert_find_weight(ptr noundef nonnull %105, i32 noundef %106) #10
  %108 = fcmp une float %107, 0.000000e+00
  %109 = fmul float %14, %107
  %110 = fsub float 1.000000e+00, %109
  br i1 %108, label %111, label %139

111:                                              ; preds = %104, %101
  %112 = phi float [ %109, %104 ], [ %89, %101 ]
  %113 = phi float [ %110, %104 ], [ %88, %101 ]
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #11
  br i1 %77, label %120, label %114

114:                                              ; preds = %111
  %115 = load float, ptr %8, align 4, !tbaa !50
  %116 = fmul float %112, %115
  %117 = load float, ptr %12, align 4, !tbaa !50
  %118 = fmul float %113, %117
  %119 = call float @llvm.fmuladd.f32(float %116, float %70, float %118)
  store float %119, ptr %12, align 4, !tbaa !50
  br label %120

120:                                              ; preds = %114, %111
  br i1 %79, label %127, label %121

121:                                              ; preds = %120
  %122 = load float, ptr %80, align 4, !tbaa !50
  %123 = fmul float %112, %122
  %124 = load float, ptr %81, align 4, !tbaa !50
  %125 = fmul float %113, %124
  %126 = call float @llvm.fmuladd.f32(float %123, float %70, float %125)
  store float %126, ptr %81, align 4, !tbaa !50
  br label %127

127:                                              ; preds = %121, %120
  br i1 %83, label %134, label %128

128:                                              ; preds = %127
  %129 = load float, ptr %75, align 4, !tbaa !50
  %130 = fmul float %112, %129
  %131 = load float, ptr %84, align 4, !tbaa !50
  %132 = fmul float %113, %131
  %133 = call float @llvm.fmuladd.f32(float %130, float %70, float %132)
  store float %133, ptr %84, align 4, !tbaa !50
  br label %134

134:                                              ; preds = %128, %127
  br i1 %25, label %138, label %135

135:                                              ; preds = %134
  br i1 %74, label %137, label %136

136:                                              ; preds = %135
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  br label %138

137:                                              ; preds = %135
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %9) #11
  br label %138

138:                                              ; preds = %136, %137, %134
  call fastcc void @copy_v3_v3(ptr noundef %90, ptr noundef nonnull %12) #11
  br label %139

139:                                              ; preds = %97, %104, %138
  %140 = phi float [ %112, %138 ], [ %89, %104 ], [ %89, %97 ]
  %141 = phi float [ %113, %138 ], [ %88, %104 ], [ %88, %97 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  %142 = add nuw nsw i64 %87, 1
  %143 = icmp eq i64 %142, %85
  br i1 %143, label %144, label %86, !llvm.loop !72

144:                                              ; preds = %139, %69
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !73 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = load float, ptr %2, align 4, !tbaa !50
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !50
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !50
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !50
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !74 {
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
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !75 {
  %3 = load float, ptr %1, align 4, !tbaa !50
  %4 = load float, ptr %0, align 4, !tbaa !50
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !50
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !50
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !76 {
  %3 = load float, ptr %1, align 4, !tbaa !50
  %4 = load float, ptr %0, align 4, !tbaa !50
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !50
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !50
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !77 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #11
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !78 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #11
  %3 = tail call float @sqrtf(float noundef %2) #10
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !79 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !80 {
  %3 = load float, ptr %0, align 4, !tbaa !50
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !50
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !81 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #11
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #10
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #11
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !82 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #1 !PGOFuncName !83 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !50
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!34 = !{!"MOD_cast.c:copyData"}
!35 = !{!"MOD_cast.c:deformVerts"}
!36 = !{!37, !44, i64 198}
!37 = !{!"CastModifierData", !38, i64 0, !39, i64 112, !43, i64 120, !43, i64 124, !43, i64 128, !40, i64 132, !44, i64 196, !44, i64 198}
!38 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!"short", !40, i64 0}
!45 = !{!46, !39, i64 1680}
!46 = !{!"DerivedMesh", !47, i64 0, !47, i64 200, !47, i64 400, !47, i64 600, !47, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!47 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!48 = !{!"MOD_cast.c:deformVertsEM"}
!49 = !{!"MOD_cast.c:initData"}
!50 = !{!43, !43, i64 0}
!51 = !{!37, !43, i64 128}
!52 = !{!37, !44, i64 196}
!53 = !{!40, !40, i64 0}
!54 = !{!37, !39, i64 112}
!55 = !{!"MOD_cast.c:requiredDataMask"}
!56 = !{!"MOD_cast.c:isDisabled"}
!57 = !{!37, !43, i64 120}
!58 = !{!"MOD_cast.c:updateDepgraph"}
!59 = !{!"MOD_cast.c:foreachObjectLink"}
!60 = !{!"MOD_cast.c:cuboid_do"}
!61 = !{!39, !39, i64 0}
!62 = !{!37, !43, i64 124}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = !{!42, !42, i64 0}
!69 = distinct !{!69, !64}
!70 = !{!"MOD_cast.c:sphere_do"}
!71 = distinct !{!71, !64}
!72 = distinct !{!72, !64}
!73 = !{!"MOD_cast.c:sub_v3_v3v3"}
!74 = !{!"MOD_cast.c:copy_v3_v3"}
!75 = !{!"MOD_cast.c:sub_v3_v3"}
!76 = !{!"MOD_cast.c:add_v3_v3"}
!77 = !{!"MOD_cast.c:len_v3v3"}
!78 = !{!"MOD_cast.c:len_v3"}
!79 = !{!"MOD_cast.c:normalize_v3"}
!80 = !{!"MOD_cast.c:dot_v3v3"}
!81 = !{!"MOD_cast.c:normalize_v3_v3"}
!82 = !{!"MOD_cast.c:mul_v3_v3fl"}
!83 = !{!"MOD_cast.c:zero_v3"}
