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
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  tail call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #7
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !48
  switch i16 %10, label %159 [
    i16 1, label %11
    i16 2, label %14
    i16 3, label %14
    i16 25, label %79
    i16 22, label %149
  ]

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %1) #7
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  tail call void @BM_mesh_normals_update(ptr noundef %13) #7
  br label %159

14:                                               ; preds = %2, %2
  %15 = load ptr, ptr %7, align 8, !tbaa !40
  %16 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %15) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %159, label %19

19:                                               ; preds = %14
  %20 = and i32 %6, 2
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %76
  %23 = phi ptr [ %17, %19 ], [ %77, %76 ]
  %24 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, i1 true, i1 %21
  br i1 %27, label %76, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !54
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !55
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi i32 [ %38, %72 ], [ %30, %32 ]
  %36 = phi ptr [ %74, %72 ], [ %25, %32 ]
  %37 = phi ptr [ %73, %72 ], [ %33, %32 ]
  %38 = add nsw i32 %35, -1
  %39 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 10
  %40 = load i8, ptr %39, align 2, !tbaa !56
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %44 = load i8, ptr %43, align 4, !tbaa !58
  %45 = and i8 %44, 1
  %46 = icmp ne i8 %45, 0
  %47 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !59
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
  %57 = load ptr, ptr %54, align 8, !tbaa !60
  %58 = getelementptr inbounds %struct.TransVert, ptr %37, i64 %53, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %57, ptr noundef nonnull %58) #9
  call fastcc void @add_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %3) #9
  %59 = load ptr, ptr %54, align 8, !tbaa !60
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %59, ptr noundef nonnull %58) #9
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %36, i64 0, i64 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %3) #9
  %61 = getelementptr inbounds %struct.TransVert, ptr %54, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %62

62:                                               ; preds = %56, %42
  %63 = phi ptr [ %61, %56 ], [ %54, %42 ]
  %64 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %65 = load i8, ptr %64, align 1, !tbaa !62
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
  br i1 %75, label %76, label %34, !llvm.loop !63

76:                                               ; preds = %72, %28, %22
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %23) #7
  tail call void @BKE_nurb_handles_test(ptr noundef nonnull %23, i8 noundef zeroext 1) #7
  %77 = load ptr, ptr %23, align 8, !tbaa !51
  %78 = icmp eq ptr %77, null
  br i1 %78, label %159, label %22, !llvm.loop !65

79:                                               ; preds = %2
  %80 = load ptr, ptr %7, align 8, !tbaa !40
  %81 = getelementptr inbounds %struct.bArmature, ptr %80, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !66
  %83 = load ptr, ptr %82, align 8, !tbaa !51
  %84 = icmp eq ptr %83, null
  br i1 %84, label %143, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %0, align 8, !tbaa !55
  %87 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  br label %88

88:                                               ; preds = %85, %110
  %89 = phi ptr [ %83, %85 ], [ %113, %110 ]
  %90 = phi i32 [ 0, %85 ], [ %112, %110 ]
  %91 = phi ptr [ %86, %85 ], [ %111, %110 ]
  %92 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !68
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
  %102 = load ptr, ptr %91, align 8, !tbaa !60
  %103 = getelementptr inbounds %struct.TransVert, ptr %91, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %102, ptr noundef nonnull %103) #9
  %104 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 8
  call fastcc void @add_v3_v3(ptr noundef nonnull %104, ptr noundef nonnull %4) #9
  %105 = add nsw i32 %90, 1
  %106 = load i32, ptr %87, align 8, !tbaa !70
  %107 = icmp slt i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = getelementptr inbounds %struct.TransVert, ptr %91, i64 %108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br label %110

110:                                              ; preds = %88, %96, %101
  %111 = phi ptr [ %109, %101 ], [ %91, %96 ], [ %91, %88 ]
  %112 = phi i32 [ %105, %101 ], [ %90, %96 ], [ %90, %88 ]
  %113 = load ptr, ptr %89, align 8, !tbaa !51
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %88, !llvm.loop !71

115:                                              ; preds = %110
  %116 = load ptr, ptr %81, align 8, !tbaa !66
  %117 = load ptr, ptr %116, align 8, !tbaa !51
  %118 = icmp eq ptr %117, null
  br i1 %118, label %143, label %119

