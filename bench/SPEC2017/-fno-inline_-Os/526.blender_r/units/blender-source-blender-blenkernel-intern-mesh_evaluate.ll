; ModuleID = 'blender/source/blender/blenkernel/intern/mesh_evaluate.c'
source_filename = "blender/source/blender/blenkernel/intern/mesh_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.BKEMeshToTangent = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.SMikkTSpaceContext = type { ptr, ptr }
%struct.SMikkTSpaceInterface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.OrigSpaceLoop = type { [2 x float] }
%struct.OrigSpaceFace = type { [4 x [2 x float]] }
%struct.MDisps = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"%s: called with nothing to do\0A\00", align 1
@__func__.BKE_mesh_calc_normals_mapping_ex = private unnamed_addr constant [33 x i8] c"BKE_mesh_calc_normals_mapping_ex\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"error in %s: tessellation face indices are incorrect.  normals may look bad.\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mesh_calc_normals_poly = private unnamed_addr constant [27 x i8] c"BKE_mesh_calc_normals_poly\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tnorms\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"meshnormals\00", align 1
@__func__.BKE_mesh_normals_loop_split = private unnamed_addr constant [28 x i8] c"BKE_mesh_normals_loop_split\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"Tangent space can only be computed for tris/quads, aborting\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Mikktspace failed to generate tangents for this mesh!\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"Tangent space computation needs an UVMap, \22%s\22 not found, aborting\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"Tangent space computation needs loop normals, none found, aborting\00", align 1
@__func__.BKE_mesh_recalc_tessellation = private unnamed_addr constant [29 x i8] c"BKE_mesh_recalc_tessellation\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mesh_mpoly_to_mface = private unnamed_addr constant [24 x i8] c"BKE_mesh_mpoly_to_mface\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"mpoly converted\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"mloop converted\00", align 1
@__func__.BKE_mesh_convert_mfaces_to_mpolys_ex = private unnamed_addr constant [37 x i8] c"BKE_mesh_convert_mfaces_to_mpolys_ex\00", align 1
@__func__.BKE_mesh_calc_relative_deform = private unnamed_addr constant [30 x i8] c"BKE_mesh_calc_relative_deform\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"converted loop mdisps\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_normals_mapping(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture noundef readnone %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  tail call void @BKE_mesh_calc_normals_mapping_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr poison, i32 noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_normals_mapping_ex(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, ptr noundef readonly %9, ptr noundef writeonly %10, i8 noundef zeroext %11) local_unnamed_addr #0 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = icmp eq i8 %11, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %14
  tail call fastcc void @mesh_calc_normals_vert_fallback(ptr noundef %0, i32 noundef %1) #22
  br label %76

17:                                               ; preds = %12
  %18 = icmp eq i8 %11, 1
  %19 = icmp eq ptr %6, null
  %20 = icmp eq ptr %10, null
  %21 = and i1 %20, %18
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_mapping_ex) #22
  br label %76

25:                                               ; preds = %17
  br i1 %19, label %26, label %31

26:                                               ; preds = %25
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = sext i32 %5 to i64
  %29 = mul nsw i64 %28, 12
  %30 = tail call ptr %27(i64 noundef %29, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_mapping_ex) #23
  br label %31

31:                                               ; preds = %26, %25
  %32 = phi ptr [ %6, %25 ], [ %30, %26 ]
  %33 = icmp eq i8 %11, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = icmp sgt i32 %5, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %34
  %37 = zext nneg i32 %5 to i64
  br label %39

38:                                               ; preds = %31
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 poison, i32 noundef %5, ptr noundef %32, i8 noundef zeroext 0) #22
  br label %49

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %46, %39 ]
  %41 = phi ptr [ %3, %36 ], [ %47, %39 ]
  %42 = load i32, ptr %41, align 4, !tbaa !38
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %43
  %45 = getelementptr inbounds [3 x float], ptr %32, i64 %40
  tail call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %41, ptr noundef %44, ptr noundef %0, ptr noundef %45) #22
  %46 = add nuw nsw i64 %40, 1
  %47 = getelementptr inbounds %struct.MPoly, ptr %41, i64 1
  %48 = icmp eq i64 %46, %37
  br i1 %48, label %49, label %39, !llvm.loop !42

49:                                               ; preds = %39, %34, %38
  %50 = icmp ne ptr %9, null
  %51 = icmp ne ptr %10, null
  %52 = and i1 %50, %51
  %53 = icmp sgt i32 %8, 0
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = zext nneg i32 %8 to i64
  br label %57

57:                                               ; preds = %55, %68
  %58 = phi i64 [ 0, %55 ], [ %69, %68 ]
  %59 = phi ptr [ %9, %55 ], [ %70, %68 ]
  %60 = load i32, ptr %59, align 4, !tbaa !44
  %61 = icmp slt i32 %60, %5
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds [3 x float], ptr %10, i64 %58
  %64 = sext i32 %60 to i64
  %65 = getelementptr inbounds [3 x float], ptr %32, i64 %64
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %63, ptr noundef %65) #22
  br label %68

66:                                               ; preds = %57
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_mapping_ex) #22
  br label %68

68:                                               ; preds = %62, %66
  %69 = add nuw nsw i64 %58, 1
  %70 = getelementptr inbounds i32, ptr %59, i64 1
  %71 = icmp eq i64 %69, %56
  br i1 %71, label %72, label %57, !llvm.loop !45

72:                                               ; preds = %68, %49
  %73 = icmp eq ptr %32, %6
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %75(ptr noundef %32) #23
  br label %76

76:                                               ; preds = %72, %74, %14, %16, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc void @mesh_calc_normals_vert_fallback(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !46 {
  %3 = alloca [3 x float], align 4
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds %struct.MVert, ptr %0, i64 %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  %10 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %3, ptr noundef %9) #22
  %11 = getelementptr inbounds %struct.MVert, ptr %0, i64 %8, i32 1
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %11, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7, !llvm.loop !47

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_normals_poly(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 %4, i32 noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = icmp eq i8 %7, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %11
  %14 = zext nneg i32 %5 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %22, %15 ]
  %17 = getelementptr inbounds %struct.MPoly, ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !38
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %19
  %21 = getelementptr inbounds [3 x float], ptr %6, i64 %16
  tail call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %17, ptr noundef %20, ptr noundef %0, ptr noundef %21) #22
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %14
  br i1 %23, label %74, label %15, !llvm.loop !48

24:                                               ; preds = %8
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = sext i32 %1 to i64
  %27 = mul nsw i64 %26, 12
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @__func__.BKE_mesh_calc_normals_poly) #23
  %29 = icmp eq ptr %6, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = icmp sgt i32 %5, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = zext nneg i32 %5 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %41, %34 ]
  %36 = phi ptr [ %3, %32 ], [ %42, %34 ]
  %37 = load i32, ptr %36, align 4, !tbaa !38
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %38
  %40 = getelementptr inbounds [3 x float], ptr %6, i64 %35
  tail call fastcc void @mesh_calc_normals_poly_accum(ptr noundef nonnull %36, ptr noundef %39, ptr noundef %0, ptr noundef nonnull %40, ptr noundef %28) #22
  %41 = add nuw nsw i64 %35, 1
  %42 = getelementptr inbounds %struct.MPoly, ptr %36, i64 1
  %43 = icmp eq i64 %41, %33
  br i1 %43, label %56, label %34, !llvm.loop !49

44:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  %45 = icmp sgt i32 %5, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %44, %46
  %47 = phi i32 [ %52, %46 ], [ 0, %44 ]
  %48 = phi ptr [ %53, %46 ], [ %3, %44 ]
  %49 = load i32, ptr %48, align 4, !tbaa !38
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %50
  call fastcc void @mesh_calc_normals_poly_accum(ptr noundef nonnull %48, ptr noundef %51, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %28) #22
  %52 = add nuw nsw i32 %47, 1
  %53 = getelementptr inbounds %struct.MPoly, ptr %48, i64 1
  %54 = icmp eq i32 %52, %5
  br i1 %54, label %55, label %46, !llvm.loop !50

55:                                               ; preds = %46, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  br label %56

56:                                               ; preds = %34, %30, %55
  %57 = icmp sgt i32 %1, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %56
  %59 = zext nneg i32 %1 to i64
  br label %60

60:                                               ; preds = %58, %68
  %61 = phi i64 [ 0, %58 ], [ %70, %68 ]
  %62 = getelementptr inbounds [3 x float], ptr %28, i64 %61
  %63 = tail call fastcc float @normalize_v3(ptr noundef %62) #22
  %64 = fcmp oeq float %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.MVert, ptr %0, i64 %61
  %67 = tail call fastcc float @normalize_v3_v3(ptr noundef %62, ptr noundef %66) #22
  br label %68

68:                                               ; preds = %65, %60
  %69 = getelementptr inbounds %struct.MVert, ptr %0, i64 %61, i32 1
  tail call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %69, ptr noundef %62) #22
  %70 = add nuw nsw i64 %61, 1
  %71 = icmp eq i64 %70, %59
  br i1 %71, label %72, label %60, !llvm.loop !51

72:                                               ; preds = %68, %56
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %73(ptr noundef %28) #23
  br label %74

74:                                               ; preds = %15, %11, %72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_poly_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call fastcc void @mesh_calc_ngon_normal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  br label %42

9:                                                ; preds = %4
  switch i32 %6, label %40 [
    i32 3, label %10
    i32 4, label %23
  ]

10:                                               ; preds = %9
  %11 = load i32, ptr %1, align 4, !tbaa !53
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %2, i64 %16
  %18 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %2, i64 %20
  %22 = tail call float @normal_tri_v3(ptr noundef %3, ptr noundef %13, ptr noundef %17, ptr noundef %21) #23
  br label %42

23:                                               ; preds = %9
  %24 = load i32, ptr %1, align 4, !tbaa !53
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %2, i64 %25
  %27 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %2, i64 %29
  %31 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !53
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %2, i64 %33
  %35 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %36 = load i32, ptr %35, align 4, !tbaa !53
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %2, i64 %37
  %39 = tail call float @normal_quad_v3(ptr noundef %3, ptr noundef %26, ptr noundef %30, ptr noundef %34, ptr noundef %38) #23
  br label %42

40:                                               ; preds = %9
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !55
  %41 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %41, align 4, !tbaa !55
  br label %42

42:                                               ; preds = %10, %40, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !57 {
  %3 = load float, ptr %1, align 4, !tbaa !55
  store float %3, ptr %0, align 4, !tbaa !55
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @mesh_calc_normals_poly_accum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #5 !PGOFuncName !58 {
  %6 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 12
  %10 = alloca i8, i64 %9, align 16
  %11 = add nsw i32 %7, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !53
  tail call fastcc void @zero_v3(ptr noundef %3) #22
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %5
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %2, i64 %17
  %19 = zext nneg i32 %7 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %31, %20 ]
  %22 = phi i32 [ %11, %16 ], [ %32, %20 ]
  %23 = phi ptr [ %18, %16 ], [ %27, %20 ]
  %24 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %21
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %2, i64 %26
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef %3, ptr noundef %23, ptr noundef %27) #22
  %28 = sext i32 %22 to i64
  %29 = getelementptr inbounds [3 x float], ptr %10, i64 %28
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %29, ptr noundef %23, ptr noundef %27) #22
  %30 = call fastcc float @normalize_v3(ptr noundef nonnull %29) #22
  %31 = add nuw nsw i64 %21, 1
  %32 = trunc i64 %21 to i32
  %33 = icmp eq i64 %31, %19
  br i1 %33, label %34, label %20, !llvm.loop !59

34:                                               ; preds = %20, %5
  %35 = tail call fastcc float @normalize_v3(ptr noundef %3) #22
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %38, align 4, !tbaa !55
  br label %39

39:                                               ; preds = %37, %34
  br i1 %15, label %40, label %56

40:                                               ; preds = %39
  %41 = getelementptr inbounds [3 x float], ptr %10, i64 %12
  %42 = zext nneg i32 %7 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 0, %40 ], [ %54, %43 ]
  %45 = phi ptr [ %41, %40 ], [ %46, %43 ]
  %46 = getelementptr inbounds [3 x float], ptr %10, i64 %44
  %47 = call fastcc float @dot_v3v3(ptr noundef nonnull %46, ptr noundef nonnull %45) #22
  %48 = fneg float %47
  %49 = tail call fastcc float @saacos(float noundef %48) #22
  %50 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %44
  %51 = load i32, ptr %50, align 4, !tbaa !53
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [3 x float], ptr %4, i64 %52
  tail call fastcc void @madd_v3_v3fl(ptr noundef %53, ptr noundef %3, float noundef %49) #22
  %54 = add nuw nsw i64 %44, 1
  %55 = icmp eq i64 %54, %42
  br i1 %55, label %56, label %43, !llvm.loop !60

56:                                               ; preds = %43, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !61 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #22
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !62 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #22
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #23
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #22
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !63 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !55
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !64
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_normals(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !72
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %3, i32 noundef %5, ptr noundef %7, ptr noundef %9, i32 poison, i32 noundef %11, ptr noundef null, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_normals_tessface(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = sext i32 %1 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.2) #23
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = sext i32 %3 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.3) #23
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi ptr [ %15, %11 ], [ %4, %5 ]
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = zext nneg i32 %3 to i64
  br label %25

21:                                               ; preds = %52, %16
  %22 = icmp sgt i32 %1, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %21
  %24 = zext nneg i32 %1 to i64
  br label %69

25:                                               ; preds = %19, %52
  %26 = phi i64 [ 0, %19 ], [ %67, %52 ]
  %27 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26
  %28 = getelementptr inbounds [3 x float], ptr %17, i64 %26
  %29 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !73
  %31 = icmp eq i32 %30, 0
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds [3 x float], ptr %9, i64 %32
  %34 = select i1 %31, ptr null, ptr %33
  %35 = getelementptr inbounds %struct.MVert, ptr %0, i64 %32
  %36 = select i1 %31, ptr null, ptr %35
  %37 = load i32, ptr %27, align 4, !tbaa !75
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MVert, ptr %0, i64 %38
  %40 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !76
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.MVert, ptr %0, i64 %42
  %44 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !77
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MVert, ptr %0, i64 %46
  br i1 %31, label %50, label %48

48:                                               ; preds = %25
  %49 = tail call float @normal_quad_v3(ptr noundef %28, ptr noundef %39, ptr noundef %43, ptr noundef %47, ptr noundef nonnull %35) #23
  br label %52

50:                                               ; preds = %25
  %51 = tail call float @normal_tri_v3(ptr noundef %28, ptr noundef %39, ptr noundef %43, ptr noundef %47) #23
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, ptr %27, align 4, !tbaa !75
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %9, i64 %54
  %56 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !76
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float], ptr %9, i64 %58
  %60 = getelementptr inbounds %struct.MFace, ptr %2, i64 %26, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !77
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [3 x float], ptr %9, i64 %62
  %64 = getelementptr inbounds %struct.MVert, ptr %0, i64 %54
  %65 = getelementptr inbounds %struct.MVert, ptr %0, i64 %58
  %66 = getelementptr inbounds %struct.MVert, ptr %0, i64 %62
  tail call void @accumulate_vertex_normals(ptr noundef %55, ptr noundef %59, ptr noundef %63, ptr noundef %34, ptr noundef %28, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %36) #23
  %67 = add nuw nsw i64 %26, 1
  %68 = icmp eq i64 %67, %20
  br i1 %68, label %21, label %25, !llvm.loop !78

69:                                               ; preds = %23, %77
  %70 = phi i64 [ 0, %23 ], [ %79, %77 ]
  %71 = getelementptr inbounds [3 x float], ptr %9, i64 %70
  %72 = tail call fastcc float @normalize_v3(ptr noundef %71) #22
  %73 = fcmp oeq float %72, 0.000000e+00
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.MVert, ptr %0, i64 %70
  %76 = tail call fastcc float @normalize_v3_v3(ptr noundef %71, ptr noundef %75) #22
  br label %77

77:                                               ; preds = %74, %69
  %78 = getelementptr inbounds %struct.MVert, ptr %0, i64 %70, i32 1
  tail call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %78, ptr noundef %71) #22
  %79 = add nuw nsw i64 %70, 1
  %80 = icmp eq i64 %79, %24
  br i1 %80, label %81, label %69, !llvm.loop !79

81:                                               ; preds = %77, %21
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %82(ptr noundef %9) #23
  %83 = icmp eq ptr %17, %4
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %85(ptr noundef %17) #23
  br label %86

86:                                               ; preds = %84, %81
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @accumulate_vertex_normals(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_normals_loop_split(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, i32 noundef %9, float noundef %10) local_unnamed_addr #0 {
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = sext i32 %3 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @__func__.BKE_mesh_normals_loop_split) #23
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %20 = sext i32 %6 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @__func__.BKE_mesh_normals_loop_split) #23
  %23 = fcmp olt float %10, 0x400921FB60000000
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = tail call float @cosf(float noundef %10) #23
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi float [ %25, %24 ], [ %10, %11 ]
  %28 = icmp sgt i32 %9, 0
  br i1 %28, label %29, label %284

29:                                               ; preds = %26
  %30 = zext nneg i32 %9 to i64
  br label %34

31:                                               ; preds = %106
  br i1 %28, label %32, label %284

32:                                               ; preds = %31
  %33 = zext nneg i32 %9 to i64
  br label %110

