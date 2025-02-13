; ModuleID = 'blender/source/blender/blenkernel/intern/crazyspace.c'
source_filename = "blender/source/blender/blenkernel/intern/crazyspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }

@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"vertexcos map\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"defmats\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"crazy quats\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_crazyspace_get_mapped_editverts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = tail call fastcc i32 @modifiers_disable_subsurf_temporary(ptr noundef %1) #11, !range !53
  %10 = icmp eq i32 %9, 0
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !54
  br i1 %10, label %14, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @makeDerivedMesh(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %13, i64 noundef %11, i32 noundef 0) #12
  br label %14

14:                                               ; preds = %12, %2
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %16 = sext i32 %8 to i64
  %17 = mul nsw i64 %16, 12
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str) #12
  %19 = load ptr, ptr %5, align 8, !tbaa !46
  %20 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %19, i64 noundef %11) #12
  tail call void @mesh_get_mapped_verts_coords(ptr noundef %20, ptr noundef %18, i32 noundef %8) #12
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %20, i64 0, i32 95
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  tail call void %22(ptr noundef %20) #12
  %23 = tail call fastcc i32 @modifiers_disable_subsurf_temporary(ptr noundef nonnull %1) #11, !range !53
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @modifiers_disable_subsurf_temporary(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %20, %18 ], [ %3, %1 ]
  %7 = phi i32 [ %19, %18 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = xor i32 %13, -2147483648
  store i32 %17, ptr %12, align 4, !tbaa !61
  br label %18

18:                                               ; preds = %5, %16, %11
  %19 = phi i32 [ 1, %16 ], [ %7, %11 ], [ %7, %5 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !55
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %5, !llvm.loop !62

22:                                               ; preds = %18, %1
  %23 = phi i32 [ 0, %1 ], [ %19, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare void @makeDerivedMesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mesh_get_mapped_verts_coords(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_crazyspace_set_quats_editmesh(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %7, i8 noundef zeroext 1) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ 0, %5 ]
  %12 = phi ptr [ %13, %10 ], [ %8, %5 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %12) #11
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %12, i32 noundef %11) #11
  %13 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #11
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %10, !llvm.loop !64

16:                                               ; preds = %10, %5
  %17 = load ptr, ptr %0, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 7
  %19 = load i8, ptr %18, align 4, !tbaa !65
  %20 = and i8 %19, -2
  store i8 %20, ptr %18, align 4, !tbaa !65
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %17, i8 noundef zeroext 3) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %79, label %23

23:                                               ; preds = %16
  %24 = icmp eq i8 %4, 0
  %25 = icmp eq ptr %1, null
  br label %26

26:                                               ; preds = %23, %76
  %27 = phi ptr [ %21, %23 ], [ %77, %76 ]
  %28 = getelementptr inbounds %struct.BMFace, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  br label %30

30:                                               ; preds = %72, %26
  %31 = phi ptr [ %29, %26 ], [ %74, %72 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %33, i8 noundef zeroext 2) #11, !range !71
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  %37 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %33, i8 noundef zeroext 16) #11, !range !71
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  br i1 %24, label %43, label %40

40:                                               ; preds = %39
  %41 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %33, i8 noundef zeroext 1) #11, !range !71
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %39, %40
  %44 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = call fastcc i32 @_bm_elem_index_get(ptr noundef %47) #11
  %49 = call fastcc i32 @_bm_elem_index_get(ptr noundef %33) #11
  %50 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  %54 = call fastcc i32 @_bm_elem_index_get(ptr noundef %53) #11
  %55 = sext i32 %48 to i64
  %56 = getelementptr inbounds [3 x float], ptr %2, i64 %55
  %57 = sext i32 %49 to i64
  %58 = getelementptr inbounds [3 x float], ptr %2, i64 %57
  %59 = sext i32 %54 to i64
  %60 = getelementptr inbounds [3 x float], ptr %2, i64 %59
  %61 = getelementptr inbounds [3 x float], ptr %1, i64 %55
  %62 = getelementptr inbounds [3 x float], ptr %1, i64 %57
  %63 = getelementptr inbounds [3 x float], ptr %1, i64 %59
  %64 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %65 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  %66 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  %67 = select i1 %25, ptr %66, ptr %63
  %68 = select i1 %25, ptr %65, ptr %62
  %69 = select i1 %25, ptr %64, ptr %61
  %70 = getelementptr inbounds [4 x float], ptr %3, i64 %57
  call fastcc void @set_crazy_vertex_quat(ptr noundef %70, ptr noundef %68, ptr noundef %67, ptr noundef %69, ptr noundef %58, ptr noundef %60, ptr noundef %56) #11
  %71 = load ptr, ptr %32, align 8, !tbaa !69
  call fastcc void @_bm_elem_flag_enable(ptr noundef %71) #11
  br label %72

