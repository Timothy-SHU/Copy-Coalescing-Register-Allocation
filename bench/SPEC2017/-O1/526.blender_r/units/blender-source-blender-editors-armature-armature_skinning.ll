; ModuleID = 'blender/source/blender/editors/armature/armature_skinning.c'
source_filename = "blender/source/blender/editors/armature/armature_skinning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Mat4 = type { [4 x [4 x float]] }
%struct.anon = type { ptr, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.anon.0 = type { ptr, ptr, i32 }
%struct.anon.1 = type { ptr, ptr, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"bonelist\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dgrouplist\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dgroupflip\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tip\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"selected\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"closestboneverts\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"Built without OpenNL\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [32 x %struct.Mat4], align 16
  %8 = alloca %struct.anon, align 8
  %9 = alloca [64 x i8], align 16
  %10 = icmp eq i32 %4, 1
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %14) #3
  %16 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call i32 @bone_looper(ptr noundef %2, ptr noundef %17, ptr noundef null, ptr noundef nonnull @vgroup_add_unique_bone_cb) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %314, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @ED_vgroup_data_clamp_range(ptr noundef %22, i32 noundef %15) #3
  br label %314

23:                                               ; preds = %6
  %24 = and i32 %4, -2
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %314

26:                                               ; preds = %23
  %27 = icmp eq i32 %4, 3
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #3
  %31 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = and i32 %32, 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #3
  store ptr %3, ptr %8, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 2
  store i32 %28, ptr %34, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 1
  store ptr null, ptr %35, align 8, !tbaa !52
  %36 = getelementptr inbounds %struct.bArmature, ptr %30, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = call i32 @bone_looper(ptr noundef %2, ptr noundef %37, ptr noundef nonnull %8, ptr noundef nonnull @bone_skinnable_cb) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %313, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = call zeroext i8 @ED_vgroup_data_create(ptr noundef %42) #3
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %313, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %47 = sext i32 %38 to i64
  %48 = shl nsw i64 %47, 3
  %49 = call ptr %46(i64 noundef %48, ptr noundef nonnull @.str) #3
  store ptr %49, ptr %35, align 8, !tbaa !52
  %50 = load ptr, ptr %36, align 8, !tbaa !46
  %51 = call i32 @bone_looper(ptr noundef %2, ptr noundef %50, ptr noundef nonnull %8, ptr noundef nonnull @bone_skinnable_cb) #3
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %53 = call ptr %52(i64 noundef %48, ptr noundef nonnull @.str.1) #3
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %55 = call ptr %54(i64 noundef %48, ptr noundef nonnull @.str.2) #3
  store ptr %53, ptr %35, align 8, !tbaa !52
  %56 = load ptr, ptr %36, align 8, !tbaa !46
  %57 = call i32 @bone_looper(ptr noundef %2, ptr noundef %56, ptr noundef nonnull %8, ptr noundef nonnull @dgroup_skinnable_cb) #3
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %59 = shl nsw i64 %47, 2
  %60 = mul nsw i64 %47, 12
  %61 = call ptr %58(i64 noundef %60, ptr noundef nonnull @.str.3) #3
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %63 = call ptr %62(i64 noundef %60, ptr noundef nonnull @.str.4) #3
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %65 = call ptr %64(i64 noundef %59, ptr noundef nonnull @.str.5) #3
  %66 = icmp sgt i32 %38, 0
  br i1 %66, label %67, label %172

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %69 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %70 = icmp eq i32 %33, 0
  %71 = getelementptr inbounds %struct.bArmature, ptr %30, i64 0, i32 15
  %72 = icmp ne i8 %5, 0
  %73 = zext nneg i32 %38 to i64
  br label %74

74:                                               ; preds = %67, %169
  %75 = phi i64 [ 0, %67 ], [ %170, %169 ]
  %76 = phi ptr [ null, %67 ], [ %103, %169 ]
  %77 = phi i32 [ 0, %67 ], [ %102, %169 ]
  %78 = getelementptr inbounds ptr, ptr %49, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !53
  %80 = getelementptr inbounds ptr, ptr %53, i64 %75
  %81 = load ptr, ptr %80, align 8, !tbaa !53
  br i1 %27, label %82, label %101

82:                                               ; preds = %74
  %83 = icmp eq i32 %77, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %82
  %85 = load ptr, ptr %68, align 8, !tbaa !54
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 5
  %89 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %85, ptr noundef nonnull %88) #3
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 26
  %93 = load i16, ptr %92, align 4, !tbaa !55
  %94 = icmp sgt i16 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = zext nneg i16 %93 to i32
  call void @b_bone_spline_setup(ptr noundef nonnull %89, i32 noundef 1, ptr noundef nonnull %7) #3
  br label %97

