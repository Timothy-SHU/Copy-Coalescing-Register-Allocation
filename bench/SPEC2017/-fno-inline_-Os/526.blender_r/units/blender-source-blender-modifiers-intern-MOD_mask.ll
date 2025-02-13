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
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = alloca %struct.MEdge, align 4
  %6 = alloca %struct.MVert, align 4
  %7 = alloca %struct.MEdge, align 4
  %8 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !36
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = tail call ptr %14(ptr noundef %2, i32 noundef 2) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = icmp eq i8 %12, 0
  br i1 %18, label %369, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @CDDM_from_template(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %369

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = tail call i32 %23(ptr noundef nonnull %2) #7
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = tail call i32 %26(ptr noundef nonnull %2) #7
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = tail call i32 %29(ptr noundef nonnull %2) #7
  %31 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !50
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %21
  %35 = icmp ne i32 %32, 0
  %36 = icmp eq i32 %24, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %369, label %44

38:                                               ; preds = %21
  %39 = icmp eq i32 %24, 0
  br i1 %39, label %369, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %42 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %41) #8, !range !51
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %369

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %46 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %45) #8, !range !51
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %138, label %369

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = tail call i32 @BLI_countlist(ptr noundef nonnull %41) #7
  %52 = icmp eq ptr %50, null
  br i1 %52, label %369, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 18
  %55 = load ptr, ptr %54, align 8, !tbaa !53
  %56 = icmp eq ptr %55, null
  br i1 %56, label %369, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %41, align 8, !tbaa !60
  %59 = icmp eq ptr %58, null
  br i1 %59, label %369, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %62 = sext i32 %51 to i64
  %63 = tail call ptr %61(i64 noundef %62, ptr noundef nonnull @.str) #7
  %64 = load ptr, ptr %41, align 8, !tbaa !61
  %65 = icmp eq ptr %64, null
  br i1 %65, label %89, label %66

66:                                               ; preds = %60, %83
  %67 = phi i64 [ %86, %83 ], [ 0, %60 ]
  %68 = phi ptr [ %87, %83 ], [ %64, %60 ]
  %69 = load ptr, ptr %54, align 8, !tbaa !53
  %70 = getelementptr inbounds %struct.bDeformGroup, ptr %68, i64 0, i32 2
  %71 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %69, ptr noundef nonnull %70) #7
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %71, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !62
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Bone, ptr %75, i64 0, i32 10
  %79 = load i32, ptr %78, align 8, !tbaa !64
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %73, %66
  br label %83

83:                                               ; preds = %77, %82
  %84 = phi i8 [ 0, %82 ], [ 1, %77 ]
  %85 = getelementptr inbounds i8, ptr %63, i64 %67
  store i8 %84, ptr %85, align 1, !tbaa !66
  %86 = add nuw i64 %67, 1
  %87 = load ptr, ptr %68, align 8, !tbaa !61
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %66, !llvm.loop !67

89:                                               ; preds = %83, %60
  %90 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.1) #7
  %91 = icmp sgt i32 %24, 0
  br i1 %91, label %92, label %135

92:                                               ; preds = %89
  %93 = zext nneg i8 %12 to i32
  %94 = zext nneg i32 %24 to i64
  br label %95

95:                                               ; preds = %92, %130
  %96 = phi i64 [ 0, %92 ], [ %132, %130 ]
  %97 = phi ptr [ %15, %92 ], [ %133, %130 ]
  %98 = phi i32 [ 0, %92 ], [ %131, %130 ]
  %99 = getelementptr inbounds %struct.MDeformVert, ptr %97, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !69
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %95
  %103 = load ptr, ptr %97, align 8, !tbaa !71
  br label %104

104:                                              ; preds = %102, %118
  %105 = phi ptr [ %120, %118 ], [ %103, %102 ]
  %106 = phi i32 [ %119, %118 ], [ 0, %102 ]
  %107 = load i32, ptr %105, align 4, !tbaa !72
  %108 = icmp slt i32 %107, %51
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = sext i32 %107 to i64
  %111 = getelementptr inbounds i8, ptr %63, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !66
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.MDeformWeight, ptr %105, i64 0, i32 1
  %116 = load float, ptr %115, align 4, !tbaa !74
  %117 = fcmp une float %116, 0.000000e+00
  br i1 %117, label %122, label %118

