; ModuleID = 'blender/source/blender/modifiers/intern/MOD_array.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ArrayModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, [3 x float], [3 x float], float, float, i32, i32, i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Path = type { ptr, i32, float }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.DagNode = type { i32, i16, float, float, float, ptr, ptr, i32, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i16 }
%struct.SortVertsElem = type { i32, [3 x float], float }

@modifierType_Array = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Array\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ArrayModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192, i32 2, i32 31, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"mod array doubles map\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.dm_mvert_map_doubles = private unnamed_addr constant [21 x i8] c"dm_mvert_map_doubles\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Array Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 7
  %17 = load float, ptr %16, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %18 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !44
  %22 = and i32 %21, 4
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %19, 1
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  %27 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 10
  %28 = load i32, ptr %27, align 4, !tbaa !47
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp ne ptr %33, null
  br label %35

35:                                               ; preds = %31, %4
  %36 = phi i1 [ false, %4 ], [ %34, %31 ]
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = tail call i32 %39(ptr noundef %2) #10
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = tail call i32 %42(ptr noundef %2) #10
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = tail call i32 %45(ptr noundef %2) #10
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = tail call i32 %48(ptr noundef %2) #10
  %50 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 12
  %51 = load i32, ptr %50, align 4, !tbaa !53
  %52 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %53, %1
  %56 = or i1 %54, %55
  br i1 %56, label %77, label %57

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 3
  %59 = load i16, ptr %58, align 8, !tbaa !55
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = tail call ptr @get_dm_for_modifier(ptr noundef nonnull %53, i32 noundef %3) #10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 23
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = tail call i32 %66(ptr noundef nonnull %62) #10
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 24
  %69 = load ptr, ptr %68, align 8, !tbaa !50
  %70 = tail call i32 %69(ptr noundef nonnull %62) #10
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 26
  %72 = load ptr, ptr %71, align 8, !tbaa !51
  %73 = tail call i32 %72(ptr noundef nonnull %62) #10
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 27
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  %76 = tail call i32 %75(ptr noundef nonnull %62) #10
  br label %77

77:                                               ; preds = %64, %61, %57, %35
  %78 = phi i32 [ %70, %64 ], [ 0, %61 ], [ 0, %57 ], [ 0, %35 ]
  %79 = phi i32 [ %76, %64 ], [ 0, %61 ], [ 0, %57 ], [ 0, %35 ]
  %80 = phi i32 [ %73, %64 ], [ 0, %61 ], [ 0, %57 ], [ 0, %35 ]
  %81 = phi i32 [ %67, %64 ], [ 0, %61 ], [ 0, %57 ], [ 0, %35 ]
  %82 = phi ptr [ %62, %64 ], [ null, %61 ], [ null, %57 ], [ null, %35 ]
  %83 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !62
  %85 = icmp eq ptr %84, null
  %86 = icmp eq ptr %84, %1
  %87 = or i1 %85, %86
  br i1 %87, label %108, label %88

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 3
  %90 = load i16, ptr %89, align 8, !tbaa !55
  %91 = icmp eq i16 %90, 1
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = tail call ptr @get_dm_for_modifier(ptr noundef nonnull %84, i32 noundef %3) #10
  %94 = icmp eq ptr %93, null
  br i1 %94, label %108, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.DerivedMesh, ptr %93, i64 0, i32 23
  %97 = load ptr, ptr %96, align 8, !tbaa !49
  %98 = tail call i32 %97(ptr noundef nonnull %93) #10
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %93, i64 0, i32 24
  %100 = load ptr, ptr %99, align 8, !tbaa !50
  %101 = tail call i32 %100(ptr noundef nonnull %93) #10
  %102 = getelementptr inbounds %struct.DerivedMesh, ptr %93, i64 0, i32 26
  %103 = load ptr, ptr %102, align 8, !tbaa !51
  %104 = tail call i32 %103(ptr noundef nonnull %93) #10
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %93, i64 0, i32 27
  %106 = load ptr, ptr %105, align 8, !tbaa !52
  %107 = tail call i32 %106(ptr noundef nonnull %93) #10
  br label %108

108:                                              ; preds = %95, %92, %88, %77
  %109 = phi i32 [ %98, %95 ], [ 0, %92 ], [ 0, %88 ], [ 0, %77 ]
  %110 = phi i32 [ %101, %95 ], [ 0, %92 ], [ 0, %88 ], [ 0, %77 ]
  %111 = phi i32 [ %107, %95 ], [ 0, %92 ], [ 0, %88 ], [ 0, %77 ]
  %112 = phi i32 [ %104, %95 ], [ 0, %92 ], [ 0, %88 ], [ 0, %77 ]
  %113 = phi ptr [ %93, %95 ], [ null, %92 ], [ null, %88 ], [ null, %77 ]
  call void @unit_m4(ptr noundef nonnull %5) #10
  %114 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %115 = load ptr, ptr %114, align 8, !tbaa !63
  %116 = call ptr %115(ptr noundef %2) #10
  %117 = load i32, ptr %27, align 4, !tbaa !47
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %122 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5
  %123 = load float, ptr %121, align 16, !tbaa !64
  %124 = load float, ptr %122, align 4, !tbaa !64
  %125 = fadd float %123, %124
  store float %125, ptr %121, align 16, !tbaa !64
  %126 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !64
  %128 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !64
  %130 = fadd float %127, %129
  store float %130, ptr %126, align 4, !tbaa !64
  %131 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %132 = load float, ptr %131, align 8, !tbaa !64
  %133 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !64
  %135 = fadd float %132, %134
  store float %135, ptr %131, align 8, !tbaa !64
  br label %136

136:                                              ; preds = %120, %108
  %137 = and i32 %117, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %174, label %139

139:                                              ; preds = %136
  %140 = icmp eq i32 %40, 0
  %141 = icmp sgt i32 %40, 1
  br label %142

142:                                              ; preds = %139, %167
  %143 = phi i64 [ 0, %139 ], [ %172, %167 ]
  %144 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 6, i64 %143
  %145 = load float, ptr %144, align 4, !tbaa !64
  br i1 %140, label %167, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds [3 x float], ptr %116, i64 0, i64 %143
  %148 = load float, ptr %147, align 4, !tbaa !64
  br i1 %141, label %149, label %163

149:                                              ; preds = %146, %149
  %150 = phi float [ %160, %149 ], [ %148, %146 ]
  %151 = phi float [ %158, %149 ], [ %148, %146 ]
  %152 = phi i32 [ %161, %149 ], [ 1, %146 ]
  %153 = phi ptr [ %154, %149 ], [ %116, %146 ]
  %154 = getelementptr inbounds %struct.MVert, ptr %153, i64 1
  %155 = getelementptr inbounds [3 x float], ptr %154, i64 0, i64 %143
  %156 = load float, ptr %155, align 4, !tbaa !64
  %157 = fcmp olt float %156, %151
  %158 = select i1 %157, float %156, float %151
  %159 = fcmp ogt float %156, %150
  %160 = select i1 %159, float %156, float %150
  %161 = add nuw nsw i32 %152, 1
  %162 = icmp eq i32 %161, %40
  br i1 %162, label %163, label %149, !llvm.loop !65

