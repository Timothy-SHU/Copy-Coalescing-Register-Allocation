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
%struct.EdgeFaceRef = type { i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MDeformVert = type { ptr, i32, i32 }

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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call i32 %12(ptr noundef %2) #10
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call i32 %15(ptr noundef %2) #10
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = tail call i32 %18(ptr noundef %2) #10
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = tail call i32 %21(ptr noundef %2) #10
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %24 = load i32, ptr %23, align 8, !tbaa !45
  %25 = icmp sgt i32 %24, 1
  %26 = add nsw i32 %24, -1
  %27 = select i1 %25, i32 %26, i32 0
  %28 = trunc i32 %27 to i16
  %29 = shl i32 %27, 16
  %30 = ashr exact i32 %29, 16
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 11
  %34 = load i16, ptr %33, align 4, !tbaa !52
  br label %35

35:                                               ; preds = %4, %32
  %36 = phi i16 [ %34, %32 ], [ 0, %4 ]
  br i1 %31, label %40, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 12
  %39 = load i16, ptr %38, align 2, !tbaa !55
  br label %40

40:                                               ; preds = %35, %37
  %41 = phi i16 [ %39, %37 ], [ 0, %35 ]
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %43 = zext i32 %13 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @.str) #10
  %46 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !57
  %48 = and i32 %47, 6
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 3
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = fsub float 1.000000e+00, %51
  %53 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 2
  %54 = load float, ptr %53, align 8, !tbaa !59
  %55 = fmul float %52, -5.000000e-01
  %56 = fmul float %54, %55
  %57 = fadd float %54, %56
  %58 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 4
  %59 = load float, ptr %58, align 8, !tbaa !60
  %60 = fsub float 1.000000e+00, %59
  %61 = trunc i32 %47 to i8
  %62 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 5
  %63 = load float, ptr %62, align 4, !tbaa !61
  %64 = fcmp une float %63, 0.000000e+00
  %65 = and i32 %47, 65
  %66 = icmp ne i32 %65, 65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %67 = and i32 %47, 8
  %68 = icmp eq i32 %67, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %69 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 1
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %69, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = call ptr %71(ptr noundef %2) #10
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %74 = load ptr, ptr %73, align 8, !tbaa !63
  %75 = call ptr %74(ptr noundef %2) #10
  %76 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %77 = load ptr, ptr %76, align 8, !tbaa !64
  %78 = call ptr %77(ptr noundef %2) #10
  %79 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %80 = load ptr, ptr %79, align 8, !tbaa !65
  %81 = call ptr %80(ptr noundef %2) #10
  br i1 %49, label %87, label %82

82:                                               ; preds = %40
  %83 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %84 = zext i32 %19 to i64
  %85 = mul nuw nsw i64 %84, 12
  %86 = call ptr %83(i64 noundef %85, ptr noundef nonnull @__func__.applyModifier) #10
  call void @BKE_mesh_calc_normals_poly(ptr noundef %72, i32 noundef %13, ptr noundef %78, ptr noundef %81, i32 noundef %22, i32 noundef %19, ptr noundef %86, i8 noundef zeroext 1) #10
  br label %87

87:                                               ; preds = %82, %40
  %88 = phi ptr [ %86, %82 ], [ null, %40 ]
  %89 = load i32, ptr %46, align 8, !tbaa !57
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %248, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %94 = lshr i32 %13, 3
  %95 = and i32 %94, 536870908
  %96 = add nuw nsw i32 %95, 4
  %97 = zext nneg i32 %96 to i64
  %98 = call ptr %93(i64 noundef %97, ptr noundef nonnull @__func__.applyModifier) #10
  %99 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %100 = shl i32 %13, 1
  %101 = zext i32 %100 to i64
  %102 = shl nuw nsw i64 %101, 2
  %103 = call ptr %99(i64 noundef %102, ptr noundef nonnull @__func__.applyModifier) #10
  %104 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %105 = shl i32 %16, 1
  %106 = add i32 %105, %13
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 2
  %109 = call ptr %104(i64 noundef %108, ptr noundef nonnull @__func__.applyModifier) #10
  %110 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %111 = zext i32 %16 to i64
  %112 = shl nuw nsw i64 %111, 2
  %113 = call ptr %110(i64 noundef %112, ptr noundef nonnull @.str.1) #10
  %114 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %115 = call ptr %114(i64 noundef %111, ptr noundef nonnull @.str.2) #10
  %116 = icmp eq i32 %16, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %92
  %118 = zext i32 %16 to i64
  %119 = shl nuw nsw i64 %118, 2
  call void @llvm.memset.p0.i64(ptr align 4 %113, i8 -1, i64 %119, i1 false), !tbaa !66
  br label %120

120:                                              ; preds = %117, %92
  %121 = icmp eq i32 %19, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %169, %120
  %123 = icmp eq i32 %16, 0
  br i1 %123, label %173, label %124

124:                                              ; preds = %122
  %125 = zext i32 %16 to i64
  br label %179

126:                                              ; preds = %120, %169
  %127 = phi ptr [ %171, %169 ], [ %81, %120 ]
  %128 = phi i32 [ %170, %169 ], [ 0, %120 ]
  %129 = getelementptr inbounds %struct.MPoly, ptr %127, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !67
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %169

132:                                              ; preds = %126
  %133 = load i32, ptr %127, align 4, !tbaa !69
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.MLoop, ptr %78, i64 %134
  %136 = zext nneg i32 %130 to i64
  %137 = getelementptr %struct.MLoop, ptr %135, i64 %136
  %138 = getelementptr %struct.MLoop, ptr %137, i64 -1
  br label %139

139:                                              ; preds = %132, %164
  %140 = phi ptr [ %166, %164 ], [ %135, %132 ]
  %141 = phi ptr [ %140, %164 ], [ %138, %132 ]
  %142 = phi i32 [ %165, %164 ], [ 0, %132 ]
  %143 = getelementptr inbounds %struct.MLoop, ptr %141, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !70
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %113, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !66
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %163

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.MEdge, ptr %75, i64 %145
  %151 = load i32, ptr %141, align 4, !tbaa !72
  %152 = load i32, ptr %140, align 4, !tbaa !72
  %153 = icmp ugt i32 %151, %152
  %154 = load i32, ptr %150, align 4, !tbaa !73
  %155 = getelementptr inbounds %struct.MEdge, ptr %75, i64 %145, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !75
  %157 = icmp uge i32 %154, %156
  %158 = xor i1 %153, %157
  %159 = select i1 %158, i32 0, i32 %19
  %160 = add i32 %159, %128
  store i32 %160, ptr %146, align 4, !tbaa !66
  %161 = trunc i32 %142 to i8
  %162 = getelementptr inbounds i8, ptr %115, i64 %145
  store i8 %161, ptr %162, align 1, !tbaa !76
  br label %164

163:                                              ; preds = %139
  store i32 -2, ptr %146, align 4, !tbaa !66
  br label %164

164:                                              ; preds = %163, %149
  %165 = add nuw nsw i32 %142, 1
  %166 = getelementptr inbounds %struct.MLoop, ptr %140, i64 1
  %167 = load i32, ptr %129, align 4, !tbaa !67
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %139, label %169, !llvm.loop !77

169:                                              ; preds = %164, %126
  %170 = add nuw i32 %128, 1
  %171 = getelementptr inbounds %struct.MPoly, ptr %127, i64 1
  %172 = icmp eq i32 %170, %19
  br i1 %172, label %122, label %126, !llvm.loop !80

173:                                              ; preds = %212, %122
  %174 = phi i32 [ 0, %122 ], [ %214, %212 ]
  %175 = phi i32 [ 0, %122 ], [ %215, %212 ]
  %176 = icmp eq i32 %13, 0
  br i1 %176, label %245, label %177

177:                                              ; preds = %173
  %178 = zext i32 %13 to i64
  br label %219

179:                                              ; preds = %124, %212
  %180 = phi i64 [ 0, %124 ], [ %216, %212 ]
  %181 = phi ptr [ %75, %124 ], [ %217, %212 ]
  %182 = phi i32 [ 0, %124 ], [ %215, %212 ]
  %183 = phi i32 [ 0, %124 ], [ %214, %212 ]
  %184 = phi i32 [ 0, %124 ], [ %213, %212 ]
  %185 = getelementptr inbounds i32, ptr %113, i64 %180
  %186 = load i32, ptr %185, align 4, !tbaa !66
  %187 = icmp ugt i32 %186, -3
  br i1 %187, label %212, label %188

188:                                              ; preds = %179
  %189 = load i32, ptr %181, align 4, !tbaa !73
  %190 = and i32 %189, 31
  %191 = shl nuw i32 1, %190
  %192 = lshr i32 %189, 5
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds i32, ptr %98, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !66
  %196 = or i32 %191, %195
  store i32 %196, ptr %194, align 4, !tbaa !66
  %197 = getelementptr inbounds %struct.MEdge, ptr %181, i64 0, i32 1
  %198 = load i32, ptr %197, align 4, !tbaa !75
  %199 = and i32 %198, 31
  %200 = shl nuw i32 1, %199
  %201 = lshr i32 %198, 5
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds i32, ptr %98, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !66
  %205 = or i32 %200, %204
  store i32 %205, ptr %203, align 4, !tbaa !66
  %206 = add i32 %184, 1
  %207 = zext i32 %184 to i64
  %208 = getelementptr inbounds i32, ptr %109, i64 %207
  %209 = trunc i64 %180 to i32
  store i32 %209, ptr %208, align 4, !tbaa !66
  %210 = add i32 %183, 1
  %211 = add i32 %182, 4
  br label %212

212:                                              ; preds = %179, %188
  %213 = phi i32 [ %206, %188 ], [ %184, %179 ]
  %214 = phi i32 [ %210, %188 ], [ %183, %179 ]
  %215 = phi i32 [ %211, %188 ], [ %182, %179 ]
  %216 = add nuw nsw i64 %180, 1
  %217 = getelementptr inbounds %struct.MEdge, ptr %181, i64 1
  %218 = icmp eq i64 %216, %125
  br i1 %218, label %173, label %179, !llvm.loop !81

219:                                              ; preds = %177, %240
  %220 = phi i64 [ 0, %177 ], [ %243, %240 ]
  %221 = phi i32 [ 0, %177 ], [ %242, %240 ]
  %222 = phi i32 [ 0, %177 ], [ %241, %240 ]
  %223 = lshr i64 %220, 5
  %224 = and i64 %223, 134217727
  %225 = getelementptr inbounds i32, ptr %98, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !66
  %227 = trunc i64 %220 to i32
  %228 = and i32 %227, 31
  %229 = shl nuw i32 1, %228
  %230 = and i32 %226, %229
  %231 = icmp eq i32 %230, 0
  %232 = getelementptr inbounds i32, ptr %45, i64 %220
  br i1 %231, label %239, label %233

233:                                              ; preds = %219
  store i32 %222, ptr %232, align 4, !tbaa !66
  %234 = add i32 %222, 1
  %235 = zext i32 %222 to i64
  %236 = getelementptr inbounds i32, ptr %103, i64 %235
  %237 = trunc i64 %220 to i32
  store i32 %237, ptr %236, align 4, !tbaa !66
  %238 = add i32 %221, 1
  br label %240

239:                                              ; preds = %219
  store i32 -1, ptr %232, align 4, !tbaa !66
  br label %240

240:                                              ; preds = %233, %239
  %241 = phi i32 [ %234, %233 ], [ %222, %239 ]
  %242 = phi i32 [ %238, %233 ], [ %221, %239 ]
  %243 = add nuw nsw i64 %220, 1
  %244 = icmp eq i64 %243, %178
  br i1 %244, label %245, label %219, !llvm.loop !82

245:                                              ; preds = %240, %173
  %246 = phi i32 [ 0, %173 ], [ %242, %240 ]
  %247 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %247(ptr noundef %98) #10
  br label %248

248:                                              ; preds = %245, %87
  %249 = phi ptr [ %115, %245 ], [ null, %87 ]
  %250 = phi ptr [ %113, %245 ], [ null, %87 ]
  %251 = phi ptr [ %109, %245 ], [ null, %87 ]
  %252 = phi ptr [ %103, %245 ], [ null, %87 ]
  %253 = phi i32 [ %246, %245 ], [ 0, %87 ]
  %254 = phi i32 [ %174, %245 ], [ 0, %87 ]
  %255 = phi i32 [ %175, %245 ], [ 0, %87 ]
  %256 = load i32, ptr %46, align 8, !tbaa !57
  %257 = and i32 %256, 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %453, label %259

