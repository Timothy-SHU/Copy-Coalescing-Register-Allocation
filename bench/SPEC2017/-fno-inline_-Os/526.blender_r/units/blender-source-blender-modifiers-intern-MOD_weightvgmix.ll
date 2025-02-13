; ModuleID = 'blender/source/blender/modifiers/intern/MOD_weightvgmix.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_weightvgmix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WeightVGMixModifierData = type { %struct.ModifierData, [64 x i8], [64 x i8], float, float, i8, i8, [6 x i8], float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }

@modifierType_WeightVGMix = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"VertexWeightMix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WeightVGMixModifierData\00\00\00\00\00\00\00\00\00", i32 416, i32 5, i32 525, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr @foreachObjectLink, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"WeightVGMix Modifier, tidx\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"WeightVGMix Modifier, tdw1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"WeightVGMix Modifier, tdw2\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"WeightVGMix Modifier, indices\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"WeightVGMix Modifier, dw1\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"WeightVGMix Modifier, dw2\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"WeightVGMix Modifier, org_w\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"WeightVGMix Modifier, new_w\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"WeightVGMix Modifier\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"mask_texture\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %1, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %4) #6
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 !PGOFuncName !43 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call i32 %6(ptr noundef %2) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %226, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %11 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %10) #7, !range !47
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %226

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 1
  %15 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %14) #6
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %226, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 2
  %19 = load i8, ptr %18, align 8, !tbaa !48
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %18) #6
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %226, label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %22, %21 ], [ -1, %17 ]
  %26 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef nonnull %2, i32 noundef 2, i32 noundef %7) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !49
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %32, label %226

32:                                               ; preds = %28
  %33 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7, ptr noundef nonnull %14) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %226, label %35

35:                                               ; preds = %32, %24
  %36 = phi ptr [ %26, %24 ], [ %33, %32 ]
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %38 = sext i32 %7 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str) #6
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %42 = shl nsw i64 %38, 3
  %43 = tail call ptr %41(i64 noundef %42, ptr noundef nonnull @.str.1) #6
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %45 = tail call ptr %44(i64 noundef %42, ptr noundef nonnull @.str.2) #6
  %46 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 6
  %47 = load i8, ptr %46, align 1, !tbaa !49
  %48 = icmp sgt i32 %7, 0
  switch i8 %47, label %61 [
    i8 2, label %58
    i8 3, label %55
    i8 4, label %52
    i8 5, label %49
  ]

49:                                               ; preds = %35
  br i1 %48, label %50, label %151

50:                                               ; preds = %49
  %51 = zext nneg i32 %7 to i64
  br label %120

52:                                               ; preds = %35
  br i1 %48, label %53, label %151

53:                                               ; preds = %52
  %54 = zext nneg i32 %7 to i64
  br label %100

55:                                               ; preds = %35
  br i1 %48, label %56, label %151

56:                                               ; preds = %55
  %57 = zext nneg i32 %7 to i64
  br label %82

58:                                               ; preds = %35
  br i1 %48, label %59, label %151

59:                                               ; preds = %58
  %60 = zext nneg i32 %7 to i64
  br label %64

61:                                               ; preds = %35
  br i1 %48, label %62, label %167

62:                                               ; preds = %61
  %63 = zext nneg i32 %7 to i64
  br label %140

64:                                               ; preds = %59, %78
  %65 = phi i64 [ 0, %59 ], [ %80, %78 ]
  %66 = phi i32 [ 0, %59 ], [ %79, %78 ]
  %67 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %65
  %68 = tail call ptr @defvert_find_index(ptr noundef nonnull %67, i32 noundef %15) #6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  %71 = sext i32 %66 to i64
  %72 = getelementptr inbounds ptr, ptr %43, i64 %71
  store ptr %68, ptr %72, align 8, !tbaa !50
  %73 = tail call ptr @defvert_find_index(ptr noundef nonnull %67, i32 noundef %25) #6
  %74 = getelementptr inbounds ptr, ptr %45, i64 %71
  store ptr %73, ptr %74, align 8, !tbaa !50
  %75 = add nsw i32 %66, 1
  %76 = getelementptr inbounds i32, ptr %40, i64 %71
  %77 = trunc i64 %65 to i32
  store i32 %77, ptr %76, align 4, !tbaa !51
  br label %78

