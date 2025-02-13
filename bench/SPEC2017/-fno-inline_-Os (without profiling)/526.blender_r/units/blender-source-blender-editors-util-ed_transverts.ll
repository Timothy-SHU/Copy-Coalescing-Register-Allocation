; ModuleID = 'blender/source/blender/editors/util/ed_transverts.c'
source_filename = "blender/source/blender/editors/util/ed_transverts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TransVertStore = type { ptr, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.TransVert = type { ptr, [3 x float], [3 x float], [3 x float], i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.ED_transverts_create_from_obedit = private unnamed_addr constant [33 x i8] c"ED_transverts_create_from_obedit\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_transverts_update_obedit(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  tail call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #7
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !19
  switch i16 %10, label %159 [
    i16 1, label %11
    i16 2, label %14
    i16 3, label %14
    i16 25, label %79
    i16 22, label %149
  ]

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %1) #7
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  tail call void @BM_mesh_normals_update(ptr noundef %13) #7
  br label %159

14:                                               ; preds = %2, %2
  %15 = load ptr, ptr %7, align 8, !tbaa !11
  %16 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %15) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %159, label %19

19:                                               ; preds = %14
  %20 = and i32 %6, 2
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %76
  %23 = phi ptr [ %17, %19 ], [ %77, %76 ]
  %24 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, i1 true, i1 %21
  br i1 %27, label %76, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !26
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi i32 [ %38, %72 ], [ %30, %32 ]
  %36 = phi ptr [ %74, %72 ], [ %25, %32 ]
  %37 = phi ptr [ %73, %72 ], [ %33, %32 ]
  %38 = add nsw i32 %35, -1
  %39 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 10
  %40 = load i8, ptr %39, align 2, !tbaa !27
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %44 = load i8, ptr %43, align 4, !tbaa !29
  %45 = and i8 %44, 1
  %46 = icmp ne i8 %45, 0
  %47 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !30
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = or i1 %46, %50
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i64
  %54 = getelementptr inbounds %struct.TransVert, ptr %37, i64 %53
  %55 = icmp eq i8 %45, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %57 = load ptr, ptr %54, align 8, !tbaa !31
  %58 = getelementptr inbounds %struct.TransVert, ptr %37, i64 %53, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %57, ptr noundef nonnull %58) #9
  call fastcc void @add_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %3) #9
  %59 = load ptr, ptr %54, align 8, !tbaa !31
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %59, ptr noundef nonnull %58) #9
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %36, i64 0, i64 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %3) #9
  %61 = getelementptr inbounds %struct.TransVert, ptr %54, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %62

62:                                               ; preds = %56, %42
  %63 = phi ptr [ %61, %56 ], [ %54, %42 ]
  %64 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %65 = load i8, ptr %64, align 1, !tbaa !33
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %68 = or i1 %46, %67
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds %struct.TransVert, ptr %63, i64 %70
  br label %72

72:                                               ; preds = %62, %34
  %73 = phi ptr [ %71, %62 ], [ %37, %34 ]
  %74 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 1
  %75 = icmp eq i32 %38, 0
  br i1 %75, label %76, label %34, !llvm.loop !34

76:                                               ; preds = %72, %28, %22
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %23) #7
  tail call void @BKE_nurb_handles_test(ptr noundef nonnull %23, i8 noundef zeroext 1) #7
  %77 = load ptr, ptr %23, align 8, !tbaa !22
  %78 = icmp eq ptr %77, null
  br i1 %78, label %159, label %22, !llvm.loop !36

79:                                               ; preds = %2
  %80 = load ptr, ptr %7, align 8, !tbaa !11
  %81 = getelementptr inbounds %struct.bArmature, ptr %80, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !37
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = icmp eq ptr %83, null
  br i1 %84, label %143, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %0, align 8, !tbaa !26
  %87 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  br label %88

88:                                               ; preds = %85, %110
  %89 = phi ptr [ %83, %85 ], [ %113, %110 ]
  %90 = phi i32 [ 0, %85 ], [ %112, %110 ]
  %91 = phi ptr [ %86, %85 ], [ %111, %110 ]
  %92 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !39
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %88
  %97 = and i32 %93, 4
  %98 = icmp ne i32 %97, 0
  %99 = icmp ne ptr %91, null
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %102 = load ptr, ptr %91, align 8, !tbaa !31
  %103 = getelementptr inbounds %struct.TransVert, ptr %91, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %102, ptr noundef nonnull %103) #9
  %104 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 8
  call fastcc void @add_v3_v3(ptr noundef nonnull %104, ptr noundef nonnull %4) #9
  %105 = add nsw i32 %90, 1
  %106 = load i32, ptr %87, align 8, !tbaa !41
  %107 = icmp slt i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = getelementptr inbounds %struct.TransVert, ptr %91, i64 %108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br label %110

110:                                              ; preds = %88, %96, %101
  %111 = phi ptr [ %109, %101 ], [ %91, %96 ], [ %91, %88 ]
  %112 = phi i32 [ %105, %101 ], [ %90, %96 ], [ %90, %88 ]
  %113 = load ptr, ptr %89, align 8, !tbaa !22
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %88, !llvm.loop !42

115:                                              ; preds = %110
  %116 = load ptr, ptr %81, align 8, !tbaa !37
  %117 = load ptr, ptr %116, align 8, !tbaa !22
  %118 = icmp eq ptr %117, null
  br i1 %118, label %143, label %119

119:                                              ; preds = %115, %140
  %120 = phi ptr [ %141, %140 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  %122 = load i32, ptr %121, align 4, !tbaa !39
  %123 = and i32 %122, 16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !43
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 9
  %131 = load i32, ptr %130, align 4, !tbaa !39
  %132 = and i32 %131, 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 7
  %136 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %135, ptr noundef nonnull %136) #9
  br label %140

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 8
  %139 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %138, ptr noundef nonnull %139) #9
  br label %140

