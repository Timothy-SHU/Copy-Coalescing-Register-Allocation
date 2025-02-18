; ModuleID = 'blender/source/blender/modifiers/intern/MOD_mask.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MaskModifierData = type { %struct.ModifierData, ptr, [64 x i8], i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@modifierType_Mask = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MaskModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192, i32 3, i32 13, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr null, ptr @requiredDataMask, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"mask array\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mask vert gh\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"mask vert2 bh\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mask ed2 gh\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mask fa2 gh\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"mask loopmap\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Mask Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca %struct.MEdge, align 4
  %6 = alloca %struct.MVert, align 4
  %7 = alloca %struct.MEdge, align 4
  %8 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = tail call ptr %14(ptr noundef %2, i32 noundef 2) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = icmp eq i8 %12, 0
  br i1 %18, label %385, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @CDDM_from_template(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %385

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = tail call i32 %23(ptr noundef %2) #5
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call i32 %26(ptr noundef %2) #5
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = tail call i32 %29(ptr noundef %2) #5
  %31 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %21
  %35 = icmp ne i32 %32, 0
  %36 = icmp eq i32 %24, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %385, label %40

38:                                               ; preds = %21
  %39 = icmp eq i32 %24, 0
  br i1 %39, label %385, label %40

40:                                               ; preds = %34, %38
  %41 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = icmp eq ptr %42, null
  br i1 %43, label %385, label %44

44:                                               ; preds = %40
  br i1 %33, label %45, label %139

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = tail call i32 @BLI_countlist(ptr noundef nonnull %41) #5
  %49 = icmp eq ptr %47, null
  br i1 %49, label %135, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %135, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %41, align 8, !tbaa !58
  %56 = icmp eq ptr %55, null
  br i1 %56, label %135, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %59 = sext i32 %48 to i64
  %60 = tail call ptr %58(i64 noundef %59, ptr noundef nonnull @.str) #5
  %61 = load ptr, ptr %41, align 8, !tbaa !59
  %62 = icmp eq ptr %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %57, %80
  %64 = phi i64 [ %83, %80 ], [ 0, %57 ]
  %65 = phi ptr [ %84, %80 ], [ %61, %57 ]
  %66 = load ptr, ptr %51, align 8, !tbaa !52
  %67 = getelementptr inbounds %struct.bDeformGroup, ptr %65, i64 0, i32 2
  %68 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %66, ptr noundef nonnull %67) #5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 12
  %72 = load ptr, ptr %71, align 8, !tbaa !60
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Bone, ptr %72, i64 0, i32 10
  %76 = load i32, ptr %75, align 8, !tbaa !62
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %70, %63
  br label %80

80:                                               ; preds = %74, %79
  %81 = phi i8 [ 0, %79 ], [ 1, %74 ]
  %82 = getelementptr inbounds i8, ptr %60, i64 %64
  store i8 %81, ptr %82, align 1, !tbaa !64
  %83 = add nuw i64 %64, 1
  %84 = load ptr, ptr %65, align 8, !tbaa !59
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %63, !llvm.loop !65

86:                                               ; preds = %80, %57
  %87 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.1) #5
  %88 = icmp sgt i32 %24, 0
  br i1 %88, label %89, label %132

89:                                               ; preds = %86
  %90 = zext nneg i8 %12 to i32
  %91 = zext nneg i32 %24 to i64
  br label %92

92:                                               ; preds = %89, %127
  %93 = phi i64 [ 0, %89 ], [ %129, %127 ]
  %94 = phi ptr [ %15, %89 ], [ %130, %127 ]
  %95 = phi i32 [ 0, %89 ], [ %128, %127 ]
  %96 = getelementptr inbounds %struct.MDeformVert, ptr %94, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !68
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %92
  %100 = load ptr, ptr %94, align 8, !tbaa !70
  br label %101