119:                                              ; preds = %115, %140
  %120 = phi ptr [ %141, %140 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  %122 = load i32, ptr %121, align 4, !tbaa !68
  %123 = and i32 %122, 16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !72
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.EditBone, ptr %127, i64 0, i32 9
  %131 = load i32, ptr %130, align 4, !tbaa !68
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
  %141 = load ptr, ptr %120, align 8, !tbaa !51
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %119, !llvm.loop !73

143:                                              ; preds = %140, %79, %115
  %144 = getelementptr inbounds %struct.bArmature, ptr %80, i64 0, i32 8
  %145 = load i32, ptr %144, align 8, !tbaa !74
  %146 = and i32 %145, 256
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %143
  tail call void @transform_armature_mirror_update(ptr noundef %1) #7
  br label %159

149:                                              ; preds = %2
  %150 = load ptr, ptr %7, align 8, !tbaa !40
  %151 = getelementptr inbounds %struct.Lattice, ptr %150, i64 0, i32 26
  %152 = load ptr, ptr %151, align 8, !tbaa !75
  %153 = load ptr, ptr %152, align 8, !tbaa !77
  %154 = getelementptr inbounds %struct.Lattice, ptr %153, i64 0, i32 5
  %155 = load i16, ptr %154, align 2, !tbaa !79
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
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !80 {
  %4 = load float, ptr %1, align 4, !tbaa !81
  %5 = load float, ptr %2, align 4, !tbaa !81
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !81
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !81
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !81
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !81
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !81
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !82 {
  %3 = load float, ptr %1, align 4, !tbaa !81
  %4 = load float, ptr %0, align 4, !tbaa !81
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !81
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !81
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !81
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !81
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !81
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !81
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_handles_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !83 {
  %3 = load float, ptr %1, align 4, !tbaa !81
  store float %3, ptr %0, align 4, !tbaa !81
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !81
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !81
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @transform_armature_mirror_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @outside_lattice(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @ED_transverts_check_obedit(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !48
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
  store i32 0, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !48
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
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  store ptr %11, ptr %5, align 16, !tbaa !51
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr null, ptr %13, align 8, !tbaa !51
  store i32 0, ptr %7, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !84
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
  %24 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 2) #9, !range !85
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 1) #9, !range !85
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %23, i32 noundef 1) #9
  %30 = load i32, ptr %7, align 8, !tbaa !70
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %7, align 8, !tbaa !70
  br label %33

32:                                               ; preds = %26, %22
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %23, i32 noundef 0) #9
  br label %33

33:                                               ; preds = %29, %32
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %118, label %22, !llvm.loop !86

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
  br i1 %45, label %46, label %42, !llvm.loop !87

46:                                               ; preds = %42, %41
  %47 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 2, ptr noundef null) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %46, %61
  %50 = phi ptr [ %62, %61 ], [ %47, %46 ]
  %51 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %50, i8 noundef zeroext 2) #9, !range !85
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %50, i8 noundef zeroext 1) #9, !range !85
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !88
  call fastcc void @_bm_elem_index_set(ptr noundef %58, i32 noundef 1) #9
  %59 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  call fastcc void @_bm_elem_index_set(ptr noundef %60, i32 noundef 1) #9
  br label %61

61:                                               ; preds = %49, %53, %56
  %62 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %49, !llvm.loop !93

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
  %72 = load i32, ptr %7, align 8, !tbaa !70
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %7, align 8, !tbaa !70
  br label %74

74:                                               ; preds = %67, %71
  %75 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %118, label %67, !llvm.loop !94

77:                                               ; preds = %36
  br i1 %40, label %82, label %78

78:                                               ; preds = %77, %78
  %79 = phi ptr [ %80, %78 ], [ %39, %77 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %79, i32 noundef 0) #9
  %80 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %78, !llvm.loop !95

82:                                               ; preds = %78, %77
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %12, i8 noundef zeroext 3, ptr noundef null) #9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %82, %102
  %86 = phi ptr [ %103, %102 ], [ %83, %82 ]
  %87 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %86, i8 noundef zeroext 2) #9, !range !85
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %86, i8 noundef zeroext 1) #9, !range !85
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
  %98 = load ptr, ptr %97, align 8, !tbaa !96
  call fastcc void @_bm_elem_index_set(ptr noundef %98, i32 noundef 1) #9
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %95, !llvm.loop !98

101:                                              ; preds = %95, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %102

102:                                              ; preds = %85, %89, %101
  %103 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %85, !llvm.loop !99

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
  %113 = load i32, ptr %7, align 8, !tbaa !70
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %7, align 8, !tbaa !70
  br label %115

115:                                              ; preds = %108, %112
  %116 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %108, !llvm.loop !100

118:                                              ; preds = %33, %74, %115, %19, %64, %105
  %119 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 7
  %120 = load i8, ptr %119, align 4, !tbaa !101
  %121 = or i8 %120, 1
  store i8 %121, ptr %119, align 4, !tbaa !101
  %122 = load i32, ptr %7, align 8, !tbaa !70
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %162, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %126 = sext i32 %122 to i64
  %127 = mul nsw i64 %126, 48
  %128 = call ptr %125(i64 noundef %127, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %128, ptr %0, align 8, !tbaa !55
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
  store ptr %142, ptr %135, align 8, !tbaa !60
  %143 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %136) #9
  %144 = icmp eq i32 %143, 1
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds %struct.TransVert, ptr %135, i64 0, i32 4
  store i32 %145, ptr %146, align 4, !tbaa !104
  br i1 %133, label %151, label %147