259:                                              ; preds = %248
  %260 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %261 = mul nuw nsw i64 %43, 12
  %262 = call ptr %260(i64 noundef %261, ptr noundef nonnull @.str.3) #10
  %263 = load ptr, ptr %11, align 8, !tbaa !34
  %264 = call i32 %263(ptr noundef %2) #10
  %265 = load ptr, ptr %14, align 8, !tbaa !42
  %266 = call i32 %265(ptr noundef %2) #10
  %267 = load ptr, ptr %17, align 8, !tbaa !43
  %268 = call i32 %267(ptr noundef %2) #10
  %269 = load ptr, ptr %79, align 8, !tbaa !65
  %270 = call ptr %269(ptr noundef %2) #10
  %271 = load ptr, ptr %73, align 8, !tbaa !63
  %272 = call ptr %271(ptr noundef %2) #10
  %273 = load ptr, ptr %70, align 8, !tbaa !62
  %274 = call ptr %273(ptr noundef %2) #10
  %275 = load ptr, ptr %76, align 8, !tbaa !64
  %276 = call ptr %275(ptr noundef %2) #10
  %277 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %278 = sext i32 %266 to i64
  %279 = shl nsw i64 %278, 3
  %280 = call ptr %277(i64 noundef %279, ptr noundef nonnull @.str.8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %281 = icmp sgt i32 %268, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %334, %259
  %283 = icmp sgt i32 %266, 0
  br i1 %283, label %284, label %404

284:                                              ; preds = %282
  %285 = getelementptr inbounds float, ptr %5, i64 1
  %286 = getelementptr inbounds float, ptr %5, i64 2
  %287 = getelementptr inbounds float, ptr %5, i64 1
  %288 = getelementptr inbounds float, ptr %5, i64 2
  br label %338

289:                                              ; preds = %259, %334
  %290 = phi i32 [ %335, %334 ], [ 0, %259 ]
  %291 = phi ptr [ %336, %334 ], [ %270, %259 ]
  %292 = getelementptr inbounds %struct.MPoly, ptr %291, i64 0, i32 1
  %293 = load i32, ptr %292, align 4, !tbaa !67
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %334

295:                                              ; preds = %289
  %296 = load i32, ptr %291, align 4, !tbaa !69
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.MLoop, ptr %276, i64 %297
  br label %299

299:                                              ; preds = %295, %330
  %300 = phi i32 [ %331, %330 ], [ 0, %295 ]
  %301 = phi ptr [ %332, %330 ], [ %298, %295 ]
  %302 = getelementptr inbounds %struct.MLoop, ptr %301, i64 0, i32 1
  %303 = load i32, ptr %302, align 4, !tbaa !70
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.EdgeFaceRef, ptr %280, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !83
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %299
  %309 = getelementptr inbounds %struct.EdgeFaceRef, ptr %280, i64 %304, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !85
  %311 = icmp ne i32 %310, 0
  %312 = zext i1 %311 to i8
  br label %313

313:                                              ; preds = %308, %299
  %314 = phi i8 [ 1, %299 ], [ %312, %308 ]
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  store i32 %290, ptr %305, align 4, !tbaa !83
  %317 = getelementptr inbounds %struct.EdgeFaceRef, ptr %280, i64 %304, i32 1
  store i32 -1, ptr %317, align 4, !tbaa !85
  br label %330

318:                                              ; preds = %313
  %319 = icmp eq i32 %306, -1
  br i1 %319, label %325, label %320

320:                                              ; preds = %318
  %321 = getelementptr inbounds %struct.EdgeFaceRef, ptr %280, i64 %304, i32 1
  %322 = load i32, ptr %321, align 4, !tbaa !85
  %323 = icmp eq i32 %322, -1
  br i1 %323, label %324, label %325

324:                                              ; preds = %320
  store i32 %290, ptr %321, align 4, !tbaa !85
  br label %330

325:                                              ; preds = %320, %318
  %326 = getelementptr inbounds %struct.EdgeFaceRef, ptr %280, i64 %304, i32 1
  store i32 -1, ptr %326, align 4, !tbaa !85
  store i32 -1, ptr %305, align 4, !tbaa !83
  %327 = getelementptr inbounds %struct.MEdge, ptr %272, i64 %304, i32 4
  %328 = load i16, ptr %327, align 2, !tbaa !86
  %329 = or i16 %328, 256
  store i16 %329, ptr %327, align 2, !tbaa !86
  br label %330

330:                                              ; preds = %325, %324, %316
  %331 = add nuw nsw i32 %300, 1
  %332 = getelementptr inbounds %struct.MLoop, ptr %301, i64 1
  %333 = icmp eq i32 %331, %293
  br i1 %333, label %334, label %299, !llvm.loop !87

334:                                              ; preds = %330, %289
  %335 = add nuw nsw i32 %290, 1
  %336 = getelementptr inbounds %struct.MPoly, ptr %291, i64 1
  %337 = icmp eq i32 %335, %268
  br i1 %337, label %282, label %289, !llvm.loop !88

338:                                              ; preds = %284, %399
  %339 = phi ptr [ %280, %284 ], [ %402, %399 ]
  %340 = phi i32 [ 0, %284 ], [ %400, %399 ]
  %341 = phi ptr [ %272, %284 ], [ %401, %399 ]
  %342 = load i32, ptr %339, align 4, !tbaa !83
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.EdgeFaceRef, ptr %339, i64 0, i32 1
  %346 = load i32, ptr %345, align 4, !tbaa !85
  %347 = icmp ne i32 %346, 0
  %348 = zext i1 %347 to i8
  br label %349

349:                                              ; preds = %344, %338
  %350 = phi i8 [ 1, %338 ], [ %348, %344 ]
  %351 = icmp eq i8 %350, 0
  %352 = icmp eq i32 %342, -1
  %353 = or i1 %352, %351
  br i1 %353, label %399, label %354

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.EdgeFaceRef, ptr %339, i64 0, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !85
  %357 = icmp eq i32 %356, -1
  %358 = sext i32 %342 to i64
  %359 = getelementptr inbounds [3 x float], ptr %88, i64 %358
  br i1 %357, label %363, label %360

360:                                              ; preds = %354
  %361 = sext i32 %356 to i64
  %362 = getelementptr inbounds [3 x float], ptr %88, i64 %361
  call void @mid_v3_v3v3_angle_weighted(ptr noundef nonnull %5, ptr noundef %359, ptr noundef %362) #10
  br label %369

363:                                              ; preds = %354
  %364 = load float, ptr %359, align 4, !tbaa !89
  store float %364, ptr %5, align 4, !tbaa !89
  %365 = getelementptr inbounds float, ptr %359, i64 1
  %366 = load float, ptr %365, align 4, !tbaa !89
  store float %366, ptr %285, align 4, !tbaa !89
  %367 = getelementptr inbounds float, ptr %359, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !89
  store float %368, ptr %286, align 4, !tbaa !89
  br label %369

369:                                              ; preds = %363, %360
  %370 = load i32, ptr %341, align 4, !tbaa !73
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [3 x float], ptr %262, i64 %371
  %373 = load float, ptr %5, align 4, !tbaa !89
  %374 = load float, ptr %372, align 4, !tbaa !89
  %375 = fadd float %373, %374
  store float %375, ptr %372, align 4, !tbaa !89
  %376 = load float, ptr %287, align 4, !tbaa !89
  %377 = getelementptr inbounds float, ptr %372, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !89
  %379 = fadd float %376, %378
  store float %379, ptr %377, align 4, !tbaa !89
  %380 = load float, ptr %288, align 4, !tbaa !89
  %381 = getelementptr inbounds float, ptr %372, i64 2
  %382 = load float, ptr %381, align 4, !tbaa !89
  %383 = fadd float %380, %382
  store float %383, ptr %381, align 4, !tbaa !89
  %384 = getelementptr inbounds %struct.MEdge, ptr %341, i64 0, i32 1
  %385 = load i32, ptr %384, align 4, !tbaa !75
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [3 x float], ptr %262, i64 %386
  %388 = load float, ptr %5, align 4, !tbaa !89
  %389 = load float, ptr %387, align 4, !tbaa !89
  %390 = fadd float %388, %389
  store float %390, ptr %387, align 4, !tbaa !89
  %391 = load float, ptr %287, align 4, !tbaa !89
  %392 = getelementptr inbounds float, ptr %387, i64 1
  %393 = load float, ptr %392, align 4, !tbaa !89
  %394 = fadd float %391, %393
  store float %394, ptr %392, align 4, !tbaa !89
  %395 = load float, ptr %288, align 4, !tbaa !89
  %396 = getelementptr inbounds float, ptr %387, i64 2
  %397 = load float, ptr %396, align 4, !tbaa !89
  %398 = fadd float %395, %397
  store float %398, ptr %396, align 4, !tbaa !89
  br label %399

399:                                              ; preds = %369, %349
  %400 = add nuw nsw i32 %340, 1
  %401 = getelementptr inbounds %struct.MEdge, ptr %341, i64 1
  %402 = getelementptr inbounds %struct.EdgeFaceRef, ptr %339, i64 1
  %403 = icmp eq i32 %400, %266
  br i1 %403, label %404, label %338, !llvm.loop !90

404:                                              ; preds = %399, %282
  %405 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %405(ptr noundef %280) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %406 = icmp sgt i32 %264, 0
  br i1 %406, label %407, label %453

407:                                              ; preds = %404
  %408 = zext nneg i32 %264 to i64
  br label %409

409:                                              ; preds = %407, %449
  %410 = phi i64 [ 0, %407 ], [ %450, %449 ]
  %411 = phi ptr [ %274, %407 ], [ %451, %449 ]
  %412 = getelementptr inbounds [3 x float], ptr %262, i64 %410
  %413 = load float, ptr %412, align 4, !tbaa !89
  %414 = getelementptr inbounds float, ptr %412, i64 1
  %415 = load float, ptr %414, align 4, !tbaa !89
  %416 = fmul float %415, %415
  %417 = call float @llvm.fmuladd.f32(float %413, float %413, float %416)
  %418 = getelementptr inbounds float, ptr %412, i64 2
  %419 = load float, ptr %418, align 4, !tbaa !89
  %420 = call float @llvm.fmuladd.f32(float %419, float %419, float %417)
  %421 = fcmp ogt float %420, 0x38AA95A5C0000000
  br i1 %421, label %422, label %431

422:                                              ; preds = %409
  %423 = call float @sqrtf(float noundef %420) #10
  %424 = fdiv float 1.000000e+00, %423
  %425 = load float, ptr %412, align 4, !tbaa !89
  %426 = fmul float %425, %424
  store float %426, ptr %412, align 4, !tbaa !89
  %427 = load float, ptr %414, align 4, !tbaa !89
  %428 = fmul float %424, %427
  store float %428, ptr %414, align 4, !tbaa !89
  %429 = load float, ptr %418, align 4, !tbaa !89
  %430 = fmul float %424, %429
  br label %432

431:                                              ; preds = %409
  store float 0.000000e+00, ptr %412, align 4, !tbaa !89
  store float 0.000000e+00, ptr %414, align 4, !tbaa !89
  br label %432

432:                                              ; preds = %431, %422
  %433 = phi float [ 0.000000e+00, %431 ], [ %430, %422 ]
  %434 = phi float [ 0.000000e+00, %431 ], [ %423, %422 ]
  store float %433, ptr %418, align 4, !tbaa !89
  %435 = fcmp oeq float %434, 0.000000e+00
  br i1 %435, label %436, label %449

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.MVert, ptr %411, i64 0, i32 1
  %438 = load i16, ptr %437, align 2, !tbaa !91
  %439 = sitofp i16 %438 to float
  %440 = fmul float %439, 0x3F00002000000000
  store float %440, ptr %412, align 4, !tbaa !89
  %441 = getelementptr inbounds %struct.MVert, ptr %411, i64 0, i32 1, i64 1
  %442 = load i16, ptr %441, align 2, !tbaa !91
  %443 = sitofp i16 %442 to float
  %444 = fmul float %443, 0x3F00002000000000
  store float %444, ptr %414, align 4, !tbaa !89
  %445 = getelementptr inbounds %struct.MVert, ptr %411, i64 0, i32 1, i64 2
  %446 = load i16, ptr %445, align 2, !tbaa !91
  %447 = sitofp i16 %446 to float
  %448 = fmul float %447, 0x3F00002000000000
  store float %448, ptr %418, align 4, !tbaa !89
  br label %449

449:                                              ; preds = %436, %432
  %450 = add nuw nsw i64 %410, 1
  %451 = getelementptr inbounds %struct.MVert, ptr %411, i64 1
  %452 = icmp eq i64 %450, %408
  br i1 %452, label %453, label %409, !llvm.loop !92

453:                                              ; preds = %449, %404, %248
  %454 = phi ptr [ null, %248 ], [ %262, %404 ], [ %262, %449 ]
  %455 = select i1 %66, i32 0, i32 %253
  %456 = zext i1 %66 to i32
  %457 = shl i32 %13, %456
  %458 = add i32 %455, %457
  %459 = shl i32 %16, %456
  %460 = add i32 %253, %459
  %461 = add i32 %460, %455
  %462 = shl i32 %22, %456
  %463 = add i32 %255, %462
  %464 = shl i32 %19, %456
  %465 = add i32 %254, %464
  %466 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %458, i32 noundef %461, i32 noundef 0, i32 noundef %463, i32 noundef %465) #10
  %467 = call ptr @CDDM_get_polys(ptr noundef %466) #10
  %468 = call ptr @CDDM_get_loops(ptr noundef %466) #10
  %469 = call ptr @CDDM_get_edges(ptr noundef %466) #10
  %470 = call ptr @CDDM_get_verts(ptr noundef %466) #10
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef 0, i32 noundef %13) #10
  br i1 %66, label %471, label %472

471:                                              ; preds = %453
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef %13, i32 noundef %13) #10
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef 0, i32 noundef %16) #10
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef %16, i32 noundef %16) #10
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef 0, i32 noundef %22) #10
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef %22, i32 noundef %22) #10
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef 0, i32 noundef %19) #10
  br label %522

472:                                              ; preds = %453
  %473 = icmp eq i32 %13, 0
  br i1 %473, label %489, label %474

474:                                              ; preds = %472
  %475 = zext i32 %13 to i64
  br label %476

476:                                              ; preds = %474, %485
  %477 = phi i64 [ 0, %474 ], [ %487, %485 ]
  %478 = phi i32 [ %13, %474 ], [ %486, %485 ]
  %479 = getelementptr inbounds i32, ptr %45, i64 %477
  %480 = load i32, ptr %479, align 4, !tbaa !66
  %481 = icmp eq i32 %480, -1
  br i1 %481, label %485, label %482

482:                                              ; preds = %476
  %483 = trunc i64 %477 to i32
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %466, i32 noundef %483, i32 noundef %478, i32 noundef 1) #10
  %484 = add nsw i32 %478, 1
  br label %485

485:                                              ; preds = %476, %482
  %486 = phi i32 [ %484, %482 ], [ %478, %476 ]
  %487 = add nuw nsw i64 %477, 1
  %488 = icmp eq i64 %487, %475
  br i1 %488, label %489, label %476, !llvm.loop !93

489:                                              ; preds = %485, %472
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef 0, i32 noundef %16) #10
  %490 = icmp eq i32 %16, 0
  br i1 %490, label %521, label %491

491:                                              ; preds = %489
  %492 = zext i32 %16 to i64
  br label %493

493:                                              ; preds = %491, %517
  %494 = phi i64 [ 0, %491 ], [ %519, %517 ]
  %495 = phi i32 [ %16, %491 ], [ %518, %517 ]
  %496 = getelementptr inbounds i32, ptr %250, i64 %494
  %497 = load i32, ptr %496, align 4, !tbaa !66
  %498 = icmp ugt i32 %497, -3
  br i1 %498, label %517, label %499