72:                                               ; preds = %43, %30, %36, %40
  %73 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  %75 = icmp eq ptr %74, %29
  br i1 %75, label %76, label %30, !llvm.loop !74

76:                                               ; preds = %72
  %77 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %26, !llvm.loop !75

79:                                               ; preds = %76, %16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !76 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !77 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !78
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #6 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !78
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !80
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_crazy_vertex_quat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !86 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call fastcc void @tan_calc_quat_v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  call fastcc void @tan_calc_quat_v3(ptr noundef nonnull %9, ptr noundef %4, ptr noundef %5, ptr noundef %6) #11
  call void @sub_qt_qtqt(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !78
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_crazyspace_set_quats_mesh(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !89
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %4 ]
  %12 = phi ptr [ %17, %10 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.MVert, ptr %12, i64 0, i32 2
  %14 = load i8, ptr %13, align 2, !tbaa !90
  %15 = and i8 %14, -5
  store i8 %15, ptr %13, align 2, !tbaa !90
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.MVert, ptr %12, i64 1
  %18 = icmp eq i32 %16, %8
  br i1 %18, label %19, label %10, !llvm.loop !92

19:                                               ; preds = %10, %4
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %23 = load i32, ptr %22, align 8, !tbaa !94
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = icmp eq ptr %1, null
  br label %29

29:                                               ; preds = %25, %90
  %30 = phi i32 [ %23, %25 ], [ %91, %90 ]
  %31 = phi i32 [ 0, %25 ], [ %92, %90 ]
  %32 = phi ptr [ %27, %25 ], [ %93, %90 ]
  %33 = getelementptr inbounds %struct.MPoly, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !96
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %90

36:                                               ; preds = %29
  %37 = load i32, ptr %32, align 4, !tbaa !98
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MLoop, ptr %21, i64 %38
  %40 = zext nneg i32 %34 to i64
  %41 = getelementptr %struct.MLoop, ptr %39, i64 %40
  %42 = getelementptr %struct.MLoop, ptr %41, i64 -2
  %43 = getelementptr %struct.MLoop, ptr %41, i64 -1
  br label %44

44:                                               ; preds = %36, %83
  %45 = phi i32 [ %84, %83 ], [ %34, %36 ]
  %46 = phi i32 [ %86, %83 ], [ 0, %36 ]
  %47 = phi ptr [ %85, %83 ], [ %39, %36 ]
  %48 = phi ptr [ %47, %83 ], [ %43, %36 ]
  %49 = phi ptr [ %48, %83 ], [ %42, %36 ]
  %50 = load i32, ptr %48, align 4, !tbaa !99
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.MVert, ptr %6, i64 %51
  %53 = getelementptr inbounds %struct.MVert, ptr %6, i64 %51, i32 2
  %54 = load i8, ptr %53, align 2, !tbaa !90
  %55 = and i8 %54, 4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %44
  %58 = load i32, ptr %49, align 4, !tbaa !99
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [3 x float], ptr %2, i64 %59
  %61 = getelementptr inbounds [3 x float], ptr %2, i64 %51
  %62 = load i32, ptr %47, align 4, !tbaa !99
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [3 x float], ptr %2, i64 %63
  br i1 %28, label %69, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds [3 x float], ptr %1, i64 %59
  %67 = getelementptr inbounds [3 x float], ptr %1, i64 %51
  %68 = getelementptr inbounds [3 x float], ptr %1, i64 %63
  br label %72

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.MVert, ptr %6, i64 %59
  %71 = getelementptr inbounds %struct.MVert, ptr %6, i64 %63
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %66, %65 ], [ %70, %69 ]
  %74 = phi ptr [ %67, %65 ], [ %52, %69 ]
  %75 = phi ptr [ %68, %65 ], [ %71, %69 ]
  %76 = getelementptr inbounds [4 x float], ptr %3, i64 %51
  tail call fastcc void @set_crazy_vertex_quat(ptr noundef %76, ptr noundef %74, ptr noundef %75, ptr noundef %73, ptr noundef %61, ptr noundef %64, ptr noundef %60) #11
  %77 = load i32, ptr %48, align 4, !tbaa !99
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.MVert, ptr %6, i64 %78, i32 2
  %80 = load i8, ptr %79, align 2, !tbaa !90
  %81 = or i8 %80, 4
  store i8 %81, ptr %79, align 2, !tbaa !90
  %82 = load i32, ptr %33, align 4, !tbaa !96
  br label %83

83:                                               ; preds = %72, %44
  %84 = phi i32 [ %82, %72 ], [ %45, %44 ]
  %85 = getelementptr inbounds %struct.MLoop, ptr %47, i64 1
  %86 = add nuw nsw i32 %46, 1
  %87 = icmp slt i32 %86, %84
  br i1 %87, label %44, label %88, !llvm.loop !101

88:                                               ; preds = %83
  %89 = load i32, ptr %22, align 8, !tbaa !94
  br label %90

90:                                               ; preds = %88, %29
  %91 = phi i32 [ %89, %88 ], [ %30, %29 ]
  %92 = add nuw nsw i32 %31, 1
  %93 = getelementptr inbounds %struct.MPoly, ptr %32, i64 1
  %94 = icmp slt i32 %92, %91
  br i1 %94, label %29, label %95, !llvm.loop !102

95:                                               ; preds = %90, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @editbmesh_get_first_deform_matrices(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !103
  %8 = tail call i32 @modifiers_getCageIndex(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1) #12
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %7) #13
  tail call void @modifiers_clearErrors(ptr noundef %1) #12
  %9 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %7) #12
  %10 = icmp ne ptr %9, null
  %11 = icmp sgt i32 %8, -1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %68