101:                                              ; preds = %99, %115
  %102 = phi ptr [ %117, %115 ], [ %100, %99 ]
  %103 = phi i32 [ %116, %115 ], [ 0, %99 ]
  %104 = load i32, ptr %102, align 4, !tbaa !71
  %105 = icmp slt i32 %104, %48
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = sext i32 %104 to i64
  %108 = getelementptr inbounds i8, ptr %60, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !64
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.MDeformWeight, ptr %102, i64 0, i32 1
  %113 = load float, ptr %112, align 4, !tbaa !73
  %114 = fcmp une float %113, 0.000000e+00
  br i1 %114, label %119, label %115

115:                                              ; preds = %101, %111, %106
  %116 = add nuw nsw i32 %103, 1
  %117 = getelementptr inbounds %struct.MDeformWeight, ptr %102, i64 1
  %118 = icmp eq i32 %116, %97
  br i1 %118, label %119, label %101, !llvm.loop !74

119:                                              ; preds = %115, %111, %92
  %120 = phi i32 [ 0, %92 ], [ 0, %115 ], [ 1, %111 ]
  %121 = icmp eq i32 %120, %90
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = inttoptr i64 %93 to ptr
  %124 = sext i32 %95 to i64
  %125 = inttoptr i64 %124 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %87, ptr noundef %123, ptr noundef %125) #5
  %126 = add nsw i32 %95, 1
  br label %127

127:                                              ; preds = %119, %122
  %128 = phi i32 [ %126, %122 ], [ %95, %119 ]
  %129 = add nuw nsw i64 %93, 1
  %130 = getelementptr inbounds %struct.MDeformVert, ptr %94, i64 1
  %131 = icmp eq i64 %129, %91
  br i1 %131, label %132, label %92, !llvm.loop !75

132:                                              ; preds = %127, %86
  %133 = phi i32 [ 0, %86 ], [ %128, %127 ]
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %134(ptr noundef %60) #5
  br label %135

135:                                              ; preds = %45, %50, %54, %132
  %136 = phi i1 [ true, %132 ], [ false, %54 ], [ false, %50 ], [ false, %45 ]
  %137 = phi i32 [ %133, %132 ], [ 0, %54 ], [ 0, %50 ], [ 0, %45 ]
  %138 = phi ptr [ %87, %132 ], [ null, %54 ], [ null, %50 ], [ null, %45 ]
  br i1 %136, label %169, label %385

139:                                              ; preds = %44
  %140 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 2
  %141 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %140) #5
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %166, label %143

143:                                              ; preds = %139
  %144 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.2) #5
  %145 = icmp sgt i32 %24, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %143
  %147 = zext nneg i32 %24 to i64
  br label %148

148:                                              ; preds = %146, %161
  %149 = phi i64 [ 0, %146 ], [ %163, %161 ]
  %150 = phi ptr [ %15, %146 ], [ %164, %161 ]
  %151 = phi i32 [ 0, %146 ], [ %162, %161 ]
  %152 = tail call float @defvert_find_weight(ptr noundef nonnull %150, i32 noundef %141) #5
  %153 = fcmp une float %152, 0.000000e+00
  %154 = zext i1 %153 to i8
  %155 = icmp eq i8 %12, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %148
  %157 = inttoptr i64 %149 to ptr
  %158 = sext i32 %151 to i64
  %159 = inttoptr i64 %158 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %144, ptr noundef %157, ptr noundef %159) #5
  %160 = add nsw i32 %151, 1
  br label %161

161:                                              ; preds = %148, %156
  %162 = phi i32 [ %160, %156 ], [ %151, %148 ]
  %163 = add nuw nsw i64 %149, 1
  %164 = getelementptr inbounds %struct.MDeformVert, ptr %150, i64 1
  %165 = icmp eq i64 %163, %147
  br i1 %165, label %166, label %148, !llvm.loop !76

166:                                              ; preds = %161, %143, %139
  %167 = phi i32 [ 0, %139 ], [ 0, %143 ], [ %162, %161 ]
  %168 = phi ptr [ null, %139 ], [ %144, %143 ], [ %144, %161 ]
  br i1 %142, label %385, label %169

