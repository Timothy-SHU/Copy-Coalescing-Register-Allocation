; ModuleID = 'blender/source/blender/modifiers/intern/MOD_simpledeform.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_simpledeform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SimpleDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [2 x float], i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }

@modifierType_SimpleDeform = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"SimpleDeform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SimpleDeformModifierData\00\00\00\00\00\00\00\00", i32 200, i32 1, i32 27, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@SimpleDeformModifier_do.lock_axis = internal constant [2 x float] zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"SimpleDeform Modifier\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !35 {
  %7 = tail call i64 @requiredDataMask(ptr poison, ptr noundef %0) #13, !range !36
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #13
  br label %16

10:                                               ; preds = %6
  %11 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  tail call fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %3, i32 noundef %4) #13
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  tail call void %15(ptr noundef %11) #12
  br label %16

16:                                               ; preds = %9, %13, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !45 {
  %7 = tail call i64 @requiredDataMask(ptr poison, ptr noundef %0) #13, !range !36
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #13
  br label %16

10:                                               ; preds = %6
  %11 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  tail call fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %4, i32 noundef %5) #13
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  tail call void %15(ptr noundef %11) #12
  br label %16

16:                                               ; preds = %9, %13, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !46 {
  %2 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 5
  store i8 1, ptr %2, align 4, !tbaa !47
  %3 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 1, !tbaa !50
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 3
  store <2 x float> <float 0x3FE921FB60000000, float 0.000000e+00>, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 4, i64 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !55 {
  %6 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #12
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str) #12
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !56 {
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !57 {
  %6 = alloca [2 x float], align 8
  %7 = alloca %struct.SpaceTransform, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %13 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store ptr null, ptr %13, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %16, %5
  %18 = phi ptr [ null, %16 ], [ %14, %5 ]
  %19 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !52
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = fcmp ogt float %20, 1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %17, %24, %22
  %26 = phi float [ 1.000000e+00, %24 ], [ %20, %22 ], [ 0.000000e+00, %17 ]
  %27 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 4, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !52
  %29 = tail call fastcc float @min_ff(float noundef %26, float noundef %28) #13
  store float %29, ptr %19, align 4, !tbaa !52
  %30 = icmp eq ptr %18, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %33 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %7, ptr noundef nonnull %32, ptr noundef nonnull %33) #12
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %7, %31 ], [ null, %25 ]
  %36 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 5
  %37 = load i8, ptr %36, align 4, !tbaa !47
  %38 = icmp eq i8 %37, 2
  %39 = select i1 %38, i32 0, i32 2
  %40 = icmp sgt i32 %4, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = icmp eq ptr %35, null
  %43 = zext nneg i32 %39 to i64
  %44 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %43
  %45 = zext nneg i32 %4 to i64
  br label %46

46:                                               ; preds = %41, %52
  %47 = phi i64 [ 0, %41 ], [ %56, %52 ]
  %48 = phi float [ 0xC7EFFFFFE0000000, %41 ], [ %55, %52 ]
  %49 = phi float [ 0x47EFFFFFE0000000, %41 ], [ %54, %52 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %50 = getelementptr inbounds [3 x float], ptr %3, i64 %47
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %50) #13
  br i1 %42, label %52, label %51

51:                                               ; preds = %46
  call void @BLI_space_transform_apply(ptr noundef nonnull %35, ptr noundef nonnull %10) #12
  br label %52

52:                                               ; preds = %51, %46
  %53 = load float, ptr %44, align 4, !tbaa !52
  %54 = call fastcc float @min_ff(float noundef %49, float noundef %53) #13
  %55 = call fastcc float @max_ff(float noundef %48, float noundef %53) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  %56 = add nuw nsw i64 %47, 1
  %57 = icmp eq i64 %56, %45
  br i1 %57, label %58, label %46, !llvm.loop !58

58:                                               ; preds = %52
  %59 = load i8, ptr %36, align 4, !tbaa !47
  br label %60

60:                                               ; preds = %58, %34
  %61 = phi i8 [ %37, %34 ], [ %59, %58 ]
  %62 = phi float [ 0x47EFFFFFE0000000, %34 ], [ %54, %58 ]
  %63 = phi float [ 0xC7EFFFFFE0000000, %34 ], [ %55, %58 ]
  %64 = fsub float %63, %62
  %65 = load <2 x float>, ptr %19, align 4, !tbaa !52
  %66 = insertelement <2 x float> poison, float %64, i64 0
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer
  %68 = insertelement <2 x float> poison, float %62, i64 0
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %70 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> %65, <2 x float> %69)
  store <2 x float> %70, ptr %6, align 8, !tbaa !52
  %71 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 3
  %72 = load float, ptr %71, align 8, !tbaa !60
  %73 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %74 = fsub <2 x float> %73, %70
  %75 = extractelement <2 x float> %74, i64 0
  %76 = call fastcc float @max_ff(float noundef 0x3E80000000000000, float noundef %75) #13
  %77 = fdiv float %72, %76
  switch i8 %61, label %119 [
    i8 1, label %83
    i8 2, label %80
    i8 3, label %78
    i8 4, label %79
  ]

