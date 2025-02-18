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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %1, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %4) #5
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = tail call i32 %6(ptr noundef %2) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %254, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %254, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 1
  %15 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %14) #5
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %254, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 2
  %19 = load i8, ptr %18, align 8, !tbaa !47
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %18) #5
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %254, label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %22, %21 ], [ -1, %17 ]
  %26 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %2, i32 noundef 2, i32 noundef %7) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !48
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %32, label %254

32:                                               ; preds = %28
  %33 = tail call ptr @CustomData_add_layer_named(ptr noundef %2, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7, ptr noundef nonnull %14) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %254, label %35

35:                                               ; preds = %32, %24
  %36 = phi ptr [ %26, %24 ], [ %33, %32 ]
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %38 = sext i32 %7 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str) #5
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %42 = shl nsw i64 %38, 3
  %43 = tail call ptr %41(i64 noundef %42, ptr noundef nonnull @.str.1) #5
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %45 = tail call ptr %44(i64 noundef %42, ptr noundef nonnull @.str.2) #5
  %46 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 6
  %47 = load i8, ptr %46, align 1, !tbaa !48
  %48 = icmp sgt i32 %7, 0
  switch i8 %47, label %61 [
    i8 2, label %58
    i8 3, label %55
    i8 4, label %52
    i8 5, label %49
  ]

49:                                               ; preds = %35
  br i1 %48, label %50, label %149

50:                                               ; preds = %49
  %51 = zext nneg i32 %7 to i64
  br label %120

52:                                               ; preds = %35
  br i1 %48, label %53, label %149

53:                                               ; preds = %52
  %54 = zext nneg i32 %7 to i64
  br label %100

55:                                               ; preds = %35
  br i1 %48, label %56, label %149

56:                                               ; preds = %55
  %57 = zext nneg i32 %7 to i64
  br label %82

58:                                               ; preds = %35
  br i1 %48, label %59, label %149

59:                                               ; preds = %58
  %60 = zext nneg i32 %7 to i64
  br label %64

61:                                               ; preds = %35
  br i1 %48, label %62, label %149

62:                                               ; preds = %61
  %63 = zext nneg i32 %7 to i64
  br label %140

64:                                               ; preds = %59, %78
  %65 = phi i64 [ 0, %59 ], [ %80, %78 ]
  %66 = phi i32 [ 0, %59 ], [ %79, %78 ]
  %67 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %65
  %68 = tail call ptr @defvert_find_index(ptr noundef nonnull %67, i32 noundef %15) #5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  %71 = sext i32 %66 to i64
  %72 = getelementptr inbounds ptr, ptr %43, i64 %71
  store ptr %68, ptr %72, align 8, !tbaa !49
  %73 = tail call ptr @defvert_find_index(ptr noundef nonnull %67, i32 noundef %25) #5
  %74 = getelementptr inbounds ptr, ptr %45, i64 %71
  store ptr %73, ptr %74, align 8, !tbaa !49
  %75 = add nsw i32 %66, 1
  %76 = getelementptr inbounds i32, ptr %40, i64 %71
  %77 = trunc i64 %65 to i32
  store i32 %77, ptr %76, align 4, !tbaa !50
  br label %78

78:                                               ; preds = %70, %64
  %79 = phi i32 [ %75, %70 ], [ %66, %64 ]
  %80 = add nuw nsw i64 %65, 1
  %81 = icmp eq i64 %80, %60
  br i1 %81, label %149, label %64, !llvm.loop !51