140:                                              ; preds = %119, %125, %137, %134
  %141 = load ptr, ptr %120, align 8, !tbaa !22
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %119, !llvm.loop !44

143:                                              ; preds = %140, %79, %115
  %144 = getelementptr inbounds %struct.bArmature, ptr %80, i64 0, i32 8
  %145 = load i32, ptr %144, align 8, !tbaa !45
  %146 = and i32 %145, 256
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %143
  tail call void @transform_armature_mirror_update(ptr noundef %1) #7
  br label %159

149:                                              ; preds = %2
  %150 = load ptr, ptr %7, align 8, !tbaa !11
  %151 = getelementptr inbounds %struct.Lattice, ptr %150, i64 0, i32 26
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  %153 = load ptr, ptr %152, align 8, !tbaa !48
  %154 = getelementptr inbounds %struct.Lattice, ptr %153, i64 0, i32 5
  %155 = load i16, ptr %154, align 2, !tbaa !50
  %156 = and i16 %155, 2
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %149
  tail call void @outside_lattice(ptr noundef nonnull %153) #7
  br label %159

159:                                              ; preds = %76, %14, %149, %158, %2, %143, %148, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = load float, ptr %2, align 4, !tbaa !51
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  %4 = load float, ptr %0, align 4, !tbaa !51
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !51
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_handles_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  store float %3, ptr %0, align 4, !tbaa !51
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @transform_armature_mirror_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @outside_lattice(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @ED_transverts_check_obedit(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !19
  switch i16 %3, label %4 [
    i16 25, label %7
    i16 22, label %7
    i16 1, label %7
    i16 3, label %7
    i16 2, label %7
  ]

4:                                                ; preds = %1
  %5 = icmp eq i16 %3, 5
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %1, %1, %1, %1, %1, %4
  %8 = phi i8 [ 1, %1 ], [ %6, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_transverts_create_from_obedit(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x ptr], align 16
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !19
  switch i16 %9, label %505 [
    i16 1, label %10
    i16 25, label %176
    i16 2, label %254
    i16 3, label %254
    i16 5, label %421
    i16 22, label %452
  ]

10:                                               ; preds = %3
  %11 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %1) #7
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  store ptr %11, ptr %5, align 16, !tbaa !22
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr null, ptr %13, align 8, !tbaa !22
  store i32 0, ptr %7, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !52
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %10
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 1, ptr noundef null) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %118, label %22

22:                                               ; preds = %19, %33
  %23 = phi ptr [ %34, %33 ], [ %20, %19 ]
  %24 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 2) #9, !range !53
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 1) #9, !range !53
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %23, i32 noundef 1) #9
  %30 = load i32, ptr %7, align 8, !tbaa !41
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %7, align 8, !tbaa !41
  br label %33

32:                                               ; preds = %26, %22
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %23, i32 noundef 0) #9
  br label %33

33:                                               ; preds = %29, %32
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %118, label %22, !llvm.loop !54

36:                                               ; preds = %10
  %37 = and i32 %16, 2
  %38 = icmp eq i32 %37, 0
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 1, ptr noundef null) #9
  %40 = icmp eq ptr %39, null
  br i1 %38, label %77, label %41

41:                                               ; preds = %36
  br i1 %40, label %46, label %42

42:                                               ; preds = %41, %42
  %43 = phi ptr [ %44, %42 ], [ %39, %41 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %43, i32 noundef 0) #9
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %42, !llvm.loop !55

46:                                               ; preds = %42, %41
  %47 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 2, ptr noundef null) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %46, %61
  %50 = phi ptr [ %62, %61 ], [ %47, %46 ]
  %51 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %50, i8 noundef zeroext 2) #9, !range !53
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %50, i8 noundef zeroext 1) #9, !range !53
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  call fastcc void @_bm_elem_index_set(ptr noundef %58, i32 noundef 1) #9
  %59 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !60
  call fastcc void @_bm_elem_index_set(ptr noundef %60, i32 noundef 1) #9
  br label %61

61:                                               ; preds = %49, %53, %56
  %62 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %49, !llvm.loop !61

64:                                               ; preds = %61, %46
  %65 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 1, ptr noundef null) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %118, label %67

67:                                               ; preds = %64, %74
  %68 = phi ptr [ %75, %74 ], [ %65, %64 ]
  %69 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %68) #9
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, ptr %7, align 8, !tbaa !41
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %7, align 8, !tbaa !41
  br label %74

74:                                               ; preds = %67, %71
  %75 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %118, label %67, !llvm.loop !62

77:                                               ; preds = %36
  br i1 %40, label %82, label %78

78:                                               ; preds = %77, %78
  %79 = phi ptr [ %80, %78 ], [ %39, %77 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %79, i32 noundef 0) #9
  %80 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %78, !llvm.loop !63

82:                                               ; preds = %78, %77
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 3, ptr noundef null) #9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %82, %102
  %86 = phi ptr [ %103, %102 ], [ %83, %82 ]
  %87 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %86, i8 noundef zeroext 2) #9, !range !53
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %86, i8 noundef zeroext 1) #9, !range !53
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  %93 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %86) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %92, %95
  %96 = phi ptr [ %99, %95 ], [ %93, %92 ]
  %97 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !64
  call fastcc void @_bm_elem_index_set(ptr noundef %98, i32 noundef 1) #9
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %95, !llvm.loop !66

101:                                              ; preds = %95, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %102

102:                                              ; preds = %85, %89, %101
  %103 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %85, !llvm.loop !67

105:                                              ; preds = %102, %82
  %106 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 1, ptr noundef null) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %105, %115
  %109 = phi ptr [ %116, %115 ], [ %106, %105 ]
  %110 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %109) #9
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, ptr %7, align 8, !tbaa !41
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %7, align 8, !tbaa !41
  br label %115

115:                                              ; preds = %108, %112
  %116 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %108, !llvm.loop !68