13:                                               ; preds = %5, %59
  %14 = phi ptr [ %64, %59 ], [ %9, %5 ]
  %15 = phi ptr [ %62, %59 ], [ null, %5 ]
  %16 = phi ptr [ %61, %59 ], [ null, %5 ]
  %17 = phi ptr [ %60, %59 ], [ null, %5 ]
  %18 = phi i32 [ %63, %59 ], [ 0, %5 ]
  %19 = getelementptr inbounds %struct.ModifierData, ptr %14, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !59
  %21 = call ptr @modifierType_getInfo(i32 noundef %20) #12
  %22 = call zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %17) #12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %21, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !104
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %21, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = icmp eq ptr %30, null
  br i1 %31, label %68, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %16, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %6, align 4, !tbaa !103
  br label %53

36:                                               ; preds = %32
  %37 = call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef %1, ptr noundef null) #12
  %38 = call ptr @editbmesh_get_vertex_cos(ptr noundef %2, ptr noundef nonnull %6) #12
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %40 = load i32, ptr %6, align 4, !tbaa !103
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, 36
  %43 = call ptr %39(i64 noundef %42, ptr noundef nonnull @.str.1) #12
  %44 = load i32, ptr %6, align 4, !tbaa !103
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36, %46
  %47 = phi i64 [ %49, %46 ], [ 0, %36 ]
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 %47
  call void @unit_m3(ptr noundef %48) #12
  %49 = add nuw nsw i64 %47, 1
  %50 = load i32, ptr %6, align 4, !tbaa !103
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %46, label %53, !llvm.loop !107

53:                                               ; preds = %46, %34, %36
  %54 = phi i32 [ %35, %34 ], [ %44, %36 ], [ %50, %46 ]
  %55 = phi ptr [ %17, %34 ], [ %37, %36 ], [ %37, %46 ]
  %56 = phi ptr [ %16, %34 ], [ %43, %36 ], [ %43, %46 ]
  %57 = phi ptr [ %15, %34 ], [ %38, %36 ], [ %38, %46 ]
  %58 = load ptr, ptr %29, align 8, !tbaa !106
  call void %58(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2, ptr noundef %55, ptr noundef %57, ptr noundef %56, i32 noundef %54) #12
  br label %59