82:                                               ; preds = %56, %96
  %83 = phi i64 [ 0, %56 ], [ %98, %96 ]
  %84 = phi i32 [ 0, %56 ], [ %97, %96 ]
  %85 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %83
  %86 = tail call ptr @defvert_find_index(ptr noundef nonnull %85, i32 noundef %25) #5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = tail call ptr @defvert_find_index(ptr noundef nonnull %85, i32 noundef %15) #5
  %90 = sext i32 %84 to i64
  %91 = getelementptr inbounds ptr, ptr %43, i64 %90
  store ptr %89, ptr %91, align 8, !tbaa !49
  %92 = getelementptr inbounds ptr, ptr %45, i64 %90
  store ptr %86, ptr %92, align 8, !tbaa !49
  %93 = add nsw i32 %84, 1
  %94 = getelementptr inbounds i32, ptr %40, i64 %90
  %95 = trunc i64 %83 to i32
  store i32 %95, ptr %94, align 4, !tbaa !50
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
  %104 = tail call ptr @defvert_find_index(ptr noundef nonnull %103, i32 noundef %15) #5
  %105 = tail call ptr @defvert_find_index(ptr noundef nonnull %103, i32 noundef %25) #5
  %106 = icmp ne ptr %104, null
  %107 = icmp ne ptr %105, null
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = sext i32 %102 to i64
  %111 = getelementptr inbounds ptr, ptr %43, i64 %110
  store ptr %104, ptr %111, align 8, !tbaa !49
  %112 = getelementptr inbounds ptr, ptr %45, i64 %110
  store ptr %105, ptr %112, align 8, !tbaa !49
  %113 = add nsw i32 %102, 1
  %114 = getelementptr inbounds i32, ptr %40, i64 %110
  %115 = trunc i64 %101 to i32
  store i32 %115, ptr %114, align 4, !tbaa !50
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
  %124 = tail call ptr @defvert_find_index(ptr noundef nonnull %123, i32 noundef %15) #5
  %125 = tail call ptr @defvert_find_index(ptr noundef nonnull %123, i32 noundef %25) #5
  %126 = icmp ne ptr %124, null
  %127 = icmp ne ptr %125, null
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %136

129:                                              ; preds = %120
  %130 = sext i32 %122 to i64
  %131 = getelementptr inbounds ptr, ptr %43, i64 %130
  store ptr %124, ptr %131, align 8, !tbaa !49
  %132 = getelementptr inbounds ptr, ptr %45, i64 %130
  store ptr %125, ptr %132, align 8, !tbaa !49
  %133 = add nsw i32 %122, 1
  %134 = getelementptr inbounds i32, ptr %40, i64 %130
  %135 = trunc i64 %121 to i32
  store i32 %135, ptr %134, align 4, !tbaa !50
  br label %136

136:                                              ; preds = %129, %120
  %137 = phi i32 [ %133, %129 ], [ %122, %120 ]
  %138 = add nuw nsw i64 %121, 1
  %139 = icmp eq i64 %138, %51
  br i1 %139, label %149, label %120, !llvm.loop !56

140:                                              ; preds = %62, %140
  %141 = phi i64 [ 0, %62 ], [ %147, %140 ]
  %142 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 %141
  %143 = tail call ptr @defvert_find_index(ptr noundef nonnull %142, i32 noundef %15) #5
  %144 = getelementptr inbounds ptr, ptr %43, i64 %141
  store ptr %143, ptr %144, align 8, !tbaa !49
  %145 = tail call ptr @defvert_find_index(ptr noundef nonnull %142, i32 noundef %25) #5
  %146 = getelementptr inbounds ptr, ptr %45, i64 %141
  store ptr %145, ptr %146, align 8, !tbaa !49
  %147 = add nuw nsw i64 %141, 1
  %148 = icmp eq i64 %147, %63
  br i1 %148, label %149, label %140, !llvm.loop !57

149:                                              ; preds = %136, %116, %96, %78, %140, %49, %52, %55, %58, %61
  %150 = phi i32 [ -1, %61 ], [ 0, %58 ], [ 0, %55 ], [ 0, %52 ], [ 0, %49 ], [ -1, %140 ], [ %79, %78 ], [ %97, %96 ], [ %117, %116 ], [ %137, %136 ]
  switch i32 %150, label %155 [
    i32 0, label %151
    i32 -1, label %167
  ]

151:                                              ; preds = %149
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %152(ptr noundef %43) #5
  %153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %153(ptr noundef %45) #5
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %154(ptr noundef %40) #5
  br label %254