147:                                              ; preds = %140
  %148 = or disjoint i32 %145, 4
  store i32 %148, ptr %146, align 4, !tbaa !104
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
  br i1 %159, label %160, label %134, !llvm.loop !105

160:                                              ; preds = %155, %124
  %161 = load ptr, ptr %0, align 8, !tbaa !55
  store ptr %161, ptr %13, align 8, !tbaa !51
  br label %164

162:                                              ; preds = %118
  %163 = load ptr, ptr %0, align 8, !tbaa !55
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi ptr [ %163, %162 ], [ %161, %160 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %175, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !106
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  call void @BM_mesh_elem_table_ensure(ptr noundef %12, i8 noundef zeroext 1) #7
  %172 = load ptr, ptr %168, align 8, !tbaa !106
  %173 = getelementptr inbounds %struct.DerivedMesh, ptr %172, i64 0, i32 71
  %174 = load ptr, ptr %173, align 8, !tbaa !107
  call void %174(ptr noundef %172, ptr noundef nonnull @set_mapped_co, ptr noundef nonnull %5, i32 noundef 0) #7
  br label %175

175:                                              ; preds = %171, %167, %164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br label %502

176:                                              ; preds = %3
  %177 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %178 = load ptr, ptr %177, align 8, !tbaa !40
  %179 = getelementptr inbounds %struct.bArmature, ptr %178, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !66
  %181 = tail call i32 @BLI_countlist(ptr noundef %180) #7
  %182 = shl nsw i32 %181, 1
  %183 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %184 = sext i32 %182 to i64
  %185 = mul nsw i64 %184, 48
  %186 = tail call ptr %183(i64 noundef %185, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %186, ptr %0, align 8, !tbaa !55
  %187 = load ptr, ptr %179, align 8, !tbaa !66
  %188 = load ptr, ptr %187, align 8, !tbaa !51
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
  %198 = load i32, ptr %197, align 8, !tbaa !109
  %199 = load i32, ptr %191, align 8, !tbaa !110
  %200 = and i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %250, label %202

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 9
  %204 = load i32, ptr %203, align 4, !tbaa !68
  %205 = and i32 %204, 2
  %206 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !72
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
  %221 = load i32, ptr %220, align 4, !tbaa !68
  %222 = and i32 %221, 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %215, %218
  %225 = phi i1 [ %219, %218 ], [ %216, %215 ]
  %226 = getelementptr inbounds %struct.TransVert, ptr %196, i64 0, i32 1
  %227 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %226, ptr noundef nonnull %227) #9
  store ptr %227, ptr %196, align 8, !tbaa !60
  %228 = getelementptr inbounds %struct.TransVert, ptr %196, i64 0, i32 4
  store i32 1, ptr %228, align 4, !tbaa !104
  %229 = getelementptr inbounds %struct.TransVert, ptr %196, i64 1
  %230 = load i32, ptr %7, align 8, !tbaa !70
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %7, align 8, !tbaa !70
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
  store ptr %238, ptr %234, align 8, !tbaa !60
  br label %244

239:                                              ; preds = %215, %213
  %240 = icmp eq i32 %212, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.TransVert, ptr %196, i64 0, i32 1
  %243 = getelementptr inbounds %struct.EditBone, ptr %195, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %242, ptr noundef nonnull %243) #9
  store ptr %243, ptr %196, align 8, !tbaa !60
  br label %244

244:                                              ; preds = %241, %236
  %245 = phi ptr [ %234, %236 ], [ %196, %241 ]
  %246 = getelementptr inbounds %struct.TransVert, ptr %245, i64 0, i32 4
  store i32 1, ptr %246, align 4, !tbaa !104
  %247 = getelementptr inbounds %struct.TransVert, ptr %245, i64 1
  %248 = load i32, ptr %7, align 8, !tbaa !70
  %249 = add nsw i32 %248, 1
  store i32 %249, ptr %7, align 8, !tbaa !70
  br label %250

250:                                              ; preds = %244, %232, %239, %194
  %251 = phi ptr [ %196, %194 ], [ %234, %232 ], [ %196, %239 ], [ %247, %244 ]
  %252 = load ptr, ptr %195, align 8, !tbaa !51
  %253 = icmp eq ptr %252, null
  br i1 %253, label %502, label %194, !llvm.loop !111

254:                                              ; preds = %3, %3
  %255 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %256 = load ptr, ptr %255, align 8, !tbaa !40
  %257 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %256) #7
  %258 = load ptr, ptr %257, align 8, !tbaa !51
  %259 = icmp eq ptr %258, null
  br i1 %259, label %282, label %260