59:                                               ; preds = %53, %13
  %60 = phi ptr [ %55, %53 ], [ %17, %13 ]
  %61 = phi ptr [ %56, %53 ], [ %16, %13 ]
  %62 = phi ptr [ %57, %53 ], [ %15, %13 ]
  %63 = add nuw nsw i32 %18, 1
  %64 = load ptr, ptr %14, align 8, !tbaa !108
  %65 = icmp ne ptr %64, null
  %66 = icmp slt i32 %18, %8
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %13, label %68, !llvm.loop !109

68:                                               ; preds = %59, %28, %24, %5
  %69 = phi i32 [ 0, %5 ], [ %18, %24 ], [ %18, %28 ], [ %63, %59 ]
  %70 = phi ptr [ null, %5 ], [ %17, %24 ], [ %17, %28 ], [ %60, %59 ]
  %71 = phi ptr [ null, %5 ], [ %16, %24 ], [ %16, %28 ], [ %61, %59 ]
  %72 = phi ptr [ null, %5 ], [ %15, %24 ], [ %15, %28 ], [ %62, %59 ]
  %73 = phi ptr [ %9, %5 ], [ %14, %24 ], [ %14, %28 ], [ %64, %59 ]
  %74 = icmp ne ptr %73, null
  %75 = icmp sle i32 %69, %8
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %95

77:                                               ; preds = %68, %88
  %78 = phi ptr [ %90, %88 ], [ %73, %68 ]
  %79 = phi i32 [ %89, %88 ], [ 0, %68 ]
  %80 = phi i32 [ %91, %88 ], [ %69, %68 ]
  %81 = call zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef %0, ptr noundef nonnull %78, ptr noundef %70) #12
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = call zeroext i8 @modifier_isCorrectableDeformed(ptr noundef nonnull %78) #12
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i32
  %87 = add nsw i32 %79, %86
  br label %88

88:                                               ; preds = %83, %77
  %89 = phi i32 [ %79, %77 ], [ %87, %83 ]
  %90 = load ptr, ptr %78, align 8, !tbaa !108
  %91 = add nuw nsw i32 %80, 1
  %92 = icmp ne ptr %90, null
  %93 = icmp slt i32 %80, %8
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %77, label %95, !llvm.loop !110

95:                                               ; preds = %88, %68
  %96 = phi i32 [ 0, %68 ], [ %89, %88 ]
  %97 = icmp eq ptr %70, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %70, i64 0, i32 95
  %100 = load ptr, ptr %99, align 8, !tbaa !56
  call void %100(ptr noundef nonnull %70) #12
  br label %101

101:                                              ; preds = %98, %95
  store ptr %71, ptr %3, align 8, !tbaa !55
  store ptr %72, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %96
}