499:                                              ; preds = %493
  %500 = trunc i64 %494 to i32
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %466, i32 noundef %500, i32 noundef %495, i32 noundef 1) #10
  %501 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %494
  %502 = sext i32 %495 to i64
  %503 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %502
  %504 = load i32, ptr %501, align 4, !tbaa !73
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds i32, ptr %45, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !66
  %508 = add i32 %507, %13
  store i32 %508, ptr %503, align 4, !tbaa !73
  %509 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %494, i32 1
  %510 = load i32, ptr %509, align 4, !tbaa !75
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds i32, ptr %45, i64 %511
  %513 = load i32, ptr %512, align 4, !tbaa !66
  %514 = add i32 %513, %13
  %515 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %502, i32 1
  store i32 %514, ptr %515, align 4, !tbaa !75
  %516 = add nsw i32 %495, 1
  br label %517

517:                                              ; preds = %493, %499
  %518 = phi i32 [ %516, %499 ], [ %495, %493 ]
  %519 = add nuw nsw i64 %494, 1
  %520 = icmp eq i64 %519, %492
  br i1 %520, label %521, label %493, !llvm.loop !94

521:                                              ; preds = %517, %489
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef 0, i32 noundef %22) #10
  br label %522

522:                                              ; preds = %521, %471
  %523 = phi i32 [ 0, %521 ], [ %19, %471 ]
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %466, i32 noundef 0, i32 noundef %523, i32 noundef %19) #10
  br i1 %66, label %524, label %626

524:                                              ; preds = %522
  %525 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 9
  %526 = load i32, ptr %525, align 8, !tbaa !95
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %610, label %528

528:                                              ; preds = %524
  %529 = zext i32 %19 to i64
  %530 = getelementptr inbounds %struct.MPoly, ptr %467, i64 %529
  %531 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 8
  %532 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %533 = getelementptr inbounds %struct.DerivedMesh, ptr %466, i64 0, i32 3
  %534 = icmp eq i16 %36, 0
  br label %535

535:                                              ; preds = %528, %605
  %536 = phi ptr [ %530, %528 ], [ %607, %605 ]
  %537 = phi i32 [ 0, %528 ], [ %606, %605 ]
  %538 = load i32, ptr %536, align 4, !tbaa !69
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.MLoop, ptr %468, i64 %539
  %541 = load i32, ptr %531, align 4, !tbaa !96
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.MLoop, ptr %540, i64 %542
  %544 = getelementptr inbounds %struct.MPoly, ptr %536, i64 0, i32 1
  %545 = load i32, ptr %544, align 4, !tbaa !67
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %560

547:                                              ; preds = %535, %547
  %548 = phi i32 [ %558, %547 ], [ %545, %535 ]
  %549 = phi i32 [ %557, %547 ], [ 0, %535 ]
  %550 = load i32, ptr %536, align 4, !tbaa !69
  %551 = add nsw i32 %550, %549
  %552 = xor i32 %549, -1
  %553 = add i32 %548, %552
  %554 = add nsw i32 %553, %550
  %555 = load i32, ptr %531, align 4, !tbaa !96
  %556 = add nsw i32 %554, %555
  call void @CustomData_copy_data(ptr noundef nonnull %532, ptr noundef nonnull %533, i32 noundef %551, i32 noundef %556, i32 noundef 1) #10
  %557 = add nuw nsw i32 %549, 1
  %558 = load i32, ptr %544, align 4, !tbaa !67
  %559 = icmp slt i32 %557, %558
  br i1 %559, label %547, label %560, !llvm.loop !97

560:                                              ; preds = %547, %535
  %561 = phi i32 [ %545, %535 ], [ %558, %547 ]
  br i1 %534, label %572, label %562

562:                                              ; preds = %560
  %563 = getelementptr inbounds %struct.MPoly, ptr %536, i64 0, i32 2
  %564 = load i16, ptr %563, align 4, !tbaa !98
  %565 = add i16 %564, %36
  store i16 %565, ptr %563, align 4, !tbaa !98
  %566 = icmp slt i16 %565, 0
  br i1 %566, label %570, label %567

567:                                              ; preds = %562
  %568 = zext nneg i16 %565 to i32
  %569 = icmp slt i32 %30, %568
  br i1 %569, label %570, label %572

570:                                              ; preds = %567, %562
  %571 = phi i16 [ 0, %562 ], [ %28, %567 ]
  store i16 %571, ptr %563, align 4, !tbaa !98
  br label %572

572:                                              ; preds = %570, %567, %560
  %573 = getelementptr inbounds %struct.MLoop, ptr %540, i64 %542, i32 1
  %574 = load i32, ptr %573, align 4, !tbaa !70
  %575 = add i32 %561, -1
  %576 = icmp sgt i32 %561, 1
  br i1 %576, label %577, label %586

577:                                              ; preds = %572
  %578 = zext i32 %575 to i64
  br label %579

579:                                              ; preds = %577, %579
  %580 = phi i64 [ 0, %577 ], [ %581, %579 ]
  %581 = add nuw nsw i64 %580, 1
  %582 = getelementptr inbounds %struct.MLoop, ptr %543, i64 %581, i32 1
  %583 = load i32, ptr %582, align 4, !tbaa !70
  %584 = getelementptr inbounds %struct.MLoop, ptr %543, i64 %580, i32 1
  store i32 %583, ptr %584, align 4, !tbaa !70
  %585 = icmp eq i64 %581, %578
  br i1 %585, label %586, label %579, !llvm.loop !99

586:                                              ; preds = %579, %572
  %587 = sext i32 %575 to i64
  %588 = getelementptr inbounds %struct.MLoop, ptr %543, i64 %587, i32 1
  store i32 %574, ptr %588, align 4, !tbaa !70
  %589 = load i32, ptr %531, align 4, !tbaa !96
  %590 = load i32, ptr %536, align 4, !tbaa !69
  %591 = add nsw i32 %590, %589
  store i32 %591, ptr %536, align 4, !tbaa !69
  %592 = icmp sgt i32 %561, 0
  br i1 %592, label %593, label %605

593:                                              ; preds = %586
  %594 = zext nneg i32 %561 to i64
  br label %595

595:                                              ; preds = %593, %595
  %596 = phi i64 [ 0, %593 ], [ %603, %595 ]
  %597 = getelementptr inbounds %struct.MLoop, ptr %543, i64 %596
  %598 = getelementptr inbounds %struct.MLoop, ptr %543, i64 %596, i32 1
  %599 = load i32, ptr %598, align 4, !tbaa !70
  %600 = add i32 %599, %16
  store i32 %600, ptr %598, align 4, !tbaa !70
  %601 = load i32, ptr %597, align 4, !tbaa !72
  %602 = add i32 %601, %13
  store i32 %602, ptr %597, align 4, !tbaa !72
  %603 = add nuw nsw i64 %596, 1
  %604 = icmp eq i64 %603, %594
  br i1 %604, label %605, label %595, !llvm.loop !100

605:                                              ; preds = %595, %586
  %606 = add nuw i32 %537, 1
  %607 = getelementptr inbounds %struct.MPoly, ptr %536, i64 1
  %608 = load i32, ptr %525, align 8, !tbaa !95
  %609 = icmp ult i32 %606, %608
  br i1 %609, label %535, label %610, !llvm.loop !101

610:                                              ; preds = %605, %524
  %611 = icmp eq i32 %16, 0
  br i1 %611, label %626, label %612

612:                                              ; preds = %610
  %613 = zext i32 %16 to i64
  %614 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %613
  br label %615

615:                                              ; preds = %612, %615
  %616 = phi ptr [ %624, %615 ], [ %614, %612 ]
  %617 = phi i32 [ %623, %615 ], [ 0, %612 ]
  %618 = load i32, ptr %616, align 4, !tbaa !73
  %619 = add i32 %618, %13
  store i32 %619, ptr %616, align 4, !tbaa !73
  %620 = getelementptr inbounds %struct.MEdge, ptr %616, i64 0, i32 1
  %621 = load i32, ptr %620, align 4, !tbaa !75
  %622 = add i32 %621, %13
  store i32 %622, ptr %620, align 4, !tbaa !75
  %623 = add nuw i32 %617, 1
  %624 = getelementptr inbounds %struct.MEdge, ptr %616, i64 1
  %625 = icmp eq i32 %623, %16
  br i1 %625, label %626, label %615, !llvm.loop !102

626:                                              ; preds = %615, %610, %522
  %627 = load i32, ptr %46, align 8, !tbaa !57
  %628 = and i32 %627, 2
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %824

630:                                              ; preds = %626
  %631 = load float, ptr %53, align 8, !tbaa !59
  %632 = call float @llvm.fabs.f32(float %631)
  %633 = load float, ptr %62, align 4, !tbaa !61
  %634 = fmul float %632, %633
  %635 = fmul float %634, %634
  br i1 %64, label %636, label %678

636:                                              ; preds = %630
  %637 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %638 = call ptr %637(i64 noundef %44, ptr noundef nonnull @.str.4) #10
  call void @fill_vn_fl(ptr noundef %638, i32 noundef %13, float noundef 0x47EFFFFFE0000000) #10
  %639 = icmp eq i32 %16, 0
  br i1 %639, label %678, label %640

640:                                              ; preds = %636
  %641 = zext i32 %16 to i64
  br label %642

642:                                              ; preds = %640, %642
  %643 = phi i64 [ 0, %640 ], [ %676, %642 ]
  %644 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %643
  %645 = load i32, ptr %644, align 4, !tbaa !73
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds %struct.MVert, ptr %470, i64 %646
  %648 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %643, i32 1
  %649 = load i32, ptr %648, align 4, !tbaa !75
  %650 = zext i32 %649 to i64
  %651 = getelementptr inbounds %struct.MVert, ptr %470, i64 %650
  %652 = load float, ptr %651, align 4, !tbaa !89
  %653 = load float, ptr %647, align 4, !tbaa !89
  %654 = fsub float %652, %653
  %655 = getelementptr inbounds float, ptr %651, i64 1
  %656 = load float, ptr %655, align 4, !tbaa !89
  %657 = getelementptr inbounds float, ptr %647, i64 1
  %658 = load float, ptr %657, align 4, !tbaa !89
  %659 = fsub float %656, %658
  %660 = getelementptr inbounds float, ptr %651, i64 2
  %661 = load float, ptr %660, align 4, !tbaa !89
  %662 = getelementptr inbounds float, ptr %647, i64 2
  %663 = load float, ptr %662, align 4, !tbaa !89
  %664 = fsub float %661, %663
  %665 = fmul float %659, %659
  %666 = call float @llvm.fmuladd.f32(float %654, float %654, float %665)
  %667 = call float @llvm.fmuladd.f32(float %664, float %664, float %666)
  %668 = getelementptr inbounds float, ptr %638, i64 %646
  %669 = load float, ptr %668, align 4, !tbaa !89
  %670 = fcmp olt float %669, %667
  %671 = select i1 %670, float %669, float %667
  store float %671, ptr %668, align 4, !tbaa !89
  %672 = getelementptr inbounds float, ptr %638, i64 %650
  %673 = load float, ptr %672, align 4, !tbaa !89
  %674 = fcmp olt float %673, %667
  %675 = select i1 %674, float %673, float %667
  store float %675, ptr %672, align 4, !tbaa !89
  %676 = add nuw nsw i64 %643, 1
  %677 = icmp eq i64 %676, %641
  br i1 %677, label %678, label %642, !llvm.loop !103

678:                                              ; preds = %642, %636, %630
  %679 = phi ptr [ null, %630 ], [ %638, %636 ], [ %638, %642 ]
  %680 = fcmp une float %57, 0.000000e+00
  br i1 %680, label %681, label %751

681:                                              ; preds = %678
  %682 = fdiv float %57, 3.276700e+04
  %683 = fcmp oge float %57, %56
  %684 = and i8 %61, 32
  %685 = icmp ne i8 %684, 0
  %686 = xor i1 %685, %683
  %687 = select i1 %686, i1 true, i1 %66
  %688 = select i1 %687, i32 %13, i32 %253
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %751, label %690

690:                                              ; preds = %681
  %691 = select i1 %686, i64 0, i64 %43
  %692 = getelementptr inbounds %struct.MVert, ptr %470, i64 %691
  %693 = zext i32 %688 to i64
  br label %694

694:                                              ; preds = %690, %729
  %695 = phi i64 [ 0, %690 ], [ %748, %729 ]
  %696 = phi ptr [ %692, %690 ], [ %749, %729 ]
  %697 = phi float [ %682, %690 ], [ %730, %729 ]
  %698 = trunc i64 %695 to i32
  br i1 %687, label %702, label %699

699:                                              ; preds = %694
  %700 = getelementptr inbounds i32, ptr %252, i64 %695
  %701 = load i32, ptr %700, align 4, !tbaa !66
  br label %702

702:                                              ; preds = %694, %699
  %703 = phi i32 [ %701, %699 ], [ %698, %694 ]
  %704 = load ptr, ptr %6, align 8, !tbaa !56
  %705 = icmp eq ptr %704, null
  br i1 %705, label %715, label %706

706:                                              ; preds = %702
  %707 = zext i32 %703 to i64
  %708 = getelementptr inbounds %struct.MDeformVert, ptr %704, i64 %707
  %709 = load i32, ptr %7, align 4, !tbaa !66
  %710 = call float @defvert_find_weight(ptr noundef nonnull %708, i32 noundef %709) #10
  %711 = fsub float 1.000000e+00, %710
  %712 = select i1 %68, float %710, float %711
  %713 = call float @llvm.fmuladd.f32(float %712, float %60, float %59)
  %714 = fmul float %682, %713
  br label %715

715:                                              ; preds = %706, %702
  %716 = phi float [ %714, %706 ], [ %697, %702 ]
  br i1 %64, label %717, label %729

717:                                              ; preds = %715
  %718 = load ptr, ptr %6, align 8, !tbaa !56
  %719 = icmp eq ptr %718, null
  %720 = select i1 %719, float %682, float %716
  %721 = zext i32 %703 to i64
  %722 = getelementptr inbounds float, ptr %679, i64 %721
  %723 = load float, ptr %722, align 4, !tbaa !89
  %724 = fcmp olt float %723, %635
  br i1 %724, label %725, label %729