78:                                               ; preds = %70, %64
  %79 = phi i32 [ %75, %70 ], [ %66, %64 ]
  %80 = add nuw nsw i64 %65, 1
  %81 = icmp eq i64 %80, %60
  br i1 %81, label %149, label %64, !llvm.loop !52

82:                                               ; preds = %56, %96
  %83 = phi i64 [ 0, %56 ], [ %98, %96 ]
  %84 = phi i32 [ 0, %56 ], [ %97, %96 ]
  %85 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %83
  %86 = tail call ptr @defvert_find_index(ptr noundef nonnull %85, i32 noundef %25) #6
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = tail call ptr @defvert_find_index(ptr noundef nonnull %85, i32 noundef %15) #6
  %90 = sext i32 %84 to i64
  %91 = getelementptr inbounds ptr, ptr %43, i64 %90
  store ptr %89, ptr %91, align 8, !tbaa !50
  %92 = getelementptr inbounds ptr, ptr %45, i64 %90
  store ptr %86, ptr %92, align 8, !tbaa !50
  %93 = add nsw i32 %84, 1
  %94 = getelementptr inbounds i32, ptr %40, i64 %90
  %95 = trunc i64 %83 to i32
  store i32 %95, ptr %94, align 4, !tbaa !51
  br label %96

96:                                               ; preds = %88, %82
  %97 = phi i32 [ %93, %88 ], [ %84, %82 ]
  %98 = add nuw nsw i64 %83, 1
  %99 = icmp eq i64 %98, %57
  br i1 %99, label %149, label %82, !llvm.loop !54

100:                                              ; preds = %53, %116
  %101 = phi i64 [ 0, %53 ], [ %118, %116 ]
  %102 = phi i32 [ 0, %53 ], [ %117, %116 ]
  %103 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %101
  %104 = tail call ptr @defvert_find_index(ptr noundef nonnull %103, i32 noundef %15) #6
  %105 = tail call ptr @defvert_find_index(ptr noundef nonnull %103, i32 noundef %25) #6
  %106 = icmp ne ptr %104, null
  %107 = icmp ne ptr %105, null
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = sext i32 %102 to i64
  %111 = getelementptr inbounds ptr, ptr %43, i64 %110
  store ptr %104, ptr %111, align 8, !tbaa !50
  %112 = getelementptr inbounds ptr, ptr %45, i64 %110
  store ptr %105, ptr %112, align 8, !tbaa !50
  %113 = add nsw i32 %102, 1
  %114 = getelementptr inbounds i32, ptr %40, i64 %110
  %115 = trunc i64 %101 to i32
  store i32 %115, ptr %114, align 4, !tbaa !51
  br label %116

116:                                              ; preds = %100, %109
  %117 = phi i32 [ %113, %109 ], [ %102, %100 ]
  %118 = add nuw nsw i64 %101, 1
  %119 = icmp eq i64 %118, %54
  br i1 %119, label %149, label %100, !llvm.loop !55

120:                                              ; preds = %50, %136
  %121 = phi i64 [ 0, %50 ], [ %138, %136 ]
  %122 = phi i32 [ 0, %50 ], [ %137, %136 ]
  %123 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %121
  %124 = tail call ptr @defvert_find_index(ptr noundef nonnull %123, i32 noundef %15) #6
  %125 = tail call ptr @defvert_find_index(ptr noundef nonnull %123, i32 noundef %25) #6
  %126 = icmp ne ptr %124, null
  %127 = icmp ne ptr %125, null
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %136