34:                                               ; preds = %29, %106
  %35 = phi i64 [ 0, %29 ], [ %108, %106 ]
  %36 = phi ptr [ %7, %29 ], [ %107, %106 ]
  %37 = getelementptr inbounds %struct.MPoly, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !52
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %34
  %41 = load i32, ptr %36, align 4, !tbaa !38
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %43
  %45 = getelementptr inbounds %struct.MPoly, ptr %36, i64 0, i32 3
  %46 = getelementptr inbounds [3 x float], ptr %8, i64 %35
  %47 = sext i32 %42 to i64
  %48 = trunc i64 %35 to i32
  br label %49

49:                                               ; preds = %40, %102
  %50 = phi i64 [ %43, %40 ], [ %104, %102 ]
  %51 = phi ptr [ %44, %40 ], [ %103, %102 ]
  %52 = getelementptr inbounds %struct.MLoop, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !80
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i32], ptr %18, i64 %54
  %56 = getelementptr inbounds i32, ptr %22, i64 %50
  store i32 %48, ptr %56, align 4, !tbaa !44
  %57 = getelementptr inbounds [3 x float], ptr %5, i64 %50
  %58 = load i32, ptr %51, align 4, !tbaa !53
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.MVert, ptr %0, i64 %59, i32 1
  tail call fastcc void @normal_short_to_float_v3(ptr noundef %57, ptr noundef nonnull %60) #22
  %61 = load i32, ptr %55, align 4, !tbaa !44
  %62 = getelementptr inbounds i32, ptr %55, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !44
  %64 = or i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = trunc i64 %50 to i32
  store i32 %67, ptr %55, align 4, !tbaa !44
  %68 = load i8, ptr %45, align 2, !tbaa !81
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 -1, i32 -2147483648
  br label %100

72:                                               ; preds = %49
  switch i32 %63, label %100 [
    i32 -2147483648, label %73
    i32 -1, label %102
  ]

73:                                               ; preds = %72
  %74 = load i8, ptr %45, align 2, !tbaa !81
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %52, align 4, !tbaa !80
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %79, i32 4
  %81 = load i16, ptr %80, align 2, !tbaa !82
  %82 = and i16 %81, 512
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load i32, ptr %51, align 4, !tbaa !53
  %86 = sext i32 %61 to i64
  %87 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !53
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  br i1 %23, label %91, label %98

91:                                               ; preds = %90
  %92 = getelementptr inbounds i32, ptr %22, i64 %86
  %93 = load i32, ptr %92, align 4, !tbaa !44
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x float], ptr %8, i64 %94
  %96 = tail call fastcc float @dot_v3v3(ptr noundef %95, ptr noundef %46) #22
  %97 = fcmp olt float %96, %27
  br i1 %97, label %100, label %98

98:                                               ; preds = %91, %90
  %99 = trunc i64 %50 to i32
  br label %100

100:                                              ; preds = %72, %73, %77, %84, %91, %98, %66
  %101 = phi i32 [ %71, %66 ], [ %99, %98 ], [ -1, %91 ], [ -1, %84 ], [ -1, %77 ], [ -1, %73 ], [ -1, %72 ]
  store i32 %101, ptr %62, align 4, !tbaa !44
  br label %102

102:                                              ; preds = %100, %72
  %103 = getelementptr inbounds %struct.MLoop, ptr %51, i64 1
  %104 = add nsw i64 %50, 1
  %105 = icmp slt i64 %104, %47
  br i1 %105, label %49, label %106, !llvm.loop !84

106:                                              ; preds = %102, %34
  %107 = getelementptr inbounds %struct.MPoly, ptr %36, i64 1
  %108 = add nuw nsw i64 %35, 1
  %109 = icmp eq i64 %108, %30
  br i1 %109, label %31, label %34, !llvm.loop !85

110:                                              ; preds = %32, %278
  %111 = phi i64 [ 0, %32 ], [ %282, %278 ]
  %112 = phi ptr [ %7, %32 ], [ %281, %278 ]
  %113 = phi ptr [ null, %32 ], [ %280, %278 ]
  %114 = phi ptr [ null, %32 ], [ %279, %278 ]
  %115 = load i32, ptr %112, align 4, !tbaa !38
  %116 = getelementptr inbounds %struct.MPoly, ptr %112, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !52
  %118 = add nsw i32 %117, %115
  %119 = icmp sgt i32 %117, 0
  br i1 %119, label %120, label %278

120:                                              ; preds = %110
  %121 = sext i32 %115 to i64
  %122 = getelementptr inbounds [3 x float], ptr %5, i64 %121
  %123 = add nsw i32 %118, -1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %124
  %126 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %121
  %127 = getelementptr inbounds [3 x float], ptr %8, i64 %111
  %128 = trunc i64 %111 to i32
  br label %129

129:                                              ; preds = %120, %271
  %130 = phi ptr [ %113, %120 ], [ %273, %271 ]
  %131 = phi ptr [ %114, %120 ], [ %272, %271 ]
  %132 = phi ptr [ %126, %120 ], [ %274, %271 ]
  %133 = phi ptr [ %125, %120 ], [ %132, %271 ]
  %134 = phi ptr [ %122, %120 ], [ %276, %271 ]
  %135 = phi i32 [ %115, %120 ], [ %275, %271 ]
  %136 = phi i32 [ %123, %120 ], [ %135, %271 ]
  %137 = getelementptr inbounds %struct.MLoop, ptr %132, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !80
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.MLoop, ptr %133, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !80
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [2 x i32], ptr %18, i64 %142
  %144 = getelementptr inbounds [2 x i32], ptr %18, i64 %139, i64 1
  %145 = load i32, ptr %144, align 4, !tbaa !44
  switch i32 %145, label %271 [
    i32 -2147483648, label %146
    i32 -1, label %146
  ]

146:                                              ; preds = %129, %129
  %147 = getelementptr inbounds i32, ptr %143, i64 1
  %148 = load i32, ptr %147, align 4, !tbaa !44
  switch i32 %148, label %150 [
    i32 -2147483648, label %149
    i32 -1, label %149
  ]

149:                                              ; preds = %146, %146
  call fastcc void @copy_v3_v3(ptr noundef %134, ptr noundef %127) #22
  br label %271

150:                                              ; preds = %146
  %151 = load i32, ptr %132, align 4, !tbaa !53
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.MVert, ptr %0, i64 %152
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  %154 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %139
  %155 = load i32, ptr %154, align 4, !tbaa !86
  %156 = icmp eq i32 %155, %151
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %139, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !87
  br label %160

160:                                              ; preds = %150, %157
  %161 = phi i32 [ %159, %157 ], [ %155, %150 ]
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.MVert, ptr %0, i64 %162
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef %163, ptr noundef %153) #22
  %164 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #22
  br label %165

165:                                              ; preds = %238, %160
  %166 = phi ptr [ %143, %160 ], [ %246, %238 ]
  %167 = phi ptr [ %133, %160 ], [ %242, %238 ]
  %168 = phi i32 [ %136, %160 ], [ %239, %238 ]
  %169 = phi i32 [ %135, %160 ], [ %240, %238 ]
  %170 = phi i32 [ %128, %160 ], [ %213, %238 ]
  %171 = phi ptr [ %131, %160 ], [ %198, %238 ]
  %172 = phi ptr [ %130, %160 ], [ %197, %238 ]
  %173 = getelementptr inbounds %struct.MLoop, ptr %167, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !80
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !86
  %178 = icmp eq i32 %177, %151
  br i1 %178, label %179, label %182

179:                                              ; preds = %165
  %180 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %175, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !87
  br label %182

182:                                              ; preds = %165, %179
  %183 = phi i32 [ %181, %179 ], [ %177, %165 ]
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.MVert, ptr %0, i64 %184
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %185, ptr noundef %153) #22
  %186 = call fastcc float @normalize_v3(ptr noundef nonnull %12) #22
  %187 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #22
  %188 = call fastcc float @saacos(float noundef %187) #22
  %189 = sext i32 %170 to i64
  %190 = getelementptr inbounds [3 x float], ptr %8, i64 %189
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %14, ptr noundef %190, float noundef %188) #22
  %191 = icmp eq ptr %171, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %182
  %193 = load ptr, ptr %171, align 8, !tbaa !88
  br label %196

194:                                              ; preds = %182
  %195 = alloca [16 x i8], align 16
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi ptr [ %171, %192 ], [ %195, %194 ]
  %198 = phi ptr [ %193, %192 ], [ null, %194 ]
  store ptr %172, ptr %197, align 8, !tbaa !88
  %199 = sext i32 %169 to i64
  %200 = getelementptr inbounds [3 x float], ptr %5, i64 %199
  %201 = getelementptr inbounds %struct.LinkNode, ptr %197, i64 0, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !90
  %202 = getelementptr inbounds i32, ptr %166, i64 1
  %203 = load i32, ptr %202, align 4, !tbaa !44
  switch i32 %203, label %204 [
    i32 -2147483648, label %247
    i32 -1, label %247
  ]

204:                                              ; preds = %196
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %12) #22
  %205 = load i32, ptr %166, align 4, !tbaa !44
  %206 = icmp eq i32 %205, %168
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, ptr %202, align 4, !tbaa !44
  br label %209

209:                                              ; preds = %204, %207
  %210 = phi i32 [ %208, %207 ], [ %205, %204 ]
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, ptr %22, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !44
  %214 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %211
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %215
  %217 = load i32, ptr %167, align 4, !tbaa !53
  %218 = load i32, ptr %214, align 4, !tbaa !53
  %219 = icmp eq i32 %217, %218
  %220 = icmp eq i32 %217, %151
  %221 = xor i1 %220, %219
  %222 = load i32, ptr %216, align 4, !tbaa !38
  br i1 %221, label %231, label %223

223:                                              ; preds = %209
  %224 = add nsw i32 %210, -1
  %225 = icmp sgt i32 %210, %222
  br i1 %225, label %238, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %215, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !52
  %229 = add i32 %222, -1
  %230 = add i32 %229, %228
  br label %238

231:                                              ; preds = %209
  %232 = add nsw i32 %210, 1
  %233 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %215, i32 1
  %234 = load i32, ptr %233, align 4, !tbaa !52
  %235 = add nsw i32 %234, %222
  %236 = icmp slt i32 %232, %235
  %237 = select i1 %236, i32 %232, i32 %222
  br label %238

238:                                              ; preds = %223, %226, %231
  %239 = phi i32 [ %230, %226 ], [ %224, %223 ], [ %237, %231 ]
  %240 = phi i32 [ %210, %226 ], [ %210, %223 ], [ %237, %231 ]
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %241
  %243 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %241, i32 1
  %244 = load i32, ptr %243, align 4, !tbaa !80
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [2 x i32], ptr %18, i64 %245
  br label %165

247:                                              ; preds = %196, %196
  %248 = call fastcc float @normalize_v3(ptr noundef nonnull %14) #22
  %249 = fcmp une float %248, 0.000000e+00
  br i1 %249, label %250, label %259

250:                                              ; preds = %247, %257
  %251 = phi ptr [ %253, %257 ], [ %197, %247 ]
  %252 = phi ptr [ %251, %257 ], [ %198, %247 ]
  %253 = load ptr, ptr %251, align 8, !tbaa !88
  store ptr %252, ptr %251, align 8, !tbaa !88
  %254 = getelementptr inbounds %struct.LinkNode, ptr %251, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !90
  %256 = icmp eq ptr %255, null
  br i1 %256, label %268, label %257

257:                                              ; preds = %250
  call fastcc void @copy_v3_v3(ptr noundef nonnull %255, ptr noundef nonnull %14) #22
  %258 = icmp eq ptr %253, null
  br i1 %258, label %268, label %250, !llvm.loop !91

259:                                              ; preds = %247, %263
  %260 = phi ptr [ %261, %263 ], [ %198, %247 ]
  %261 = phi ptr [ %264, %263 ], [ %197, %247 ]
  %262 = icmp eq ptr %261, null
  br i1 %262, label %268, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr %261, align 8, !tbaa !88
  store ptr %260, ptr %261, align 8, !tbaa !88
  %265 = getelementptr inbounds %struct.LinkNode, ptr %261, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !90
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %259, !llvm.loop !92

268:                                              ; preds = %259, %263, %257, %250
  %269 = phi ptr [ %251, %250 ], [ %251, %257 ], [ %260, %259 ], [ %261, %263 ]
  %270 = phi ptr [ null, %257 ], [ %253, %250 ], [ null, %259 ], [ %264, %263 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #24
  br label %271

271:                                              ; preds = %129, %149, %268
  %272 = phi ptr [ %131, %149 ], [ %269, %268 ], [ %131, %129 ]
  %273 = phi ptr [ %130, %149 ], [ %270, %268 ], [ %130, %129 ]
  %274 = getelementptr inbounds %struct.MLoop, ptr %132, i64 1
  %275 = add nsw i32 %135, 1
  %276 = getelementptr inbounds [3 x float], ptr %134, i64 1
  %277 = icmp slt i32 %275, %118
  br i1 %277, label %129, label %278, !llvm.loop !93

278:                                              ; preds = %271, %110
  %279 = phi ptr [ %114, %110 ], [ %272, %271 ]
  %280 = phi ptr [ %113, %110 ], [ %273, %271 ]
  %281 = getelementptr inbounds %struct.MPoly, ptr %112, i64 1
  %282 = add nuw nsw i64 %111, 1
  %283 = icmp eq i64 %282, %33
  br i1 %283, label %284, label %110, !llvm.loop !94

284:                                              ; preds = %278, %26, %31
  %285 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %285(ptr noundef %18) #23
  %286 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %286(ptr noundef %22) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !95 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !64
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !55
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !64
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !96 {
  %3 = load float, ptr %0, align 4, !tbaa !55
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !97 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = load float, ptr %2, align 4, !tbaa !55
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #11 !PGOFuncName !98 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #23
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !99 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = load float, ptr %0, align 4, !tbaa !55
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !55
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !55
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !55
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_loop_tangents_ex(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.BKEMeshToTangent, align 8
  %12 = alloca %struct.SMikkTSpaceContext, align 8
  %13 = alloca %struct.SMikkTSpaceInterface, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #24
  %14 = getelementptr inbounds i8, ptr %11, i64 48
  store i64 0, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #24
  %15 = getelementptr inbounds i8, ptr %13, i64 48
  store i64 0, ptr %15, align 8
  %16 = icmp sgt i32 %8, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %10, %24
  %18 = phi i32 [ %26, %24 ], [ 0, %10 ]
  %19 = phi ptr [ %25, %24 ], [ %7, %10 ]
  %20 = getelementptr inbounds %struct.MPoly, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.4) #23
  br label %44

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.MPoly, ptr %19, i64 1
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %17, !llvm.loop !100

28:                                               ; preds = %24, %10
  store ptr %7, ptr %11, align 8, !tbaa !101
  %29 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !103
  %30 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 2
  store ptr %0, ptr %30, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 3
  store ptr %5, ptr %31, align 8, !tbaa !105
  %32 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 4
  store ptr %4, ptr %32, align 8, !tbaa !106
  %33 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 5
  store ptr %3, ptr %33, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %11, i64 0, i32 6
  store i32 %8, ptr %34, align 8, !tbaa !108
  %35 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %12, i64 0, i32 1
  store ptr %11, ptr %35, align 8, !tbaa !109
  store ptr %13, ptr %12, align 8, !tbaa !111
  store ptr @get_num_faces, ptr %13, align 8, !tbaa !112
  %36 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 1
  store ptr @get_num_verts_of_face, ptr %36, align 8, !tbaa !114
  %37 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 2
  store ptr @get_position, ptr %37, align 8, !tbaa !115
  %38 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 4
  store ptr @get_texture_coordinate, ptr %38, align 8, !tbaa !116
  %39 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 3
  store ptr @get_normal, ptr %39, align 8, !tbaa !117
  %40 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 5
  store ptr @set_tspace, ptr %40, align 8, !tbaa !118
  %41 = call i32 @genTangSpaceDefault(ptr noundef nonnull %12) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.5) #23
  br label %44

44:                                               ; preds = %28, %43, %23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #24
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @get_num_faces(ptr nocapture noundef readonly %0) #12 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !108
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @get_num_verts_of_face(ptr nocapture noundef readonly %0, i32 noundef %1) #12 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MPoly, ptr %5, i64 %6, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !52
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @get_position(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #13 !PGOFuncName !121 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.MPoly, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = add nsw i32 %10, %3
  %12 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  %14 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.MLoop, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MVert, ptr %13, i64 %19
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %20) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @get_texture_coordinate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #13 !PGOFuncName !122 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = load ptr, ptr %6, align 8, !tbaa !101
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !38
  %13 = add nsw i32 %12, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.MLoopUV, ptr %8, i64 %14
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef %15) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @get_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #13 !PGOFuncName !123 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = load ptr, ptr %6, align 8, !tbaa !101
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !38
  %13 = add nsw i32 %12, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x float], ptr %8, i64 %14
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %15) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @set_tspace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) #13 !PGOFuncName !124 {
  %6 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.BKEMeshToTangent, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = load ptr, ptr %7, align 8, !tbaa !101
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %struct.MPoly, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = add nsw i32 %13, %4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x float], ptr %9, i64 %15
  tail call fastcc void @copy_v3_v3(ptr noundef %16, ptr noundef %1) #22
  %17 = getelementptr inbounds float, ptr %16, i64 3
  store float %2, ptr %17, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare i32 @genTangSpaceDefault(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_loop_tangents(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br i1 %5, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull %1) #23
  br label %11

9:                                                ; preds = %4
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %6, i32 noundef 16) #23
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %1) #23
  br label %29

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %17 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 8) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.7) #23
  br label %29

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %28 = load i32, ptr %27, align 8, !tbaa !72
  tail call void @BKE_mesh_loop_tangents_ex(ptr noundef %22, i32 poison, ptr noundef %24, ptr noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %12, i32 poison, ptr noundef %26, i32 noundef %28, ptr noundef %3) #22
  br label %29