118:                                              ; preds = %104, %114, %109
  %119 = add nuw nsw i32 %106, 1
  %120 = getelementptr inbounds %struct.MDeformWeight, ptr %105, i64 1
  %121 = icmp eq i32 %119, %100
  br i1 %121, label %122, label %104, !llvm.loop !75

122:                                              ; preds = %118, %114, %95
  %123 = phi i32 [ 0, %95 ], [ 1, %114 ], [ 0, %118 ]
  %124 = icmp eq i32 %123, %93
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = inttoptr i64 %96 to ptr
  %127 = sext i32 %98 to i64
  %128 = inttoptr i64 %127 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %90, ptr noundef %126, ptr noundef %128) #7
  %129 = add nsw i32 %98, 1
  br label %130

130:                                              ; preds = %122, %125
  %131 = phi i32 [ %129, %125 ], [ %98, %122 ]
  %132 = add nuw nsw i64 %96, 1
  %133 = getelementptr inbounds %struct.MDeformVert, ptr %97, i64 1
  %134 = icmp eq i64 %132, %94
  br i1 %134, label %135, label %95, !llvm.loop !76

135:                                              ; preds = %130, %89
  %136 = phi i32 [ 0, %89 ], [ %131, %130 ]
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %137(ptr noundef %63) #7
  br label %165

138:                                              ; preds = %44
  %139 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 2
  %140 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %139) #7
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %369, label %142

142:                                              ; preds = %138
  %143 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.2) #7
  %144 = icmp sgt i32 %24, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %142
  %146 = zext nneg i32 %24 to i64
  br label %147

147:                                              ; preds = %145, %160
  %148 = phi i64 [ 0, %145 ], [ %162, %160 ]
  %149 = phi ptr [ %15, %145 ], [ %163, %160 ]
  %150 = phi i32 [ 0, %145 ], [ %161, %160 ]
  %151 = tail call float @defvert_find_weight(ptr noundef nonnull %149, i32 noundef %140) #7
  %152 = fcmp une float %151, 0.000000e+00
  %153 = zext i1 %152 to i8
  %154 = icmp eq i8 %12, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %147
  %156 = inttoptr i64 %148 to ptr
  %157 = sext i32 %150 to i64
  %158 = inttoptr i64 %157 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %143, ptr noundef %156, ptr noundef %158) #7
  %159 = add nsw i32 %150, 1
  br label %160

160:                                              ; preds = %147, %155
  %161 = phi i32 [ %159, %155 ], [ %150, %147 ]
  %162 = add nuw nsw i64 %148, 1
  %163 = getelementptr inbounds %struct.MDeformVert, ptr %149, i64 1
  %164 = icmp eq i64 %162, %146
  br i1 %164, label %165, label %147, !llvm.loop !77

165:                                              ; preds = %160, %142, %135
  %166 = phi i32 [ %136, %135 ], [ 0, %142 ], [ %161, %160 ]
  %167 = phi ptr [ %90, %135 ], [ %143, %142 ], [ %143, %160 ]
  %168 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.3) #7
  %169 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.4) #7
  %170 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %171 = load ptr, ptr %170, align 8, !tbaa !78
  %172 = tail call ptr %171(ptr noundef %2) #7
  %173 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %174 = load ptr, ptr %173, align 8, !tbaa !79
  %175 = tail call ptr %174(ptr noundef %2) #7
  %176 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %177 = sext i32 %30 to i64
  %178 = shl nsw i64 %177, 2
  %179 = tail call ptr %176(i64 noundef %178, ptr noundef nonnull @.str.5) #7
  %180 = icmp sgt i32 %27, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %165
  %182 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 29
  %183 = getelementptr inbounds %struct.MEdge, ptr %5, i64 0, i32 1
  %184 = zext nneg i32 %27 to i64
  br label %190

185:                                              ; preds = %211, %165
  %186 = phi i32 [ 0, %165 ], [ %212, %211 ]
  %187 = icmp sgt i32 %30, 0
  br i1 %187, label %188, label %253