78:                                               ; preds = %60
  br label %83

79:                                               ; preds = %60
  br label %83

80:                                               ; preds = %60
  %81 = call float @llvm.fabs.f32(float %77)
  %82 = fcmp olt float %81, 0x3EB0C6F7A0000000
  br i1 %82, label %119, label %83

83:                                               ; preds = %78, %79, %60, %80
  %84 = phi ptr [ @simpleDeform_bend, %80 ], [ @simpleDeform_twist, %60 ], [ @simpleDeform_taper, %78 ], [ @simpleDeform_stretch, %79 ]
  %85 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 2
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %85, ptr noundef nonnull %9, ptr noundef nonnull %8) #12
  br i1 %40, label %86, label %119

86:                                               ; preds = %83
  %87 = icmp eq ptr %35, null
  %88 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 6
  %89 = zext nneg i32 %4 to i64
  br label %90

90:                                               ; preds = %86, %116
  %91 = phi i64 [ 0, %86 ], [ %117, %116 ]
  %92 = load ptr, ptr %9, align 8, !tbaa !61
  %93 = load i32, ptr %8, align 4, !tbaa !62
  %94 = trunc i64 %91 to i32
  %95 = call float @defvert_array_find_weight_safe(ptr noundef %92, i32 noundef %94, i32 noundef %93) #12
  %96 = fcmp une float %95, 0.000000e+00
  br i1 %96, label %97, label %116

97:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  br i1 %87, label %100, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds [3 x float], ptr %3, i64 %91
  call void @BLI_space_transform_apply(ptr noundef nonnull %35, ptr noundef %99) #12
  br label %100

100:                                              ; preds = %98, %97
  %101 = getelementptr inbounds [3 x float], ptr %3, i64 %91
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %101) #13
  %102 = load i8, ptr %36, align 4, !tbaa !47
  %103 = icmp eq i8 %102, 2
  br i1 %103, label %113, label %104