97:                                               ; preds = %95, %91, %87, %84, %82
  %98 = phi i32 [ %96, %95 ], [ 1, %91 ], [ 1, %87 ], [ 1, %84 ], [ %77, %82 ]
  %99 = phi ptr [ %7, %95 ], [ null, %91 ], [ null, %87 ], [ null, %84 ], [ %76, %82 ]
  %100 = add nsw i32 %98, -1
  br label %101

101:                                              ; preds = %97, %74
  %102 = phi i32 [ %100, %97 ], [ %77, %74 ]
  %103 = phi ptr [ %99, %97 ], [ %76, %74 ]
  %104 = icmp eq ptr %103, null
  %105 = getelementptr inbounds [3 x float], ptr %61, i64 %75
  br i1 %104, label %128, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 13
  %108 = zext nneg i32 %102 to i64
  %109 = getelementptr inbounds %struct.Mat4, ptr %103, i64 %108, i32 0, i64 3
  call void @mul_v3_m4v3(ptr noundef %105, ptr noundef nonnull %107, ptr noundef nonnull %109) #3
  %110 = add nuw nsw i32 %102, 1
  %111 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 26
  %112 = load i16, ptr %111, align 4, !tbaa !55
  %113 = sext i16 %112 to i32
  %114 = icmp slt i32 %110, %113
  %115 = getelementptr inbounds [3 x float], ptr %63, i64 %75
  br i1 %114, label %116, label %119

116:                                              ; preds = %106
  %117 = zext nneg i32 %110 to i64
  %118 = getelementptr inbounds %struct.Mat4, ptr %103, i64 %117, i32 0, i64 3
  call void @mul_v3_m4v3(ptr noundef %115, ptr noundef nonnull %107, ptr noundef nonnull %118) #3
  br label %146

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 12
  %121 = load float, ptr %120, align 4, !tbaa !57
  store float %121, ptr %115, align 4, !tbaa !57
  %122 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 12, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !57
  %124 = getelementptr inbounds float, ptr %115, i64 1
  store float %123, ptr %124, align 4, !tbaa !57
  %125 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 12, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !57
  %127 = getelementptr inbounds float, ptr %115, i64 2
  store float %126, ptr %127, align 4, !tbaa !57
  br label %146

128:                                              ; preds = %101
  %129 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 11
  %130 = load float, ptr %129, align 4, !tbaa !57
  store float %130, ptr %105, align 4, !tbaa !57
  %131 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 11, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !57
  %133 = getelementptr inbounds float, ptr %105, i64 1
  store float %132, ptr %133, align 4, !tbaa !57
  %134 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 11, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !57
  %136 = getelementptr inbounds float, ptr %105, i64 2
  store float %135, ptr %136, align 4, !tbaa !57
  %137 = getelementptr inbounds [3 x float], ptr %63, i64 %75
  %138 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 12
  %139 = load float, ptr %138, align 4, !tbaa !57
  store float %139, ptr %137, align 4, !tbaa !57
  %140 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 12, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !57
  %142 = getelementptr inbounds float, ptr %137, i64 1
  store float %141, ptr %142, align 4, !tbaa !57
  %143 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 12, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !57
  %145 = getelementptr inbounds float, ptr %137, i64 2
  store float %144, ptr %145, align 4, !tbaa !57
  br label %146