260:                                              ; preds = %254, %274
  %261 = phi ptr [ %277, %274 ], [ %258, %254 ]
  %262 = phi i32 [ %276, %274 ], [ 0, %254 ]
  %263 = getelementptr inbounds %struct.Nurb, ptr %261, i64 0, i32 2
  %264 = load i16, ptr %263, align 8, !tbaa !112
  %265 = icmp eq i16 %264, 1
  %266 = getelementptr inbounds %struct.Nurb, ptr %261, i64 0, i32 6
  %267 = load i32, ptr %266, align 8, !tbaa !54
  br i1 %265, label %268, label %270

268:                                              ; preds = %260
  %269 = mul nsw i32 %267, 3
  br label %274

270:                                              ; preds = %260
  %271 = getelementptr inbounds %struct.Nurb, ptr %261, i64 0, i32 7
  %272 = load i32, ptr %271, align 4, !tbaa !113
  %273 = mul nsw i32 %272, %267
  br label %274

274:                                              ; preds = %268, %270
  %275 = phi i32 [ %269, %268 ], [ %273, %270 ]
  %276 = add nsw i32 %275, %262
  %277 = load ptr, ptr %261, align 8, !tbaa !51
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %260, !llvm.loop !114

279:                                              ; preds = %274
  %280 = sext i32 %276 to i64
  %281 = mul nsw i64 %280, 48
  br label %282

282:                                              ; preds = %279, %254
  %283 = phi i64 [ 0, %254 ], [ %281, %279 ]
  %284 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %285 = tail call ptr %284(i64 noundef %283, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %285, ptr %0, align 8, !tbaa !55
  %286 = load ptr, ptr %257, align 8, !tbaa !51
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
  %297 = load i16, ptr %296, align 8, !tbaa !112
  %298 = icmp eq i16 %297, 1
  %299 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 6
  %300 = load i32, ptr %299, align 8, !tbaa !54
  br i1 %298, label %301, label %383

301:                                              ; preds = %293
  %302 = icmp eq i32 %300, 0
  br i1 %302, label %417, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 18
  %305 = load ptr, ptr %304, align 8, !tbaa !52
  br label %306

306:                                              ; preds = %303, %379
  %307 = phi i32 [ %310, %379 ], [ %300, %303 ]
  %308 = phi ptr [ %381, %379 ], [ %305, %303 ]
  %309 = phi ptr [ %380, %379 ], [ %295, %303 ]
  %310 = add nsw i32 %307, -1
  %311 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 10
  %312 = load i8, ptr %311, align 2, !tbaa !56
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %379

314:                                              ; preds = %306
  %315 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 8
  %316 = load i8, ptr %315, align 4, !tbaa !58
  %317 = and i8 %316, 1
  %318 = icmp ne i8 %317, 0
  %319 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 7
  %320 = load i8, ptr %319, align 1, !tbaa !59
  %321 = and i8 %320, 1
  %322 = icmp eq i8 %321, 0
  %323 = and i1 %290, %318
  %324 = or i1 %322, %323
  br i1 %324, label %340, label %325

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.TransVert, ptr %309, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %326, ptr noundef nonnull %308) #9
  store ptr %308, ptr %309, align 8, !tbaa !60
  %327 = load i8, ptr %319, align 1, !tbaa !59
  %328 = and i8 %327, 1
  %329 = zext nneg i8 %328 to i32
  %330 = getelementptr inbounds %struct.TransVert, ptr %309, i64 0, i32 4
  store i32 %329, ptr %330, align 4, !tbaa !104
  br i1 %292, label %334, label %331

331:                                              ; preds = %325
  %332 = or disjoint i32 %329, 4
  store i32 %332, ptr %330, align 4, !tbaa !104
  %333 = getelementptr inbounds %struct.TransVert, ptr %309, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %294, ptr noundef nonnull %308, ptr noundef nonnull %333) #7
  br label %334

334:                                              ; preds = %331, %325
  %335 = getelementptr inbounds %struct.TransVert, ptr %309, i64 1
  %336 = load i32, ptr %7, align 8, !tbaa !70
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %7, align 8, !tbaa !70
  %338 = load i8, ptr %315, align 4, !tbaa !58
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
  store ptr %346, ptr %342, align 8, !tbaa !60
  %347 = load i8, ptr %315, align 4, !tbaa !58
  %348 = and i8 %347, 1
  %349 = zext nneg i8 %348 to i32
  %350 = getelementptr inbounds %struct.TransVert, ptr %342, i64 0, i32 4
  store i32 %349, ptr %350, align 4, !tbaa !104
  br i1 %292, label %354, label %351