29:                                               ; preds = %20, %19, %14
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @mesh_calc_ngon_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #5 !PGOFuncName !125 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.MLoop, ptr %1, i64 %7
  %9 = getelementptr %struct.MLoop, ptr %8, i64 -1
  %10 = load i32, ptr %9, align 4, !tbaa !53
  tail call fastcc void @zero_v3(ptr noundef %3) #22
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %2, i64 %13
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %23, %16 ]
  %18 = phi ptr [ %14, %12 ], [ %22, %16 ]
  %19 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %2, i64 %21
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef %3, ptr noundef %18, ptr noundef %22) #22
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp eq i64 %23, %15
  br i1 %24, label %25, label %16, !llvm.loop !126

25:                                               ; preds = %16, %4
  %26 = tail call fastcc float @normalize_v3(ptr noundef %3) #22
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %29, align 4, !tbaa !55
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_poly_normal_coords(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call fastcc void @mesh_calc_ngon_normal_coords(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  br label %42

9:                                                ; preds = %4
  switch i32 %6, label %40 [
    i32 3, label %10
    i32 4, label %23
  ]

10:                                               ; preds = %9
  %11 = load i32, ptr %1, align 4, !tbaa !53
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [3 x float], ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [3 x float], ptr %2, i64 %16
  %18 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [3 x float], ptr %2, i64 %20
  %22 = tail call float @normal_tri_v3(ptr noundef %3, ptr noundef %13, ptr noundef %17, ptr noundef %21) #23
  br label %42

23:                                               ; preds = %9
  %24 = load i32, ptr %1, align 4, !tbaa !53
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [3 x float], ptr %2, i64 %25
  %27 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [3 x float], ptr %2, i64 %29
  %31 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !53
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [3 x float], ptr %2, i64 %33
  %35 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %36 = load i32, ptr %35, align 4, !tbaa !53
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [3 x float], ptr %2, i64 %37
  %39 = tail call float @normal_quad_v3(ptr noundef %3, ptr noundef %26, ptr noundef %30, ptr noundef %34, ptr noundef %38) #23
  br label %42

40:                                               ; preds = %9
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !55
  %41 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %41, align 4, !tbaa !55
  br label %42

42:                                               ; preds = %10, %40, %23, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @mesh_calc_ngon_normal_coords(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #5 !PGOFuncName !127 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.MLoop, ptr %1, i64 %7
  %9 = getelementptr %struct.MLoop, ptr %8, i64 -1
  %10 = load i32, ptr %9, align 4, !tbaa !53
  tail call fastcc void @zero_v3(ptr noundef %3) #22
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds [3 x float], ptr %2, i64 %13
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %23, %16 ]
  %18 = phi ptr [ %14, %12 ], [ %22, %16 ]
  %19 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [3 x float], ptr %2, i64 %21
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef %3, ptr noundef %18, ptr noundef %22) #22
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp eq i64 %23, %15
  br i1 %24, label %25, label %16, !llvm.loop !128

25:                                               ; preds = %16, %4
  %26 = tail call fastcc float @normalize_v3(ptr noundef %3) #22
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %29, align 4, !tbaa !55
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_poly_center(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  switch i32 %6, label %35 [
    i32 3, label %7
    i32 4, label %19
  ]

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 4, !tbaa !53
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.MVert, ptr %2, i64 %9
  %11 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %2, i64 %13
  %15 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %16 = load i32, ptr %15, align 4, !tbaa !53
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %2, i64 %17
  tail call void @cent_tri_v3(ptr noundef %3, ptr noundef %10, ptr noundef %14, ptr noundef %18) #23
  br label %36

19:                                               ; preds = %4
  %20 = load i32, ptr %1, align 4, !tbaa !53
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %2, i64 %21
  %23 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %2, i64 %25
  %27 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %2, i64 %29
  %31 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %32 = load i32, ptr %31, align 4, !tbaa !53
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %2, i64 %33
  tail call void @cent_quad_v3(ptr noundef %3, ptr noundef %22, ptr noundef %26, ptr noundef %30, ptr noundef %34) #23
  br label %36

35:                                               ; preds = %4
  tail call fastcc void @mesh_calc_ngon_center(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  br label %36

36:                                               ; preds = %19, %35, %7
  ret void
}

; Function Attrs: optsize
declare void @cent_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @cent_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mesh_calc_ngon_center(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #14 !PGOFuncName !129 {
  %5 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = sitofp i32 %6 to float
  %8 = fdiv float 1.000000e+00, %7
  tail call fastcc void @zero_v3(ptr noundef %3) #22
  %9 = load i32, ptr %5, align 4, !tbaa !52
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4, %11
  %12 = phi i32 [ %18, %11 ], [ 0, %4 ]
  %13 = phi ptr [ %14, %11 ], [ %1, %4 ]
  %14 = getelementptr inbounds %struct.MLoop, ptr %13, i64 1
  %15 = load i32, ptr %13, align 4, !tbaa !53
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %2, i64 %16
  tail call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %17, float noundef %8) #22
  %18 = add nuw nsw i32 %12, 1
  %19 = load i32, ptr %5, align 4, !tbaa !52
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %11, label %21, !llvm.loop !130

21:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_mesh_calc_poly_area(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !52
  switch i32 %5, label %36 [
    i32 3, label %6
    i32 4, label %19
  ]

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4, !tbaa !53
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.MVert, ptr %2, i64 %8
  %10 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %2, i64 %16
  %18 = tail call float @area_tri_v3(ptr noundef %9, ptr noundef %13, ptr noundef %17) #23
  br label %55

19:                                               ; preds = %3
  %20 = load i32, ptr %1, align 4, !tbaa !53
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %2, i64 %21
  %23 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %2, i64 %25
  %27 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %2, i64 %29
  %31 = getelementptr inbounds %struct.MLoop, ptr %1, i64 3
  %32 = load i32, ptr %31, align 4, !tbaa !53
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %2, i64 %33
  %35 = tail call float @area_quad_v3(ptr noundef %22, ptr noundef %26, ptr noundef %30, ptr noundef %34) #23
  br label %55

36:                                               ; preds = %3
  %37 = sext i32 %5 to i64
  %38 = mul nsw i64 %37, 12
  %39 = alloca i8, i64 %38, align 16
  %40 = icmp sgt i32 %5, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = zext nneg i32 %5 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %50, %43 ]
  %45 = phi ptr [ %1, %41 ], [ %51, %43 ]
  %46 = getelementptr inbounds [3 x float], ptr %39, i64 %44
  %47 = load i32, ptr %45, align 4, !tbaa !53
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.MVert, ptr %2, i64 %48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef %49) #22
  %50 = add nuw nsw i64 %44, 1
  %51 = getelementptr inbounds %struct.MLoop, ptr %45, i64 1
  %52 = icmp eq i64 %50, %42
  br i1 %52, label %53, label %43, !llvm.loop !131

53:                                               ; preds = %43, %36
  %54 = call float @area_poly_v3(ptr noundef nonnull %39, i32 noundef %5) #23
  br label %55

55:                                               ; preds = %53, %19, %6
  %56 = phi float [ %18, %6 ], [ %35, %19 ], [ %54, %53 ]
  ret float %56
}

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @area_poly_v3(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_poly_angles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  %7 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %8 to i64
  %11 = getelementptr %struct.MLoop, ptr %1, i64 %10
  %12 = getelementptr %struct.MLoop, ptr %11, i64 -2
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.MVert, ptr %2, i64 %14
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MVert, ptr %2, i64 %19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %15, ptr noundef %20) #22
  %21 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #22
  %22 = load i32, ptr %7, align 4, !tbaa !52
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %4, %24
  %25 = phi i64 [ %39, %24 ], [ 0, %4 ]
  %26 = phi i32 [ %43, %24 ], [ %9, %4 ]
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !53
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %2, i64 %30
  %32 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %25
  %33 = load i32, ptr %32, align 4, !tbaa !53
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MVert, ptr %2, i64 %34
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %31, ptr noundef %35) #22
  %36 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #22
  %37 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %38 = getelementptr inbounds float, ptr %3, i64 %27
  store float %37, ptr %38, align 4, !tbaa !55
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %39 = add nuw nsw i64 %25, 1
  %40 = load i32, ptr %7, align 4, !tbaa !52
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  %43 = trunc i64 %25 to i32
  br i1 %42, label %24, label %44, !llvm.loop !132

44:                                               ; preds = %24, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  ret void
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_poly_edgehash_insert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  %9 = getelementptr %struct.MLoop, ptr %2, i64 %8
  %10 = getelementptr %struct.MLoop, ptr %9, i64 -1
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %15, %11 ], [ %5, %7 ]
  %13 = phi ptr [ %19, %11 ], [ %2, %7 ]
  %14 = phi ptr [ %13, %11 ], [ %10, %7 ]
  %15 = add nsw i32 %12, -1
  %16 = load i32, ptr %14, align 4, !tbaa !53
  %17 = load i32, ptr %13, align 4, !tbaa !53
  %18 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %0, i32 noundef %16, i32 noundef %17, ptr noundef null) #23
  %19 = getelementptr inbounds %struct.MLoop, ptr %13, i64 1
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %11, !llvm.loop !133

21:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_edgehash_reinsert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_poly_edgebitmap_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %10, %7 ], [ %5, %3 ]
  %9 = phi ptr [ %20, %7 ], [ %2, %3 ]
  %10 = add nsw i32 %8, -1
  %11 = getelementptr inbounds %struct.MLoop, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = and i32 %12, 31
  %14 = shl nuw i32 1, %13
  %15 = lshr i32 %12, 5
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = or i32 %14, %18
  store i32 %19, ptr %17, align 4, !tbaa !44
  %20 = getelementptr inbounds %struct.MLoop, ptr %9, i64 1
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %22, label %7, !llvm.loop !134

22:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_mesh_center_median(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !69
  tail call fastcc void @zero_v3(ptr noundef %1) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %13, %9 ], [ %8, %6 ]
  %11 = phi i32 [ %12, %9 ], [ %4, %6 ]
  %12 = add nsw i32 %11, -1
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef %10) #22
  %13 = getelementptr inbounds %struct.MVert, ptr %10, i64 1
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %9, !llvm.loop !135

15:                                               ; preds = %9, %2
  %16 = load i32, ptr %3, align 8, !tbaa !69
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = sitofp i32 %16 to float
  %20 = fdiv float 1.000000e+00, %19
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %20) #22
  %21 = load i32, ptr %3, align 8, !tbaa !69
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i8 [ %23, %18 ], [ 0, %15 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !136 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !55
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !137 {
  %3 = load float, ptr %1, align 4, !tbaa !55
  %4 = load float, ptr %0, align 4, !tbaa !55
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !55
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !138 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !55
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_mesh_center_bounds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 8, !tbaa !55
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !55
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %6, align 8, !tbaa !55
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !55
  %7 = call zeroext i8 @BKE_mesh_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  br label %10

10:                                               ; preds = %2, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @BKE_mesh_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_mesh_center_centroid(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %5 = load i32, ptr %4, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  tail call fastcc void @zero_v3(ptr noundef %1) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi float [ 0.000000e+00, %7 ], [ %23, %12 ]
  %14 = phi ptr [ %9, %7 ], [ %24, %12 ]
  %15 = phi i32 [ %5, %7 ], [ %16, %12 ]
  %16 = add nsw i32 %15, -1
  %17 = load ptr, ptr %10, align 8, !tbaa !70
  %18 = load i32, ptr %14, align 4, !tbaa !38
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MLoop, ptr %17, i64 %19
  %21 = load ptr, ptr %11, align 8, !tbaa !65
  %22 = call fastcc float @mesh_calc_poly_planar_area_centroid(ptr noundef nonnull %14, ptr noundef %20, ptr noundef %21, ptr noundef nonnull %3) #22
  call fastcc void @madd_v3_v3fl(ptr noundef %1, ptr noundef nonnull %3, float noundef %22) #22
  %23 = fadd float %13, %22
  %24 = getelementptr inbounds %struct.MPoly, ptr %14, i64 1
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %26, label %12, !llvm.loop !139

26:                                               ; preds = %12, %2
  %27 = phi float [ 0.000000e+00, %2 ], [ %23, %12 ]
  %28 = load i32, ptr %4, align 8, !tbaa !72
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = fdiv float 1.000000e+00, %27
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %31) #22
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call fastcc zeroext i8 @is_finite_v3(ptr noundef %1) #22, !range !140
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call zeroext i8 @BKE_mesh_center_median(ptr noundef nonnull %0, ptr noundef %1) #22, !range !140
  br label %41

37:                                               ; preds = %32
  %38 = load i32, ptr %4, align 8, !tbaa !72
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i8 [ %40, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @mesh_calc_poly_planar_area_centroid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !141 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  call void @BKE_mesh_calc_poly_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #22
  %10 = load i32, ptr %1, align 4, !tbaa !53
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.MVert, ptr %2, i64 %11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %12) #22
  %13 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.MVert, ptr %2, i64 %15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %16) #22
  call fastcc void @zero_v3(ptr noundef %3) #22
  %17 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %33

20:                                               ; preds = %4, %20
  %21 = phi i64 [ %29, %20 ], [ 2, %4 ]
  %22 = phi float [ %28, %20 ], [ 0.000000e+00, %4 ]
  %23 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %2, i64 %25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %26) #22
  %27 = call float @area_tri_signed_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  %28 = fadd float %22, %27
  call void @cent_tri_v3(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %9, float noundef %27) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %29 = add nuw nsw i64 %21, 1
  %30 = load i32, ptr %17, align 4, !tbaa !52
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %20, label %33, !llvm.loop !142

33:                                               ; preds = %20, %4
  %34 = phi float [ 0.000000e+00, %4 ], [ %28, %20 ]
  %35 = fdiv float 1.000000e+00, %34
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %35) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  ret float %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_finite_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !143 {
  %2 = load float, ptr %0, align 4, !tbaa !55
  %3 = tail call float @llvm.fabs.f32(float %2)
  %4 = fcmp ueq float %3, 0x7FF0000000000000
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ueq float %8, 0x7FF0000000000000
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp one float %13, 0x7FF0000000000000
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %10, %5, %1
  %17 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %15, %10 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_volume(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  %8 = icmp eq ptr %4, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store float 0.000000e+00, ptr %4, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp ne ptr %5, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call fastcc void @zero_v3(ptr noundef nonnull %5) #22
  br label %13

13:                                               ; preds = %12, %10
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %13
  %16 = call fastcc zeroext i8 @mesh_calc_center_centroid_ex(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %7) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %15
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %18
  %21 = zext nneg i32 %3 to i64
  br label %22

22:                                               ; preds = %20, %53
  %23 = phi i64 [ 0, %20 ], [ %55, %53 ]
  %24 = phi float [ 0.000000e+00, %20 ], [ %54, %53 ]
  %25 = getelementptr inbounds %struct.MFace, ptr %2, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !75
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MVert, ptr %0, i64 %27
  %29 = getelementptr inbounds %struct.MFace, ptr %2, i64 %23, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !76
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.MVert, ptr %0, i64 %31
  %33 = getelementptr inbounds %struct.MFace, ptr %2, i64 %23, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !77
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MVert, ptr %0, i64 %35
  %37 = getelementptr inbounds %struct.MFace, ptr %2, i64 %23, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !73
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.MVert, ptr %0, i64 %39
  %41 = call float @volume_tetrahedron_signed_v3(ptr noundef nonnull %7, ptr noundef %28, ptr noundef %32, ptr noundef %36) #23
  %42 = select i1 %8, float -0.000000e+00, float %41
  %43 = fadd float %24, %42
  br i1 %11, label %44, label %45

44:                                               ; preds = %22
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef %41) #22
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef %28, float noundef %41) #22
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef %32, float noundef %41) #22
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef %36, float noundef %41) #22
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, ptr %37, align 4, !tbaa !73
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = call float @volume_tetrahedron_signed_v3(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %40, ptr noundef %28) #23
  %50 = fadd float %43, %49
  %51 = select i1 %8, float %24, float %50
  br i1 %11, label %52, label %53

52:                                               ; preds = %48
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef %49) #22
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef %36, float noundef %49) #22
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef %40, float noundef %49) #22
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef %28, float noundef %49) #22
  br label %53

53:                                               ; preds = %48, %52, %45
  %54 = phi float [ %51, %52 ], [ %51, %48 ], [ %43, %45 ]
  %55 = add nuw nsw i64 %23, 1
  %56 = icmp eq i64 %55, %21
  br i1 %56, label %57, label %22, !llvm.loop !144

57:                                               ; preds = %53, %18
  %58 = phi float [ 0.000000e+00, %18 ], [ %54, %53 ]
  br i1 %8, label %61, label %59

59:                                               ; preds = %57
  %60 = call float @llvm.fabs.f32(float %58)
  store float %60, ptr %4, align 4, !tbaa !55
  br label %61

61:                                               ; preds = %59, %57
  %62 = fcmp une float %58, 0.000000e+00
  %63 = select i1 %11, i1 %62, i1 false
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = fdiv float 2.500000e-01, %58
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %65) #22
  br label %66