725:                                              ; preds = %717
  %726 = call float @sqrtf(float noundef %723) #10
  %727 = fdiv float %726, %634
  %728 = fmul float %720, %727
  br label %729

729:                                              ; preds = %717, %725, %715
  %730 = phi float [ %728, %725 ], [ %720, %717 ], [ %716, %715 ]
  %731 = getelementptr inbounds %struct.MVert, ptr %696, i64 0, i32 1
  %732 = load i16, ptr %731, align 2, !tbaa !91
  %733 = sitofp i16 %732 to float
  %734 = load float, ptr %696, align 4, !tbaa !89
  %735 = call float @llvm.fmuladd.f32(float %733, float %730, float %734)
  store float %735, ptr %696, align 4, !tbaa !89
  %736 = getelementptr inbounds %struct.MVert, ptr %696, i64 0, i32 1, i64 1
  %737 = load i16, ptr %736, align 2, !tbaa !91
  %738 = sitofp i16 %737 to float
  %739 = getelementptr inbounds float, ptr %696, i64 1
  %740 = load float, ptr %739, align 4, !tbaa !89
  %741 = call float @llvm.fmuladd.f32(float %738, float %730, float %740)
  store float %741, ptr %739, align 4, !tbaa !89
  %742 = getelementptr inbounds %struct.MVert, ptr %696, i64 0, i32 1, i64 2
  %743 = load i16, ptr %742, align 2, !tbaa !91
  %744 = sitofp i16 %743 to float
  %745 = getelementptr inbounds float, ptr %696, i64 2
  %746 = load float, ptr %745, align 4, !tbaa !89
  %747 = call float @llvm.fmuladd.f32(float %744, float %730, float %746)
  store float %747, ptr %745, align 4, !tbaa !89
  %748 = add nuw nsw i64 %695, 1
  %749 = getelementptr inbounds %struct.MVert, ptr %696, i64 1
  %750 = icmp eq i64 %748, %693
  br i1 %750, label %751, label %694, !llvm.loop !104

751:                                              ; preds = %729, %681, %678
  %752 = fcmp une float %56, 0.000000e+00
  br i1 %752, label %753, label %823

753:                                              ; preds = %751
  %754 = fdiv float %56, 3.276700e+04
  %755 = fcmp oge float %57, %56
  %756 = and i32 %47, 32
  %757 = icmp eq i32 %756, 0
  %758 = xor i1 %757, %755
  %759 = select i1 %758, i1 true, i1 %66
  %760 = select i1 %759, i32 %13, i32 %253
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %823, label %762

762:                                              ; preds = %753
  %763 = select i1 %758, i64 0, i64 %43
  %764 = getelementptr inbounds %struct.MVert, ptr %470, i64 %763
  %765 = zext i32 %760 to i64
  br label %766

766:                                              ; preds = %762, %801
  %767 = phi i64 [ 0, %762 ], [ %820, %801 ]
  %768 = phi ptr [ %764, %762 ], [ %821, %801 ]
  %769 = phi float [ %754, %762 ], [ %802, %801 ]
  %770 = trunc i64 %767 to i32
  br i1 %759, label %774, label %771

771:                                              ; preds = %766
  %772 = getelementptr inbounds i32, ptr %252, i64 %767
  %773 = load i32, ptr %772, align 4, !tbaa !66
  br label %774

774:                                              ; preds = %766, %771
  %775 = phi i32 [ %773, %771 ], [ %770, %766 ]
  %776 = load ptr, ptr %6, align 8, !tbaa !56
  %777 = icmp eq ptr %776, null
  br i1 %777, label %787, label %778

778:                                              ; preds = %774
  %779 = zext i32 %775 to i64
  %780 = getelementptr inbounds %struct.MDeformVert, ptr %776, i64 %779
  %781 = load i32, ptr %7, align 4, !tbaa !66
  %782 = call float @defvert_find_weight(ptr noundef nonnull %780, i32 noundef %781) #10
  %783 = fsub float 1.000000e+00, %782
  %784 = select i1 %68, float %782, float %783
  %785 = call float @llvm.fmuladd.f32(float %784, float %60, float %59)
  %786 = fmul float %754, %785
  br label %787

787:                                              ; preds = %778, %774
  %788 = phi float [ %786, %778 ], [ %769, %774 ]
  br i1 %64, label %789, label %801

789:                                              ; preds = %787
  %790 = load ptr, ptr %6, align 8, !tbaa !56
  %791 = icmp eq ptr %790, null
  %792 = select i1 %791, float %754, float %788
  %793 = zext i32 %775 to i64
  %794 = getelementptr inbounds float, ptr %679, i64 %793
  %795 = load float, ptr %794, align 4, !tbaa !89
  %796 = fcmp olt float %795, %635
  br i1 %796, label %797, label %801

797:                                              ; preds = %789
  %798 = call float @sqrtf(float noundef %795) #10
  %799 = fdiv float %798, %634
  %800 = fmul float %792, %799
  br label %801

801:                                              ; preds = %789, %797, %787
  %802 = phi float [ %800, %797 ], [ %792, %789 ], [ %788, %787 ]
  %803 = getelementptr inbounds %struct.MVert, ptr %768, i64 0, i32 1
  %804 = load i16, ptr %803, align 2, !tbaa !91
  %805 = sitofp i16 %804 to float
  %806 = load float, ptr %768, align 4, !tbaa !89
  %807 = call float @llvm.fmuladd.f32(float %805, float %802, float %806)
  store float %807, ptr %768, align 4, !tbaa !89
  %808 = getelementptr inbounds %struct.MVert, ptr %768, i64 0, i32 1, i64 1
  %809 = load i16, ptr %808, align 2, !tbaa !91
  %810 = sitofp i16 %809 to float
  %811 = getelementptr inbounds float, ptr %768, i64 1
  %812 = load float, ptr %811, align 4, !tbaa !89
  %813 = call float @llvm.fmuladd.f32(float %810, float %802, float %812)
  store float %813, ptr %811, align 4, !tbaa !89
  %814 = getelementptr inbounds %struct.MVert, ptr %768, i64 0, i32 1, i64 2
  %815 = load i16, ptr %814, align 2, !tbaa !91
  %816 = sitofp i16 %815 to float
  %817 = getelementptr inbounds float, ptr %768, i64 2
  %818 = load float, ptr %817, align 4, !tbaa !89
  %819 = call float @llvm.fmuladd.f32(float %816, float %802, float %818)
  store float %819, ptr %817, align 4, !tbaa !89
  %820 = add nuw nsw i64 %767, 1
  %821 = getelementptr inbounds %struct.MVert, ptr %768, i64 1
  %822 = icmp eq i64 %820, %765
  br i1 %822, label %823, label %766, !llvm.loop !105

823:                                              ; preds = %801, %753, %751
  br i1 %64, label %1230, label %1234

824:                                              ; preds = %626
  %825 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %826 = shl nuw nsw i64 %43, 3
  %827 = call ptr %825(i64 noundef %826, ptr noundef nonnull @.str.5) #10
  %828 = getelementptr inbounds float, ptr %827, i64 %43
  %829 = icmp eq ptr %454, null
  br i1 %829, label %830, label %858

830:                                              ; preds = %824
  %831 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %832 = mul nuw nsw i64 %43, 12
  %833 = call ptr %831(i64 noundef %832, ptr noundef nonnull @.str.6) #10
  %834 = icmp eq i32 %13, 0
  br i1 %834, label %858, label %835

835:                                              ; preds = %830
  %836 = zext i32 %13 to i64
  br label %837

837:                                              ; preds = %835, %837
  %838 = phi i64 [ 0, %835 ], [ %855, %837 ]
  %839 = phi ptr [ %470, %835 ], [ %856, %837 ]
  %840 = getelementptr inbounds [3 x float], ptr %833, i64 %838
  %841 = getelementptr inbounds %struct.MVert, ptr %839, i64 0, i32 1
  %842 = load i16, ptr %841, align 2, !tbaa !91
  %843 = sitofp i16 %842 to float
  %844 = fmul float %843, 0x3F00002000000000
  store float %844, ptr %840, align 4, !tbaa !89
  %845 = getelementptr inbounds %struct.MVert, ptr %839, i64 0, i32 1, i64 1
  %846 = load i16, ptr %845, align 2, !tbaa !91
  %847 = sitofp i16 %846 to float
  %848 = fmul float %847, 0x3F00002000000000
  %849 = getelementptr inbounds float, ptr %840, i64 1
  store float %848, ptr %849, align 4, !tbaa !89
  %850 = getelementptr inbounds %struct.MVert, ptr %839, i64 0, i32 1, i64 2
  %851 = load i16, ptr %850, align 2, !tbaa !91
  %852 = sitofp i16 %851 to float
  %853 = fmul float %852, 0x3F00002000000000
  %854 = getelementptr inbounds float, ptr %840, i64 2
  store float %853, ptr %854, align 4, !tbaa !89
  %855 = add nuw nsw i64 %838, 1
  %856 = getelementptr inbounds %struct.MVert, ptr %839, i64 1
  %857 = icmp eq i64 %855, %836
  br i1 %857, label %858, label %837, !llvm.loop !106

858:                                              ; preds = %837, %830, %824
  %859 = phi ptr [ %454, %824 ], [ %833, %830 ], [ %833, %837 ]
  %860 = icmp eq i32 %19, 0
  br i1 %860, label %1026, label %861

861:                                              ; preds = %858
  %862 = getelementptr inbounds float, ptr %8, i64 1
  %863 = getelementptr inbounds float, ptr %8, i64 2
  %864 = getelementptr inbounds float, ptr %9, i64 1
  %865 = getelementptr inbounds float, ptr %9, i64 2
  %866 = and i32 %627, 4
  %867 = icmp eq i32 %866, 0
  %868 = zext i32 %19 to i64
  br label %869