351:                                              ; preds = %344
  %352 = or disjoint i32 %349, 4
  store i32 %352, ptr %350, align 4, !tbaa !104
  %353 = getelementptr inbounds %struct.TransVert, ptr %342, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %294, ptr noundef nonnull %308, ptr noundef nonnull %353) #7
  br label %354

354:                                              ; preds = %351, %344
  %355 = getelementptr inbounds %struct.TransVert, ptr %342, i64 1
  %356 = load i32, ptr %7, align 8, !tbaa !70
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr %7, align 8, !tbaa !70
  br label %358

358:                                              ; preds = %354, %340
  %359 = phi ptr [ %355, %354 ], [ %342, %340 ]
  %360 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 0, i32 9
  %361 = load i8, ptr %360, align 1, !tbaa !62
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  %364 = or i1 %323, %363
  br i1 %364, label %379, label %365

365:                                              ; preds = %358
  %366 = getelementptr inbounds %struct.TransVert, ptr %359, i64 0, i32 1
  %367 = getelementptr inbounds [3 x [3 x float]], ptr %308, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %366, ptr noundef nonnull %367) #9
  store ptr %367, ptr %359, align 8, !tbaa !60
  %368 = load i8, ptr %360, align 1, !tbaa !62
  %369 = and i8 %368, 1
  %370 = zext nneg i8 %369 to i32
  %371 = getelementptr inbounds %struct.TransVert, ptr %359, i64 0, i32 4
  store i32 %370, ptr %371, align 4, !tbaa !104
  br i1 %292, label %375, label %372

372:                                              ; preds = %365
  %373 = or disjoint i32 %370, 4
  store i32 %373, ptr %371, align 4, !tbaa !104
  %374 = getelementptr inbounds %struct.TransVert, ptr %359, i64 0, i32 3
  tail call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %294, ptr noundef nonnull %308, ptr noundef nonnull %374) #7
  br label %375

375:                                              ; preds = %372, %365
  %376 = getelementptr inbounds %struct.TransVert, ptr %359, i64 1
  %377 = load i32, ptr %7, align 8, !tbaa !70
  %378 = add nsw i32 %377, 1
  store i32 %378, ptr %7, align 8, !tbaa !70
  br label %379

379:                                              ; preds = %358, %375, %306
  %380 = phi ptr [ %309, %306 ], [ %359, %358 ], [ %376, %375 ]
  %381 = getelementptr inbounds %struct.BezTriple, ptr %308, i64 1
  %382 = icmp eq i32 %310, 0
  br i1 %382, label %417, label %306, !llvm.loop !115

383:                                              ; preds = %293
  %384 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 7
  %385 = load i32, ptr %384, align 4, !tbaa !113
  %386 = mul nsw i32 %385, %300
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %417, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.Nurb, ptr %294, i64 0, i32 17
  %390 = load ptr, ptr %389, align 8, !tbaa !116
  br label %391

391:                                              ; preds = %388, %413
  %392 = phi i32 [ %395, %413 ], [ %386, %388 ]
  %393 = phi ptr [ %415, %413 ], [ %390, %388 ]
  %394 = phi ptr [ %414, %413 ], [ %295, %388 ]
  %395 = add nsw i32 %392, -1
  %396 = getelementptr inbounds %struct.BPoint, ptr %393, i64 0, i32 4
  %397 = load i16, ptr %396, align 2, !tbaa !117
  %398 = icmp eq i16 %397, 0
  br i1 %398, label %399, label %413

399:                                              ; preds = %391
  %400 = getelementptr inbounds %struct.BPoint, ptr %393, i64 0, i32 3
  %401 = load i16, ptr %400, align 4, !tbaa !119
  %402 = and i16 %401, 1
  %403 = icmp eq i16 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.TransVert, ptr %394, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %405, ptr noundef nonnull %393) #9
  store ptr %393, ptr %394, align 8, !tbaa !60
  %406 = load i16, ptr %400, align 4, !tbaa !119
  %407 = and i16 %406, 1
  %408 = zext nneg i16 %407 to i32
  %409 = getelementptr inbounds %struct.TransVert, ptr %394, i64 0, i32 4
  store i32 %408, ptr %409, align 4, !tbaa !104
  %410 = getelementptr inbounds %struct.TransVert, ptr %394, i64 1
  %411 = load i32, ptr %7, align 8, !tbaa !70
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %7, align 8, !tbaa !70
  br label %413

413:                                              ; preds = %399, %404, %391
  %414 = phi ptr [ %410, %404 ], [ %394, %399 ], [ %394, %391 ]
  %415 = getelementptr inbounds %struct.BPoint, ptr %393, i64 1
  %416 = icmp eq i32 %395, 0
  br i1 %416, label %417, label %391, !llvm.loop !120