163:                                              ; preds = %149, %146
  %164 = phi float [ %148, %146 ], [ %158, %149 ]
  %165 = phi float [ %148, %146 ], [ %160, %149 ]
  %166 = fsub float %165, %164
  br label %167

167:                                              ; preds = %163, %142
  %168 = phi float [ %166, %163 ], [ 0.000000e+00, %142 ]
  %169 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 %143
  %170 = load float, ptr %169, align 4, !tbaa !64
  %171 = call float @llvm.fmuladd.f32(float %145, float %168, float %170)
  store float %171, ptr %169, align 4, !tbaa !64
  %172 = add nuw nsw i64 %143, 1
  %173 = icmp eq i64 %172, 3
  br i1 %173, label %174, label %142, !llvm.loop !68

174:                                              ; preds = %167, %136
  br i1 %36, label %175, label %185

175:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  %176 = icmp eq ptr %1, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %179 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %178) #10
  br label %181

180:                                              ; preds = %175
  call void @unit_m4(ptr noundef nonnull %9) #10
  br label %181

181:                                              ; preds = %180, %177
  %182 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !48
  %184 = getelementptr inbounds %struct.Object, ptr %183, i64 0, i32 47
  call void @_va_mul_m4_series_4(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %184) #10
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br label %185

185:                                              ; preds = %181, %174
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  %186 = load float, ptr %6, align 4, !tbaa !64
  %187 = fcmp oeq float %186, 1.000000e+00
  %188 = getelementptr inbounds float, ptr %6, i64 1
  %189 = load float, ptr %188, align 4
  %190 = fcmp oeq float %189, 1.000000e+00
  %191 = select i1 %187, i1 %190, i1 false
  %192 = getelementptr inbounds float, ptr %6, i64 2
  %193 = load float, ptr %192, align 4
  %194 = fcmp oeq float %193, 1.000000e+00
  %195 = select i1 %191, i1 %194, i1 false
  %196 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 9
  %197 = load i32, ptr %196, align 8, !tbaa !69
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %232

199:                                              ; preds = %185
  %200 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !70
  %202 = icmp eq ptr %201, null
  br i1 %202, label %232, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.Object, ptr %201, i64 0, i32 19
  %205 = load ptr, ptr %204, align 8, !tbaa !71
  %206 = icmp eq ptr %205, null
  br i1 %206, label %232, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.Object, ptr %201, i64 0, i32 118
  %209 = load ptr, ptr %208, align 8, !tbaa !72
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  call void @BKE_displist_make_curveTypes(ptr noundef %15, ptr noundef nonnull %201, i8 noundef zeroext 0) #10
  br label %212

212:                                              ; preds = %211, %207
  %213 = load ptr, ptr %200, align 8, !tbaa !70
  %214 = getelementptr inbounds %struct.Object, ptr %213, i64 0, i32 118
  %215 = load ptr, ptr %214, align 8, !tbaa !72
  %216 = icmp eq ptr %215, null
  br i1 %216, label %232, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.CurveCache, ptr %215, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !73
  %220 = icmp eq ptr %219, null
  br i1 %220, label %232, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Object, ptr %213, i64 0, i32 47
  %223 = call float @mat4_to_scale(ptr noundef nonnull %222) #10
  %224 = load ptr, ptr %200, align 8, !tbaa !70
  %225 = getelementptr inbounds %struct.Object, ptr %224, i64 0, i32 118
  %226 = load ptr, ptr %225, align 8, !tbaa !72
  %227 = getelementptr inbounds %struct.CurveCache, ptr %226, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !73
  %229 = getelementptr inbounds %struct.Path, ptr %228, i64 0, i32 2
  %230 = load float, ptr %229, align 4, !tbaa !75
  %231 = fmul float %223, %230
  br label %232

232:                                              ; preds = %221, %217, %212, %203, %199, %185
  %233 = phi float [ %17, %199 ], [ %17, %185 ], [ %231, %221 ], [ %17, %217 ], [ %17, %212 ], [ %17, %203 ]
  %234 = load i32, ptr %196, align 8, !tbaa !69
  %235 = add i32 %234, -1
  %236 = icmp ult i32 %235, 2
  br i1 %236, label %237, label %253

237:                                              ; preds = %232
  %238 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %239 = load float, ptr %238, align 16, !tbaa !64
  %240 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !64
  %242 = fmul float %241, %241
  %243 = call float @llvm.fmuladd.f32(float %239, float %239, float %242)
  %244 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %245 = load float, ptr %244, align 8, !tbaa !64
  %246 = call float @llvm.fmuladd.f32(float %245, float %245, float %243)
  %247 = call float @sqrtf(float noundef %246) #10
  %248 = fcmp ogt float %247, 0x3EB0C6F7A0000000
  %249 = fadd float %233, 0x3EB0C6F7A0000000
  %250 = fdiv float %249, %247
  %251 = fptosi float %250 to i32
  %252 = select i1 %248, i32 %251, i32 1
  br label %253

253:                                              ; preds = %237, %232
  %254 = phi i32 [ %252, %237 ], [ %51, %232 ]
  %255 = call i32 @llvm.smax.i32(i32 %254, i32 1)
  %256 = mul nsw i32 %255, %40
  %257 = add nsw i32 %256, %81
  %258 = add nsw i32 %257, %109
  %259 = mul nsw i32 %255, %43
  %260 = add nsw i32 %259, %78
  %261 = add nsw i32 %260, %110
  %262 = mul nsw i32 %255, %46
  %263 = add nsw i32 %262, %80
  %264 = add nsw i32 %263, %112
  %265 = mul nsw i32 %255, %49
  %266 = add nsw i32 %265, %79
  %267 = add nsw i32 %266, %111
  %268 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %258, i32 noundef %261, i32 noundef 0, i32 noundef %264, i32 noundef %267) #10
  %269 = call ptr @CDDM_get_verts(ptr noundef %268) #10
  %270 = icmp eq i32 %24, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %253
  %272 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %273 = sext i32 %258 to i64
  %274 = shl nsw i64 %273, 2
  %275 = call ptr %272(i64 noundef %274, ptr noundef nonnull @.str) #10
  call void @fill_vn_i(ptr noundef %275, i32 noundef %258, i32 noundef -1) #10
  br label %276

276:                                              ; preds = %271, %253
  %277 = phi ptr [ %275, %271 ], [ null, %253 ]
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %268, i32 noundef 0, i32 noundef 0, i32 noundef %40) #10
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %268, i32 noundef 0, i32 noundef 0, i32 noundef %43) #10
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %268, i32 noundef 0, i32 noundef 0, i32 noundef %46) #10
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %268, i32 noundef 0, i32 noundef 0, i32 noundef %49) #10
  %278 = call zeroext i8 @CustomData_has_layer(ptr noundef %2, i32 noundef 0) #10
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 36
  %282 = load ptr, ptr %281, align 8, !tbaa !78
  call void %282(ptr noundef %2, ptr noundef %269) #10
  br label %283