118:                                              ; preds = %33, %74, %115, %19, %64, %105
  %119 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 7
  %120 = load i8, ptr %119, align 4, !tbaa !69
  %121 = or i8 %120, 1
  store i8 %121, ptr %119, align 4, !tbaa !69
  %122 = load i32, ptr %7, align 8, !tbaa !41
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %162, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !22
  %126 = sext i32 %122 to i64
  %127 = mul nsw i64 %126, 48
  %128 = call ptr %125(i64 noundef %127, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %128, ptr %0, align 8, !tbaa !26
  %129 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %12, i8 noundef zeroext 1, ptr noundef null) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %160, label %131

131:                                              ; preds = %124
  %132 = and i32 %2, 4
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %131, %155
  %135 = phi ptr [ %128, %131 ], [ %157, %155 ]
  %136 = phi ptr [ %129, %131 ], [ %158, %155 ]
  %137 = phi i32 [ 0, %131 ], [ %156, %155 ]
  %138 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %136) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %154, label %140

140:                                              ; preds = %134
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %136, i32 noundef %137) #9
  %141 = getelementptr inbounds %struct.TransVert, ptr %135, i64 0, i32 1
  %142 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %141, ptr noundef nonnull %142) #9
  store ptr %142, ptr %135, align 8, !tbaa !31
  %143 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %136) #9
  %144 = icmp eq i32 %143, 1
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds %struct.TransVert, ptr %135, i64 0, i32 4
  store i32 %145, ptr %146, align 4, !tbaa !72
  br i1 %133, label %151, label %147

147:                                              ; preds = %140
  %148 = or disjoint i32 %145, 4
  store i32 %148, ptr %146, align 4, !tbaa !72
  %149 = getelementptr inbounds %struct.TransVert, ptr %135, i64 0, i32 3
  %150 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %149, ptr noundef nonnull %150) #9
  br label %151

151:                                              ; preds = %147, %140
  %152 = getelementptr inbounds %struct.TransVert, ptr %135, i64 1
  %153 = add nsw i32 %137, 1
  br label %155

154:                                              ; preds = %134
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %136, i32 noundef -1) #9
  br label %155

155:                                              ; preds = %151, %154
  %156 = phi i32 [ %153, %151 ], [ %137, %154 ]
  %157 = phi ptr [ %152, %151 ], [ %135, %154 ]
  %158 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %134, !llvm.loop !73

160:                                              ; preds = %155, %124
  %161 = load ptr, ptr %0, align 8, !tbaa !26
  store ptr %161, ptr %13, align 8, !tbaa !22
  br label %164

162:                                              ; preds = %118
  %163 = load ptr, ptr %0, align 8, !tbaa !26
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi ptr [ %163, %162 ], [ %161, %160 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %175, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !74
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  call void @BM_mesh_elem_table_ensure(ptr noundef %12, i8 noundef zeroext 1) #7
  %172 = load ptr, ptr %168, align 8, !tbaa !74
  %173 = getelementptr inbounds %struct.DerivedMesh, ptr %172, i64 0, i32 71
  %174 = load ptr, ptr %173, align 8, !tbaa !75
  call void %174(ptr noundef %172, ptr noundef nonnull @set_mapped_co, ptr noundef nonnull %5, i32 noundef 0) #7
  br label %175

175:                                              ; preds = %171, %167, %164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br label %502

176:                                              ; preds = %3
  %177 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %178 = load ptr, ptr %177, align 8, !tbaa !11
  %179 = getelementptr inbounds %struct.bArmature, ptr %178, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !37
  %181 = tail call i32 @BLI_countlist(ptr noundef %180) #7
  %182 = shl nsw i32 %181, 1
  %183 = load ptr, ptr @MEM_callocN, align 8, !tbaa !22
  %184 = sext i32 %182 to i64
  %185 = mul nsw i64 %184, 48
  %186 = tail call ptr %183(i64 noundef %185, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %186, ptr %0, align 8, !tbaa !26
  %187 = load ptr, ptr %179, align 8, !tbaa !37
  %188 = load ptr, ptr %187, align 8, !tbaa !22
  %189 = icmp eq ptr %188, null
  br i1 %189, label %502, label %190

190:                                              ; preds = %176
  %191 = getelementptr inbounds %struct.bArmature, ptr %178, i64 0, i32 15
  %192 = and i32 %2, 1
  %193 = icmp ne i32 %192, 0
  br label %194

194:                                              ; preds = %190, %250
  %195 = phi ptr [ %188, %190 ], [ %252, %250 ]
  %196 = phi ptr [ %186, %190 ], [ %251, %250 ]
  %197 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 10
  %198 = load i32, ptr %197, align 8, !tbaa !77
  %199 = load i32, ptr %191, align 8, !tbaa !78
  %200 = and i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %250, label %202

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 9
  %204 = load i32, ptr %203, align 4, !tbaa !39
  %205 = and i32 %204, 2
  %206 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !43
  %208 = icmp eq ptr %207, null
  %209 = and i32 %204, 16
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %208, i1 true, i1 %210
  %212 = and i32 %204, 4
  br i1 %211, label %215, label %213

213:                                              ; preds = %202
  %214 = icmp eq i32 %205, 0
  br i1 %214, label %239, label %218

215:                                              ; preds = %202
  %216 = icmp ne i32 %212, 0
  %217 = icmp eq i32 %205, 0
  br i1 %217, label %239, label %224

218:                                              ; preds = %213
  %219 = icmp ne i32 %212, 0
  %220 = getelementptr inbounds %struct.EditBone, ptr %207, i64 0, i32 9
  %221 = load i32, ptr %220, align 4, !tbaa !39
  %222 = and i32 %221, 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %215, %218
  %225 = phi i1 [ %219, %218 ], [ %216, %215 ]
  %226 = getelementptr inbounds %struct.TransVert, ptr %196, i64 0, i32 1
  %227 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %226, ptr noundef nonnull %227) #9
  store ptr %227, ptr %196, align 8, !tbaa !31
  %228 = getelementptr inbounds %struct.TransVert, ptr %196, i64 0, i32 4
  store i32 1, ptr %228, align 4, !tbaa !72
  %229 = getelementptr inbounds %struct.TransVert, ptr %196, i64 1
  %230 = load i32, ptr %7, align 8, !tbaa !41
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %7, align 8, !tbaa !41
  br label %232

232:                                              ; preds = %224, %218
  %233 = phi i1 [ %225, %224 ], [ %219, %218 ]
  %234 = phi ptr [ %229, %224 ], [ %196, %218 ]
  %235 = select i1 %193, i1 %233, i1 false
  br i1 %235, label %236, label %250

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.TransVert, ptr %234, i64 0, i32 1
  %238 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %237, ptr noundef nonnull %238) #9
  store ptr %238, ptr %234, align 8, !tbaa !31
  br label %244