417:                                              ; preds = %413, %379, %383, %301
  %418 = phi ptr [ %295, %301 ], [ %295, %383 ], [ %380, %379 ], [ %414, %413 ]
  %419 = load ptr, ptr %294, align 8, !tbaa !51
  %420 = icmp eq ptr %419, null
  br i1 %420, label %502, label %293, !llvm.loop !121

421:                                              ; preds = %3
  %422 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %423 = load ptr, ptr %422, align 8, !tbaa !40
  %424 = getelementptr inbounds %struct.MetaBall, ptr %423, i64 0, i32 4
  %425 = load ptr, ptr %424, align 8, !tbaa !122
  %426 = tail call i32 @BLI_countlist(ptr noundef %425) #7
  %427 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %428 = sext i32 %426 to i64
  %429 = mul nsw i64 %428, 48
  %430 = tail call ptr %427(i64 noundef %429, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %430, ptr %0, align 8, !tbaa !55
  %431 = load ptr, ptr %424, align 8, !tbaa !122
  %432 = load ptr, ptr %431, align 8, !tbaa !51
  %433 = icmp eq ptr %432, null
  br i1 %433, label %502, label %434

434:                                              ; preds = %421, %448
  %435 = phi ptr [ %450, %448 ], [ %432, %421 ]
  %436 = phi ptr [ %449, %448 ], [ %430, %421 ]
  %437 = getelementptr inbounds %struct.MetaElem, ptr %435, i64 0, i32 4
  %438 = load i16, ptr %437, align 2, !tbaa !124
  %439 = and i16 %438, 1
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %448, label %441

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.MetaElem, ptr %435, i64 0, i32 7
  store ptr %442, ptr %436, align 8, !tbaa !60
  %443 = getelementptr inbounds %struct.TransVert, ptr %436, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %443, ptr noundef nonnull %442) #9
  %444 = getelementptr inbounds %struct.TransVert, ptr %436, i64 0, i32 4
  store i32 1, ptr %444, align 4, !tbaa !104
  %445 = getelementptr inbounds %struct.TransVert, ptr %436, i64 1
  %446 = load i32, ptr %7, align 8, !tbaa !70
  %447 = add nsw i32 %446, 1
  store i32 %447, ptr %7, align 8, !tbaa !70
  br label %448

448:                                              ; preds = %441, %434
  %449 = phi ptr [ %445, %441 ], [ %436, %434 ]
  %450 = load ptr, ptr %435, align 8, !tbaa !51
  %451 = icmp eq ptr %450, null
  br i1 %451, label %502, label %434, !llvm.loop !126

452:                                              ; preds = %3
  %453 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %454 = load ptr, ptr %453, align 8, !tbaa !40
  %455 = getelementptr inbounds %struct.Lattice, ptr %454, i64 0, i32 26
  %456 = load ptr, ptr %455, align 8, !tbaa !75
  %457 = load ptr, ptr %456, align 8, !tbaa !77
  %458 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 21
  %459 = load ptr, ptr %458, align 8, !tbaa !127
  %460 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 2
  %461 = load i16, ptr %460, align 8, !tbaa !128
  %462 = sext i16 %461 to i32
  %463 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 3
  %464 = load i16, ptr %463, align 2, !tbaa !129
  %465 = sext i16 %464 to i32
  %466 = mul nsw i32 %465, %462
  %467 = getelementptr inbounds %struct.Lattice, ptr %457, i64 0, i32 4
  %468 = load i16, ptr %467, align 4, !tbaa !130
  %469 = sext i16 %468 to i32
  %470 = mul nsw i32 %466, %469
  %471 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %472 = sext i32 %470 to i64
  %473 = mul nsw i64 %472, 48
  %474 = tail call ptr %471(i64 noundef %473, ptr noundef nonnull @__func__.ED_transverts_create_from_obedit) #7
  store ptr %474, ptr %0, align 8, !tbaa !55
  %475 = icmp eq i32 %470, 0
  br i1 %475, label %502, label %476

476:                                              ; preds = %452, %498
  %477 = phi i32 [ %480, %498 ], [ %470, %452 ]
  %478 = phi ptr [ %500, %498 ], [ %459, %452 ]
  %479 = phi ptr [ %499, %498 ], [ %474, %452 ]
  %480 = add nsw i32 %477, -1
  %481 = getelementptr inbounds %struct.BPoint, ptr %478, i64 0, i32 3
  %482 = load i16, ptr %481, align 4, !tbaa !119
  %483 = and i16 %482, 1
  %484 = icmp eq i16 %483, 0
  br i1 %484, label %498, label %485