283:                                              ; preds = %280, %276
  %284 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 1
  %285 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %284, i32 noundef 3) #10
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 37
  %289 = load ptr, ptr %288, align 8, !tbaa !79
  %290 = call ptr @CDDM_get_edges(ptr noundef %268) #10
  call void %289(ptr noundef %2, ptr noundef %290) #10
  br label %291

291:                                              ; preds = %287, %283
  %292 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %293 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %292, i32 noundef 25) #10
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 39
  %297 = load ptr, ptr %296, align 8, !tbaa !80
  %298 = call ptr @CDDM_get_loops(ptr noundef %268) #10
  call void %297(ptr noundef %2, ptr noundef %298) #10
  %299 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 40
  %300 = load ptr, ptr %299, align 8, !tbaa !81
  %301 = call ptr @CDDM_get_polys(ptr noundef %268) #10
  call void %300(ptr noundef %2, ptr noundef %301) #10
  br label %302

302:                                              ; preds = %295, %291
  call void @unit_m4(ptr noundef nonnull %7) #10
  %303 = icmp sgt i32 %254, 1
  br i1 %303, label %304, label %467

304:                                              ; preds = %302
  %305 = icmp sgt i32 %40, 0
  %306 = getelementptr inbounds float, ptr %11, i64 1
  %307 = getelementptr inbounds float, ptr %11, i64 2
  %308 = icmp sgt i32 %43, 0
  %309 = icmp sgt i32 %49, 0
  %310 = icmp sgt i32 %46, 0
  %311 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %312 = icmp sgt i32 %40, 0
  %313 = sext i32 %40 to i64
  %314 = sext i32 %49 to i64
  %315 = sext i32 %46 to i64
  %316 = sext i32 %43 to i64
  %317 = sext i32 %40 to i64
  %318 = zext nneg i32 %254 to i64
  br label %319

319:                                              ; preds = %304, %462
  %320 = phi i64 [ 1, %304 ], [ %463, %462 ]
  %321 = phi i64 [ %313, %304 ], [ %465, %462 ]
  %322 = phi i32 [ 0, %304 ], [ %464, %462 ]
  %323 = trunc i64 %320 to i32
  %324 = sext i32 %322 to i64
  %325 = mul nsw i64 %320, %317
  %326 = mul nsw i32 %40, %323
  %327 = trunc i64 %325 to i32
  call void @DM_copy_vert_data(ptr noundef %268, ptr noundef %268, i32 noundef 0, i32 noundef %327, i32 noundef %40) #10
  %328 = mul nsw i64 %320, %316
  %329 = trunc i64 %328 to i32
  call void @DM_copy_edge_data(ptr noundef %268, ptr noundef %268, i32 noundef 0, i32 noundef %329, i32 noundef %43) #10
  %330 = mul nsw i64 %320, %315
  %331 = trunc i64 %330 to i32
  call void @DM_copy_loop_data(ptr noundef %268, ptr noundef %268, i32 noundef 0, i32 noundef %331, i32 noundef %46) #10
  %332 = mul nsw i64 %320, %314
  %333 = trunc i64 %332 to i32
  call void @DM_copy_poly_data(ptr noundef %268, ptr noundef %268, i32 noundef 0, i32 noundef %333, i32 noundef %49) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %5) #10
  br i1 %305, label %334, label %383

334:                                              ; preds = %319
  %335 = getelementptr inbounds %struct.MVert, ptr %269, i64 %325
  br label %336

336:                                              ; preds = %334, %379
  %337 = phi ptr [ %381, %379 ], [ %335, %334 ]
  %338 = phi i32 [ %380, %379 ], [ 0, %334 ]
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %337) #10
  br i1 %26, label %379, label %339

339:                                              ; preds = %336
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %340 = getelementptr inbounds %struct.MVert, ptr %337, i64 0, i32 1
  %341 = load i16, ptr %340, align 2, !tbaa !82
  %342 = sitofp i16 %341 to float
  %343 = fmul float %342, 0x3F00002000000000
  store float %343, ptr %11, align 4, !tbaa !64
  %344 = getelementptr inbounds %struct.MVert, ptr %337, i64 0, i32 1, i64 1
  %345 = load i16, ptr %344, align 2, !tbaa !82
  %346 = sitofp i16 %345 to float
  %347 = fmul float %346, 0x3F00002000000000
  store float %347, ptr %306, align 4, !tbaa !64
  %348 = getelementptr inbounds %struct.MVert, ptr %337, i64 0, i32 1, i64 2
  %349 = load i16, ptr %348, align 2, !tbaa !82
  %350 = sitofp i16 %349 to float
  %351 = fmul float %350, 0x3F00002000000000
  store float %351, ptr %307, align 4, !tbaa !64
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %352 = load float, ptr %11, align 4, !tbaa !64
  %353 = load float, ptr %306, align 4, !tbaa !64
  %354 = fmul float %353, %353
  %355 = call float @llvm.fmuladd.f32(float %352, float %352, float %354)
  %356 = load float, ptr %307, align 4, !tbaa !64
  %357 = call float @llvm.fmuladd.f32(float %356, float %356, float %355)
  %358 = fcmp ogt float %357, 0x38AA95A5C0000000
  br i1 %358, label %359, label %368

359:                                              ; preds = %339
  %360 = call float @sqrtf(float noundef %357) #10
  %361 = fdiv float 1.000000e+00, %360
  %362 = load float, ptr %11, align 4, !tbaa !64
  %363 = fmul float %362, %361
  store float %363, ptr %11, align 4, !tbaa !64
  %364 = load float, ptr %306, align 4, !tbaa !64
  %365 = fmul float %361, %364
  store float %365, ptr %306, align 4, !tbaa !64
  %366 = load float, ptr %307, align 4, !tbaa !64
  %367 = fmul float %361, %366
  br label %369

368:                                              ; preds = %339
  store float 0.000000e+00, ptr %11, align 4, !tbaa !64
  store float 0.000000e+00, ptr %306, align 4, !tbaa !64
  br label %369

369:                                              ; preds = %368, %359
  %370 = phi float [ 0.000000e+00, %368 ], [ %367, %359 ]
  store float %370, ptr %307, align 4, !tbaa !64
  %371 = load float, ptr %11, align 4, !tbaa !64
  %372 = fmul float %371, 3.276700e+04
  %373 = fptosi float %372 to i16
  store i16 %373, ptr %340, align 2, !tbaa !82
  %374 = load float, ptr %306, align 4, !tbaa !64
  %375 = fmul float %374, 3.276700e+04
  %376 = fptosi float %375 to i16
  store i16 %376, ptr %344, align 2, !tbaa !82
  %377 = fmul float %370, 3.276700e+04
  %378 = fptosi float %377 to i16
  store i16 %378, ptr %348, align 2, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  br label %379

