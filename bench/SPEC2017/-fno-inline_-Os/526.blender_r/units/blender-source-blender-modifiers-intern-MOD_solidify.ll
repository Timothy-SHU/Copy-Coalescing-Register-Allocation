; ModuleID = 'blender/source/blender/modifiers/intern/MOD_solidify.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_solidify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SolidifyModifierData = type { %struct.ModifierData, [64 x i8], float, float, float, float, float, float, float, float, i32, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.EdgeFaceRef = type { i32, i32 }

@modifierType_Solidify = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Solidify\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SolidifyModifierData\00\00\00\00\00\00\00\00\00\00\00\00", i32 216, i32 2, i32 31, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr null, ptr null, ptr @dependsOnNormals, ptr null, ptr null, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"old_vert_arr in solidify\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.applyModifier = private unnamed_addr constant [14 x i8] c"applyModifier\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"solid_mod edges\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"solid_mod eorder\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"mod_solid_vno_hq\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vert_lens\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"mod_solid_pair\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"mod_solid_vno\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Faces needed for useful output\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Edge Connectivity\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = tail call i32 %12(ptr noundef %2) #12
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = tail call i32 %15(ptr noundef %2) #12
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = tail call i32 %18(ptr noundef %2) #12
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call i32 %21(ptr noundef %2) #12
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = icmp sgt i32 %24, 1
  %26 = add nsw i32 %24, -1
  %27 = select i1 %25, i32 %26, i32 0
  %28 = trunc i32 %27 to i16
  %29 = shl i32 %27, 16
  %30 = ashr exact i32 %29, 16
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 11
  %34 = load i16, ptr %33, align 4, !tbaa !54
  %35 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 12
  %36 = load i16, ptr %35, align 2, !tbaa !57
  br label %37

37:                                               ; preds = %4, %32
  %38 = phi i16 [ %34, %32 ], [ 0, %4 ]
  %39 = phi i16 [ %36, %32 ], [ 0, %4 ]
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %41 = zext i32 %13 to i64
  %42 = shl nuw nsw i64 %41, 2
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str) #12
  %44 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !59
  %46 = and i32 %45, 6
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 3
  %49 = load float, ptr %48, align 4, !tbaa !60
  %50 = fsub float 1.000000e+00, %49
  %51 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !61
  %53 = fmul float %50, -5.000000e-01
  %54 = fmul float %52, %53
  %55 = fadd float %52, %54
  %56 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 4
  %57 = load float, ptr %56, align 8, !tbaa !62
  %58 = fsub float 1.000000e+00, %57
  %59 = trunc i32 %45 to i8
  %60 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 5
  %61 = load float, ptr %60, align 4, !tbaa !63
  %62 = fcmp une float %61, 0.000000e+00
  %63 = and i32 %45, 65
  %64 = icmp ne i32 %63, 65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %65 = and i32 %45, 8
  %66 = icmp eq i32 %65, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %67 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 1
  call void @modifier_get_vgroup(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %67, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %69 = load ptr, ptr %68, align 8, !tbaa !64
  %70 = call ptr %69(ptr noundef nonnull %2) #12
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  %73 = call ptr %72(ptr noundef nonnull %2) #12
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %75 = load ptr, ptr %74, align 8, !tbaa !66
  %76 = call ptr %75(ptr noundef nonnull %2) #12
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  %79 = call ptr %78(ptr noundef nonnull %2) #12
  br i1 %47, label %85, label %80

80:                                               ; preds = %37
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %82 = zext i32 %19 to i64
  %83 = mul nuw nsw i64 %82, 12
  %84 = call ptr %81(i64 noundef %83, ptr noundef nonnull @__func__.applyModifier) #12
  call void @BKE_mesh_calc_normals_poly(ptr noundef %70, i32 noundef %13, ptr noundef %76, ptr noundef %79, i32 noundef %22, i32 noundef %19, ptr noundef %84, i8 noundef zeroext 1) #12
  br label %85

85:                                               ; preds = %80, %37
  %86 = phi ptr [ %84, %80 ], [ null, %37 ]
  %87 = load i32, ptr %44, align 8, !tbaa !59
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %239, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %92 = lshr i32 %13, 3
  %93 = and i32 %92, 536870908
  %94 = add nuw nsw i32 %93, 4
  %95 = zext nneg i32 %94 to i64
  %96 = call ptr %91(i64 noundef %95, ptr noundef nonnull @__func__.applyModifier) #12
  %97 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %98 = shl i32 %13, 1
  %99 = zext i32 %98 to i64
  %100 = shl nuw nsw i64 %99, 2
  %101 = call ptr %97(i64 noundef %100, ptr noundef nonnull @__func__.applyModifier) #12
  %102 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %103 = shl i32 %16, 1
  %104 = add i32 %103, %13
  %105 = zext i32 %104 to i64
  %106 = shl nuw nsw i64 %105, 2
  %107 = call ptr %102(i64 noundef %106, ptr noundef nonnull @__func__.applyModifier) #12
  %108 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %109 = zext i32 %16 to i64
  %110 = shl nuw nsw i64 %109, 2
  %111 = call ptr %108(i64 noundef %110, ptr noundef nonnull @.str.1) #12
  %112 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %113 = call ptr %112(i64 noundef %109, ptr noundef nonnull @.str.2) #12
  %114 = icmp eq i32 %16, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %90
  call void @llvm.memset.p0.i64(ptr align 4 %111, i8 -1, i64 %110, i1 false), !tbaa !68
  br label %116

116:                                              ; preds = %115, %90
  %117 = icmp eq i32 %19, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %162, %116
  br i1 %114, label %166, label %170

119:                                              ; preds = %116, %162
  %120 = phi ptr [ %164, %162 ], [ %79, %116 ]
  %121 = phi i32 [ %163, %162 ], [ 0, %116 ]
  %122 = getelementptr inbounds %struct.MPoly, ptr %120, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !69
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %162

125:                                              ; preds = %119
  %126 = load i32, ptr %120, align 4, !tbaa !71
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MLoop, ptr %76, i64 %127
  %129 = zext nneg i32 %123 to i64
  %130 = getelementptr %struct.MLoop, ptr %128, i64 %129
  %131 = getelementptr %struct.MLoop, ptr %130, i64 -1
  br label %132

132:                                              ; preds = %125, %157
  %133 = phi ptr [ %159, %157 ], [ %128, %125 ]
  %134 = phi ptr [ %133, %157 ], [ %131, %125 ]
  %135 = phi i32 [ %158, %157 ], [ 0, %125 ]
  %136 = getelementptr inbounds %struct.MLoop, ptr %134, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !72
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %111, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !68
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %156

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.MEdge, ptr %73, i64 %138
  %144 = load i32, ptr %134, align 4, !tbaa !74
  %145 = load i32, ptr %133, align 4, !tbaa !74
  %146 = icmp ugt i32 %144, %145
  %147 = load i32, ptr %143, align 4, !tbaa !75
  %148 = getelementptr inbounds %struct.MEdge, ptr %73, i64 %138, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !77
  %150 = icmp uge i32 %147, %149
  %151 = xor i1 %146, %150
  %152 = select i1 %151, i32 0, i32 %19
  %153 = add i32 %152, %121
  store i32 %153, ptr %139, align 4, !tbaa !68
  %154 = trunc i32 %135 to i8
  %155 = getelementptr inbounds i8, ptr %113, i64 %138
  store i8 %154, ptr %155, align 1, !tbaa !78
  br label %157

156:                                              ; preds = %132
  store i32 -2, ptr %139, align 4, !tbaa !68
  br label %157

157:                                              ; preds = %156, %142
  %158 = add nuw nsw i32 %135, 1
  %159 = getelementptr inbounds %struct.MLoop, ptr %133, i64 1
  %160 = load i32, ptr %122, align 4, !tbaa !69
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %132, label %162, !llvm.loop !79

162:                                              ; preds = %157, %119
  %163 = add nuw i32 %121, 1
  %164 = getelementptr inbounds %struct.MPoly, ptr %120, i64 1
  %165 = icmp eq i32 %163, %19
  br i1 %165, label %118, label %119, !llvm.loop !81

166:                                              ; preds = %203, %118
  %167 = phi i32 [ 0, %118 ], [ %205, %203 ]
  %168 = phi i32 [ 0, %118 ], [ %206, %203 ]
  %169 = icmp eq i32 %13, 0
  br i1 %169, label %235, label %210

170:                                              ; preds = %118, %203
  %171 = phi i64 [ %207, %203 ], [ 0, %118 ]
  %172 = phi ptr [ %208, %203 ], [ %73, %118 ]
  %173 = phi i32 [ %206, %203 ], [ 0, %118 ]
  %174 = phi i32 [ %205, %203 ], [ 0, %118 ]
  %175 = phi i32 [ %204, %203 ], [ 0, %118 ]
  %176 = getelementptr inbounds i32, ptr %111, i64 %171
  %177 = load i32, ptr %176, align 4, !tbaa !68
  %178 = icmp ugt i32 %177, -3
  br i1 %178, label %203, label %179

179:                                              ; preds = %170
  %180 = load i32, ptr %172, align 4, !tbaa !75
  %181 = and i32 %180, 31
  %182 = shl nuw i32 1, %181
  %183 = lshr i32 %180, 5
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds i32, ptr %96, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !68
  %187 = or i32 %182, %186
  store i32 %187, ptr %185, align 4, !tbaa !68
  %188 = getelementptr inbounds %struct.MEdge, ptr %172, i64 0, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !77
  %190 = and i32 %189, 31
  %191 = shl nuw i32 1, %190
  %192 = lshr i32 %189, 5
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds i32, ptr %96, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !68
  %196 = or i32 %191, %195
  store i32 %196, ptr %194, align 4, !tbaa !68
  %197 = add i32 %175, 1
  %198 = zext i32 %175 to i64
  %199 = getelementptr inbounds i32, ptr %107, i64 %198
  %200 = trunc i64 %171 to i32
  store i32 %200, ptr %199, align 4, !tbaa !68
  %201 = add i32 %174, 1
  %202 = add i32 %173, 4
  br label %203

203:                                              ; preds = %170, %179
  %204 = phi i32 [ %197, %179 ], [ %175, %170 ]
  %205 = phi i32 [ %201, %179 ], [ %174, %170 ]
  %206 = phi i32 [ %202, %179 ], [ %173, %170 ]
  %207 = add nuw nsw i64 %171, 1
  %208 = getelementptr inbounds %struct.MEdge, ptr %172, i64 1
  %209 = icmp eq i64 %207, %109
  br i1 %209, label %166, label %170, !llvm.loop !82

210:                                              ; preds = %166, %230
  %211 = phi i64 [ %233, %230 ], [ 0, %166 ]
  %212 = phi i32 [ %232, %230 ], [ 0, %166 ]
  %213 = phi i32 [ %231, %230 ], [ 0, %166 ]
  %214 = trunc i64 %211 to i32
  %215 = lshr i64 %211, 5
  %216 = and i64 %215, 134217727
  %217 = getelementptr inbounds i32, ptr %96, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !68
  %219 = and i32 %214, 31
  %220 = shl nuw i32 1, %219
  %221 = and i32 %218, %220
  %222 = icmp eq i32 %221, 0
  %223 = getelementptr inbounds i32, ptr %43, i64 %211
  br i1 %222, label %229, label %224

224:                                              ; preds = %210
  store i32 %213, ptr %223, align 4, !tbaa !68
  %225 = add i32 %213, 1
  %226 = zext i32 %213 to i64
  %227 = getelementptr inbounds i32, ptr %101, i64 %226
  store i32 %214, ptr %227, align 4, !tbaa !68
  %228 = add i32 %212, 1
  br label %230

229:                                              ; preds = %210
  store i32 -1, ptr %223, align 4, !tbaa !68
  br label %230

230:                                              ; preds = %224, %229
  %231 = phi i32 [ %225, %224 ], [ %213, %229 ]
  %232 = phi i32 [ %228, %224 ], [ %212, %229 ]
  %233 = add nuw nsw i64 %211, 1
  %234 = icmp eq i64 %233, %41
  br i1 %234, label %235, label %210, !llvm.loop !83

235:                                              ; preds = %230, %166
  %236 = phi i32 [ 0, %166 ], [ %232, %230 ]
  %237 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %237(ptr noundef %96) #12
  %238 = load i32, ptr %44, align 8, !tbaa !59
  br label %239

239:                                              ; preds = %235, %85
  %240 = phi i32 [ %238, %235 ], [ %87, %85 ]
  %241 = phi ptr [ %113, %235 ], [ null, %85 ]
  %242 = phi ptr [ %111, %235 ], [ null, %85 ]
  %243 = phi ptr [ %107, %235 ], [ null, %85 ]
  %244 = phi ptr [ %101, %235 ], [ null, %85 ]
  %245 = phi i32 [ %236, %235 ], [ 0, %85 ]
  %246 = phi i32 [ %167, %235 ], [ 0, %85 ]
  %247 = phi i32 [ %168, %235 ], [ 0, %85 ]
  %248 = and i32 %240, 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %239
  %251 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %252 = mul nuw nsw i64 %41, 12
  %253 = call ptr %251(i64 noundef %252, ptr noundef nonnull @.str.3) #12
  call fastcc void @dm_calc_normal(ptr noundef %2, ptr noundef %86, ptr noundef %253) #14
  br label %254

254:                                              ; preds = %250, %239
  %255 = phi ptr [ %253, %250 ], [ null, %239 ]
  %256 = select i1 %64, i32 0, i32 %245
  %257 = zext i1 %64 to i32
  %258 = shl i32 %13, %257
  %259 = add i32 %256, %258
  %260 = shl i32 %16, %257
  %261 = add i32 %245, %260
  %262 = add i32 %261, %256
  %263 = shl i32 %22, %257
  %264 = add i32 %247, %263
  %265 = shl i32 %19, %257
  %266 = add i32 %246, %265
  %267 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %259, i32 noundef %262, i32 noundef 0, i32 noundef %264, i32 noundef %266) #12
  %268 = call ptr @CDDM_get_polys(ptr noundef %267) #12
  %269 = call ptr @CDDM_get_loops(ptr noundef %267) #12
  %270 = call ptr @CDDM_get_edges(ptr noundef %267) #12
  %271 = call ptr @CDDM_get_verts(ptr noundef %267) #12
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef 0, i32 noundef %13) #12
  br i1 %64, label %272, label %276

