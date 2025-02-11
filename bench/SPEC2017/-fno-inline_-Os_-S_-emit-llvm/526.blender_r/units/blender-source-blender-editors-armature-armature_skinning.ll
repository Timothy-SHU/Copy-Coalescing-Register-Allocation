; ModuleID = 'blender/source/blender/editors/armature/armature_skinning.c'
source_filename = "blender/source/blender/editors/armature/armature_skinning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Mat4 = type { [4 x [4 x float]] }
%struct.anon = type { ptr, ptr, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %4, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %12 = tail call i32 @BLI_countlist(ptr noundef nonnull %11) #4
  %13 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = tail call i32 @bone_looper(ptr noundef %2, ptr noundef %14, ptr noundef null, ptr noundef nonnull @vgroup_add_unique_bone_cb) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  tail call void @ED_vgroup_data_clamp_range(ptr noundef %19, i32 noundef %12) #4
  br label %26

20:                                               ; preds = %6
  %21 = and i32 %4, -2
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = icmp eq i32 %4, 3
  %25 = zext i1 %24 to i32
  tail call fastcc void @add_verts_to_dgroups(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %25, i8 noundef zeroext %5) #5
  br label %26

26:                                               ; preds = %8, %17, %23, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bone_looper(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vgroup_add_unique_bone_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %10 = tail call ptr @defgroup_find_name(ptr noundef %0, ptr noundef nonnull %9) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef nonnull %9) #4
  br label %14

14:                                               ; preds = %3, %8, %12
  %15 = phi i32 [ 1, %12 ], [ 0, %8 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @ED_vgroup_data_clamp_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_verts_to_dgroups(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca [32 x %struct.Mat4], align 16
  %8 = alloca %struct.anon, align 8
  %9 = alloca [64 x i8], align 16
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #6
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !21
  %14 = and i32 %13, 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  store ptr %3, ptr %8, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 2
  store i32 %4, ptr %15, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = call i32 @bone_looper(ptr noundef %2, ptr noundef %18, ptr noundef nonnull %8, ptr noundef nonnull @bone_skinnable_cb) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %191, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = call zeroext i8 @ED_vgroup_data_create(ptr noundef %23) #4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %191, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %28 = sext i32 %19 to i64
  %29 = shl nsw i64 %28, 3
  %30 = call ptr %27(i64 noundef %29, ptr noundef nonnull @.str) #4
  store ptr %30, ptr %16, align 8, !tbaa !25
  %31 = load ptr, ptr %17, align 8, !tbaa !17
  %32 = call i32 @bone_looper(ptr noundef nonnull %2, ptr noundef %31, ptr noundef nonnull %8, ptr noundef nonnull @bone_skinnable_cb) #4
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %34 = call ptr %33(i64 noundef %29, ptr noundef nonnull @.str.1) #4
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %36 = call ptr %35(i64 noundef %29, ptr noundef nonnull @.str.2) #4
  store ptr %34, ptr %16, align 8, !tbaa !25
  %37 = load ptr, ptr %17, align 8, !tbaa !17
  %38 = call i32 @bone_looper(ptr noundef nonnull %2, ptr noundef %37, ptr noundef nonnull %8, ptr noundef nonnull @dgroup_skinnable_cb) #4
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %40 = shl nsw i64 %28, 2
  %41 = mul nsw i64 %28, 12
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.3) #4
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %44 = call ptr %43(i64 noundef %41, ptr noundef nonnull @.str.4) #4
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %46 = call ptr %45(i64 noundef %40, ptr noundef nonnull @.str.5) #4
  %47 = icmp sgt i32 %19, 0
  br i1 %47, label %48, label %133

48:                                               ; preds = %26
  %49 = icmp eq i32 %4, 0
  %50 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %51 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %52 = icmp eq i32 %14, 0
  %53 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 15
  %54 = icmp ne i8 %5, 0
  %55 = zext nneg i32 %19 to i64
  br label %56

56:                                               ; preds = %48, %130
  %57 = phi i64 [ 0, %48 ], [ %131, %130 ]
  %58 = phi ptr [ null, %48 ], [ %85, %130 ]
  %59 = phi i32 [ 0, %48 ], [ %84, %130 ]
  %60 = getelementptr inbounds ptr, ptr %30, i64 %57
  %61 = load ptr, ptr %60, align 8, !tbaa !26
  %62 = getelementptr inbounds ptr, ptr %34, i64 %57
  %63 = load ptr, ptr %62, align 8, !tbaa !26
  br i1 %49, label %83, label %64

64:                                               ; preds = %56
  %65 = icmp eq i32 %59, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %64
  %67 = load ptr, ptr %50, align 8, !tbaa !27
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 5
  %71 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %67, ptr noundef nonnull %70) #4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 26
  %75 = load i16, ptr %74, align 4, !tbaa !28
  %76 = icmp sgt i16 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = zext nneg i16 %75 to i32
  call void @b_bone_spline_setup(ptr noundef nonnull %71, i32 noundef 1, ptr noundef nonnull %7) #4
  br label %79

79:                                               ; preds = %66, %69, %77, %73, %64
  %80 = phi i32 [ %78, %77 ], [ 1, %73 ], [ 1, %69 ], [ 1, %66 ], [ %59, %64 ]
  %81 = phi ptr [ %7, %77 ], [ null, %73 ], [ null, %69 ], [ null, %66 ], [ %58, %64 ]
  %82 = add nsw i32 %80, -1
  br label %83

83:                                               ; preds = %79, %56
  %84 = phi i32 [ %82, %79 ], [ %59, %56 ]
  %85 = phi ptr [ %81, %79 ], [ %58, %56 ]
  %86 = icmp eq ptr %85, null
  %87 = getelementptr inbounds [3 x float], ptr %42, i64 %57
  br i1 %86, label %103, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 13
  %90 = zext nneg i32 %84 to i64
  %91 = getelementptr inbounds %struct.Mat4, ptr %85, i64 %90, i32 0, i64 3
  call void @mul_v3_m4v3(ptr noundef %87, ptr noundef nonnull %89, ptr noundef nonnull %91) #4
  %92 = add nuw nsw i32 %84, 1
  %93 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 26
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = sext i16 %94 to i32
  %96 = icmp slt i32 %92, %95
  %97 = getelementptr inbounds [3 x float], ptr %44, i64 %57
  br i1 %96, label %98, label %101

98:                                               ; preds = %88
  %99 = zext nneg i32 %92 to i64
  %100 = getelementptr inbounds %struct.Mat4, ptr %85, i64 %99, i32 0, i64 3
  call void @mul_v3_m4v3(ptr noundef %97, ptr noundef nonnull %89, ptr noundef nonnull %100) #4
  br label %107

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef %97, ptr noundef nonnull %102) #5
  br label %107