379:                                              ; preds = %369, %336
  %380 = add nuw nsw i32 %338, 1
  %381 = getelementptr inbounds %struct.MVert, ptr %337, i64 1
  %382 = icmp eq i32 %380, %40
  br i1 %382, label %383, label %336, !llvm.loop !83

383:                                              ; preds = %379, %319
  %384 = call ptr @CDDM_get_edges(ptr noundef %268) #10
  br i1 %308, label %385, label %400

385:                                              ; preds = %383
  %386 = getelementptr inbounds %struct.MEdge, ptr %384, i64 %328
  %387 = trunc i64 %325 to i32
  %388 = trunc i64 %325 to i32
  br label %389

389:                                              ; preds = %385, %389
  %390 = phi ptr [ %398, %389 ], [ %386, %385 ]
  %391 = phi i32 [ %397, %389 ], [ 0, %385 ]
  %392 = load i32, ptr %390, align 4, !tbaa !84
  %393 = add i32 %392, %387
  store i32 %393, ptr %390, align 4, !tbaa !84
  %394 = getelementptr inbounds %struct.MEdge, ptr %390, i64 0, i32 1
  %395 = load i32, ptr %394, align 4, !tbaa !86
  %396 = add i32 %395, %388
  store i32 %396, ptr %394, align 4, !tbaa !86
  %397 = add nuw nsw i32 %391, 1
  %398 = getelementptr inbounds %struct.MEdge, ptr %390, i64 1
  %399 = icmp eq i32 %397, %43
  br i1 %399, label %400, label %389, !llvm.loop !87

400:                                              ; preds = %389, %383
  %401 = call ptr @CDDM_get_polys(ptr noundef %268) #10
  br i1 %309, label %402, label %413

402:                                              ; preds = %400
  %403 = getelementptr inbounds %struct.MPoly, ptr %401, i64 %332
  %404 = trunc i64 %330 to i32
  br label %405

405:                                              ; preds = %402, %405
  %406 = phi ptr [ %411, %405 ], [ %403, %402 ]
  %407 = phi i32 [ %410, %405 ], [ 0, %402 ]
  %408 = load i32, ptr %406, align 4, !tbaa !88
  %409 = add nsw i32 %408, %404
  store i32 %409, ptr %406, align 4, !tbaa !88
  %410 = add nuw nsw i32 %407, 1
  %411 = getelementptr inbounds %struct.MPoly, ptr %406, i64 1
  %412 = icmp eq i32 %410, %49
  br i1 %412, label %413, label %405, !llvm.loop !90

413:                                              ; preds = %405, %400
  %414 = call ptr @CDDM_get_loops(ptr noundef %268) #10
  br i1 %310, label %415, label %430

415:                                              ; preds = %413
  %416 = getelementptr inbounds %struct.MLoop, ptr %414, i64 %330
  %417 = trunc i64 %325 to i32
  %418 = trunc i64 %328 to i32
  br label %419

419:                                              ; preds = %415, %419
  %420 = phi ptr [ %428, %419 ], [ %416, %415 ]
  %421 = phi i32 [ %427, %419 ], [ 0, %415 ]
  %422 = load i32, ptr %420, align 4, !tbaa !91
  %423 = add i32 %422, %417
  store i32 %423, ptr %420, align 4, !tbaa !91
  %424 = getelementptr inbounds %struct.MLoop, ptr %420, i64 0, i32 1
  %425 = load i32, ptr %424, align 4, !tbaa !93
  %426 = add i32 %425, %418
  store i32 %426, ptr %424, align 4, !tbaa !93
  %427 = add nuw nsw i32 %421, 1
  %428 = getelementptr inbounds %struct.MLoop, ptr %420, i64 1
  %429 = icmp eq i32 %427, %46
  br i1 %429, label %430, label %419, !llvm.loop !94

430:                                              ; preds = %419, %413
  br i1 %25, label %431, label %462

431:                                              ; preds = %430
  %432 = icmp ugt i64 %320, 1
  %433 = and i1 %195, %432
  br i1 %433, label %434, label %457

434:                                              ; preds = %431
  br i1 %312, label %435, label %462

435:                                              ; preds = %434, %450
  %436 = phi i64 [ %454, %450 ], [ %321, %434 ]
  %437 = phi i64 [ %455, %450 ], [ %324, %434 ]
  %438 = phi i32 [ %453, %450 ], [ 0, %434 ]
  %439 = getelementptr inbounds i32, ptr %277, i64 %437
  %440 = load i32, ptr %439, align 4, !tbaa !95
  %441 = icmp eq i32 %440, -1
  br i1 %441, label %450, label %442

442:                                              ; preds = %435
  %443 = add nsw i32 %440, %40
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, ptr %277, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !95
  %447 = icmp eq i32 %446, -1
  %448 = select i1 %36, i32 %446, i32 -1
  %449 = select i1 %447, i32 %443, i32 %448
  br label %450

450:                                              ; preds = %442, %435
  %451 = phi i32 [ -1, %435 ], [ %449, %442 ]
  %452 = getelementptr inbounds i32, ptr %277, i64 %436
  store i32 %451, ptr %452, align 4, !tbaa !95
  %453 = add nuw nsw i32 %438, 1
  %454 = add nsw i64 %436, 1
  %455 = add nsw i64 %437, 1
  %456 = icmp eq i32 %453, %40
  br i1 %456, label %462, label %435, !llvm.loop !96

457:                                              ; preds = %431
  %458 = load float, ptr %311, align 4, !tbaa !97
  %459 = trunc i64 %320 to i32
  %460 = add i32 %459, -1
  %461 = mul i32 %460, %40
  call fastcc void @dm_mvert_map_doubles(ptr noundef %277, ptr noundef %269, i32 noundef %461, i32 noundef %40, i32 noundef %326, i32 noundef %40, float noundef %458, i8 noundef zeroext %37)
  br label %462

462:                                              ; preds = %450, %434, %457, %430
  %463 = add nuw nsw i64 %320, 1
  %464 = add i32 %322, %40
  %465 = add i64 %321, %313
  %466 = icmp eq i64 %463, %318
  br i1 %466, label %467, label %319, !llvm.loop !98

467:                                              ; preds = %462, %302
  %468 = add nsw i32 %255, -1
  %469 = mul nsw i32 %468, %40
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #10
  br i1 %25, label %470, label %479

470:                                              ; preds = %467
  %471 = load i32, ptr %18, align 8, !tbaa !43
  %472 = and i32 %471, 2
  %473 = icmp ne i32 %472, 0
  %474 = icmp sgt i32 %254, 1
  %475 = select i1 %473, i1 %474, i1 false
  br i1 %475, label %476, label %479