272:                                              ; preds = %254
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef %13, i32 noundef %13) #12
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef 0, i32 noundef %16) #12
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef %16, i32 noundef %16) #12
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef 0, i32 noundef %22) #12
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef %22, i32 noundef %22) #12
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef 0, i32 noundef %19) #12
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef %19, i32 noundef %19) #12
  %273 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 9
  %274 = load i32, ptr %273, align 8, !tbaa !84
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %407, label %324

276:                                              ; preds = %254
  %277 = icmp eq i32 %13, 0
  br i1 %277, label %291, label %278

278:                                              ; preds = %276, %287
  %279 = phi i64 [ %289, %287 ], [ 0, %276 ]
  %280 = phi i32 [ %288, %287 ], [ %13, %276 ]
  %281 = getelementptr inbounds i32, ptr %43, i64 %279
  %282 = load i32, ptr %281, align 4, !tbaa !68
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %287, label %284

284:                                              ; preds = %278
  %285 = trunc i64 %279 to i32
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %267, i32 noundef %285, i32 noundef %280, i32 noundef 1) #12
  %286 = add nsw i32 %280, 1
  br label %287

287:                                              ; preds = %278, %284
  %288 = phi i32 [ %286, %284 ], [ %280, %278 ]
  %289 = add nuw nsw i64 %279, 1
  %290 = icmp eq i64 %289, %41
  br i1 %290, label %291, label %278, !llvm.loop !85

291:                                              ; preds = %287, %276
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef 0, i32 noundef %16) #12
  %292 = icmp eq i32 %16, 0
  br i1 %292, label %323, label %293

293:                                              ; preds = %291
  %294 = zext i32 %16 to i64
  br label %295

295:                                              ; preds = %293, %319
  %296 = phi i64 [ 0, %293 ], [ %321, %319 ]
  %297 = phi i32 [ %16, %293 ], [ %320, %319 ]
  %298 = getelementptr inbounds i32, ptr %242, i64 %296
  %299 = load i32, ptr %298, align 4, !tbaa !68
  %300 = icmp ugt i32 %299, -3
  br i1 %300, label %319, label %301

301:                                              ; preds = %295
  %302 = trunc i64 %296 to i32
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %267, i32 noundef %302, i32 noundef %297, i32 noundef 1) #12
  %303 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %296
  %304 = sext i32 %297 to i64
  %305 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %304
  %306 = load i32, ptr %303, align 4, !tbaa !75
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %43, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !68
  %310 = add i32 %309, %13
  store i32 %310, ptr %305, align 4, !tbaa !75
  %311 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %296, i32 1
  %312 = load i32, ptr %311, align 4, !tbaa !77
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i32, ptr %43, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !68
  %316 = add i32 %315, %13
  %317 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %304, i32 1
  store i32 %316, ptr %317, align 4, !tbaa !77
  %318 = add nsw i32 %297, 1
  br label %319

319:                                              ; preds = %295, %301
  %320 = phi i32 [ %318, %301 ], [ %297, %295 ]
  %321 = add nuw nsw i64 %296, 1
  %322 = icmp eq i64 %321, %294
  br i1 %322, label %323, label %295, !llvm.loop !86

323:                                              ; preds = %319, %291
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef 0, i32 noundef %22) #12
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %267, i32 noundef 0, i32 noundef 0, i32 noundef %19) #12
  br label %422

324:                                              ; preds = %272
  %325 = zext i32 %19 to i64
  %326 = getelementptr inbounds %struct.MPoly, ptr %268, i64 %325
  %327 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 8
  %328 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %329 = getelementptr inbounds %struct.DerivedMesh, ptr %267, i64 0, i32 3
  %330 = icmp eq i16 %38, 0
  %331 = load i32, ptr %327, align 4, !tbaa !87
  br label %332

332:                                              ; preds = %324, %402
  %333 = phi i32 [ %331, %324 ], [ %386, %402 ]
  %334 = phi ptr [ %326, %324 ], [ %404, %402 ]
  %335 = phi i32 [ 0, %324 ], [ %403, %402 ]
  %336 = load i32, ptr %334, align 4, !tbaa !71
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.MLoop, ptr %269, i64 %337
  %339 = sext i32 %333 to i64
  %340 = getelementptr inbounds %struct.MLoop, ptr %338, i64 %339
  %341 = getelementptr inbounds %struct.MPoly, ptr %334, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !69
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %357

344:                                              ; preds = %332, %344
  %345 = phi i32 [ %355, %344 ], [ %342, %332 ]
  %346 = phi i32 [ %354, %344 ], [ 0, %332 ]
  %347 = load i32, ptr %334, align 4, !tbaa !71
  %348 = add nsw i32 %347, %346
  %349 = xor i32 %346, -1
  %350 = add i32 %345, %349
  %351 = add nsw i32 %350, %347
  %352 = load i32, ptr %327, align 4, !tbaa !87
  %353 = add nsw i32 %351, %352
  call void @CustomData_copy_data(ptr noundef nonnull %328, ptr noundef nonnull %329, i32 noundef %348, i32 noundef %353, i32 noundef 1) #12
  %354 = add nuw nsw i32 %346, 1
  %355 = load i32, ptr %341, align 4, !tbaa !69
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %344, label %357, !llvm.loop !88

357:                                              ; preds = %344, %332
  %358 = phi i32 [ %342, %332 ], [ %355, %344 ]
  br i1 %330, label %369, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.MPoly, ptr %334, i64 0, i32 2
  %361 = load i16, ptr %360, align 4, !tbaa !89
  %362 = add i16 %361, %38
  store i16 %362, ptr %360, align 4, !tbaa !89
  %363 = icmp slt i16 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %359
  %365 = zext nneg i16 %362 to i32
  %366 = icmp slt i32 %30, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %364, %359
  %368 = phi i16 [ 0, %359 ], [ %28, %364 ]
  store i16 %368, ptr %360, align 4, !tbaa !89
  br label %369

369:                                              ; preds = %367, %364, %357
  %370 = getelementptr inbounds %struct.MLoop, ptr %338, i64 %339, i32 1
  %371 = load i32, ptr %370, align 4, !tbaa !72
  %372 = add i32 %358, -1
  %373 = icmp sgt i32 %358, 1
  br i1 %373, label %374, label %383

374:                                              ; preds = %369
  %375 = zext nneg i32 %372 to i64
  br label %376

376:                                              ; preds = %374, %376
  %377 = phi i64 [ 0, %374 ], [ %378, %376 ]
  %378 = add nuw nsw i64 %377, 1
  %379 = getelementptr inbounds %struct.MLoop, ptr %340, i64 %378, i32 1
  %380 = load i32, ptr %379, align 4, !tbaa !72
  %381 = getelementptr inbounds %struct.MLoop, ptr %340, i64 %377, i32 1
  store i32 %380, ptr %381, align 4, !tbaa !72
  %382 = icmp eq i64 %378, %375
  br i1 %382, label %383, label %376, !llvm.loop !90

383:                                              ; preds = %376, %369
  %384 = sext i32 %372 to i64
  %385 = getelementptr inbounds %struct.MLoop, ptr %340, i64 %384, i32 1
  store i32 %371, ptr %385, align 4, !tbaa !72
  %386 = load i32, ptr %327, align 4, !tbaa !87
  %387 = load i32, ptr %334, align 4, !tbaa !71
  %388 = add nsw i32 %387, %386
  store i32 %388, ptr %334, align 4, !tbaa !71
  %389 = icmp sgt i32 %358, 0
  br i1 %389, label %390, label %402

390:                                              ; preds = %383
  %391 = zext nneg i32 %358 to i64
  br label %392

392:                                              ; preds = %390, %392
  %393 = phi i64 [ 0, %390 ], [ %400, %392 ]
  %394 = getelementptr inbounds %struct.MLoop, ptr %340, i64 %393
  %395 = getelementptr inbounds %struct.MLoop, ptr %340, i64 %393, i32 1
  %396 = load i32, ptr %395, align 4, !tbaa !72
  %397 = add i32 %396, %16
  store i32 %397, ptr %395, align 4, !tbaa !72
  %398 = load i32, ptr %394, align 4, !tbaa !74
  %399 = add i32 %398, %13
  store i32 %399, ptr %394, align 4, !tbaa !74
  %400 = add nuw nsw i64 %393, 1
  %401 = icmp eq i64 %400, %391
  br i1 %401, label %402, label %392, !llvm.loop !91