103:                                              ; preds = %83
  %104 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 11
  call fastcc void @copy_v3_v3(ptr noundef %87, ptr noundef nonnull %104) #5
  %105 = getelementptr inbounds [3 x float], ptr %44, i64 %57
  %106 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef %105, ptr noundef nonnull %106) #5
  br label %107

107:                                              ; preds = %98, %101, %103
  %108 = getelementptr inbounds [3 x float], ptr %42, i64 %57
  call void @mul_m4_v3(ptr noundef nonnull %51, ptr noundef %108) #4
  %109 = getelementptr inbounds [3 x float], ptr %44, i64 %57
  call void @mul_m4_v3(ptr noundef nonnull %51, ptr noundef %109) #4
  br i1 %52, label %121, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %53, align 8, !tbaa !29
  %112 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 25
  %113 = load i32, ptr %112, align 8, !tbaa !30
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 10
  %118 = load i32, ptr %117, align 8, !tbaa !19
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %107, %116
  %122 = getelementptr inbounds i32, ptr %46, i64 %57
  store i32 1, ptr %122, align 4, !tbaa !31
  br label %123

123:                                              ; preds = %121, %110, %116
  %124 = icmp ne ptr %63, null
  %125 = and i1 %54, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  %127 = getelementptr inbounds %struct.bDeformGroup, ptr %63, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %9, ptr noundef nonnull %127, i8 noundef zeroext 0) #4
  %128 = call ptr @defgroup_find_name(ptr noundef %2, ptr noundef nonnull %9) #4
  %129 = getelementptr inbounds ptr, ptr %36, i64 %57
  store ptr %128, ptr %129, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  br label %130

