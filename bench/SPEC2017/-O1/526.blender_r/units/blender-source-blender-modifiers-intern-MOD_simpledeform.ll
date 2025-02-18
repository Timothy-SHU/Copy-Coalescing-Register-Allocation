; ModuleID = 'blender/source/blender/modifiers/intern/MOD_simpledeform.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_simpledeform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SimpleDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [2 x float], i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }

@modifierType_SimpleDeform = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"SimpleDeform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SimpleDeformModifierData\00\00\00\00\00\00\00\00", i32 200, i32 1, i32 27, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"SimpleDeform Modifier\00", align 1
@switch.table.SimpleDeformModifier_do = private unnamed_addr constant [4 x ptr] [ptr @simpleDeform_twist, ptr @simpleDeform_bend, ptr @simpleDeform_taper, ptr @simpleDeform_stretch], align 8

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %2, %6 ]
  tail call fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef %3, i32 noundef %4)
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 95
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  tail call void %17(ptr noundef %13) #10
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %3, %6 ]
  tail call fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef %4, i32 noundef %5)
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 95
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  tail call void %17(ptr noundef %13) #10
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 5
  store i8 1, ptr %2, align 4, !tbaa !43
  %3 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 1, !tbaa !46
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 3
  store float 0x3FE921FB60000000, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 4, i64 1
  store float 1.000000e+00, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str) #10
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #10
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SimpleDeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.SpaceTransform, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %12 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store ptr null, ptr %12, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 4
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store float 0.000000e+00, ptr %17, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %20, %16
  %22 = load float, ptr %17, align 4, !tbaa !49
  %23 = fcmp ogt float %22, 1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store float 1.000000e+00, ptr %17, align 4, !tbaa !49
  br label %25

25:                                               ; preds = %24, %21
  %26 = load float, ptr %17, align 4, !tbaa !49
  %27 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 4, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = fcmp olt float %26, %28
  %30 = select i1 %29, float %26, float %28
  store float %30, ptr %17, align 4, !tbaa !49
  %31 = load ptr, ptr %12, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %35 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %6, ptr noundef nonnull %34, ptr noundef nonnull %35) #10
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi ptr [ %6, %33 ], [ null, %25 ]
  %38 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 5
  %39 = load i8, ptr %38, align 4, !tbaa !43
  %40 = icmp eq i8 %39, 2
  %41 = select i1 %40, i32 0, i32 2
  %42 = icmp sgt i32 %4, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %36
  %44 = getelementptr inbounds float, ptr %9, i64 1
  %45 = getelementptr inbounds float, ptr %9, i64 2
  %46 = icmp eq ptr %37, null
  %47 = zext nneg i32 %41 to i64
  %48 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %47
  %49 = zext nneg i32 %4 to i64
  br label %50