402:                                              ; preds = %392, %383
  %403 = add nuw i32 %335, 1
  %404 = getelementptr inbounds %struct.MPoly, ptr %334, i64 1
  %405 = load i32, ptr %273, align 8, !tbaa !84
  %406 = icmp ult i32 %403, %405
  br i1 %406, label %332, label %407, !llvm.loop !92

407:                                              ; preds = %402, %272
  %408 = icmp eq i32 %16, 0
  br i1 %408, label %422, label %409

409:                                              ; preds = %407
  %410 = zext i32 %16 to i64
  %411 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %410
  %412 = insertelement <2 x i32> poison, i32 %13, i64 0
  %413 = shufflevector <2 x i32> %412, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %414

414:                                              ; preds = %409, %414
  %415 = phi ptr [ %420, %414 ], [ %411, %409 ]
  %416 = phi i32 [ %419, %414 ], [ 0, %409 ]
  %417 = load <2 x i32>, ptr %415, align 4, !tbaa !68
  %418 = add <2 x i32> %417, %413
  store <2 x i32> %418, ptr %415, align 4, !tbaa !68
  %419 = add nuw i32 %416, 1
  %420 = getelementptr inbounds %struct.MEdge, ptr %415, i64 1
  %421 = icmp eq i32 %419, %16
  br i1 %421, label %422, label %414, !llvm.loop !93

422:                                              ; preds = %414, %407, %323
  %423 = load i32, ptr %44, align 8, !tbaa !59
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %571

426:                                              ; preds = %422
  %427 = load float, ptr %51, align 8, !tbaa !61
  %428 = call float @llvm.fabs.f32(float %427)
  %429 = load float, ptr %60, align 4, !tbaa !63
  %430 = fmul float %428, %429
  %431 = fmul float %430, %430
  br i1 %62, label %432, label %457

432:                                              ; preds = %426
  %433 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %434 = call ptr %433(i64 noundef %42, ptr noundef nonnull @.str.4) #12
  call void @fill_vn_fl(ptr noundef %434, i32 noundef %13, float noundef 0x47EFFFFFE0000000) #12
  %435 = icmp eq i32 %16, 0
  br i1 %435, label %457, label %436

436:                                              ; preds = %432
  %437 = zext i32 %16 to i64
  br label %438

438:                                              ; preds = %436, %438
  %439 = phi i64 [ 0, %436 ], [ %455, %438 ]
  %440 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !75
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.MVert, ptr %271, i64 %442
  %444 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %439, i32 1
  %445 = load i32, ptr %444, align 4, !tbaa !77
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds %struct.MVert, ptr %271, i64 %446
  %448 = call fastcc float @len_squared_v3v3(ptr noundef %443, ptr noundef %447) #14
  %449 = getelementptr inbounds float, ptr %434, i64 %442
  %450 = load float, ptr %449, align 4, !tbaa !94
  %451 = call fastcc float @min_ff(float noundef %450, float noundef %448) #14
  store float %451, ptr %449, align 4, !tbaa !94
  %452 = getelementptr inbounds float, ptr %434, i64 %446
  %453 = load float, ptr %452, align 4, !tbaa !94
  %454 = call fastcc float @min_ff(float noundef %453, float noundef %448) #14
  store float %454, ptr %452, align 4, !tbaa !94
  %455 = add nuw nsw i64 %439, 1
  %456 = icmp eq i64 %455, %437
  br i1 %456, label %457, label %438, !llvm.loop !95

457:                                              ; preds = %438, %432, %426
  %458 = phi ptr [ null, %426 ], [ %434, %432 ], [ %434, %438 ]
  %459 = fcmp une float %55, 0.000000e+00
  br i1 %459, label %460, label %514

460:                                              ; preds = %457
  %461 = fdiv float %55, 3.276700e+04
  %462 = fcmp oge float %55, %54
  %463 = and i8 %59, 32
  %464 = icmp ne i8 %463, 0
  %465 = xor i1 %464, %462
  %466 = select i1 %465, i1 true, i1 %64
  %467 = select i1 %466, i32 %13, i32 %245
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %514, label %469

469:                                              ; preds = %460
  %470 = select i1 %465, i64 0, i64 %41
  %471 = getelementptr inbounds %struct.MVert, ptr %271, i64 %470
  %472 = zext i32 %467 to i64
  br label %473

473:                                              ; preds = %469, %508
  %474 = phi i64 [ 0, %469 ], [ %511, %508 ]
  %475 = phi ptr [ %471, %469 ], [ %512, %508 ]
  %476 = phi float [ %461, %469 ], [ %509, %508 ]
  %477 = trunc i64 %474 to i32
  br i1 %466, label %481, label %478

478:                                              ; preds = %473
  %479 = getelementptr inbounds i32, ptr %244, i64 %474
  %480 = load i32, ptr %479, align 4, !tbaa !68
  br label %481

481:                                              ; preds = %473, %478
  %482 = phi i32 [ %480, %478 ], [ %477, %473 ]
  %483 = load ptr, ptr %5, align 8, !tbaa !58
  %484 = icmp eq ptr %483, null
  br i1 %484, label %494, label %485

485:                                              ; preds = %481
  %486 = zext i32 %482 to i64
  %487 = getelementptr inbounds %struct.MDeformVert, ptr %483, i64 %486
  %488 = load i32, ptr %6, align 4, !tbaa !68
  %489 = call float @defvert_find_weight(ptr noundef nonnull %487, i32 noundef %488) #12
  %490 = fsub float 1.000000e+00, %489
  %491 = select i1 %66, float %489, float %490
  %492 = call float @llvm.fmuladd.f32(float %491, float %58, float %57)
  %493 = fmul float %461, %492
  br label %494

494:                                              ; preds = %485, %481
  %495 = phi float [ %493, %485 ], [ %476, %481 ]
  br i1 %62, label %496, label %508

496:                                              ; preds = %494
  %497 = load ptr, ptr %5, align 8, !tbaa !58
  %498 = icmp eq ptr %497, null
  %499 = select i1 %498, float %461, float %495
  %500 = zext i32 %482 to i64
  %501 = getelementptr inbounds float, ptr %458, i64 %500
  %502 = load float, ptr %501, align 4, !tbaa !94
  %503 = fcmp olt float %502, %431
  br i1 %503, label %504, label %508

504:                                              ; preds = %496
  %505 = call float @sqrtf(float noundef %502) #12
  %506 = fdiv float %505, %430
  %507 = fmul float %499, %506
  br label %508

508:                                              ; preds = %496, %504, %494
  %509 = phi float [ %507, %504 ], [ %499, %496 ], [ %495, %494 ]
  %510 = getelementptr inbounds %struct.MVert, ptr %475, i64 0, i32 1
  call fastcc void @madd_v3v3short_fl(ptr noundef %475, ptr noundef nonnull %510, float noundef %509) #14
  %511 = add nuw nsw i64 %474, 1
  %512 = getelementptr inbounds %struct.MVert, ptr %475, i64 1
  %513 = icmp eq i64 %511, %472
  br i1 %513, label %514, label %473, !llvm.loop !96

514:                                              ; preds = %508, %460, %457
  %515 = fcmp une float %54, 0.000000e+00
  br i1 %515, label %516, label %570

516:                                              ; preds = %514
  %517 = fdiv float %54, 3.276700e+04
  %518 = fcmp oge float %55, %54
  %519 = and i32 %45, 32
  %520 = icmp eq i32 %519, 0
  %521 = xor i1 %520, %518
  %522 = select i1 %521, i1 true, i1 %64
  %523 = select i1 %522, i32 %13, i32 %245
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %570, label %525

525:                                              ; preds = %516
  %526 = select i1 %521, i64 0, i64 %41
  %527 = getelementptr inbounds %struct.MVert, ptr %271, i64 %526
  %528 = zext i32 %523 to i64
  br label %529

529:                                              ; preds = %525, %564
  %530 = phi i64 [ 0, %525 ], [ %567, %564 ]
  %531 = phi ptr [ %527, %525 ], [ %568, %564 ]
  %532 = phi float [ %517, %525 ], [ %565, %564 ]
  %533 = trunc i64 %530 to i32
  br i1 %522, label %537, label %534

534:                                              ; preds = %529
  %535 = getelementptr inbounds i32, ptr %244, i64 %530
  %536 = load i32, ptr %535, align 4, !tbaa !68
  br label %537

537:                                              ; preds = %529, %534
  %538 = phi i32 [ %536, %534 ], [ %533, %529 ]
  %539 = load ptr, ptr %5, align 8, !tbaa !58
  %540 = icmp eq ptr %539, null
  br i1 %540, label %550, label %541

541:                                              ; preds = %537
  %542 = zext i32 %538 to i64
  %543 = getelementptr inbounds %struct.MDeformVert, ptr %539, i64 %542
  %544 = load i32, ptr %6, align 4, !tbaa !68
  %545 = call float @defvert_find_weight(ptr noundef nonnull %543, i32 noundef %544) #12
  %546 = fsub float 1.000000e+00, %545
  %547 = select i1 %66, float %545, float %546
  %548 = call float @llvm.fmuladd.f32(float %547, float %58, float %57)
  %549 = fmul float %517, %548
  br label %550

550:                                              ; preds = %541, %537
  %551 = phi float [ %549, %541 ], [ %532, %537 ]
  br i1 %62, label %552, label %564

552:                                              ; preds = %550
  %553 = load ptr, ptr %5, align 8, !tbaa !58
  %554 = icmp eq ptr %553, null
  %555 = select i1 %554, float %517, float %551
  %556 = zext i32 %538 to i64
  %557 = getelementptr inbounds float, ptr %458, i64 %556
  %558 = load float, ptr %557, align 4, !tbaa !94
  %559 = fcmp olt float %558, %431
  br i1 %559, label %560, label %564

560:                                              ; preds = %552
  %561 = call float @sqrtf(float noundef %558) #12
  %562 = fdiv float %561, %430
  %563 = fmul float %555, %562
  br label %564

564:                                              ; preds = %552, %560, %550
  %565 = phi float [ %563, %560 ], [ %555, %552 ], [ %551, %550 ]
  %566 = getelementptr inbounds %struct.MVert, ptr %531, i64 0, i32 1
  call fastcc void @madd_v3v3short_fl(ptr noundef %531, ptr noundef nonnull %566, float noundef %565) #14
  %567 = add nuw nsw i64 %530, 1
  %568 = getelementptr inbounds %struct.MVert, ptr %531, i64 1
  %569 = icmp eq i64 %567, %528
  br i1 %569, label %570, label %529, !llvm.loop !97

570:                                              ; preds = %564, %516, %514
  br i1 %62, label %834, label %838

571:                                              ; preds = %422
  %572 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %573 = shl nuw nsw i64 %41, 3
  %574 = call ptr %572(i64 noundef %573, ptr noundef nonnull @.str.5) #12
  %575 = getelementptr inbounds float, ptr %574, i64 %41
  %576 = icmp eq ptr %255, null
  br i1 %576, label %577, label %590