; Function Attrs: optsize
declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifiers_clearErrors(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @getEditDerivedBMesh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @editbmesh_get_vertex_cos(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @modifier_isCorrectableDeformed(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_sculpt_get_first_deform_matrices(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !103
  %7 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 2
  %11 = load i8, ptr %10, align 1, !tbaa !111
  %12 = icmp eq i8 %11, 0
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #13
  br i1 %12, label %14, label %95

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #13
  br label %14

14:                                               ; preds = %13, %9
  %15 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %6) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %95, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  br label %19

19:                                               ; preds = %17, %62
  %20 = phi ptr [ %15, %17 ], [ %66, %62 ]
  %21 = phi ptr [ null, %17 ], [ %65, %62 ]
  %22 = phi ptr [ null, %17 ], [ %64, %62 ]
  %23 = phi ptr [ null, %17 ], [ %63, %62 ]
  %24 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = call ptr @modifierType_getInfo(i32 noundef %25) #12
  %27 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 1) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !104
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %33
  %36 = load ptr, ptr %18, align 8, !tbaa !34
  %37 = call ptr @mesh_create_derived(ptr noundef %36, ptr noundef null) #12
  %38 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %36, ptr noundef nonnull %5) #12
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %40 = load i32, ptr %5, align 4, !tbaa !103
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, 36
  %43 = call ptr %39(i64 noundef %42, ptr noundef nonnull @.str.1) #12
  %44 = load i32, ptr %5, align 4, !tbaa !103
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %35, %46
  %47 = phi i64 [ %49, %46 ], [ 0, %35 ]
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 %47
  call void @unit_m3(ptr noundef %48) #12
  %49 = add nuw nsw i64 %47, 1
  %50 = load i32, ptr %5, align 4, !tbaa !103
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %46, label %53, !llvm.loop !113

53:                                               ; preds = %46, %35, %33
  %54 = phi ptr [ %23, %33 ], [ %38, %35 ], [ %38, %46 ]
  %55 = phi ptr [ %22, %33 ], [ %43, %35 ], [ %43, %46 ]
  %56 = phi ptr [ %21, %33 ], [ %37, %35 ], [ %37, %46 ]
  %57 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %5, align 4, !tbaa !103
  call void %58(ptr noundef nonnull %20, ptr noundef %1, ptr noundef %56, ptr noundef %54, ptr noundef %55, i32 noundef %61) #12
  br label %62

62:                                               ; preds = %19, %60, %29
  %63 = phi ptr [ %23, %29 ], [ %54, %60 ], [ %23, %19 ]
  %64 = phi ptr [ %22, %29 ], [ %55, %60 ], [ %22, %19 ]
  %65 = phi ptr [ %21, %29 ], [ %56, %60 ], [ %21, %19 ]
  %66 = load ptr, ptr %20, align 8, !tbaa !108
  %67 = icmp eq ptr %66, null
  br i1 %67, label %86, label %19, !llvm.loop !115

68:                                               ; preds = %53, %82
  %69 = phi ptr [ %84, %82 ], [ %20, %53 ]
  %70 = phi i32 [ %83, %82 ], [ 0, %53 ]
  %71 = getelementptr inbounds %struct.ModifierData, ptr %69, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !59
  %73 = call ptr @modifierType_getInfo(i32 noundef %72) #12
  %74 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %69, i32 noundef 1) #12
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %73, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !104
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = add nsw i32 %70, %80
  br label %82

82:                                               ; preds = %68, %76
  %83 = phi i32 [ %81, %76 ], [ %70, %68 ]
  %84 = load ptr, ptr %69, align 8, !tbaa !108
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %68, !llvm.loop !116

86:                                               ; preds = %62, %82
  %87 = phi ptr [ %56, %82 ], [ %65, %62 ]
  %88 = phi ptr [ %55, %82 ], [ %64, %62 ]
  %89 = phi ptr [ %54, %82 ], [ %63, %62 ]
  %90 = phi i32 [ %83, %82 ], [ 0, %62 ]
  %91 = icmp eq ptr %87, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %87, i64 0, i32 95
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  call void %94(ptr noundef nonnull %87) #12
  br label %95

95:                                               ; preds = %14, %86, %92, %9
  %96 = phi ptr [ null, %9 ], [ %88, %92 ], [ %88, %86 ], [ null, %14 ]
  %97 = phi ptr [ null, %9 ], [ %89, %92 ], [ %89, %86 ], [ null, %14 ]
  %98 = phi i32 [ 0, %9 ], [ %90, %92 ], [ %90, %86 ], [ 0, %14 ]
  store ptr %96, ptr %2, align 8, !tbaa !55
  store ptr %97, ptr %3, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %98
}

; Function Attrs: optsize
declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @mesh_create_derived(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_mesh_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_crazyspace_build_sculpt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.VirtualModifierData, align 8
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca i32, align 4
  %9 = tail call i32 @BKE_sculpt_get_first_deform_matrices(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %70, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 8, !tbaa !55
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !55
  %14 = tail call ptr %13(ptr noundef %12) #12
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %5) #13
  %15 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %5) #12
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %15, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 26
  br label %21

21:                                               ; preds = %19, %43
  %22 = phi i32 [ 0, %19 ], [ %44, %43 ]
  %23 = phi ptr [ %15, %19 ], [ %45, %43 ]
  %24 = getelementptr inbounds %struct.ModifierData, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = call ptr @modifierType_getInfo(i32 noundef %25) #12
  %27 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 1) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !104
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !114
  %36 = icmp eq ptr %35, null
  %37 = icmp ne i32 %22, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !117
  %42 = load i32, ptr %20, align 8, !tbaa !89
  call void %41(ptr noundef nonnull %23, ptr noundef %1, ptr noundef null, ptr noundef %12, i32 noundef %42, i32 noundef 0) #12
  br label %43