130:                                              ; preds = %123, %126
  %131 = add nuw nsw i64 %57, 1
  %132 = icmp eq i64 %131, %55
  br i1 %132, label %133, label %56, !llvm.loop !32

133:                                              ; preds = %130, %26
  %134 = load ptr, ptr %22, align 8, !tbaa !5
  %135 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %136 = getelementptr inbounds %struct.Mesh, ptr %134, i64 0, i32 26
  %137 = load i32, ptr %136, align 8, !tbaa !34
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, 12
  %140 = call ptr %135(i64 noundef %139, ptr noundef nonnull @.str.6) #4
  %141 = icmp eq i32 %14, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %133
  %143 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !37
  %144 = call ptr @mesh_get_derived_final(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %143) #4
  %145 = getelementptr inbounds %struct.DerivedMesh, ptr %144, i64 0, i32 71
  %146 = load ptr, ptr %145, align 8, !tbaa !38
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %142
  %149 = load i32, ptr %136, align 8, !tbaa !34
  call void @mesh_get_mapped_verts_coords(ptr noundef nonnull %144, ptr noundef %140, i32 noundef %149) #4
  br label %150

150:                                              ; preds = %148, %142
  %151 = getelementptr inbounds %struct.DerivedMesh, ptr %144, i64 0, i32 95
  %152 = load ptr, ptr %151, align 8, !tbaa !40
  call void %152(ptr noundef nonnull %144) #4
  br label %157

153:                                              ; preds = %133
  %154 = call ptr @modifiers_findByType(ptr noundef nonnull %2, i32 noundef 1) #4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  call void @subsurf_calculate_limit_positions(ptr noundef nonnull %134, ptr noundef %140) #4
  br label %157

157:                                              ; preds = %153, %156, %150
  %158 = phi i1 [ %147, %150 ], [ false, %156 ], [ true, %153 ]
  %159 = load i32, ptr %136, align 8, !tbaa !34
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.Mesh, ptr %134, i64 0, i32 15
  %163 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  br label %164

164:                                              ; preds = %161, %170
  %165 = phi i64 [ 0, %161 ], [ %172, %170 ]
  br i1 %158, label %166, label %170

166:                                              ; preds = %164
  %167 = getelementptr inbounds [3 x float], ptr %140, i64 %165
  %168 = load ptr, ptr %162, align 8, !tbaa !41
  %169 = getelementptr inbounds %struct.MVert, ptr %168, i64 %165
  call fastcc void @copy_v3_v3(ptr noundef %167, ptr noundef %169) #5
  br label %170

170:                                              ; preds = %166, %164
  %171 = getelementptr inbounds [3 x float], ptr %140, i64 %165
  call void @mul_m4_v3(ptr noundef nonnull %163, ptr noundef %171) #4
  %172 = add nuw nsw i64 %165, 1
  %173 = load i32, ptr %136, align 8, !tbaa !34
  %174 = sext i32 %173 to i64
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %164, label %176, !llvm.loop !42

176:                                              ; preds = %170, %157
  %177 = icmp eq i32 %4, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %176
  call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #4
  br label %182

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %181 = call float @mat4_to_scale(ptr noundef nonnull %180) #4
  call fastcc void @envelope_bone_weighting(ptr noundef %2, ptr noundef nonnull %134, ptr noundef %140, i32 noundef %19, ptr noundef %30, ptr noundef %34, ptr noundef %36, ptr noundef %42, ptr noundef %44, ptr noundef %46, float noundef %181) #5
  br label %182

182:                                              ; preds = %179, %178
  %183 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %2, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #4
  %184 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %184(ptr noundef %30) #4
  %185 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %185(ptr noundef %34) #4
  %186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %186(ptr noundef %36) #4
  %187 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %187(ptr noundef %42) #4
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %188(ptr noundef %44) #4
  %189 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %189(ptr noundef %46) #4
  %190 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %190(ptr noundef %140) #4
  br label %191