66:                                               ; preds = %61, %64, %15, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mesh_calc_center_centroid_ex(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !145 {
  tail call fastcc void @zero_v3(ptr noundef %3) #22
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %4
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %34
  %9 = phi i64 [ 0, %6 ], [ %36, %34 ]
  %10 = phi float [ 0.000000e+00, %6 ], [ %35, %34 ]
  %11 = getelementptr inbounds %struct.MFace, ptr %1, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !75
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %0, i64 %13
  %15 = getelementptr inbounds %struct.MFace, ptr %1, i64 %9, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %0, i64 %17
  %19 = getelementptr inbounds %struct.MFace, ptr %1, i64 %9, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %0, i64 %21
  %23 = getelementptr inbounds %struct.MFace, ptr %1, i64 %9, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !73
  %25 = tail call float @area_tri_v3(ptr noundef %14, ptr noundef %18, ptr noundef %22) #23
  tail call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %14, float noundef %25) #22
  tail call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %18, float noundef %25) #22
  tail call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %22, float noundef %25) #22
  %26 = fadd float %10, %25
  %27 = load i32, ptr %23, align 4, !tbaa !73
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %8
  %30 = zext i32 %24 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %0, i64 %30
  %32 = tail call float @area_tri_v3(ptr noundef %22, ptr noundef %31, ptr noundef %14) #23
  tail call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %22, float noundef %32) #22
  tail call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %31, float noundef %32) #22
  tail call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %14, float noundef %32) #22
  %33 = fadd float %26, %32
  br label %34

34:                                               ; preds = %29, %8
  %35 = phi float [ %33, %29 ], [ %26, %8 ]
  %36 = add nuw nsw i64 %9, 1
  %37 = icmp eq i64 %36, %7
  br i1 %37, label %38, label %8, !llvm.loop !146

38:                                               ; preds = %34
  %39 = fcmp oeq float %35, 0.000000e+00
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = fmul float %35, 3.000000e+00
  %42 = fdiv float 1.000000e+00, %41
  tail call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %42) #22
  br label %43

43:                                               ; preds = %4, %38, %40
  %44 = phi i8 [ 1, %40 ], [ 0, %38 ], [ 0, %4 ]
  ret i8 %44
}

; Function Attrs: optsize
declare float @volume_tetrahedron_signed_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_loops_to_mface_corners(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11) local_unnamed_addr #0 {
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = icmp sgt i32 %6, 0
  %16 = zext nneg i32 %6 to i64
  br label %22

17:                                               ; preds = %45, %12
  %18 = icmp sgt i32 %8, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %17
  %20 = icmp sgt i32 %6, 0
  %21 = zext nneg i32 %6 to i64
  br label %48

22:                                               ; preds = %14, %45
  %23 = phi i32 [ 0, %14 ], [ %46, %45 ]
  %24 = tail call ptr @CustomData_get_n(ptr noundef %0, i32 noundef 5, i32 noundef %4, i32 noundef %23) #23
  %25 = tail call ptr @CustomData_get_n(ptr noundef %2, i32 noundef 15, i32 noundef %5, i32 noundef %23) #23
  %26 = load ptr, ptr %25, align 8, !tbaa !147
  %27 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !149
  %28 = getelementptr inbounds %struct.MTexPoly, ptr %25, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !151
  %30 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 2
  store i8 %29, ptr %30, align 8, !tbaa !152
  %31 = getelementptr inbounds %struct.MTexPoly, ptr %25, i64 0, i32 2
  %32 = load i8, ptr %31, align 1, !tbaa !153
  %33 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 3
  store i8 %32, ptr %33, align 1, !tbaa !154
  %34 = getelementptr inbounds %struct.MTexPoly, ptr %25, i64 0, i32 3
  %35 = getelementptr inbounds %struct.MTFace, ptr %24, i64 0, i32 4
  %36 = load <2 x i16>, ptr %34, align 2, !tbaa !64
  store <2 x i16> %36, ptr %35, align 2, !tbaa !64
  br i1 %15, label %37, label %45

37:                                               ; preds = %22, %37
  %38 = phi i64 [ %43, %37 ], [ 0, %22 ]
  %39 = getelementptr inbounds i32, ptr %3, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !44
  %41 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 16, i32 noundef %40, i32 noundef %23) #23
  %42 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %38
  tail call fastcc void @copy_v2_v2(ptr noundef %42, ptr noundef %41) #22
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %16
  br i1 %44, label %45, label %37, !llvm.loop !155

45:                                               ; preds = %37, %22
  %46 = add nuw nsw i32 %23, 1
  %47 = icmp eq i32 %46, %7
  br i1 %47, label %17, label %22, !llvm.loop !156

48:                                               ; preds = %19, %61
  %49 = phi i32 [ 0, %19 ], [ %62, %61 ]
  %50 = tail call ptr @CustomData_get_n(ptr noundef %0, i32 noundef 6, i32 noundef %4, i32 noundef %49) #23
  br i1 %20, label %51, label %61

51:                                               ; preds = %48, %51
  %52 = phi i64 [ %59, %51 ], [ 0, %48 ]
  %53 = getelementptr inbounds i32, ptr %3, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !44
  %55 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 17, i32 noundef %54, i32 noundef %49) #23
  %56 = getelementptr inbounds %struct.MCol, ptr %50, i64 %52
  %57 = load <4 x i8>, ptr %55, align 1, !tbaa !157
  %58 = shufflevector <4 x i8> %57, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %58, ptr %56, align 1, !tbaa !157
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %21
  br i1 %60, label %61, label %51, !llvm.loop !158

61:                                               ; preds = %51, %48
  %62 = add nuw nsw i32 %49, 1
  %63 = icmp eq i32 %62, %8
  br i1 %63, label %64, label %48, !llvm.loop !159

64:                                               ; preds = %61, %17
  %65 = icmp eq i8 %9, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %64
  %67 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 20) #23
  %68 = icmp sgt i32 %6, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = zext nneg i32 %6 to i64
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ 0, %69 ], [ %79, %71 ]
  %73 = getelementptr inbounds i32, ptr %3, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !44
  %75 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %74, i32 noundef 32) #23
  %76 = getelementptr inbounds %struct.MCol, ptr %67, i64 %72
  %77 = load <4 x i8>, ptr %75, align 1, !tbaa !157
  %78 = shufflevector <4 x i8> %77, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %78, ptr %76, align 1, !tbaa !157
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, %70
  br i1 %80, label %81, label %71, !llvm.loop !160

81:                                               ; preds = %71, %66, %64
  %82 = icmp eq i8 %10, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %81
  %84 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 13) #23
  %85 = icmp sgt i32 %6, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = zext nneg i32 %6 to i64
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi i64 [ 0, %86 ], [ %94, %88 ]
  %90 = getelementptr inbounds i32, ptr %3, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !44
  %92 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %91, i32 noundef 31) #23
  %93 = getelementptr inbounds [4 x [2 x float]], ptr %84, i64 0, i64 %89
  tail call fastcc void @copy_v2_v2(ptr noundef %93, ptr noundef %92) #22
  %94 = add nuw nsw i64 %89, 1
  %95 = icmp eq i64 %94, %87
  br i1 %95, label %96, label %88, !llvm.loop !161

96:                                               ; preds = %88, %83, %81
  %97 = icmp eq i8 %11, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %96
  %99 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 40) #23
  %100 = icmp sgt i32 %6, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = zext nneg i32 %6 to i64
  br label %103

103:                                              ; preds = %101, %103
  %104 = phi i64 [ 0, %101 ], [ %109, %103 ]
  %105 = getelementptr inbounds [3 x i16], ptr %99, i64 %104
  %106 = getelementptr inbounds i32, ptr %3, i64 %104
  %107 = load i32, ptr %106, align 4, !tbaa !44
  %108 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %107, i32 noundef 8) #23
  tail call fastcc void @normal_float_to_short_v3(ptr noundef %105, ptr noundef %108) #22
  %109 = add nuw nsw i64 %104, 1
  %110 = icmp eq i64 %109, %102
  br i1 %110, label %111, label %103, !llvm.loop !162

111:                                              ; preds = %103, %98, %96
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get_n(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !163 {
  %3 = load float, ptr %1, align 4, !tbaa !55
  store float %3, ptr %0, align 4, !tbaa !55
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_loops_to_tessdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 15) #23
  %9 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 17) #23
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 32) #23
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 31) #23
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 8) #23
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = icmp sgt i32 %6, 0
  %16 = icmp eq ptr %3, null
  %17 = zext nneg i32 %6 to i64
  br label %24

18:                                               ; preds = %69, %7
  %19 = icmp sgt i32 %9, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %18
  %21 = icmp sgt i32 %6, 0
  %22 = icmp eq ptr %3, null
  %23 = zext nneg i32 %6 to i64
  br label %72

24:                                               ; preds = %14, %69
  %25 = phi i32 [ 0, %14 ], [ %70, %69 ]
  %26 = tail call ptr @CustomData_get_layer_n(ptr noundef %0, i32 noundef 5, i32 noundef %25) #23
  %27 = tail call ptr @CustomData_get_layer_n(ptr noundef %2, i32 noundef 15, i32 noundef %25) #23
  %28 = tail call ptr @CustomData_get_layer_n(ptr noundef %1, i32 noundef 16, i32 noundef %25) #23
  br i1 %15, label %29, label %69

29:                                               ; preds = %24, %63
  %30 = phi i64 [ %66, %63 ], [ 0, %24 ]
  %31 = phi ptr [ %64, %63 ], [ %4, %24 ]
  %32 = phi ptr [ %65, %63 ], [ %5, %24 ]
  %33 = phi ptr [ %67, %63 ], [ %26, %24 ]
  %34 = load i32, ptr %31, align 4, !tbaa !44
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !147
  %38 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !149
  %39 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35, i32 1
  %40 = load i8, ptr %39, align 8, !tbaa !151
  %41 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 2
  store i8 %40, ptr %41, align 8, !tbaa !152
  %42 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35, i32 2
  %43 = load i8, ptr %42, align 1, !tbaa !153
  %44 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 3
  store i8 %43, ptr %44, align 1, !tbaa !154
  %45 = getelementptr inbounds %struct.MTexPoly, ptr %27, i64 %35, i32 3
  %46 = getelementptr inbounds %struct.MTFace, ptr %33, i64 0, i32 4
  %47 = load <2 x i16>, ptr %45, align 2, !tbaa !64
  store <2 x i16> %47, ptr %46, align 2, !tbaa !64
  %48 = getelementptr inbounds %struct.MFace, ptr %3, i64 %30, i32 3
  %49 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 3
  %50 = select i1 %16, ptr %49, ptr %48
  %51 = load i32, ptr %50, align 4, !tbaa !44
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i64 3, i64 4
  br label %54

54:                                               ; preds = %29, %54
  %55 = phi i64 [ %53, %29 ], [ %56, %54 ]
  %56 = add nsw i64 %55, -1
  %57 = getelementptr inbounds [4 x [2 x float]], ptr %33, i64 0, i64 %56
  %58 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 %56
  %59 = load i32, ptr %58, align 4, !tbaa !44
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MLoopUV, ptr %28, i64 %60
  tail call fastcc void @copy_v2_v2(ptr noundef %57, ptr noundef %61) #22
  %62 = icmp eq i64 %56, 0
  br i1 %62, label %63, label %54, !llvm.loop !164

63:                                               ; preds = %54
  %64 = getelementptr inbounds i32, ptr %31, i64 1
  %65 = getelementptr inbounds [4 x i32], ptr %32, i64 1
  %66 = add nuw nsw i64 %30, 1
  %67 = getelementptr inbounds %struct.MTFace, ptr %33, i64 1
  %68 = icmp eq i64 %66, %17
  br i1 %68, label %69, label %29, !llvm.loop !165

69:                                               ; preds = %63, %24
  %70 = add nuw nsw i32 %25, 1
  %71 = icmp eq i32 %70, %8
  br i1 %71, label %18, label %24, !llvm.loop !166

72:                                               ; preds = %20, %102
  %73 = phi i32 [ 0, %20 ], [ %103, %102 ]
  %74 = tail call ptr @CustomData_get_layer_n(ptr noundef %0, i32 noundef 6, i32 noundef %73) #23
  %75 = tail call ptr @CustomData_get_layer_n(ptr noundef %1, i32 noundef 17, i32 noundef %73) #23
  br i1 %21, label %76, label %102

76:                                               ; preds = %72, %97
  %77 = phi i64 [ %99, %97 ], [ 0, %72 ]
  %78 = phi ptr [ %98, %97 ], [ %5, %72 ]
  %79 = phi ptr [ %100, %97 ], [ %74, %72 ]
  %80 = getelementptr inbounds %struct.MFace, ptr %3, i64 %77, i32 3
  %81 = getelementptr inbounds [4 x i32], ptr %78, i64 0, i64 3
  %82 = select i1 %22, ptr %81, ptr %80
  %83 = load i32, ptr %82, align 4, !tbaa !44
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i64 3, i64 4
  br label %86

86:                                               ; preds = %76, %86
  %87 = phi i64 [ %85, %76 ], [ %88, %86 ]
  %88 = add nsw i64 %87, -1
  %89 = getelementptr inbounds [4 x i32], ptr %78, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !44
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MLoopCol, ptr %75, i64 %91
  %93 = getelementptr inbounds [4 x %struct.MCol], ptr %79, i64 0, i64 %88
  %94 = load <4 x i8>, ptr %92, align 1, !tbaa !157
  %95 = shufflevector <4 x i8> %94, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %95, ptr %93, align 1, !tbaa !157
  %96 = icmp eq i64 %88, 0
  br i1 %96, label %97, label %86, !llvm.loop !167

97:                                               ; preds = %86
  %98 = getelementptr inbounds [4 x i32], ptr %78, i64 1
  %99 = add nuw nsw i64 %77, 1
  %100 = getelementptr inbounds [4 x %struct.MCol], ptr %79, i64 1
  %101 = icmp eq i64 %99, %23
  br i1 %101, label %102, label %76, !llvm.loop !168

102:                                              ; preds = %97, %72
  %103 = add nuw nsw i32 %73, 1
  %104 = icmp eq i32 %103, %9
  br i1 %104, label %105, label %72, !llvm.loop !169

105:                                              ; preds = %102, %18
  %106 = icmp eq i8 %10, 0
  br i1 %106, label %140, label %107

107:                                              ; preds = %105
  %108 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 20) #23
  %109 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 32) #23
  %110 = icmp sgt i32 %6, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %107
  %112 = icmp eq ptr %3, null
  %113 = zext nneg i32 %6 to i64
  br label %114

114:                                              ; preds = %111, %135
  %115 = phi i64 [ 0, %111 ], [ %137, %135 ]
  %116 = phi ptr [ %5, %111 ], [ %136, %135 ]
  %117 = phi ptr [ %108, %111 ], [ %138, %135 ]
  %118 = getelementptr inbounds %struct.MFace, ptr %3, i64 %115, i32 3
  %119 = getelementptr inbounds [4 x i32], ptr %116, i64 0, i64 3
  %120 = select i1 %112, ptr %119, ptr %118
  %121 = load i32, ptr %120, align 4, !tbaa !44
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i64 3, i64 4
  br label %124

124:                                              ; preds = %114, %124
  %125 = phi i64 [ %123, %114 ], [ %126, %124 ]
  %126 = add nsw i64 %125, -1
  %127 = getelementptr inbounds [4 x i32], ptr %116, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !44
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.MLoopCol, ptr %109, i64 %129
  %131 = getelementptr inbounds [4 x %struct.MCol], ptr %117, i64 0, i64 %126
  %132 = load <4 x i8>, ptr %130, align 1, !tbaa !157
  %133 = shufflevector <4 x i8> %132, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %133, ptr %131, align 1, !tbaa !157
  %134 = icmp eq i64 %126, 0
  br i1 %134, label %135, label %124, !llvm.loop !170

135:                                              ; preds = %124
  %136 = getelementptr inbounds [4 x i32], ptr %116, i64 1
  %137 = add nuw nsw i64 %115, 1
  %138 = getelementptr inbounds [4 x %struct.MCol], ptr %117, i64 1
  %139 = icmp eq i64 %137, %113
  br i1 %139, label %140, label %114, !llvm.loop !171

140:                                              ; preds = %135, %107, %105
  %141 = icmp eq i8 %11, 0
  br i1 %141, label %173, label %142

142:                                              ; preds = %140
  %143 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 13) #23
  %144 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 31) #23
  %145 = icmp sgt i32 %6, 0
  br i1 %145, label %146, label %173

146:                                              ; preds = %142
  %147 = icmp eq ptr %3, null
  %148 = zext nneg i32 %6 to i64
  br label %149

149:                                              ; preds = %146, %168
  %150 = phi i64 [ 0, %146 ], [ %170, %168 ]
  %151 = phi ptr [ %143, %146 ], [ %171, %168 ]
  %152 = phi ptr [ %5, %146 ], [ %169, %168 ]
  %153 = getelementptr inbounds %struct.MFace, ptr %3, i64 %150, i32 3
  %154 = getelementptr inbounds [4 x i32], ptr %152, i64 0, i64 3
  %155 = select i1 %147, ptr %154, ptr %153
  %156 = load i32, ptr %155, align 4, !tbaa !44
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, i64 3, i64 4
  br label %159