146:                                              ; preds = %128, %119, %116
  %147 = getelementptr inbounds [3 x float], ptr %61, i64 %75
  call void @mul_m4_v3(ptr noundef nonnull %69, ptr noundef %147) #3
  %148 = getelementptr inbounds [3 x float], ptr %63, i64 %75
  call void @mul_m4_v3(ptr noundef nonnull %69, ptr noundef %148) #3
  br i1 %70, label %160, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %71, align 8, !tbaa !58
  %151 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 25
  %152 = load i32, ptr %151, align 8, !tbaa !59
  %153 = and i32 %152, %150
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.Bone, ptr %79, i64 0, i32 10
  %157 = load i32, ptr %156, align 8, !tbaa !60
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %146, %155
  %161 = getelementptr inbounds i32, ptr %65, i64 %75
  store i32 1, ptr %161, align 4, !tbaa !61
  br label %162

162:                                              ; preds = %160, %155, %149
  %163 = icmp ne ptr %81, null
  %164 = and i1 %72, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #3
  %166 = getelementptr inbounds %struct.bDeformGroup, ptr %81, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %9, ptr noundef nonnull %166, i8 noundef zeroext 0) #3
  %167 = call ptr @defgroup_find_name(ptr noundef %2, ptr noundef nonnull %9) #3
  %168 = getelementptr inbounds ptr, ptr %55, i64 %75
  store ptr %167, ptr %168, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #3
  br label %169

169:                                              ; preds = %165, %162
  %170 = add nuw nsw i64 %75, 1
  %171 = icmp eq i64 %170, %73
  br i1 %171, label %172, label %74, !llvm.loop !62

172:                                              ; preds = %169, %45
  %173 = load ptr, ptr %41, align 8, !tbaa !34
  %174 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %175 = getelementptr inbounds %struct.Mesh, ptr %173, i64 0, i32 26
  %176 = load i32, ptr %175, align 8, !tbaa !65
  %177 = sext i32 %176 to i64
  %178 = mul nsw i64 %177, 12
  %179 = call ptr %174(i64 noundef %178, ptr noundef nonnull @.str.6) #3
  %180 = icmp eq i32 %33, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %172
  %182 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !68
  %183 = call ptr @mesh_get_derived_final(ptr noundef %1, ptr noundef %2, i64 noundef %182) #3
  %184 = getelementptr inbounds %struct.DerivedMesh, ptr %183, i64 0, i32 71
  %185 = load ptr, ptr %184, align 8, !tbaa !69
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %181
  %188 = load i32, ptr %175, align 8, !tbaa !65
  call void @mesh_get_mapped_verts_coords(ptr noundef %183, ptr noundef %179, i32 noundef %188) #3
  br label %189

189:                                              ; preds = %187, %181
  %190 = getelementptr inbounds %struct.DerivedMesh, ptr %183, i64 0, i32 95
  %191 = load ptr, ptr %190, align 8, !tbaa !71
  call void %191(ptr noundef %183) #3
  br label %196

192:                                              ; preds = %172
  %193 = call ptr @modifiers_findByType(ptr noundef %2, i32 noundef 1) #3
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call void @subsurf_calculate_limit_positions(ptr noundef %173, ptr noundef %179) #3
  br label %196

196:                                              ; preds = %195, %192, %189
  %197 = phi i1 [ %186, %189 ], [ false, %195 ], [ true, %192 ]
  %198 = load i32, ptr %175, align 8, !tbaa !65
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.Mesh, ptr %173, i64 0, i32 15
  %202 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  br label %203

203:                                              ; preds = %200, %216
  %204 = phi i64 [ 0, %200 ], [ %218, %216 ]
  br i1 %197, label %205, label %216

205:                                              ; preds = %203
  %206 = getelementptr inbounds [3 x float], ptr %179, i64 %204
  %207 = load ptr, ptr %201, align 8, !tbaa !72
  %208 = getelementptr inbounds %struct.MVert, ptr %207, i64 %204
  %209 = load float, ptr %208, align 4, !tbaa !57
  store float %209, ptr %206, align 4, !tbaa !57
  %210 = getelementptr inbounds float, ptr %208, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !57
  %212 = getelementptr inbounds float, ptr %206, i64 1
  store float %211, ptr %212, align 4, !tbaa !57
  %213 = getelementptr inbounds float, ptr %208, i64 2
  %214 = load float, ptr %213, align 4, !tbaa !57
  %215 = getelementptr inbounds float, ptr %206, i64 2
  store float %214, ptr %215, align 4, !tbaa !57
  br label %216