191:                                              ; preds = %21, %6, %182
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #6
  ret void
}

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @bone_skinnable_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !21
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !19
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %7, i1 true, i1 %11
  %13 = and i32 %9, 4096
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %27 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %23, ptr noundef nonnull %26) #4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 26
  %31 = load i16, ptr %30, align 4, !tbaa !28
  %32 = sext i16 %31 to i32
  br label %33

33:                                               ; preds = %16, %20, %25, %29
  %34 = phi i32 [ %32, %29 ], [ 1, %25 ], [ 1, %20 ], [ 1, %16 ]
  %35 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !26
  %37 = icmp ne ptr %36, null
  %38 = icmp sgt i32 %34, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %47

40:                                               ; preds = %33, %40
  %41 = phi ptr [ %44, %40 ], [ %36, %33 ]
  %42 = phi i32 [ %45, %40 ], [ 0, %33 ]
  store ptr %1, ptr %41, align 8, !tbaa !26
  %43 = load ptr, ptr %35, align 8, !tbaa !26
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  store ptr %44, ptr %35, align 8, !tbaa !26
  %45 = add nuw nsw i32 %42, 1
  %46 = icmp eq i32 %45, %34
  br i1 %46, label %47, label %40, !llvm.loop !43

47:                                               ; preds = %40, %3, %33
  %48 = phi i32 [ %34, %33 ], [ 0, %3 ], [ %34, %40 ]
  ret i32 %48
}

; Function Attrs: optsize
declare zeroext i8 @ED_vgroup_data_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @dgroup_skinnable_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !21
  %6 = and i32 %5, 8
  %7 = load ptr, ptr %2, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %6, 0
  %11 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !19
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %10, i1 true, i1 %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %18 = and i32 %12, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.anon.1, ptr %2, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %30 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %26, ptr noundef nonnull %29) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 26
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = sext i16 %34 to i32
  br label %36

36:                                               ; preds = %20, %24, %28, %32
  %37 = phi i32 [ %35, %32 ], [ 1, %28 ], [ 1, %24 ], [ 1, %20 ]
  br i1 %10, label %49, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %40 = load i32, ptr %39, align 8, !tbaa !29
  %41 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %42 = load i32, ptr %41, align 8, !tbaa !30
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = load i32, ptr %17, align 8, !tbaa !19
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45, %36
  %50 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %51 = tail call ptr @defgroup_find_name(ptr noundef nonnull %0, ptr noundef nonnull %50) #4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call ptr @ED_vgroup_add_name(ptr noundef nonnull %0, ptr noundef nonnull %50) #4
  br label %55

55:                                               ; preds = %49, %53, %45, %38
  %56 = phi ptr [ %51, %49 ], [ %54, %53 ], [ null, %45 ], [ null, %38 ]
  %57 = getelementptr inbounds %struct.anon.1, ptr %2, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !26
  %59 = icmp ne ptr %58, null
  %60 = icmp sgt i32 %37, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %69

62:                                               ; preds = %55, %62
  %63 = phi ptr [ %66, %62 ], [ %58, %55 ]
  %64 = phi i32 [ %67, %62 ], [ 0, %55 ]
  store ptr %56, ptr %63, align 8, !tbaa !26
  %65 = load ptr, ptr %57, align 8, !tbaa !26
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  store ptr %66, ptr %57, align 8, !tbaa !26
  %67 = add nuw nsw i32 %64, 1
  %68 = icmp eq i32 %67, %37
  br i1 %68, label %69, label %62, !llvm.loop !44