239:                                              ; preds = %215, %213
  %240 = icmp eq i32 %212, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.TransVert, ptr %196, i64 0, i32 1
  %243 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %242, ptr noundef nonnull %243) #9
  store ptr %243, ptr %196, align 8, !tbaa !31
  br label %244

244:                                              ; preds = %241, %236
  %245 = phi ptr [ %234, %236 ], [ %196, %241 ]
  %246 = getelementptr inbounds %struct.TransVert, ptr %245, i64 0, i32 4
  store i32 1, ptr %246, align 4, !tbaa !72
  %247 = getelementptr inbounds %struct.TransVert, ptr %245, i64 1
  %248 = load i32, ptr %7, align 8, !tbaa !41
  %249 = add nsw i32 %248, 1
  store i32 %249, ptr %7, align 8, !tbaa !41
  br label %250

250:                                              ; preds = %244, %232, %239, %194
  %251 = phi ptr [ %196, %194 ], [ %234, %232 ], [ %196, %239 ], [ %247, %244 ]
  %252 = load ptr, ptr %195, align 8, !tbaa !22
  %253 = icmp eq ptr %252, null
  br i1 %253, label %502, label %194, !llvm.loop !79

254:                                              ; preds = %3, %3
  %255 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %256 = load ptr, ptr %255, align 8, !tbaa !11
  %257 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %256) #7
  %258 = load ptr, ptr %257, align 8, !tbaa !22
  %259 = icmp eq ptr %258, null
  br i1 %259, label %282, label %260

260:                                              ; preds = %254, %274
  %261 = phi ptr [ %277, %274 ], [ %258, %254 ]
  %262 = phi i32 [ %276, %274 ], [ 0, %254 ]
  %263 = getelementptr inbounds %struct.Nurb, ptr %261, i64 0, i32 2
  %264 = load i16, ptr %263, align 8, !tbaa !80
  %265 = icmp eq i16 %264, 1
  %266 = getelementptr inbounds %struct.Nurb, ptr %261, i64 0, i32 6
  %267 = load i32, ptr %266, align 8, !tbaa !25
  br i1 %265, label %268, label %270

268:                                              ; preds = %260
  %269 = mul nsw i32 %267, 3
  br label %274

270:                                              ; preds = %260
  %271 = getelementptr inbounds %struct.Nurb, ptr %261, i64 0, i32 7
  %272 = load i32, ptr %271, align 4, !tbaa !81
  %273 = mul nsw i32 %272, %267
  br label %274

274:                                              ; preds = %268, %270
  %275 = phi i32 [ %269, %268 ], [ %273, %270 ]
  %276 = add nsw i32 %275, %262
  %277 = load ptr, ptr %261, align 8, !tbaa !22
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %260, !llvm.loop !82

279:                                              ; preds = %274
  %280 = sext i32 %276 to i64
  %281 = mul nsw i64 %280, 48
  br label %282

282:                                              ; preds = %279, %254
  %283 = phi i64 [ 0, %254 ], [ %281, %279 ]
  %284 = load ptr, ptr @MEM_callocN, align 8, !tbaa !22
  %285 = tail call ptr %284(i64 noundef %283, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %285, ptr %0, align 8, !tbaa !26
  %286 = load ptr, ptr %257, align 8, !tbaa !22
  %287 = icmp eq ptr %286, null
  br i1 %287, label %502, label %288

288:                                              ; preds = %282
  %289 = and i32 %2, 2
  %290 = icmp ne i32 %289, 0
  %291 = and i32 %2, 4
  %292 = icmp eq i32 %291, 0
  br label %293

293:                                              ; preds = %288, %417
  %294 = phi ptr [ %286, %288 ], [ %419, %417 ]
  %295 = phi ptr [ %285, %288 ], [ %418, %417 ]
  %296 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 2
  %297 = load i16, ptr %296, align 8, !tbaa !80
  %298 = icmp eq i16 %297, 1
  %299 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 6
  %300 = load i32, ptr %299, align 8, !tbaa !25
  br i1 %298, label %301, label %383

301:                                              ; preds = %293
  %302 = icmp eq i32 %300, 0
  br i1 %302, label %417, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 18
  %305 = load ptr, ptr %304, align 8, !tbaa !23
  br label %306

306:                                              ; preds = %303, %379
  %307 = phi i32 [ %310, %379 ], [ %300, %303 ]
  %308 = phi ptr [ %381, %379 ], [ %305, %303 ]
  %309 = phi ptr [ %380, %379 ], [ %295, %303 ]
  %310 = add nsw i32 %307, -1
  %311 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 10
  %312 = load i8, ptr %311, align 2, !tbaa !27
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %379

314:                                              ; preds = %306
  %315 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 8
  %316 = load i8, ptr %315, align 4, !tbaa !29
  %317 = and i8 %316, 1
  %318 = icmp ne i8 %317, 0
  %319 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 7
  %320 = load i8, ptr %319, align 1, !tbaa !30
  %321 = and i8 %320, 1
  %322 = icmp eq i8 %321, 0
  %323 = and i1 %290, %318
  %324 = or i1 %322, %323
  br i1 %324, label %340, label %325

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.TransVert, ptr %309, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %326, ptr noundef nonnull %308) #9
  store ptr %308, ptr %309, align 8, !tbaa !31
  %327 = load i8, ptr %319, align 1, !tbaa !30
  %328 = and i8 %327, 1
  %329 = zext nneg i8 %328 to i32
  %330 = getelementptr inbounds %struct.TransVert, ptr %309, i64 0, i32 4
  store i32 %329, ptr %330, align 4, !tbaa !72
  br i1 %292, label %334, label %331