159:                                              ; preds = %149, %159
  %160 = phi i64 [ %158, %149 ], [ %161, %159 ]
  %161 = add nsw i64 %160, -1
  %162 = getelementptr inbounds [4 x [2 x float]], ptr %151, i64 0, i64 %161
  %163 = getelementptr inbounds [4 x i32], ptr %152, i64 0, i64 %161
  %164 = load i32, ptr %163, align 4, !tbaa !44
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %144, i64 %165
  tail call fastcc void @copy_v2_v2(ptr noundef %162, ptr noundef %166) #22
  %167 = icmp eq i64 %161, 0
  br i1 %167, label %168, label %159, !llvm.loop !172

168:                                              ; preds = %159
  %169 = getelementptr inbounds [4 x i32], ptr %152, i64 1
  %170 = add nuw nsw i64 %150, 1
  %171 = getelementptr inbounds %struct.OrigSpaceFace, ptr %151, i64 1
  %172 = icmp eq i64 %170, %148
  br i1 %172, label %173, label %149, !llvm.loop !173

173:                                              ; preds = %168, %142, %140
  %174 = icmp eq i8 %12, 0
  br i1 %174, label %206, label %175

175:                                              ; preds = %173
  %176 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 40) #23
  %177 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 8) #23
  %178 = icmp sgt i32 %6, 0
  br i1 %178, label %179, label %206

179:                                              ; preds = %175
  %180 = icmp eq ptr %3, null
  %181 = zext nneg i32 %6 to i64
  br label %182

182:                                              ; preds = %179, %201
  %183 = phi i64 [ 0, %179 ], [ %203, %201 ]
  %184 = phi ptr [ %176, %179 ], [ %204, %201 ]
  %185 = phi ptr [ %5, %179 ], [ %202, %201 ]
  %186 = getelementptr inbounds %struct.MFace, ptr %3, i64 %183, i32 3
  %187 = getelementptr inbounds [4 x i32], ptr %185, i64 0, i64 3
  %188 = select i1 %180, ptr %187, ptr %186
  %189 = load i32, ptr %188, align 4, !tbaa !44
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i64 3, i64 4
  br label %192

192:                                              ; preds = %182, %192
  %193 = phi i64 [ %191, %182 ], [ %194, %192 ]
  %194 = add nsw i64 %193, -1
  %195 = getelementptr inbounds [4 x [3 x i16]], ptr %184, i64 0, i64 %194
  %196 = getelementptr inbounds [4 x i32], ptr %185, i64 0, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !44
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [3 x float], ptr %177, i64 %198
  tail call fastcc void @normal_float_to_short_v3(ptr noundef %195, ptr noundef %199) #22
  %200 = icmp eq i64 %194, 0
  br i1 %200, label %201, label %192, !llvm.loop !174

201:                                              ; preds = %192
  %202 = getelementptr inbounds [4 x i32], ptr %185, i64 1
  %203 = add nuw nsw i64 %183, 1
  %204 = getelementptr inbounds [4 x [3 x i16]], ptr %184, i64 1
  %205 = icmp eq i64 %203, %181
  br i1 %205, label %206, label %182, !llvm.loop !175

206:                                              ; preds = %201, %175, %173
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_mesh_recalc_tessellation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = tail call fastcc i32 @poly_to_tri_count(i32 noundef %6, i32 noundef %5) #22
  %12 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 25) #23
  %13 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 26) #23
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = sext i32 %11 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #23
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %19 = mul nsw i64 %15, 20
  %20 = tail call ptr %18(i64 noundef %19, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #23
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %22 = shl nsw i64 %15, 4
  %23 = tail call ptr %21(i64 noundef %22, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #23
  %24 = icmp sgt i32 %6, 0
  br i1 %24, label %25, label %212

25:                                               ; preds = %8
  %26 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  br label %27

27:                                               ; preds = %25, %203
  %28 = phi ptr [ %12, %25 ], [ %207, %203 ]
  %29 = phi ptr [ null, %25 ], [ %205, %203 ]
  %30 = phi i32 [ 0, %25 ], [ %206, %203 ]
  %31 = phi i32 [ 0, %25 ], [ %204, %203 ]
  %32 = load i32, ptr %28, align 4, !tbaa !38
  %33 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !52
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %203, label %36

36:                                               ; preds = %27
  switch i32 %34, label %101 [
    i32 3, label %37
    i32 4, label %67
  ]

37:                                               ; preds = %36
  %38 = sext i32 %31 to i64
  %39 = getelementptr inbounds i32, ptr %17, i64 %38
  store i32 %30, ptr %39, align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.MFace, ptr %20, i64 %38
  %41 = getelementptr inbounds [4 x i32], ptr %23, i64 %38
  %42 = add i32 %32, 1
  %43 = add i32 %32, 2
  %44 = zext i32 %32 to i64
  %45 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !53
  store i32 %46, ptr %40, align 4, !tbaa !75
  %47 = zext i32 %42 to i64
  %48 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = getelementptr inbounds %struct.MFace, ptr %20, i64 %38, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !76
  %51 = zext i32 %43 to i64
  %52 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !53
  %54 = getelementptr inbounds %struct.MFace, ptr %20, i64 %38, i32 2
  store i32 %53, ptr %54, align 4, !tbaa !77
  %55 = getelementptr inbounds %struct.MFace, ptr %20, i64 %38, i32 3
  store i32 0, ptr %55, align 4, !tbaa !73
  store i32 %32, ptr %41, align 4, !tbaa !44
  %56 = getelementptr inbounds i32, ptr %41, i64 1
  store i32 %42, ptr %56, align 4, !tbaa !44
  %57 = getelementptr inbounds i32, ptr %41, i64 2
  store i32 %43, ptr %57, align 4, !tbaa !44
  %58 = getelementptr inbounds i32, ptr %41, i64 3
  store i32 0, ptr %58, align 4, !tbaa !44
  %59 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 2
  %60 = load i16, ptr %59, align 4, !tbaa !176
  %61 = getelementptr inbounds %struct.MFace, ptr %20, i64 %38, i32 4
  store i16 %60, ptr %61, align 4, !tbaa !177
  %62 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 3
  %63 = load i8, ptr %62, align 2, !tbaa !81
  %64 = getelementptr inbounds %struct.MFace, ptr %20, i64 %38, i32 6
  store i8 %63, ptr %64, align 1, !tbaa !178
  %65 = getelementptr inbounds %struct.MFace, ptr %20, i64 %38, i32 5
  store i8 0, ptr %65, align 2, !tbaa !179
  %66 = add nsw i32 %31, 1
  br label %203

67:                                               ; preds = %36
  %68 = sext i32 %31 to i64
  %69 = getelementptr inbounds i32, ptr %17, i64 %68
  store i32 %30, ptr %69, align 4, !tbaa !44
  %70 = getelementptr inbounds %struct.MFace, ptr %20, i64 %68
  %71 = getelementptr inbounds [4 x i32], ptr %23, i64 %68
  %72 = add i32 %32, 1
  %73 = add i32 %32, 2
  %74 = add i32 %32, 3
  %75 = zext i32 %32 to i64
  %76 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !53
  store i32 %77, ptr %70, align 4, !tbaa !75
  %78 = zext i32 %72 to i64
  %79 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !53
  %81 = getelementptr inbounds %struct.MFace, ptr %20, i64 %68, i32 1
  store i32 %80, ptr %81, align 4, !tbaa !76
  %82 = zext i32 %73 to i64
  %83 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !53
  %85 = getelementptr inbounds %struct.MFace, ptr %20, i64 %68, i32 2
  store i32 %84, ptr %85, align 4, !tbaa !77
  %86 = zext i32 %74 to i64
  %87 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !53
  %89 = getelementptr inbounds %struct.MFace, ptr %20, i64 %68, i32 3
  store i32 %88, ptr %89, align 4, !tbaa !73
  store i32 %32, ptr %71, align 4, !tbaa !44
  %90 = getelementptr inbounds i32, ptr %71, i64 1
  store i32 %72, ptr %90, align 4, !tbaa !44
  %91 = getelementptr inbounds i32, ptr %71, i64 2
  store i32 %73, ptr %91, align 4, !tbaa !44
  %92 = getelementptr inbounds i32, ptr %71, i64 3
  store i32 %74, ptr %92, align 4, !tbaa !44
  %93 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 2
  %94 = load i16, ptr %93, align 4, !tbaa !176
  %95 = getelementptr inbounds %struct.MFace, ptr %20, i64 %68, i32 4
  store i16 %94, ptr %95, align 4, !tbaa !177
  %96 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 3
  %97 = load i8, ptr %96, align 2, !tbaa !81
  %98 = getelementptr inbounds %struct.MFace, ptr %20, i64 %68, i32 6
  store i8 %97, ptr %98, align 1, !tbaa !178
  %99 = getelementptr inbounds %struct.MFace, ptr %20, i64 %68, i32 5
  store i8 1, ptr %99, align 2, !tbaa !179
  %100 = add nsw i32 %31, 1
  br label %203

101:                                              ; preds = %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #24
  %102 = add i32 %34, -2
  %103 = icmp eq ptr %29, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #23
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi ptr [ %105, %104 ], [ %29, %101 ]
  %108 = zext i32 %102 to i64
  %109 = mul nuw nsw i64 %108, 12
  %110 = call ptr @BLI_memarena_alloc(ptr noundef %107, i64 noundef %109) #23
  %111 = zext i32 %34 to i64
  %112 = shl nuw nsw i64 %111, 3
  %113 = call ptr @BLI_memarena_alloc(ptr noundef %107, i64 noundef %112) #23
  call fastcc void @zero_v3(ptr noundef nonnull %9) #22
  %114 = zext i32 %32 to i64
  %115 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %114
  %116 = add i32 %34, -1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.MLoop, ptr %115, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !53
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.MVert, ptr %3, i64 %120
  br label %122

122:                                              ; preds = %106, %122
  %123 = phi ptr [ %115, %106 ], [ %130, %122 ]
  %124 = phi ptr [ %121, %106 ], [ %128, %122 ]
  %125 = phi i32 [ 0, %106 ], [ %129, %122 ]
  %126 = load i32, ptr %123, align 4, !tbaa !53
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MVert, ptr %3, i64 %127
  call fastcc void @add_newell_cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef %124, ptr noundef %128) #22
  %129 = add nuw i32 %125, 1
  %130 = getelementptr inbounds %struct.MLoop, ptr %123, i64 1
  %131 = icmp eq i32 %129, %34
  br i1 %131, label %132, label %122, !llvm.loop !180

132:                                              ; preds = %122
  %133 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #22
  %134 = fcmp oeq float %133, 0.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store float 1.000000e+00, ptr %26, align 4, !tbaa !55
  br label %136

136:                                              ; preds = %135, %132
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #23
  %137 = zext i32 %34 to i64
  br label %138

138:                                              ; preds = %136, %138
  %139 = phi i64 [ 0, %136 ], [ %145, %138 ]
  %140 = phi ptr [ %115, %136 ], [ %146, %138 ]
  %141 = getelementptr inbounds [2 x float], ptr %113, i64 %139
  %142 = load i32, ptr %140, align 4, !tbaa !53
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.MVert, ptr %3, i64 %143
  call void @mul_v2_m3v3(ptr noundef %141, ptr noundef nonnull %10, ptr noundef %144) #23
  %145 = add nuw nsw i64 %139, 1
  %146 = getelementptr inbounds %struct.MLoop, ptr %140, i64 1
  %147 = icmp eq i64 %145, %137
  br i1 %147, label %148, label %138, !llvm.loop !181

148:                                              ; preds = %138
  call void @BLI_polyfill_calc_arena(ptr noundef %113, i32 noundef %34, i32 noundef -1, ptr noundef %110, ptr noundef %107) #23
  %149 = icmp eq i32 %102, 0
  br i1 %149, label %201, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 2
  %152 = load i16, ptr %151, align 4, !tbaa !176
  %153 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 3
  %154 = load i8, ptr %153, align 2, !tbaa !81
  %155 = sext i32 %31 to i64
  br label %156

156:                                              ; preds = %150, %156
  %157 = phi i64 [ 0, %150 ], [ %197, %156 ]
  %158 = phi i64 [ %155, %150 ], [ %196, %156 ]
  %159 = getelementptr inbounds [3 x i32], ptr %110, i64 %157
  %160 = getelementptr inbounds [4 x i32], ptr %23, i64 %158
  %161 = getelementptr inbounds i32, ptr %17, i64 %158
  store i32 %30, ptr %161, align 4, !tbaa !44
  %162 = getelementptr inbounds %struct.MFace, ptr %20, i64 %158
  %163 = load i32, ptr %159, align 4, !tbaa !44
  %164 = add i32 %163, %32
  %165 = getelementptr inbounds i32, ptr %159, i64 1
  %166 = load i32, ptr %165, align 4, !tbaa !44
  %167 = add i32 %166, %32
  %168 = getelementptr inbounds i32, ptr %159, i64 2
  %169 = load i32, ptr %168, align 4, !tbaa !44
  %170 = add i32 %169, %32
  %171 = call i32 @llvm.umax.i32(i32 %164, i32 %167)
  %172 = call i32 @llvm.umin.i32(i32 %164, i32 %167)
  %173 = call i32 @llvm.umin.i32(i32 %171, i32 %170)
  %174 = call i32 @llvm.umax.i32(i32 %171, i32 %170)
  %175 = icmp ult i32 %170, %172
  %176 = select i1 %175, i32 %172, i32 %173
  %177 = select i1 %175, i32 %173, i32 %172
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !53
  store i32 %180, ptr %162, align 4, !tbaa !75
  %181 = zext i32 %176 to i64
  %182 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !53
  %184 = getelementptr inbounds %struct.MFace, ptr %20, i64 %158, i32 1
  store i32 %183, ptr %184, align 4, !tbaa !76
  %185 = zext i32 %174 to i64
  %186 = getelementptr inbounds %struct.MLoop, ptr %13, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !53
  %188 = getelementptr inbounds %struct.MFace, ptr %20, i64 %158, i32 2
  store i32 %187, ptr %188, align 4, !tbaa !77
  %189 = getelementptr inbounds %struct.MFace, ptr %20, i64 %158, i32 3
  store i32 0, ptr %189, align 4, !tbaa !73
  store i32 %177, ptr %160, align 4, !tbaa !44
  %190 = getelementptr inbounds i32, ptr %160, i64 1
  store i32 %176, ptr %190, align 4, !tbaa !44
  %191 = getelementptr inbounds i32, ptr %160, i64 2
  store i32 %174, ptr %191, align 4, !tbaa !44
  %192 = getelementptr inbounds i32, ptr %160, i64 3
  store i32 0, ptr %192, align 4, !tbaa !44
  %193 = getelementptr inbounds %struct.MFace, ptr %20, i64 %158, i32 4
  store i16 %152, ptr %193, align 4, !tbaa !177
  %194 = getelementptr inbounds %struct.MFace, ptr %20, i64 %158, i32 6
  store i8 %154, ptr %194, align 1, !tbaa !178
  %195 = getelementptr inbounds %struct.MFace, ptr %20, i64 %158, i32 5
  store i8 0, ptr %195, align 2, !tbaa !179
  %196 = add nsw i64 %158, 1
  %197 = add nuw nsw i64 %157, 1
  %198 = icmp eq i64 %197, %108
  br i1 %198, label %199, label %156, !llvm.loop !182

199:                                              ; preds = %156
  %200 = trunc i64 %196 to i32
  br label %201

201:                                              ; preds = %199, %148
  %202 = phi i32 [ %31, %148 ], [ %200, %199 ]
  call void @BLI_memarena_clear(ptr noundef %107) #23
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  br label %203

203:                                              ; preds = %37, %201, %67, %27
  %204 = phi i32 [ %31, %27 ], [ %66, %37 ], [ %100, %67 ], [ %202, %201 ]
  %205 = phi ptr [ %29, %27 ], [ %29, %37 ], [ %29, %67 ], [ %107, %201 ]
  %206 = add nuw nsw i32 %30, 1
  %207 = getelementptr inbounds %struct.MPoly, ptr %28, i64 1
  %208 = icmp eq i32 %206, %6
  br i1 %208, label %209, label %27, !llvm.loop !183

209:                                              ; preds = %203
  %210 = icmp eq ptr %205, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %209
  call void @BLI_memarena_free(ptr noundef nonnull %205) #23
  br label %212

212:                                              ; preds = %8, %211, %209
  %213 = phi i32 [ %204, %211 ], [ %204, %209 ], [ 0, %8 ]
  call void @CustomData_free(ptr noundef %0, i32 noundef %4) #23
  %214 = icmp eq i32 %11, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %217 = sext i32 %213 to i64
  %218 = mul nsw i64 %217, 20
  %219 = call ptr %216(ptr noundef %20, i64 noundef %218, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #23
  %220 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %221 = shl nsw i64 %217, 2
  %222 = call ptr %220(ptr noundef %17, i64 noundef %221, ptr noundef nonnull @__func__.BKE_mesh_recalc_tessellation) #23
  br label %223

223:                                              ; preds = %215, %212
  %224 = phi ptr [ %222, %215 ], [ %17, %212 ]
  %225 = phi ptr [ %219, %215 ], [ %20, %212 ]
  %226 = call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef %225, i32 noundef %213) #23
  %227 = call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 7, i32 noundef 0, ptr noundef %224, i32 noundef %213) #23
  call void @CustomData_from_bmeshpoly(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %213) #23
  %228 = icmp eq i8 %7, 0
  br i1 %228, label %248, label %229

229:                                              ; preds = %223
  %230 = call zeroext i8 @CustomData_has_layer(ptr noundef %2, i32 noundef 8) #23
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  %233 = call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 8) #23
  %234 = call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %213) #23
  %235 = icmp sgt i32 %213, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  call void @BKE_mesh_loops_to_tessdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %224, ptr noundef %23, i32 noundef %213) #22
  br label %262