476:                                              ; preds = %470
  %477 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %478 = load float, ptr %477, align 4, !tbaa !97
  call fastcc void @dm_mvert_map_doubles(ptr noundef %277, ptr noundef %269, i32 noundef %469, i32 noundef %40, i32 noundef 0, i32 noundef %40, float noundef %478, i8 noundef zeroext %37)
  br label %479

479:                                              ; preds = %476, %470, %467
  %480 = icmp eq ptr %82, null
  br i1 %480, label %487, label %481

481:                                              ; preds = %479
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #10
  %482 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %5) #10
  call fastcc void @dm_merge_transform(ptr noundef %268, ptr noundef nonnull %82, ptr noundef nonnull %12, i32 noundef %256, i32 noundef %259, i32 noundef %262, i32 noundef %265, i32 noundef %81, i32 noundef %78, i32 noundef %80, i32 noundef %79)
  br i1 %270, label %486, label %483

483:                                              ; preds = %481
  %484 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %485 = load float, ptr %484, align 4, !tbaa !97
  call fastcc void @dm_mvert_map_doubles(ptr noundef %277, ptr noundef %269, i32 noundef 0, i32 noundef %40, i32 noundef %256, i32 noundef %81, float noundef %485, i8 noundef zeroext 0)
  br label %486

486:                                              ; preds = %483, %481
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #10
  br label %487

487:                                              ; preds = %486, %479
  %488 = icmp eq ptr %113, null
  br i1 %488, label %494, label %489

489:                                              ; preds = %487
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %5) #10
  call fastcc void @dm_merge_transform(ptr noundef %268, ptr noundef nonnull %113, ptr noundef nonnull %13, i32 noundef %257, i32 noundef %260, i32 noundef %263, i32 noundef %266, i32 noundef %109, i32 noundef %110, i32 noundef %112, i32 noundef %111)
  br i1 %270, label %493, label %490

490:                                              ; preds = %489
  %491 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %492 = load float, ptr %491, align 4, !tbaa !97
  call fastcc void @dm_mvert_map_doubles(ptr noundef %277, ptr noundef %269, i32 noundef %469, i32 noundef %40, i32 noundef %257, i32 noundef %109, float noundef %492, i8 noundef zeroext 0)
  br label %493

493:                                              ; preds = %490, %489
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #10
  br label %494

494:                                              ; preds = %493, %487
  br i1 %270, label %523, label %495

495:                                              ; preds = %494
  %496 = icmp sgt i32 %258, 0
  br i1 %496, label %497, label %515

497:                                              ; preds = %495
  %498 = zext nneg i32 %258 to i64
  br label %499

499:                                              ; preds = %497, %511
  %500 = phi i64 [ 0, %497 ], [ %513, %511 ]
  %501 = phi i32 [ 0, %497 ], [ %512, %511 ]
  %502 = getelementptr inbounds i32, ptr %277, i64 %500
  %503 = load i32, ptr %502, align 4, !tbaa !95
  %504 = icmp eq i32 %503, -1
  br i1 %504, label %511, label %505

505:                                              ; preds = %499
  %506 = zext i32 %503 to i64
  %507 = icmp eq i64 %500, %506
  br i1 %507, label %508, label %509

508:                                              ; preds = %505
  store i32 -1, ptr %502, align 4, !tbaa !95
  br label %511

509:                                              ; preds = %505
  %510 = add nsw i32 %501, 1
  br label %511

511:                                              ; preds = %509, %508, %499
  %512 = phi i32 [ %501, %508 ], [ %510, %509 ], [ %501, %499 ]
  %513 = add nuw nsw i64 %500, 1
  %514 = icmp eq i64 %513, %498
  br i1 %514, label %515, label %499, !llvm.loop !99

515:                                              ; preds = %511, %495
  %516 = phi i32 [ 0, %495 ], [ %512, %511 ]
  %517 = icmp sgt i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %515
  %519 = call ptr @CDDM_merge_verts(ptr noundef %268, ptr noundef %277, i32 noundef %516, i32 noundef 1) #10
  br label %520

520:                                              ; preds = %518, %515
  %521 = phi ptr [ %519, %518 ], [ %268, %515 ]
  %522 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %522(ptr noundef %277) #10
  br label %523

523:                                              ; preds = %520, %494
  %524 = phi ptr [ %521, %520 ], [ %268, %494 ]
  br i1 %26, label %525, label %529

525:                                              ; preds = %523
  %526 = getelementptr inbounds %struct.DerivedMesh, ptr %524, i64 0, i32 16
  %527 = load i32, ptr %526, align 8, !tbaa !44
  %528 = or i32 %527, 4
  store i32 %528, ptr %526, align 8, !tbaa !44
  br label %529

529:                                              ; preds = %523, %525
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret ptr %524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  store i32 2, ptr %3, align 4, !tbaa !53
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5
  store float 0.000000e+00, ptr %4, align 4, !tbaa !64
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !64
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !64
  %7 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %7, align 4, !tbaa !64
  %8 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 6, i64 2
  store float 0.000000e+00, ptr %8, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 6, i64 1
  store float 0.000000e+00, ptr %9, align 4, !tbaa !64
  %10 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 7
  store float 0.000000e+00, ptr %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  store float 0x3F847AE140000000, ptr %11, align 4, !tbaa !97
  %12 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 9
  store i32 0, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 10
  store i32 2, ptr %13, align 4, !tbaa !47
  %14 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 11
  store i32 0, ptr %14, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #10
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #10
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %19) #10
  %23 = getelementptr inbounds %struct.DagNode, ptr %22, i64 0, i32 21
  %24 = load i16, ptr %23, align 2, !tbaa !100
  %25 = or i16 %24, 1
  store i16 %25, ptr %23, align 2, !tbaa !100
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %22, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #10
  br label %26

26:                                               ; preds = %21, %17
  %27 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %28) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %31, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #10
  br label %32

32:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #10
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 3
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #10
  %8 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %8) #10
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @get_dm_for_modifier(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #2

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dm_mvert_map_doubles(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = fpext float %6 to double
  %10 = fmul double %9, 0x3FFBB6AF561E0CAA
  %11 = fptrunc double %10 to float
  %12 = add nsw i32 %3, %2
  %13 = add nsw i32 %5, %4
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %15 = sext i32 %3 to i64
  %16 = mul nsw i64 %15, 20
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @__func__.dm_mvert_map_doubles) #10
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %19 = sext i32 %5 to i64
  %20 = mul nsw i64 %19, 20
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @__func__.dm_mvert_map_doubles) #10
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %8
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds %struct.MVert, ptr %1, i64 %24
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i32 [ %44, %26 ], [ %2, %23 ]
  %28 = phi ptr [ %45, %26 ], [ %17, %23 ]
  %29 = phi ptr [ %46, %26 ], [ %25, %23 ]
  store i32 %27, ptr %28, align 4, !tbaa !102
  %30 = getelementptr inbounds %struct.SortVertsElem, ptr %28, i64 0, i32 1
  %31 = load float, ptr %29, align 4, !tbaa !64
  store float %31, ptr %30, align 4, !tbaa !64
  %32 = getelementptr inbounds float, ptr %29, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !64
  %34 = getelementptr inbounds %struct.SortVertsElem, ptr %28, i64 0, i32 1, i64 1
  store float %33, ptr %34, align 4, !tbaa !64
  %35 = getelementptr inbounds float, ptr %29, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !64
  %37 = getelementptr inbounds %struct.SortVertsElem, ptr %28, i64 0, i32 1, i64 2
  store float %36, ptr %37, align 4, !tbaa !64
  %38 = load float, ptr %29, align 4, !tbaa !64
  %39 = load float, ptr %32, align 4, !tbaa !64
  %40 = fadd float %38, %39
  %41 = load float, ptr %35, align 4, !tbaa !64
  %42 = fadd float %40, %41
  %43 = getelementptr inbounds %struct.SortVertsElem, ptr %28, i64 0, i32 2
  store float %42, ptr %43, align 4, !tbaa !104
  %44 = add nsw i32 %27, 1
  %45 = getelementptr inbounds %struct.SortVertsElem, ptr %28, i64 1
  %46 = getelementptr inbounds %struct.MVert, ptr %29, i64 1
  %47 = icmp slt i32 %44, %12
  br i1 %47, label %26, label %48, !llvm.loop !105

48:                                               ; preds = %26, %8
  %49 = icmp sgt i32 %5, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %48
  %51 = sext i32 %4 to i64
  %52 = getelementptr inbounds %struct.MVert, ptr %1, i64 %51
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i32 [ %71, %53 ], [ %4, %50 ]
  %55 = phi ptr [ %72, %53 ], [ %21, %50 ]
  %56 = phi ptr [ %73, %53 ], [ %52, %50 ]
  store i32 %54, ptr %55, align 4, !tbaa !102
  %57 = getelementptr inbounds %struct.SortVertsElem, ptr %55, i64 0, i32 1
  %58 = load float, ptr %56, align 4, !tbaa !64
  store float %58, ptr %57, align 4, !tbaa !64
  %59 = getelementptr inbounds float, ptr %56, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !64
  %61 = getelementptr inbounds %struct.SortVertsElem, ptr %55, i64 0, i32 1, i64 1
  store float %60, ptr %61, align 4, !tbaa !64
  %62 = getelementptr inbounds float, ptr %56, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !64
  %64 = getelementptr inbounds %struct.SortVertsElem, ptr %55, i64 0, i32 1, i64 2
  store float %63, ptr %64, align 4, !tbaa !64
  %65 = load float, ptr %56, align 4, !tbaa !64
  %66 = load float, ptr %59, align 4, !tbaa !64
  %67 = fadd float %65, %66
  %68 = load float, ptr %62, align 4, !tbaa !64
  %69 = fadd float %67, %68
  %70 = getelementptr inbounds %struct.SortVertsElem, ptr %55, i64 0, i32 2
  store float %69, ptr %70, align 4, !tbaa !104
  %71 = add nsw i32 %54, 1
  %72 = getelementptr inbounds %struct.SortVertsElem, ptr %55, i64 1
  %73 = getelementptr inbounds %struct.MVert, ptr %56, i64 1
  %74 = icmp slt i32 %71, %13
  br i1 %74, label %53, label %75, !llvm.loop !105

75:                                               ; preds = %53, %48
  tail call void @qsort(ptr noundef %17, i64 noundef %15, i64 noundef 20, ptr noundef nonnull @svert_sum_cmp) #10
  tail call void @qsort(ptr noundef %21, i64 noundef %19, i64 noundef 20, ptr noundef nonnull @svert_sum_cmp) #10
  %76 = icmp sgt i32 %5, 0
  br i1 %76, label %77, label %167

77:                                               ; preds = %75
  %78 = fmul float %6, %6
  %79 = icmp ne i8 %7, 0
  br label %80

80:                                               ; preds = %77, %160
  %81 = phi i32 [ 0, %77 ], [ %164, %160 ]
  %82 = phi i8 [ 0, %77 ], [ %163, %160 ]
  %83 = phi ptr [ %17, %77 ], [ %162, %160 ]
  %84 = phi ptr [ %21, %77 ], [ %165, %160 ]
  %85 = phi i32 [ 0, %77 ], [ %161, %160 ]
  %86 = load i32, ptr %84, align 4, !tbaa !102
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, ptr %0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !95
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %160

91:                                               ; preds = %80
  %92 = icmp eq i8 %82, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  store i32 -1, ptr %88, align 4, !tbaa !95
  br label %160

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.SortVertsElem, ptr %84, i64 0, i32 1
  %96 = load float, ptr %95, align 4, !tbaa !64
  %97 = getelementptr inbounds %struct.SortVertsElem, ptr %84, i64 0, i32 1, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !64
  %99 = fadd float %96, %98
  %100 = getelementptr inbounds %struct.SortVertsElem, ptr %84, i64 0, i32 1, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !64
  %102 = fadd float %99, %101
  %103 = icmp slt i32 %85, %3
  br i1 %103, label %104, label %120

104:                                              ; preds = %94
  %105 = fsub float %102, %11
  br label %106

106:                                              ; preds = %104, %116
  %107 = phi ptr [ %83, %104 ], [ %118, %116 ]
  %108 = phi i32 [ %85, %104 ], [ %117, %116 ]
  %109 = getelementptr inbounds %struct.SortVertsElem, ptr %107, i64 0, i32 2
  %110 = load float, ptr %109, align 4, !tbaa !104
  %111 = fcmp olt float %110, %105
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = icmp slt i32 %108, %3
  br i1 %113, label %114, label %156

114:                                              ; preds = %112
  %115 = fadd float %102, %11
  br label %123

116:                                              ; preds = %106
  %117 = add i32 %108, 1
  %118 = getelementptr inbounds %struct.SortVertsElem, ptr %107, i64 1
  %119 = icmp eq i32 %117, %3
  br i1 %119, label %120, label %106, !llvm.loop !106

120:                                              ; preds = %116, %94
  %121 = phi i32 [ %85, %94 ], [ %3, %116 ]
  %122 = phi ptr [ %83, %94 ], [ %118, %116 ]
  store i32 -1, ptr %88, align 4, !tbaa !95
  br label %160