869:                                              ; preds = %861, %1022
  %870 = phi i64 [ 0, %861 ], [ %1023, %1022 ]
  %871 = phi ptr [ %467, %861 ], [ %1024, %1022 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %872 = getelementptr inbounds %struct.MPoly, ptr %871, i64 0, i32 1
  %873 = load i32, ptr %872, align 4, !tbaa !67
  %874 = add nsw i32 %873, -1
  %875 = load i32, ptr %871, align 4, !tbaa !69
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds %struct.MLoop, ptr %468, i64 %876
  %878 = sext i32 %873 to i64
  %879 = getelementptr %struct.MLoop, ptr %877, i64 %878
  %880 = getelementptr %struct.MLoop, ptr %879, i64 -2
  %881 = load i32, ptr %880, align 4, !tbaa !72
  %882 = zext i32 %881 to i64
  %883 = getelementptr inbounds %struct.MVert, ptr %470, i64 %882
  %884 = sext i32 %874 to i64
  %885 = getelementptr inbounds %struct.MLoop, ptr %877, i64 %884
  %886 = load i32, ptr %885, align 4, !tbaa !72
  %887 = zext i32 %886 to i64
  %888 = getelementptr inbounds %struct.MVert, ptr %470, i64 %887
  %889 = load float, ptr %883, align 4, !tbaa !89
  %890 = load float, ptr %888, align 4, !tbaa !89
  %891 = fsub float %889, %890
  store float %891, ptr %8, align 4, !tbaa !89
  %892 = getelementptr inbounds float, ptr %883, i64 1
  %893 = load float, ptr %892, align 4, !tbaa !89
  %894 = getelementptr inbounds float, ptr %888, i64 1
  %895 = load float, ptr %894, align 4, !tbaa !89
  %896 = fsub float %893, %895
  store float %896, ptr %862, align 4, !tbaa !89
  %897 = getelementptr inbounds float, ptr %883, i64 2
  %898 = load float, ptr %897, align 4, !tbaa !89
  %899 = getelementptr inbounds float, ptr %888, i64 2
  %900 = load float, ptr %899, align 4, !tbaa !89
  %901 = fsub float %898, %900
  store float %901, ptr %863, align 4, !tbaa !89
  %902 = fmul float %896, %896
  %903 = call float @llvm.fmuladd.f32(float %891, float %891, float %902)
  %904 = call float @llvm.fmuladd.f32(float %901, float %901, float %903)
  %905 = fcmp ogt float %904, 0x38AA95A5C0000000
  br i1 %905, label %906, label %915

906:                                              ; preds = %869
  %907 = call float @sqrtf(float noundef %904) #10
  %908 = fdiv float 1.000000e+00, %907
  %909 = load float, ptr %8, align 4, !tbaa !89
  %910 = fmul float %909, %908
  store float %910, ptr %8, align 4, !tbaa !89
  %911 = load float, ptr %862, align 4, !tbaa !89
  %912 = fmul float %908, %911
  store float %912, ptr %862, align 4, !tbaa !89
  %913 = load float, ptr %863, align 4, !tbaa !89
  %914 = fmul float %908, %913
  br label %916

915:                                              ; preds = %869
  store float 0.000000e+00, ptr %8, align 4, !tbaa !89
  store float 0.000000e+00, ptr %862, align 4, !tbaa !89
  br label %916

916:                                              ; preds = %906, %915
  %917 = phi float [ 0.000000e+00, %915 ], [ %914, %906 ]
  store float %917, ptr %863, align 4, !tbaa !89
  %918 = load i32, ptr %872, align 4, !tbaa !67
  %919 = icmp sgt i32 %918, 0
  br i1 %919, label %920, label %1022

920:                                              ; preds = %916
  %921 = getelementptr inbounds [3 x float], ptr %88, i64 %870
  %922 = getelementptr inbounds float, ptr %921, i64 1
  %923 = getelementptr inbounds float, ptr %921, i64 2
  br label %924

924:                                              ; preds = %920, %1013
  %925 = phi i64 [ 0, %920 ], [ %1017, %1013 ]
  %926 = phi i32 [ %874, %920 ], [ %1021, %1013 ]
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds %struct.MLoop, ptr %877, i64 %927
  %929 = load i32, ptr %928, align 4, !tbaa !72
  %930 = zext i32 %929 to i64
  %931 = getelementptr inbounds %struct.MVert, ptr %470, i64 %930
  %932 = getelementptr inbounds %struct.MLoop, ptr %877, i64 %925
  %933 = load i32, ptr %932, align 4, !tbaa !72
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds %struct.MVert, ptr %470, i64 %934
  %936 = load float, ptr %931, align 4, !tbaa !89
  %937 = load float, ptr %935, align 4, !tbaa !89
  %938 = fsub float %936, %937
  store float %938, ptr %9, align 4, !tbaa !89
  %939 = getelementptr inbounds float, ptr %931, i64 1
  %940 = load float, ptr %939, align 4, !tbaa !89
  %941 = getelementptr inbounds float, ptr %935, i64 1
  %942 = load float, ptr %941, align 4, !tbaa !89
  %943 = fsub float %940, %942
  store float %943, ptr %864, align 4, !tbaa !89
  %944 = getelementptr inbounds float, ptr %931, i64 2
  %945 = load float, ptr %944, align 4, !tbaa !89
  %946 = getelementptr inbounds float, ptr %935, i64 2
  %947 = load float, ptr %946, align 4, !tbaa !89
  %948 = fsub float %945, %947
  store float %948, ptr %865, align 4, !tbaa !89
  %949 = fmul float %943, %943
  %950 = call float @llvm.fmuladd.f32(float %938, float %938, float %949)
  %951 = call float @llvm.fmuladd.f32(float %948, float %948, float %950)
  %952 = fcmp ogt float %951, 0x38AA95A5C0000000
  br i1 %952, label %953, label %962

953:                                              ; preds = %924
  %954 = call float @sqrtf(float noundef %951) #10
  %955 = fdiv float 1.000000e+00, %954
  %956 = load float, ptr %9, align 4, !tbaa !89
  %957 = fmul float %956, %955
  store float %957, ptr %9, align 4, !tbaa !89
  %958 = load float, ptr %864, align 4, !tbaa !89
  %959 = fmul float %955, %958
  store float %959, ptr %864, align 4, !tbaa !89
  %960 = load float, ptr %865, align 4, !tbaa !89
  %961 = fmul float %955, %960
  br label %963

962:                                              ; preds = %924
  store float 0.000000e+00, ptr %9, align 4, !tbaa !89
  store float 0.000000e+00, ptr %864, align 4, !tbaa !89
  br label %963

963:                                              ; preds = %953, %962
  %964 = phi float [ 0.000000e+00, %962 ], [ %961, %953 ]
  store float %964, ptr %865, align 4, !tbaa !89
  %965 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %966 = fcmp olt float %965, 0x3E80000000000000
  %967 = select i1 %966, float 0x3E80000000000000, float %965
  %968 = load i32, ptr %928, align 4, !tbaa !72
  %969 = zext i32 %968 to i64
  %970 = getelementptr inbounds float, ptr %828, i64 %969
  %971 = load float, ptr %970, align 4, !tbaa !89
  %972 = fadd float %971, %967
  store float %972, ptr %970, align 4, !tbaa !89
  br i1 %867, label %989, label %973

973:                                              ; preds = %963
  %974 = getelementptr inbounds %struct.MLoop, ptr %877, i64 %927, i32 1
  %975 = load i32, ptr %974, align 4, !tbaa !70
  %976 = zext i32 %975 to i64
  %977 = getelementptr inbounds %struct.MEdge, ptr %75, i64 %976, i32 4
  %978 = load i16, ptr %977, align 2, !tbaa !86
  %979 = and i16 %978, 256
  %980 = icmp eq i16 %979, 0
  br i1 %980, label %981, label %1009

981:                                              ; preds = %973
  %982 = getelementptr inbounds %struct.MLoop, ptr %877, i64 %925, i32 1
  %983 = load i32, ptr %982, align 4, !tbaa !70
  %984 = zext i32 %983 to i64
  %985 = getelementptr inbounds %struct.MEdge, ptr %75, i64 %984, i32 4
  %986 = load i16, ptr %985, align 2, !tbaa !86
  %987 = and i16 %986, 256
  %988 = icmp eq i16 %987, 0
  br i1 %988, label %989, label %1009

989:                                              ; preds = %981, %963
  %990 = getelementptr inbounds [3 x float], ptr %859, i64 %969
  %991 = load float, ptr %990, align 4, !tbaa !89
  %992 = load float, ptr %921, align 4, !tbaa !89
  %993 = getelementptr inbounds float, ptr %990, i64 1
  %994 = load float, ptr %993, align 4, !tbaa !89
  %995 = load float, ptr %922, align 4, !tbaa !89
  %996 = fmul float %994, %995
  %997 = call float @llvm.fmuladd.f32(float %991, float %992, float %996)
  %998 = getelementptr inbounds float, ptr %990, i64 2
  %999 = load float, ptr %998, align 4, !tbaa !89
  %1000 = load float, ptr %923, align 4, !tbaa !89
  %1001 = call float @llvm.fmuladd.f32(float %999, float %1000, float %997)
  %1002 = call float @llvm.fabs.f32(float %1001)
  %1003 = fcmp olt float %1002, 0x3E45798EE0000000
  %1004 = fdiv float 1.000000e+00, %1002
  %1005 = select i1 %1003, float 1.000000e+00, float %1004
  %1006 = getelementptr inbounds float, ptr %827, i64 %969
  %1007 = load float, ptr %1006, align 4, !tbaa !89
  %1008 = call float @llvm.fmuladd.f32(float %1005, float %967, float %1007)
  store float %1008, ptr %1006, align 4, !tbaa !89
  br label %1013

1009:                                             ; preds = %981, %973
  %1010 = getelementptr inbounds float, ptr %827, i64 %969
  %1011 = load float, ptr %1010, align 4, !tbaa !89
  %1012 = fadd float %967, %1011
  store float %1012, ptr %1010, align 4, !tbaa !89
  br label %1013

1013:                                             ; preds = %1009, %989
  %1014 = load float, ptr %9, align 4, !tbaa !89
  store float %1014, ptr %8, align 4, !tbaa !89
  %1015 = load float, ptr %864, align 4, !tbaa !89
  store float %1015, ptr %862, align 4, !tbaa !89
  %1016 = load float, ptr %865, align 4, !tbaa !89
  store float %1016, ptr %863, align 4, !tbaa !89
  %1017 = add nuw nsw i64 %925, 1
  %1018 = load i32, ptr %872, align 4, !tbaa !67
  %1019 = sext i32 %1018 to i64
  %1020 = icmp slt i64 %1017, %1019
  %1021 = trunc i64 %925 to i32
  br i1 %1020, label %924, label %1022, !llvm.loop !107

1022:                                             ; preds = %1013, %916
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %1023 = add nuw nsw i64 %870, 1
  %1024 = getelementptr inbounds %struct.MPoly, ptr %871, i64 1
  %1025 = icmp eq i64 %1023, %868
  br i1 %1025, label %1026, label %869, !llvm.loop !108

1026:                                             ; preds = %1022, %858
  %1027 = load ptr, ptr %6, align 8, !tbaa !56
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1062, label %1029

1029:                                             ; preds = %1026
  %1030 = icmp eq i32 %13, 0
  br i1 %68, label %1034, label %1031

1031:                                             ; preds = %1029
  br i1 %1030, label %1062, label %1032

1032:                                             ; preds = %1031
  %1033 = zext i32 %13 to i64
  br label %1037

1034:                                             ; preds = %1029
  br i1 %1030, label %1062, label %1035

1035:                                             ; preds = %1034
  %1036 = zext i32 %13 to i64
  br label %1050

1037:                                             ; preds = %1032, %1037
  %1038 = phi i64 [ 0, %1032 ], [ %1047, %1037 ]
  %1039 = phi ptr [ %1027, %1032 ], [ %1048, %1037 ]
  %1040 = load i32, ptr %7, align 4, !tbaa !66
  %1041 = call float @defvert_find_weight(ptr noundef nonnull %1039, i32 noundef %1040) #10
  %1042 = fsub float 1.000000e+00, %1041
  %1043 = call float @llvm.fmuladd.f32(float %1042, float %60, float %59)
  %1044 = getelementptr inbounds float, ptr %827, i64 %1038
  %1045 = load float, ptr %1044, align 4, !tbaa !89
  %1046 = fmul float %1045, %1043
  store float %1046, ptr %1044, align 4, !tbaa !89
  %1047 = add nuw nsw i64 %1038, 1
  %1048 = getelementptr inbounds %struct.MDeformVert, ptr %1039, i64 1
  %1049 = icmp eq i64 %1047, %1033
  br i1 %1049, label %1062, label %1037, !llvm.loop !109

1050:                                             ; preds = %1035, %1050
  %1051 = phi i64 [ 0, %1035 ], [ %1059, %1050 ]
  %1052 = phi ptr [ %1027, %1035 ], [ %1060, %1050 ]
  %1053 = load i32, ptr %7, align 4, !tbaa !66
  %1054 = call float @defvert_find_weight(ptr noundef nonnull %1052, i32 noundef %1053) #10
  %1055 = call float @llvm.fmuladd.f32(float %1054, float %60, float %59)
  %1056 = getelementptr inbounds float, ptr %827, i64 %1051
  %1057 = load float, ptr %1056, align 4, !tbaa !89
  %1058 = fmul float %1057, %1055
  store float %1058, ptr %1056, align 4, !tbaa !89
  %1059 = add nuw nsw i64 %1051, 1
  %1060 = getelementptr inbounds %struct.MDeformVert, ptr %1052, i64 1
  %1061 = icmp eq i64 %1059, %1036
  br i1 %1061, label %1062, label %1050, !llvm.loop !110

1062:                                             ; preds = %1037, %1050, %1031, %1034, %1026
  br i1 %64, label %1063, label %1130

1063:                                             ; preds = %1062
  %1064 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %1065 = call ptr %1064(i64 noundef %44, ptr noundef nonnull @.str.4) #10
  %1066 = load float, ptr %53, align 8, !tbaa !59
  %1067 = call float @llvm.fabs.f32(float %1066)
  %1068 = load float, ptr %62, align 4, !tbaa !61
  %1069 = fmul float %1067, %1068
  %1070 = fmul float %1069, %1069
  call void @fill_vn_fl(ptr noundef %1065, i32 noundef %13, float noundef 0x47EFFFFFE0000000) #10
  %1071 = icmp eq i32 %16, 0
  br i1 %1071, label %1074, label %1072

1072:                                             ; preds = %1063
  %1073 = zext i32 %16 to i64
  br label %1078

1074:                                             ; preds = %1078, %1063
  %1075 = icmp eq i32 %13, 0
  br i1 %1075, label %1128, label %1076

1076:                                             ; preds = %1074
  %1077 = zext i32 %13 to i64
  br label %1114

1078:                                             ; preds = %1072, %1078
  %1079 = phi i64 [ 0, %1072 ], [ %1112, %1078 ]
  %1080 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1079
  %1081 = load i32, ptr %1080, align 4, !tbaa !73
  %1082 = zext i32 %1081 to i64
  %1083 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1082
  %1084 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1079, i32 1
  %1085 = load i32, ptr %1084, align 4, !tbaa !75
  %1086 = zext i32 %1085 to i64
  %1087 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1086
  %1088 = load float, ptr %1087, align 4, !tbaa !89
  %1089 = load float, ptr %1083, align 4, !tbaa !89
  %1090 = fsub float %1088, %1089
  %1091 = getelementptr inbounds float, ptr %1087, i64 1
  %1092 = load float, ptr %1091, align 4, !tbaa !89
  %1093 = getelementptr inbounds float, ptr %1083, i64 1
  %1094 = load float, ptr %1093, align 4, !tbaa !89
  %1095 = fsub float %1092, %1094
  %1096 = getelementptr inbounds float, ptr %1087, i64 2
  %1097 = load float, ptr %1096, align 4, !tbaa !89
  %1098 = getelementptr inbounds float, ptr %1083, i64 2
  %1099 = load float, ptr %1098, align 4, !tbaa !89
  %1100 = fsub float %1097, %1099
  %1101 = fmul float %1095, %1095
  %1102 = call float @llvm.fmuladd.f32(float %1090, float %1090, float %1101)
  %1103 = call float @llvm.fmuladd.f32(float %1100, float %1100, float %1102)
  %1104 = getelementptr inbounds float, ptr %1065, i64 %1082
  %1105 = load float, ptr %1104, align 4, !tbaa !89
  %1106 = fcmp olt float %1105, %1103
  %1107 = select i1 %1106, float %1105, float %1103
  store float %1107, ptr %1104, align 4, !tbaa !89
  %1108 = getelementptr inbounds float, ptr %1065, i64 %1086
  %1109 = load float, ptr %1108, align 4, !tbaa !89
  %1110 = fcmp olt float %1109, %1103
  %1111 = select i1 %1110, float %1109, float %1103
  store float %1111, ptr %1108, align 4, !tbaa !89
  %1112 = add nuw nsw i64 %1079, 1
  %1113 = icmp eq i64 %1112, %1073
  br i1 %1113, label %1074, label %1078, !llvm.loop !111

1114:                                             ; preds = %1076, %1125
  %1115 = phi i64 [ 0, %1076 ], [ %1126, %1125 ]
  %1116 = getelementptr inbounds float, ptr %1065, i64 %1115
  %1117 = load float, ptr %1116, align 4, !tbaa !89
  %1118 = fcmp olt float %1117, %1070
  br i1 %1118, label %1119, label %1125

1119:                                             ; preds = %1114
  %1120 = call float @sqrtf(float noundef %1117) #10
  %1121 = fdiv float %1120, %1069
  %1122 = getelementptr inbounds float, ptr %827, i64 %1115
  %1123 = load float, ptr %1122, align 4, !tbaa !89
  %1124 = fmul float %1123, %1121
  store float %1124, ptr %1122, align 4, !tbaa !89
  br label %1125

1125:                                             ; preds = %1114, %1119
  %1126 = add nuw nsw i64 %1115, 1
  %1127 = icmp eq i64 %1126, %1077
  br i1 %1127, label %1128, label %1114, !llvm.loop !112

1128:                                             ; preds = %1125, %1074
  %1129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1129(ptr noundef %1065) #10
  br label %1130

1130:                                             ; preds = %1128, %1062
  %1131 = fcmp une float %57, 0.000000e+00
  br i1 %1131, label %1132, label %1180

1132:                                             ; preds = %1130
  %1133 = fcmp oge float %57, %56
  %1134 = and i8 %61, 32
  %1135 = icmp ne i8 %1134, 0
  %1136 = xor i1 %1135, %1133
  %1137 = select i1 %1136, i1 true, i1 %66
  %1138 = select i1 %1137, i32 %13, i32 %253
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1180, label %1140

1140:                                             ; preds = %1132
  %1141 = select i1 %1136, i64 0, i64 %43
  %1142 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1141
  %1143 = zext i32 %1138 to i64
  br label %1144

1144:                                             ; preds = %1140, %1176
  %1145 = phi i64 [ 0, %1140 ], [ %1177, %1176 ]
  %1146 = phi ptr [ %1142, %1140 ], [ %1178, %1176 ]
  %1147 = trunc i64 %1145 to i32
  br i1 %1137, label %1151, label %1148

1148:                                             ; preds = %1144
  %1149 = getelementptr inbounds i32, ptr %252, i64 %1145
  %1150 = load i32, ptr %1149, align 4, !tbaa !66
  br label %1151

1151:                                             ; preds = %1144, %1148
  %1152 = phi i32 [ %1150, %1148 ], [ %1147, %1144 ]
  %1153 = zext i32 %1152 to i64
  %1154 = getelementptr inbounds float, ptr %828, i64 %1153
  %1155 = load float, ptr %1154, align 4, !tbaa !89
  %1156 = fcmp une float %1155, 0.000000e+00
  br i1 %1156, label %1157, label %1176

1157:                                             ; preds = %1151
  %1158 = getelementptr inbounds [3 x float], ptr %859, i64 %1153
  %1159 = getelementptr inbounds float, ptr %827, i64 %1153
  %1160 = load float, ptr %1159, align 4, !tbaa !89
  %1161 = fdiv float %1160, %1155
  %1162 = fmul float %57, %1161
  %1163 = load float, ptr %1158, align 4, !tbaa !89
  %1164 = load float, ptr %1146, align 4, !tbaa !89
  %1165 = call float @llvm.fmuladd.f32(float %1163, float %1162, float %1164)
  store float %1165, ptr %1146, align 4, !tbaa !89
  %1166 = getelementptr inbounds float, ptr %1158, i64 1
  %1167 = load float, ptr %1166, align 4, !tbaa !89
  %1168 = getelementptr inbounds float, ptr %1146, i64 1
  %1169 = load float, ptr %1168, align 4, !tbaa !89
  %1170 = call float @llvm.fmuladd.f32(float %1167, float %1162, float %1169)
  store float %1170, ptr %1168, align 4, !tbaa !89
  %1171 = getelementptr inbounds float, ptr %1158, i64 2
  %1172 = load float, ptr %1171, align 4, !tbaa !89
  %1173 = getelementptr inbounds float, ptr %1146, i64 2
  %1174 = load float, ptr %1173, align 4, !tbaa !89
  %1175 = call float @llvm.fmuladd.f32(float %1172, float %1162, float %1174)
  store float %1175, ptr %1173, align 4, !tbaa !89
  br label %1176

1176:                                             ; preds = %1157, %1151
  %1177 = add nuw nsw i64 %1145, 1
  %1178 = getelementptr inbounds %struct.MVert, ptr %1146, i64 1
  %1179 = icmp eq i64 %1177, %1143
  br i1 %1179, label %1180, label %1144, !llvm.loop !113

1180:                                             ; preds = %1176, %1132, %1130
  %1181 = fcmp une float %56, 0.000000e+00
  br i1 %1181, label %1182, label %1230

1182:                                             ; preds = %1180
  %1183 = fcmp oge float %57, %56
  %1184 = and i8 %61, 32
  %1185 = icmp eq i8 %1184, 0
  %1186 = xor i1 %1185, %1183
  %1187 = select i1 %1186, i1 true, i1 %66
  %1188 = select i1 %1187, i32 %13, i32 %253
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1230, label %1190

1190:                                             ; preds = %1182
  %1191 = select i1 %1186, i64 0, i64 %43
  %1192 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1191
  %1193 = zext i32 %1188 to i64
  br label %1194

1194:                                             ; preds = %1190, %1226
  %1195 = phi i64 [ 0, %1190 ], [ %1227, %1226 ]
  %1196 = phi ptr [ %1192, %1190 ], [ %1228, %1226 ]
  %1197 = trunc i64 %1195 to i32
  br i1 %1187, label %1201, label %1198

1198:                                             ; preds = %1194
  %1199 = getelementptr inbounds i32, ptr %252, i64 %1195
  %1200 = load i32, ptr %1199, align 4, !tbaa !66
  br label %1201

1201:                                             ; preds = %1194, %1198
  %1202 = phi i32 [ %1200, %1198 ], [ %1197, %1194 ]
  %1203 = zext i32 %1202 to i64
  %1204 = getelementptr inbounds float, ptr %828, i64 %1203
  %1205 = load float, ptr %1204, align 4, !tbaa !89
  %1206 = fcmp une float %1205, 0.000000e+00
  br i1 %1206, label %1207, label %1226

1207:                                             ; preds = %1201
  %1208 = getelementptr inbounds [3 x float], ptr %859, i64 %1203
  %1209 = getelementptr inbounds float, ptr %827, i64 %1203
  %1210 = load float, ptr %1209, align 4, !tbaa !89
  %1211 = fdiv float %1210, %1205
  %1212 = fmul float %56, %1211
  %1213 = load float, ptr %1208, align 4, !tbaa !89
  %1214 = load float, ptr %1196, align 4, !tbaa !89
  %1215 = call float @llvm.fmuladd.f32(float %1213, float %1212, float %1214)
  store float %1215, ptr %1196, align 4, !tbaa !89
  %1216 = getelementptr inbounds float, ptr %1208, i64 1
  %1217 = load float, ptr %1216, align 4, !tbaa !89
  %1218 = getelementptr inbounds float, ptr %1196, i64 1
  %1219 = load float, ptr %1218, align 4, !tbaa !89
  %1220 = call float @llvm.fmuladd.f32(float %1217, float %1212, float %1219)
  store float %1220, ptr %1218, align 4, !tbaa !89
  %1221 = getelementptr inbounds float, ptr %1208, i64 2
  %1222 = load float, ptr %1221, align 4, !tbaa !89
  %1223 = getelementptr inbounds float, ptr %1196, i64 2
  %1224 = load float, ptr %1223, align 4, !tbaa !89
  %1225 = call float @llvm.fmuladd.f32(float %1222, float %1212, float %1224)
  store float %1225, ptr %1223, align 4, !tbaa !89
  br label %1226

1226:                                             ; preds = %1207, %1201
  %1227 = add nuw nsw i64 %1195, 1
  %1228 = getelementptr inbounds %struct.MVert, ptr %1196, i64 1
  %1229 = icmp eq i64 %1227, %1193
  br i1 %1229, label %1230, label %1194, !llvm.loop !114

1230:                                             ; preds = %1226, %1180, %1182, %823
  %1231 = phi ptr [ %679, %823 ], [ %827, %1182 ], [ %827, %1180 ], [ %827, %1226 ]
  %1232 = phi ptr [ %454, %823 ], [ %859, %1182 ], [ %859, %1180 ], [ %859, %1226 ]
  %1233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1233(ptr noundef %1231) #10
  br label %1234

1234:                                             ; preds = %1230, %823
  %1235 = phi ptr [ %454, %823 ], [ %1232, %1230 ]
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1239, label %1237

1237:                                             ; preds = %1234
  %1238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1238(ptr noundef nonnull %1235) #10
  br label %1239

1239:                                             ; preds = %1237, %1234
  %1240 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %1241 = load i32, ptr %1240, align 8, !tbaa !115
  %1242 = and i32 %1241, 4
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1244, label %1251

1244:                                             ; preds = %1239
  %1245 = load i32, ptr %46, align 8, !tbaa !57
  %1246 = and i32 %1245, 1
  %1247 = icmp ne i32 %1246, 0
  %1248 = load ptr, ptr %6, align 8
  %1249 = icmp ne ptr %1248, null
  %1250 = select i1 %1247, i1 true, i1 %1249
  br i1 %1250, label %1251, label %1255

1251:                                             ; preds = %1244, %1239
  %1252 = getelementptr inbounds %struct.DerivedMesh, ptr %466, i64 0, i32 16
  %1253 = load i32, ptr %1252, align 8, !tbaa !115
  %1254 = or i32 %1253, 4
  store i32 %1254, ptr %1252, align 8, !tbaa !115
  br label %1275

1255:                                             ; preds = %1244
  %1256 = icmp ne i32 %13, 0
  %1257 = select i1 %66, i1 %1256, i1 false
  br i1 %1257, label %1258, label %1275

1258:                                             ; preds = %1255
  %1259 = getelementptr inbounds %struct.MVert, ptr %470, i64 %43
  br label %1260

1260:                                             ; preds = %1258, %1260
  %1261 = phi ptr [ %1273, %1260 ], [ %1259, %1258 ]
  %1262 = phi i32 [ %1272, %1260 ], [ 0, %1258 ]
  %1263 = getelementptr inbounds %struct.MVert, ptr %1261, i64 0, i32 1
  %1264 = load i16, ptr %1263, align 2, !tbaa !91
  %1265 = sub i16 0, %1264
  store i16 %1265, ptr %1263, align 2, !tbaa !91
  %1266 = getelementptr inbounds %struct.MVert, ptr %1261, i64 0, i32 1, i64 1
  %1267 = load i16, ptr %1266, align 2, !tbaa !91
  %1268 = sub i16 0, %1267
  store i16 %1268, ptr %1266, align 2, !tbaa !91
  %1269 = getelementptr inbounds %struct.MVert, ptr %1261, i64 0, i32 1, i64 2
  %1270 = load i16, ptr %1269, align 2, !tbaa !91
  %1271 = sub i16 0, %1270
  store i16 %1271, ptr %1269, align 2, !tbaa !91
  %1272 = add nuw i32 %1262, 1
  %1273 = getelementptr inbounds %struct.MVert, ptr %1261, i64 1
  %1274 = icmp eq i32 %1272, %13
  br i1 %1274, label %1275, label %1260, !llvm.loop !116

1275:                                             ; preds = %1260, %1255, %1251
  %1276 = load i32, ptr %46, align 8, !tbaa !57
  %1277 = and i32 %1276, 1
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1640, label %1279

1279:                                             ; preds = %1275
  %1280 = getelementptr inbounds %struct.DerivedMesh, ptr %466, i64 0, i32 16
  %1281 = load i32, ptr %1280, align 8, !tbaa !115
  %1282 = and i32 %1281, 4
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1284, label %1288

1284:                                             ; preds = %1279
  %1285 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %1286 = mul nuw nsw i64 %43, 12
  %1287 = call ptr %1285(i64 noundef %1286, ptr noundef nonnull @__func__.applyModifier) #10
  br label %1288

1288:                                             ; preds = %1279, %1284
  %1289 = phi ptr [ %1287, %1284 ], [ null, %1279 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %1290 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 9
  %1291 = load float, ptr %1290, align 4, !tbaa !117
  %1292 = fmul float %1291, 2.550000e+02
  %1293 = fptoui float %1292 to i8
  %1294 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 8
  %1295 = load float, ptr %1294, align 8, !tbaa !118
  %1296 = fmul float %1295, 2.550000e+02
  %1297 = fptoui float %1296 to i8
  %1298 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 7
  %1299 = load float, ptr %1298, align 4, !tbaa !119
  %1300 = fmul float %1299, 2.550000e+02
  %1301 = fptoui float %1300 to i8
  %1302 = icmp ne i8 %1293, 0
  %1303 = zext i8 %1297 to i32
  %1304 = icmp ne i8 %1297, 0
  %1305 = select i1 %1302, i1 true, i1 %1304
  %1306 = zext i8 %1301 to i32
  %1307 = icmp ne i8 %1301, 0
  %1308 = select i1 %1305, i1 true, i1 %1307
  br i1 %1308, label %1309, label %1313

1309:                                             ; preds = %1288
  %1310 = getelementptr inbounds %struct.DerivedMesh, ptr %466, i64 0, i32 19
  %1311 = load i8, ptr %1310, align 8, !tbaa !120
  %1312 = or i8 %1311, 4
  store i8 %1312, ptr %1310, align 8, !tbaa !120
  br label %1313

1313:                                             ; preds = %1288, %1309
  %1314 = getelementptr inbounds %struct.DerivedMesh, ptr %466, i64 0, i32 51
  %1315 = load ptr, ptr %1314, align 8, !tbaa !121
  %1316 = call ptr %1315(ptr noundef %466, i32 noundef 7) #10
  %1317 = icmp eq i32 %253, 0
  br i1 %1317, label %1348, label %1318

1318:                                             ; preds = %1313
  %1319 = add i32 %455, %459
  %1320 = zext i32 %1319 to i64
  %1321 = getelementptr i32, ptr %1316, i64 %1320
  %1322 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1320
  %1323 = icmp eq i8 %1293, 0
  %1324 = zext i32 %253 to i64
  br label %1325

1325:                                             ; preds = %1318, %1343
  %1326 = phi i64 [ 0, %1318 ], [ %1344, %1343 ]
  %1327 = phi ptr [ %1322, %1318 ], [ %1345, %1343 ]
  %1328 = phi ptr [ %1321, %1318 ], [ %1346, %1343 ]
  %1329 = getelementptr inbounds i32, ptr %252, i64 %1326
  %1330 = load i32, ptr %1329, align 4, !tbaa !66
  store i32 %1330, ptr %1327, align 4, !tbaa !73
  %1331 = trunc i64 %1326 to i32
  br i1 %66, label %1332, label %1334

1332:                                             ; preds = %1325
  %1333 = load i32, ptr %1329, align 4, !tbaa !66
  br label %1334

1334:                                             ; preds = %1325, %1332
  %1335 = phi i32 [ %1333, %1332 ], [ %1331, %1325 ]
  %1336 = add i32 %1335, %13
  %1337 = getelementptr inbounds %struct.MEdge, ptr %1327, i64 0, i32 1
  store i32 %1336, ptr %1337, align 4, !tbaa !75
  %1338 = getelementptr inbounds %struct.MEdge, ptr %1327, i64 0, i32 4
  %1339 = load i16, ptr %1338, align 2, !tbaa !86
  %1340 = or i16 %1339, 2
  store i16 %1340, ptr %1338, align 2, !tbaa !86
  store i32 -1, ptr %1328, align 4, !tbaa !66
  br i1 %1323, label %1343, label %1341

1341:                                             ; preds = %1334
  %1342 = getelementptr inbounds %struct.MEdge, ptr %1327, i64 0, i32 2
  store i8 %1293, ptr %1342, align 4, !tbaa !122
  br label %1343

1343:                                             ; preds = %1334, %1341
  %1344 = add nuw nsw i64 %1326, 1
  %1345 = getelementptr inbounds %struct.MEdge, ptr %1327, i64 1
  %1346 = getelementptr inbounds i32, ptr %1328, i64 1
  %1347 = icmp eq i64 %1344, %1324
  br i1 %1347, label %1348, label %1325, !llvm.loop !123

1348:                                             ; preds = %1343, %1313
  %1349 = zext i32 %462 to i64
  %1350 = getelementptr inbounds %struct.MLoop, ptr %468, i64 %1349
  %1351 = icmp eq i32 %254, 0
  br i1 %1351, label %1547, label %1352

1352:                                             ; preds = %1348
  %1353 = zext i32 %464 to i64
  %1354 = getelementptr inbounds %struct.MPoly, ptr %467, i64 %1353
  %1355 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %1356 = getelementptr inbounds %struct.DerivedMesh, ptr %466, i64 0, i32 3
  %1357 = icmp eq i16 %41, 0
  %1358 = icmp eq i8 %1297, 0
  %1359 = icmp eq i8 %1301, 0
  %1360 = getelementptr inbounds float, ptr %10, i64 1
  %1361 = getelementptr inbounds float, ptr %10, i64 2
  %1362 = zext i32 %254 to i64
  %1363 = add i32 %455, %459
  %1364 = add i32 %455, %459
  br label %1365

1365:                                             ; preds = %1352, %1543
  %1366 = phi i64 [ 0, %1352 ], [ %1544, %1543 ]
  %1367 = phi ptr [ %1354, %1352 ], [ %1545, %1543 ]
  %1368 = phi i32 [ 0, %1352 ], [ %1449, %1543 ]
  %1369 = getelementptr inbounds i32, ptr %251, i64 %1366
  %1370 = load i32, ptr %1369, align 4, !tbaa !66
  %1371 = zext i32 %1370 to i64
  %1372 = getelementptr inbounds i32, ptr %250, i64 %1371
  %1373 = load i32, ptr %1372, align 4, !tbaa !66
  %1374 = icmp ult i32 %1373, %19
  %1375 = select i1 %1374, i32 0, i32 %19
  %1376 = sub i32 %1373, %1375
  %1377 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1371
  %1378 = trunc i64 %1366 to i32
  %1379 = add i32 %464, %1378
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %466, i32 noundef %1376, i32 noundef %1379, i32 noundef 1) #10
  %1380 = add i32 %1368, %462
  store i32 %1380, ptr %1367, align 4, !tbaa !69
  %1381 = zext i32 %1376 to i64
  %1382 = getelementptr inbounds %struct.MPoly, ptr %467, i64 %1381
  %1383 = getelementptr inbounds %struct.MPoly, ptr %467, i64 %1381, i32 3
  %1384 = load i8, ptr %1383, align 2, !tbaa !124
  %1385 = getelementptr inbounds %struct.MPoly, ptr %1367, i64 0, i32 3
  store i8 %1384, ptr %1385, align 2, !tbaa !124
  %1386 = load i32, ptr %1382, align 4, !tbaa !69
  %1387 = getelementptr inbounds i8, ptr %249, i64 %1371
  %1388 = load i8, ptr %1387, align 1, !tbaa !76
  %1389 = zext i8 %1388 to i32
  %1390 = add nsw i32 %1389, -1
  %1391 = getelementptr inbounds %struct.MPoly, ptr %1367, i64 0, i32 1
  %1392 = load i32, ptr %1391, align 4, !tbaa !67
  %1393 = add nsw i32 %1390, %1392
  %1394 = srem i32 %1393, %1392
  %1395 = add nsw i32 %1394, %1386
  %1396 = add nsw i32 %1386, %1389
  store i32 4, ptr %1391, align 4, !tbaa !67
  call void @CustomData_copy_data(ptr noundef nonnull %1355, ptr noundef nonnull %1356, i32 noundef %1396, i32 noundef %1380, i32 noundef 1) #10
  %1397 = add i32 %1380, 1
  call void @CustomData_copy_data(ptr noundef nonnull %1355, ptr noundef nonnull %1356, i32 noundef %1395, i32 noundef %1397, i32 noundef 1) #10
  %1398 = add i32 %1380, 2
  call void @CustomData_copy_data(ptr noundef nonnull %1355, ptr noundef nonnull %1356, i32 noundef %1395, i32 noundef %1398, i32 noundef 1) #10
  %1399 = add i32 %1380, 3
  call void @CustomData_copy_data(ptr noundef nonnull %1355, ptr noundef nonnull %1356, i32 noundef %1396, i32 noundef %1399, i32 noundef 1) #10
  %1400 = or disjoint i32 %1368, 2
  %1401 = trunc i64 %1366 to i32
  %1402 = select i1 %66, i32 %1370, i32 %1401
  br i1 %1374, label %1403, label %1409

1403:                                             ; preds = %1365
  %1404 = load i32, ptr %1377, align 4, !tbaa !73
  %1405 = zext i32 %1368 to i64
  %1406 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1405
  store i32 %1404, ptr %1406, align 4, !tbaa !72
  %1407 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1405, i32 1
  store i32 %1370, ptr %1407, align 4, !tbaa !70
  %1408 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1371, i32 1
  br label %1415

1409:                                             ; preds = %1365
  %1410 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1371, i32 1
  %1411 = load i32, ptr %1410, align 4, !tbaa !75
  %1412 = zext i32 %1368 to i64
  %1413 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1412
  store i32 %1411, ptr %1413, align 4, !tbaa !72
  %1414 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1412, i32 1
  store i32 %1370, ptr %1414, align 4, !tbaa !70
  br label %1415

1415:                                             ; preds = %1409, %1403
  %1416 = phi ptr [ %1377, %1409 ], [ %1408, %1403 ]
  %1417 = phi i32 [ %1411, %1409 ], [ %1404, %1403 ]
  %1418 = phi ptr [ %1410, %1409 ], [ %1377, %1403 ]
  %1419 = or disjoint i32 %1368, 1
  %1420 = load i32, ptr %1416, align 4, !tbaa !66
  %1421 = zext i32 %1419 to i64
  %1422 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1421
  store i32 %1420, ptr %1422, align 4, !tbaa !72
  %1423 = zext i32 %1420 to i64
  %1424 = getelementptr inbounds i32, ptr %45, i64 %1423
  %1425 = load i32, ptr %1424, align 4, !tbaa !66
  %1426 = add i32 %1364, %1425
  %1427 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1421, i32 1
  store i32 %1426, ptr %1427, align 4, !tbaa !70
  %1428 = load i32, ptr %1416, align 4
  %1429 = load i32, ptr %1424, align 4
  %1430 = select i1 %66, i32 %1428, i32 %1429
  %1431 = add i32 %1430, %13
  %1432 = zext i32 %1400 to i64
  %1433 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1432
  store i32 %1431, ptr %1433, align 4, !tbaa !72
  %1434 = add i32 %1402, %16
  %1435 = or disjoint i32 %1368, 3
  %1436 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1432, i32 1
  store i32 %1434, ptr %1436, align 4, !tbaa !70
  %1437 = zext i32 %1417 to i64
  %1438 = getelementptr inbounds i32, ptr %45, i64 %1437
  %1439 = select i1 %66, ptr %1418, ptr %1438
  %1440 = load i32, ptr %1439, align 4, !tbaa !66
  %1441 = add i32 %1440, %13
  %1442 = zext i32 %1435 to i64
  %1443 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1442
  store i32 %1441, ptr %1443, align 4, !tbaa !72
  %1444 = zext i32 %1417 to i64
  %1445 = getelementptr inbounds i32, ptr %45, i64 %1444
  %1446 = load i32, ptr %1445, align 4, !tbaa !66
  %1447 = add i32 %1363, %1446
  %1448 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1442, i32 1
  store i32 %1447, ptr %1448, align 4, !tbaa !70
  %1449 = add i32 %1368, 4
  %1450 = or disjoint i32 %1368, 1
  %1451 = zext i32 %1450 to i64
  %1452 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1451
  %1453 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1451, i32 1
  %1454 = load i32, ptr %1453, align 4, !tbaa !70
  %1455 = zext i32 %1454 to i64
  %1456 = getelementptr inbounds i32, ptr %1316, i64 %1455
  store i32 -1, ptr %1456, align 4, !tbaa !66
  %1457 = or disjoint i32 %1368, 3
  %1458 = zext i32 %1457 to i64
  %1459 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1458
  %1460 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1458, i32 1
  %1461 = load i32, ptr %1460, align 4, !tbaa !70
  %1462 = zext i32 %1461 to i64
  %1463 = getelementptr inbounds i32, ptr %1316, i64 %1462
  store i32 -1, ptr %1463, align 4, !tbaa !66
  br i1 %1357, label %1474, label %1464

1464:                                             ; preds = %1415
  %1465 = getelementptr inbounds %struct.MPoly, ptr %1367, i64 0, i32 2
  %1466 = load i16, ptr %1465, align 4, !tbaa !98
  %1467 = add i16 %1466, %41
  store i16 %1467, ptr %1465, align 4, !tbaa !98
  %1468 = icmp slt i16 %1467, 0
  br i1 %1468, label %1472, label %1469

1469:                                             ; preds = %1464
  %1470 = zext nneg i16 %1467 to i32
  %1471 = icmp slt i32 %30, %1470
  br i1 %1471, label %1472, label %1474

1472:                                             ; preds = %1469, %1464
  %1473 = phi i16 [ 0, %1464 ], [ %28, %1469 ]
  store i16 %1473, ptr %1465, align 4, !tbaa !98
  br label %1474

1474:                                             ; preds = %1472, %1469, %1415
  br i1 %1358, label %1482, label %1475

1475:                                             ; preds = %1474
  %1476 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1371, i32 2
  %1477 = load i8, ptr %1476, align 1, !tbaa !76
  %1478 = zext i8 %1477 to i32
  %1479 = add nuw nsw i32 %1478, %1303
  %1480 = call i32 @llvm.umin.i32(i32 %1479, i32 255)
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, ptr %1476, align 1, !tbaa !76
  br label %1482

1482:                                             ; preds = %1475, %1474
  br i1 %1359, label %1494, label %1483

1483:                                             ; preds = %1482
  %1484 = trunc i64 %1366 to i32
  %1485 = select i1 %66, i32 %1370, i32 %1484
  %1486 = add i32 %1485, %16
  %1487 = zext i32 %1486 to i64
  %1488 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1487, i32 2
  %1489 = load i8, ptr %1488, align 1, !tbaa !76
  %1490 = zext i8 %1489 to i32
  %1491 = add nuw nsw i32 %1490, %1306
  %1492 = call i32 @llvm.umin.i32(i32 %1491, i32 255)
  %1493 = trunc i32 %1492 to i8
  store i8 %1493, ptr %1488, align 1, !tbaa !76
  br label %1494

1494:                                             ; preds = %1483, %1482
  br i1 %1283, label %1495, label %1543

1495:                                             ; preds = %1494
  %1496 = zext i32 %1368 to i64
  %1497 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1496
  %1498 = load i32, ptr %1497, align 4, !tbaa !72
  %1499 = zext i32 %1498 to i64
  %1500 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1499
  %1501 = load i32, ptr %1452, align 4, !tbaa !72
  %1502 = zext i32 %1501 to i64
  %1503 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1502
  %1504 = or disjoint i32 %1368, 2
  %1505 = zext i32 %1504 to i64
  %1506 = getelementptr inbounds %struct.MLoop, ptr %1350, i64 %1505
  %1507 = load i32, ptr %1506, align 4, !tbaa !72
  %1508 = zext i32 %1507 to i64
  %1509 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1508
  %1510 = load i32, ptr %1459, align 4, !tbaa !72
  %1511 = zext i32 %1510 to i64
  %1512 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1511
  %1513 = call float @normal_quad_v3(ptr noundef nonnull %10, ptr noundef %1500, ptr noundef %1503, ptr noundef %1509, ptr noundef %1512) #10
  %1514 = load i32, ptr %1377, align 4, !tbaa !73
  %1515 = zext i32 %1514 to i64
  %1516 = getelementptr inbounds [3 x float], ptr %1289, i64 %1515
  %1517 = load float, ptr %10, align 4, !tbaa !89
  %1518 = load float, ptr %1516, align 4, !tbaa !89
  %1519 = fadd float %1517, %1518
  store float %1519, ptr %1516, align 4, !tbaa !89
  %1520 = load float, ptr %1360, align 4, !tbaa !89
  %1521 = getelementptr inbounds float, ptr %1516, i64 1
  %1522 = load float, ptr %1521, align 4, !tbaa !89
  %1523 = fadd float %1520, %1522
  store float %1523, ptr %1521, align 4, !tbaa !89
  %1524 = load float, ptr %1361, align 4, !tbaa !89
  %1525 = getelementptr inbounds float, ptr %1516, i64 2
  %1526 = load float, ptr %1525, align 4, !tbaa !89
  %1527 = fadd float %1524, %1526
  store float %1527, ptr %1525, align 4, !tbaa !89
  %1528 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1371, i32 1
  %1529 = load i32, ptr %1528, align 4, !tbaa !75
  %1530 = zext i32 %1529 to i64
  %1531 = getelementptr inbounds [3 x float], ptr %1289, i64 %1530
  %1532 = load float, ptr %10, align 4, !tbaa !89
  %1533 = load float, ptr %1531, align 4, !tbaa !89
  %1534 = fadd float %1532, %1533
  store float %1534, ptr %1531, align 4, !tbaa !89
  %1535 = load float, ptr %1360, align 4, !tbaa !89
  %1536 = getelementptr inbounds float, ptr %1531, i64 1
  %1537 = load float, ptr %1536, align 4, !tbaa !89
  %1538 = fadd float %1535, %1537
  store float %1538, ptr %1536, align 4, !tbaa !89
  %1539 = load float, ptr %1361, align 4, !tbaa !89
  %1540 = getelementptr inbounds float, ptr %1531, i64 2
  %1541 = load float, ptr %1540, align 4, !tbaa !89
  %1542 = fadd float %1539, %1541
  store float %1542, ptr %1540, align 4, !tbaa !89
  br label %1543

1543:                                             ; preds = %1495, %1494
  %1544 = add nuw nsw i64 %1366, 1
  %1545 = getelementptr inbounds %struct.MPoly, ptr %1367, i64 1
  %1546 = icmp eq i64 %1544, %1362
  br i1 %1546, label %1547, label %1365, !llvm.loop !125

1547:                                             ; preds = %1543, %1348
  br i1 %1283, label %1548, label %1635

1548:                                             ; preds = %1547
  %1549 = icmp eq i32 %253, 0
  br i1 %1549, label %1633, label %1550

1550:                                             ; preds = %1548
  %1551 = zext i32 %459 to i64
  %1552 = getelementptr inbounds %struct.MEdge, ptr %469, i64 %1551
  %1553 = getelementptr inbounds float, ptr %10, i64 1
  %1554 = getelementptr inbounds float, ptr %10, i64 2
  br label %1555

1555:                                             ; preds = %1550, %1629
  %1556 = phi ptr [ %1552, %1550 ], [ %1631, %1629 ]
  %1557 = phi i32 [ 0, %1550 ], [ %1630, %1629 ]
  %1558 = load i32, ptr %1556, align 4, !tbaa !73
  %1559 = zext i32 %1558 to i64
  %1560 = getelementptr inbounds [3 x float], ptr %1289, i64 %1559
  %1561 = load float, ptr %1560, align 4, !tbaa !89
  %1562 = getelementptr inbounds float, ptr %1560, i64 1
  %1563 = load float, ptr %1562, align 4, !tbaa !89
  %1564 = fmul float %1563, %1563
  %1565 = call float @llvm.fmuladd.f32(float %1561, float %1561, float %1564)
  %1566 = getelementptr inbounds float, ptr %1560, i64 2
  %1567 = load float, ptr %1566, align 4, !tbaa !89
  %1568 = call float @llvm.fmuladd.f32(float %1567, float %1567, float %1565)
  %1569 = fcmp ogt float %1568, 0x38AA95A5C0000000
  br i1 %1569, label %1570, label %1579

1570:                                             ; preds = %1555
  %1571 = call float @sqrtf(float noundef %1568) #10
  %1572 = fdiv float 1.000000e+00, %1571
  %1573 = load float, ptr %1560, align 4, !tbaa !89
  %1574 = fmul float %1573, %1572
  %1575 = load float, ptr %1562, align 4, !tbaa !89
  %1576 = fmul float %1572, %1575
  %1577 = load float, ptr %1566, align 4, !tbaa !89
  %1578 = fmul float %1572, %1577
  br label %1579

1579:                                             ; preds = %1555, %1570
  %1580 = phi float [ %1578, %1570 ], [ 0.000000e+00, %1555 ]
  %1581 = phi float [ %1576, %1570 ], [ 0.000000e+00, %1555 ]
  %1582 = phi float [ %1574, %1570 ], [ 0.000000e+00, %1555 ]
  br label %1583

1583:                                             ; preds = %1579, %1617
  %1584 = phi i64 [ 0, %1579 ], [ %1627, %1617 ]
  %1585 = getelementptr inbounds i32, ptr %1556, i64 %1584
  %1586 = load i32, ptr %1585, align 4, !tbaa !66
  %1587 = zext i32 %1586 to i64
  %1588 = getelementptr inbounds %struct.MVert, ptr %470, i64 %1587, i32 1
  %1589 = load i16, ptr %1588, align 2, !tbaa !91
  %1590 = sitofp i16 %1589 to float
  %1591 = fmul float %1590, 0x3F00002000000000
  store float %1591, ptr %10, align 4, !tbaa !89
  %1592 = getelementptr inbounds i16, ptr %1588, i64 1
  %1593 = load i16, ptr %1592, align 2, !tbaa !91
  %1594 = sitofp i16 %1593 to float
  %1595 = fmul float %1594, 0x3F00002000000000
  store float %1595, ptr %1553, align 4, !tbaa !89
  %1596 = getelementptr inbounds i16, ptr %1588, i64 2
  %1597 = load i16, ptr %1596, align 2, !tbaa !91
  %1598 = sitofp i16 %1597 to float
  %1599 = fmul float %1598, 0x3F00002000000000
  store float %1599, ptr %1554, align 4, !tbaa !89
  %1600 = fadd float %1582, %1591
  store float %1600, ptr %10, align 4, !tbaa !89
  %1601 = fadd float %1581, %1595
  store float %1601, ptr %1553, align 4, !tbaa !89
  %1602 = fadd float %1580, %1599
  store float %1602, ptr %1554, align 4, !tbaa !89
  %1603 = fmul float %1601, %1601
  %1604 = call float @llvm.fmuladd.f32(float %1600, float %1600, float %1603)
  %1605 = call float @llvm.fmuladd.f32(float %1602, float %1602, float %1604)
  %1606 = fcmp ogt float %1605, 0x38AA95A5C0000000
  br i1 %1606, label %1607, label %1616

1607:                                             ; preds = %1583
  %1608 = call float @sqrtf(float noundef %1605) #10
  %1609 = fdiv float 1.000000e+00, %1608
  %1610 = load float, ptr %10, align 4, !tbaa !89
  %1611 = fmul float %1610, %1609
  store float %1611, ptr %10, align 4, !tbaa !89
  %1612 = load float, ptr %1553, align 4, !tbaa !89
  %1613 = fmul float %1609, %1612
  store float %1613, ptr %1553, align 4, !tbaa !89
  %1614 = load float, ptr %1554, align 4, !tbaa !89
  %1615 = fmul float %1609, %1614
  br label %1617

1616:                                             ; preds = %1583
  store float 0.000000e+00, ptr %10, align 4, !tbaa !89
  store float 0.000000e+00, ptr %1553, align 4, !tbaa !89
  br label %1617

1617:                                             ; preds = %1607, %1616
  %1618 = phi float [ 0.000000e+00, %1616 ], [ %1615, %1607 ]
  store float %1618, ptr %1554, align 4, !tbaa !89
  %1619 = load float, ptr %10, align 4, !tbaa !89
  %1620 = fmul float %1619, 3.276700e+04
  %1621 = fptosi float %1620 to i16
  store i16 %1621, ptr %1588, align 2, !tbaa !91
  %1622 = load float, ptr %1553, align 4, !tbaa !89
  %1623 = fmul float %1622, 3.276700e+04
  %1624 = fptosi float %1623 to i16
  store i16 %1624, ptr %1592, align 2, !tbaa !91
  %1625 = fmul float %1618, 3.276700e+04
  %1626 = fptosi float %1625 to i16
  store i16 %1626, ptr %1596, align 2, !tbaa !91
  %1627 = add nuw nsw i64 %1584, 1
  %1628 = icmp eq i64 %1584, 0
  br i1 %1628, label %1583, label %1629, !llvm.loop !126

1629:                                             ; preds = %1617
  %1630 = add nuw i32 %1557, 1
  %1631 = getelementptr inbounds %struct.MEdge, ptr %1556, i64 1
  %1632 = icmp eq i32 %1630, %253
  br i1 %1632, label %1633, label %1555, !llvm.loop !127

1633:                                             ; preds = %1629, %1548
  %1634 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1634(ptr noundef %1289) #10
  br label %1635

1635:                                             ; preds = %1633, %1547
  %1636 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1636(ptr noundef %252) #10
  %1637 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1637(ptr noundef %251) #10
  %1638 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1638(ptr noundef %250) #10
  %1639 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1639(ptr noundef %249) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  br label %1640

1640:                                             ; preds = %1635, %1275
  %1641 = icmp eq ptr %45, null
  br i1 %1641, label %1644, label %1642

1642:                                             ; preds = %1640
  %1643 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1643(ptr noundef nonnull %45) #10
  br label %1644

1644:                                             ; preds = %1642, %1640
  %1645 = icmp eq ptr %88, null
  br i1 %1645, label %1648, label %1646

1646:                                             ; preds = %1644
  %1647 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1647(ptr noundef nonnull %88) #10
  br label %1648

1648:                                             ; preds = %1646, %1644
  %1649 = icmp eq i32 %19, 0
  %1650 = icmp ne i32 %16, 0
  %1651 = select i1 %1649, i1 %1650, i1 false
  br i1 %1651, label %1652, label %1653

1652:                                             ; preds = %1648
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.7) #10
  br label %1653