485:                                              ; preds = %476
  %486 = getelementptr inbounds %struct.BPoint, ptr %478, i64 0, i32 4
  %487 = load i16, ptr %486, align 2, !tbaa !117
  %488 = icmp eq i16 %487, 0
  br i1 %488, label %489, label %498

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.TransVert, ptr %479, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %490, ptr noundef nonnull %478) #9
  store ptr %478, ptr %479, align 8, !tbaa !60
  %491 = load i16, ptr %481, align 4, !tbaa !119
  %492 = and i16 %491, 1
  %493 = zext nneg i16 %492 to i32
  %494 = getelementptr inbounds %struct.TransVert, ptr %479, i64 0, i32 4
  store i32 %493, ptr %494, align 4, !tbaa !104
  %495 = getelementptr inbounds %struct.TransVert, ptr %479, i64 1
  %496 = load i32, ptr %7, align 8, !tbaa !70
  %497 = add nsw i32 %496, 1
  store i32 %497, ptr %7, align 8, !tbaa !70
  br label %498

498:                                              ; preds = %485, %489, %476
  %499 = phi ptr [ %495, %489 ], [ %479, %485 ], [ %479, %476 ]
  %500 = getelementptr inbounds %struct.BPoint, ptr %478, i64 1
  %501 = icmp eq i32 %480, 0
  br i1 %501, label %502, label %476, !llvm.loop !131

502:                                              ; preds = %498, %448, %417, %250, %452, %421, %282, %176, %175
  %503 = load i32, ptr %7, align 8, !tbaa !70
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %3, %502
  %506 = load ptr, ptr %0, align 8, !tbaa !55
  %507 = icmp eq ptr %506, null
  br i1 %507, label %510, label %508

508:                                              ; preds = %505
  %509 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %509(ptr noundef nonnull %506) #7
  store ptr null, ptr %0, align 8, !tbaa !55
  br label %510