123:                                              ; preds = %114, %152
  %124 = phi ptr [ %107, %114 ], [ %154, %152 ]
  %125 = phi i32 [ %108, %114 ], [ %153, %152 ]
  %126 = getelementptr inbounds %struct.SortVertsElem, ptr %124, i64 0, i32 2
  %127 = load float, ptr %126, align 4, !tbaa !104
  %128 = fcmp ugt float %127, %115
  br i1 %128, label %156, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.SortVertsElem, ptr %124, i64 0, i32 1
  %131 = load float, ptr %130, align 4, !tbaa !64
  %132 = fsub float %96, %131
  %133 = getelementptr inbounds %struct.SortVertsElem, ptr %124, i64 0, i32 1, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !64
  %135 = fsub float %98, %134
  %136 = getelementptr inbounds %struct.SortVertsElem, ptr %124, i64 0, i32 1, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !64
  %138 = fsub float %101, %137
  %139 = fmul float %135, %135
  %140 = tail call float @llvm.fmuladd.f32(float %132, float %132, float %139)
  %141 = tail call float @llvm.fmuladd.f32(float %138, float %138, float %140)
  %142 = fcmp ugt float %141, %78
  br i1 %142, label %152, label %143

143:                                              ; preds = %129
  %144 = load i32, ptr %124, align 4, !tbaa !102
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !95
  %148 = icmp eq i32 %147, -1
  %149 = or i1 %148, %79
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = select i1 %148, i32 %144, i32 %147
  store i32 %151, ptr %88, align 4, !tbaa !95
  br label %160

152:                                              ; preds = %129
  %153 = add nsw i32 %125, 1
  %154 = getelementptr inbounds %struct.SortVertsElem, ptr %124, i64 1
  %155 = icmp slt i32 %153, %3
  br i1 %155, label %123, label %156, !llvm.loop !107

156:                                              ; preds = %123, %152, %112, %143
  %157 = load i32, ptr %84, align 4, !tbaa !102
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %0, i64 %158
  store i32 -1, ptr %159, align 4, !tbaa !95
  br label %160

160:                                              ; preds = %150, %156, %80, %120, %93
  %161 = phi i32 [ %85, %93 ], [ %121, %120 ], [ %85, %80 ], [ %108, %156 ], [ %108, %150 ]
  %162 = phi ptr [ %83, %93 ], [ %122, %120 ], [ %83, %80 ], [ %107, %156 ], [ %107, %150 ]
  %163 = phi i8 [ 1, %93 ], [ 1, %120 ], [ %82, %80 ], [ 0, %156 ], [ 0, %150 ]
  %164 = add nuw nsw i32 %81, 1
  %165 = getelementptr inbounds %struct.SortVertsElem, ptr %84, i64 1
  %166 = icmp eq i32 %164, %5
  br i1 %166, label %167, label %80, !llvm.loop !108

167:                                              ; preds = %160, %75
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %168(ptr noundef %21) #10
  %169 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %169(ptr noundef %17) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dm_merge_transform(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 {
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = tail call ptr %13(ptr noundef %1) #10
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 32
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = tail call ptr %16(ptr noundef %1) #10
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = tail call i32 %19(ptr noundef %1) #10
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = tail call i32 %22(ptr noundef %1) #10
  tail call void @DM_copy_vert_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %3, i32 noundef %7) #10
  tail call void @DM_copy_edge_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %4, i32 noundef %8) #10
  tail call void @DM_copy_loop_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %5, i32 noundef %9) #10
  tail call void @DM_copy_poly_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %6, i32 noundef %10) #10
  %24 = tail call ptr @CDDM_get_verts(ptr noundef %0) #10
  %25 = zext i32 %3 to i64
  %26 = icmp sgt i32 %7, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.MVert, ptr %24, i64 %25
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %35, %29 ], [ %28, %27 ]
  %31 = phi i32 [ %34, %29 ], [ 0, %27 ]
  tail call void @mul_m4_v3(ptr noundef %2, ptr noundef %30) #10
  %32 = getelementptr inbounds %struct.MVert, ptr %30, i64 0, i32 3
  store i8 0, ptr %32, align 1, !tbaa !110
  %33 = getelementptr inbounds %struct.MVert, ptr %30, i64 0, i32 2
  store i8 0, ptr %33, align 2, !tbaa !112
  %34 = add nuw nsw i32 %31, 1
  %35 = getelementptr inbounds %struct.MVert, ptr %30, i64 1
  %36 = icmp eq i32 %34, %7
  br i1 %36, label %37, label %29, !llvm.loop !113

37:                                               ; preds = %29, %11
  %38 = tail call ptr @CDDM_get_edges(ptr noundef %0) #10
  %39 = zext i32 %4 to i64
  %40 = icmp sgt i32 %8, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.MEdge, ptr %38, i64 %39
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi ptr [ %52, %43 ], [ %42, %41 ]
  %45 = phi i32 [ %51, %43 ], [ 0, %41 ]
  %46 = load i32, ptr %44, align 4, !tbaa !84
  %47 = add i32 %46, %3
  store i32 %47, ptr %44, align 4, !tbaa !84
  %48 = getelementptr inbounds %struct.MEdge, ptr %44, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !86
  %50 = add i32 %49, %3
  store i32 %50, ptr %48, align 4, !tbaa !86
  %51 = add nuw nsw i32 %45, 1
  %52 = getelementptr inbounds %struct.MEdge, ptr %44, i64 1
  %53 = icmp eq i32 %51, %8
  br i1 %53, label %54, label %43, !llvm.loop !114

54:                                               ; preds = %43, %37
  %55 = tail call ptr @CDDM_get_polys(ptr noundef %0) #10
  %56 = sext i32 %6 to i64
  %57 = icmp sgt i32 %10, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.MPoly, ptr %55, i64 %56
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %66, %60 ], [ %59, %58 ]
  %62 = phi i32 [ %65, %60 ], [ 0, %58 ]
  %63 = load i32, ptr %61, align 4, !tbaa !88
  %64 = add nsw i32 %63, %5
  store i32 %64, ptr %61, align 4, !tbaa !88
  %65 = add nuw nsw i32 %62, 1
  %66 = getelementptr inbounds %struct.MPoly, ptr %61, i64 1
  %67 = icmp eq i32 %65, %10
  br i1 %67, label %68, label %60, !llvm.loop !115

68:                                               ; preds = %60, %54
  %69 = tail call ptr @CDDM_get_loops(ptr noundef %0) #10
  %70 = sext i32 %5 to i64
  %71 = icmp sgt i32 %9, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.MLoop, ptr %69, i64 %70
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi ptr [ %83, %74 ], [ %73, %72 ]
  %76 = phi i32 [ %82, %74 ], [ 0, %72 ]
  %77 = load i32, ptr %75, align 4, !tbaa !91
  %78 = add i32 %77, %3
  store i32 %78, ptr %75, align 4, !tbaa !91
  %79 = getelementptr inbounds %struct.MLoop, ptr %75, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !93
  %81 = add i32 %80, %4
  store i32 %81, ptr %79, align 4, !tbaa !93
  %82 = add nuw nsw i32 %76, 1
  %83 = getelementptr inbounds %struct.MLoop, ptr %75, i64 1
  %84 = icmp eq i32 %82, %9
  br i1 %84, label %85, label %74, !llvm.loop !116