155:                                              ; preds = %149
  %156 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %157 = sext i32 %150 to i64
  %158 = shl nsw i64 %157, 2
  %159 = tail call ptr %156(i64 noundef %158, ptr noundef nonnull @.str.3) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %159, ptr align 4 %40, i64 %158, i1 false)
  %160 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %161 = shl nsw i64 %157, 3
  %162 = tail call ptr %160(i64 noundef %161, ptr noundef nonnull @.str.4) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %162, ptr align 8 %43, i64 %161, i1 false)
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %163(ptr noundef %43) #5
  %164 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %165 = tail call ptr %164(i64 noundef %161, ptr noundef nonnull @.str.5) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %165, ptr align 8 %45, i64 %161, i1 false)
  %166 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %166(ptr noundef %45) #5
  br label %167

167:                                              ; preds = %149, %155
  %168 = phi i32 [ %150, %155 ], [ %7, %149 ]
  %169 = phi ptr [ %159, %155 ], [ null, %149 ]
  %170 = phi ptr [ %165, %155 ], [ %45, %149 ]
  %171 = phi ptr [ %162, %155 ], [ %43, %149 ]
  %172 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %172(ptr noundef %40) #5
  %173 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %174 = sext i32 %168 to i64
  %175 = shl nsw i64 %174, 2
  %176 = tail call ptr %173(i64 noundef %175, ptr noundef nonnull @.str.6) #5
  %177 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %178 = tail call ptr %177(i64 noundef %175, ptr noundef nonnull @.str.7) #5
  %179 = icmp sgt i32 %168, 0
  br i1 %179, label %180, label %232

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 3
  %182 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 4
  %183 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 5
  %184 = load i8, ptr %183, align 8, !tbaa !58
  %185 = zext nneg i32 %168 to i64
  br label %186

186:                                              ; preds = %180, %227
  %187 = phi i64 [ 0, %180 ], [ %230, %227 ]
  %188 = getelementptr inbounds ptr, ptr %171, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !49
  %190 = icmp eq ptr %189, null
  %191 = getelementptr inbounds %struct.MDeformWeight, ptr %189, i64 0, i32 1
  %192 = select i1 %190, ptr %181, ptr %191
  %193 = load float, ptr %192, align 4, !tbaa !59
  %194 = getelementptr inbounds float, ptr %176, i64 %187
  store float %193, ptr %194, align 4, !tbaa !59
  %195 = getelementptr inbounds ptr, ptr %170, i64 %187
  %196 = load ptr, ptr %195, align 8, !tbaa !49
  %197 = icmp eq ptr %196, null
  %198 = getelementptr inbounds %struct.MDeformWeight, ptr %196, i64 0, i32 1
  %199 = select i1 %197, ptr %182, ptr %198
  %200 = load float, ptr %199, align 4, !tbaa !59
  switch i8 %184, label %227 [
    i8 7, label %224
    i8 2, label %201
    i8 3, label %203
    i8 4, label %205
    i8 5, label %207
    i8 6, label %219
  ]

201:                                              ; preds = %186
  %202 = fadd float %193, %200
  br label %227

203:                                              ; preds = %186
  %204 = fsub float %193, %200
  br label %227

205:                                              ; preds = %186
  %206 = fmul float %193, %200
  br label %227

207:                                              ; preds = %186
  %208 = fcmp olt float %200, 0.000000e+00
  %209 = fcmp ogt float %200, 0xB949F623E0000000
  %210 = and i1 %208, %209
  br i1 %210, label %216, label %211

211:                                              ; preds = %207
  %212 = fcmp oge float %200, 0.000000e+00
  %213 = fcmp olt float %200, 0x3949F623E0000000
  %214 = and i1 %212, %213
  %215 = select i1 %214, float 0x3949F623E0000000, float %200
  br label %216

216:                                              ; preds = %211, %207
  %217 = phi float [ %215, %211 ], [ 0xB949F623E0000000, %207 ]
  %218 = fdiv float %193, %217
  br label %227

219:                                              ; preds = %186
  %220 = fcmp olt float %193, %200
  %221 = fsub float %200, %193
  %222 = fsub float %193, %200
  %223 = select i1 %220, float %221, float %222
  br label %227

224:                                              ; preds = %186
  %225 = fadd float %193, %200
  %226 = fmul float %225, 5.000000e-01
  br label %227