188:                                              ; preds = %185
  %189 = zext nneg i32 %30 to i64
  br label %215

190:                                              ; preds = %181, %211
  %191 = phi i64 [ 0, %181 ], [ %213, %211 ]
  %192 = phi i32 [ 0, %181 ], [ %212, %211 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %193 = load ptr, ptr %182, align 8, !tbaa !80
  %194 = trunc i64 %191 to i32
  call void %193(ptr noundef nonnull %2, i32 noundef %194, ptr noundef nonnull %5) #7
  %195 = load i32, ptr %5, align 4, !tbaa !81
  %196 = zext i32 %195 to i64
  %197 = inttoptr i64 %196 to ptr
  %198 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %167, ptr noundef %197) #7
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %190
  %201 = load i32, ptr %183, align 4, !tbaa !83
  %202 = zext i32 %201 to i64
  %203 = inttoptr i64 %202 to ptr
  %204 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %167, ptr noundef %203) #7
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %200
  %207 = inttoptr i64 %191 to ptr
  %208 = sext i32 %192 to i64
  %209 = inttoptr i64 %208 to ptr
  call void @BLI_ghash_insert(ptr noundef %168, ptr noundef %207, ptr noundef %209) #7
  %210 = add nsw i32 %192, 1
  br label %211

211:                                              ; preds = %206, %200, %190
  %212 = phi i32 [ %210, %206 ], [ %192, %200 ], [ %192, %190 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  %213 = add nuw nsw i64 %191, 1
  %214 = icmp eq i64 %213, %184
  br i1 %214, label %185, label %190, !llvm.loop !84

215:                                              ; preds = %188, %248
  %216 = phi i64 [ 0, %188 ], [ %251, %248 ]
  %217 = phi i32 [ 0, %188 ], [ %250, %248 ]
  %218 = phi i32 [ 0, %188 ], [ %249, %248 ]
  %219 = getelementptr inbounds %struct.MPoly, ptr %172, i64 %216, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !85
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %240

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.MPoly, ptr %172, i64 %216
  %224 = load i32, ptr %223, align 4, !tbaa !87
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.MLoop, ptr %175, i64 %225
  br label %227

227:                                              ; preds = %222, %235
  %228 = phi i32 [ %236, %235 ], [ 0, %222 ]
  %229 = phi ptr [ %237, %235 ], [ %226, %222 ]
  %230 = load i32, ptr %229, align 4, !tbaa !88
  %231 = zext i32 %230 to i64
  %232 = inttoptr i64 %231 to ptr
  %233 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %167, ptr noundef %232) #7
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %227
  %236 = add nuw nsw i32 %228, 1
  %237 = getelementptr inbounds %struct.MLoop, ptr %229, i64 1
  %238 = load i32, ptr %219, align 4, !tbaa !85
  %239 = icmp slt i32 %236, %238
  br i1 %239, label %227, label %240, !llvm.loop !90

240:                                              ; preds = %235, %215
  %241 = inttoptr i64 %216 to ptr
  %242 = sext i32 %217 to i64
  %243 = inttoptr i64 %242 to ptr
  call void @BLI_ghash_insert(ptr noundef %169, ptr noundef %241, ptr noundef %243) #7
  %244 = getelementptr inbounds i32, ptr %179, i64 %242
  store i32 %218, ptr %244, align 4, !tbaa !91
  %245 = add nsw i32 %217, 1
  %246 = load i32, ptr %219, align 4, !tbaa !85
  %247 = add nsw i32 %246, %218
  br label %248

248:                                              ; preds = %227, %240
  %249 = phi i32 [ %247, %240 ], [ %218, %227 ]
  %250 = phi i32 [ %245, %240 ], [ %217, %227 ]
  %251 = add nuw nsw i64 %216, 1
  %252 = icmp eq i64 %251, %189
  br i1 %252, label %253, label %215, !llvm.loop !92