50:                                               ; preds = %43, %61
  %51 = phi i64 [ 0, %43 ], [ %67, %61 ]
  %52 = phi float [ 0xC7EFFFFFE0000000, %43 ], [ %66, %61 ]
  %53 = phi float [ 0x47EFFFFFE0000000, %43 ], [ %64, %61 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %54 = getelementptr inbounds [3 x float], ptr %3, i64 %51
  %55 = load float, ptr %54, align 4, !tbaa !49
  store float %55, ptr %9, align 4, !tbaa !49
  %56 = getelementptr inbounds float, ptr %54, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !49
  store float %57, ptr %44, align 4, !tbaa !49
  %58 = getelementptr inbounds float, ptr %54, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !49
  store float %59, ptr %45, align 4, !tbaa !49
  br i1 %46, label %61, label %60

60:                                               ; preds = %50
  call void @BLI_space_transform_apply(ptr noundef nonnull %37, ptr noundef nonnull %9) #10
  br label %61

61:                                               ; preds = %60, %50
  %62 = load float, ptr %48, align 4, !tbaa !49
  %63 = fcmp olt float %53, %62
  %64 = select i1 %63, float %53, float %62
  %65 = fcmp ogt float %52, %62
  %66 = select i1 %65, float %52, float %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  %67 = add nuw nsw i64 %51, 1
  %68 = icmp eq i64 %67, %49
  br i1 %68, label %69, label %50, !llvm.loop !50

69:                                               ; preds = %61, %36
  %70 = phi float [ 0x47EFFFFFE0000000, %36 ], [ %64, %61 ]
  %71 = phi float [ 0xC7EFFFFFE0000000, %36 ], [ %66, %61 ]
  %72 = fsub float %71, %70
  %73 = load float, ptr %27, align 4, !tbaa !49
  %74 = call float @llvm.fmuladd.f32(float %72, float %73, float %70)
  %75 = load float, ptr %17, align 4, !tbaa !49
  %76 = call float @llvm.fmuladd.f32(float %72, float %75, float %70)
  %77 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 3
  %78 = load float, ptr %77, align 8, !tbaa !48
  %79 = fsub float %74, %76
  %80 = fcmp olt float %79, 0x3E80000000000000
  %81 = select i1 %80, float 0x3E80000000000000, float %79
  %82 = fdiv float %78, %81
  %83 = load i8, ptr %38, align 4, !tbaa !43
  %84 = add i8 %83, -1
  %85 = icmp ult i8 %84, 4
  br i1 %85, label %86, label %157

86:                                               ; preds = %69
  %87 = zext nneg i8 %84 to i64
  %88 = getelementptr inbounds [4 x ptr], ptr @switch.table.SimpleDeformModifier_do, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq i8 %83, 2
  %91 = call float @llvm.fabs.f32(float %82)
  %92 = fcmp olt float %91, 0x3EB0C6F7A0000000
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %157, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 2
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %95, ptr noundef nonnull %8, ptr noundef nonnull %7) #10
  %96 = icmp sgt i32 %4, 0
  br i1 %96, label %97, label %157

97:                                               ; preds = %94
  %98 = icmp eq ptr %37, null
  %99 = getelementptr inbounds float, ptr %10, i64 1
  %100 = getelementptr inbounds float, ptr %10, i64 2
  %101 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %0, i64 0, i32 6
  %102 = getelementptr inbounds float, ptr %11, i64 1
  %103 = zext nneg i32 %41 to i64
  %104 = getelementptr inbounds float, ptr %10, i64 %103
  %105 = getelementptr inbounds float, ptr %11, i64 %103
  %106 = zext nneg i32 %4 to i64
  br label %107

107:                                              ; preds = %97, %154
  %108 = phi i64 [ 0, %97 ], [ %155, %154 ]
  %109 = load ptr, ptr %8, align 8, !tbaa !53
  %110 = load i32, ptr %7, align 4, !tbaa !54
  %111 = trunc i64 %108 to i32
  %112 = call float @defvert_array_find_weight_safe(ptr noundef %109, i32 noundef %111, i32 noundef %110) #10
  %113 = fcmp une float %112, 0.000000e+00
  br i1 %113, label %114, label %154

114:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  br i1 %98, label %117, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds [3 x float], ptr %3, i64 %108
  call void @BLI_space_transform_apply(ptr noundef nonnull %37, ptr noundef %116) #10
  br label %117

117:                                              ; preds = %115, %114
  %118 = getelementptr inbounds [3 x float], ptr %3, i64 %108
  %119 = load float, ptr %118, align 4, !tbaa !49
  store float %119, ptr %10, align 4, !tbaa !49
  %120 = getelementptr inbounds float, ptr %118, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !49
  store float %121, ptr %99, align 4, !tbaa !49
  %122 = getelementptr inbounds float, ptr %118, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !49
  store float %123, ptr %100, align 4, !tbaa !49
  %124 = load i8, ptr %38, align 4, !tbaa !43
  %125 = icmp eq i8 %124, 2
  br i1 %125, label %145, label %126

126:                                              ; preds = %117
  %127 = load i8, ptr %101, align 1, !tbaa !46
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = fcmp olt float %119, 0.000000e+00
  %132 = select i1 %131, float 0.000000e+00, float %119
  %133 = fcmp ogt float %132, 0.000000e+00
  %134 = select i1 %133, float 0.000000e+00, float %132
  %135 = fsub float %119, %134
  store float %135, ptr %11, align 4, !tbaa !49
  store float %134, ptr %10, align 4, !tbaa !49
  br label %136