227:                                              ; preds = %186, %201, %203, %205, %216, %219, %224
  %228 = phi float [ %202, %201 ], [ %204, %203 ], [ %206, %205 ], [ %218, %216 ], [ %223, %219 ], [ %226, %224 ], [ %200, %186 ]
  %229 = getelementptr inbounds float, ptr %178, i64 %187
  store float %228, ptr %229, align 4, !tbaa !59
  %230 = add nuw nsw i64 %187, 1
  %231 = icmp eq i64 %230, %185
  br i1 %231, label %232, label %186, !llvm.loop !60

232:                                              ; preds = %227, %167
  %233 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 8
  %234 = load float, ptr %233, align 8, !tbaa !61
  %235 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 9
  %236 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %237 = load ptr, ptr %236, align 8, !tbaa !62
  %238 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  %239 = load ptr, ptr %238, align 8, !tbaa !34
  %240 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 10
  %241 = load i32, ptr %240, align 4, !tbaa !63
  %242 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 13
  %243 = load i32, ptr %242, align 8, !tbaa !64
  %244 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 12
  %245 = load ptr, ptr %244, align 8, !tbaa !65
  %246 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 14
  tail call void @weightvg_do_mask(i32 noundef %168, ptr noundef %169, ptr noundef %176, ptr noundef %178, ptr noundef %1, ptr noundef %2, float noundef %234, ptr noundef nonnull %235, ptr noundef %237, ptr noundef %239, i32 noundef %241, i32 noundef %243, ptr noundef %245, ptr noundef nonnull %246) #5
  tail call void @weightvg_update_vg(ptr noundef nonnull %36, i32 noundef %15, ptr noundef %171, i32 noundef %168, ptr noundef %169, ptr noundef %176, i8 noundef zeroext 1, float noundef 0xC7EFFFFFE0000000, i8 noundef zeroext 0, float noundef 0.000000e+00) #5
  %247 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %247(ptr noundef %176) #5
  %248 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %248(ptr noundef %178) #5
  %249 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %249(ptr noundef %171) #5
  %250 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %250(ptr noundef %170) #5
  %251 = icmp eq ptr %169, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %232
  %253 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %253(ptr noundef nonnull %169) #5
  br label %254

254:                                              ; preds = %232, %252, %32, %28, %21, %13, %4, %9, %151
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 3
  store float 0.000000e+00, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %3, align 4, !tbaa !67
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 5
  store i8 1, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 6
  store i8 5, ptr %5, align 1, !tbaa !48
  %6 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 10
  store i32 1, ptr %7, align 4, !tbaa !63
  %8 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 13
  store i32 0, ptr %8, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %1, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #5
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i8 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
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
  %14 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %14, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.8) #5
  br label %15

15:                                               ; preds = %13, %9, %5
  %16 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %4, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.8) #5
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 12
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 11
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  %6 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %0, i64 0, i32 12
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.9) #5
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @weightvg_do_mask(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @weightvg_update_vg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #3

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!34 = !{!35, !37, i64 328}
!35 = !{!"WeightVGMixModifierData", !36, i64 0, !38, i64 112, !38, i64 176, !41, i64 240, !41, i64 244, !38, i64 248, !38, i64 249, !38, i64 250, !41, i64 256, !38, i64 260, !40, i64 324, !37, i64 328, !37, i64 336, !40, i64 344, !38, i64 348, !40, i64 412}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!43, !37, i64 1104}
!43 = !{!"DerivedMesh", !44, i64 0, !44, i64 200, !44, i64 400, !44, i64 600, !44, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!44 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!45 = !{!46, !37, i64 0}
!46 = !{!"ListBase", !37, i64 0, !37, i64 8}
!47 = !{!38, !38, i64 0}
!48 = !{!35, !38, i64 249}
!49 = !{!37, !37, i64 0}
!50 = !{!40, !40, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = distinct !{!56, !52, !53}
!57 = distinct !{!57, !52, !53}
!58 = !{!35, !38, i64 248}
!59 = !{!41, !41, i64 0}
!60 = distinct !{!60, !52, !53}
!61 = !{!35, !41, i64 256}
!62 = !{!35, !37, i64 96}
!63 = !{!35, !40, i64 324}
!64 = !{!35, !40, i64 344}
!65 = !{!35, !37, i64 336}
!66 = !{!35, !41, i64 240}
!67 = !{!35, !41, i64 244}