331:                                              ; preds = %325
  %332 = or disjoint i32 %329, 4
  store i32 %332, ptr %330, align 4, !tbaa !72
  %333 = getelementptr inbounds %struct.TransVert, ptr %309, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %294, ptr noundef nonnull %308, ptr noundef nonnull %333) #7
  br label %334

334:                                              ; preds = %331, %325
  %335 = getelementptr inbounds %struct.TransVert, ptr %309, i64 1
  %336 = load i32, ptr %7, align 8, !tbaa !41
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %7, align 8, !tbaa !41
  %338 = load i8, ptr %315, align 4, !tbaa !29
  %339 = and i8 %338, 1
  br label %340

340:                                              ; preds = %334, %314
  %341 = phi i8 [ %339, %334 ], [ %317, %314 ]
  %342 = phi ptr [ %335, %334 ], [ %309, %314 ]
  %343 = icmp eq i8 %341, 0
  br i1 %343, label %358, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.TransVert, ptr %342, i64 0, i32 1
  %346 = getelementptr inbounds [3 x [3 x float]], ptr %308, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %345, ptr noundef nonnull %346) #9
  store ptr %346, ptr %342, align 8, !tbaa !31
  %347 = load i8, ptr %315, align 4, !tbaa !29
  %348 = and i8 %347, 1
  %349 = zext nneg i8 %348 to i32
  %350 = getelementptr inbounds %struct.TransVert, ptr %342, i64 0, i32 4
  store i32 %349, ptr %350, align 4, !tbaa !72
  br i1 %292, label %354, label %351

351:                                              ; preds = %344
  %352 = or disjoint i32 %349, 4
  store i32 %352, ptr %350, align 4, !tbaa !72
  %353 = getelementptr inbounds %struct.TransVert, ptr %342, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %294, ptr noundef nonnull %308, ptr noundef nonnull %353) #7
  br label %354

354:                                              ; preds = %351, %344
  %355 = getelementptr inbounds %struct.TransVert, ptr %342, i64 1
  %356 = load i32, ptr %7, align 8, !tbaa !41
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr %7, align 8, !tbaa !41
  br label %358

358:                                              ; preds = %354, %340
  %359 = phi ptr [ %355, %354 ], [ %342, %340 ]
  %360 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 9
  %361 = load i8, ptr %360, align 1, !tbaa !33
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  %364 = or i1 %323, %363
  br i1 %364, label %379, label %365

365:                                              ; preds = %358
  %366 = getelementptr inbounds %struct.TransVert, ptr %359, i64 0, i32 1
  %367 = getelementptr inbounds [3 x [3 x float]], ptr %308, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %366, ptr noundef nonnull %367) #9
  store ptr %367, ptr %359, align 8, !tbaa !31
  %368 = load i8, ptr %360, align 1, !tbaa !33
  %369 = and i8 %368, 1
  %370 = zext nneg i8 %369 to i32
  %371 = getelementptr inbounds %struct.TransVert, ptr %359, i64 0, i32 4
  store i32 %370, ptr %371, align 4, !tbaa !72
  br i1 %292, label %375, label %372

372:                                              ; preds = %365
  %373 = or disjoint i32 %370, 4
  store i32 %373, ptr %371, align 4, !tbaa !72
  %374 = getelementptr inbounds %struct.TransVert, ptr %359, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %294, ptr noundef nonnull %308, ptr noundef nonnull %374) #7
  br label %375

375:                                              ; preds = %372, %365
  %376 = getelementptr inbounds %struct.TransVert, ptr %359, i64 1
  %377 = load i32, ptr %7, align 8, !tbaa !41
  %378 = add nsw i32 %377, 1
  store i32 %378, ptr %7, align 8, !tbaa !41
  br label %379

379:                                              ; preds = %358, %375, %306
  %380 = phi ptr [ %309, %306 ], [ %359, %358 ], [ %376, %375 ]
  %381 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 1
  %382 = icmp eq i32 %310, 0
  br i1 %382, label %417, label %306, !llvm.loop !83

383:                                              ; preds = %293
  %384 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 7
  %385 = load i32, ptr %384, align 4, !tbaa !81
  %386 = mul nsw i32 %385, %300
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %417, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 17
  %390 = load ptr, ptr %389, align 8, !tbaa !84
  br label %391

391:                                              ; preds = %388, %413
  %392 = phi i32 [ %395, %413 ], [ %386, %388 ]
  %393 = phi ptr [ %415, %413 ], [ %390, %388 ]
  %394 = phi ptr [ %414, %413 ], [ %295, %388 ]
  %395 = add nsw i32 %392, -1
  %396 = getelementptr inbounds %struct.BPoint, ptr %393, i64 0, i32 4
  %397 = load i16, ptr %396, align 2, !tbaa !85
  %398 = icmp eq i16 %397, 0
  br i1 %398, label %399, label %413

399:                                              ; preds = %391
  %400 = getelementptr inbounds %struct.BPoint, ptr %393, i64 0, i32 3
  %401 = load i16, ptr %400, align 4, !tbaa !87
  %402 = and i16 %401, 1
  %403 = icmp eq i16 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.TransVert, ptr %394, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %405, ptr noundef nonnull %393) #9
  store ptr %393, ptr %394, align 8, !tbaa !31
  %406 = load i16, ptr %400, align 4, !tbaa !87
  %407 = and i16 %406, 1
  %408 = zext nneg i16 %407 to i32
  %409 = getelementptr inbounds %struct.TransVert, ptr %394, i64 0, i32 4
  store i32 %408, ptr %409, align 4, !tbaa !72
  %410 = getelementptr inbounds %struct.TransVert, ptr %394, i64 1
  %411 = load i32, ptr %7, align 8, !tbaa !41
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %7, align 8, !tbaa !41
  br label %413