43:                                               ; preds = %29, %39, %33, %21
  %44 = phi i32 [ %22, %21 ], [ 0, %33 ], [ 1, %39 ], [ %22, %29 ]
  %45 = load ptr, ptr %23, align 8, !tbaa !108
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !118

47:                                               ; preds = %43, %11
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 26
  %50 = load i32, ptr %49, align 8, !tbaa !89
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 4
  %53 = call ptr %48(i64 noundef %52, ptr noundef nonnull @.str.2) #12
  call void @BKE_crazyspace_set_quats_mesh(ptr noundef %17, ptr noundef %14, ptr noundef %12, ptr noundef %53) #11
  %54 = load i32, ptr %49, align 8, !tbaa !89
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %47, %56
  %57 = phi i64 [ %63, %56 ], [ 0, %47 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #13
  %58 = getelementptr inbounds [4 x float], ptr %53, i64 %57
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef %58) #12
  %59 = load ptr, ptr %2, align 8, !tbaa !55
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %59, i64 %57
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %60) #12
  %61 = load ptr, ptr %2, align 8, !tbaa !55
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %61, i64 %57
  call void @copy_m3_m3(ptr noundef %62, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  %63 = add nuw nsw i64 %57, 1
  %64 = load i32, ptr %49, align 8, !tbaa !89
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %56, label %67, !llvm.loop !119

67:                                               ; preds = %56, %47
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %68(ptr noundef %14) #12
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %69(ptr noundef %53) #12
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %5) #13
  br label %70

70:                                               ; preds = %67, %4
  %71 = load ptr, ptr %2, align 8, !tbaa !55
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %74 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %75, ptr noundef nonnull %8) #12
  store ptr %76, ptr %3, align 8, !tbaa !55
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %78 = load i32, ptr %8, align 4, !tbaa !103
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, 36
  %81 = call ptr %77(i64 noundef %80, ptr noundef nonnull @.str.1) #12
  store ptr %81, ptr %2, align 8, !tbaa !55
  %82 = load i32, ptr %8, align 4, !tbaa !103
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %73, %84
  %85 = phi i64 [ %88, %84 ], [ 0, %73 ]
  %86 = load ptr, ptr %2, align 8, !tbaa !55
  %87 = getelementptr inbounds [3 x [3 x float]], ptr %86, i64 %85
  call void @unit_m3(ptr noundef %87) #12
  %88 = add nuw nsw i64 %85, 1
  %89 = load i32, ptr %8, align 4, !tbaa !103
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %84, label %92, !llvm.loop !120

92:                                               ; preds = %84, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %93