253:                                              ; preds = %248, %185
  %254 = phi i32 [ 0, %185 ], [ %249, %248 ]
  %255 = phi i32 [ 0, %185 ], [ %250, %248 ]
  %256 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %166, i32 noundef %186, i32 noundef 0, i32 noundef %254, i32 noundef %255) #7
  %257 = call ptr @CDDM_get_polys(ptr noundef %256) #7
  %258 = call ptr @CDDM_get_loops(ptr noundef %256) #7
  %259 = call ptr @CDDM_get_edges(ptr noundef %256) #7
  %260 = call ptr @CDDM_get_verts(ptr noundef %256) #7
  %261 = call ptr @BLI_ghashIterator_new(ptr noundef %167) #7
  %262 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %261) #8, !range !51
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %279

264:                                              ; preds = %253
  %265 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 28
  br label %266

266:                                              ; preds = %264, %266
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  %267 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %261) #8
  %268 = ptrtoint ptr %267 to i64
  %269 = trunc i64 %268 to i32
  %270 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %261) #8
  %271 = ptrtoint ptr %270 to i64
  %272 = trunc i64 %271 to i32
  %273 = load ptr, ptr %265, align 8, !tbaa !93
  call void %273(ptr noundef %2, i32 noundef %269, ptr noundef nonnull %6) #7
  %274 = shl i64 %271, 32
  %275 = ashr exact i64 %274, 32
  %276 = getelementptr inbounds %struct.MVert, ptr %260, i64 %275
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %256, i32 noundef %269, i32 noundef %272, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %276, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  call void @BLI_ghashIterator_step(ptr noundef %261) #7
  %277 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %261) #8, !range !51
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %266, label %279, !llvm.loop !95

279:                                              ; preds = %266, %253
  call void @BLI_ghashIterator_free(ptr noundef %261) #7
  %280 = call ptr @BLI_ghashIterator_new(ptr noundef %168) #7
  %281 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %280) #8, !range !51
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 29
  %285 = getelementptr inbounds %struct.MEdge, ptr %7, i64 0, i32 1
  br label %286

286:                                              ; preds = %283, %286
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %287 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %280) #8
  %288 = ptrtoint ptr %287 to i64
  %289 = trunc i64 %288 to i32
  %290 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %280) #8
  %291 = ptrtoint ptr %290 to i64
  %292 = trunc i64 %291 to i32
  %293 = load ptr, ptr %284, align 8, !tbaa !80
  call void %293(ptr noundef %2, i32 noundef %289, ptr noundef nonnull %7) #7
  %294 = shl i64 %291, 32
  %295 = ashr exact i64 %294, 32
  %296 = getelementptr inbounds %struct.MEdge, ptr %259, i64 %295
  %297 = load i32, ptr %7, align 4, !tbaa !81
  %298 = zext i32 %297 to i64
  %299 = inttoptr i64 %298 to ptr
  %300 = call ptr @BLI_ghash_lookup(ptr noundef %167, ptr noundef %299) #7
  %301 = ptrtoint ptr %300 to i64
  %302 = trunc i64 %301 to i32
  store i32 %302, ptr %7, align 4, !tbaa !81
  %303 = load i32, ptr %285, align 4, !tbaa !83
  %304 = zext i32 %303 to i64
  %305 = inttoptr i64 %304 to ptr
  %306 = call ptr @BLI_ghash_lookup(ptr noundef %167, ptr noundef %305) #7
  %307 = ptrtoint ptr %306 to i64
  %308 = trunc i64 %307 to i32
  store i32 %308, ptr %285, align 4, !tbaa !83
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %256, i32 noundef %289, i32 noundef %292, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %296, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @BLI_ghashIterator_step(ptr noundef %280) #7
  %309 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %280) #8, !range !51
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %286, label %311, !llvm.loop !98

311:                                              ; preds = %286, %279
  call void @BLI_ghashIterator_free(ptr noundef %280) #7
  %312 = call ptr @BLI_ghashIterator_new(ptr noundef %169) #7
  %313 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %312) #8, !range !51
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %315, label %364