216:                                              ; preds = %205, %203
  %217 = getelementptr inbounds [3 x float], ptr %179, i64 %204
  call void @mul_m4_v3(ptr noundef nonnull %202, ptr noundef %217) #3
  %218 = add nuw nsw i64 %204, 1
  %219 = load i32, ptr %175, align 8, !tbaa !65
  %220 = sext i32 %219 to i64
  %221 = icmp slt i64 %218, %220
  br i1 %221, label %203, label %222, !llvm.loop !73

222:                                              ; preds = %216, %196
  br i1 %27, label %223, label %224

223:                                              ; preds = %222
  call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #3
  br label %304

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %226 = call float @mat4_to_scale(ptr noundef nonnull %225) #3
  %227 = getelementptr inbounds %struct.Mesh, ptr %173, i64 0, i32 46
  %228 = load i8, ptr %227, align 1, !tbaa !74
  %229 = lshr i8 %228, 4
  %230 = and i8 %229, 1
  %231 = load i32, ptr %31, align 8, !tbaa !48
  %232 = and i32 %231, 8
  %233 = icmp eq i32 %232, 0
  %234 = and i8 %228, 40
  %235 = icmp eq i8 %234, 0
  %236 = select i1 %233, i1 true, i1 %235
  %237 = load i32, ptr %175, align 8, !tbaa !65
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %304

239:                                              ; preds = %224
  %240 = getelementptr inbounds %struct.Mesh, ptr %173, i64 0, i32 15
  %241 = icmp eq ptr %55, null
  %242 = icmp sgt i32 %38, 0
  %243 = zext nneg i32 %38 to i64
  br label %244

244:                                              ; preds = %239, %299
  %245 = phi i64 [ 0, %239 ], [ %300, %299 ]
  br i1 %236, label %252, label %246

246:                                              ; preds = %244
  %247 = load ptr, ptr %240, align 8, !tbaa !72
  %248 = getelementptr inbounds %struct.MVert, ptr %247, i64 %245, i32 2
  %249 = load i8, ptr %248, align 2, !tbaa !75
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %299, label %252

252:                                              ; preds = %246, %244
  br i1 %241, label %256, label %253

253:                                              ; preds = %252
  %254 = trunc i64 %245 to i32
  %255 = call i32 @mesh_get_x_mirror_vert(ptr noundef %2, i32 noundef %254, i8 noundef zeroext %230) #3
  br label %256

256:                                              ; preds = %253, %252
  %257 = phi i32 [ %255, %253 ], [ -1, %252 ]
  br i1 %242, label %258, label %299

258:                                              ; preds = %256
  %259 = getelementptr inbounds [3 x float], ptr %179, i64 %245
  %260 = icmp ne i32 %257, -1
  %261 = trunc i64 %245 to i32
  br label %262

262:                                              ; preds = %258, %296
  %263 = phi i64 [ 0, %258 ], [ %297, %296 ]
  %264 = getelementptr inbounds i32, ptr %65, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !61
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %296, label %267

267:                                              ; preds = %262
  %268 = getelementptr inbounds ptr, ptr %49, i64 %263
  %269 = load ptr, ptr %268, align 8, !tbaa !53
  %270 = getelementptr inbounds ptr, ptr %53, i64 %263
  %271 = load ptr, ptr %270, align 8, !tbaa !53
  %272 = getelementptr inbounds [3 x float], ptr %61, i64 %263
  %273 = getelementptr inbounds [3 x float], ptr %63, i64 %263
  %274 = getelementptr inbounds %struct.Bone, ptr %269, i64 0, i32 22
  %275 = load float, ptr %274, align 4, !tbaa !77
  %276 = fmul float %226, %275
  %277 = getelementptr inbounds %struct.Bone, ptr %269, i64 0, i32 23
  %278 = load float, ptr %277, align 8, !tbaa !78
  %279 = fmul float %226, %278
  %280 = getelementptr inbounds %struct.Bone, ptr %269, i64 0, i32 15
  %281 = load float, ptr %280, align 8, !tbaa !79
  %282 = fmul float %226, %281
  %283 = call float @distfactor_to_bone(ptr noundef %259, ptr noundef %272, ptr noundef %273, float noundef %276, float noundef %279, float noundef %282) #3
  %284 = fcmp une float %283, 0.000000e+00
  br i1 %284, label %285, label %286