237:                                              ; preds = %232
  %238 = zext nneg i32 %213 to i64
  br label %239

239:                                              ; preds = %237, %239
  %240 = phi i64 [ 0, %237 ], [ %246, %239 ]
  %241 = getelementptr inbounds [3 x float], ptr %234, i64 %240
  %242 = getelementptr inbounds i32, ptr %224, i64 %240
  %243 = load i32, ptr %242, align 4, !tbaa !44
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [3 x float], ptr %233, i64 %244
  call fastcc void @copy_v3_v3(ptr noundef %241, ptr noundef %245) #22
  %246 = add nuw nsw i64 %240, 1
  %247 = icmp eq i64 %246, %238
  br i1 %247, label %248, label %239, !llvm.loop !184

248:                                              ; preds = %239, %229, %223
  call void @BKE_mesh_loops_to_tessdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %224, ptr noundef %23, i32 noundef %213) #22
  %249 = icmp sgt i32 %213, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %248, %258
  %251 = phi ptr [ %260, %258 ], [ %225, %248 ]
  %252 = phi i32 [ %259, %258 ], [ 0, %248 ]
  %253 = getelementptr inbounds %struct.MFace, ptr %251, i64 0, i32 5
  %254 = load i8, ptr %253, align 2, !tbaa !179
  %255 = icmp eq i8 %254, 1
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = call i32 @test_index_face(ptr noundef nonnull %251, ptr noundef %0, i32 noundef %252, i32 noundef 4) #23
  store i8 0, ptr %253, align 2, !tbaa !179
  br label %258

258:                                              ; preds = %250, %256
  %259 = add nuw nsw i32 %252, 1
  %260 = getelementptr inbounds %struct.MFace, ptr %251, i64 1
  %261 = icmp eq i32 %259, %213
  br i1 %261, label %262, label %250, !llvm.loop !185

262:                                              ; preds = %258, %236, %248
  %263 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %263(ptr noundef %23) #23
  ret i32 %213
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @poly_to_tri_count(i32 noundef %0, i32 noundef %1) unnamed_addr #18 !PGOFuncName !186 {
  %3 = shl nsw i32 %0, 1
  %4 = sub nsw i32 %1, %3
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_newell_cross_v3_v3v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !187 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = fadd float %10, %12
  %14 = load float, ptr %0, align 4, !tbaa !55
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %14)
  store float %15, ptr %0, align 4, !tbaa !55
  %16 = load float, ptr %9, align 4, !tbaa !55
  %17 = load float, ptr %11, align 4, !tbaa !55
  %18 = fsub float %16, %17
  %19 = load float, ptr %1, align 4, !tbaa !55
  %20 = load float, ptr %2, align 4, !tbaa !55
  %21 = fadd float %19, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !55
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %23)
  store float %24, ptr %22, align 4, !tbaa !55
  %25 = load float, ptr %1, align 4, !tbaa !55
  %26 = load float, ptr %2, align 4, !tbaa !55
  %27 = fsub float %25, %26
  %28 = load float, ptr %4, align 4, !tbaa !55
  %29 = load float, ptr %6, align 4, !tbaa !55
  %30 = fadd float %28, %29
  %31 = getelementptr inbounds float, ptr %0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !55
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %32)
  store float %33, ptr %31, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_polyfill_calc_arena(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_mesh_mpoly_to_mface(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %8 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 15) #23
  %9 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 17) #23
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 32) #23
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 31) #23
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 8) #23
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = sext i32 %5 to i64
  %15 = mul nsw i64 %14, 20
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @__func__.BKE_mesh_mpoly_to_mface) #23
  %17 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 25) #23
  %18 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 26) #23
  %19 = icmp sgt i32 %5, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %6, %49
  %21 = phi i32 [ %51, %49 ], [ 0, %6 ]
  %22 = phi i32 [ %50, %49 ], [ 0, %6 ]
  %23 = phi ptr [ %52, %49 ], [ %17, %6 ]
  %24 = getelementptr inbounds %struct.MPoly, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = add i32 %25, -3
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load i32, ptr %23, align 4, !tbaa !38
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30
  %32 = getelementptr inbounds %struct.MPoly, ptr %23, i64 0, i32 2
  %33 = load i16, ptr %32, align 4, !tbaa !176
  %34 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 4
  store i16 %33, ptr %34, align 4, !tbaa !177
  %35 = getelementptr inbounds %struct.MPoly, ptr %23, i64 0, i32 3
  %36 = load i8, ptr %35, align 2, !tbaa !81
  %37 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 6
  store i8 %36, ptr %37, align 1, !tbaa !178
  store i32 %29, ptr %31, align 4, !tbaa !75
  %38 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 1
  %39 = insertelement <2 x i32> poison, i32 %29, i64 0
  %40 = shufflevector <2 x i32> %39, <2 x i32> poison, <2 x i32> zeroinitializer
  %41 = add <2 x i32> %40, <i32 1, i32 2>
  store <2 x i32> %41, ptr %38, align 4, !tbaa !44
  %42 = icmp eq i32 %25, 4
  %43 = add i32 %29, 3
  %44 = select i1 %42, i32 %43, i32 0
  %45 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 3
  store i32 %44, ptr %45, align 4, !tbaa !73
  %46 = trunc i32 %25 to i8
  %47 = getelementptr inbounds %struct.MFace, ptr %16, i64 %30, i32 5
  store i8 %46, ptr %47, align 2, !tbaa !179
  %48 = add nsw i32 %22, 1
  br label %49

49:                                               ; preds = %20, %28
  %50 = phi i32 [ %48, %28 ], [ %22, %20 ]
  %51 = add nuw nsw i32 %21, 1
  %52 = getelementptr inbounds %struct.MPoly, ptr %23, i64 1
  %53 = icmp eq i32 %51, %5
  br i1 %53, label %54, label %20, !llvm.loop !188

54:                                               ; preds = %49
  tail call void @CustomData_free(ptr noundef %0, i32 noundef %3) #23
  %55 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef %16, i32 noundef %50) #23
  tail call void @CustomData_from_bmeshpoly(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %50) #23
  br i1 %19, label %56, label %112

56:                                               ; preds = %54
  %57 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1
  %58 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 2
  %59 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3
  br label %60

60:                                               ; preds = %56, %105
  %61 = phi i32 [ 0, %56 ], [ %107, %105 ]
  %62 = phi i32 [ 0, %56 ], [ %106, %105 ]
  %63 = phi ptr [ %17, %56 ], [ %108, %105 ]
  %64 = getelementptr inbounds %struct.MPoly, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !52
  %66 = add i32 %65, -3
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %105

68:                                               ; preds = %60
  %69 = sext i32 %62 to i64
  %70 = getelementptr inbounds %struct.MFace, ptr %16, i64 %69
  %71 = getelementptr inbounds %struct.MFace, ptr %16, i64 %69, i32 5
  %72 = load i8, ptr %71, align 2, !tbaa !179
  %73 = icmp eq i8 %72, 3
  %74 = load i32, ptr %70, align 4, !tbaa !75
  store i32 %74, ptr %7, align 16, !tbaa !44
  %75 = getelementptr inbounds %struct.MFace, ptr %16, i64 %69, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !76
  store i32 %76, ptr %57, align 4, !tbaa !44
  %77 = getelementptr inbounds %struct.MFace, ptr %16, i64 %69, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !77
  store i32 %78, ptr %58, align 8, !tbaa !44
  br i1 %73, label %79, label %80

79:                                               ; preds = %68
  store i32 0, ptr %59, align 4, !tbaa !44
  br label %86

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.MFace, ptr %16, i64 %69, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !73
  store i32 %82, ptr %59, align 4, !tbaa !44
  %83 = zext i32 %74 to i64
  %84 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !53
  store i32 %85, ptr %70, align 4, !tbaa !75
  br label %86

86:                                               ; preds = %80, %79
  %87 = phi i32 [ %76, %80 ], [ %74, %79 ]
  %88 = phi ptr [ %75, %80 ], [ %70, %79 ]
  %89 = phi i32 [ %78, %80 ], [ %76, %79 ]
  %90 = phi ptr [ %77, %80 ], [ %75, %79 ]
  %91 = phi i32 [ %82, %80 ], [ %78, %79 ]
  %92 = phi ptr [ %81, %80 ], [ %77, %79 ]
  %93 = phi i32 [ 4, %80 ], [ 3, %79 ]
  %94 = zext i32 %87 to i64
  %95 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !53
  store i32 %96, ptr %88, align 4, !tbaa !44
  %97 = zext i32 %89 to i64
  %98 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !53
  store i32 %99, ptr %90, align 4, !tbaa !44
  %100 = zext i32 %91 to i64
  %101 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !53
  store i32 %102, ptr %92, align 4, !tbaa !44
  call void @BKE_mesh_loops_to_mface_corners(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %62, i32 noundef %61, i32 noundef %93, i32 noundef %8, i32 noundef %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i8 noundef zeroext %12) #22
  %103 = tail call i32 @test_index_face(ptr noundef nonnull %70, ptr noundef %0, i32 noundef %62, i32 noundef %93) #23
  store i8 0, ptr %71, align 2, !tbaa !179
  %104 = add nsw i32 %62, 1
  br label %105

105:                                              ; preds = %60, %86
  %106 = phi i32 [ %104, %86 ], [ %62, %60 ]
  %107 = add nuw nsw i32 %61, 1
  %108 = getelementptr inbounds %struct.MPoly, ptr %63, i64 1
  %109 = icmp eq i32 %107, %5
  br i1 %109, label %112, label %60, !llvm.loop !189

110:                                              ; preds = %6
  tail call void @CustomData_free(ptr noundef %0, i32 noundef %3) #23
  %111 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef %16, i32 noundef 0) #23
  tail call void @CustomData_from_bmeshpoly(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef 0) #23
  br label %112

112:                                              ; preds = %105, %110, %54
  %113 = phi i32 [ 0, %54 ], [ 0, %110 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !190
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !191
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 4, !tbaa !192
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  tail call void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %18) #22
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, ptr nocapture noundef writeonly %13) local_unnamed_addr #0 {
  tail call void @CustomData_free(ptr noundef %2, i32 noundef %6) #23
  tail call void @CustomData_free(ptr noundef %3, i32 noundef %7) #23
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = sext i32 %5 to i64
  %17 = mul nsw i64 %16, 12
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.8) #23
  %19 = tail call ptr @CustomData_add_layer(ptr noundef %3, i32 noundef 25, i32 noundef 0, ptr noundef %18, i32 noundef %5) #23
  %20 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 5) #23
  %21 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 6) #23
  %22 = icmp sgt i32 %5, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %14, %23
  %24 = phi ptr [ %33, %23 ], [ %9, %14 ]
  %25 = phi i32 [ %31, %23 ], [ 0, %14 ]
  %26 = phi i32 [ %32, %23 ], [ 0, %14 ]
  %27 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !73
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 3, i32 4
  %31 = add nuw nsw i32 %30, %25
  %32 = add nuw nsw i32 %26, 1
  %33 = getelementptr inbounds %struct.MFace, ptr %24, i64 1
  %34 = icmp eq i32 %32, %5
  br i1 %34, label %35, label %23, !llvm.loop !195

35:                                               ; preds = %23, %14
  %36 = phi i32 [ 0, %14 ], [ %31, %23 ]
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %38 = zext nneg i32 %36 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.9) #23
  %41 = tail call ptr @CustomData_add_layer(ptr noundef %2, i32 noundef 26, i32 noundef 0, ptr noundef %40, i32 noundef %36) #23
  tail call void @CustomData_to_bmeshpoly(ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %36, i32 noundef %5) #23
  %42 = icmp eq ptr %0, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  tail call void @CustomData_external_read(ptr noundef %1, ptr noundef nonnull %0, i64 noundef 524288, i32 noundef %5) #23
  br label %44

44:                                               ; preds = %43, %35
  %45 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.BKE_mesh_convert_mfaces_to_mpolys_ex, i32 noundef %4) #23
  %46 = icmp sgt i32 %4, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = zext nneg i32 %4 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ 0, %47 ], [ %59, %49 ]
  %51 = phi ptr [ %8, %47 ], [ %60, %49 ]
  %52 = load i32, ptr %51, align 4, !tbaa !86
  %53 = getelementptr inbounds %struct.MEdge, ptr %51, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !87
  %55 = inttoptr i64 %50 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %45, i32 noundef %52, i32 noundef %54, ptr noundef %55) #23
  %56 = getelementptr inbounds %struct.MEdge, ptr %51, i64 0, i32 4
  %57 = load i16, ptr %56, align 2, !tbaa !82
  %58 = and i16 %57, -9
  store i16 %58, ptr %56, align 2, !tbaa !82
  %59 = add nuw nsw i64 %50, 1
  %60 = getelementptr inbounds %struct.MEdge, ptr %51, i64 1
  %61 = icmp eq i64 %59, %48
  br i1 %61, label %62, label %49, !llvm.loop !196

62:                                               ; preds = %49, %44
  %63 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 7) #23
  br i1 %22, label %64, label %130

64:                                               ; preds = %62, %124
  %65 = phi ptr [ %125, %124 ], [ %63, %62 ]
  %66 = phi ptr [ %127, %124 ], [ %9, %62 ]
  %67 = phi i32 [ %119, %124 ], [ 0, %62 ]
  %68 = phi i32 [ %126, %124 ], [ 0, %62 ]
  %69 = phi ptr [ %118, %124 ], [ %40, %62 ]
  %70 = phi ptr [ %128, %124 ], [ %18, %62 ]
  store i32 %67, ptr %70, align 4, !tbaa !38
  %71 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !73
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 3, i32 4
  %75 = getelementptr inbounds %struct.MPoly, ptr %70, i64 0, i32 1
  store i32 %74, ptr %75, align 4, !tbaa !52
  %76 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 4
  %77 = load i16, ptr %76, align 4, !tbaa !177
  %78 = getelementptr inbounds %struct.MPoly, ptr %70, i64 0, i32 2
  store i16 %77, ptr %78, align 4, !tbaa !176
  %79 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 6
  %80 = load i8, ptr %79, align 1, !tbaa !178
  %81 = getelementptr inbounds %struct.MPoly, ptr %70, i64 0, i32 3
  store i8 %80, ptr %81, align 2, !tbaa !81
  %82 = load i32, ptr %66, align 4, !tbaa !75
  store i32 %82, ptr %69, align 4, !tbaa !53
  %83 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !76
  %85 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %82, i32 noundef %84) #23
  %86 = ptrtoint ptr %85 to i64
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.MLoop, ptr %69, i64 0, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !80
  %89 = getelementptr inbounds %struct.MLoop, ptr %69, i64 1
  %90 = load i32, ptr %83, align 4, !tbaa !76
  store i32 %90, ptr %89, align 4, !tbaa !53
  %91 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !77
  %93 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %90, i32 noundef %92) #23
  %94 = ptrtoint ptr %93 to i64
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.MLoop, ptr %69, i64 1, i32 1
  store i32 %95, ptr %96, align 4, !tbaa !80
  %97 = getelementptr inbounds %struct.MLoop, ptr %69, i64 2
  %98 = load i32, ptr %71, align 4, !tbaa !73
  %99 = icmp eq i32 %98, 0
  %100 = load i32, ptr %91, align 4, !tbaa !77
  store i32 %100, ptr %97, align 4, !tbaa !53
  br i1 %99, label %108, label %101

101:                                              ; preds = %64
  %102 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %100, i32 noundef %98) #23
  %103 = ptrtoint ptr %102 to i64
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.MLoop, ptr %69, i64 2, i32 1
  store i32 %104, ptr %105, align 4, !tbaa !80
  %106 = getelementptr inbounds %struct.MLoop, ptr %69, i64 3
  %107 = load i32, ptr %71, align 4, !tbaa !73
  store i32 %107, ptr %106, align 4, !tbaa !53
  br label %108

108:                                              ; preds = %64, %101
  %109 = phi i32 [ %107, %101 ], [ %100, %64 ]
  %110 = phi i64 [ 3, %101 ], [ 2, %64 ]
  %111 = phi i64 [ 4, %101 ], [ 3, %64 ]
  %112 = phi i32 [ 4, %101 ], [ 3, %64 ]
  %113 = load i32, ptr %66, align 4, !tbaa !75
  %114 = tail call ptr @BLI_edgehash_lookup(ptr noundef %45, i32 noundef %109, i32 noundef %113) #23
  %115 = ptrtoint ptr %114 to i64
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.MLoop, ptr %69, i64 %110, i32 1
  store i32 %116, ptr %117, align 4, !tbaa !80
  %118 = getelementptr inbounds %struct.MLoop, ptr %69, i64 %111
  %119 = add nuw nsw i32 %67, %112
  %120 = load i32, ptr %70, align 4, !tbaa !38
  tail call fastcc void @bm_corners_to_loops_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %9, i32 noundef %36, i32 noundef %68, i32 noundef %120, i32 noundef %20, i32 noundef %21) #22
  %121 = icmp eq ptr %65, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %108
  store i32 %68, ptr %65, align 4, !tbaa !44
  %123 = getelementptr inbounds i32, ptr %65, i64 1
  br label %124