315:                                              ; preds = %311, %361
  %316 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %312) #8
  %317 = ptrtoint ptr %316 to i64
  %318 = trunc i64 %317 to i32
  %319 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %312) #8
  %320 = ptrtoint ptr %319 to i64
  %321 = trunc i64 %320 to i32
  %322 = shl i64 %317, 32
  %323 = ashr exact i64 %322, 32
  %324 = getelementptr inbounds %struct.MPoly, ptr %172, i64 %323
  %325 = shl i64 %320, 32
  %326 = ashr exact i64 %325, 32
  %327 = getelementptr inbounds %struct.MPoly, ptr %257, i64 %326
  %328 = load i32, ptr %324, align 4, !tbaa !87
  %329 = getelementptr inbounds i32, ptr %179, i64 %326
  %330 = load i32, ptr %329, align 4, !tbaa !91
  %331 = sext i32 %328 to i64
  %332 = getelementptr inbounds %struct.MLoop, ptr %175, i64 %331
  %333 = sext i32 %330 to i64
  %334 = getelementptr inbounds %struct.MLoop, ptr %258, i64 %333
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %256, i32 noundef %318, i32 noundef %321, i32 noundef 1) #7
  %335 = getelementptr inbounds %struct.MPoly, ptr %172, i64 %323, i32 1
  %336 = load i32, ptr %335, align 4, !tbaa !85
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %256, i32 noundef %328, i32 noundef %330, i32 noundef %336) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %327, ptr noundef nonnull align 4 dereferenceable(12) %324, i64 12, i1 false), !tbaa.struct !99
  store i32 %330, ptr %327, align 4, !tbaa !87
  %337 = load i32, ptr %335, align 4, !tbaa !85
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %361

339:                                              ; preds = %315, %339
  %340 = phi i64 [ %357, %339 ], [ 0, %315 ]
  %341 = getelementptr inbounds %struct.MLoop, ptr %332, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !88
  %343 = zext i32 %342 to i64
  %344 = inttoptr i64 %343 to ptr
  %345 = call ptr @BLI_ghash_lookup(ptr noundef %167, ptr noundef %344) #7
  %346 = ptrtoint ptr %345 to i64
  %347 = trunc i64 %346 to i32
  %348 = getelementptr inbounds %struct.MLoop, ptr %334, i64 %340
  store i32 %347, ptr %348, align 4, !tbaa !88
  %349 = getelementptr inbounds %struct.MLoop, ptr %332, i64 %340, i32 1
  %350 = load i32, ptr %349, align 4, !tbaa !100
  %351 = zext i32 %350 to i64
  %352 = inttoptr i64 %351 to ptr
  %353 = call ptr @BLI_ghash_lookup(ptr noundef %168, ptr noundef %352) #7
  %354 = ptrtoint ptr %353 to i64
  %355 = trunc i64 %354 to i32
  %356 = getelementptr inbounds %struct.MLoop, ptr %334, i64 %340, i32 1
  store i32 %355, ptr %356, align 4, !tbaa !100
  %357 = add nuw nsw i64 %340, 1
  %358 = load i32, ptr %335, align 4, !tbaa !85
  %359 = sext i32 %358 to i64
  %360 = icmp slt i64 %357, %359
  br i1 %360, label %339, label %361, !llvm.loop !101

361:                                              ; preds = %339, %315
  call void @BLI_ghashIterator_step(ptr noundef %312) #7
  %362 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %312) #8, !range !51
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %315, label %364, !llvm.loop !102

364:                                              ; preds = %361, %311
  call void @BLI_ghashIterator_free(ptr noundef %312) #7
  %365 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %365(ptr noundef %179) #7
  %366 = getelementptr inbounds %struct.DerivedMesh, ptr %256, i64 0, i32 16
  %367 = load i32, ptr %366, align 8, !tbaa !103
  %368 = or i32 %367, 4
  store i32 %368, ptr %366, align 8, !tbaa !103
  call void @BLI_ghash_free(ptr noundef %167, ptr noundef null, ptr noundef null) #7
  call void @BLI_ghash_free(ptr noundef %168, ptr noundef null, ptr noundef null) #7
  call void @BLI_ghash_free(ptr noundef %169, ptr noundef null, ptr noundef null) #7
  br label %369