285:                                              ; preds = %267
  call void @ED_vgroup_vert_add(ptr noundef %2, ptr noundef %271, i32 noundef %261, float noundef %283, i32 noundef 1) #3
  br label %287

286:                                              ; preds = %267
  call void @ED_vgroup_vert_remove(ptr noundef %2, ptr noundef %271, i32 noundef %261) #3
  br label %287

287:                                              ; preds = %286, %285
  br i1 %241, label %296, label %288

288:                                              ; preds = %287
  %289 = getelementptr inbounds ptr, ptr %55, i64 %263
  %290 = load ptr, ptr %289, align 8, !tbaa !53
  %291 = icmp ne ptr %290, null
  %292 = select i1 %291, i1 %260, i1 false
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  br i1 %284, label %294, label %295

294:                                              ; preds = %293
  call void @ED_vgroup_vert_add(ptr noundef %2, ptr noundef nonnull %290, i32 noundef %257, float noundef %283, i32 noundef 1) #3
  br label %296

295:                                              ; preds = %293
  call void @ED_vgroup_vert_remove(ptr noundef %2, ptr noundef nonnull %290, i32 noundef %257) #3
  br label %296

296:                                              ; preds = %295, %294, %288, %287, %262
  %297 = add nuw nsw i64 %263, 1
  %298 = icmp eq i64 %297, %243
  br i1 %298, label %299, label %262, !llvm.loop !80

299:                                              ; preds = %296, %256, %246
  %300 = add nuw nsw i64 %245, 1
  %301 = load i32, ptr %175, align 8, !tbaa !65
  %302 = sext i32 %301 to i64
  %303 = icmp slt i64 %300, %302
  br i1 %303, label %244, label %304, !llvm.loop !81

304:                                              ; preds = %299, %224, %223
  %305 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %2, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #3
  %306 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %306(ptr noundef %49) #3
  %307 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %307(ptr noundef %53) #3
  %308 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %308(ptr noundef %55) #3
  %309 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %309(ptr noundef %61) #3
  %310 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %310(ptr noundef %63) #3
  %311 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %311(ptr noundef %65) #3
  %312 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %312(ptr noundef %179) #3
  br label %313

313:                                              ; preds = %26, %40, %304
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #3
  br label %314

314:                                              ; preds = %11, %20, %313, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare i32 @bone_looper(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @vgroup_add_unique_bone_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %10 = tail call ptr @defgroup_find_name(ptr noundef %0, ptr noundef nonnull %9) #3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef nonnull %9) #3
  br label %14

14:                                               ; preds = %3, %8, %12
  %15 = phi i32 [ 1, %12 ], [ 0, %8 ], [ 0, %3 ]
  ret i32 %15
}

declare void @ED_vgroup_data_clamp_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @bone_skinnable_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %29 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %25, ptr noundef nonnull %28) #3
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 26
  %33 = load i16, ptr %32, align 4, !tbaa !55
  %34 = sext i16 %33 to i32
  br label %35

35:                                               ; preds = %18, %22, %27, %31
  %36 = phi i32 [ %34, %31 ], [ 1, %27 ], [ 1, %22 ], [ 1, %18 ]
  %37 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = icmp ne ptr %38, null
  %40 = icmp sgt i32 %36, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %35, %42
  %43 = phi i32 [ %47, %42 ], [ 0, %35 ]
  %44 = load ptr, ptr %37, align 8, !tbaa !53
  store ptr %1, ptr %44, align 8, !tbaa !53
  %45 = load ptr, ptr %37, align 8, !tbaa !53
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %46, ptr %37, align 8, !tbaa !53
  %47 = add nuw nsw i32 %43, 1
  %48 = icmp eq i32 %47, %36
  br i1 %48, label %49, label %42, !llvm.loop !82