577:                                              ; preds = %571
  %578 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %579 = mul nuw nsw i64 %41, 12
  %580 = call ptr %578(i64 noundef %579, ptr noundef nonnull @.str.6) #12
  %581 = icmp eq i32 %13, 0
  br i1 %581, label %590, label %582

582:                                              ; preds = %577, %582
  %583 = phi i64 [ %587, %582 ], [ 0, %577 ]
  %584 = phi ptr [ %588, %582 ], [ %271, %577 ]
  %585 = getelementptr inbounds [3 x float], ptr %580, i64 %583
  %586 = getelementptr inbounds %struct.MVert, ptr %584, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %585, ptr noundef nonnull %586) #14
  %587 = add nuw nsw i64 %583, 1
  %588 = getelementptr inbounds %struct.MVert, ptr %584, i64 1
  %589 = icmp eq i64 %587, %41
  br i1 %589, label %590, label %582, !llvm.loop !98

590:                                              ; preds = %582, %577, %571
  %591 = phi ptr [ %255, %571 ], [ %580, %577 ], [ %580, %582 ]
  %592 = icmp eq i32 %19, 0
  br i1 %592, label %679, label %593

593:                                              ; preds = %590
  %594 = and i32 %423, 4
  %595 = icmp eq i32 %594, 0
  %596 = zext i32 %19 to i64
  br label %597

597:                                              ; preds = %593, %675
  %598 = phi i64 [ 0, %593 ], [ %676, %675 ]
  %599 = phi ptr [ %268, %593 ], [ %677, %675 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %600 = getelementptr inbounds %struct.MPoly, ptr %599, i64 0, i32 1
  %601 = load i32, ptr %600, align 4, !tbaa !69
  %602 = add nsw i32 %601, -1
  %603 = load i32, ptr %599, align 4, !tbaa !71
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.MLoop, ptr %269, i64 %604
  %606 = sext i32 %601 to i64
  %607 = getelementptr %struct.MLoop, ptr %605, i64 %606
  %608 = getelementptr %struct.MLoop, ptr %607, i64 -2
  %609 = load i32, ptr %608, align 4, !tbaa !74
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds %struct.MVert, ptr %271, i64 %610
  %612 = sext i32 %602 to i64
  %613 = getelementptr inbounds %struct.MLoop, ptr %605, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !74
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds %struct.MVert, ptr %271, i64 %615
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %611, ptr noundef %616) #14
  %617 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #14
  %618 = load i32, ptr %600, align 4, !tbaa !69
  %619 = icmp sgt i32 %618, 0
  br i1 %619, label %620, label %675

620:                                              ; preds = %597
  %621 = getelementptr inbounds [3 x float], ptr %86, i64 %598
  br label %622

622:                                              ; preds = %620, %669
  %623 = phi i64 [ 0, %620 ], [ %670, %669 ]
  %624 = phi i32 [ %602, %620 ], [ %674, %669 ]
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.MLoop, ptr %605, i64 %625
  %627 = load i32, ptr %626, align 4, !tbaa !74
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds %struct.MVert, ptr %271, i64 %628
  %630 = getelementptr inbounds %struct.MLoop, ptr %605, i64 %623
  %631 = load i32, ptr %630, align 4, !tbaa !74
  %632 = zext i32 %631 to i64
  %633 = getelementptr inbounds %struct.MVert, ptr %271, i64 %632
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %629, ptr noundef %633) #14
  %634 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #14
  %635 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %636 = fcmp olt float %635, 0x3E80000000000000
  %637 = select i1 %636, float 0x3E80000000000000, float %635
  %638 = load i32, ptr %626, align 4, !tbaa !74
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds float, ptr %575, i64 %639
  %641 = load float, ptr %640, align 4, !tbaa !94
  %642 = fadd float %641, %637
  store float %642, ptr %640, align 4, !tbaa !94
  br i1 %595, label %659, label %643

643:                                              ; preds = %622
  %644 = getelementptr inbounds %struct.MLoop, ptr %605, i64 %625, i32 1
  %645 = load i32, ptr %644, align 4, !tbaa !72
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds %struct.MEdge, ptr %73, i64 %646, i32 4
  %648 = load i16, ptr %647, align 2, !tbaa !99
  %649 = and i16 %648, 256
  %650 = icmp eq i16 %649, 0
  br i1 %650, label %651, label %665

651:                                              ; preds = %643
  %652 = getelementptr inbounds %struct.MLoop, ptr %605, i64 %623, i32 1
  %653 = load i32, ptr %652, align 4, !tbaa !72
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds %struct.MEdge, ptr %73, i64 %654, i32 4
  %656 = load i16, ptr %655, align 2, !tbaa !99
  %657 = and i16 %656, 256
  %658 = icmp eq i16 %657, 0
  br i1 %658, label %659, label %665

659:                                              ; preds = %651, %622
  %660 = getelementptr inbounds [3 x float], ptr %591, i64 %639
  %661 = call fastcc float @shell_v3v3_normalized_to_dist(ptr noundef %660, ptr noundef %621) #14
  %662 = getelementptr inbounds float, ptr %574, i64 %639
  %663 = load float, ptr %662, align 4, !tbaa !94
  %664 = call float @llvm.fmuladd.f32(float %661, float %637, float %663)
  store float %664, ptr %662, align 4, !tbaa !94
  br label %669

665:                                              ; preds = %651, %643
  %666 = getelementptr inbounds float, ptr %574, i64 %639
  %667 = load float, ptr %666, align 4, !tbaa !94
  %668 = fadd float %637, %667
  store float %668, ptr %666, align 4, !tbaa !94
  br label %669

669:                                              ; preds = %665, %659
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %670 = add nuw nsw i64 %623, 1
  %671 = load i32, ptr %600, align 4, !tbaa !69
  %672 = sext i32 %671 to i64
  %673 = icmp slt i64 %670, %672
  %674 = trunc i64 %623 to i32
  br i1 %673, label %622, label %675, !llvm.loop !100

675:                                              ; preds = %669, %597
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  %676 = add nuw nsw i64 %598, 1
  %677 = getelementptr inbounds %struct.MPoly, ptr %599, i64 1
  %678 = icmp eq i64 %676, %596
  br i1 %678, label %679, label %597, !llvm.loop !101

679:                                              ; preds = %675, %590
  %680 = load ptr, ptr %5, align 8, !tbaa !58
  %681 = icmp eq ptr %680, null
  br i1 %681, label %711, label %682

682:                                              ; preds = %679
  %683 = icmp eq i32 %13, 0
  br i1 %66, label %685, label %684

684:                                              ; preds = %682
  br i1 %683, label %711, label %686

685:                                              ; preds = %682
  br i1 %683, label %711, label %699

686:                                              ; preds = %684, %686
  %687 = phi i64 [ %696, %686 ], [ 0, %684 ]
  %688 = phi ptr [ %697, %686 ], [ %680, %684 ]
  %689 = load i32, ptr %6, align 4, !tbaa !68
  %690 = call float @defvert_find_weight(ptr noundef nonnull %688, i32 noundef %689) #12
  %691 = fsub float 1.000000e+00, %690
  %692 = call float @llvm.fmuladd.f32(float %691, float %58, float %57)
  %693 = getelementptr inbounds float, ptr %574, i64 %687
  %694 = load float, ptr %693, align 4, !tbaa !94
  %695 = fmul float %694, %692
  store float %695, ptr %693, align 4, !tbaa !94
  %696 = add nuw nsw i64 %687, 1
  %697 = getelementptr inbounds %struct.MDeformVert, ptr %688, i64 1
  %698 = icmp eq i64 %696, %41
  br i1 %698, label %711, label %686, !llvm.loop !102

699:                                              ; preds = %685, %699
  %700 = phi i64 [ %708, %699 ], [ 0, %685 ]
  %701 = phi ptr [ %709, %699 ], [ %680, %685 ]
  %702 = load i32, ptr %6, align 4, !tbaa !68
  %703 = call float @defvert_find_weight(ptr noundef nonnull %701, i32 noundef %702) #12
  %704 = call float @llvm.fmuladd.f32(float %703, float %58, float %57)
  %705 = getelementptr inbounds float, ptr %574, i64 %700
  %706 = load float, ptr %705, align 4, !tbaa !94
  %707 = fmul float %706, %704
  store float %707, ptr %705, align 4, !tbaa !94
  %708 = add nuw nsw i64 %700, 1
  %709 = getelementptr inbounds %struct.MDeformVert, ptr %701, i64 1
  %710 = icmp eq i64 %708, %41
  br i1 %710, label %711, label %699, !llvm.loop !103

711:                                              ; preds = %686, %699, %684, %685, %679
  br i1 %62, label %712, label %760

712:                                              ; preds = %711
  %713 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %714 = call ptr %713(i64 noundef %42, ptr noundef nonnull @.str.4) #12
  %715 = load float, ptr %51, align 8, !tbaa !61
  %716 = call float @llvm.fabs.f32(float %715)
  %717 = load float, ptr %60, align 4, !tbaa !63
  %718 = fmul float %716, %717
  %719 = fmul float %718, %718
  call void @fill_vn_fl(ptr noundef %714, i32 noundef %13, float noundef 0x47EFFFFFE0000000) #12
  %720 = icmp eq i32 %16, 0
  br i1 %720, label %723, label %721

721:                                              ; preds = %712
  %722 = zext i32 %16 to i64
  br label %725

723:                                              ; preds = %725, %712
  %724 = icmp eq i32 %13, 0
  br i1 %724, label %758, label %744

725:                                              ; preds = %721, %725
  %726 = phi i64 [ 0, %721 ], [ %742, %725 ]
  %727 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %726
  %728 = load i32, ptr %727, align 4, !tbaa !75
  %729 = zext i32 %728 to i64
  %730 = getelementptr inbounds %struct.MVert, ptr %271, i64 %729
  %731 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %726, i32 1
  %732 = load i32, ptr %731, align 4, !tbaa !77
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds %struct.MVert, ptr %271, i64 %733
  %735 = call fastcc float @len_squared_v3v3(ptr noundef %730, ptr noundef %734) #14
  %736 = getelementptr inbounds float, ptr %714, i64 %729
  %737 = load float, ptr %736, align 4, !tbaa !94
  %738 = call fastcc float @min_ff(float noundef %737, float noundef %735) #14
  store float %738, ptr %736, align 4, !tbaa !94
  %739 = getelementptr inbounds float, ptr %714, i64 %733
  %740 = load float, ptr %739, align 4, !tbaa !94
  %741 = call fastcc float @min_ff(float noundef %740, float noundef %735) #14
  store float %741, ptr %739, align 4, !tbaa !94
  %742 = add nuw nsw i64 %726, 1
  %743 = icmp eq i64 %742, %722
  br i1 %743, label %723, label %725, !llvm.loop !104

744:                                              ; preds = %723, %755
  %745 = phi i64 [ %756, %755 ], [ 0, %723 ]
  %746 = getelementptr inbounds float, ptr %714, i64 %745
  %747 = load float, ptr %746, align 4, !tbaa !94
  %748 = fcmp olt float %747, %719
  br i1 %748, label %749, label %755