129:                                              ; preds = %120
  %130 = sext i32 %122 to i64
  %131 = getelementptr inbounds ptr, ptr %43, i64 %130
  store ptr %124, ptr %131, align 8, !tbaa !50
  %132 = getelementptr inbounds ptr, ptr %45, i64 %130
  store ptr %125, ptr %132, align 8, !tbaa !50
  %133 = add nsw i32 %122, 1
  %134 = getelementptr inbounds i32, ptr %40, i64 %130
  %135 = trunc i64 %121 to i32
  store i32 %135, ptr %134, align 4, !tbaa !51
  br label %136

136:                                              ; preds = %129, %120
  %137 = phi i32 [ %133, %129 ], [ %122, %120 ]
  %138 = add nuw nsw i64 %121, 1
  %139 = icmp eq i64 %138, %51
  br i1 %139, label %149, label %120, !llvm.loop !56

140:                                              ; preds = %62, %140
  %141 = phi i64 [ 0, %62 ], [ %147, %140 ]
  %142 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %141
  %143 = tail call ptr @defvert_find_index(ptr noundef nonnull %142, i32 noundef %15) #6
  %144 = getelementptr inbounds ptr, ptr %43, i64 %141
  store ptr %143, ptr %144, align 8, !tbaa !50
  %145 = tail call ptr @defvert_find_index(ptr noundef nonnull %142, i32 noundef %25) #6
  %146 = getelementptr inbounds ptr, ptr %45, i64 %141
  store ptr %145, ptr %146, align 8, !tbaa !50
  %147 = add nuw nsw i64 %141, 1
  %148 = icmp eq i64 %147, %63
  br i1 %148, label %167, label %140, !llvm.loop !57

149:                                              ; preds = %136, %116, %96, %78
  %150 = phi i32 [ %79, %78 ], [ %97, %96 ], [ %117, %116 ], [ %137, %136 ]
  switch i32 %150, label %155 [
    i32 0, label %151
    i32 -1, label %167
  ]

151:                                              ; preds = %49, %52, %55, %58, %149
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %152(ptr noundef %43) #6
  %153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %153(ptr noundef %45) #6
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %154(ptr noundef %40) #6
  br label %226

155:                                              ; preds = %149
  %156 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %157 = sext i32 %150 to i64
  %158 = shl nsw i64 %157, 2
  %159 = tail call ptr %156(i64 noundef %158, ptr noundef nonnull @.str.3) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %159, ptr align 4 %40, i64 %158, i1 false)
  %160 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %161 = shl nsw i64 %157, 3
  %162 = tail call ptr %160(i64 noundef %161, ptr noundef nonnull @.str.4) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %162, ptr align 8 %43, i64 %161, i1 false)
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %163(ptr noundef %43) #6
  %164 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %165 = tail call ptr %164(i64 noundef %161, ptr noundef nonnull @.str.5) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %165, ptr align 8 %45, i64 %161, i1 false)
  %166 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %166(ptr noundef %45) #6
  br label %167

167:                                              ; preds = %140, %61, %149, %155
  %168 = phi i64 [ %39, %61 ], [ %39, %149 ], [ %158, %155 ], [ %39, %140 ]
  %169 = phi i32 [ %7, %61 ], [ %7, %149 ], [ %150, %155 ], [ %7, %140 ]
  %170 = phi ptr [ null, %61 ], [ null, %149 ], [ %159, %155 ], [ null, %140 ]
  %171 = phi ptr [ %45, %61 ], [ %45, %149 ], [ %165, %155 ], [ %45, %140 ]
  %172 = phi ptr [ %43, %61 ], [ %43, %149 ], [ %162, %155 ], [ %43, %140 ]
  %173 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %173(ptr noundef %40) #6
  %174 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %175 = tail call ptr %174(i64 noundef %168, ptr noundef nonnull @.str.6) #6
  %176 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %177 = tail call ptr %176(i64 noundef %168, ptr noundef nonnull @.str.7) #6
  %178 = icmp sgt i32 %169, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 3
  %181 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 4
  %182 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 5
  %183 = load i8, ptr %182, align 8, !tbaa !58
  %184 = zext nneg i32 %169 to i64
  br label %185