85:                                               ; preds = %74, %68
  %86 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %87 = load ptr, ptr %86, align 8, !tbaa !117
  %88 = tail call ptr %87(ptr noundef %0, i32 noundef 7) #10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds i32, ptr %88, i64 %25
  tail call void @fill_vn_i(ptr noundef nonnull %91, i32 noundef %7, i32 noundef -1) #10
  br label %92

92:                                               ; preds = %90, %85
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  %94 = load ptr, ptr %93, align 8, !tbaa !118
  %95 = tail call ptr %94(ptr noundef %0, i32 noundef 7) #10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds i32, ptr %95, i64 %39
  tail call void @fill_vn_i(ptr noundef nonnull %98, i32 noundef %8, i32 noundef -1) #10
  br label %99

99:                                               ; preds = %97, %92
  %100 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %101 = load ptr, ptr %100, align 8, !tbaa !119
  %102 = tail call ptr %101(ptr noundef %0, i32 noundef 7) #10
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds i32, ptr %102, i64 %56
  tail call void @fill_vn_i(ptr noundef nonnull %105, i32 noundef %10, i32 noundef -1) #10
  br label %106

106:                                              ; preds = %104, %99
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %108 = load ptr, ptr %107, align 8, !tbaa !120
  %109 = tail call ptr %108(ptr noundef %0, i32 noundef 7) #10
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds i32, ptr %109, i64 %70
  tail call void @fill_vn_i(ptr noundef nonnull %112, i32 noundef %9, i32 noundef -1) #10
  br label %113

113:                                              ; preds = %111, %106
  ret void
}

declare ptr @CDDM_merge_verts(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @svert_sum_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.SortVertsElem, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !104
  %5 = getelementptr inbounds %struct.SortVertsElem, ptr %1, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !104
  %7 = fcmp ogt float %4, %6
  %8 = fcmp olt float %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !36, i64 96}
!35 = !{!"ModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !42, i64 168}
!41 = !{!"ArrayModifierData", !35, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !37, i64 144, !37, i64 156, !42, i64 168, !42, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188}
!42 = !{!"float", !37, i64 0}
!43 = !{!41, !39, i64 184}
!44 = !{!45, !39, i64 1056}
!45 = !{!"DerivedMesh", !46, i64 0, !46, i64 200, !46, i64 400, !46, i64 600, !46, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !42, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!46 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!47 = !{!41, !39, i64 180}
!48 = !{!41, !36, i64 136}
!49 = !{!45, !36, i64 1104}
!50 = !{!45, !36, i64 1112}
!51 = !{!45, !36, i64 1128}
!52 = !{!45, !36, i64 1136}
!53 = !{!41, !39, i64 188}
!54 = !{!41, !36, i64 112}
!55 = !{!56, !58, i64 136}
!56 = !{!"Object", !57, i64 0, !36, i64 120, !36, i64 128, !58, i64 136, !58, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !59, i64 312, !36, i64 360, !60, i64 368, !60, i64 384, !60, i64 400, !60, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !58, i64 948, !58, i64 950, !58, i64 952, !58, i64 954, !58, i64 956, !58, i64 958, !58, i64 960, !58, i64 962, !58, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !58, i64 1036, !58, i64 1038, !58, i64 1040, !37, i64 1042, !37, i64 1043, !58, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !60, i64 1056, !60, i64 1072, !60, i64 1088, !60, i64 1104, !42, i64 1120, !58, i64 1124, !58, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !58, i64 1162, !37, i64 1164, !60, i64 1176, !60, i64 1192, !60, i64 1208, !60, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !58, i64 1266, !42, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !61, i64 1304, !61, i64 1312, !39, i64 1320, !39, i64 1324, !60, i64 1328, !60, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !60, i64 1400, !36, i64 1416}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !58, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!58 = !{!"short", !37, i64 0}
!59 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !58, i64 16, !58, i64 18, !58, i64 20, !58, i64 22, !58, i64 24, !58, i64 26, !58, i64 28, !58, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!60 = !{!"ListBase", !36, i64 0, !36, i64 8}
!61 = !{!"long", !37, i64 0}
!62 = !{!41, !36, i64 120}
!63 = !{!45, !36, i64 1168}
!64 = !{!42, !42, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !66, !67}
!69 = !{!41, !39, i64 176}
!70 = !{!41, !36, i64 128}
!71 = !{!56, !36, i64 296}
!72 = !{!56, !36, i64 1280}
!73 = !{!74, !36, i64 48}
!74 = !{!"CurveCache", !60, i64 0, !60, i64 16, !60, i64 32, !36, i64 48}
!75 = !{!76, !42, i64 12}
!76 = !{!"Path", !36, i64 0, !39, i64 8, !42, i64 12}
!77 = !{!36, !36, i64 0}
!78 = !{!45, !36, i64 1208}
!79 = !{!45, !36, i64 1216}
!80 = !{!45, !36, i64 1232}
!81 = !{!45, !36, i64 1240}
!82 = !{!58, !58, i64 0}
!83 = distinct !{!83, !66, !67}
!84 = !{!85, !39, i64 0}
!85 = !{!"MEdge", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 9, !58, i64 10}
!86 = !{!85, !39, i64 4}
!87 = distinct !{!87, !66, !67}
!88 = !{!89, !39, i64 0}
!89 = !{!"MPoly", !39, i64 0, !39, i64 4, !58, i64 8, !37, i64 10, !37, i64 11}
!90 = distinct !{!90, !66, !67}
!91 = !{!92, !39, i64 0}
!92 = !{!"MLoop", !39, i64 0, !39, i64 4}
!93 = !{!92, !39, i64 4}
!94 = distinct !{!94, !66, !67}
!95 = !{!39, !39, i64 0}
!96 = distinct !{!96, !66, !67}
!97 = !{!41, !42, i64 172}
!98 = distinct !{!98, !66, !67}
!99 = distinct !{!99, !66, !67}
!100 = !{!101, !58, i64 118}
!101 = !{!"DagNode", !39, i64 0, !58, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !61, i64 56, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !37, i64 116, !58, i64 118}
!102 = !{!103, !39, i64 0}
!103 = !{!"SortVertsElem", !39, i64 0, !37, i64 4, !42, i64 16}
!104 = !{!103, !42, i64 16}
!105 = distinct !{!105, !66, !67}
!106 = distinct !{!106, !66, !67}
!107 = distinct !{!107, !66, !67}
!108 = distinct !{!108, !66, !67}
!109 = !{!45, !36, i64 1176}
!110 = !{!111, !37, i64 19}
!111 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!112 = !{!111, !37, i64 18}
!113 = distinct !{!113, !66, !67}
!114 = distinct !{!114, !66, !67}
!115 = distinct !{!115, !66, !67}
!116 = distinct !{!116, !66, !67}
!117 = !{!45, !36, i64 1320}
!118 = !{!45, !36, i64 1328}
!119 = !{!45, !36, i64 1352}
!120 = !{!45, !36, i64 1344}