749:                                              ; preds = %744
  %750 = call float @sqrtf(float noundef %747) #12
  %751 = fdiv float %750, %718
  %752 = getelementptr inbounds float, ptr %574, i64 %745
  %753 = load float, ptr %752, align 4, !tbaa !94
  %754 = fmul float %753, %751
  store float %754, ptr %752, align 4, !tbaa !94
  br label %755

755:                                              ; preds = %744, %749
  %756 = add nuw nsw i64 %745, 1
  %757 = icmp eq i64 %756, %41
  br i1 %757, label %758, label %744, !llvm.loop !105

758:                                              ; preds = %755, %723
  %759 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %759(ptr noundef %714) #12
  br label %760

760:                                              ; preds = %758, %711
  %761 = fcmp une float %55, 0.000000e+00
  br i1 %761, label %762, label %797

762:                                              ; preds = %760
  %763 = fcmp oge float %55, %54
  %764 = and i8 %59, 32
  %765 = icmp ne i8 %764, 0
  %766 = xor i1 %765, %763
  %767 = select i1 %766, i1 true, i1 %64
  %768 = select i1 %767, i32 %13, i32 %245
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %797, label %770

770:                                              ; preds = %762
  %771 = select i1 %766, i64 0, i64 %41
  %772 = getelementptr inbounds %struct.MVert, ptr %271, i64 %771
  %773 = zext i32 %768 to i64
  br label %774

774:                                              ; preds = %770, %793
  %775 = phi i64 [ 0, %770 ], [ %794, %793 ]
  %776 = phi ptr [ %772, %770 ], [ %795, %793 ]
  %777 = trunc i64 %775 to i32
  br i1 %767, label %781, label %778

778:                                              ; preds = %774
  %779 = getelementptr inbounds i32, ptr %244, i64 %775
  %780 = load i32, ptr %779, align 4, !tbaa !68
  br label %781

781:                                              ; preds = %774, %778
  %782 = phi i32 [ %780, %778 ], [ %777, %774 ]
  %783 = zext i32 %782 to i64
  %784 = getelementptr inbounds float, ptr %575, i64 %783
  %785 = load float, ptr %784, align 4, !tbaa !94
  %786 = fcmp une float %785, 0.000000e+00
  br i1 %786, label %787, label %793

787:                                              ; preds = %781
  %788 = getelementptr inbounds [3 x float], ptr %591, i64 %783
  %789 = getelementptr inbounds float, ptr %574, i64 %783
  %790 = load float, ptr %789, align 4, !tbaa !94
  %791 = fdiv float %790, %785
  %792 = fmul float %55, %791
  call fastcc void @madd_v3_v3fl(ptr noundef %776, ptr noundef %788, float noundef %792) #14
  br label %793

793:                                              ; preds = %787, %781
  %794 = add nuw nsw i64 %775, 1
  %795 = getelementptr inbounds %struct.MVert, ptr %776, i64 1
  %796 = icmp eq i64 %794, %773
  br i1 %796, label %797, label %774, !llvm.loop !106

797:                                              ; preds = %793, %762, %760
  %798 = fcmp une float %54, 0.000000e+00
  br i1 %798, label %799, label %834

799:                                              ; preds = %797
  %800 = fcmp oge float %55, %54
  %801 = and i8 %59, 32
  %802 = icmp eq i8 %801, 0
  %803 = xor i1 %802, %800
  %804 = select i1 %803, i1 true, i1 %64
  %805 = select i1 %804, i32 %13, i32 %245
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %834, label %807

807:                                              ; preds = %799
  %808 = select i1 %803, i64 0, i64 %41
  %809 = getelementptr inbounds %struct.MVert, ptr %271, i64 %808
  %810 = zext i32 %805 to i64
  br label %811

811:                                              ; preds = %807, %830
  %812 = phi i64 [ 0, %807 ], [ %831, %830 ]
  %813 = phi ptr [ %809, %807 ], [ %832, %830 ]
  %814 = trunc i64 %812 to i32
  br i1 %804, label %818, label %815

815:                                              ; preds = %811
  %816 = getelementptr inbounds i32, ptr %244, i64 %812
  %817 = load i32, ptr %816, align 4, !tbaa !68
  br label %818

818:                                              ; preds = %811, %815
  %819 = phi i32 [ %817, %815 ], [ %814, %811 ]
  %820 = zext i32 %819 to i64
  %821 = getelementptr inbounds float, ptr %575, i64 %820
  %822 = load float, ptr %821, align 4, !tbaa !94
  %823 = fcmp une float %822, 0.000000e+00
  br i1 %823, label %824, label %830

824:                                              ; preds = %818
  %825 = getelementptr inbounds [3 x float], ptr %591, i64 %820
  %826 = getelementptr inbounds float, ptr %574, i64 %820
  %827 = load float, ptr %826, align 4, !tbaa !94
  %828 = fdiv float %827, %822
  %829 = fmul float %54, %828
  call fastcc void @madd_v3_v3fl(ptr noundef %813, ptr noundef %825, float noundef %829) #14
  br label %830

830:                                              ; preds = %824, %818
  %831 = add nuw nsw i64 %812, 1
  %832 = getelementptr inbounds %struct.MVert, ptr %813, i64 1
  %833 = icmp eq i64 %831, %810
  br i1 %833, label %834, label %811, !llvm.loop !107

834:                                              ; preds = %830, %797, %799, %570
  %835 = phi ptr [ %458, %570 ], [ %574, %799 ], [ %574, %797 ], [ %574, %830 ]
  %836 = phi ptr [ %255, %570 ], [ %591, %799 ], [ %591, %797 ], [ %591, %830 ]
  %837 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %837(ptr noundef %835) #12
  br label %838

838:                                              ; preds = %834, %570
  %839 = phi ptr [ %255, %570 ], [ %836, %834 ]
  %840 = icmp eq ptr %839, null
  br i1 %840, label %843, label %841

841:                                              ; preds = %838
  %842 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %842(ptr noundef nonnull %839) #12
  br label %843

843:                                              ; preds = %841, %838
  %844 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %845 = load i32, ptr %844, align 8, !tbaa !108
  %846 = and i32 %845, 4
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %848, label %855

848:                                              ; preds = %843
  %849 = load i32, ptr %44, align 8, !tbaa !59
  %850 = and i32 %849, 1
  %851 = icmp ne i32 %850, 0
  %852 = load ptr, ptr %5, align 8
  %853 = icmp ne ptr %852, null
  %854 = select i1 %851, i1 true, i1 %853
  br i1 %854, label %855, label %859

855:                                              ; preds = %848, %843
  %856 = getelementptr inbounds %struct.DerivedMesh, ptr %267, i64 0, i32 16
  %857 = load i32, ptr %856, align 8, !tbaa !108
  %858 = or i32 %857, 4
  store i32 %858, ptr %856, align 8, !tbaa !108
  br label %871

859:                                              ; preds = %848
  %860 = icmp ne i32 %13, 0
  %861 = select i1 %64, i1 %860, i1 false
  br i1 %861, label %862, label %871

862:                                              ; preds = %859
  %863 = getelementptr inbounds %struct.MVert, ptr %271, i64 %41
  br label %864

864:                                              ; preds = %862, %864
  %865 = phi ptr [ %869, %864 ], [ %863, %862 ]
  %866 = phi i32 [ %868, %864 ], [ 0, %862 ]
  %867 = getelementptr inbounds %struct.MVert, ptr %865, i64 0, i32 1
  call fastcc void @negate_v3_short(ptr noundef nonnull %867) #14
  %868 = add nuw i32 %866, 1
  %869 = getelementptr inbounds %struct.MVert, ptr %865, i64 1
  %870 = icmp eq i32 %868, %13
  br i1 %870, label %871, label %864, !llvm.loop !109

871:                                              ; preds = %864, %859, %855
  %872 = load i32, ptr %44, align 8, !tbaa !59
  %873 = and i32 %872, 1
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %1157, label %875

875:                                              ; preds = %871
  %876 = getelementptr inbounds %struct.DerivedMesh, ptr %267, i64 0, i32 16
  %877 = load i32, ptr %876, align 8, !tbaa !108
  %878 = and i32 %877, 4
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %880, label %884

880:                                              ; preds = %875
  %881 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %882 = mul nuw nsw i64 %41, 12
  %883 = call ptr %881(i64 noundef %882, ptr noundef nonnull @__func__.applyModifier) #12
  br label %884