124:                                              ; preds = %108, %122
  %125 = phi ptr [ %123, %122 ], [ null, %108 ]
  %126 = add nuw nsw i32 %68, 1
  %127 = getelementptr inbounds %struct.MFace, ptr %66, i64 1
  %128 = getelementptr inbounds %struct.MPoly, ptr %70, i64 1
  %129 = icmp eq i32 %126, %5
  br i1 %129, label %130, label %64, !llvm.loop !197

130:                                              ; preds = %124, %62
  tail call void @BLI_edgehash_free(ptr noundef %45, ptr noundef null) #23
  store i32 %5, ptr %11, align 4, !tbaa !44
  store i32 %36, ptr %10, align 4, !tbaa !44
  store ptr %18, ptr %13, align 8, !tbaa !34
  store ptr %40, ptr %12, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_do_versions_convert_mfaces_to_mpolys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !190
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !191
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 4, !tbaa !192
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  tail call void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %18) #22
  tail call void @CustomData_bmesh_do_versions_update_active_layers(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #23
  ret void
}

; Function Attrs: optsize
declare void @CustomData_bmesh_do_versions_update_active_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @CustomData_to_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @CustomData_external_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_corners_to_loops_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 !PGOFuncName !198 {
  %11 = sext i32 %6 to i64
  %12 = icmp sgt i32 %8, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.MFace, ptr %4, i64 %11, i32 3
  br label %19

15:                                               ; preds = %44, %10
  %16 = icmp sgt i32 %9, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MFace, ptr %4, i64 %11, i32 3
  br label %47

19:                                               ; preds = %13, %44
  %20 = phi i32 [ 0, %13 ], [ %45, %44 ]
  %21 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 5, i32 noundef %6, i32 noundef %20) #23
  %22 = tail call ptr @CustomData_get_n(ptr noundef %3, i32 noundef 15, i32 noundef %6, i32 noundef %20) #23
  %23 = getelementptr inbounds %struct.MTFace, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !149
  store ptr %24, ptr %22, align 8, !tbaa !147
  %25 = getelementptr inbounds %struct.MTFace, ptr %21, i64 0, i32 2
  %26 = load i8, ptr %25, align 8, !tbaa !152
  %27 = getelementptr inbounds %struct.MTexPoly, ptr %22, i64 0, i32 1
  store i8 %26, ptr %27, align 8, !tbaa !151
  %28 = getelementptr inbounds %struct.MTFace, ptr %21, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !154
  %30 = getelementptr inbounds %struct.MTexPoly, ptr %22, i64 0, i32 2
  store i8 %29, ptr %30, align 1, !tbaa !153
  %31 = getelementptr inbounds %struct.MTFace, ptr %21, i64 0, i32 4
  %32 = getelementptr inbounds %struct.MTexPoly, ptr %22, i64 0, i32 3
  %33 = load <2 x i16>, ptr %31, align 2, !tbaa !64
  store <2 x i16> %33, ptr %32, align 2, !tbaa !64
  %34 = tail call ptr @CustomData_get_n(ptr noundef %2, i32 noundef 16, i32 noundef %7, i32 noundef %20) #23
  tail call fastcc void @copy_v2_v2(ptr noundef %34, ptr noundef %21) #22
  %35 = getelementptr inbounds %struct.MLoopUV, ptr %34, i64 1
  %36 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %35, ptr noundef nonnull %36) #22
  %37 = getelementptr inbounds %struct.MLoopUV, ptr %34, i64 2
  %38 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %37, ptr noundef nonnull %38) #22
  %39 = load i32, ptr %14, align 4, !tbaa !73
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %19
  %42 = getelementptr inbounds %struct.MLoopUV, ptr %34, i64 3
  %43 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %42, ptr noundef nonnull %43) #22
  br label %44

44:                                               ; preds = %19, %41
  %45 = add nuw nsw i32 %20, 1
  %46 = icmp eq i32 %45, %8
  br i1 %46, label %15, label %19, !llvm.loop !199

47:                                               ; preds = %17, %64
  %48 = phi i32 [ 0, %17 ], [ %65, %64 ]
  %49 = tail call ptr @CustomData_get_n(ptr noundef %2, i32 noundef 17, i32 noundef %7, i32 noundef %48) #23
  %50 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 6, i32 noundef %6, i32 noundef %48) #23
  %51 = load <8 x i8>, ptr %50, align 1, !tbaa !157
  %52 = shufflevector <8 x i8> %51, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %52, ptr %49, align 1, !tbaa !157
  %53 = getelementptr inbounds %struct.MLoopCol, ptr %49, i64 2
  %54 = getelementptr inbounds %struct.MCol, ptr %50, i64 2
  %55 = load <4 x i8>, ptr %54, align 1, !tbaa !157
  %56 = shufflevector <4 x i8> %55, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %56, ptr %53, align 1, !tbaa !157
  %57 = load i32, ptr %18, align 4, !tbaa !73
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.MLoopCol, ptr %49, i64 3
  %61 = getelementptr inbounds %struct.MCol, ptr %50, i64 3
  %62 = load <4 x i8>, ptr %61, align 1, !tbaa !157
  %63 = shufflevector <4 x i8> %62, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %63, ptr %60, align 1, !tbaa !157
  br label %64

64:                                               ; preds = %47, %59
  %65 = add nuw nsw i32 %48, 1
  %66 = icmp eq i32 %65, %9
  br i1 %66, label %67, label %47, !llvm.loop !200

67:                                               ; preds = %64, %15
  %68 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 40) #23
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @CustomData_get(ptr noundef %2, i32 noundef %7, i32 noundef 8) #23
  %72 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %6, i32 noundef 40) #23
  %73 = getelementptr inbounds %struct.MFace, ptr %4, i64 %11, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !73
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 3, i32 4
  br label %77

77:                                               ; preds = %70, %77
  %78 = phi i32 [ 0, %70 ], [ %81, %77 ]
  %79 = phi ptr [ %71, %70 ], [ %82, %77 ]
  %80 = phi ptr [ %72, %70 ], [ %83, %77 ]
  tail call fastcc void @normal_short_to_float_v3(ptr noundef %79, ptr noundef %80) #22
  %81 = add nuw nsw i32 %78, 1
  %82 = getelementptr inbounds [3 x float], ptr %79, i64 1
  %83 = getelementptr inbounds [3 x i16], ptr %80, i64 1
  %84 = icmp eq i32 %81, %76
  br i1 %84, label %85, label %77, !llvm.loop !201

85:                                               ; preds = %77, %67
  %86 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 19) #23
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %146, label %88

88:                                               ; preds = %85
  %89 = tail call ptr @CustomData_get(ptr noundef %2, i32 noundef %7, i32 noundef 19) #23
  %90 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %6, i32 noundef 19) #23
  %91 = getelementptr inbounds %struct.MDisps, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !202
  %93 = getelementptr inbounds %struct.MFace, ptr %4, i64 %11, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !73
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 3, i32 4
  %97 = tail call zeroext i8 @CustomData_external_test(ptr noundef %1, i32 noundef 19) #23
  %98 = icmp ne i8 %97, 0
  %99 = icmp ne ptr %0, null
  %100 = and i1 %99, %98
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !204
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @CustomData_external_add(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %5, ptr noundef nonnull %103) #23
  br label %106

106:                                              ; preds = %101, %105, %88
  %107 = tail call i32 @multires_mdisp_corners(ptr noundef nonnull %90) #23
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %146, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %90, align 8, !tbaa !205
  %111 = sdiv i32 %110, %107
  %112 = sitofp i32 %111 to float
  %113 = tail call float @sqrtf(float noundef %112) #23
  %114 = fptosi float %113 to i32
  %115 = mul nsw i32 %114, %114
  %116 = zext nneg i32 %115 to i64
  %117 = mul nuw nsw i64 %116, 12
  %118 = sitofp i32 %114 to float
  %119 = fadd float %118, -1.000000e+00
  br label %120

120:                                              ; preds = %109, %141
  %121 = phi i32 [ 0, %109 ], [ %142, %141 ]
  %122 = phi ptr [ %92, %109 ], [ %143, %141 ]
  %123 = phi ptr [ %89, %109 ], [ %144, %141 ]
  store i32 %115, ptr %123, align 8, !tbaa !205
  %124 = tail call float @logf(float noundef %119) #23
  %125 = fdiv float %124, 0x3FE62E4300000000
  %126 = fptosi float %125 to i32
  %127 = add nsw i32 %126, 1
  %128 = getelementptr inbounds %struct.MDisps, ptr %123, i64 0, i32 1
  store i32 %127, ptr %128, align 4, !tbaa !206
  %129 = getelementptr inbounds %struct.MDisps, ptr %123, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !202
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %120
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %133(ptr noundef nonnull %130) #23
  br label %134

134:                                              ; preds = %132, %120
  %135 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %136 = tail call ptr %135(i64 noundef %117, ptr noundef nonnull @.str.10) #23
  store ptr %136, ptr %129, align 8, !tbaa !202
  %137 = load ptr, ptr %91, align 8, !tbaa !202
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %136, ptr align 4 %122, i64 %117, i1 false)
  br label %141

140:                                              ; preds = %134
  tail call void @llvm.memset.p0.i64(ptr align 4 %136, i8 0, i64 %117, i1 false)
  br label %141

141:                                              ; preds = %139, %140
  %142 = add nuw nsw i32 %121, 1
  %143 = getelementptr inbounds [3 x float], ptr %122, i64 %116
  %144 = getelementptr inbounds %struct.MDisps, ptr %123, i64 1
  %145 = icmp eq i32 %142, %96
  br i1 %145, label %146, label %120, !llvm.loop !207

146:                                              ; preds = %141, %106, %85
  ret void
}

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_verts_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #19 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = zext nneg i32 %3 to i64
  br label %14

10:                                               ; preds = %39, %6
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %10
  %13 = zext nneg i32 %5 to i64
  br label %42

14:                                               ; preds = %8, %39
  %15 = phi i64 [ 0, %8 ], [ %40, %39 ]
  %16 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !86
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MVert, ptr %0, i64 %18, i32 2
  %20 = load i8, ptr %19, align 2, !tbaa !208
  %21 = and i8 %20, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !87
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %0, i64 %26, i32 2
  %28 = load i8, ptr %27, align 2, !tbaa !208
  %29 = and i8 %28, 16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23, %14
  %32 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !82
  %34 = or i16 %33, 16
  store i16 %34, ptr %32, align 2, !tbaa !82
  br label %39

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %15, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !82
  %38 = and i16 %37, -17
  store i16 %38, ptr %36, align 2, !tbaa !82
  br label %39

39:                                               ; preds = %35, %31
  %40 = add nuw nsw i64 %15, 1
  %41 = icmp eq i64 %40, %9
  br i1 %41, label %10, label %14, !llvm.loop !210

42:                                               ; preds = %12, %72
  %43 = phi i64 [ 0, %12 ], [ %73, %72 ]
  %44 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %43, i32 3
  %45 = load i8, ptr %44, align 2, !tbaa !81
  %46 = and i8 %45, -17
  store i8 %46, ptr %44, align 2, !tbaa !81
  %47 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %43, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !52
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %43
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = sext i32 %52 to i64
  %54 = zext nneg i32 %48 to i64
  %55 = getelementptr %struct.MLoop, ptr %1, i64 %53
  br label %56

56:                                               ; preds = %50, %68
  %57 = phi i8 [ %46, %50 ], [ %69, %68 ]
  %58 = phi i64 [ 0, %50 ], [ %70, %68 ]
  %59 = getelementptr %struct.MLoop, ptr %55, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !53
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.MVert, ptr %0, i64 %61, i32 2
  %63 = load i8, ptr %62, align 2, !tbaa !208
  %64 = and i8 %63, 16
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %56
  %67 = or i8 %57, 16
  store i8 %67, ptr %44, align 2, !tbaa !81
  br label %68

68:                                               ; preds = %56, %66
  %69 = phi i8 [ %57, %56 ], [ %67, %66 ]
  %70 = add nuw nsw i64 %58, 1
  %71 = icmp eq i64 %70, %54
  br i1 %71, label %72, label %56, !llvm.loop !211

72:                                               ; preds = %68, %42
  %73 = add nuw nsw i64 %43, 1
  %74 = icmp eq i64 %73, %13
  br i1 %74, label %75, label %42, !llvm.loop !212