169:                                              ; preds = %166, %135
  %170 = phi i32 [ %137, %135 ], [ %167, %166 ]
  %171 = phi ptr [ %138, %135 ], [ %168, %166 ]
  %172 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.3) #5
  %173 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.4) #5
  %174 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %175 = load ptr, ptr %174, align 8, !tbaa !77
  %176 = tail call ptr %175(ptr noundef %2) #5
  %177 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %178 = load ptr, ptr %177, align 8, !tbaa !78
  %179 = tail call ptr %178(ptr noundef %2) #5
  %180 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %181 = sext i32 %30 to i64
  %182 = shl nsw i64 %181, 2
  %183 = tail call ptr %180(i64 noundef %182, ptr noundef nonnull @.str.5) #5
  %184 = icmp sgt i32 %27, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %169
  %186 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 29
  %187 = getelementptr inbounds %struct.MEdge, ptr %5, i64 0, i32 1
  %188 = zext nneg i32 %27 to i64
  br label %194

189:                                              ; preds = %215, %169
  %190 = phi i32 [ 0, %169 ], [ %216, %215 ]
  %191 = icmp sgt i32 %30, 0
  br i1 %191, label %192, label %257

192:                                              ; preds = %189
  %193 = zext nneg i32 %30 to i64
  br label %219

194:                                              ; preds = %185, %215
  %195 = phi i64 [ 0, %185 ], [ %217, %215 ]
  %196 = phi i32 [ 0, %185 ], [ %216, %215 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #5
  %197 = load ptr, ptr %186, align 8, !tbaa !79
  %198 = trunc i64 %195 to i32
  call void %197(ptr noundef %2, i32 noundef %198, ptr noundef nonnull %5) #5
  %199 = load i32, ptr %5, align 4, !tbaa !80
  %200 = zext i32 %199 to i64
  %201 = inttoptr i64 %200 to ptr
  %202 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %171, ptr noundef %201) #5
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %194
  %205 = load i32, ptr %187, align 4, !tbaa !82
  %206 = zext i32 %205 to i64
  %207 = inttoptr i64 %206 to ptr
  %208 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %171, ptr noundef %207) #5
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %204
  %211 = inttoptr i64 %195 to ptr
  %212 = sext i32 %196 to i64
  %213 = inttoptr i64 %212 to ptr
  call void @BLI_ghash_insert(ptr noundef %172, ptr noundef %211, ptr noundef %213) #5
  %214 = add nsw i32 %196, 1
  br label %215

215:                                              ; preds = %210, %204, %194
  %216 = phi i32 [ %214, %210 ], [ %196, %204 ], [ %196, %194 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #5
  %217 = add nuw nsw i64 %195, 1
  %218 = icmp eq i64 %217, %188
  br i1 %218, label %189, label %194, !llvm.loop !83

219:                                              ; preds = %192, %252
  %220 = phi i64 [ 0, %192 ], [ %255, %252 ]
  %221 = phi i32 [ 0, %192 ], [ %254, %252 ]
  %222 = phi i32 [ 0, %192 ], [ %253, %252 ]
  %223 = getelementptr inbounds %struct.MPoly, ptr %176, i64 %220, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !84
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.MPoly, ptr %176, i64 %220
  %228 = load i32, ptr %227, align 4, !tbaa !86
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.MLoop, ptr %179, i64 %229
  br label %231

231:                                              ; preds = %226, %239
  %232 = phi i32 [ %240, %239 ], [ 0, %226 ]
  %233 = phi ptr [ %241, %239 ], [ %230, %226 ]
  %234 = load i32, ptr %233, align 4, !tbaa !87
  %235 = zext i32 %234 to i64
  %236 = inttoptr i64 %235 to ptr
  %237 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %171, ptr noundef %236) #5
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %252, label %239