413:                                              ; preds = %399, %404, %391
  %414 = phi ptr [ %410, %404 ], [ %394, %399 ], [ %394, %391 ]
  %415 = getelementptr inbounds %struct.BPoint, ptr %393, i64 1
  %416 = icmp eq i32 %395, 0
  br i1 %416, label %417, label %391, !llvm.loop !88

417:                                              ; preds = %413, %379, %383, %301
  %418 = phi ptr [ %295, %301 ], [ %295, %383 ], [ %380, %379 ], [ %414, %413 ]
  %419 = load ptr, ptr %294, align 8, !tbaa !22
  %420 = icmp eq ptr %419, null
  br i1 %420, label %502, label %293, !llvm.loop !89

421:                                              ; preds = %3
  %422 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %423 = load ptr, ptr %422, align 8, !tbaa !11
  %424 = getelementptr inbounds %struct.MetaBall, ptr %423, i64 0, i32 4
  %425 = load ptr, ptr %424, align 8, !tbaa !90
  %426 = tail call i32 @BLI_countlist(ptr noundef %425) #7
  %427 = load ptr, ptr @MEM_callocN, align 8, !tbaa !22
  %428 = sext i32 %426 to i64
  %429 = mul nsw i64 %428, 48
  %430 = tail call ptr %427(i64 noundef %429, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %430, ptr %0, align 8, !tbaa !26
  %431 = load ptr, ptr %424, align 8, !tbaa !90
  %432 = load ptr, ptr %431, align 8, !tbaa !22
  %433 = icmp eq ptr %432, null
  br i1 %433, label %502, label %434

434:                                              ; preds = %421, %448
  %435 = phi ptr [ %450, %448 ], [ %432, %421 ]
  %436 = phi ptr [ %449, %448 ], [ %430, %421 ]
  %437 = getelementptr inbounds %struct.MetaElem, ptr %435, i64 0, i32 4
  %438 = load i16, ptr %437, align 2, !tbaa !92
  %439 = and i16 %438, 1
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %448, label %441

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.MetaElem, ptr %435, i64 0, i32 7
  store ptr %442, ptr %436, align 8, !tbaa !31
  %443 = getelementptr inbounds %struct.TransVert, ptr %436, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %443, ptr noundef nonnull %442) #9
  %444 = getelementptr inbounds %struct.TransVert, ptr %436, i64 0, i32 4
  store i32 1, ptr %444, align 4, !tbaa !72
  %445 = getelementptr inbounds %struct.TransVert, ptr %436, i64 1
  %446 = load i32, ptr %7, align 8, !tbaa !41
  %447 = add nsw i32 %446, 1
  store i32 %447, ptr %7, align 8, !tbaa !41
  br label %448

448:                                              ; preds = %441, %434
  %449 = phi ptr [ %445, %441 ], [ %436, %434 ]
  %450 = load ptr, ptr %435, align 8, !tbaa !22
  %451 = icmp eq ptr %450, null
  br i1 %451, label %502, label %434, !llvm.loop !94

452:                                              ; preds = %3
  %453 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %454 = load ptr, ptr %453, align 8, !tbaa !11
  %455 = getelementptr inbounds %struct.Lattice, ptr %454, i64 0, i32 26
  %456 = load ptr, ptr %455, align 8, !tbaa !46
  %457 = load ptr, ptr %456, align 8, !tbaa !48
  %458 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 21
  %459 = load ptr, ptr %458, align 8, !tbaa !95
  %460 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 2
  %461 = load i16, ptr %460, align 8, !tbaa !96
  %462 = sext i16 %461 to i32
  %463 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 3
  %464 = load i16, ptr %463, align 2, !tbaa !97
  %465 = sext i16 %464 to i32
  %466 = mul nsw i32 %465, %462
  %467 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 4
  %468 = load i16, ptr %467, align 4, !tbaa !98
  %469 = sext i16 %468 to i32
  %470 = mul nsw i32 %466, %469
  %471 = load ptr, ptr @MEM_callocN, align 8, !tbaa !22
  %472 = sext i32 %470 to i64
  %473 = mul nsw i64 %472, 48
  %474 = tail call ptr %471(i64 noundef %473, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %474, ptr %0, align 8, !tbaa !26
  %475 = icmp eq i32 %470, 0
  br i1 %475, label %502, label %476

476:                                              ; preds = %452, %498
  %477 = phi i32 [ %480, %498 ], [ %470, %452 ]
  %478 = phi ptr [ %500, %498 ], [ %459, %452 ]
  %479 = phi ptr [ %499, %498 ], [ %474, %452 ]
  %480 = add nsw i32 %477, -1
  %481 = getelementptr inbounds %struct.BPoint, ptr %478, i64 0, i32 3
  %482 = load i16, ptr %481, align 4, !tbaa !87
  %483 = and i16 %482, 1
  %484 = icmp eq i16 %483, 0
  br i1 %484, label %498, label %485

485:                                              ; preds = %476
  %486 = getelementptr inbounds %struct.BPoint, ptr %478, i64 0, i32 4
  %487 = load i16, ptr %486, align 2, !tbaa !85
  %488 = icmp eq i16 %487, 0
  br i1 %488, label %489, label %498

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.TransVert, ptr %479, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %490, ptr noundef nonnull %478) #9
  store ptr %478, ptr %479, align 8, !tbaa !31
  %491 = load i16, ptr %481, align 4, !tbaa !87
  %492 = and i16 %491, 1
  %493 = zext nneg i16 %492 to i32
  %494 = getelementptr inbounds %struct.TransVert, ptr %479, i64 0, i32 4
  store i32 %493, ptr %494, align 4, !tbaa !72
  %495 = getelementptr inbounds %struct.TransVert, ptr %479, i64 1
  %496 = load i32, ptr %7, align 8, !tbaa !41
  %497 = add nsw i32 %496, 1
  store i32 %497, ptr %7, align 8, !tbaa !41
  br label %498