69:                                               ; preds = %62, %3, %16, %55
  %70 = phi i32 [ %37, %55 ], [ 0, %16 ], [ 0, %3 ], [ %37, %62 ]
  ret i32 %70
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @b_bone_spline_setup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  store float %3, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mesh_get_mapped_verts_coords(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @subsurf_calculate_limit_positions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @envelope_bone_weighting(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef readonly %9, float noundef %10) unnamed_addr #0 {
  %12 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = lshr i8 %13, 4
  %15 = and i8 %14, 1
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !21
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  %20 = and i8 %13, 40
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  %23 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %24 = load i32, ptr %23, align 8, !tbaa !34
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %92

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %28 = icmp eq ptr %6, null
  %29 = icmp sgt i32 %3, 0
  %30 = zext nneg i32 %3 to i64
  br label %31

31:                                               ; preds = %26, %87
  %32 = phi i64 [ 0, %26 ], [ %88, %87 ]
  br i1 %22, label %39, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %27, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.MVert, ptr %34, i64 %32, i32 2
  %36 = load i8, ptr %35, align 2, !tbaa !47
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %87, label %39

39:                                               ; preds = %33, %31
  br i1 %28, label %43, label %40

40:                                               ; preds = %39
  %41 = trunc i64 %32 to i32
  %42 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef %0, i32 noundef %41, i8 noundef zeroext %15) #4
  br label %43

43:                                               ; preds = %39, %40
  %44 = phi i32 [ %42, %40 ], [ -1, %39 ]
  br i1 %29, label %45, label %87

45:                                               ; preds = %43
  %46 = getelementptr inbounds [3 x float], ptr %2, i64 %32
  %47 = icmp ne i32 %44, -1
  %48 = trunc i64 %32 to i32
  %49 = trunc i64 %32 to i32
  br label %50

50:                                               ; preds = %45, %84
  %51 = phi i64 [ 0, %45 ], [ %85, %84 ]
  %52 = getelementptr inbounds i32, ptr %9, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !31
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds ptr, ptr %4, i64 %51
  %57 = load ptr, ptr %56, align 8, !tbaa !26
  %58 = getelementptr inbounds ptr, ptr %5, i64 %51
  %59 = load ptr, ptr %58, align 8, !tbaa !26
  %60 = getelementptr inbounds [3 x float], ptr %7, i64 %51
  %61 = getelementptr inbounds [3 x float], ptr %8, i64 %51
  %62 = getelementptr inbounds %struct.Bone, ptr %57, i64 0, i32 22
  %63 = load float, ptr %62, align 4, !tbaa !49
  %64 = fmul float %63, %10
  %65 = getelementptr inbounds %struct.Bone, ptr %57, i64 0, i32 23
  %66 = load float, ptr %65, align 8, !tbaa !50
  %67 = fmul float %66, %10
  %68 = getelementptr inbounds %struct.Bone, ptr %57, i64 0, i32 15
  %69 = load float, ptr %68, align 8, !tbaa !51
  %70 = fmul float %69, %10
  %71 = tail call float @distfactor_to_bone(ptr noundef %46, ptr noundef %60, ptr noundef %61, float noundef %64, float noundef %67, float noundef %70) #4
  %72 = fcmp une float %71, 0.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  tail call void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef %59, i32 noundef %49, float noundef %71, i32 noundef 1) #4
  br label %75

74:                                               ; preds = %55
  tail call void @ED_vgroup_vert_remove(ptr noundef %0, ptr noundef %59, i32 noundef %48) #4
  br label %75

75:                                               ; preds = %74, %73
  br i1 %28, label %84, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds ptr, ptr %6, i64 %51
  %78 = load ptr, ptr %77, align 8, !tbaa !26
  %79 = icmp ne ptr %78, null
  %80 = select i1 %79, i1 %47, i1 false
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  br i1 %72, label %82, label %83

82:                                               ; preds = %81
  tail call void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef nonnull %78, i32 noundef %44, float noundef %71, i32 noundef 1) #4
  br label %84

83:                                               ; preds = %81
  tail call void @ED_vgroup_vert_remove(ptr noundef %0, ptr noundef nonnull %78, i32 noundef %44) #4
  br label %84

84:                                               ; preds = %75, %76, %83, %82, %50
  %85 = add nuw nsw i64 %51, 1
  %86 = icmp eq i64 %85, %30
  br i1 %86, label %87, label %50, !llvm.loop !52