93:                                               ; preds = %92, %70
  ret void
}

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !122
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !82
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  store ptr %16, ptr %0, align 8, !tbaa !124
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tan_calc_quat_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !125 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3) #11
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %9 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #11
  %10 = fcmp ogt float %9, 0x3E80000000000000
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @tri_to_quat_ex(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  br label %13

12:                                               ; preds = %4
  tail call void @unit_qt(ptr noundef %0) #12
  br label %13

13:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @sub_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !126 {
  %4 = load float, ptr %1, align 4, !tbaa !127
  %5 = load float, ptr %2, align 4, !tbaa !127
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !127
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !127
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !127
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !127
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !127
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !127
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !128 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !127
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !127
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !127
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !127
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !127
  %15 = load float, ptr %8, align 4, !tbaa !127
  %16 = load float, ptr %2, align 4, !tbaa !127
  %17 = load float, ptr %1, align 4, !tbaa !127
  %18 = load float, ptr %6, align 4, !tbaa !127
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !127
  %23 = load float, ptr %1, align 4, !tbaa !127
  %24 = load float, ptr %10, align 4, !tbaa !127
  %25 = load float, ptr %4, align 4, !tbaa !127
  %26 = load float, ptr %2, align 4, !tbaa !127
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !129 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #11
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @tri_to_quat_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !130 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #11
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #11
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !131 {
  %3 = load float, ptr %0, align 4, !tbaa !127
  %4 = load float, ptr %1, align 4, !tbaa !127
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !127
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !127
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !127
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !127
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !132 {
  %4 = load float, ptr %1, align 4, !tbaa !127
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !127
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !127
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !127
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !127
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !133 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !127
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !127
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

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
!46 = !{!47, !37, i64 272}
!47 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !48, i64 280, !48, i64 480, !48, i64 680, !48, i64 880, !48, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!48 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!49 = !{!50, !37, i64 0}
!50 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!51 = !{!52, !41, i64 0}
!52 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !48, i64 144, !48, i64 344, !48, i64 544, !48, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!53 = !{i32 0, i32 2}
!54 = !{!45, !45, i64 0}
!55 = !{!37, !37, i64 0}
!56 = !{!57, !37, i64 1680}
!57 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!58 = !{!"crazyspace.c:modifiers_disable_subsurf_temporary"}
!59 = !{!60, !41, i64 16}
!60 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!61 = !{!60, !41, i64 20}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{!64, !63}
!65 = !{!52, !38, i64 28}
!66 = !{!67, !37, i64 24}
!67 = !{!"BMFace", !68, i64 0, !37, i64 16, !37, i64 24, !41, i64 32, !38, i64 36, !40, i64 48}
!68 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!69 = !{!70, !37, i64 16}
!70 = !{!"BMLoop", !68, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!71 = !{i8 0, i8 17}
!72 = !{!70, !37, i64 64}
!73 = !{!70, !37, i64 56}
!74 = distinct !{!74, !63}
!75 = distinct !{!75, !63}
!76 = !{!"crazyspace.c:BM_iter_new"}
!77 = !{!"crazyspace.c:_bm_elem_flag_disable"}
!78 = !{!68, !38, i64 13}
!79 = !{!"crazyspace.c:_bm_elem_index_set"}
!80 = !{!68, !41, i64 8}
!81 = !{!"crazyspace.c:BM_iter_step"}
!82 = !{!83, !37, i64 48}
!83 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!84 = !{!"crazyspace.c:_bm_elem_flag_test"}
!85 = !{!"crazyspace.c:_bm_elem_index_get"}
!86 = !{!"crazyspace.c:set_crazy_vertex_quat"}
!87 = !{!"crazyspace.c:_bm_elem_flag_enable"}
!88 = !{!47, !37, i64 232}
!89 = !{!47, !41, i64 1280}
!90 = !{!91, !38, i64 18}
!91 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!92 = distinct !{!92, !63}
!93 = !{!47, !37, i64 184}
!94 = !{!47, !41, i64 1296}
!95 = !{!47, !37, i64 168}
!96 = !{!97, !41, i64 4}
!97 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!98 = !{!97, !41, i64 0}
!99 = !{!100, !41, i64 0}
!100 = !{!"MLoop", !41, i64 0, !41, i64 4}
!101 = distinct !{!101, !63}
!102 = distinct !{!102, !63}
!103 = !{!41, !41, i64 0}
!104 = !{!105, !41, i64 68}
!105 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!106 = !{!105, !37, i64 112}
!107 = distinct !{!107, !63}
!108 = !{!60, !37, i64 0}
!109 = distinct !{!109, !63}
!110 = distinct !{!110, !63}
!111 = !{!112, !38, i64 113}
!112 = !{!"MultiresModifierData", !60, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!113 = distinct !{!113, !63}
!114 = !{!105, !37, i64 96}
!115 = distinct !{!115, !63}
!116 = distinct !{!116, !63}
!117 = !{!105, !37, i64 88}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = distinct !{!120, !63}
!121 = !{!"crazyspace.c:BM_iter_init"}
!122 = !{!83, !38, i64 60}
!123 = !{!83, !37, i64 40}
!124 = !{!38, !38, i64 0}
!125 = !{!"crazyspace.c:tan_calc_quat_v3"}
!126 = !{!"crazyspace.c:sub_v3_v3v3"}
!127 = !{!44, !44, i64 0}
!128 = !{!"crazyspace.c:cross_v3_v3v3"}
!129 = !{!"crazyspace.c:normalize_v3"}
!130 = !{!"crazyspace.c:normalize_v3_v3"}
!131 = !{!"crazyspace.c:dot_v3v3"}
!132 = !{!"crazyspace.c:mul_v3_v3fl"}
!133 = !{!"crazyspace.c:zero_v3"}