498:                                              ; preds = %485, %489, %476
  %499 = phi ptr [ %495, %489 ], [ %479, %485 ], [ %479, %476 ]
  %500 = getelementptr inbounds %struct.BPoint, ptr %478, i64 1
  %501 = icmp eq i32 %480, 0
  br i1 %501, label %502, label %476, !llvm.loop !99

502:                                              ; preds = %498, %448, %417, %250, %452, %421, %282, %176, %175
  %503 = load i32, ptr %7, align 8, !tbaa !41
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %3, %502
  %506 = load ptr, ptr %0, align 8, !tbaa !26
  %507 = icmp eq ptr %506, null
  br i1 %507, label %510, label %508

508:                                              ; preds = %505
  %509 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  call void %509(ptr noundef nonnull %506) #7
  store ptr null, ptr %0, align 8, !tbaa !26
  br label %510

510:                                              ; preds = %508, %505, %502
  %511 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 2
  store i32 %2, ptr %511, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #9
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !100
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !101
  ret i32 %3
}

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_mapped_co(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !22
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = load ptr, ptr %6, align 8, !tbaa !20
  %10 = tail call ptr @BM_vert_at_index(ptr noundef %9, i32 noundef %1) #7
  %11 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %10) #9
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %30, label %13

13:                                               ; preds = %5
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %14, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %14, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %2) #9
  %21 = load i32, ptr %15, align 4, !tbaa !72
  %22 = or i32 %21, 2
  store i32 %22, ptr %15, align 4, !tbaa !72
  br label %30

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %25 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %24, ptr noundef %2) #9
  %26 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %14, i32 2
  %27 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %24, ptr noundef nonnull %26) #9
  %28 = fcmp olt float %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef %2) #9
  br label %30

