; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_beautify.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_beautify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.EdRotState = type { i32, i32, i32, i32 }
%struct.BMFlagLayer = type { i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_beautify_fill = private unnamed_addr constant [22 x i8] c"BM_mesh_beautify_fill\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.erot_gset_new = private unnamed_addr constant [14 x i8] c"erot_gset_new\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_verts_calc_rotate_beauty(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = and i16 %4, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0) #11
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %2) #11
  %12 = icmp eq i8 %10, %11
  %13 = icmp eq ptr %0, %2
  %14 = or i1 %13, %12
  br i1 %14, label %27, label %17

15:                                               ; preds = %6
  %16 = icmp eq ptr %0, %2
  br i1 %16, label %27, label %17

17:                                               ; preds = %9, %15
  %18 = icmp eq i16 %5, 0
  %19 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  br i1 %18, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call fastcc float @bm_edge_calc_rotate_beauty__area(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #11
  br label %27

25:                                               ; preds = %17
  %26 = tail call fastcc float @bm_edge_calc_rotate_beauty__angle(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #11
  br label %27

27:                                               ; preds = %9, %15, %25, %23
  %28 = phi float [ %24, %23 ], [ %26, %25 ], [ 0x47EFFFFFE0000000, %15 ], [ 0x47EFFFFFE0000000, %9 ]
  ret float %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !34 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !35
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_edge_calc_rotate_beauty__area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !41 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #12
  %13 = call float @normal_tri_v3(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %14 = fcmp ugt float %13, 0x3E80000000000000
  %15 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %3, ptr noundef %0) #13
  %16 = fcmp ugt float %15, 0x3E80000000000000
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %19 = call fastcc float @normalize_v3(ptr noundef nonnull %11) #11
  %20 = fcmp ugt float %19, 0x3E80000000000000
  br i1 %20, label %26, label %23

21:                                               ; preds = %4
  %22 = select i1 %14, i1 true, i1 %16
  br i1 %22, label %24, label %23

23:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %77

24:                                               ; preds = %21
  %25 = select i1 %14, ptr %9, ptr %10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %24, %18
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %12, ptr noundef nonnull %11) #13
  call void @mul_v2_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef %0) #13
  call void @mul_v2_m3v3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef %1) #13
  call void @mul_v2_m3v3(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef %2) #13
  call void @mul_v2_m3v3(ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br i1 %17, label %27, label %30

27:                                               ; preds = %26
  %28 = call zeroext i8 @is_quad_convex_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %77, label %42

30:                                               ; preds = %26
  %31 = call fastcc float @area_tri_signed_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %32 = call fastcc float @area_tri_signed_v2(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %33 = call float @llvm.fabs.f32(float %31)
  %34 = fcmp ugt float %33, 0x3E80000000000000
  %35 = call float @llvm.fabs.f32(float %32)
  %36 = fcmp ugt float %35, 0x3E80000000000000
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %77

38:                                               ; preds = %30
  %39 = fcmp oge float %31, 0.000000e+00
  %40 = fcmp ult float %32, 0.000000e+00
  %41 = xor i1 %39, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %38, %27
  %43 = call fastcc float @len_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %44 = call fastcc float @len_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %45 = call fastcc float @len_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %46 = call fastcc float @len_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %5) #11
  %47 = call fastcc float @len_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  %48 = call fastcc float @len_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %8) #11
  %49 = call fastcc float @area_tri_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %50 = call fastcc float @area_tri_v2(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %5) #11
  %51 = call fastcc float @area_tri_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %52 = call fastcc float @area_tri_v2(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %53 = insertelement <2 x float> poison, float %45, i64 0
  %54 = insertelement <2 x float> %53, float %43, i64 1
  %55 = insertelement <2 x float> poison, float %44, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fadd <2 x float> %54, %56
  %58 = insertelement <2 x float> poison, float %48, i64 0
  %59 = insertelement <2 x float> %58, float %47, i64 1
  %60 = fadd <2 x float> %57, %59
  %61 = insertelement <2 x float> %58, float %45, i64 1
  %62 = insertelement <2 x float> poison, float %46, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fadd <2 x float> %61, %63
  %65 = insertelement <2 x float> %59, float %43, i64 0
  %66 = fadd <2 x float> %65, %64
  %67 = insertelement <2 x float> poison, float %49, i64 0
  %68 = insertelement <2 x float> %67, float %51, i64 1
  %69 = fdiv <2 x float> %68, %60
  %70 = insertelement <2 x float> poison, float %50, i64 0
  %71 = insertelement <2 x float> %70, float %52, i64 1
  %72 = fdiv <2 x float> %71, %66
  %73 = fadd <2 x float> %69, %72
  %74 = shufflevector <2 x float> %73, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %75 = fsub <2 x float> %73, %74
  %76 = extractelement <2 x float> %75, i64 0
  br label %77

77:                                               ; preds = %30, %23, %27, %38, %42
  %78 = phi float [ %76, %42 ], [ 0x47EFFFFFE0000000, %38 ], [ 0x47EFFFFFE0000000, %27 ], [ 0x47EFFFFFE0000000, %23 ], [ 0x47EFFFFFE0000000, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret float %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_edge_calc_rotate_beauty__angle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !42 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %7 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %8 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3, ptr noundef %0) #13
  %9 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %10 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %2, ptr noundef %3) #13
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %17 = fsub float %16, %9
  br label %18