104:                                              ; preds = %100
  %105 = load i8, ptr %88, align 1, !tbaa !50
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call fastcc void @axis_limit(i32 noundef 0, ptr noundef nonnull @SimpleDeformModifier_do.lock_axis, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  br label %109

109:                                              ; preds = %108, %104
  %110 = and i8 %105, 2
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call fastcc void @axis_limit(i32 noundef 1, ptr noundef nonnull @SimpleDeformModifier_do.lock_axis, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  br label %113

113:                                              ; preds = %109, %112, %100
  call fastcc void @axis_limit(i32 noundef %39, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  call void %84(float noundef %77, ptr noundef nonnull %12, ptr noundef nonnull %11) #12, !callees !63
  call void @interp_v3_v3v3(ptr noundef %101, ptr noundef %101, ptr noundef nonnull %11, float noundef %95) #12
  br i1 %87, label %115, label %114

114:                                              ; preds = %113
  call void @BLI_space_transform_invert(ptr noundef nonnull %35, ptr noundef %101) #12
  br label %115

115:                                              ; preds = %114, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  br label %116

116:                                              ; preds = %115, %90
  %117 = add nuw nsw i64 %91, 1
  %118 = icmp eq i64 %117, %89
  br i1 %118, label %119, label %90, !llvm.loop !64

119:                                              ; preds = %116, %83, %80, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !65 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !66 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  store float %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !67 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal void @simpleDeform_twist(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #8 !PGOFuncName !68 {
  %4 = load float, ptr %2, align 4, !tbaa !52
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %8, %0
  %10 = tail call float @sinf(float noundef %9) #12
  %11 = tail call float @cosf(float noundef %9) #12
  %12 = fneg float %6
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %14 = insertelement <2 x float> %13, float %6, i64 1
  %15 = insertelement <2 x float> poison, float %12, i64 0
  %16 = insertelement <2 x float> %15, float %11, i64 1
  %17 = fmul <2 x float> %14, %16
  %18 = insertelement <2 x float> poison, float %4, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x float> %16, <2 x float> %13, <2 x i32> <i32 1, i32 2>
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %20, <2 x float> %17)
  store <2 x float> %21, ptr %2, align 4, !tbaa !52
  store float %8, ptr %7, align 4, !tbaa !52
  %22 = load float, ptr %1, align 4, !tbaa !52
  %23 = extractelement <2 x float> %21, i64 0
  %24 = fadd float %23, %22
  store float %24, ptr %2, align 4, !tbaa !52
  %25 = getelementptr inbounds float, ptr %1, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !52
  %27 = extractelement <2 x float> %21, i64 1
  %28 = fadd float %27, %26
  store float %28, ptr %5, align 4, !tbaa !52
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !52
  %31 = fadd float %8, %30
  store float %31, ptr %7, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal void @simpleDeform_bend(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #8 !PGOFuncName !69 {
  %4 = load float, ptr %2, align 4, !tbaa !52
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %4, %0
  %10 = tail call float @sinf(float noundef %9) #12
  %11 = tail call float @cosf(float noundef %9) #12
  %12 = fdiv float 1.000000e+00, %0
  %13 = fsub float %6, %12
  %14 = fneg float %13
  %15 = fmul float %10, %14
  store float %15, ptr %2, align 4, !tbaa !52
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %11, float %12)
  store float %16, ptr %5, align 4, !tbaa !52
  store float %8, ptr %7, align 4, !tbaa !52
  %17 = load float, ptr %1, align 4, !tbaa !52
  %18 = tail call float @llvm.fmuladd.f32(float %11, float %17, float %15)
  store float %18, ptr %2, align 4, !tbaa !52
  %19 = load float, ptr %1, align 4, !tbaa !52
  %20 = tail call float @llvm.fmuladd.f32(float %10, float %19, float %16)
  store float %20, ptr %5, align 4, !tbaa !52
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !52
  %23 = fadd float %8, %22
  store float %23, ptr %7, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @simpleDeform_taper(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #6 !PGOFuncName !70 {
  %4 = getelementptr inbounds float, ptr %2, i64 1
  %5 = getelementptr inbounds float, ptr %2, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = fmul float %6, %0
  %8 = load <2 x float>, ptr %2, align 4, !tbaa !52
  %9 = insertelement <2 x float> poison, float %7, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %10, <2 x float> %8)
  store <2 x float> %11, ptr %2, align 4, !tbaa !52
  %12 = load float, ptr %1, align 4, !tbaa !52
  %13 = extractelement <2 x float> %11, i64 0
  %14 = fadd float %13, %12
  store float %14, ptr %2, align 4, !tbaa !52
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = extractelement <2 x float> %11, i64 1
  %18 = fadd float %17, %16
  store float %18, ptr %4, align 4, !tbaa !52
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !52
  %21 = fadd float %6, %20
  store float %21, ptr %5, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @simpleDeform_stretch(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #6 !PGOFuncName !71 {
  %4 = getelementptr inbounds float, ptr %2, i64 1
  %5 = getelementptr inbounds float, ptr %2, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = fmul float %6, %6
  %8 = fneg float %0
  %9 = tail call float @llvm.fmuladd.f32(float %7, float %0, float %8)
  %10 = fadd float %9, 1.000000e+00
  %11 = load <2 x float>, ptr %2, align 4, !tbaa !52
  %12 = insertelement <2 x float> poison, float %10, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x float> %11, %13
  store <2 x float> %14, ptr %2, align 4, !tbaa !52
  %15 = fadd float %0, 1.000000e+00
  %16 = fmul float %15, %6
  store float %16, ptr %5, align 4, !tbaa !52
  %17 = load float, ptr %1, align 4, !tbaa !52
  %18 = extractelement <2 x float> %14, i64 0
  %19 = fadd float %18, %17
  store float %19, ptr %2, align 4, !tbaa !52
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !52
  %22 = extractelement <2 x float> %14, i64 1
  %23 = fadd float %22, %21
  store float %23, ptr %4, align 4, !tbaa !52
  %24 = getelementptr inbounds float, ptr %1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !52
  %26 = fadd float %16, %25
  store float %26, ptr %5, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @defvert_array_find_weight_safe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @axis_limit(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !PGOFuncName !72 {
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds float, ptr %2, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = load float, ptr %1, align 4, !tbaa !52
  %9 = fcmp ogt float %8, %7
  %10 = select i1 %9, float %8, float %7
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = fcmp olt float %12, %10
  %14 = select i1 %13, float %12, float %10
  %15 = fsub float %7, %14
  %16 = getelementptr inbounds float, ptr %3, i64 %5
  store float %15, ptr %16, align 4, !tbaa !52
  store float %14, ptr %6, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_space_transform_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!34 = !{!"MOD_simpledeform.c:copyData"}
!35 = !{!"MOD_simpledeform.c:deformVerts"}
!36 = !{i64 0, i64 5}
!37 = !{!38, !40, i64 1680}
!38 = !{!"DerivedMesh", !39, i64 0, !39, i64 200, !39, i64 400, !39, i64 600, !39, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !40, i64 1032, !40, i64 1040, !43, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1060, !40, i64 1064, !41, i64 1072, !40, i64 1080, !40, i64 1088, !40, i64 1096, !40, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !40, i64 1136, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !40, i64 1176, !40, i64 1184, !40, i64 1192, !40, i64 1200, !40, i64 1208, !40, i64 1216, !40, i64 1224, !40, i64 1232, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !40, i64 1304, !40, i64 1312, !40, i64 1320, !40, i64 1328, !40, i64 1336, !40, i64 1344, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !40, i64 1392, !40, i64 1400, !40, i64 1408, !40, i64 1416, !40, i64 1424, !40, i64 1432, !40, i64 1440, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !40, i64 1480, !40, i64 1488, !40, i64 1496, !40, i64 1504, !40, i64 1512, !40, i64 1520, !40, i64 1528, !40, i64 1536, !40, i64 1544, !40, i64 1552, !40, i64 1560, !40, i64 1568, !40, i64 1576, !40, i64 1584, !40, i64 1592, !40, i64 1600, !40, i64 1608, !40, i64 1616, !40, i64 1624, !40, i64 1632, !40, i64 1640, !40, i64 1648, !40, i64 1656, !40, i64 1664, !40, i64 1672, !40, i64 1680}
!39 = !{!"CustomData", !40, i64 0, !41, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !40, i64 184, !40, i64 192}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"float", !41, i64 0}
!45 = !{!"MOD_simpledeform.c:deformVertsEM"}
!46 = !{!"MOD_simpledeform.c:initData"}
!47 = !{!48, !41, i64 196}
!48 = !{!"SimpleDeformModifierData", !49, i64 0, !40, i64 112, !41, i64 120, !44, i64 184, !41, i64 188, !41, i64 196, !41, i64 197, !41, i64 198}
!49 = !{!"ModifierData", !40, i64 0, !40, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !40, i64 96, !40, i64 104}
!50 = !{!48, !41, i64 197}
!51 = !{!48, !40, i64 112}
!52 = !{!44, !44, i64 0}
!53 = !{!"MOD_simpledeform.c:requiredDataMask"}
!54 = !{!41, !41, i64 0}
!55 = !{!"MOD_simpledeform.c:updateDepgraph"}
!56 = !{!"MOD_simpledeform.c:foreachObjectLink"}
!57 = !{!"MOD_simpledeform.c:SimpleDeformModifier_do"}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!48, !44, i64 184}
!61 = !{!40, !40, i64 0}
!62 = !{!43, !43, i64 0}
!63 = !{ptr @simpleDeform_bend, ptr @simpleDeform_stretch, ptr @simpleDeform_taper, ptr @simpleDeform_twist}
!64 = distinct !{!64, !59}
!65 = !{!"MOD_simpledeform.c:min_ff"}
!66 = !{!"MOD_simpledeform.c:copy_v3_v3"}
!67 = !{!"MOD_simpledeform.c:max_ff"}
!68 = !{!"MOD_simpledeform.c:simpleDeform_twist"}
!69 = !{!"MOD_simpledeform.c:simpleDeform_bend"}
!70 = !{!"MOD_simpledeform.c:simpleDeform_taper"}
!71 = !{!"MOD_simpledeform.c:simpleDeform_stretch"}
!72 = !{!"MOD_simpledeform.c:axis_limit"}