30:                                               ; preds = %19, %29, %23, %5
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_bezt_calc_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_transverts_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !26
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  tail call void %5(ptr noundef nonnull %2) #7
  store ptr null, ptr %0, align 8, !tbaa !26
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_transverts_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %2) #9, !range !104
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i32 [ 0, %7 ], [ 1, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !105
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !102
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !102
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !102
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !102
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !102
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !102
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !102
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !106
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !102
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !110
  tail call void %28(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #9
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !51
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 12}
!6 = !{!"TransVertStore", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 296}
!12 = !{!"Object", !13, i64 0, !7, i64 120, !7, i64 128, !14, i64 136, !14, i64 138, !10, i64 140, !10, i64 144, !10, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !15, i64 312, !7, i64 360, !16, i64 368, !16, i64 384, !16, i64 400, !16, i64 416, !10, i64 432, !10, i64 436, !7, i64 440, !7, i64 448, !10, i64 456, !10, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !17, i64 616, !17, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !10, i64 944, !14, i64 948, !14, i64 950, !14, i64 952, !14, i64 954, !14, i64 956, !14, i64 958, !14, i64 960, !14, i64 962, !14, i64 964, !8, i64 966, !8, i64 967, !10, i64 968, !10, i64 972, !10, i64 976, !10, i64 980, !10, i64 984, !17, i64 988, !17, i64 992, !17, i64 996, !17, i64 1000, !17, i64 1004, !17, i64 1008, !17, i64 1012, !17, i64 1016, !17, i64 1020, !17, i64 1024, !17, i64 1028, !17, i64 1032, !14, i64 1036, !14, i64 1038, !14, i64 1040, !8, i64 1042, !8, i64 1043, !14, i64 1044, !8, i64 1046, !8, i64 1047, !17, i64 1048, !17, i64 1052, !16, i64 1056, !16, i64 1072, !16, i64 1088, !16, i64 1104, !17, i64 1120, !14, i64 1124, !14, i64 1126, !8, i64 1128, !10, i64 1144, !10, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !14, i64 1162, !8, i64 1164, !16, i64 1176, !16, i64 1192, !16, i64 1208, !16, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !14, i64 1266, !17, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !18, i64 1304, !18, i64 1312, !10, i64 1320, !10, i64 1324, !16, i64 1328, !16, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !16, i64 1400, !7, i64 1416}
!13 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !14, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!14 = !{!"short", !8, i64 0}
!15 = !{!"bAnimVizSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !14, i64 16, !14, i64 18, !14, i64 20, !14, i64 22, !14, i64 24, !14, i64 26, !14, i64 28, !14, i64 30, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!16 = !{!"ListBase", !7, i64 0, !7, i64 8}
!17 = !{!"float", !8, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!12, !14, i64 136}
!20 = !{!21, !7, i64 0}
!21 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !7, i64 40, !7, i64 48, !18, i64 56, !7, i64 64, !10, i64 72, !7, i64 80, !10, i64 88, !14, i64 92, !14, i64 94, !7, i64 96, !10, i64 104}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !7, i64 72}
!24 = !{!"Nurb", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 18, !14, i64 20, !14, i64 22, !10, i64 24, !10, i64 28, !8, i64 32, !14, i64 36, !14, i64 38, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !14, i64 80, !14, i64 82, !10, i64 84}
!25 = !{!24, !10, i64 24}
!26 = !{!6, !7, i64 0}
!27 = !{!28, !8, i64 54}
!28 = !{!"BezTriple", !8, i64 0, !17, i64 36, !17, i64 40, !17, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !17, i64 56, !17, i64 60, !17, i64 64, !8, i64 68}
!29 = !{!28, !8, i64 52}
!30 = !{!28, !8, i64 51}
!31 = !{!32, !7, i64 0}
!32 = !{!"TransVert", !7, i64 0, !8, i64 8, !8, i64 20, !8, i64 32, !10, i64 44}
!33 = !{!28, !8, i64 53}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = !{!38, !7, i64 160}
!38 = !{!"bArmature", !13, i64 0, !7, i64 120, !16, i64 128, !16, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !14, i64 208, !14, i64 210, !10, i64 212, !10, i64 216, !10, i64 220, !14, i64 224, !14, i64 226, !14, i64 228, !14, i64 230, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252}
!39 = !{!40, !10, i64 132}
!40 = !{!"EditBone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !17, i64 104, !8, i64 108, !8, i64 120, !10, i64 132, !10, i64 136, !17, i64 140, !17, i64 144, !17, i64 148, !17, i64 152, !17, i64 156, !17, i64 160, !17, i64 164, !17, i64 168, !17, i64 172, !17, i64 176, !14, i64 180}
!41 = !{!6, !10, i64 8}
!42 = distinct !{!42, !35}
!43 = !{!40, !7, i64 24}
!44 = distinct !{!44, !35}
!45 = !{!38, !10, i64 192}
!46 = !{!47, !7, i64 272}
!47 = !{!"Lattice", !13, i64 0, !7, i64 120, !14, i64 128, !14, i64 130, !14, i64 132, !14, i64 134, !14, i64 136, !14, i64 138, !14, i64 140, !14, i64 142, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !10, i64 148, !17, i64 152, !17, i64 156, !17, i64 160, !17, i64 164, !17, i64 168, !17, i64 172, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !7, i64 272}
!48 = !{!49, !7, i64 0}
!49 = !{!"EditLatt", !7, i64 0, !10, i64 8, !8, i64 12}
!50 = !{!47, !14, i64 134}
!51 = !{!17, !17, i64 0}
!52 = !{!21, !14, i64 92}
!53 = !{i8 0, i8 3}
!54 = distinct !{!54, !35}
!55 = distinct !{!55, !35}
!56 = !{!57, !7, i64 24}
!57 = !{!"BMEdge", !58, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !59, i64 48, !59, i64 64}
!58 = !{!"BMHeader", !7, i64 0, !10, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!59 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!60 = !{!57, !7, i64 32}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
!63 = distinct !{!63, !35}
!64 = !{!65, !7, i64 16}
!65 = !{!"BMLoop", !58, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!66 = distinct !{!66, !35}
!67 = distinct !{!67, !35}
!68 = distinct !{!68, !35}
!69 = !{!70, !8, i64 28}
!70 = !{!"BMesh", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 136, !71, i64 144, !71, i64 344, !71, i64 544, !71, i64 744, !14, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !16, i64 960, !7, i64 976, !16, i64 984, !7, i64 1000}
!71 = !{!"CustomData", !7, i64 0, !8, i64 8, !10, i64 172, !10, i64 176, !10, i64 180, !7, i64 184, !7, i64 192}
!72 = !{!32, !10, i64 44}
!73 = distinct !{!73, !35}
!74 = !{!21, !7, i64 48}
!75 = !{!76, !7, i64 1488}
!76 = !{!"DerivedMesh", !71, i64 0, !71, i64 200, !71, i64 400, !71, i64 600, !71, i64 800, !10, i64 1000, !10, i64 1004, !10, i64 1008, !10, i64 1012, !10, i64 1016, !10, i64 1020, !10, i64 1024, !7, i64 1032, !7, i64 1040, !10, i64 1048, !17, i64 1052, !10, i64 1056, !10, i64 1060, !7, i64 1064, !8, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !7, i64 1464, !7, i64 1472, !7, i64 1480, !7, i64 1488, !7, i64 1496, !7, i64 1504, !7, i64 1512, !7, i64 1520, !7, i64 1528, !7, i64 1536, !7, i64 1544, !7, i64 1552, !7, i64 1560, !7, i64 1568, !7, i64 1576, !7, i64 1584, !7, i64 1592, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !7, i64 1632, !7, i64 1640, !7, i64 1648, !7, i64 1656, !7, i64 1664, !7, i64 1672, !7, i64 1680}
!77 = !{!40, !10, i64 136}
!78 = !{!38, !10, i64 216}
!79 = distinct !{!79, !35}
!80 = !{!24, !14, i64 16}
!81 = !{!24, !10, i64 28}
!82 = distinct !{!82, !35}
!83 = distinct !{!83, !35}
!84 = !{!24, !7, i64 64}
!85 = !{!86, !14, i64 26}
!86 = !{!"BPoint", !8, i64 0, !17, i64 16, !17, i64 20, !14, i64 24, !14, i64 26, !17, i64 28, !17, i64 32}
!87 = !{!86, !14, i64 24}
!88 = distinct !{!88, !35}
!89 = distinct !{!89, !35}
!90 = !{!91, !7, i64 160}
!91 = !{!"MetaBall", !13, i64 0, !7, i64 120, !16, i64 128, !16, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 185, !14, i64 186, !14, i64 188, !14, i64 190, !8, i64 192, !8, i64 204, !8, i64 216, !17, i64 228, !17, i64 232, !17, i64 236, !7, i64 240}
!92 = !{!93, !14, i64 26}
!93 = !{!"MetaElem", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !14, i64 26, !14, i64 28, !14, i64 30, !17, i64 32, !17, i64 36, !17, i64 40, !8, i64 44, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !7, i64 88, !7, i64 96}
!94 = distinct !{!94, !35}
!95 = !{!47, !7, i64 176}
!96 = !{!47, !14, i64 128}
!97 = !{!47, !14, i64 130}
!98 = !{!47, !14, i64 132}
!99 = distinct !{!99, !35}
!100 = !{!58, !8, i64 13}
!101 = !{!58, !10, i64 8}
!102 = !{!103, !7, i64 48}
!103 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !10, i64 56, !8, i64 60}
!104 = !{i8 0, i8 2}
!105 = !{!103, !8, i64 60}
!106 = !{!103, !7, i64 40}
!107 = !{!70, !7, i64 32}
!108 = !{!70, !7, i64 40}
!109 = !{!70, !7, i64 56}
!110 = !{!8, !8, i64 0}