75:                                               ; preds = %72, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %9 = load i32, ptr %8, align 4, !tbaa !190
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !72
  tail call void @BKE_mesh_flush_hidden_from_verts_ex(ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_polys_ex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #14 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %81, label %9

8:                                                ; preds = %42
  br i1 %7, label %81, label %45

9:                                                ; preds = %6, %42
  %10 = phi i32 [ %12, %42 ], [ %5, %6 ]
  %11 = phi ptr [ %43, %42 ], [ %4, %6 ]
  %12 = add nsw i32 %10, -1
  %13 = getelementptr inbounds %struct.MPoly, ptr %11, i64 0, i32 3
  %14 = load i8, ptr %13, align 2, !tbaa !81
  %15 = and i8 %14, 16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.MPoly, ptr %11, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %11, align 4, !tbaa !38
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %23
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i32 [ %28, %25 ], [ %19, %21 ]
  %27 = phi ptr [ %40, %25 ], [ %24, %21 ]
  %28 = add nsw i32 %26, -1
  %29 = load i32, ptr %27, align 4, !tbaa !53
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %0, i64 %30, i32 2
  %32 = load i8, ptr %31, align 2, !tbaa !208
  %33 = or i8 %32, 16
  store i8 %33, ptr %31, align 2, !tbaa !208
  %34 = getelementptr inbounds %struct.MLoop, ptr %27, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !80
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %36, i32 4
  %38 = load i16, ptr %37, align 2, !tbaa !82
  %39 = or i16 %38, 16
  store i16 %39, ptr %37, align 2, !tbaa !82
  %40 = getelementptr inbounds %struct.MLoop, ptr %27, i64 1
  %41 = icmp eq i32 %28, 0
  br i1 %41, label %42, label %25, !llvm.loop !213

42:                                               ; preds = %25, %17, %9
  %43 = getelementptr inbounds %struct.MPoly, ptr %11, i64 1
  %44 = icmp eq i32 %12, 0
  br i1 %44, label %8, label %9, !llvm.loop !214

45:                                               ; preds = %8, %78
  %46 = phi i32 [ %48, %78 ], [ %5, %8 ]
  %47 = phi ptr [ %79, %78 ], [ %4, %8 ]
  %48 = add nsw i32 %46, -1
  %49 = getelementptr inbounds %struct.MPoly, ptr %47, i64 0, i32 3
  %50 = load i8, ptr %49, align 2, !tbaa !81
  %51 = and i8 %50, 16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.MPoly, ptr %47, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %47, align 4, !tbaa !38
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %59
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i32 [ %64, %61 ], [ %55, %57 ]
  %63 = phi ptr [ %76, %61 ], [ %60, %57 ]
  %64 = add nsw i32 %62, -1
  %65 = load i32, ptr %63, align 4, !tbaa !53
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MVert, ptr %0, i64 %66, i32 2
  %68 = load i8, ptr %67, align 2, !tbaa !208
  %69 = and i8 %68, -17
  store i8 %69, ptr %67, align 2, !tbaa !208
  %70 = getelementptr inbounds %struct.MLoop, ptr %63, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !80
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %72, i32 4
  %74 = load i16, ptr %73, align 2, !tbaa !82
  %75 = and i16 %74, 239
  store i16 %75, ptr %73, align 2, !tbaa !82
  %76 = getelementptr inbounds %struct.MLoop, ptr %63, i64 1
  %77 = icmp eq i32 %64, 0
  br i1 %77, label %78, label %61, !llvm.loop !215

78:                                               ; preds = %61, %53, %45
  %79 = getelementptr inbounds %struct.MPoly, ptr %47, i64 1
  %80 = icmp eq i32 %48, 0
  br i1 %80, label %81, label %45, !llvm.loop !216

81:                                               ; preds = %78, %6, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_hidden_from_polys(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !72
  tail call void @BKE_mesh_flush_hidden_from_polys_ex(ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 poison, ptr noundef %9, i32 noundef %11) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_polys_ex(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #15 {
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %11, %7
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %20, label %22

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %14, %11 ], [ %1, %7 ]
  %13 = phi ptr [ %18, %11 ], [ %0, %7 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.MVert, ptr %13, i64 0, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !208
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 2, !tbaa !208
  %18 = getelementptr inbounds %struct.MVert, ptr %13, i64 1
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %9, label %11, !llvm.loop !217

20:                                               ; preds = %22, %9
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %67, label %31

22:                                               ; preds = %9, %22
  %23 = phi i32 [ %25, %22 ], [ %4, %9 ]
  %24 = phi ptr [ %29, %22 ], [ %3, %9 ]
  %25 = add nsw i32 %23, -1
  %26 = getelementptr inbounds %struct.MEdge, ptr %24, i64 0, i32 4
  %27 = load i16, ptr %26, align 2, !tbaa !82
  %28 = and i16 %27, -2
  store i16 %28, ptr %26, align 2, !tbaa !82
  %29 = getelementptr inbounds %struct.MEdge, ptr %24, i64 1
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %20, label %22, !llvm.loop !218

31:                                               ; preds = %20, %64
  %32 = phi i32 [ %34, %64 ], [ %6, %20 ]
  %33 = phi ptr [ %65, %64 ], [ %5, %20 ]
  %34 = add nsw i32 %32, -1
  %35 = getelementptr inbounds %struct.MPoly, ptr %33, i64 0, i32 3
  %36 = load i8, ptr %35, align 2, !tbaa !81
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.MPoly, ptr %33, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !52
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %33, align 4, !tbaa !38
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %45
  br label %47

47:                                               ; preds = %43, %47
  %48 = phi i32 [ %50, %47 ], [ %41, %43 ]
  %49 = phi ptr [ %62, %47 ], [ %46, %43 ]
  %50 = add nsw i32 %48, -1
  %51 = load i32, ptr %49, align 4, !tbaa !53
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.MVert, ptr %0, i64 %52, i32 2
  %54 = load i8, ptr %53, align 2, !tbaa !208
  %55 = or i8 %54, 1
  store i8 %55, ptr %53, align 2, !tbaa !208
  %56 = getelementptr inbounds %struct.MLoop, ptr %49, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !80
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %58, i32 4
  %60 = load i16, ptr %59, align 2, !tbaa !82
  %61 = or i16 %60, 1
  store i16 %61, ptr %59, align 2, !tbaa !82
  %62 = getelementptr inbounds %struct.MLoop, ptr %49, i64 1
  %63 = icmp eq i32 %50, 0
  br i1 %63, label %64, label %47, !llvm.loop !219

64:                                               ; preds = %47, %39, %31
  %65 = getelementptr inbounds %struct.MPoly, ptr %33, i64 1
  %66 = icmp eq i32 %34, 0
  br i1 %66, label %67, label %31, !llvm.loop !220

67:                                               ; preds = %64, %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_polys(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 4, !tbaa !190
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !72
  tail call void @BKE_mesh_flush_select_from_polys_ex(ptr noundef %3, i32 noundef %5, ptr noundef %7, ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_verts_ex(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6) local_unnamed_addr #15 {
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %40, %7
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %81, label %43

11:                                               ; preds = %7, %40
  %12 = phi i32 [ %14, %40 ], [ %4, %7 ]
  %13 = phi ptr [ %41, %40 ], [ %3, %7 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.MEdge, ptr %13, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !82
  %17 = and i16 %16, 16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = load i32, ptr %13, align 4, !tbaa !86
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %0, i64 %21, i32 2
  %23 = load i8, ptr %22, align 2, !tbaa !208
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.MEdge, ptr %13, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !87
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %0, i64 %29, i32 2
  %31 = load i8, ptr %30, align 2, !tbaa !208
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = or i16 %16, 1
  br label %38

36:                                               ; preds = %26, %19
  %37 = and i16 %16, -18
  br label %38

38:                                               ; preds = %34, %36
  %39 = phi i16 [ %37, %36 ], [ %35, %34 ]
  store i16 %39, ptr %15, align 2, !tbaa !82
  br label %40

40:                                               ; preds = %38, %11
  %41 = getelementptr inbounds %struct.MEdge, ptr %13, i64 1
  %42 = icmp eq i32 %14, 0
  br i1 %42, label %9, label %11, !llvm.loop !221

43:                                               ; preds = %9, %78
  %44 = phi i32 [ %46, %78 ], [ %6, %9 ]
  %45 = phi ptr [ %79, %78 ], [ %5, %9 ]
  %46 = add nsw i32 %44, -1
  %47 = getelementptr inbounds %struct.MPoly, ptr %45, i64 0, i32 3
  %48 = load i8, ptr %47, align 2, !tbaa !81
  %49 = and i8 %48, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.MPoly, ptr %45, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %45, align 4, !tbaa !38
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %57
  br label %63

59:                                               ; preds = %63
  %60 = getelementptr inbounds %struct.MLoop, ptr %65, i64 1
  %61 = add nsw i32 %64, -1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63, !llvm.loop !222

63:                                               ; preds = %55, %59
  %64 = phi i32 [ %61, %59 ], [ %53, %55 ]
  %65 = phi ptr [ %60, %59 ], [ %58, %55 ]
  %66 = load i32, ptr %65, align 4, !tbaa !53
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %0, i64 %67, i32 2
  %69 = load i8, ptr %68, align 2, !tbaa !208
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %59

72:                                               ; preds = %59, %51
  %73 = or i8 %48, 2
  br label %76

74:                                               ; preds = %63
  %75 = and i8 %48, -19
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i8 [ %75, %74 ], [ %73, %72 ]
  store i8 %77, ptr %47, align 2, !tbaa !81
  br label %78

78:                                               ; preds = %43, %76
  %79 = getelementptr inbounds %struct.MPoly, ptr %45, i64 1
  %80 = icmp eq i32 %46, 0
  br i1 %80, label %81, label %43, !llvm.loop !223

81:                                               ; preds = %78, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_flush_select_from_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %9 = load i32, ptr %8, align 4, !tbaa !190
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !72
  tail call void @BKE_mesh_flush_select_from_verts_ex(ptr noundef %3, i32 poison, ptr noundef %5, ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_relative_deform(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = sext i32 %3 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.BKE_mesh_calc_relative_deform) #23
  %14 = mul nsw i64 %11, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %14, i1 false)
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %64, %8
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %16
  %19 = zext nneg i32 %3 to i64
  br label %68

20:                                               ; preds = %8, %64
  %21 = phi ptr [ %66, %64 ], [ %0, %8 ]
  %22 = phi i32 [ %65, %64 ], [ 0, %8 ]
  %23 = load i32, ptr %21, align 4, !tbaa !38
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %24
  %26 = getelementptr inbounds %struct.MPoly, ptr %21, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %20, %29
  %30 = phi i64 [ %41, %29 ], [ 0, %20 ]
  %31 = phi i32 [ %61, %29 ], [ %27, %20 ]
  %32 = trunc i64 %30 to i32
  %33 = add i32 %32, -1
  %34 = add nsw i32 %33, %31
  %35 = srem i32 %34, %31
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.MLoop, ptr %25, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = getelementptr inbounds %struct.MLoop, ptr %25, i64 %30
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = add nuw nsw i64 %30, 1
  %42 = trunc i64 %41 to i32
  %43 = srem i32 %42, %31
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds %struct.MLoop, ptr %25, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  %47 = zext i32 %40 to i64
  %48 = getelementptr inbounds [3 x float], ptr %5, i64 %47
  %49 = zext i32 %38 to i64
  %50 = getelementptr inbounds [3 x float], ptr %6, i64 %49
  %51 = getelementptr inbounds [3 x float], ptr %6, i64 %47
  %52 = zext i32 %46 to i64
  %53 = getelementptr inbounds [3 x float], ptr %6, i64 %52
  %54 = getelementptr inbounds [3 x float], ptr %4, i64 %49
  %55 = getelementptr inbounds [3 x float], ptr %4, i64 %47
  %56 = getelementptr inbounds [3 x float], ptr %4, i64 %52
  call void @transform_point_by_tri_v3(ptr noundef nonnull %9, ptr noundef %48, ptr noundef %50, ptr noundef %51, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56) #23
  %57 = getelementptr inbounds [3 x float], ptr %7, i64 %47
  call fastcc void @add_v3_v3(ptr noundef %57, ptr noundef nonnull %9) #22
  %58 = getelementptr inbounds i32, ptr %13, i64 %47
  %59 = load i32, ptr %58, align 4, !tbaa !44
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  %61 = load i32, ptr %26, align 4, !tbaa !52
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %41, %62
  br i1 %63, label %29, label %64, !llvm.loop !224

64:                                               ; preds = %29, %20
  %65 = add nuw nsw i32 %22, 1
  %66 = getelementptr inbounds %struct.MPoly, ptr %21, i64 1
  %67 = icmp eq i32 %65, %1
  br i1 %67, label %16, label %20, !llvm.loop !225

68:                                               ; preds = %18, %79
  %69 = phi i64 [ 0, %18 ], [ %80, %79 ]
  %70 = getelementptr inbounds i32, ptr %13, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !44
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds [3 x float], ptr %7, i64 %69
  br i1 %72, label %77, label %74

74:                                               ; preds = %68
  %75 = sitofp i32 %71 to float
  %76 = fdiv float 1.000000e+00, %75
  call fastcc void @mul_v3_fl(ptr noundef %73, float noundef %76) #22
  br label %79

77:                                               ; preds = %68
  %78 = getelementptr inbounds [3 x float], ptr %6, i64 %69
  call fastcc void @copy_v3_v3(ptr noundef %73, ptr noundef %78) #22
  br label %79

79:                                               ; preds = %74, %77
  %80 = add nuw nsw i64 %69, 1
  %81 = icmp eq i64 %80, %19
  br i1 %81, label %82, label %68, !llvm.loop !226

82:                                               ; preds = %79, %16
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %83(ptr noundef %13) #23
  ret void
}

; Function Attrs: optsize
declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !227 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare float @area_tri_signed_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @CustomData_external_test(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @CustomData_external_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @multires_mdisp_corners(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"MPoly", !40, i64 0, !40, i64 4, !41, i64 8, !36, i64 10, !36, i64 11}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!40, !40, i64 0}
!45 = distinct !{!45, !43}
!46 = !{!"mesh_evaluate.c:mesh_calc_normals_vert_fallback"}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = distinct !{!50, !43}
!51 = distinct !{!51, !43}
!52 = !{!39, !40, i64 4}
!53 = !{!54, !40, i64 0}
!54 = !{!"MLoop", !40, i64 0, !40, i64 4}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !36, i64 0}
!57 = !{!"mesh_evaluate.c:copy_v3_v3"}
!58 = !{!"mesh_evaluate.c:mesh_calc_normals_poly_accum"}
!59 = distinct !{!59, !43}
!60 = distinct !{!60, !43}
!61 = !{!"mesh_evaluate.c:normalize_v3"}
!62 = !{!"mesh_evaluate.c:normalize_v3_v3"}
!63 = !{!"mesh_evaluate.c:normal_float_to_short_v3"}
!64 = !{!41, !41, i64 0}
!65 = !{!66, !35, i64 232}
!66 = !{!"Mesh", !67, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !68, i64 280, !68, i64 480, !68, i64 680, !68, i64 880, !68, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !41, i64 1348, !41, i64 1350, !56, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !41, i64 1366, !35, i64 1368}
!67 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!68 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!69 = !{!66, !40, i64 1280}
!70 = !{!66, !35, i64 184}
!71 = !{!66, !35, i64 168}
!72 = !{!66, !40, i64 1296}
!73 = !{!74, !40, i64 12}
!74 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !36, i64 18, !36, i64 19}
!75 = !{!74, !40, i64 0}
!76 = !{!74, !40, i64 4}
!77 = !{!74, !40, i64 8}
!78 = distinct !{!78, !43}
!79 = distinct !{!79, !43}
!80 = !{!54, !40, i64 4}
!81 = !{!39, !36, i64 10}
!82 = !{!83, !41, i64 10}
!83 = !{!"MEdge", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 9, !41, i64 10}
!84 = distinct !{!84, !43}
!85 = distinct !{!85, !43}
!86 = !{!83, !40, i64 0}
!87 = !{!83, !40, i64 4}
!88 = !{!89, !35, i64 0}
!89 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!90 = !{!89, !35, i64 8}
!91 = distinct !{!91, !43}
!92 = distinct !{!92, !43}
!93 = distinct !{!93, !43}
!94 = distinct !{!94, !43}
!95 = !{!"mesh_evaluate.c:normal_short_to_float_v3"}
!96 = !{!"mesh_evaluate.c:dot_v3v3"}
!97 = !{!"mesh_evaluate.c:sub_v3_v3v3"}
!98 = !{!"mesh_evaluate.c:saacos"}
!99 = !{!"mesh_evaluate.c:madd_v3_v3fl"}
!100 = distinct !{!100, !43}
!101 = !{!102, !35, i64 0}
!102 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !40, i64 48}
!103 = !{!102, !35, i64 8}
!104 = !{!102, !35, i64 16}
!105 = !{!102, !35, i64 24}
!106 = !{!102, !35, i64 32}
!107 = !{!102, !35, i64 40}
!108 = !{!102, !40, i64 48}
!109 = !{!110, !35, i64 8}
!110 = !{!"SMikkTSpaceContext", !35, i64 0, !35, i64 8}
!111 = !{!110, !35, i64 0}
!112 = !{!113, !35, i64 0}
!113 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48}
!114 = !{!113, !35, i64 8}
!115 = !{!113, !35, i64 16}
!116 = !{!113, !35, i64 32}
!117 = !{!113, !35, i64 24}
!118 = !{!113, !35, i64 40}
!119 = !{!"mesh_evaluate.c:get_num_faces"}
!120 = !{!"mesh_evaluate.c:get_num_verts_of_face"}
!121 = !{!"mesh_evaluate.c:get_position"}
!122 = !{!"mesh_evaluate.c:get_texture_coordinate"}
!123 = !{!"mesh_evaluate.c:get_normal"}
!124 = !{!"mesh_evaluate.c:set_tspace"}
!125 = !{!"mesh_evaluate.c:mesh_calc_ngon_normal"}
!126 = distinct !{!126, !43}
!127 = !{!"mesh_evaluate.c:mesh_calc_ngon_normal_coords"}
!128 = distinct !{!128, !43}
!129 = !{!"mesh_evaluate.c:mesh_calc_ngon_center"}
!130 = distinct !{!130, !43}
!131 = distinct !{!131, !43}
!132 = distinct !{!132, !43}
!133 = distinct !{!133, !43}
!134 = distinct !{!134, !43}
!135 = distinct !{!135, !43}
!136 = !{!"mesh_evaluate.c:zero_v3"}
!137 = !{!"mesh_evaluate.c:add_v3_v3"}
!138 = !{!"mesh_evaluate.c:mul_v3_fl"}
!139 = distinct !{!139, !43}
!140 = !{i8 0, i8 2}
!141 = !{!"mesh_evaluate.c:mesh_calc_poly_planar_area_centroid"}
!142 = distinct !{!142, !43}
!143 = !{!"mesh_evaluate.c:is_finite_v3"}
!144 = distinct !{!144, !43}
!145 = !{!"mesh_evaluate.c:mesh_calc_center_centroid_ex"}
!146 = distinct !{!146, !43}
!147 = !{!148, !35, i64 0}
!148 = !{!"MTexPoly", !35, i64 0, !36, i64 8, !36, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!149 = !{!150, !35, i64 32}
!150 = !{!"MTFace", !36, i64 0, !35, i64 32, !36, i64 40, !36, i64 41, !41, i64 42, !41, i64 44, !41, i64 46}
!151 = !{!148, !36, i64 8}
!152 = !{!150, !36, i64 40}
!153 = !{!148, !36, i64 9}
!154 = !{!150, !36, i64 41}
!155 = distinct !{!155, !43}
!156 = distinct !{!156, !43}
!157 = !{!36, !36, i64 0}
!158 = distinct !{!158, !43}
!159 = distinct !{!159, !43}
!160 = distinct !{!160, !43}
!161 = distinct !{!161, !43}
!162 = distinct !{!162, !43}
!163 = !{!"mesh_evaluate.c:copy_v2_v2"}
!164 = distinct !{!164, !43}
!165 = distinct !{!165, !43}
!166 = distinct !{!166, !43}
!167 = distinct !{!167, !43}
!168 = distinct !{!168, !43}
!169 = distinct !{!169, !43}
!170 = distinct !{!170, !43}
!171 = distinct !{!171, !43}
!172 = distinct !{!172, !43}
!173 = distinct !{!173, !43}
!174 = distinct !{!174, !43}
!175 = distinct !{!175, !43}
!176 = !{!39, !41, i64 8}
!177 = !{!74, !41, i64 16}
!178 = !{!74, !36, i64 19}
!179 = !{!74, !36, i64 18}
!180 = distinct !{!180, !43}
!181 = distinct !{!181, !43}
!182 = distinct !{!182, !43}
!183 = distinct !{!183, !43}
!184 = distinct !{!184, !43}
!185 = distinct !{!185, !43}
!186 = !{!"mesh_evaluate.c:poly_to_tri_count"}
!187 = !{!"mesh_evaluate.c:add_newell_cross_v3_v3v3"}
!188 = distinct !{!188, !43}
!189 = distinct !{!189, !43}
!190 = !{!66, !40, i64 1284}
!191 = !{!66, !40, i64 1288}
!192 = !{!66, !40, i64 1300}
!193 = !{!66, !35, i64 240}
!194 = !{!66, !35, i64 208}
!195 = distinct !{!195, !43}
!196 = distinct !{!196, !43}
!197 = distinct !{!197, !43}
!198 = !{!"mesh_evaluate.c:bm_corners_to_loops_ex"}
!199 = distinct !{!199, !43}
!200 = distinct !{!200, !43}
!201 = distinct !{!201, !43}
!202 = !{!203, !35, i64 8}
!203 = !{!"MDisps", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16}
!204 = !{!68, !35, i64 192}
!205 = !{!203, !40, i64 0}
!206 = !{!203, !40, i64 4}
!207 = distinct !{!207, !43}
!208 = !{!209, !36, i64 18}
!209 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!210 = distinct !{!210, !43}
!211 = distinct !{!211, !43}
!212 = distinct !{!212, !43}
!213 = distinct !{!213, !43}
!214 = distinct !{!214, !43}
!215 = distinct !{!215, !43}
!216 = distinct !{!216, !43}
!217 = distinct !{!217, !43}
!218 = distinct !{!218, !43}
!219 = distinct !{!219, !43}
!220 = distinct !{!220, !43}
!221 = distinct !{!221, !43}
!222 = distinct !{!222, !43}
!223 = distinct !{!223, !43}
!224 = distinct !{!224, !43}
!225 = distinct !{!225, !43}
!226 = distinct !{!226, !43}
!227 = !{!"mesh_evaluate.c:mul_v3_v3fl"}