369:                                              ; preds = %138, %48, %53, %57, %44, %34, %38, %40, %19, %17, %364
  %370 = phi ptr [ %256, %364 ], [ %20, %19 ], [ %2, %17 ], [ %2, %40 ], [ %2, %38 ], [ %2, %34 ], [ %2, %44 ], [ %2, %57 ], [ %2, %53 ], [ %2, %48 ], [ %2, %138 ]
  ret ptr %370
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 !PGOFuncName !104 {
  ret i64 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !105 {
  %6 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #7
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %12, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.6) #7
  %13 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !107
  %15 = or i32 %14, 16384
  store i32 %15, ptr %13, align 8, !tbaa !107
  br label %16

16:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !109 {
  %5 = getelementptr inbounds %struct.MaskModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #7
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !111
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  ret ptr %5
}

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!34 = !{!"MOD_mask.c:copyData"}
!35 = !{!"MOD_mask.c:applyModifier"}
!36 = !{!37, !42, i64 188}
!37 = !{!"MaskModifierData", !38, i64 0, !39, i64 112, !40, i64 120, !42, i64 184, !42, i64 188}
!38 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!44, !39, i64 1320}
!44 = !{!"DerivedMesh", !45, i64 0, !45, i64 200, !45, i64 400, !45, i64 600, !45, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !46, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!45 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!46 = !{!"float", !40, i64 0}
!47 = !{!44, !39, i64 1104}
!48 = !{!44, !39, i64 1112}
!49 = !{!44, !39, i64 1136}
!50 = !{!37, !42, i64 184}
!51 = !{i8 0, i8 2}
!52 = !{!37, !39, i64 112}
!53 = !{!54, !39, i64 288}
!54 = !{!"Object", !55, i64 0, !39, i64 120, !39, i64 128, !56, i64 136, !56, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !40, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !57, i64 312, !39, i64 360, !58, i64 368, !58, i64 384, !58, i64 400, !58, i64 416, !42, i64 432, !42, i64 436, !39, i64 440, !39, i64 448, !42, i64 456, !42, i64 460, !40, i64 464, !40, i64 476, !40, i64 488, !40, i64 500, !40, i64 512, !40, i64 524, !40, i64 536, !40, i64 548, !40, i64 560, !40, i64 576, !40, i64 592, !40, i64 604, !46, i64 616, !46, i64 620, !40, i64 624, !40, i64 688, !40, i64 752, !40, i64 816, !40, i64 880, !42, i64 944, !56, i64 948, !56, i64 950, !56, i64 952, !56, i64 954, !56, i64 956, !56, i64 958, !56, i64 960, !56, i64 962, !56, i64 964, !40, i64 966, !40, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !56, i64 1036, !56, i64 1038, !56, i64 1040, !40, i64 1042, !40, i64 1043, !56, i64 1044, !40, i64 1046, !40, i64 1047, !46, i64 1048, !46, i64 1052, !58, i64 1056, !58, i64 1072, !58, i64 1088, !58, i64 1104, !46, i64 1120, !56, i64 1124, !56, i64 1126, !40, i64 1128, !42, i64 1144, !42, i64 1148, !39, i64 1152, !40, i64 1160, !40, i64 1161, !56, i64 1162, !40, i64 1164, !58, i64 1176, !58, i64 1192, !58, i64 1208, !58, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !40, i64 1264, !40, i64 1265, !56, i64 1266, !46, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !59, i64 1304, !59, i64 1312, !42, i64 1320, !42, i64 1324, !58, i64 1328, !58, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !40, i64 1384, !39, i64 1392, !58, i64 1400, !39, i64 1416}
!55 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !56, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !39, i64 112}
!56 = !{!"short", !40, i64 0}
!57 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!58 = !{!"ListBase", !39, i64 0, !39, i64 8}
!59 = !{!"long", !40, i64 0}
!60 = !{!54, !39, i64 400}
!61 = !{!39, !39, i64 0}
!62 = !{!63, !39, i64 120}
!63 = !{!"bPoseChannel", !39, i64 0, !39, i64 8, !39, i64 16, !58, i64 24, !40, i64 40, !56, i64 104, !56, i64 106, !56, i64 108, !56, i64 110, !40, i64 112, !40, i64 113, !40, i64 114, !39, i64 120, !39, i64 128, !39, i64 136, !58, i64 144, !58, i64 160, !39, i64 176, !39, i64 184, !39, i64 192, !40, i64 200, !40, i64 212, !40, i64 224, !40, i64 236, !40, i64 252, !46, i64 264, !56, i64 268, !56, i64 270, !40, i64 272, !40, i64 336, !40, i64 400, !40, i64 464, !40, i64 476, !40, i64 488, !40, i64 500, !40, i64 512, !46, i64 524, !46, i64 528, !46, i64 532, !39, i64 536}
!64 = !{!65, !42, i64 176}
!65 = !{!"Bone", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !58, i64 32, !40, i64 48, !46, i64 112, !40, i64 116, !40, i64 128, !40, i64 140, !42, i64 176, !40, i64 180, !40, i64 192, !40, i64 204, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !40, i64 308, !42, i64 320, !56, i64 324, !40, i64 326}
!66 = !{!40, !40, i64 0}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!70, !42, i64 8}
!70 = !{!"MDeformVert", !39, i64 0, !42, i64 8, !42, i64 12}
!71 = !{!70, !39, i64 0}
!72 = !{!73, !42, i64 0}
!73 = !{!"MDeformWeight", !42, i64 0, !46, i64 4}
!74 = !{!73, !46, i64 4}
!75 = distinct !{!75, !68}
!76 = distinct !{!76, !68}
!77 = distinct !{!77, !68}
!78 = !{!44, !39, i64 1200}
!79 = !{!44, !39, i64 1192}
!80 = !{!44, !39, i64 1152}
!81 = !{!82, !42, i64 0}
!82 = !{!"MEdge", !42, i64 0, !42, i64 4, !40, i64 8, !40, i64 9, !56, i64 10}
!83 = !{!82, !42, i64 4}
!84 = distinct !{!84, !68}
!85 = !{!86, !42, i64 4}
!86 = !{!"MPoly", !42, i64 0, !42, i64 4, !56, i64 8, !40, i64 10, !40, i64 11}
!87 = !{!86, !42, i64 0}
!88 = !{!89, !42, i64 0}
!89 = !{!"MLoop", !42, i64 0, !42, i64 4}
!90 = distinct !{!90, !68}
!91 = !{!42, !42, i64 0}
!92 = distinct !{!92, !68}
!93 = !{!44, !39, i64 1144}
!94 = !{i64 0, i64 12, !66, i64 12, i64 6, !66, i64 18, i64 1, !66, i64 19, i64 1, !66}
!95 = distinct !{!95, !68}
!96 = !{i64 0, i64 4, !91, i64 4, i64 4, !91, i64 8, i64 1, !66, i64 9, i64 1, !66, i64 10, i64 2, !97}
!97 = !{!56, !56, i64 0}
!98 = distinct !{!98, !68}
!99 = !{i64 0, i64 4, !91, i64 4, i64 4, !91, i64 8, i64 2, !97, i64 10, i64 1, !66, i64 11, i64 1, !66}
!100 = !{!89, !42, i64 4}
!101 = distinct !{!101, !68}
!102 = distinct !{!102, !68}
!103 = !{!44, !42, i64 1056}
!104 = !{!"MOD_mask.c:requiredDataMask"}
!105 = !{!"MOD_mask.c:updateDepgraph"}
!106 = !{!54, !39, i64 296}
!107 = !{!108, !42, i64 192}
!108 = !{!"bArmature", !55, i64 0, !39, i64 120, !58, i64 128, !58, i64 144, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !56, i64 208, !56, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !56, i64 224, !56, i64 226, !56, i64 228, !56, i64 230, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252}
!109 = !{!"MOD_mask.c:foreachObjectLink"}
!110 = !{!"MOD_mask.c:BLI_listbase_is_empty"}
!111 = !{!58, !39, i64 0}
!112 = !{!"MOD_mask.c:BLI_ghashIterator_done"}
!113 = !{!114, !39, i64 8}
!114 = !{!"GHashIterator", !39, i64 0, !39, i64 8, !42, i64 16}
!115 = !{!"MOD_mask.c:BLI_ghashIterator_getKey"}
!116 = !{!117, !39, i64 8}
!117 = !{!"_gh_Entry", !39, i64 0, !39, i64 8, !39, i64 16}
!118 = !{!"MOD_mask.c:BLI_ghashIterator_getValue"}
!119 = !{!117, !39, i64 16}