185:                                              ; preds = %179, %185
  %186 = phi i64 [ 0, %179 ], [ %202, %185 ]
  %187 = getelementptr inbounds ptr, ptr %172, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !50
  %189 = icmp eq ptr %188, null
  %190 = getelementptr inbounds %struct.MDeformWeight, ptr %188, i64 0, i32 1
  %191 = select i1 %189, ptr %180, ptr %190
  %192 = load float, ptr %191, align 4, !tbaa !59
  %193 = getelementptr inbounds float, ptr %175, i64 %186
  store float %192, ptr %193, align 4, !tbaa !59
  %194 = getelementptr inbounds ptr, ptr %171, i64 %186
  %195 = load ptr, ptr %194, align 8, !tbaa !50
  %196 = icmp eq ptr %195, null
  %197 = getelementptr inbounds %struct.MDeformWeight, ptr %195, i64 0, i32 1
  %198 = select i1 %196, ptr %181, ptr %197
  %199 = load float, ptr %198, align 4, !tbaa !59
  %200 = tail call fastcc float @mix_weight(float noundef %192, float noundef %199, i8 noundef zeroext %183) #7
  %201 = getelementptr inbounds float, ptr %177, i64 %186
  store float %200, ptr %201, align 4, !tbaa !59
  %202 = add nuw nsw i64 %186, 1
  %203 = icmp eq i64 %202, %184
  br i1 %203, label %204, label %185, !llvm.loop !60

204:                                              ; preds = %185, %167
  %205 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 8
  %206 = load float, ptr %205, align 8, !tbaa !61
  %207 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 9
  %208 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !62
  %210 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  %211 = load ptr, ptr %210, align 8, !tbaa !35
  %212 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 10
  %213 = load i32, ptr %212, align 4, !tbaa !63
  %214 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 13
  %215 = load i32, ptr %214, align 8, !tbaa !64
  %216 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 12
  %217 = load ptr, ptr %216, align 8, !tbaa !65
  %218 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 14
  tail call void @weightvg_do_mask(i32 noundef %169, ptr noundef %170, ptr noundef %175, ptr noundef %177, ptr noundef %1, ptr noundef %2, float noundef %206, ptr noundef nonnull %207, ptr noundef %209, ptr noundef %211, i32 noundef %213, i32 noundef %215, ptr noundef %217, ptr noundef nonnull %218) #6
  tail call void @weightvg_update_vg(ptr noundef nonnull %36, i32 noundef %15, ptr noundef %172, i32 noundef %169, ptr noundef %170, ptr noundef %175, i8 noundef zeroext 1, float noundef 0xC7EFFFFFE0000000, i8 noundef zeroext 0, float noundef 0.000000e+00) #6
  %219 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %219(ptr noundef %175) #6
  %220 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %220(ptr noundef %177) #6
  %221 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %221(ptr noundef %172) #6
  %222 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %222(ptr noundef %171) #6
  %223 = icmp eq ptr %170, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %204
  %225 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %225(ptr noundef nonnull %170) #6
  br label %226