239:                                              ; preds = %231
  %240 = add nuw nsw i32 %232, 1
  %241 = getelementptr inbounds %struct.MLoop, ptr %233, i64 1
  %242 = load i32, ptr %223, align 4, !tbaa !84
  %243 = icmp slt i32 %240, %242
  br i1 %243, label %231, label %244, !llvm.loop !89

244:                                              ; preds = %239, %219
  %245 = inttoptr i64 %220 to ptr
  %246 = sext i32 %221 to i64
  %247 = inttoptr i64 %246 to ptr
  call void @BLI_ghash_insert(ptr noundef %173, ptr noundef %245, ptr noundef %247) #5
  %248 = getelementptr inbounds i32, ptr %183, i64 %246
  store i32 %222, ptr %248, align 4, !tbaa !90
  %249 = add nsw i32 %221, 1
  %250 = load i32, ptr %223, align 4, !tbaa !84
  %251 = add nsw i32 %250, %222
  br label %252

252:                                              ; preds = %231, %244
  %253 = phi i32 [ %251, %244 ], [ %222, %231 ]
  %254 = phi i32 [ %249, %244 ], [ %221, %231 ]
  %255 = add nuw nsw i64 %220, 1
  %256 = icmp eq i64 %255, %193
  br i1 %256, label %257, label %219, !llvm.loop !91

257:                                              ; preds = %252, %189
  %258 = phi i32 [ 0, %189 ], [ %253, %252 ]
  %259 = phi i32 [ 0, %189 ], [ %254, %252 ]
  %260 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %170, i32 noundef %190, i32 noundef 0, i32 noundef %258, i32 noundef %259) #5
  %261 = call ptr @CDDM_get_polys(ptr noundef %260) #5
  %262 = call ptr @CDDM_get_loops(ptr noundef %260) #5
  %263 = call ptr @CDDM_get_edges(ptr noundef %260) #5
  %264 = call ptr @CDDM_get_verts(ptr noundef %260) #5
  %265 = call ptr @BLI_ghashIterator_new(ptr noundef %171) #5
  %266 = getelementptr inbounds %struct.GHashIterator, ptr %265, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !92
  %268 = icmp eq ptr %267, null
  br i1 %268, label %287, label %269

269:                                              ; preds = %257
  %270 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 28
  br label %271

271:                                              ; preds = %269, %271
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #5
  %272 = load ptr, ptr %266, align 8, !tbaa !92
  %273 = getelementptr inbounds %struct._gh_Entry, ptr %272, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !94
  %275 = ptrtoint ptr %274 to i64
  %276 = trunc i64 %275 to i32
  %277 = getelementptr inbounds %struct._gh_Entry, ptr %272, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !96
  %279 = ptrtoint ptr %278 to i64
  %280 = trunc i64 %279 to i32
  %281 = load ptr, ptr %270, align 8, !tbaa !97
  call void %281(ptr noundef %2, i32 noundef %276, ptr noundef nonnull %6) #5
  %282 = shl i64 %279, 32
  %283 = ashr exact i64 %282, 32
  %284 = getelementptr inbounds %struct.MVert, ptr %264, i64 %283
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %260, i32 noundef %276, i32 noundef %280, i32 noundef 1) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %284, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #5
  call void @BLI_ghashIterator_step(ptr noundef %265) #5
  %285 = load ptr, ptr %266, align 8, !tbaa !92
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %271, !llvm.loop !99

287:                                              ; preds = %271, %257
  call void @BLI_ghashIterator_free(ptr noundef %265) #5
  %288 = call ptr @BLI_ghashIterator_new(ptr noundef %172) #5
  %289 = getelementptr inbounds %struct.GHashIterator, ptr %288, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !92
  %291 = icmp eq ptr %290, null
  br i1 %291, label %323, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 29
  %294 = getelementptr inbounds %struct.MEdge, ptr %7, i64 0, i32 1
  br label %295