510:                                              ; preds = %508, %505, %502
  %511 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 2
  store i32 %2, ptr %511, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !132 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #9
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !133 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !134
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !135 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !136
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !136
  ret i32 %3
}

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_mapped_co(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !141 {
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call ptr @BM_vert_at_index(ptr noundef %9, i32 noundef %1) #7
  %11 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %10) #9
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %30, label %13

13:                                               ; preds = %5
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %14, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !104
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TransVert, ptr %8, i64 %14, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %2) #9
  %21 = load i32, ptr %15, align 4, !tbaa !104
  %22 = or i32 %21, 2
  store i32 %22, ptr %15, align 4, !tbaa !104
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
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %5(ptr noundef nonnull %2) #7
  store ptr null, ptr %0, align 8, !tbaa !55
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_transverts_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %2) #9, !range !142
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
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !143 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !144
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !138
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !138
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !138
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !148
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !138
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !138
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !138
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !138
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !138
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !138
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !138
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !145
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !138
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !149
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
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !150 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #9
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !151 {
  %3 = load float, ptr %0, align 4, !tbaa !81
  %4 = load float, ptr %1, align 4, !tbaa !81
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !81
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !81
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
!34 = !{!35, !39, i64 12}
!35 = !{!"TransVertStore", !36, i64 0, !39, i64 8, !39, i64 12}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 296}
!41 = !{!"Object", !42, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !44, i64 312, !36, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !47, i64 1304, !47, i64 1312, !39, i64 1320, !39, i64 1324, !45, i64 1328, !45, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !45, i64 1400, !36, i64 1416}
!42 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!43 = !{!"short", !37, i64 0}
!44 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!"float", !37, i64 0}
!47 = !{!"long", !37, i64 0}
!48 = !{!41, !43, i64 136}
!49 = !{!50, !36, i64 0}
!50 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !47, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !43, i64 92, !43, i64 94, !36, i64 96, !39, i64 104}
!51 = !{!36, !36, i64 0}
!52 = !{!53, !36, i64 72}
!53 = !{!"Nurb", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !39, i64 24, !39, i64 28, !37, i64 32, !43, i64 36, !43, i64 38, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !43, i64 80, !43, i64 82, !39, i64 84}
!54 = !{!53, !39, i64 24}
!55 = !{!35, !36, i64 0}
!56 = !{!57, !37, i64 54}
!57 = !{!"BezTriple", !37, i64 0, !46, i64 36, !46, i64 40, !46, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !46, i64 56, !46, i64 60, !46, i64 64, !37, i64 68}
!58 = !{!57, !37, i64 52}
!59 = !{!57, !37, i64 51}
!60 = !{!61, !36, i64 0}
!61 = !{!"TransVert", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !39, i64 44}
!62 = !{!57, !37, i64 53}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = !{!67, !36, i64 160}
!67 = !{!"bArmature", !42, i64 0, !36, i64 120, !45, i64 128, !45, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !43, i64 208, !43, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252}
!68 = !{!69, !39, i64 132}
!69 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !46, i64 104, !37, i64 108, !37, i64 120, !39, i64 132, !39, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !43, i64 180}
!70 = !{!35, !39, i64 8}
!71 = distinct !{!71, !64}
!72 = !{!69, !36, i64 24}
!73 = distinct !{!73, !64}
!74 = !{!67, !39, i64 192}
!75 = !{!76, !36, i64 272}
!76 = !{!"Lattice", !42, i64 0, !36, i64 120, !43, i64 128, !43, i64 130, !43, i64 132, !43, i64 134, !43, i64 136, !43, i64 138, !43, i64 140, !43, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !39, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!77 = !{!78, !36, i64 0}
!78 = !{!"EditLatt", !36, i64 0, !39, i64 8, !37, i64 12}
!79 = !{!76, !43, i64 134}
!80 = !{!"ed_transverts.c:sub_v3_v3v3"}
!81 = !{!46, !46, i64 0}
!82 = !{!"ed_transverts.c:add_v3_v3"}
!83 = !{!"ed_transverts.c:copy_v3_v3"}
!84 = !{!50, !43, i64 92}
!85 = !{i8 0, i8 3}
!86 = distinct !{!86, !64}
!87 = distinct !{!87, !64}
!88 = !{!89, !36, i64 24}
!89 = !{!"BMEdge", !90, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !91, i64 48, !91, i64 64}
!90 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!91 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!92 = !{!89, !36, i64 32}
!93 = distinct !{!93, !64}
!94 = distinct !{!94, !64}
!95 = distinct !{!95, !64}
!96 = !{!97, !36, i64 16}
!97 = !{!"BMLoop", !90, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!98 = distinct !{!98, !64}
!99 = distinct !{!99, !64}
!100 = distinct !{!100, !64}
!101 = !{!102, !37, i64 28}
!102 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !103, i64 144, !103, i64 344, !103, i64 544, !103, i64 744, !43, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !45, i64 960, !36, i64 976, !45, i64 984, !36, i64 1000}
!103 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!104 = !{!61, !39, i64 44}
!105 = distinct !{!105, !64}
!106 = !{!50, !36, i64 48}
!107 = !{!108, !36, i64 1488}
!108 = !{!"DerivedMesh", !103, i64 0, !103, i64 200, !103, i64 400, !103, i64 600, !103, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !46, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!109 = !{!69, !39, i64 136}
!110 = !{!67, !39, i64 216}
!111 = distinct !{!111, !64}
!112 = !{!53, !43, i64 16}
!113 = !{!53, !39, i64 28}
!114 = distinct !{!114, !64}
!115 = distinct !{!115, !64}
!116 = !{!53, !36, i64 64}
!117 = !{!118, !43, i64 26}
!118 = !{!"BPoint", !37, i64 0, !46, i64 16, !46, i64 20, !43, i64 24, !43, i64 26, !46, i64 28, !46, i64 32}
!119 = !{!118, !43, i64 24}
!120 = distinct !{!120, !64}
!121 = distinct !{!121, !64}
!122 = !{!123, !36, i64 160}
!123 = !{!"MetaBall", !42, i64 0, !36, i64 120, !45, i64 128, !45, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !43, i64 186, !43, i64 188, !43, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !46, i64 228, !46, i64 232, !46, i64 236, !36, i64 240}
!124 = !{!125, !43, i64 26}
!125 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !37, i64 44, !46, i64 60, !46, i64 64, !46, i64 68, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84, !36, i64 88, !36, i64 96}
!126 = distinct !{!126, !64}
!127 = !{!76, !36, i64 176}
!128 = !{!76, !43, i64 128}
!129 = !{!76, !43, i64 130}
!130 = !{!76, !43, i64 132}
!131 = distinct !{!131, !64}
!132 = !{!"ed_transverts.c:BM_iter_new"}
!133 = !{!"ed_transverts.c:_bm_elem_flag_test"}
!134 = !{!90, !37, i64 13}
!135 = !{!"ed_transverts.c:_bm_elem_index_set"}
!136 = !{!90, !39, i64 8}
!137 = !{!"ed_transverts.c:BM_iter_step"}
!138 = !{!139, !36, i64 48}
!139 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!140 = !{!"ed_transverts.c:_bm_elem_index_get"}
!141 = !{!"ed_transverts.c:set_mapped_co"}
!142 = !{i8 0, i8 2}
!143 = !{!"ed_transverts.c:BM_iter_init"}
!144 = !{!139, !37, i64 60}
!145 = !{!139, !36, i64 40}
!146 = !{!102, !36, i64 32}
!147 = !{!102, !36, i64 40}
!148 = !{!102, !36, i64 56}
!149 = !{!37, !37, i64 0}
!150 = !{!"ed_transverts.c:len_squared_v3v3"}
!151 = !{!"ed_transverts.c:dot_v3v3"}