226:                                              ; preds = %204, %224, %32, %28, %21, %13, %4, %9, %151
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !66 {
  %2 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 3
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 6
  store i8 5, ptr %4, align 1, !tbaa !49
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %5, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 10
  store i32 1, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 13
  store i32 0, ptr %7, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !67 {
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %1, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i8 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !70 {
  %6 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %14, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.8) #6
  br label %15

15:                                               ; preds = %13, %9, %5
  %16 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %4, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.8) #6
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 !PGOFuncName !71 {
  %2 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !72 {
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 12
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !73 {
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  tail call void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !74 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.9) #6
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @mix_weight(float noundef %0, float noundef %1, i8 noundef zeroext %2) unnamed_addr #5 !PGOFuncName !78 {
  switch i8 %2, label %30 [
    i8 7, label %27
    i8 2, label %4
    i8 3, label %6
    i8 4, label %8
    i8 5, label %10
    i8 6, label %22
  ]

4:                                                ; preds = %3
  %5 = fadd float %0, %1
  br label %30

6:                                                ; preds = %3
  %7 = fsub float %0, %1
  br label %30

8:                                                ; preds = %3
  %9 = fmul float %0, %1
  br label %30

10:                                               ; preds = %3
  %11 = fcmp olt float %1, 0.000000e+00
  %12 = fcmp ogt float %1, 0xB949F623E0000000
  %13 = and i1 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = fcmp oge float %1, 0.000000e+00
  %16 = fcmp olt float %1, 0x3949F623E0000000
  %17 = and i1 %15, %16
  %18 = select i1 %17, float 0x3949F623E0000000, float %1
  br label %19

19:                                               ; preds = %10, %14
  %20 = phi float [ %18, %14 ], [ 0xB949F623E0000000, %10 ]
  %21 = fdiv float %0, %20
  br label %30

22:                                               ; preds = %3
  %23 = fcmp olt float %0, %1
  %24 = fsub float %1, %0
  %25 = fsub float %0, %1
  %26 = select i1 %23, float %24, float %25
  br label %30

27:                                               ; preds = %3
  %28 = fadd float %0, %1
  %29 = fmul float %28, 5.000000e-01
  br label %30

30:                                               ; preds = %3, %27, %22, %19, %8, %6, %4
  %31 = phi float [ %5, %4 ], [ %7, %6 ], [ %9, %8 ], [ %21, %19 ], [ %26, %22 ], [ %29, %27 ], [ %1, %3 ]
  ret float %31
}

; Function Attrs: optsize
declare void @weightvg_do_mask(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @weightvg_update_vg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!34 = !{!"MOD_weightvgmix.c:copyData"}
!35 = !{!36, !38, i64 328}
!36 = !{!"WeightVGMixModifierData", !37, i64 0, !39, i64 112, !39, i64 176, !42, i64 240, !42, i64 244, !39, i64 248, !39, i64 249, !39, i64 250, !42, i64 256, !39, i64 260, !41, i64 324, !38, i64 328, !38, i64 336, !41, i64 344, !39, i64 348, !41, i64 412}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"float", !39, i64 0}
!43 = !{!"MOD_weightvgmix.c:applyModifier"}
!44 = !{!45, !38, i64 1104}
!45 = !{!"DerivedMesh", !46, i64 0, !46, i64 200, !46, i64 400, !46, i64 600, !46, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!46 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!47 = !{i8 0, i8 2}
!48 = !{!39, !39, i64 0}
!49 = !{!36, !39, i64 249}
!50 = !{!38, !38, i64 0}
!51 = !{!41, !41, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !53}
!58 = !{!36, !39, i64 248}
!59 = !{!42, !42, i64 0}
!60 = distinct !{!60, !53}
!61 = !{!36, !42, i64 256}
!62 = !{!36, !38, i64 96}
!63 = !{!36, !41, i64 324}
!64 = !{!36, !41, i64 344}
!65 = !{!36, !38, i64 336}
!66 = !{!"MOD_weightvgmix.c:initData"}
!67 = !{!"MOD_weightvgmix.c:requiredDataMask"}
!68 = !{!"MOD_weightvgmix.c:freeData"}
!69 = !{!"MOD_weightvgmix.c:isDisabled"}
!70 = !{!"MOD_weightvgmix.c:updateDepgraph"}
!71 = !{!"MOD_weightvgmix.c:dependsOnTime"}
!72 = !{!"MOD_weightvgmix.c:foreachObjectLink"}
!73 = !{!"MOD_weightvgmix.c:foreachIDLink"}
!74 = !{!"MOD_weightvgmix.c:foreachTexLink"}
!75 = !{!"MOD_weightvgmix.c:BLI_listbase_is_empty"}
!76 = !{!77, !38, i64 0}
!77 = !{!"ListBase", !38, i64 0, !38, i64 8}
!78 = !{!"MOD_weightvgmix.c:mix_weight"}