295:                                              ; preds = %292, %295
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  %296 = load ptr, ptr %289, align 8, !tbaa !92
  %297 = getelementptr inbounds %struct._gh_Entry, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !94
  %299 = ptrtoint ptr %298 to i64
  %300 = trunc i64 %299 to i32
  %301 = getelementptr inbounds %struct._gh_Entry, ptr %296, i64 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !96
  %303 = ptrtoint ptr %302 to i64
  %304 = trunc i64 %303 to i32
  %305 = load ptr, ptr %293, align 8, !tbaa !79
  call void %305(ptr noundef %2, i32 noundef %300, ptr noundef nonnull %7) #5
  %306 = shl i64 %303, 32
  %307 = ashr exact i64 %306, 32
  %308 = getelementptr inbounds %struct.MEdge, ptr %263, i64 %307
  %309 = load i32, ptr %7, align 4, !tbaa !80
  %310 = zext i32 %309 to i64
  %311 = inttoptr i64 %310 to ptr
  %312 = call ptr @BLI_ghash_lookup(ptr noundef %171, ptr noundef %311) #5
  %313 = ptrtoint ptr %312 to i64
  %314 = trunc i64 %313 to i32
  store i32 %314, ptr %7, align 4, !tbaa !80
  %315 = load i32, ptr %294, align 4, !tbaa !82
  %316 = zext i32 %315 to i64
  %317 = inttoptr i64 %316 to ptr
  %318 = call ptr @BLI_ghash_lookup(ptr noundef %171, ptr noundef %317) #5
  %319 = ptrtoint ptr %318 to i64
  %320 = trunc i64 %319 to i32
  store i32 %320, ptr %294, align 4, !tbaa !82
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %260, i32 noundef %300, i32 noundef %304, i32 noundef 1) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %308, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  call void @BLI_ghashIterator_step(ptr noundef %288) #5
  %321 = load ptr, ptr %289, align 8, !tbaa !92
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %295, !llvm.loop !102

323:                                              ; preds = %295, %287
  call void @BLI_ghashIterator_free(ptr noundef %288) #5
  %324 = call ptr @BLI_ghashIterator_new(ptr noundef %173) #5
  %325 = getelementptr inbounds %struct.GHashIterator, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !92
  %327 = icmp eq ptr %326, null
  br i1 %327, label %380, label %328

328:                                              ; preds = %323, %377
  %329 = phi ptr [ %378, %377 ], [ %326, %323 ]
  %330 = getelementptr inbounds %struct._gh_Entry, ptr %329, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !94
  %332 = ptrtoint ptr %331 to i64
  %333 = trunc i64 %332 to i32
  %334 = getelementptr inbounds %struct._gh_Entry, ptr %329, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !96
  %336 = ptrtoint ptr %335 to i64
  %337 = trunc i64 %336 to i32
  %338 = shl i64 %332, 32
  %339 = ashr exact i64 %338, 32
  %340 = getelementptr inbounds %struct.MPoly, ptr %176, i64 %339
  %341 = shl i64 %336, 32
  %342 = ashr exact i64 %341, 32
  %343 = getelementptr inbounds %struct.MPoly, ptr %261, i64 %342
  %344 = load i32, ptr %340, align 4, !tbaa !86
  %345 = getelementptr inbounds i32, ptr %183, i64 %342
  %346 = load i32, ptr %345, align 4, !tbaa !90
  %347 = sext i32 %344 to i64
  %348 = getelementptr inbounds %struct.MLoop, ptr %179, i64 %347
  %349 = sext i32 %346 to i64
  %350 = getelementptr inbounds %struct.MLoop, ptr %262, i64 %349
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %260, i32 noundef %333, i32 noundef %337, i32 noundef 1) #5
  %351 = getelementptr inbounds %struct.MPoly, ptr %176, i64 %339, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !84
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %260, i32 noundef %344, i32 noundef %346, i32 noundef %352) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %343, ptr noundef nonnull align 4 dereferenceable(12) %340, i64 12, i1 false), !tbaa.struct !103
  store i32 %346, ptr %343, align 4, !tbaa !86
  %353 = load i32, ptr %351, align 4, !tbaa !84
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %377