884:                                              ; preds = %875, %880
  %885 = phi ptr [ %883, %880 ], [ null, %875 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %886 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 9
  %887 = load float, ptr %886, align 4, !tbaa !110
  %888 = fmul float %887, 2.550000e+02
  %889 = fptoui float %888 to i8
  %890 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 7
  %891 = load <2 x float>, ptr %890, align 4, !tbaa !94
  %892 = fmul <2 x float> %891, <float 2.550000e+02, float 2.550000e+02>
  %893 = fptoui <2 x float> %892 to <2 x i8>
  %894 = icmp ne i8 %889, 0
  %895 = extractelement <2 x i8> %893, i64 1
  %896 = zext i8 %895 to i32
  %897 = icmp ne i8 %895, 0
  %898 = select i1 %894, i1 true, i1 %897
  %899 = extractelement <2 x i8> %893, i64 0
  %900 = zext i8 %899 to i32
  %901 = icmp ne i8 %899, 0
  %902 = select i1 %898, i1 true, i1 %901
  br i1 %902, label %903, label %907

903:                                              ; preds = %884
  %904 = getelementptr inbounds %struct.DerivedMesh, ptr %267, i64 0, i32 19
  %905 = load i8, ptr %904, align 8, !tbaa !111
  %906 = or i8 %905, 4
  store i8 %906, ptr %904, align 8, !tbaa !111
  br label %907

907:                                              ; preds = %884, %903
  %908 = getelementptr inbounds %struct.DerivedMesh, ptr %267, i64 0, i32 51
  %909 = load ptr, ptr %908, align 8, !tbaa !112
  %910 = call ptr %909(ptr noundef nonnull %267, i32 noundef 7) #12
  %911 = icmp eq i32 %245, 0
  br i1 %911, label %939, label %912

912:                                              ; preds = %907
  %913 = add i32 %256, %260
  %914 = zext i32 %913 to i64
  %915 = getelementptr i32, ptr %910, i64 %914
  %916 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %914
  %917 = icmp eq i8 %889, 0
  %918 = zext i32 %245 to i64
  br label %919

919:                                              ; preds = %912, %934
  %920 = phi i64 [ 0, %912 ], [ %935, %934 ]
  %921 = phi ptr [ %916, %912 ], [ %936, %934 ]
  %922 = phi ptr [ %915, %912 ], [ %937, %934 ]
  %923 = getelementptr inbounds i32, ptr %244, i64 %920
  %924 = load i32, ptr %923, align 4, !tbaa !68
  store i32 %924, ptr %921, align 4, !tbaa !75
  %925 = trunc i64 %920 to i32
  %926 = select i1 %64, i32 %924, i32 %925
  %927 = add i32 %926, %13
  %928 = getelementptr inbounds %struct.MEdge, ptr %921, i64 0, i32 1
  store i32 %927, ptr %928, align 4, !tbaa !77
  %929 = getelementptr inbounds %struct.MEdge, ptr %921, i64 0, i32 4
  %930 = load i16, ptr %929, align 2, !tbaa !99
  %931 = or i16 %930, 2
  store i16 %931, ptr %929, align 2, !tbaa !99
  store i32 -1, ptr %922, align 4, !tbaa !68
  br i1 %917, label %934, label %932

932:                                              ; preds = %919
  %933 = getelementptr inbounds %struct.MEdge, ptr %921, i64 0, i32 2
  store i8 %889, ptr %933, align 4, !tbaa !113
  br label %934

934:                                              ; preds = %919, %932
  %935 = add nuw nsw i64 %920, 1
  %936 = getelementptr inbounds %struct.MEdge, ptr %921, i64 1
  %937 = getelementptr inbounds i32, ptr %922, i64 1
  %938 = icmp eq i64 %935, %918
  br i1 %938, label %939, label %919, !llvm.loop !114

939:                                              ; preds = %934, %907
  %940 = zext i32 %263 to i64
  %941 = getelementptr inbounds %struct.MLoop, ptr %269, i64 %940
  %942 = icmp eq i32 %246, 0
  br i1 %942, label %1126, label %943

943:                                              ; preds = %939
  %944 = zext i32 %265 to i64
  %945 = getelementptr inbounds %struct.MPoly, ptr %268, i64 %944
  %946 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %947 = getelementptr inbounds %struct.DerivedMesh, ptr %267, i64 0, i32 3
  %948 = add i32 %256, %260
  %949 = icmp eq i16 %39, 0
  %950 = icmp eq <2 x i8> %893, zeroinitializer
  %951 = zext i32 %246 to i64
  %952 = extractelement <2 x i1> %950, i64 0
  %953 = extractelement <2 x i1> %950, i64 1
  br label %954

954:                                              ; preds = %943, %1122
  %955 = phi i64 [ 0, %943 ], [ %1123, %1122 ]
  %956 = phi ptr [ %945, %943 ], [ %1124, %1122 ]
  %957 = phi i32 [ 0, %943 ], [ %1057, %1122 ]
  %958 = getelementptr inbounds i32, ptr %243, i64 %955
  %959 = load i32, ptr %958, align 4, !tbaa !68
  %960 = zext i32 %959 to i64
  %961 = getelementptr inbounds i32, ptr %242, i64 %960
  %962 = load i32, ptr %961, align 4, !tbaa !68
  %963 = icmp ult i32 %962, %19
  %964 = select i1 %963, i32 0, i32 %19
  %965 = sub i32 %962, %964
  %966 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %960
  %967 = trunc i64 %955 to i32
  %968 = add i32 %265, %967
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %267, i32 noundef %965, i32 noundef %968, i32 noundef 1) #12
  %969 = add i32 %957, %263
  store i32 %969, ptr %956, align 4, !tbaa !71
  %970 = zext i32 %965 to i64
  %971 = getelementptr inbounds %struct.MPoly, ptr %268, i64 %970
  %972 = getelementptr inbounds %struct.MPoly, ptr %268, i64 %970, i32 3
  %973 = load i8, ptr %972, align 2, !tbaa !115
  %974 = getelementptr inbounds %struct.MPoly, ptr %956, i64 0, i32 3
  store i8 %973, ptr %974, align 2, !tbaa !115
  %975 = load i32, ptr %971, align 4, !tbaa !71
  %976 = getelementptr inbounds i8, ptr %241, i64 %960
  %977 = load i8, ptr %976, align 1, !tbaa !78
  %978 = zext i8 %977 to i32
  %979 = add nsw i32 %978, -1
  %980 = getelementptr inbounds %struct.MPoly, ptr %956, i64 0, i32 1
  %981 = load i32, ptr %980, align 4, !tbaa !69
  %982 = add nsw i32 %979, %981
  %983 = srem i32 %982, %981
  %984 = add nsw i32 %983, %975
  %985 = add nsw i32 %975, %978
  store i32 4, ptr %980, align 4, !tbaa !69
  call void @CustomData_copy_data(ptr noundef nonnull %946, ptr noundef nonnull %947, i32 noundef %985, i32 noundef %969, i32 noundef 1) #12
  %986 = add i32 %969, 1
  call void @CustomData_copy_data(ptr noundef nonnull %946, ptr noundef nonnull %947, i32 noundef %984, i32 noundef %986, i32 noundef 1) #12
  %987 = add i32 %969, 2
  call void @CustomData_copy_data(ptr noundef nonnull %946, ptr noundef nonnull %947, i32 noundef %984, i32 noundef %987, i32 noundef 1) #12
  %988 = add i32 %969, 3
  call void @CustomData_copy_data(ptr noundef nonnull %946, ptr noundef nonnull %947, i32 noundef %985, i32 noundef %988, i32 noundef 1) #12
  %989 = or disjoint i32 %957, 2
  %990 = zext i32 %989 to i64
  %991 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %990
  %992 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %990, i32 1
  br i1 %963, label %993, label %1018

993:                                              ; preds = %954
  %994 = load i32, ptr %966, align 4, !tbaa !75
  %995 = zext i32 %957 to i64
  %996 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %995
  store i32 %994, ptr %996, align 4, !tbaa !74
  %997 = or disjoint i32 %957, 1
  %998 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %995, i32 1
  store i32 %959, ptr %998, align 4, !tbaa !72
  %999 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %960, i32 1
  %1000 = load i32, ptr %999, align 4, !tbaa !77
  %1001 = zext i32 %997 to i64
  %1002 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1001
  store i32 %1000, ptr %1002, align 4, !tbaa !74
  %1003 = zext i32 %1000 to i64
  %1004 = getelementptr inbounds i32, ptr %43, i64 %1003
  %1005 = load i32, ptr %1004, align 4, !tbaa !68
  %1006 = add i32 %948, %1005
  %1007 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1001, i32 1
  store i32 %1006, ptr %1007, align 4, !tbaa !72
  %1008 = zext i32 %994 to i64
  br i1 %64, label %1009, label %1013

1009:                                             ; preds = %993
  %1010 = load i32, ptr %999, align 4, !tbaa !68
  %1011 = add i32 %1010, %13
  store i32 %1011, ptr %991, align 4, !tbaa !74
  %1012 = add i32 %959, %16
  store i32 %1012, ptr %992, align 4, !tbaa !72
  br label %1043

1013:                                             ; preds = %993
  %1014 = load i32, ptr %1004, align 4, !tbaa !68
  %1015 = add i32 %1014, %13
  store i32 %1015, ptr %991, align 4, !tbaa !74
  %1016 = add i32 %16, %967
  store i32 %1016, ptr %992, align 4, !tbaa !72
  %1017 = getelementptr inbounds i32, ptr %43, i64 %1008
  br label %1043

1018:                                             ; preds = %954
  %1019 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %960, i32 1
  %1020 = load i32, ptr %1019, align 4, !tbaa !77
  %1021 = zext i32 %957 to i64
  %1022 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1021
  store i32 %1020, ptr %1022, align 4, !tbaa !74
  %1023 = or disjoint i32 %957, 1
  %1024 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1021, i32 1
  store i32 %959, ptr %1024, align 4, !tbaa !72
  %1025 = load i32, ptr %966, align 4, !tbaa !75
  %1026 = zext i32 %1023 to i64
  %1027 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1026
  store i32 %1025, ptr %1027, align 4, !tbaa !74
  %1028 = zext i32 %1025 to i64
  %1029 = getelementptr inbounds i32, ptr %43, i64 %1028
  %1030 = load i32, ptr %1029, align 4, !tbaa !68
  %1031 = add i32 %948, %1030
  %1032 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1026, i32 1
  store i32 %1031, ptr %1032, align 4, !tbaa !72
  %1033 = zext i32 %1020 to i64
  br i1 %64, label %1034, label %1038

1034:                                             ; preds = %1018
  %1035 = load i32, ptr %966, align 4, !tbaa !68
  %1036 = add i32 %1035, %13
  store i32 %1036, ptr %991, align 4, !tbaa !74
  %1037 = add i32 %959, %16
  store i32 %1037, ptr %992, align 4, !tbaa !72
  br label %1043

1038:                                             ; preds = %1018
  %1039 = load i32, ptr %1029, align 4, !tbaa !68
  %1040 = add i32 %1039, %13
  store i32 %1040, ptr %991, align 4, !tbaa !74
  %1041 = add i32 %16, %967
  store i32 %1041, ptr %992, align 4, !tbaa !72
  %1042 = getelementptr inbounds i32, ptr %43, i64 %1033
  br label %1043

1043:                                             ; preds = %1038, %1034, %1013, %1009
  %1044 = phi ptr [ %966, %1009 ], [ %1017, %1013 ], [ %1019, %1034 ], [ %1042, %1038 ]
  %1045 = phi i64 [ %1008, %1009 ], [ %1008, %1013 ], [ %1033, %1034 ], [ %1033, %1038 ]
  %1046 = phi i32 [ %1006, %1009 ], [ %1006, %1013 ], [ %1031, %1034 ], [ %1031, %1038 ]
  %1047 = phi i64 [ %1001, %1009 ], [ %1001, %1013 ], [ %1026, %1034 ], [ %1026, %1038 ]
  %1048 = or disjoint i32 %957, 3
  %1049 = load i32, ptr %1044, align 4, !tbaa !68
  %1050 = add i32 %1049, %13
  %1051 = zext i32 %1048 to i64
  %1052 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1051
  store i32 %1050, ptr %1052, align 4, !tbaa !74
  %1053 = getelementptr inbounds i32, ptr %43, i64 %1045
  %1054 = load i32, ptr %1053, align 4, !tbaa !68
  %1055 = add i32 %948, %1054
  %1056 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1051, i32 1
  store i32 %1055, ptr %1056, align 4, !tbaa !72
  %1057 = add i32 %957, 4
  %1058 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1047
  %1059 = zext i32 %1046 to i64
  %1060 = getelementptr inbounds i32, ptr %910, i64 %1059
  store i32 -1, ptr %1060, align 4, !tbaa !68
  %1061 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1051
  %1062 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1051, i32 1
  %1063 = load i32, ptr %1062, align 4, !tbaa !72
  %1064 = zext i32 %1063 to i64
  %1065 = getelementptr inbounds i32, ptr %910, i64 %1064
  store i32 -1, ptr %1065, align 4, !tbaa !68
  br i1 %949, label %1076, label %1066

1066:                                             ; preds = %1043
  %1067 = getelementptr inbounds %struct.MPoly, ptr %956, i64 0, i32 2
  %1068 = load i16, ptr %1067, align 4, !tbaa !89
  %1069 = add i16 %1068, %39
  store i16 %1069, ptr %1067, align 4, !tbaa !89
  %1070 = icmp slt i16 %1069, 0
  br i1 %1070, label %1074, label %1071

1071:                                             ; preds = %1066
  %1072 = zext nneg i16 %1069 to i32
  %1073 = icmp slt i32 %30, %1072
  br i1 %1073, label %1074, label %1076

1074:                                             ; preds = %1071, %1066
  %1075 = phi i16 [ 0, %1066 ], [ %28, %1071 ]
  store i16 %1075, ptr %1067, align 4, !tbaa !89
  br label %1076

1076:                                             ; preds = %1074, %1071, %1043
  br i1 %953, label %1084, label %1077