18:                                               ; preds = %4, %12, %15
  %19 = phi float [ %17, %15 ], [ 0x47EFFFFFE0000000, %12 ], [ 0x47EFFFFFE0000000, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret float %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_beautify_fill(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %9 = sext i32 %2 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @__func__.BM_mesh_beautify_fill) #13
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 512, i32 noundef 0) #13
  %13 = tail call ptr @BLI_heap_new_ex(i32 noundef %2) #13
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %15 = tail call ptr %14(i64 noundef %10, ptr noundef nonnull @__func__.BM_mesh_beautify_fill) #13
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %7
  %18 = zext nneg i32 %2 to i64
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i64 [ 0, %17 ], [ %31, %27 ]
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = tail call fastcc float @bm_edge_calc_rotate_beauty(ptr noundef %22, i16 noundef signext %3, i16 noundef signext %4) #11
  %24 = fcmp olt float %23, 0.000000e+00
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call ptr @BLI_heap_insert(ptr noundef %13, float noundef %23, ptr noundef %22) #13
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi ptr [ %26, %25 ], [ null, %19 ]
  %29 = getelementptr inbounds ptr, ptr %15, i64 %20
  store ptr %28, ptr %29, align 8
  %30 = trunc i64 %20 to i32
  tail call fastcc void @_bm_elem_index_set(ptr noundef %22, i32 noundef %30) #11
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %19, !llvm.loop !44

33:                                               ; preds = %27, %7
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %35 = load i8, ptr %34, align 4, !tbaa !46
  %36 = or i8 %35, 2
  store i8 %36, ptr %34, align 4, !tbaa !46
  %37 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %13) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = icmp eq i16 %5, 0
  %41 = icmp eq i16 %6, 0
  br label %42

42:                                               ; preds = %39, %77
  %43 = tail call ptr @BLI_heap_popmin(ptr noundef %13) #13
  %44 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %43) #11
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %15, i64 %45
  store ptr null, ptr %46, align 8, !tbaa !43
  %47 = tail call ptr @BM_edge_rotate(ptr noundef %0, ptr noundef %43, i8 noundef zeroext 0, i16 noundef signext 1) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %77, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds ptr, ptr %11, i64 %45
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = tail call ptr @BLI_mempool_alloc(ptr noundef %12) #13
  tail call fastcc void @erot_state_current(ptr noundef nonnull %47, ptr noundef %52) #11
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @erot_gset_new() #11
  store ptr %55, ptr %50, align 8, !tbaa !43
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi ptr [ %55, %54 ], [ %51, %49 ]
  tail call void @BLI_gset_insert(ptr noundef %57, ptr noundef %52) #13
  %58 = getelementptr inbounds ptr, ptr %1, i64 %45
  store ptr %47, ptr %58, align 8, !tbaa !43
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %47, i32 noundef %44) #11
  tail call fastcc void @bm_edge_update_beauty_cost(ptr noundef nonnull %47, ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4) #11
  br i1 %40, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %61, i16 noundef signext %5) #11
  br label %62

62:                                               ; preds = %59, %56
  br i1 %41, label %77, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !54
  %66 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.BMFace, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !57
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %69, i16 noundef signext %6) #11
  %70 = load ptr, ptr %64, align 8, !tbaa !54
  %71 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !57
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %76, i16 noundef signext %6) #11
  br label %77

77:                                               ; preds = %62, %63, %42
  %78 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %13) #13
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %42, label %80, !llvm.loop !60

80:                                               ; preds = %77, %33
  tail call void @BLI_heap_free(ptr noundef %13, ptr noundef null) #13
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %81(ptr noundef %15) #13
  br i1 %16, label %82, label %93

82:                                               ; preds = %80
  %83 = zext nneg i32 %2 to i64
  br label %84

84:                                               ; preds = %82, %90
  %85 = phi i64 [ 0, %82 ], [ %91, %90 ]
  %86 = getelementptr inbounds ptr, ptr %11, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  tail call void @BLI_gset_free(ptr noundef nonnull %87, ptr noundef null) #13
  br label %90