355:                                              ; preds = %328, %355
  %356 = phi i64 [ %373, %355 ], [ 0, %328 ]
  %357 = getelementptr inbounds %struct.MLoop, ptr %348, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !87
  %359 = zext i32 %358 to i64
  %360 = inttoptr i64 %359 to ptr
  %361 = call ptr @BLI_ghash_lookup(ptr noundef %171, ptr noundef %360) #5
  %362 = ptrtoint ptr %361 to i64
  %363 = trunc i64 %362 to i32
  %364 = getelementptr inbounds %struct.MLoop, ptr %350, i64 %356
  store i32 %363, ptr %364, align 4, !tbaa !87
  %365 = getelementptr inbounds %struct.MLoop, ptr %348, i64 %356, i32 1
  %366 = load i32, ptr %365, align 4, !tbaa !104
  %367 = zext i32 %366 to i64
  %368 = inttoptr i64 %367 to ptr
  %369 = call ptr @BLI_ghash_lookup(ptr noundef %172, ptr noundef %368) #5
  %370 = ptrtoint ptr %369 to i64
  %371 = trunc i64 %370 to i32
  %372 = getelementptr inbounds %struct.MLoop, ptr %350, i64 %356, i32 1
  store i32 %371, ptr %372, align 4, !tbaa !104
  %373 = add nuw nsw i64 %356, 1
  %374 = load i32, ptr %351, align 4, !tbaa !84
  %375 = sext i32 %374 to i64
  %376 = icmp slt i64 %373, %375
  br i1 %376, label %355, label %377, !llvm.loop !105

377:                                              ; preds = %355, %328
  call void @BLI_ghashIterator_step(ptr noundef %324) #5
  %378 = load ptr, ptr %325, align 8, !tbaa !92
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %328, !llvm.loop !106

380:                                              ; preds = %377, %323
  call void @BLI_ghashIterator_free(ptr noundef %324) #5
  %381 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %381(ptr noundef %183) #5
  %382 = getelementptr inbounds %struct.DerivedMesh, ptr %260, i64 0, i32 16
  %383 = load i32, ptr %382, align 8, !tbaa !107
  %384 = or i32 %383, 4
  store i32 %384, ptr %382, align 8, !tbaa !107
  call void @BLI_ghash_free(ptr noundef %171, ptr noundef null, ptr noundef null) #5
  call void @BLI_ghash_free(ptr noundef %172, ptr noundef null, ptr noundef null) #5
  call void @BLI_ghash_free(ptr noundef %173, ptr noundef null, ptr noundef null) #5
  br label %385

385:                                              ; preds = %34, %38, %40, %19, %17, %135, %166, %380
  %386 = phi ptr [ %260, %380 ], [ %2, %135 ], [ %2, %166 ], [ %20, %19 ], [ %2, %17 ], [ %2, %40 ], [ %2, %38 ], [ %2, %34 ]
  ret ptr %386
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %12, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.6) #5
  %13 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !109
  %15 = or i32 %14, 16384
  store i32 %15, ptr %13, align 8, !tbaa !109
  br label %16

16:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !40, i64 188}
!35 = !{!"MaskModifierData", !36, i64 0, !37, i64 112, !38, i64 120, !40, i64 184, !40, i64 188}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !37, i64 1320}
!42 = !{!"DerivedMesh", !43, i64 0, !43, i64 200, !43, i64 400, !43, i64 600, !43, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !44, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!43 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!44 = !{!"float", !38, i64 0}
!45 = !{!42, !37, i64 1104}
!46 = !{!42, !37, i64 1112}
!47 = !{!42, !37, i64 1136}
!48 = !{!35, !40, i64 184}
!49 = !{!50, !37, i64 0}
!50 = !{!"ListBase", !37, i64 0, !37, i64 8}
!51 = !{!35, !37, i64 112}
!52 = !{!53, !37, i64 288}
!53 = !{!"Object", !54, i64 0, !37, i64 120, !37, i64 128, !55, i64 136, !55, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !56, i64 312, !37, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !55, i64 948, !55, i64 950, !55, i64 952, !55, i64 954, !55, i64 956, !55, i64 958, !55, i64 960, !55, i64 962, !55, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !55, i64 1036, !55, i64 1038, !55, i64 1040, !38, i64 1042, !38, i64 1043, !55, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !44, i64 1120, !55, i64 1124, !55, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !55, i64 1162, !38, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !55, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !57, i64 1304, !57, i64 1312, !40, i64 1320, !40, i64 1324, !50, i64 1328, !50, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !50, i64 1400, !37, i64 1416}
!54 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !55, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!55 = !{!"short", !38, i64 0}
!56 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !55, i64 16, !55, i64 18, !55, i64 20, !55, i64 22, !55, i64 24, !55, i64 26, !55, i64 28, !55, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!57 = !{!"long", !38, i64 0}
!58 = !{!53, !37, i64 400}
!59 = !{!37, !37, i64 0}
!60 = !{!61, !37, i64 120}
!61 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !50, i64 24, !38, i64 40, !55, i64 104, !55, i64 106, !55, i64 108, !55, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !50, i64 144, !50, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !55, i64 268, !55, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!62 = !{!63, !40, i64 176}
!63 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !50, i64 32, !38, i64 48, !44, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !40, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !38, i64 308, !40, i64 320, !55, i64 324, !38, i64 326}
!64 = !{!38, !38, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!69, !40, i64 8}
!69 = !{!"MDeformVert", !37, i64 0, !40, i64 8, !40, i64 12}
!70 = !{!69, !37, i64 0}
!71 = !{!72, !40, i64 0}
!72 = !{!"MDeformWeight", !40, i64 0, !44, i64 4}
!73 = !{!72, !44, i64 4}
!74 = distinct !{!74, !66, !67}
!75 = distinct !{!75, !66, !67}
!76 = distinct !{!76, !66, !67}
!77 = !{!42, !37, i64 1200}
!78 = !{!42, !37, i64 1192}
!79 = !{!42, !37, i64 1152}
!80 = !{!81, !40, i64 0}
!81 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !55, i64 10}
!82 = !{!81, !40, i64 4}
!83 = distinct !{!83, !66, !67}
!84 = !{!85, !40, i64 4}
!85 = !{!"MPoly", !40, i64 0, !40, i64 4, !55, i64 8, !38, i64 10, !38, i64 11}
!86 = !{!85, !40, i64 0}
!87 = !{!88, !40, i64 0}
!88 = !{!"MLoop", !40, i64 0, !40, i64 4}
!89 = distinct !{!89, !66, !67}
!90 = !{!40, !40, i64 0}
!91 = distinct !{!91, !66, !67}
!92 = !{!93, !37, i64 8}
!93 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !40, i64 16}
!94 = !{!95, !37, i64 8}
!95 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!96 = !{!95, !37, i64 16}
!97 = !{!42, !37, i64 1144}
!98 = !{i64 0, i64 12, !64, i64 12, i64 6, !64, i64 18, i64 1, !64, i64 19, i64 1, !64}
!99 = distinct !{!99, !66, !67}
!100 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 8, i64 1, !64, i64 9, i64 1, !64, i64 10, i64 2, !101}
!101 = !{!55, !55, i64 0}
!102 = distinct !{!102, !66, !67}
!103 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 8, i64 2, !101, i64 10, i64 1, !64, i64 11, i64 1, !64}
!104 = !{!88, !40, i64 4}
!105 = distinct !{!105, !66, !67}
!106 = distinct !{!106, !66, !67}
!107 = !{!42, !40, i64 1056}
!108 = !{!53, !37, i64 296}
!109 = !{!110, !40, i64 192}
!110 = !{!"bArmature", !54, i64 0, !37, i64 120, !50, i64 128, !50, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !55, i64 208, !55, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !55, i64 224, !55, i64 226, !55, i64 228, !55, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