49:                                               ; preds = %42, %8, %13, %35
  %50 = phi i32 [ %36, %35 ], [ 0, %13 ], [ 0, %8 ], [ %36, %42 ]
  ret i32 %50
}

declare zeroext i8 @ED_vgroup_data_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @dgroup_skinnable_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = and i32 %5, 8
  %7 = load ptr, ptr %2, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !60
  %19 = and i32 %18, 4096
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.anon.1, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !51
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %31 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %27, ptr noundef nonnull %30) #3
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 26
  %35 = load i16, ptr %34, align 4, !tbaa !55
  %36 = sext i16 %35 to i32
  br label %37

37:                                               ; preds = %21, %25, %29, %33
  %38 = phi i32 [ %36, %33 ], [ 1, %29 ], [ 1, %25 ], [ 1, %21 ]
  br i1 %10, label %50, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %43 = load i32, ptr %42, align 8, !tbaa !59
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %17, align 8, !tbaa !60
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46, %37
  %51 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %52 = tail call ptr @defgroup_find_name(ptr noundef %0, ptr noundef nonnull %51) #3
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = tail call ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef nonnull %51) #3
  br label %56

56:                                               ; preds = %50, %54, %46, %39
  %57 = phi ptr [ %52, %50 ], [ %55, %54 ], [ null, %46 ], [ null, %39 ]
  %58 = getelementptr inbounds %struct.anon.1, ptr %2, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  %60 = icmp ne ptr %59, null
  %61 = icmp sgt i32 %38, 0
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %70

63:                                               ; preds = %56, %63
  %64 = phi i32 [ %68, %63 ], [ 0, %56 ]
  %65 = load ptr, ptr %58, align 8, !tbaa !53
  store ptr %57, ptr %65, align 8, !tbaa !53
  %66 = load ptr, ptr %58, align 8, !tbaa !53
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %67, ptr %58, align 8, !tbaa !53
  %68 = add nuw nsw i32 %64, 1
  %69 = icmp eq i32 %68, %38
  br i1 %69, label %70, label %63, !llvm.loop !83

70:                                               ; preds = %63, %11, %16, %56
  %71 = phi i32 [ %38, %56 ], [ 0, %16 ], [ 0, %11 ], [ %38, %63 ]
  ret i32 %71
}

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b_bone_spline_setup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @mesh_get_mapped_verts_coords(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @subsurf_calculate_limit_positions(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @distfactor_to_bone(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_vgroup_vert_add(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_vgroup_vert_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !37, i64 296}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 128}
!47 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!48 = !{!35, !41, i64 432}
!49 = !{!50, !37, i64 0}
!50 = !{!"", !37, i64 0, !37, i64 8, !41, i64 16}
!51 = !{!50, !41, i64 16}
!52 = !{!50, !37, i64 8}
!53 = !{!37, !37, i64 0}
!54 = !{!35, !37, i64 288}
!55 = !{!56, !40, i64 324}
!56 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !38, i64 48, !44, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!57 = !{!44, !44, i64 0}
!58 = !{!47, !41, i64 216}
!59 = !{!56, !41, i64 320}
!60 = !{!56, !41, i64 176}
!61 = !{!41, !41, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!66, !41, i64 1280}
!66 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !67, i64 280, !67, i64 480, !67, i64 680, !67, i64 880, !67, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!67 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!68 = !{!45, !45, i64 0}
!69 = !{!70, !37, i64 1488}
!70 = !{!"DerivedMesh", !67, i64 0, !67, i64 200, !67, i64 400, !67, i64 600, !67, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!71 = !{!70, !37, i64 1680}
!72 = !{!66, !37, i64 232}
!73 = distinct !{!73, !63, !64}
!74 = !{!66, !38, i64 1365}
!75 = !{!76, !38, i64 18}
!76 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!77 = !{!56, !44, i64 300}
!78 = !{!56, !44, i64 304}
!79 = !{!56, !44, i64 272}
!80 = distinct !{!80, !63, !64}
!81 = distinct !{!81, !63, !64}
!82 = distinct !{!82, !63, !64}
!83 = distinct !{!83, !63, !64}