136:                                              ; preds = %130, %126
  %137 = and i8 %127, 2
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = fcmp olt float %121, 0.000000e+00
  %141 = select i1 %140, float 0.000000e+00, float %121
  %142 = fcmp ogt float %141, 0.000000e+00
  %143 = select i1 %142, float 0.000000e+00, float %141
  %144 = fsub float %121, %143
  store float %144, ptr %102, align 4, !tbaa !49
  store float %143, ptr %99, align 4, !tbaa !49
  br label %145

145:                                              ; preds = %136, %139, %117
  %146 = load float, ptr %104, align 4, !tbaa !49
  %147 = fcmp ogt float %76, %146
  %148 = select i1 %147, float %76, float %146
  %149 = fcmp olt float %74, %148
  %150 = select i1 %149, float %74, float %148
  %151 = fsub float %146, %150
  store float %151, ptr %105, align 4, !tbaa !49
  store float %150, ptr %104, align 4, !tbaa !49
  call void %89(float noundef %82, ptr noundef nonnull %11, ptr noundef nonnull %10) #10, !callees !55
  call void @interp_v3_v3v3(ptr noundef nonnull %118, ptr noundef nonnull %118, ptr noundef nonnull %10, float noundef %112) #10
  br i1 %98, label %153, label %152

152:                                              ; preds = %145
  call void @BLI_space_transform_invert(ptr noundef nonnull %37, ptr noundef nonnull %118) #10
  br label %153

153:                                              ; preds = %152, %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  br label %154

154:                                              ; preds = %153, %107
  %155 = add nuw nsw i64 %108, 1
  %156 = icmp eq i64 %155, %106
  br i1 %156, label %157, label %107, !llvm.loop !56