1077:                                             ; preds = %1076
  %1078 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %960, i32 2
  %1079 = load i8, ptr %1078, align 1, !tbaa !78
  %1080 = zext i8 %1079 to i32
  %1081 = add nuw nsw i32 %1080, %896
  %1082 = call i32 @llvm.umin.i32(i32 %1081, i32 255)
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, ptr %1078, align 1, !tbaa !78
  br label %1084

1084:                                             ; preds = %1077, %1076
  br i1 %952, label %1095, label %1085

1085:                                             ; preds = %1084
  %1086 = select i1 %64, i32 %959, i32 %967
  %1087 = add i32 %1086, %16
  %1088 = zext i32 %1087 to i64
  %1089 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %1088, i32 2
  %1090 = load i8, ptr %1089, align 1, !tbaa !78
  %1091 = zext i8 %1090 to i32
  %1092 = add nuw nsw i32 %1091, %900
  %1093 = call i32 @llvm.umin.i32(i32 %1092, i32 255)
  %1094 = trunc i32 %1093 to i8
  store i8 %1094, ptr %1089, align 1, !tbaa !78
  br label %1095

1095:                                             ; preds = %1085, %1084
  br i1 %879, label %1096, label %1122

1096:                                             ; preds = %1095
  %1097 = zext i32 %957 to i64
  %1098 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1097
  %1099 = load i32, ptr %1098, align 4, !tbaa !74
  %1100 = zext i32 %1099 to i64
  %1101 = getelementptr inbounds %struct.MVert, ptr %271, i64 %1100
  %1102 = load i32, ptr %1058, align 4, !tbaa !74
  %1103 = zext i32 %1102 to i64
  %1104 = getelementptr inbounds %struct.MVert, ptr %271, i64 %1103
  %1105 = or disjoint i32 %957, 2
  %1106 = zext i32 %1105 to i64
  %1107 = getelementptr inbounds %struct.MLoop, ptr %941, i64 %1106
  %1108 = load i32, ptr %1107, align 4, !tbaa !74
  %1109 = zext i32 %1108 to i64
  %1110 = getelementptr inbounds %struct.MVert, ptr %271, i64 %1109
  %1111 = load i32, ptr %1061, align 4, !tbaa !74
  %1112 = zext i32 %1111 to i64
  %1113 = getelementptr inbounds %struct.MVert, ptr %271, i64 %1112
  %1114 = call float @normal_quad_v3(ptr noundef nonnull %9, ptr noundef %1101, ptr noundef %1104, ptr noundef %1110, ptr noundef %1113) #12
  %1115 = load i32, ptr %966, align 4, !tbaa !75
  %1116 = zext i32 %1115 to i64
  %1117 = getelementptr inbounds [3 x float], ptr %885, i64 %1116
  call fastcc void @add_v3_v3(ptr noundef %1117, ptr noundef nonnull %9) #14
  %1118 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %960, i32 1
  %1119 = load i32, ptr %1118, align 4, !tbaa !77
  %1120 = zext i32 %1119 to i64
  %1121 = getelementptr inbounds [3 x float], ptr %885, i64 %1120
  call fastcc void @add_v3_v3(ptr noundef %1121, ptr noundef nonnull %9) #14
  br label %1122

1122:                                             ; preds = %1096, %1095
  %1123 = add nuw nsw i64 %955, 1
  %1124 = getelementptr inbounds %struct.MPoly, ptr %956, i64 1
  %1125 = icmp eq i64 %1123, %951
  br i1 %1125, label %1126, label %954, !llvm.loop !116

1126:                                             ; preds = %1122, %939
  br i1 %879, label %1127, label %1152

1127:                                             ; preds = %1126
  br i1 %911, label %1150, label %1128

1128:                                             ; preds = %1127
  %1129 = zext i32 %260 to i64
  %1130 = getelementptr inbounds %struct.MEdge, ptr %270, i64 %1129
  br label %1131

1131:                                             ; preds = %1128, %1131
  %1132 = phi ptr [ %1148, %1131 ], [ %1130, %1128 ]
  %1133 = phi i32 [ %1147, %1131 ], [ 0, %1128 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %1134 = load i32, ptr %1132, align 4, !tbaa !75
  %1135 = zext i32 %1134 to i64
  %1136 = getelementptr inbounds [3 x float], ptr %885, i64 %1135
  %1137 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %10, ptr noundef %1136) #14
  %1138 = load i32, ptr %1132, align 4, !tbaa !68
  %1139 = zext i32 %1138 to i64
  %1140 = getelementptr inbounds %struct.MVert, ptr %271, i64 %1139, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %9, ptr noundef nonnull %1140) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  %1141 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #14
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %1140, ptr noundef nonnull %9) #14
  %1142 = getelementptr inbounds i32, ptr %1132, i64 1
  %1143 = load i32, ptr %1142, align 4, !tbaa !68
  %1144 = zext i32 %1143 to i64
  %1145 = getelementptr inbounds %struct.MVert, ptr %271, i64 %1144, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %9, ptr noundef nonnull %1145) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  %1146 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #14
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %1145, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  %1147 = add nuw i32 %1133, 1
  %1148 = getelementptr inbounds %struct.MEdge, ptr %1132, i64 1
  %1149 = icmp eq i32 %1147, %245
  br i1 %1149, label %1150, label %1131, !llvm.loop !117

1150:                                             ; preds = %1131, %1127
  %1151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %1151(ptr noundef %885) #12
  br label %1152

1152:                                             ; preds = %1150, %1126
  %1153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %1153(ptr noundef %244) #12
  %1154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %1154(ptr noundef %243) #12
  %1155 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %1155(ptr noundef %242) #12
  %1156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %1156(ptr noundef %241) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  br label %1157

1157:                                             ; preds = %1152, %871
  %1158 = icmp eq ptr %43, null
  br i1 %1158, label %1161, label %1159

1159:                                             ; preds = %1157
  %1160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %1160(ptr noundef nonnull %43) #12
  br label %1161

1161:                                             ; preds = %1159, %1157
  %1162 = icmp eq ptr %86, null
  br i1 %1162, label %1165, label %1163

1163:                                             ; preds = %1161
  %1164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %1164(ptr noundef nonnull %86) #12
  br label %1165

1165:                                             ; preds = %1163, %1161
  %1166 = icmp eq i32 %19, 0
  %1167 = icmp ne i32 %16, 0
  %1168 = select i1 %1166, i1 %1167, i1 false
  br i1 %1168, label %1169, label %1170

1169:                                             ; preds = %1165
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.7) #12
  br label %1170