90:                                               ; preds = %84, %89
  %91 = add nuw nsw i64 %85, 1
  %92 = icmp eq i64 %91, %83
  br i1 %92, label %93, label %84, !llvm.loop !61

93:                                               ; preds = %90, %80
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %94(ptr noundef %11) #13
  tail call void @BLI_mempool_destroy(ptr noundef %12) #13
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_heap_new_ex(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_edge_calc_rotate_beauty(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !62 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = tail call float @BM_verts_calc_rotate_beauty(ptr noundef %9, ptr noundef %11, ptr noundef %17, ptr noundef %21, i16 noundef signext %1, i16 noundef signext %2) #11
  ret float %22
}

; Function Attrs: optsize
declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !67
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @BM_edge_rotate(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @erot_state_current(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.EdRotState, ptr %1, i64 0, i32 2
  tail call fastcc void @erot_state_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @erot_gset_new() unnamed_addr #0 !PGOFuncName !70 {
  %1 = tail call ptr @BLI_gset_new(ptr noundef nonnull @BLI_ghashutil_uinthash_v4, ptr noundef nonnull @BLI_ghashutil_uinthash_v4_cmp, ptr noundef nonnull @__func__.erot_gset_new) #13
  ret ptr %1
}

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edge_update_beauty_cost(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7) unnamed_addr #0 !PGOFuncName !71 {
  %9 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  store ptr %15, ptr %9, align 16, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %9, i64 1
  %17 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  store ptr %20, ptr %16, align 8, !tbaa !43
  %21 = getelementptr inbounds ptr, ptr %9, i64 2
  %22 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  store ptr %27, ptr %21, align 16, !tbaa !43
  %28 = getelementptr inbounds ptr, ptr %9, i64 3
  %29 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  store ptr %32, ptr %28, align 8, !tbaa !43
  br label %33

33:                                               ; preds = %8, %33
  %34 = phi i64 [ 0, %8 ], [ %37, %33 ]
  %35 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call fastcc void @bm_edge_update_beauty_cost_single(ptr noundef %36, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7) #11
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %39, label %33, !llvm.loop !73

39:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #6 !PGOFuncName !74 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !76
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !78 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = load float, ptr %2, align 4, !tbaa !79
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !79
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !79
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !81 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #11
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !82 {
  %3 = load float, ptr %1, align 4, !tbaa !79
  store float %3, ptr %0, align 4, !tbaa !79
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_quad_convex_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @area_tri_signed_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !83 {
  %4 = load float, ptr %0, align 4, !tbaa !79
  %5 = load float, ptr %1, align 4, !tbaa !79
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !79
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !79
  %14 = fsub float %13, %8
  %15 = load float, ptr %2, align 4, !tbaa !79
  %16 = fsub float %15, %5
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %17)
  %19 = fmul float %18, 5.000000e-01
  ret float %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !84 {
  %3 = load float, ptr %0, align 4, !tbaa !79
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !79
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !79
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @area_tri_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !85 {
  %4 = tail call fastcc float @area_tri_signed_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %5 = tail call float @llvm.fabs.f32(float %4)
  ret float %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !86 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #11
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
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
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !87 {
  %3 = load float, ptr %0, align 4, !tbaa !79
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !88 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !79
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !79
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !79
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !89 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !79
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @erot_state_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !PGOFuncName !90 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %5) #11
  store i32 %6, ptr %1, align 4, !tbaa !92
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %8) #11
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !92
  %11 = icmp sgt i32 %6, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 %9, ptr %1, align 4, !tbaa !92
  store i32 %6, ptr %10, align 4, !tbaa !92
  br label %13

13:                                               ; preds = %12, %3
  %14 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %19) #11
  store i32 %20, ptr %2, align 4, !tbaa !92
  %21 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %26) #11
  %28 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !92
  %29 = icmp sgt i32 %20, %27
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 %27, ptr %2, align 4, !tbaa !92
  store i32 %20, ptr %28, align 4, !tbaa !92
  br label %31

31:                                               ; preds = %30, %13
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_gset_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_ghashutil_uinthash_v4(ptr noundef) #3

; Function Attrs: optsize
declare zeroext i8 @BLI_ghashutil_uinthash_v4_cmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edge_update_beauty_cost_single(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7) unnamed_addr #0 !PGOFuncName !94 {
  %9 = alloca %struct.EdRotState, align 4
  %10 = tail call fastcc zeroext i8 @edge_in_array(ptr noundef %0, ptr noundef %4, i32 noundef %5) #11, !range !95
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #11
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %2, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void @BLI_heap_remove(ptr noundef %1, ptr noundef nonnull %18) #13
  store ptr null, ptr %17, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %20, %12
  %22 = icmp eq ptr %16, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  call fastcc void @erot_state_alternate(ptr noundef %0, ptr noundef nonnull %9) #11
  %24 = call zeroext i8 @BLI_gset_haskey(ptr noundef nonnull %16, ptr noundef nonnull %9) #13
  %25 = icmp eq i8 %24, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %21
  %27 = call fastcc float @bm_edge_calc_rotate_beauty(ptr noundef %0, i16 noundef signext %6, i16 noundef signext %7) #11
  %28 = fcmp olt float %27, 0.000000e+00
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call ptr @BLI_heap_insert(ptr noundef %1, float noundef %27, ptr noundef %0) #13
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  store ptr %32, ptr %17, align 8, !tbaa !43
  br label %33

33:                                               ; preds = %31, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @edge_in_array(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !96 {
  %4 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #11
  %5 = icmp sgt i32 %4, -1
  %6 = icmp slt i32 %4, %2
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, %0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i8 [ 0, %3 ], [ %13, %8 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BLI_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @erot_state_alternate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !97 {
  %3 = getelementptr inbounds %struct.EdRotState, ptr %1, i64 0, i32 2
  tail call fastcc void @erot_state_ex(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }

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
!34 = !{!"bmesh_beautify.c:_bm_elem_flag_test"}
!35 = !{!36, !38, i64 13}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"bmesh_beautify.c:bm_edge_calc_rotate_beauty__area"}
!42 = !{!"bmesh_beautify.c:bm_edge_calc_rotate_beauty__angle"}
!43 = !{!37, !37, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!47, !38, i64 28}
!47 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !48, i64 144, !48, i64 344, !48, i64 544, !48, i64 744, !49, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !50, i64 960, !37, i64 976, !50, i64 984, !37, i64 1000}
!48 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!49 = !{!"short", !38, i64 0}
!50 = !{!"ListBase", !37, i64 0, !37, i64 8}
!51 = !{!52, !37, i64 16}
!52 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !53, i64 48, !53, i64 64}
!53 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!54 = !{!52, !37, i64 40}
!55 = !{!56, !37, i64 32}
!56 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!57 = !{!58, !37, i64 16}
!58 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !49, i64 48}
!59 = !{!56, !37, i64 40}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = !{!"bmesh_beautify.c:bm_edge_calc_rotate_beauty"}
!63 = !{!56, !37, i64 64}
!64 = !{!56, !37, i64 16}
!65 = !{!56, !37, i64 56}
!66 = !{!"bmesh_beautify.c:_bm_elem_index_set"}
!67 = !{!36, !40, i64 8}
!68 = !{!"bmesh_beautify.c:_bm_elem_index_get"}
!69 = !{!"bmesh_beautify.c:erot_state_current"}
!70 = !{!"bmesh_beautify.c:erot_gset_new"}
!71 = !{!"bmesh_beautify.c:bm_edge_update_beauty_cost"}
!72 = !{!56, !37, i64 24}
!73 = distinct !{!73, !45}
!74 = !{!"bmesh_beautify.c:_bmo_elem_flag_enable"}
!75 = !{!47, !40, i64 128}
!76 = !{!77, !49, i64 0}
!77 = !{!"BMFlagLayer", !49, i64 0}
!78 = !{!"bmesh_beautify.c:add_v3_v3v3"}
!79 = !{!80, !80, i64 0}
!80 = !{!"float", !38, i64 0}
!81 = !{!"bmesh_beautify.c:normalize_v3"}
!82 = !{!"bmesh_beautify.c:copy_v3_v3"}
!83 = !{!"bmesh_beautify.c:area_tri_signed_v2"}
!84 = !{!"bmesh_beautify.c:len_v2v2"}
!85 = !{!"bmesh_beautify.c:area_tri_v2"}
!86 = !{!"bmesh_beautify.c:normalize_v3_v3"}
!87 = !{!"bmesh_beautify.c:dot_v3v3"}
!88 = !{!"bmesh_beautify.c:mul_v3_v3fl"}
!89 = !{!"bmesh_beautify.c:zero_v3"}
!90 = !{!"bmesh_beautify.c:erot_state_ex"}
!91 = !{!52, !37, i64 24}
!92 = !{!40, !40, i64 0}
!93 = !{!52, !37, i64 32}
!94 = !{!"bmesh_beautify.c:bm_edge_update_beauty_cost_single"}
!95 = !{i8 0, i8 2}
!96 = !{!"bmesh_beautify.c:edge_in_array"}
!97 = !{!"bmesh_beautify.c:erot_state_alternate"}