157:                                              ; preds = %154, %69, %94, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal void @simpleDeform_twist(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #6 {
  %4 = load float, ptr %2, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %8, %0
  %10 = tail call float @sinf(float noundef %9) #10
  %11 = tail call float @cosf(float noundef %9) #10
  %12 = fneg float %6
  %13 = fmul float %10, %12
  %14 = tail call float @llvm.fmuladd.f32(float %4, float %11, float %13)
  store float %14, ptr %2, align 4, !tbaa !49
  %15 = fmul float %6, %11
  %16 = tail call float @llvm.fmuladd.f32(float %4, float %10, float %15)
  store float %16, ptr %5, align 4, !tbaa !49
  store float %8, ptr %7, align 4, !tbaa !49
  %17 = load float, ptr %1, align 4, !tbaa !49
  %18 = fadd float %14, %17
  store float %18, ptr %2, align 4, !tbaa !49
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !49
  %21 = fadd float %16, %20
  store float %21, ptr %5, align 4, !tbaa !49
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = fadd float %8, %23
  store float %24, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal void @simpleDeform_bend(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #6 {
  %4 = load float, ptr %2, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %4, %0
  %10 = tail call float @sinf(float noundef %9) #10
  %11 = tail call float @cosf(float noundef %9) #10
  %12 = fdiv float 1.000000e+00, %0
  %13 = fsub float %6, %12
  %14 = fneg float %13
  %15 = fmul float %10, %14
  store float %15, ptr %2, align 4, !tbaa !49
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %11, float %12)
  store float %16, ptr %5, align 4, !tbaa !49
  store float %8, ptr %7, align 4, !tbaa !49
  %17 = load float, ptr %1, align 4, !tbaa !49
  %18 = tail call float @llvm.fmuladd.f32(float %11, float %17, float %15)
  store float %18, ptr %2, align 4, !tbaa !49
  %19 = load float, ptr %1, align 4, !tbaa !49
  %20 = tail call float @llvm.fmuladd.f32(float %10, float %19, float %16)
  store float %20, ptr %5, align 4, !tbaa !49
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !49
  %23 = fadd float %8, %22
  store float %23, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @simpleDeform_taper(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #7 {
  %4 = load float, ptr %2, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %8, %0
  %10 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %4)
  store float %10, ptr %2, align 4, !tbaa !49
  %11 = tail call float @llvm.fmuladd.f32(float %6, float %9, float %6)
  store float %11, ptr %5, align 4, !tbaa !49
  %12 = load float, ptr %1, align 4, !tbaa !49
  %13 = fadd float %10, %12
  store float %13, ptr %2, align 4, !tbaa !49
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = fadd float %11, %15
  store float %16, ptr %5, align 4, !tbaa !49
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fadd float %8, %18
  store float %19, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @simpleDeform_stretch(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #7 {
  %4 = load float, ptr %2, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %8, %8
  %10 = fneg float %0
  %11 = tail call float @llvm.fmuladd.f32(float %9, float %0, float %10)
  %12 = fadd float %11, 1.000000e+00
  %13 = fmul float %4, %12
  store float %13, ptr %2, align 4, !tbaa !49
  %14 = fmul float %6, %12
  store float %14, ptr %5, align 4, !tbaa !49
  %15 = fadd float %0, 1.000000e+00
  %16 = fmul float %15, %8
  store float %16, ptr %7, align 4, !tbaa !49
  %17 = load float, ptr %1, align 4, !tbaa !49
  %18 = fadd float %13, %17
  store float %18, ptr %2, align 4, !tbaa !49
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !49
  %21 = fadd float %14, %20
  store float %21, ptr %5, align 4, !tbaa !49
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = fadd float %16, %23
  store float %24, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @defvert_array_find_weight_safe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @BLI_space_transform_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !40, i64 1680}
!38 = !{!"DerivedMesh", !39, i64 0, !39, i64 200, !39, i64 400, !39, i64 600, !39, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !40, i64 1032, !40, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !40, i64 1064, !35, i64 1072, !40, i64 1080, !40, i64 1088, !40, i64 1096, !40, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !40, i64 1136, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !40, i64 1176, !40, i64 1184, !40, i64 1192, !40, i64 1200, !40, i64 1208, !40, i64 1216, !40, i64 1224, !40, i64 1232, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !40, i64 1304, !40, i64 1312, !40, i64 1320, !40, i64 1328, !40, i64 1336, !40, i64 1344, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !40, i64 1392, !40, i64 1400, !40, i64 1408, !40, i64 1416, !40, i64 1424, !40, i64 1432, !40, i64 1440, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !40, i64 1480, !40, i64 1488, !40, i64 1496, !40, i64 1504, !40, i64 1512, !40, i64 1520, !40, i64 1528, !40, i64 1536, !40, i64 1544, !40, i64 1552, !40, i64 1560, !40, i64 1568, !40, i64 1576, !40, i64 1584, !40, i64 1592, !40, i64 1600, !40, i64 1608, !40, i64 1616, !40, i64 1624, !40, i64 1632, !40, i64 1640, !40, i64 1648, !40, i64 1656, !40, i64 1664, !40, i64 1672, !40, i64 1680}
!39 = !{!"CustomData", !40, i64 0, !35, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 192}
!40 = !{!"any pointer", !35, i64 0}
!41 = !{!"int", !35, i64 0}
!42 = !{!"float", !35, i64 0}
!43 = !{!44, !35, i64 196}
!44 = !{!"SimpleDeformModifierData", !45, i64 0, !40, i64 112, !35, i64 120, !42, i64 184, !35, i64 188, !35, i64 196, !35, i64 197, !35, i64 198}
!45 = !{!"ModifierData", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !35, i64 32, !40, i64 96, !40, i64 104}
!46 = !{!44, !35, i64 197}
!47 = !{!44, !40, i64 112}
!48 = !{!44, !42, i64 184}
!49 = !{!42, !42, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!40, !40, i64 0}
!54 = !{!41, !41, i64 0}
!55 = !{ptr @simpleDeform_bend, ptr @simpleDeform_stretch, ptr @simpleDeform_taper, ptr @simpleDeform_twist}
!56 = distinct !{!56, !51, !52}