1170:                                             ; preds = %1169, %1165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %267
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 2
  store <2 x float> <float 0x3F847AE140000000, float -1.000000e+00>, ptr %2, align 8, !tbaa !94
  %3 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 10
  store i32 1, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.SolidifyModifierData, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnNormals(ptr nocapture readnone %0) #3 !PGOFuncName !120 {
  ret i8 1
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals_poly(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dm_calc_normal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call i32 %6(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call i32 %9(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = tail call i32 %12(ptr noundef %0) #12
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = tail call ptr %15(ptr noundef %0) #12
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = tail call ptr %18(ptr noundef %0) #12
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = tail call ptr %21(ptr noundef %0) #12
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = tail call ptr %24(ptr noundef %0) #12
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %27 = sext i32 %10 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %30 = icmp sgt i32 %13, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %71, %3
  %32 = icmp sgt i32 %10, 0
  br i1 %32, label %75, label %107

33:                                               ; preds = %3, %71
  %34 = phi i32 [ %72, %71 ], [ 0, %3 ]
  %35 = phi ptr [ %73, %71 ], [ %16, %3 ]
  %36 = getelementptr inbounds %struct.MPoly, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !69
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %33
  %40 = load i32, ptr %35, align 4, !tbaa !71
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.MLoop, ptr %25, i64 %41
  br label %43

43:                                               ; preds = %39, %67
  %44 = phi i32 [ %68, %67 ], [ 0, %39 ]
  %45 = phi ptr [ %69, %67 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.MLoop, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !72
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.EdgeFaceRef, ptr %29, i64 %48
  %50 = tail call fastcc zeroext i8 @edgeref_is_init(ptr noundef %49) #14, !range !122
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  store i32 %34, ptr %49, align 4, !tbaa !123
  %53 = getelementptr inbounds %struct.EdgeFaceRef, ptr %29, i64 %48, i32 1
  store i32 -1, ptr %53, align 4, !tbaa !125
  br label %67

54:                                               ; preds = %43
  %55 = load i32, ptr %49, align 4, !tbaa !123
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.EdgeFaceRef, ptr %29, i64 %48, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !125
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 %34, ptr %58, align 4, !tbaa !125
  br label %67

62:                                               ; preds = %57, %54
  %63 = getelementptr inbounds %struct.EdgeFaceRef, ptr %29, i64 %48, i32 1
  store i32 -1, ptr %63, align 4, !tbaa !125
  store i32 -1, ptr %49, align 4, !tbaa !123
  %64 = getelementptr inbounds %struct.MEdge, ptr %19, i64 %48, i32 4
  %65 = load i16, ptr %64, align 2, !tbaa !99
  %66 = or i16 %65, 256
  store i16 %66, ptr %64, align 2, !tbaa !99
  br label %67

67:                                               ; preds = %52, %62, %61
  %68 = add nuw nsw i32 %44, 1
  %69 = getelementptr inbounds %struct.MLoop, ptr %45, i64 1
  %70 = icmp eq i32 %68, %37
  br i1 %70, label %71, label %43, !llvm.loop !126

71:                                               ; preds = %67, %33
  %72 = add nuw nsw i32 %34, 1
  %73 = getelementptr inbounds %struct.MPoly, ptr %35, i64 1
  %74 = icmp eq i32 %72, %13
  br i1 %74, label %31, label %33, !llvm.loop !127

75:                                               ; preds = %31, %102
  %76 = phi ptr [ %105, %102 ], [ %29, %31 ]
  %77 = phi i32 [ %103, %102 ], [ 0, %31 ]
  %78 = phi ptr [ %104, %102 ], [ %19, %31 ]
  %79 = call fastcc zeroext i8 @edgeref_is_init(ptr noundef %76) #14, !range !122
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %76, align 4, !tbaa !123
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %102, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.EdgeFaceRef, ptr %76, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !125
  %87 = icmp eq i32 %86, -1
  %88 = sext i32 %82 to i64
  %89 = getelementptr inbounds [3 x float], ptr %1, i64 %88
  br i1 %87, label %93, label %90

90:                                               ; preds = %84
  %91 = sext i32 %86 to i64
  %92 = getelementptr inbounds [3 x float], ptr %1, i64 %91
  call void @mid_v3_v3v3_angle_weighted(ptr noundef nonnull %4, ptr noundef %89, ptr noundef %92) #12
  br label %94

93:                                               ; preds = %84
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %89) #14
  br label %94

94:                                               ; preds = %93, %90
  %95 = load i32, ptr %78, align 4, !tbaa !75
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [3 x float], ptr %2, i64 %96
  call fastcc void @add_v3_v3(ptr noundef %97, ptr noundef nonnull %4) #14
  %98 = getelementptr inbounds %struct.MEdge, ptr %78, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !77
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [3 x float], ptr %2, i64 %100
  call fastcc void @add_v3_v3(ptr noundef %101, ptr noundef nonnull %4) #14
  br label %102

102:                                              ; preds = %75, %81, %94
  %103 = add nuw nsw i32 %77, 1
  %104 = getelementptr inbounds %struct.MEdge, ptr %78, i64 1
  %105 = getelementptr inbounds %struct.EdgeFaceRef, ptr %76, i64 1
  %106 = icmp eq i32 %103, %10
  br i1 %106, label %107, label %75, !llvm.loop !128

107:                                              ; preds = %102, %31
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %108(ptr noundef %29) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %109 = icmp sgt i32 %7, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = zext nneg i32 %7 to i64
  br label %112

112:                                              ; preds = %110, %120
  %113 = phi i64 [ 0, %110 ], [ %121, %120 ]
  %114 = phi ptr [ %22, %110 ], [ %122, %120 ]
  %115 = getelementptr inbounds [3 x float], ptr %2, i64 %113
  %116 = call fastcc float @normalize_v3(ptr noundef %115) #14
  %117 = fcmp oeq float %116, 0.000000e+00
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.MVert, ptr %114, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %115, ptr noundef nonnull %119) #14
  br label %120

120:                                              ; preds = %112, %118
  %121 = add nuw nsw i64 %113, 1
  %122 = getelementptr inbounds %struct.MVert, ptr %114, i64 1
  %123 = icmp eq i64 %121, %111
  br i1 %123, label %124, label %112, !llvm.loop !129

124:                                              ; preds = %120, %107
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !130 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !131 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3v3short_fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !132 {
  %4 = load <2 x i16>, ptr %1, align 2, !tbaa !133
  %5 = sitofp <2 x i16> %4 to <2 x float>
  %6 = load <2 x float>, ptr %0, align 4, !tbaa !94
  %7 = insertelement <2 x float> poison, float %2, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %8, <2 x float> %6)
  store <2 x float> %9, ptr %0, align 4, !tbaa !94
  %10 = getelementptr inbounds i16, ptr %1, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !133
  %12 = sitofp i16 %11 to float
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !94
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %2, float %14)
  store float %15, ptr %13, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !134 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !133
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !94
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !133
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !135 {
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = load float, ptr %2, align 4, !tbaa !94
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !94
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !94
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !94
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !136 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret float %2
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @shell_v3v3_normalized_to_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !137 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #14
  %4 = tail call float @llvm.fabs.f32(float %3)
  %5 = fcmp olt float %4, 0x3E45798EE0000000
  %6 = fdiv float 1.000000e+00, %4
  %7 = select i1 %5, float 1.000000e+00, float %6
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !138 {
  %3 = load float, ptr %1, align 4, !tbaa !94
  store float %3, ptr %0, align 4, !tbaa !94
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !94
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !139 {
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = load float, ptr %0, align 4, !tbaa !94
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !94
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !94
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !94
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !94
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_short(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !140 {
  %2 = load <2 x i16>, ptr %0, align 2, !tbaa !133
  %3 = sub <2 x i16> zeroinitializer, %2
  store <2 x i16> %3, ptr %0, align 2, !tbaa !133
  %4 = getelementptr inbounds i16, ptr %0, i64 2
  %5 = load i16, ptr %4, align 2, !tbaa !133
  %6 = sub i16 0, %5
  store i16 %6, ptr %4, align 2, !tbaa !133
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !141 {
  %3 = load float, ptr %1, align 4, !tbaa !94
  %4 = load float, ptr %0, align 4, !tbaa !94
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !94
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !94
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !94
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !94
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !142 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !143 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !94
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !133
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !133
  ret void
}

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @edgeref_is_init(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !144 {
  %2 = load i32, ptr %0, align 4, !tbaa !123
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.EdgeFaceRef, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !125
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 1, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @mid_v3_v3v3_angle_weighted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !145 {
  %3 = load float, ptr %0, align 4, !tbaa !94
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !94
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !94
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !146 {
  %4 = load float, ptr %1, align 4, !tbaa !94
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !94
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !94
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !94
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !94
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #1 !PGOFuncName !147 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !94
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !94
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }

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
!34 = !{!"MOD_solidify.c:copyData"}
!35 = !{!"MOD_solidify.c:applyModifier"}
!36 = !{!37, !39, i64 1104}
!37 = !{!"DerivedMesh", !38, i64 0, !38, i64 200, !38, i64 400, !38, i64 600, !38, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!38 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!37, !39, i64 1112}
!45 = !{!37, !39, i64 1136}
!46 = !{!37, !39, i64 1128}
!47 = !{!48, !42, i64 456}
!48 = !{!"Object", !49, i64 0, !39, i64 120, !39, i64 128, !50, i64 136, !50, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !40, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !51, i64 312, !39, i64 360, !52, i64 368, !52, i64 384, !52, i64 400, !52, i64 416, !42, i64 432, !42, i64 436, !39, i64 440, !39, i64 448, !42, i64 456, !42, i64 460, !40, i64 464, !40, i64 476, !40, i64 488, !40, i64 500, !40, i64 512, !40, i64 524, !40, i64 536, !40, i64 548, !40, i64 560, !40, i64 576, !40, i64 592, !40, i64 604, !43, i64 616, !43, i64 620, !40, i64 624, !40, i64 688, !40, i64 752, !40, i64 816, !40, i64 880, !42, i64 944, !50, i64 948, !50, i64 950, !50, i64 952, !50, i64 954, !50, i64 956, !50, i64 958, !50, i64 960, !50, i64 962, !50, i64 964, !40, i64 966, !40, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !50, i64 1036, !50, i64 1038, !50, i64 1040, !40, i64 1042, !40, i64 1043, !50, i64 1044, !40, i64 1046, !40, i64 1047, !43, i64 1048, !43, i64 1052, !52, i64 1056, !52, i64 1072, !52, i64 1088, !52, i64 1104, !43, i64 1120, !50, i64 1124, !50, i64 1126, !40, i64 1128, !42, i64 1144, !42, i64 1148, !39, i64 1152, !40, i64 1160, !40, i64 1161, !50, i64 1162, !40, i64 1164, !52, i64 1176, !52, i64 1192, !52, i64 1208, !52, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !40, i64 1264, !40, i64 1265, !50, i64 1266, !43, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !53, i64 1304, !53, i64 1312, !42, i64 1320, !42, i64 1324, !52, i64 1328, !52, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !40, i64 1384, !39, i64 1392, !52, i64 1400, !39, i64 1416}
!49 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !50, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !39, i64 112}
!50 = !{!"short", !40, i64 0}
!51 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!52 = !{!"ListBase", !39, i64 0, !39, i64 8}
!53 = !{!"long", !40, i64 0}
!54 = !{!55, !50, i64 212}
!55 = !{!"SolidifyModifierData", !56, i64 0, !40, i64 112, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !42, i64 208, !50, i64 212, !50, i64 214}
!56 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!57 = !{!55, !50, i64 214}
!58 = !{!39, !39, i64 0}
!59 = !{!55, !42, i64 208}
!60 = !{!55, !43, i64 180}
!61 = !{!55, !43, i64 176}
!62 = !{!55, !43, i64 184}
!63 = !{!55, !43, i64 188}
!64 = !{!37, !39, i64 1168}
!65 = !{!37, !39, i64 1176}
!66 = !{!37, !39, i64 1192}
!67 = !{!37, !39, i64 1200}
!68 = !{!42, !42, i64 0}
!69 = !{!70, !42, i64 4}
!70 = !{!"MPoly", !42, i64 0, !42, i64 4, !50, i64 8, !40, i64 10, !40, i64 11}
!71 = !{!70, !42, i64 0}
!72 = !{!73, !42, i64 4}
!73 = !{!"MLoop", !42, i64 0, !42, i64 4}
!74 = !{!73, !42, i64 0}
!75 = !{!76, !42, i64 0}
!76 = !{!"MEdge", !42, i64 0, !42, i64 4, !40, i64 8, !40, i64 9, !50, i64 10}
!77 = !{!76, !42, i64 4}
!78 = !{!40, !40, i64 0}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = !{!37, !42, i64 1016}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !80}
!87 = !{!37, !42, i64 1012}
!88 = distinct !{!88, !80}
!89 = !{!70, !50, i64 8}
!90 = distinct !{!90, !80}
!91 = distinct !{!91, !80}
!92 = distinct !{!92, !80}
!93 = distinct !{!93, !80}
!94 = !{!43, !43, i64 0}
!95 = distinct !{!95, !80}
!96 = distinct !{!96, !80}
!97 = distinct !{!97, !80}
!98 = distinct !{!98, !80}
!99 = !{!76, !50, i64 10}
!100 = distinct !{!100, !80}
!101 = distinct !{!101, !80}
!102 = distinct !{!102, !80}
!103 = distinct !{!103, !80}
!104 = distinct !{!104, !80}
!105 = distinct !{!105, !80}
!106 = distinct !{!106, !80}
!107 = distinct !{!107, !80}
!108 = !{!37, !42, i64 1056}
!109 = distinct !{!109, !80}
!110 = !{!55, !43, i64 204}
!111 = !{!37, !40, i64 1072}
!112 = !{!37, !39, i64 1328}
!113 = !{!76, !40, i64 8}
!114 = distinct !{!114, !80}
!115 = !{!70, !40, i64 10}
!116 = distinct !{!116, !80}
!117 = distinct !{!117, !80}
!118 = !{!"MOD_solidify.c:initData"}
!119 = !{!"MOD_solidify.c:requiredDataMask"}
!120 = !{!"MOD_solidify.c:dependsOnNormals"}
!121 = !{!"MOD_solidify.c:dm_calc_normal"}
!122 = !{i8 0, i8 2}
!123 = !{!124, !42, i64 0}
!124 = !{!"EdgeFaceRef", !42, i64 0, !42, i64 4}
!125 = !{!124, !42, i64 4}
!126 = distinct !{!126, !80}
!127 = distinct !{!127, !80}
!128 = distinct !{!128, !80}
!129 = distinct !{!129, !80}
!130 = !{!"MOD_solidify.c:len_squared_v3v3"}
!131 = !{!"MOD_solidify.c:min_ff"}
!132 = !{!"MOD_solidify.c:madd_v3v3short_fl"}
!133 = !{!50, !50, i64 0}
!134 = !{!"MOD_solidify.c:normal_short_to_float_v3"}
!135 = !{!"MOD_solidify.c:sub_v3_v3v3"}
!136 = !{!"MOD_solidify.c:normalize_v3"}
!137 = !{!"MOD_solidify.c:shell_v3v3_normalized_to_dist"}
!138 = !{!"MOD_solidify.c:copy_v3_v3"}
!139 = !{!"MOD_solidify.c:madd_v3_v3fl"}
!140 = !{!"MOD_solidify.c:negate_v3_short"}
!141 = !{!"MOD_solidify.c:add_v3_v3"}
!142 = !{!"MOD_solidify.c:normalize_v3_v3"}
!143 = !{!"MOD_solidify.c:normal_float_to_short_v3"}
!144 = !{!"MOD_solidify.c:edgeref_is_init"}
!145 = !{!"MOD_solidify.c:dot_v3v3"}
!146 = !{!"MOD_solidify.c:mul_v3_v3fl"}
!147 = !{!"MOD_solidify.c:zero_v3"}