87:                                               ; preds = %84, %43, %33
  %88 = add nuw nsw i64 %32, 1
  %89 = load i32, ptr %23, align 8, !tbaa !34
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %31, label %92, !llvm.loop !53

92:                                               ; preds = %87, %11
  ret void
}

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @distfactor_to_bone(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_vgroup_vert_add(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_vgroup_vert_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 296}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 128}
!18 = !{!"bArmature", !7, i64 0, !8, i64 120, !14, i64 128, !14, i64 144, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !11, i64 208, !11, i64 210, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252}
!19 = !{!20, !12, i64 176}
!20 = !{!"Bone", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !14, i64 32, !9, i64 48, !15, i64 112, !9, i64 116, !9, i64 128, !9, i64 140, !12, i64 176, !9, i64 180, !9, i64 192, !9, i64 204, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !9, i64 308, !12, i64 320, !11, i64 324, !9, i64 326}
!21 = !{!6, !12, i64 432}
!22 = !{!23, !8, i64 0}
!23 = !{!"", !8, i64 0, !8, i64 8, !12, i64 16}
!24 = !{!23, !12, i64 16}
!25 = !{!23, !8, i64 8}
!26 = !{!8, !8, i64 0}
!27 = !{!6, !8, i64 288}
!28 = !{!20, !11, i64 324}
!29 = !{!18, !12, i64 216}
!30 = !{!20, !12, i64 320}
!31 = !{!12, !12, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !12, i64 1280}
!35 = !{!"Mesh", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !36, i64 280, !36, i64 480, !36, i64 680, !36, i64 880, !36, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !9, i64 1308, !9, i64 1320, !9, i64 1332, !12, i64 1344, !11, i64 1348, !11, i64 1350, !15, i64 1352, !12, i64 1356, !9, i64 1360, !9, i64 1361, !9, i64 1362, !9, i64 1363, !9, i64 1364, !9, i64 1365, !11, i64 1366, !8, i64 1368}
!36 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!37 = !{!16, !16, i64 0}
!38 = !{!39, !8, i64 1488}
!39 = !{!"DerivedMesh", !36, i64 0, !36, i64 200, !36, i64 400, !36, i64 600, !36, i64 800, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !8, i64 1032, !8, i64 1040, !12, i64 1048, !15, i64 1052, !12, i64 1056, !12, i64 1060, !8, i64 1064, !9, i64 1072, !8, i64 1080, !8, i64 1088, !8, i64 1096, !8, i64 1104, !8, i64 1112, !8, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !8, i64 1176, !8, i64 1184, !8, i64 1192, !8, i64 1200, !8, i64 1208, !8, i64 1216, !8, i64 1224, !8, i64 1232, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !8, i64 1304, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !8, i64 1344, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !8, i64 1392, !8, i64 1400, !8, i64 1408, !8, i64 1416, !8, i64 1424, !8, i64 1432, !8, i64 1440, !8, i64 1448, !8, i64 1456, !8, i64 1464, !8, i64 1472, !8, i64 1480, !8, i64 1488, !8, i64 1496, !8, i64 1504, !8, i64 1512, !8, i64 1520, !8, i64 1528, !8, i64 1536, !8, i64 1544, !8, i64 1552, !8, i64 1560, !8, i64 1568, !8, i64 1576, !8, i64 1584, !8, i64 1592, !8, i64 1600, !8, i64 1608, !8, i64 1616, !8, i64 1624, !8, i64 1632, !8, i64 1640, !8, i64 1648, !8, i64 1656, !8, i64 1664, !8, i64 1672, !8, i64 1680}
!40 = !{!39, !8, i64 1680}
!41 = !{!35, !8, i64 232}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = !{!15, !15, i64 0}
!46 = !{!35, !9, i64 1365}
!47 = !{!48, !9, i64 18}
!48 = !{!"MVert", !9, i64 0, !9, i64 12, !9, i64 18, !9, i64 19}
!49 = !{!20, !15, i64 300}
!50 = !{!20, !15, i64 304}
!51 = !{!20, !15, i64 272}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