1653:                                             ; preds = %1652, %1648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret ptr %466
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 2
  store float 0x3F847AE140000000, ptr %2, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 3
  store float -1.000000e+00, ptr %3, align 4, !tbaa !58
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %0, i64 0, i32 10
  store i32 1, ptr %4, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.SolidifyModifierData, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnNormals(ptr nocapture readnone %0) #3 {
  ret i8 1
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_mesh_calc_normals_poly(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #4

declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #4

declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #4

declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #4

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @mid_v3_v3v3_angle_weighted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !37, i64 1104}
!35 = !{!"DerivedMesh", !36, i64 0, !36, i64 200, !36, i64 400, !36, i64 600, !36, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!36 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !37, i64 1112}
!43 = !{!35, !37, i64 1136}
!44 = !{!35, !37, i64 1128}
!45 = !{!46, !40, i64 456}
!46 = !{!"Object", !47, i64 0, !37, i64 120, !37, i64 128, !48, i64 136, !48, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !49, i64 312, !37, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !38, i64 1042, !38, i64 1043, !48, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !41, i64 1120, !48, i64 1124, !48, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !48, i64 1162, !38, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !48, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !51, i64 1304, !51, i64 1312, !40, i64 1320, !40, i64 1324, !50, i64 1328, !50, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !50, i64 1400, !37, i64 1416}
!47 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !48, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!48 = !{!"short", !38, i64 0}
!49 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!50 = !{!"ListBase", !37, i64 0, !37, i64 8}
!51 = !{!"long", !38, i64 0}
!52 = !{!53, !48, i64 212}
!53 = !{!"SolidifyModifierData", !54, i64 0, !38, i64 112, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !48, i64 212, !48, i64 214}
!54 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!55 = !{!53, !48, i64 214}
!56 = !{!37, !37, i64 0}
!57 = !{!53, !40, i64 208}
!58 = !{!53, !41, i64 180}
!59 = !{!53, !41, i64 176}
!60 = !{!53, !41, i64 184}
!61 = !{!53, !41, i64 188}
!62 = !{!35, !37, i64 1168}
!63 = !{!35, !37, i64 1176}
!64 = !{!35, !37, i64 1192}
!65 = !{!35, !37, i64 1200}
!66 = !{!40, !40, i64 0}
!67 = !{!68, !40, i64 4}
!68 = !{!"MPoly", !40, i64 0, !40, i64 4, !48, i64 8, !38, i64 10, !38, i64 11}
!69 = !{!68, !40, i64 0}
!70 = !{!71, !40, i64 4}
!71 = !{!"MLoop", !40, i64 0, !40, i64 4}
!72 = !{!71, !40, i64 0}
!73 = !{!74, !40, i64 0}
!74 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !48, i64 10}
!75 = !{!74, !40, i64 4}
!76 = !{!38, !38, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !78, !79}
!81 = distinct !{!81, !78, !79}
!82 = distinct !{!82, !78, !79}
!83 = !{!84, !40, i64 0}
!84 = !{!"EdgeFaceRef", !40, i64 0, !40, i64 4}
!85 = !{!84, !40, i64 4}
!86 = !{!74, !48, i64 10}
!87 = distinct !{!87, !78, !79}
!88 = distinct !{!88, !78, !79}
!89 = !{!41, !41, i64 0}
!90 = distinct !{!90, !78, !79}
!91 = !{!48, !48, i64 0}
!92 = distinct !{!92, !78, !79}
!93 = distinct !{!93, !78, !79}
!94 = distinct !{!94, !78, !79}
!95 = !{!35, !40, i64 1016}
!96 = !{!35, !40, i64 1012}
!97 = distinct !{!97, !78, !79}
!98 = !{!68, !48, i64 8}
!99 = distinct !{!99, !78, !79}
!100 = distinct !{!100, !78, !79}
!101 = distinct !{!101, !78, !79}
!102 = distinct !{!102, !78, !79}
!103 = distinct !{!103, !78, !79}
!104 = distinct !{!104, !78, !79}
!105 = distinct !{!105, !78, !79}
!106 = distinct !{!106, !78, !79}
!107 = distinct !{!107, !78, !79}
!108 = distinct !{!108, !78, !79}
!109 = distinct !{!109, !78, !79}
!110 = distinct !{!110, !78, !79}
!111 = distinct !{!111, !78, !79}
!112 = distinct !{!112, !78, !79}
!113 = distinct !{!113, !78, !79}
!114 = distinct !{!114, !78, !79}
!115 = !{!35, !40, i64 1056}
!116 = distinct !{!116, !78, !79}
!117 = !{!53, !41, i64 204}
!118 = !{!53, !41, i64 200}
!119 = !{!53, !41, i64 196}
!120 = !{!35, !38, i64 1072}
!121 = !{!35, !37, i64 1328}
!122 = !{!74, !38, i64 8}
!123 = distinct !{!123, !78, !79}
!124 = !{!68, !38, i64 10}
!125 = distinct !{!125, !78, !79}
!126 = distinct !{!126, !78, !79}
!127 = distinct !{!127, !78, !79}
