; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_bevel.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_bevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BevelParams = type { ptr, ptr, %struct.ProfileSpacing, float, i32, i32, float, i8, i8, i8, i8, ptr, i32, i32 }
%struct.ProfileSpacing = type { ptr, ptr, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.EdgeHalf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BevVert = type { ptr, i32, i32, i32, float, i8, i8, ptr, ptr, ptr }
%struct.VMesh = type { ptr, ptr, i32, i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BoundVert = type { ptr, ptr, %struct.NewVert, ptr, ptr, ptr, i32, %struct.Profile, i8 }
%struct.NewVert = type { ptr, [3 x float] }
%struct.Profile = type { float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }

@__func__.BM_mesh_bevel = private unnamed_addr constant [14 x i8] c"BM_mesh_bevel\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"BLI_array.vv\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"BLI_array.vf\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"BLI_array.ee\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"BLI_array.vv_fix\00", align 1
@switch.table.sabin_gamma = private unnamed_addr constant [4 x float] [float 0x3FB0B410C0000000, float 2.500000e-01, float 0x3FD9BA18C0000000, float 0x3FE0BFE220000000], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_bevel(ptr noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BevelParams, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %13) #23
  %14 = getelementptr inbounds i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %14, i8 0, i64 48, i1 false)
  %15 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 3
  store float %1, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 4
  store i32 %2, ptr %16, align 4, !tbaa !42
  %17 = fptosi float %3 to i32
  %18 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 5
  store i32 %17, ptr %18, align 8, !tbaa !43
  %19 = fmul float %4, 4.000000e+00
  %20 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 6
  store float %19, ptr %20, align 4, !tbaa !44
  %21 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 7
  store i8 %5, ptr %21, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 8
  store i8 %6, ptr %22, align 1, !tbaa !46
  %23 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 10
  store i8 %7, ptr %23, align 1, !tbaa !47
  %24 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 11
  store ptr %8, ptr %24, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 12
  store i32 %9, ptr %25, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 13
  store i32 %10, ptr %26, align 4, !tbaa !50
  %27 = fcmp olt float %19, 0x3FE3333340000000
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  store float 0x3FE3333340000000, ptr %20, align 4, !tbaa !44
  br label %29

29:                                               ; preds = %28, %11
  %30 = fcmp ogt float %1, 0.000000e+00
  br i1 %30, label %31, label %107

31:                                               ; preds = %29
  %32 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_bevel) #24
  store ptr %32, ptr %13, align 8, !tbaa !51
  %33 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @__func__.BM_mesh_bevel) #24
  %34 = getelementptr inbounds %struct.BevelParams, ptr %13, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !52
  tail call void @BLI_memarena_use_calloc(ptr noundef %33) #24
  call fastcc void @set_profile_spacing(ptr noundef nonnull %13) #25
  %35 = icmp eq i8 %7, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call fastcc float @bevel_limit_offset(ptr noundef %0, ptr noundef nonnull %13) #25
  store float %37, ptr %15, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %36, %31
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %38, %49
  %42 = phi ptr [ %50, %49 ], [ %39, %38 ]
  %43 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %42, i8 noundef zeroext 16) #25, !range !53
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = call fastcc ptr @bevel_vert_construct(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %42) #25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call fastcc void @build_boundary(ptr noundef nonnull %13, ptr noundef nonnull %46, i8 noundef zeroext 1) #25
  br label %49

49:                                               ; preds = %41, %48, %45
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !54

52:                                               ; preds = %49, %38
  %53 = load i8, ptr %21, align 8, !tbaa !45
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call fastcc void @adjust_offsets(ptr noundef nonnull %13) #25
  br label %56

56:                                               ; preds = %55, %52
  %57 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #25
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %56, %67
  %60 = phi ptr [ %68, %67 ], [ %57, %56 ]
  %61 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %60, i8 noundef zeroext 16) #25, !range !53
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = call fastcc ptr @find_bevvert(ptr noundef nonnull %13, ptr noundef nonnull %60) #25
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call fastcc void @build_vmesh(ptr noundef nonnull %13, ptr noundef %0, ptr noundef nonnull %64) #25
  br label %67

67:                                               ; preds = %59, %66, %63
  %68 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #25
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %59, !llvm.loop !56

70:                                               ; preds = %67, %56
  br i1 %54, label %71, label %82

71:                                               ; preds = %70
  %72 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #25
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %71, %79
  %75 = phi ptr [ %80, %79 ], [ %72, %71 ]
  %76 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %75, i8 noundef zeroext 16) #25, !range !53
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call fastcc void @bevel_build_edge_polygons(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %75) #25
  br label %79

79:                                               ; preds = %74, %78
  %80 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #25
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %74, !llvm.loop !57

82:                                               ; preds = %79, %71, %70
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #25
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %82, %90
  %86 = phi ptr [ %91, %90 ], [ %83, %82 ]
  %87 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %86, i8 noundef zeroext 16) #25, !range !53
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  call fastcc void @bevel_rebuild_existing_polygons(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %86) #25
  call fastcc void @bevel_reattach_wires(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %86) #25
  br label %90

90:                                               ; preds = %85, %89
  %91 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #25
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %85, !llvm.loop !58

93:                                               ; preds = %90, %82
  %94 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #25
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %93, %102
  %97 = phi ptr [ %98, %102 ], [ %94, %93 ]
  %98 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #25
  %99 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %97, i8 noundef zeroext 16) #25, !range !53
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %97) #24
  br label %102

102:                                              ; preds = %96, %101
  %103 = icmp eq ptr %98, null
  br i1 %103, label %104, label %96, !llvm.loop !59

104:                                              ; preds = %102, %93
  %105 = load ptr, ptr %13, align 8, !tbaa !51
  call void @BLI_ghash_free(ptr noundef %105, ptr noundef null, ptr noundef null) #24
  %106 = load ptr, ptr %34, align 8, !tbaa !52
  call void @BLI_memarena_free(ptr noundef %106) #24
  br label %107

107:                                              ; preds = %104, %29
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_profile_spacing(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = add nuw nsw i32 %3, 1
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 2
  %11 = tail call ptr @BLI_memarena_alloc(ptr noundef %7, i64 noundef %10) #24
  %12 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 6
  %14 = load float, ptr %13, align 4, !tbaa !44
  tail call fastcc void @find_even_superellipse_params(i32 noundef %3, float noundef %14, ptr noundef %11) #25
  %15 = load i32, ptr %2, align 8, !tbaa !43
  %16 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %15) #25
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 4, i32 %16
  %19 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !62
  %20 = icmp eq i32 %18, %3
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load ptr, ptr %12, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !63
  br label %34

24:                                               ; preds = %5
  %25 = load ptr, ptr %6, align 8, !tbaa !52
  %26 = add nsw i32 %18, 1
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call ptr @BLI_memarena_alloc(ptr noundef %25, i64 noundef %28) #24
  %30 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !63
  %31 = load float, ptr %13, align 4, !tbaa !44
  tail call fastcc void @find_even_superellipse_params(i32 noundef %18, float noundef %31, ptr noundef %29) #25
  br label %34

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %33, i8 0, i64 20, i1 false)
  br label %34

34:                                               ; preds = %21, %24, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bevel_limit_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !64 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = fcmp ogt float %6, 5.000000e+01
  %12 = select i1 %11, float 5.000000e+01, float %6
  br label %53

13:                                               ; preds = %2
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 7
  br label %18

18:                                               ; preds = %16, %49
  %19 = phi float [ %6, %16 ], [ %50, %49 ]
  %20 = phi ptr [ %14, %16 ], [ %51, %49 ]
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %20, i8 noundef zeroext 16) #25, !range !53
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %18
  %24 = load i8, ptr %17, align 8, !tbaa !45
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %20) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %26, %34
  %30 = phi ptr [ %35, %34 ], [ %27, %26 ]
  %31 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %30, ptr noundef nonnull %20) #25
  %32 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %31, i8 noundef zeroext 16) #25, !range !53
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #25
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %29, !llvm.loop !65

37:                                               ; preds = %29, %23
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %20) #25
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37, %40
  %41 = phi float [ %46, %40 ], [ %19, %37 ]
  %42 = phi ptr [ %47, %40 ], [ %38, %37 ]
  %43 = call float @BM_edge_calc_length(ptr noundef nonnull %42) #24
  %44 = fmul float %43, 5.000000e-01
  %45 = fcmp olt float %44, %41
  %46 = select i1 %45, float %44, float %41
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #25
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %40, !llvm.loop !66

49:                                               ; preds = %34, %40, %26, %37, %18
  %50 = phi float [ %19, %18 ], [ %19, %37 ], [ %19, %26 ], [ %46, %40 ], [ %19, %34 ]
  %51 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #25
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %18, !llvm.loop !67

53:                                               ; preds = %49, %13, %10
  %54 = phi float [ %12, %10 ], [ %6, %13 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #23
  ret float %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !68 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #25
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !70
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bevel_vert_construct(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !72 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.EdgeHalf, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #23
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %2) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 7
  br label %11

11:                                               ; preds = %9, %51
  %12 = phi ptr [ %7, %9 ], [ %53, %51 ]
  %13 = phi i32 [ 0, %9 ], [ %52, %51 ]
  %14 = phi i32 [ 0, %9 ], [ %42, %51 ]
  %15 = phi i32 [ 0, %9 ], [ %32, %51 ]
  %16 = phi ptr [ null, %9 ], [ %34, %51 ]
  %17 = call i32 @BM_edge_face_count(ptr noundef nonnull %12) #24
  %18 = getelementptr inbounds %struct.BMHeader, ptr %12, i64 0, i32 4
  %19 = load i8, ptr %18, align 2, !tbaa !73
  %20 = and i8 %19, -5
  store i8 %20, ptr %18, align 2, !tbaa !73
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %12, i8 noundef zeroext 16) #25, !range !53
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %11
  %24 = load i8, ptr %10, align 8, !tbaa !45
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = add nsw i32 %15, 1
  %28 = icmp eq ptr %16, null
  %29 = select i1 %28, ptr %12, ptr %16
  br label %30

30:                                               ; preds = %26, %23, %11
  %31 = phi ptr [ %16, %23 ], [ %16, %11 ], [ %29, %26 ]
  %32 = phi i32 [ %15, %23 ], [ %15, %11 ], [ %27, %26 ]
  %33 = icmp eq i32 %17, 1
  %34 = select i1 %33, ptr %12, ptr %31
  %35 = icmp sgt i32 %17, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i8, ptr %10, align 8, !tbaa !45
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %30
  %40 = add nsw i32 %14, 1
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %40, %39 ], [ %14, %36 ]
  %43 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %12) #25, !range !76
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = add nsw i32 %13, 1
  %47 = load i8, ptr %10, align 8, !tbaa !45
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = or i8 %19, 4
  store i8 %50, ptr %18, align 2, !tbaa !73
  br label %51

51:                                               ; preds = %41, %49, %45
  %52 = phi i32 [ %46, %45 ], [ %46, %49 ], [ %13, %41 ]
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %11, !llvm.loop !77

55:                                               ; preds = %51
  %56 = icmp eq ptr %34, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %3, %55
  %58 = phi i32 [ %52, %55 ], [ 0, %3 ]
  %59 = phi i32 [ %42, %55 ], [ 0, %3 ]
  %60 = phi i32 [ %32, %55 ], [ 0, %3 ]
  %61 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  br label %63

63:                                               ; preds = %57, %55
  %64 = phi i32 [ %52, %55 ], [ %58, %57 ]
  %65 = phi i32 [ %42, %55 ], [ %59, %57 ]
  %66 = phi i32 [ %32, %55 ], [ %60, %57 ]
  %67 = phi ptr [ %34, %55 ], [ %62, %57 ]
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 7
  %71 = load i8, ptr %70, align 8, !tbaa !45
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %473, label %73

73:                                               ; preds = %69, %63
  %74 = icmp slt i32 %65, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 7
  %77 = load i8, ptr %76, align 8, !tbaa !45
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %473

79:                                               ; preds = %75, %73
  %80 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = call ptr @BLI_memarena_alloc(ptr noundef %81, i64 noundef 56) #24
  store ptr %2, ptr %82, align 8, !tbaa !80
  %83 = getelementptr inbounds %struct.BevVert, ptr %82, i64 0, i32 1
  store i32 %65, ptr %83, align 8, !tbaa !82
  %84 = getelementptr inbounds %struct.BevVert, ptr %82, i64 0, i32 2
  store i32 %66, ptr %84, align 4, !tbaa !83
  %85 = getelementptr inbounds %struct.BevVert, ptr %82, i64 0, i32 3
  store i32 %64, ptr %85, align 8, !tbaa !84
  %86 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 3
  %87 = load float, ptr %86, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.BevVert, ptr %82, i64 0, i32 4
  store float %87, ptr %88, align 4, !tbaa !85
  %89 = load ptr, ptr %80, align 8, !tbaa !52
  %90 = sext i32 %65 to i64
  %91 = mul nsw i64 %90, 80
  %92 = call ptr @BLI_memarena_alloc(ptr noundef %89, i64 noundef %91) #24
  %93 = getelementptr inbounds %struct.BevVert, ptr %82, i64 0, i32 7
  store ptr %92, ptr %93, align 8, !tbaa !86
  %94 = icmp eq i32 %64, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %79
  %96 = load ptr, ptr %80, align 8, !tbaa !52
  %97 = sext i32 %64 to i64
  %98 = shl nsw i64 %97, 3
  %99 = call ptr @BLI_memarena_alloc(ptr noundef %96, i64 noundef %98) #24
  br label %100

100:                                              ; preds = %79, %95
  %101 = phi ptr [ %99, %95 ], [ null, %79 ]
  %102 = getelementptr inbounds %struct.BevVert, ptr %82, i64 0, i32 8
  store ptr %101, ptr %102, align 8
  %103 = load ptr, ptr %80, align 8, !tbaa !52
  %104 = call ptr @BLI_memarena_alloc(ptr noundef %103, i64 noundef 32) #24
  %105 = getelementptr inbounds %struct.BevVert, ptr %82, i64 0, i32 9
  store ptr %104, ptr %105, align 8, !tbaa !87
  %106 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !43
  %108 = getelementptr inbounds %struct.VMesh, ptr %104, i64 0, i32 3
  store i32 %107, ptr %108, align 4, !tbaa !88
  %109 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 7
  %110 = load i8, ptr %109, align 8, !tbaa !45
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %137, label %112

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 11
  %114 = load ptr, ptr %113, align 8, !tbaa !48
  %115 = icmp eq ptr %114, null
  br i1 %115, label %126, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 12
  %118 = load i32, ptr %117, align 8, !tbaa !49
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = call fastcc i32 @_bm_elem_index_get(ptr noundef %2) #25
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.MDeformVert, ptr %114, i64 %122
  %124 = call float @defvert_find_weight(ptr noundef nonnull %123, i32 noundef %118) #24
  %125 = fcmp ugt float %124, 0.000000e+00
  br i1 %125, label %133, label %473

126:                                              ; preds = %116, %112
  %127 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 8
  %128 = load i8, ptr %127, align 1, !tbaa !46
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %132 = call float @BM_elem_float_data_get(ptr noundef nonnull %131, ptr noundef %2, i32 noundef 29) #24
  br label %133

133:                                              ; preds = %120, %130
  %134 = phi float [ %132, %130 ], [ %124, %120 ]
  %135 = load float, ptr %88, align 4, !tbaa !85
  %136 = fmul float %134, %135
  store float %136, ptr %88, align 4, !tbaa !85
  br label %137

137:                                              ; preds = %133, %126, %100
  %138 = load ptr, ptr %1, align 8, !tbaa !51
  call void @BLI_ghash_insert(ptr noundef %138, ptr noundef %2, ptr noundef nonnull %82) #24
  %139 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 4
  %140 = load i8, ptr %139, align 2, !tbaa !73
  %141 = or i8 %140, 4
  store i8 %141, ptr %139, align 2, !tbaa !73
  %142 = load ptr, ptr %93, align 8, !tbaa !86
  %143 = getelementptr inbounds %struct.EdgeHalf, ptr %142, i64 0, i32 2
  store ptr %67, ptr %143, align 8, !tbaa !90
  %144 = icmp sgt i32 %65, 0
  br i1 %144, label %145, label %221

145:                                              ; preds = %137
  %146 = zext nneg i32 %65 to i64
  br label %147

147:                                              ; preds = %145, %211
  %148 = phi i64 [ 0, %145 ], [ %219, %211 ]
  %149 = phi ptr [ %67, %145 ], [ %197, %211 ]
  %150 = phi ptr [ %142, %145 ], [ %195, %211 ]
  %151 = icmp eq i64 %148, 0
  br i1 %151, label %194, label %152

152:                                              ; preds = %147
  %153 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %2) #25
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 4
  br label %162

157:                                              ; preds = %184, %152
  %158 = phi ptr [ null, %152 ], [ %185, %184 ]
  %159 = load ptr, ptr %93, align 8, !tbaa !86
  %160 = getelementptr %struct.EdgeHalf, ptr %159, i64 %148
  %161 = getelementptr inbounds %struct.EdgeHalf, ptr %159, i64 %148, i32 2
  store ptr %158, ptr %161, align 8, !tbaa !90
  br label %194

162:                                              ; preds = %155, %184
  %163 = phi ptr [ %153, %155 ], [ %186, %184 ]
  %164 = phi ptr [ null, %155 ], [ %185, %184 ]
  %165 = getelementptr inbounds %struct.BMHeader, ptr %163, i64 0, i32 4
  %166 = load i8, ptr %165, align 2, !tbaa !73
  %167 = and i8 %166, 4
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %162
  %170 = icmp eq ptr %164, null
  %171 = select i1 %170, ptr %163, ptr %164
  %172 = load ptr, ptr %156, align 8, !tbaa !92
  %173 = icmp eq ptr %172, null
  br i1 %173, label %184, label %174

174:                                              ; preds = %169
  %175 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %163) #25
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %174, %181
  %178 = phi ptr [ %182, %181 ], [ %175, %174 ]
  %179 = call ptr @BM_face_edge_share_loop(ptr noundef nonnull %178, ptr noundef %149) #24
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #25
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %177, !llvm.loop !93

184:                                              ; preds = %181, %174, %169, %162
  %185 = phi ptr [ %164, %162 ], [ %171, %169 ], [ %171, %174 ], [ %171, %181 ]
  %186 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #25
  %187 = icmp eq ptr %186, null
  br i1 %187, label %157, label %162, !llvm.loop !94

188:                                              ; preds = %177
  %189 = load ptr, ptr %93, align 8, !tbaa !86
  %190 = getelementptr %struct.EdgeHalf, ptr %189, i64 %148
  %191 = getelementptr inbounds %struct.EdgeHalf, ptr %189, i64 %148, i32 2
  store ptr %163, ptr %191, align 8, !tbaa !90
  %192 = getelementptr inbounds %struct.EdgeHalf, ptr %189, i64 %148, i32 3
  store ptr %178, ptr %192, align 8, !tbaa !95
  %193 = getelementptr %struct.EdgeHalf, ptr %190, i64 -1, i32 4
  store ptr %178, ptr %193, align 8, !tbaa !96
  br label %194

194:                                              ; preds = %188, %157, %147
  %195 = phi ptr [ %190, %188 ], [ %160, %157 ], [ %150, %147 ]
  %196 = getelementptr inbounds %struct.EdgeHalf, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !90
  %198 = getelementptr inbounds %struct.BMHeader, ptr %197, i64 0, i32 4
  %199 = load i8, ptr %198, align 2, !tbaa !73
  %200 = or i8 %199, 4
  store i8 %200, ptr %198, align 2, !tbaa !73
  %201 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %197, i8 noundef zeroext 16) #25, !range !53
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %194
  %204 = load i8, ptr %109, align 8, !tbaa !45
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.EdgeHalf, ptr %195, i64 0, i32 12
  store i8 1, ptr %207, align 4, !tbaa !97
  %208 = load i32, ptr %106, align 8, !tbaa !43
  br label %211

209:                                              ; preds = %203, %194
  %210 = getelementptr inbounds %struct.EdgeHalf, ptr %195, i64 0, i32 12
  store i8 0, ptr %210, align 4, !tbaa !97
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi i32 [ 0, %209 ], [ %208, %206 ]
  %213 = getelementptr inbounds %struct.EdgeHalf, ptr %195, i64 0, i32 7
  store i32 %212, ptr %213, align 8, !tbaa !98
  %214 = getelementptr inbounds %struct.BMEdge, ptr %197, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !99
  %216 = icmp eq ptr %215, %2
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.EdgeHalf, ptr %195, i64 0, i32 13
  store i8 %217, ptr %218, align 1, !tbaa !100
  %219 = add nuw nsw i64 %148, 1
  %220 = icmp eq i64 %219, %146
  br i1 %220, label %221, label %147, !llvm.loop !101

221:                                              ; preds = %211, %137
  %222 = phi ptr [ %67, %137 ], [ %197, %211 ]
  %223 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %222) #25
  %224 = icmp eq ptr %223, null
  br i1 %224, label %248, label %225

225:                                              ; preds = %221, %245
  %226 = phi ptr [ %246, %245 ], [ %223, %221 ]
  %227 = load ptr, ptr %93, align 8, !tbaa !86
  %228 = getelementptr inbounds %struct.EdgeHalf, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !90
  %230 = getelementptr inbounds %struct.BMEdge, ptr %229, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !92
  %232 = icmp eq ptr %231, null
  br i1 %232, label %245, label %233

233:                                              ; preds = %225
  %234 = call ptr @BM_face_edge_share_loop(ptr noundef nonnull %226, ptr noundef nonnull %229) #24
  %235 = icmp eq ptr %234, null
  br i1 %235, label %245, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %93, align 8, !tbaa !86
  %238 = getelementptr inbounds %struct.EdgeHalf, ptr %237, i64 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !96
  %240 = icmp eq ptr %239, %226
  br i1 %240, label %245, label %241

241:                                              ; preds = %236
  %242 = getelementptr %struct.EdgeHalf, ptr %237, i64 %90
  %243 = getelementptr %struct.EdgeHalf, ptr %242, i64 -1, i32 4
  store ptr %226, ptr %243, align 8, !tbaa !96
  %244 = getelementptr inbounds %struct.EdgeHalf, ptr %237, i64 0, i32 3
  store ptr %226, ptr %244, align 8, !tbaa !95
  br label %248

245:                                              ; preds = %225, %233, %236
  %246 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #25
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %225, !llvm.loop !102

248:                                              ; preds = %245, %221, %241
  %249 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %2) #25
  %250 = icmp eq ptr %249, null
  br i1 %250, label %258, label %251

251:                                              ; preds = %248, %251
  %252 = phi ptr [ %256, %251 ], [ %249, %248 ]
  %253 = getelementptr inbounds %struct.BMHeader, ptr %252, i64 0, i32 4
  %254 = load i8, ptr %253, align 2, !tbaa !73
  %255 = and i8 %254, -5
  store i8 %255, ptr %253, align 2, !tbaa !73
  %256 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #25
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %251, !llvm.loop !103

258:                                              ; preds = %251, %248
  %259 = icmp sgt i32 %65, 1
  br i1 %259, label %260, label %312

260:                                              ; preds = %258
  %261 = zext nneg i32 %65 to i64
  br label %262

262:                                              ; preds = %260, %262
  %263 = phi i64 [ 0, %260 ], [ %268, %262 ]
  %264 = phi i32 [ 0, %260 ], [ %277, %262 ]
  %265 = load ptr, ptr %93, align 8, !tbaa !86
  %266 = getelementptr inbounds %struct.EdgeHalf, ptr %265, i64 %263, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !90
  %268 = add nuw nsw i64 %263, 1
  %269 = icmp eq i64 %268, %261
  %270 = and i64 %268, 4294967295
  %271 = select i1 %269, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.EdgeHalf, ptr %265, i64 %271, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !90
  %274 = getelementptr inbounds %struct.EdgeHalf, ptr %265, i64 %263, i32 4
  %275 = load ptr, ptr %274, align 8, !tbaa !96
  %276 = call fastcc i32 @bev_ccw_test(ptr noundef %267, ptr noundef %273, ptr noundef %275) #25, !range !104
  %277 = add nsw i32 %276, %264
  %278 = icmp eq i64 %268, %261
  br i1 %278, label %279, label %262, !llvm.loop !105

279:                                              ; preds = %262
  %280 = icmp slt i32 %277, 0
  br i1 %280, label %281, label %312

281:                                              ; preds = %279
  %282 = lshr i32 %65, 1
  %283 = zext nneg i32 %282 to i64
  %284 = load ptr, ptr %93, align 8, !tbaa !86
  br label %285

285:                                              ; preds = %281, %285
  %286 = phi ptr [ %284, %281 ], [ %294, %285 ]
  %287 = phi i64 [ 0, %281 ], [ %301, %285 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6)
  %288 = getelementptr inbounds %struct.EdgeHalf, ptr %286, i64 %287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %288, i64 80, i1 false), !tbaa.struct !106
  %289 = xor i64 %287, -1
  %290 = add nsw i64 %90, %289
  %291 = getelementptr inbounds %struct.EdgeHalf, ptr %286, i64 %290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %288, ptr noundef nonnull align 8 dereferenceable(80) %291, i64 80, i1 false), !tbaa.struct !106
  %292 = load ptr, ptr %93, align 8, !tbaa !86
  %293 = getelementptr inbounds %struct.EdgeHalf, ptr %292, i64 %290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %293, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false), !tbaa.struct !106
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6)
  %294 = load ptr, ptr %93, align 8, !tbaa !86
  %295 = getelementptr inbounds %struct.EdgeHalf, ptr %294, i64 %287, i32 3
  %296 = load <2 x ptr>, ptr %295, align 8, !tbaa !107
  %297 = shufflevector <2 x ptr> %296, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %297, ptr %295, align 8, !tbaa !107
  %298 = getelementptr inbounds %struct.EdgeHalf, ptr %294, i64 %290, i32 3
  %299 = load <2 x ptr>, ptr %298, align 8, !tbaa !107
  %300 = shufflevector <2 x ptr> %299, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %300, ptr %298, align 8, !tbaa !107
  %301 = add nuw nsw i64 %287, 1
  %302 = icmp eq i64 %301, %283
  br i1 %302, label %303, label %285, !llvm.loop !111

303:                                              ; preds = %285
  %304 = and i32 %65, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %93, align 8, !tbaa !86
  %308 = zext nneg i32 %282 to i64
  %309 = getelementptr inbounds %struct.EdgeHalf, ptr %307, i64 %308, i32 3
  %310 = load <2 x ptr>, ptr %309, align 8, !tbaa !107
  %311 = shufflevector <2 x ptr> %310, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %311, ptr %309, align 8, !tbaa !107
  br label %312

312:                                              ; preds = %279, %306, %303, %258
  br i1 %144, label %313, label %455

313:                                              ; preds = %312
  %314 = load ptr, ptr %93, align 8, !tbaa !86
  %315 = add nsw i32 %65, -1
  %316 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 4
  %317 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %318 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 8
  %319 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  br label %320

320:                                              ; preds = %313, %450
  %321 = phi i32 [ 0, %313 ], [ %324, %450 ]
  %322 = phi ptr [ %314, %313 ], [ %453, %450 ]
  %323 = load ptr, ptr %93, align 8, !tbaa !86
  %324 = add nuw nsw i32 %321, 1
  %325 = icmp eq i32 %324, %65
  %326 = select i1 %325, i32 0, i32 %324
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds %struct.EdgeHalf, ptr %323, i64 %327
  store ptr %328, ptr %322, align 8, !tbaa !112
  %329 = add i32 %315, %321
  %330 = srem i32 %329, %65
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.EdgeHalf, ptr %323, i64 %331
  %333 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 1
  store ptr %332, ptr %333, align 8, !tbaa !113
  %334 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 12
  %335 = load i8, ptr %334, align 4, !tbaa !97
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %433, label %337

337:                                              ; preds = %320
  %338 = load i32, ptr %316, align 4, !tbaa !42
  switch i32 %338, label %406 [
    i32 0, label %339
    i32 1, label %342
    i32 2, label %355
    i32 3, label %367
  ]

339:                                              ; preds = %337
  %340 = load float, ptr %86, align 8, !tbaa !34
  %341 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  store float %340, ptr %341, align 4, !tbaa !114
  br label %415

342:                                              ; preds = %337
  %343 = call fastcc float @edge_face_angle(ptr noundef nonnull %322) #25
  %344 = fmul float %343, 5.000000e-01
  %345 = call float @sinf(float noundef %344) #24
  %346 = fmul float %345, 2.000000e+00
  %347 = call float @llvm.fabs.f32(float %346)
  %348 = fcmp olt float %347, 0x3EB0C6F7A0000000
  %349 = load float, ptr %86, align 8, !tbaa !34
  %350 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  br i1 %348, label %351, label %353

351:                                              ; preds = %342
  %352 = fmul float %349, 0x3F847AE140000000
  store float %352, ptr %350, align 4, !tbaa !114
  br label %409

353:                                              ; preds = %342
  %354 = fdiv float %349, %347
  store float %354, ptr %350, align 4, !tbaa !114
  br label %409

355:                                              ; preds = %337
  %356 = call fastcc float @edge_face_angle(ptr noundef nonnull %322) #25
  %357 = fmul float %356, 5.000000e-01
  %358 = call float @cosf(float noundef %357) #24
  %359 = call float @llvm.fabs.f32(float %358)
  %360 = fcmp olt float %359, 0x3EB0C6F7A0000000
  %361 = load float, ptr %86, align 8, !tbaa !34
  %362 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  br i1 %360, label %363, label %365

363:                                              ; preds = %355
  %364 = fmul float %361, 0x3F847AE140000000
  store float %364, ptr %362, align 4, !tbaa !114
  br label %409

365:                                              ; preds = %355
  %366 = fdiv float %361, %359
  store float %366, ptr %362, align 4, !tbaa !114
  br label %409

367:                                              ; preds = %337
  %368 = getelementptr inbounds %struct.EdgeHalf, ptr %323, i64 %331, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !90
  %370 = call fastcc ptr @BM_edge_other_vert(ptr noundef %369, ptr noundef %2) #25
  %371 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !90
  %373 = call fastcc ptr @BM_edge_other_vert(ptr noundef %372, ptr noundef %2) #25
  %374 = getelementptr inbounds %struct.BMVert, ptr %370, i64 0, i32 2
  %375 = getelementptr inbounds %struct.BMVert, ptr %373, i64 0, i32 2
  %376 = call float @angle_v3v3v3(ptr noundef nonnull %374, ptr noundef nonnull %317, ptr noundef nonnull %375) #24
  %377 = call float @sinf(float noundef %376) #24
  %378 = load ptr, ptr %333, align 8, !tbaa !113
  %379 = getelementptr inbounds %struct.EdgeHalf, ptr %378, i64 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !90
  %381 = call float @BM_edge_calc_length(ptr noundef %380) #24
  %382 = load float, ptr %86, align 8, !tbaa !34
  %383 = fmul float %381, %382
  %384 = fmul float %377, %383
  %385 = fdiv float %384, 1.000000e+02
  %386 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  store float %385, ptr %386, align 4, !tbaa !114
  %387 = load ptr, ptr %371, align 8, !tbaa !90
  %388 = call fastcc ptr @BM_edge_other_vert(ptr noundef %387, ptr noundef %2) #25
  %389 = load ptr, ptr %322, align 8, !tbaa !112
  %390 = getelementptr inbounds %struct.EdgeHalf, ptr %389, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !90
  %392 = call fastcc ptr @BM_edge_other_vert(ptr noundef %391, ptr noundef %2) #25
  %393 = getelementptr inbounds %struct.BMVert, ptr %388, i64 0, i32 2
  %394 = getelementptr inbounds %struct.BMVert, ptr %392, i64 0, i32 2
  %395 = call float @angle_v3v3v3(ptr noundef nonnull %393, ptr noundef nonnull %317, ptr noundef nonnull %394) #24
  %396 = call float @sinf(float noundef %395) #24
  %397 = load ptr, ptr %322, align 8, !tbaa !112
  %398 = getelementptr inbounds %struct.EdgeHalf, ptr %397, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !90
  %400 = call float @BM_edge_calc_length(ptr noundef %399) #24
  %401 = load float, ptr %86, align 8, !tbaa !34
  %402 = fmul float %400, %401
  %403 = fmul float %396, %402
  %404 = fdiv float %403, 1.000000e+02
  %405 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 11
  store float %404, ptr %405, align 8, !tbaa !115
  br label %409

406:                                              ; preds = %337
  %407 = load float, ptr %86, align 8, !tbaa !34
  %408 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  store float %407, ptr %408, align 4, !tbaa !114
  br label %415

409:                                              ; preds = %363, %365, %351, %353, %367
  %410 = load i32, ptr %316, align 4, !tbaa !42
  %411 = icmp eq i32 %410, 3
  br i1 %411, label %418, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  %414 = load float, ptr %413, align 4, !tbaa !114
  br label %415

415:                                              ; preds = %412, %339, %406
  %416 = phi float [ %414, %412 ], [ %340, %339 ], [ %407, %406 ]
  %417 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 11
  store float %416, ptr %417, align 8, !tbaa !115
  br label %418

418:                                              ; preds = %415, %409
  %419 = load i8, ptr %318, align 1, !tbaa !46
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  %423 = load <2 x float>, ptr %422, align 4, !tbaa !109
  br label %435

424:                                              ; preds = %418
  %425 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !90
  %427 = call float @BM_elem_float_data_get(ptr noundef nonnull %319, ptr noundef %426, i32 noundef 29) #24
  %428 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  %429 = load <2 x float>, ptr %428, align 4, !tbaa !109
  %430 = insertelement <2 x float> poison, float %427, i64 0
  %431 = shufflevector <2 x float> %430, <2 x float> poison, <2 x i32> zeroinitializer
  %432 = fmul <2 x float> %431, %429
  store <2 x float> %432, ptr %428, align 4, !tbaa !109
  br label %435

433:                                              ; preds = %320
  %434 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 10
  store <2 x float> zeroinitializer, ptr %434, align 4, !tbaa !109
  br label %435

435:                                              ; preds = %421, %424, %433
  %436 = phi <2 x float> [ %423, %421 ], [ %432, %424 ], [ zeroinitializer, %433 ]
  %437 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 8
  store <2 x float> %436, ptr %437, align 4, !tbaa !109
  %438 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 3
  %439 = load ptr, ptr %438, align 8, !tbaa !95
  %440 = icmp eq ptr %439, null
  br i1 %440, label %450, label %441

441:                                              ; preds = %435
  %442 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 4
  %443 = load ptr, ptr %442, align 8, !tbaa !96
  %444 = icmp eq ptr %443, null
  br i1 %444, label %450, label %445

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !90
  %448 = call fastcc zeroext i8 @contig_ldata_across_edge(ptr noundef %0, ptr noundef %447, ptr noundef nonnull %439, ptr noundef nonnull %443) #25, !range !76
  %449 = xor i8 %448, 1
  br label %450

450:                                              ; preds = %435, %441, %445
  %451 = phi i8 [ %449, %445 ], [ 1, %441 ], [ 1, %435 ]
  %452 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 0, i32 14
  store i8 %451, ptr %452, align 2, !tbaa !116
  %453 = getelementptr inbounds %struct.EdgeHalf, ptr %322, i64 1
  %454 = icmp eq i32 %324, %65
  br i1 %454, label %455, label %320, !llvm.loop !117

455:                                              ; preds = %450, %312
  br i1 %94, label %474, label %456

456:                                              ; preds = %455
  %457 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %2) #25
  %458 = icmp eq ptr %457, null
  br i1 %458, label %474, label %459

459:                                              ; preds = %456, %469
  %460 = phi ptr [ %471, %469 ], [ %457, %456 ]
  %461 = phi i32 [ %470, %469 ], [ 0, %456 ]
  %462 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %460) #25, !range !76
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %469, label %464

464:                                              ; preds = %459
  %465 = load ptr, ptr %102, align 8, !tbaa !118
  %466 = add nsw i32 %461, 1
  %467 = sext i32 %461 to i64
  %468 = getelementptr inbounds ptr, ptr %465, i64 %467
  store ptr %460, ptr %468, align 8, !tbaa !107
  br label %469

469:                                              ; preds = %459, %464
  %470 = phi i32 [ %466, %464 ], [ %461, %459 ]
  %471 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #25
  %472 = icmp eq ptr %471, null
  br i1 %472, label %474, label %459, !llvm.loop !119

473:                                              ; preds = %120, %69, %75
  call fastcc void @_bm_elem_flag_disable(ptr noundef %2, i8 noundef zeroext 16) #25
  br label %474

474:                                              ; preds = %469, %473, %456, %455
  %475 = phi ptr [ %82, %455 ], [ %82, %456 ], [ null, %473 ], [ %82, %469 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  ret ptr %475
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_boundary(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !120 {
  %4 = alloca ptr, align 8
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %8 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 7
  %11 = load i8, ptr %10, align 8, !tbaa !45
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  br label %47

16:                                               ; preds = %3
  %17 = tail call fastcc ptr @next_bev(ptr noundef nonnull %1, ptr noundef null) #25
  %18 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 4
  br label %19

19:                                               ; preds = %41, %16
  %20 = phi ptr [ %17, %16 ], [ %45, %41 ]
  %21 = call fastcc ptr @find_other_end_edge_half(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %4) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct.BevVert, ptr %24, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !121
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %18, align 4, !tbaa !42
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.EdgeHalf, ptr %21, i64 0, i32 9
  %33 = load float, ptr %32, align 8, !tbaa !122
  %34 = getelementptr inbounds %struct.EdgeHalf, ptr %20, i64 0, i32 8
  store float %33, ptr %34, align 4, !tbaa !123
  %35 = getelementptr inbounds %struct.EdgeHalf, ptr %21, i64 0, i32 8
  br label %41

36:                                               ; preds = %28, %23, %19
  %37 = getelementptr inbounds %struct.EdgeHalf, ptr %20, i64 0, i32 10
  %38 = load float, ptr %37, align 4, !tbaa !114
  %39 = getelementptr inbounds %struct.EdgeHalf, ptr %20, i64 0, i32 8
  store float %38, ptr %39, align 4, !tbaa !123
  %40 = getelementptr inbounds %struct.EdgeHalf, ptr %20, i64 0, i32 11
  br label %41

41:                                               ; preds = %31, %36
  %42 = phi ptr [ %35, %31 ], [ %40, %36 ]
  %43 = load float, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds %struct.EdgeHalf, ptr %20, i64 0, i32 9
  store float %43, ptr %44, align 8, !tbaa !122
  %45 = load ptr, ptr %20, align 8, !tbaa !112
  %46 = icmp eq ptr %45, %17
  br i1 %46, label %47, label %19, !llvm.loop !124

47:                                               ; preds = %41, %13
  %48 = phi ptr [ %15, %13 ], [ %17, %41 ]
  %49 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !82
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %122

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !83
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %122

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.BMFace, ptr %58, i64 0, i32 4
  br label %68

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !96
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %struct.BMFace, ptr %64, i64 0, i32 4
  %67 = select i1 %65, ptr null, ptr %66
  br label %68

68:                                               ; preds = %62, %60
  %69 = phi ptr [ %61, %60 ], [ %67, %62 ]
  call fastcc void @offset_in_plane(ptr noundef nonnull %48, ptr noundef %69, i8 noundef zeroext 1, ptr noundef nonnull %5) #25
  %70 = icmp eq i8 %2, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %73 = getelementptr inbounds %struct.BoundVert, ptr %72, i64 0, i32 5
  store ptr %48, ptr %73, align 8, !tbaa !125
  %74 = getelementptr inbounds %struct.BoundVert, ptr %72, i64 0, i32 4
  store ptr %48, ptr %74, align 8, !tbaa !129
  %75 = getelementptr inbounds %struct.BoundVert, ptr %72, i64 0, i32 3
  store ptr %48, ptr %75, align 8, !tbaa !130
  %76 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 5
  store ptr %72, ptr %76, align 8, !tbaa !131
  br label %80

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !131
  call fastcc void @adjust_bound_vert(ptr noundef %79, ptr noundef nonnull %5) #25
  br label %80

80:                                               ; preds = %77, %71
  %81 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !96
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.BMFace, ptr %82, i64 0, i32 4
  br label %91

86:                                               ; preds = %80
  %87 = load ptr, ptr %57, align 8, !tbaa !95
  %88 = icmp eq ptr %87, null
  %89 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 4
  %90 = select i1 %88, ptr null, ptr %89
  br label %91

91:                                               ; preds = %86, %84
  %92 = phi ptr [ %85, %84 ], [ %90, %86 ]
  call fastcc void @offset_in_plane(ptr noundef nonnull %48, ptr noundef %92, i8 noundef zeroext 0, ptr noundef nonnull %5) #25
  br i1 %70, label %98, label %93

93:                                               ; preds = %91
  %94 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %95 = getelementptr inbounds %struct.BoundVert, ptr %94, i64 0, i32 4
  store ptr %48, ptr %95, align 8, !tbaa !129
  %96 = getelementptr inbounds %struct.BoundVert, ptr %94, i64 0, i32 3
  store ptr %48, ptr %96, align 8, !tbaa !130
  %97 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 6
  store ptr %94, ptr %97, align 8, !tbaa !132
  br label %101

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !132
  call fastcc void @adjust_bound_vert(ptr noundef %100, ptr noundef nonnull %5) #25
  br label %101

101:                                              ; preds = %98, %93
  %102 = load ptr, ptr %48, align 8, !tbaa !112
  %103 = load ptr, ptr %1, align 8, !tbaa !80
  %104 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 8
  %105 = load float, ptr %104, align 4, !tbaa !123
  call fastcc void @slide_dist(ptr noundef %102, ptr noundef %103, float noundef %105, ptr noundef nonnull %5) #25
  br i1 %70, label %114, label %106

106:                                              ; preds = %101
  %107 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %108 = load ptr, ptr %48, align 8, !tbaa !112
  %109 = getelementptr inbounds %struct.BoundVert, ptr %107, i64 0, i32 4
  store ptr %108, ptr %109, align 8, !tbaa !129
  %110 = getelementptr inbounds %struct.BoundVert, ptr %107, i64 0, i32 3
  store ptr %108, ptr %110, align 8, !tbaa !130
  %111 = getelementptr inbounds %struct.EdgeHalf, ptr %108, i64 0, i32 6
  store ptr %107, ptr %111, align 8, !tbaa !132
  %112 = getelementptr inbounds %struct.EdgeHalf, ptr %108, i64 0, i32 5
  store ptr %107, ptr %112, align 8, !tbaa !131
  %113 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 4
  store i32 3, ptr %113, align 8, !tbaa !133
  call fastcc void @set_bound_vert_seams(ptr noundef nonnull %1) #25
  br label %118

114:                                              ; preds = %101
  %115 = load ptr, ptr %48, align 8, !tbaa !112
  %116 = getelementptr inbounds %struct.EdgeHalf, ptr %115, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !131
  call fastcc void @adjust_bound_vert(ptr noundef %117, ptr noundef nonnull %5) #25
  br label %118

118:                                              ; preds = %114, %106
  %119 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !134
  call fastcc void @set_profile_params(ptr noundef %0, ptr noundef %120) #25
  %121 = load ptr, ptr %119, align 8, !tbaa !134
  call fastcc void @calculate_profile(ptr noundef %0, ptr noundef %121) #25
  br label %307

122:                                              ; preds = %52, %47
  %123 = load i8, ptr %10, align 8, !tbaa !45
  %124 = icmp eq i8 %123, 0
  %125 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 4
  %126 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 8
  %127 = select i1 %124, ptr %126, ptr %125
  %128 = load float, ptr %127, align 4, !tbaa !109
  %129 = icmp eq i8 %2, 0
  %130 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 9
  br label %131

131:                                              ; preds = %240, %122
  %132 = phi ptr [ %48, %122 ], [ %242, %240 ]
  %133 = phi float [ %128, %122 ], [ %241, %240 ]
  %134 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 12
  %135 = load i8, ptr %134, align 4, !tbaa !97
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %206, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !113
  %140 = getelementptr inbounds %struct.EdgeHalf, ptr %139, i64 0, i32 12
  %141 = load i8, ptr %140, align 4, !tbaa !97
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %137
  %144 = load ptr, ptr %1, align 8, !tbaa !80
  %145 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !95
  call fastcc void @offset_meet(ptr noundef nonnull %139, ptr noundef nonnull %132, ptr noundef %144, ptr noundef %146, ptr noundef nonnull %5) #25
  br i1 %129, label %155, label %147

147:                                              ; preds = %143
  %148 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %149 = load ptr, ptr %138, align 8, !tbaa !113
  %150 = getelementptr inbounds %struct.BoundVert, ptr %148, i64 0, i32 3
  store ptr %149, ptr %150, align 8, !tbaa !130
  %151 = getelementptr inbounds %struct.BoundVert, ptr %148, i64 0, i32 5
  store ptr %132, ptr %151, align 8, !tbaa !125
  %152 = getelementptr inbounds %struct.BoundVert, ptr %148, i64 0, i32 4
  store ptr %132, ptr %152, align 8, !tbaa !129
  %153 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  store ptr %148, ptr %153, align 8, !tbaa !131
  %154 = getelementptr inbounds %struct.EdgeHalf, ptr %149, i64 0, i32 6
  store ptr %148, ptr %154, align 8, !tbaa !132
  br label %200

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  %157 = load ptr, ptr %156, align 8, !tbaa !131
  call fastcc void @adjust_bound_vert(ptr noundef %157, ptr noundef nonnull %5) #25
  br label %200

158:                                              ; preds = %137
  %159 = getelementptr inbounds %struct.EdgeHalf, ptr %139, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !113
  %161 = getelementptr inbounds %struct.EdgeHalf, ptr %160, i64 0, i32 12
  %162 = load i8, ptr %161, align 4, !tbaa !97
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %185, label %164

164:                                              ; preds = %158
  %165 = load i8, ptr %130, align 2, !tbaa !135
  %166 = icmp eq i8 %165, 0
  %167 = load ptr, ptr %1, align 8, !tbaa !80
  br i1 %166, label %169, label %168

168:                                              ; preds = %164
  call fastcc void @offset_in_two_planes(ptr noundef nonnull %0, ptr noundef nonnull %160, ptr noundef nonnull %132, ptr noundef nonnull %139, ptr noundef %167, ptr noundef nonnull %5) #25
  br label %170

169:                                              ; preds = %164
  call fastcc void @offset_on_edge_between(ptr noundef nonnull %0, ptr noundef nonnull %160, ptr noundef nonnull %132, ptr noundef nonnull %139, ptr noundef %167, ptr noundef nonnull %5) #25
  br label %170

170:                                              ; preds = %169, %168
  br i1 %129, label %182, label %171

171:                                              ; preds = %170
  %172 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %173 = load ptr, ptr %138, align 8, !tbaa !113
  %174 = getelementptr inbounds %struct.EdgeHalf, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !113
  %176 = getelementptr inbounds %struct.BoundVert, ptr %172, i64 0, i32 3
  store ptr %175, ptr %176, align 8, !tbaa !130
  %177 = getelementptr inbounds %struct.BoundVert, ptr %172, i64 0, i32 5
  store ptr %132, ptr %177, align 8, !tbaa !125
  %178 = getelementptr inbounds %struct.BoundVert, ptr %172, i64 0, i32 4
  store ptr %132, ptr %178, align 8, !tbaa !129
  %179 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  store ptr %172, ptr %179, align 8, !tbaa !131
  %180 = getelementptr inbounds %struct.EdgeHalf, ptr %173, i64 0, i32 5
  store ptr %172, ptr %180, align 8, !tbaa !131
  %181 = getelementptr inbounds %struct.EdgeHalf, ptr %175, i64 0, i32 6
  store ptr %172, ptr %181, align 8, !tbaa !132
  br label %200

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  %184 = load ptr, ptr %183, align 8, !tbaa !131
  call fastcc void @adjust_bound_vert(ptr noundef %184, ptr noundef nonnull %5) #25
  br label %200

185:                                              ; preds = %158
  %186 = load ptr, ptr %1, align 8, !tbaa !80
  %187 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !95
  call fastcc void @offset_meet(ptr noundef nonnull %139, ptr noundef nonnull %132, ptr noundef %186, ptr noundef %188, ptr noundef nonnull %5) #25
  br i1 %129, label %197, label %189

189:                                              ; preds = %185
  %190 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %191 = load ptr, ptr %138, align 8, !tbaa !113
  %192 = getelementptr inbounds %struct.BoundVert, ptr %190, i64 0, i32 3
  store ptr %191, ptr %192, align 8, !tbaa !130
  %193 = getelementptr inbounds %struct.BoundVert, ptr %190, i64 0, i32 5
  store ptr %132, ptr %193, align 8, !tbaa !125
  %194 = getelementptr inbounds %struct.BoundVert, ptr %190, i64 0, i32 4
  store ptr %132, ptr %194, align 8, !tbaa !129
  %195 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  store ptr %190, ptr %195, align 8, !tbaa !131
  %196 = getelementptr inbounds %struct.EdgeHalf, ptr %191, i64 0, i32 5
  store ptr %190, ptr %196, align 8, !tbaa !131
  br label %200

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  %199 = load ptr, ptr %198, align 8, !tbaa !131
  call fastcc void @adjust_bound_vert(ptr noundef %199, ptr noundef nonnull %5) #25
  br label %200

200:                                              ; preds = %182, %171, %197, %189, %147, %155
  %201 = phi ptr [ %148, %147 ], [ %157, %155 ], [ %172, %171 ], [ %184, %182 ], [ %190, %189 ], [ %199, %197 ]
  %202 = load ptr, ptr %1, align 8, !tbaa !80
  %203 = getelementptr inbounds %struct.BMVert, ptr %202, i64 0, i32 2
  %204 = getelementptr inbounds %struct.BoundVert, ptr %201, i64 0, i32 2, i32 1
  %205 = call fastcc float @len_v3v3(ptr noundef nonnull %203, ptr noundef nonnull %204) #25
  br label %240

206:                                              ; preds = %131
  %207 = load ptr, ptr %132, align 8, !tbaa !112
  %208 = getelementptr inbounds %struct.EdgeHalf, ptr %207, i64 0, i32 12
  %209 = load i8, ptr %208, align 4, !tbaa !97
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %240

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !113
  %214 = getelementptr inbounds %struct.EdgeHalf, ptr %213, i64 0, i32 12
  %215 = load i8, ptr %214, align 4, !tbaa !97
  %216 = icmp eq i8 %215, 0
  %217 = load ptr, ptr %1, align 8, !tbaa !80
  br i1 %216, label %231, label %218

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !95
  call fastcc void @offset_meet(ptr noundef nonnull %213, ptr noundef nonnull %132, ptr noundef %217, ptr noundef %220, ptr noundef nonnull %5) #25
  br i1 %129, label %228, label %221

221:                                              ; preds = %218
  %222 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %223 = load ptr, ptr %212, align 8, !tbaa !113
  %224 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 3
  store ptr %223, ptr %224, align 8, !tbaa !130
  %225 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 4
  store ptr %132, ptr %225, align 8, !tbaa !129
  %226 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  store ptr %222, ptr %226, align 8, !tbaa !131
  %227 = getelementptr inbounds %struct.EdgeHalf, ptr %223, i64 0, i32 6
  store ptr %222, ptr %227, align 8, !tbaa !132
  br label %240

228:                                              ; preds = %218
  %229 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !131
  call fastcc void @adjust_bound_vert(ptr noundef %230, ptr noundef nonnull %5) #25
  br label %240

231:                                              ; preds = %211
  call fastcc void @slide_dist(ptr noundef nonnull %132, ptr noundef %217, float noundef %133, ptr noundef nonnull %5) #25
  br i1 %129, label %237, label %232

232:                                              ; preds = %231
  %233 = call fastcc ptr @add_new_bound_vert(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #25
  %234 = getelementptr inbounds %struct.BoundVert, ptr %233, i64 0, i32 4
  store ptr %132, ptr %234, align 8, !tbaa !129
  %235 = getelementptr inbounds %struct.BoundVert, ptr %233, i64 0, i32 3
  store ptr %132, ptr %235, align 8, !tbaa !130
  %236 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  store ptr %233, ptr %236, align 8, !tbaa !131
  br label %240

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.EdgeHalf, ptr %132, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !131
  call fastcc void @adjust_bound_vert(ptr noundef %239, ptr noundef nonnull %5) #25
  br label %240

240:                                              ; preds = %200, %228, %221, %237, %232, %206
  %241 = phi float [ %205, %200 ], [ %133, %206 ], [ %133, %221 ], [ %133, %228 ], [ %133, %232 ], [ %133, %237 ]
  %242 = load ptr, ptr %132, align 8, !tbaa !112
  %243 = icmp eq ptr %242, %48
  br i1 %243, label %244, label %131, !llvm.loop !136

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !134
  br label %247

247:                                              ; preds = %247, %244
  %248 = phi ptr [ %246, %244 ], [ %249, %247 ]
  call fastcc void @set_profile_params(ptr noundef %0, ptr noundef %248) #25
  call fastcc void @calculate_profile(ptr noundef %0, ptr noundef %248) #25
  %249 = load ptr, ptr %248, align 8, !tbaa !137
  %250 = load ptr, ptr %245, align 8, !tbaa !134
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %252, label %247, !llvm.loop !138

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !83
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = load i32, ptr %49, align 8, !tbaa !82
  %258 = icmp sgt i32 %257, 2
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.BoundVert, ptr %249, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !130
  %262 = load ptr, ptr %249, align 8, !tbaa !137
  %263 = getelementptr inbounds %struct.BoundVert, ptr %262, i64 0, i32 4
  %264 = load ptr, ptr %263, align 8, !tbaa !129
  call fastcc void @move_profile_plane(ptr noundef nonnull %249, ptr noundef %261, ptr noundef %264) #25
  call fastcc void @calculate_profile(ptr noundef %0, ptr noundef nonnull %249) #25
  br label %265

265:                                              ; preds = %259, %256, %252
  br i1 %129, label %307, label %266

266:                                              ; preds = %265
  call fastcc void @set_bound_vert_seams(ptr noundef nonnull %1) #25
  %267 = load i8, ptr %10, align 8, !tbaa !45
  %268 = icmp eq i8 %267, 0
  %269 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 2
  %270 = load i32, ptr %269, align 8, !tbaa !139
  %271 = icmp eq i32 %270, 2
  br i1 %268, label %282, label %272

272:                                              ; preds = %266
  br i1 %271, label %273, label %275

273:                                              ; preds = %272
  %274 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 4
  store i32 0, ptr %274, align 8, !tbaa !133
  br label %307

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %277 = load i32, ptr %276, align 8, !tbaa !43
  %278 = icmp sgt i32 %277, 1
  %279 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 4
  br i1 %278, label %280, label %281

280:                                              ; preds = %275
  store i32 2, ptr %279, align 8, !tbaa !133
  br label %307

281:                                              ; preds = %275
  store i32 1, ptr %279, align 8, !tbaa !133
  br label %307

282:                                              ; preds = %266
  br i1 %271, label %283, label %288

283:                                              ; preds = %282
  %284 = load i32, ptr %49, align 8, !tbaa !82
  %285 = icmp eq i32 %284, 3
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 4
  store i32 0, ptr %287, align 8, !tbaa !133
  br label %307

288:                                              ; preds = %283, %282
  %289 = load i32, ptr %253, align 4, !tbaa !83
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 4
  store i32 4, ptr %292, align 8, !tbaa !133
  br label %307

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.EdgeHalf, ptr %48, i64 0, i32 7
  %295 = load i32, ptr %294, align 8, !tbaa !98
  %296 = icmp eq i32 %295, 1
  %297 = icmp eq i32 %289, 1
  %298 = or i1 %297, %296
  br i1 %298, label %299, label %305

299:                                              ; preds = %293
  %300 = icmp eq i32 %270, 3
  %301 = and i1 %300, %297
  %302 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 4
  br i1 %301, label %303, label %304

303:                                              ; preds = %299
  store i32 3, ptr %302, align 8, !tbaa !133
  br label %307

304:                                              ; preds = %299
  store i32 1, ptr %302, align 8, !tbaa !133
  br label %307

305:                                              ; preds = %293
  %306 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 4
  store i32 2, ptr %306, align 8, !tbaa !133
  br label %307

307:                                              ; preds = %265, %286, %305, %304, %303, %291, %273, %281, %280, %118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = tail call ptr %3(ptr noundef %0) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_offsets(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !143 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %6) #24
  %7 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #25, !range !76
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1, %9
  %10 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %5) #25
  store ptr %10, ptr %2, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.BevVert, ptr %10, i64 0, i32 6
  store i8 0, ptr %11, align 1, !tbaa !121
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #24
  %12 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #25, !range !76
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %9, label %14, !llvm.loop !144

14:                                               ; preds = %9, %1
  %15 = call ptr @BLI_gsqueue_new(i64 noundef 8) #24
  br label %16

16:                                               ; preds = %47, %14
  store ptr null, ptr %3, align 8, !tbaa !107
  %17 = load ptr, ptr %0, align 8, !tbaa !51
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %17) #24
  %18 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #25, !range !76
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16, %37
  %21 = phi i32 [ %38, %37 ], [ -1, %16 ]
  %22 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %5) #25
  store ptr %22, ptr %2, align 8, !tbaa !107
  %23 = getelementptr inbounds %struct.BevVert, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !121
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = call fastcc zeroext i8 @any_edge_half_offset_changed(ptr noundef nonnull %22) #25, !range !76
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %22, align 8, !tbaa !80
  %31 = call fastcc i32 @_bm_elem_index_get(ptr noundef %30) #25
  %32 = load ptr, ptr %3, align 8, !tbaa !107
  %33 = icmp eq ptr %32, null
  %34 = icmp slt i32 %31, %21
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store ptr %22, ptr %3, align 8, !tbaa !107
  br label %37

37:                                               ; preds = %29, %20, %26, %36
  %38 = phi i32 [ %21, %20 ], [ %31, %36 ], [ %21, %26 ], [ %21, %29 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #24
  %39 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #25, !range !76
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %20, label %41, !llvm.loop !145

41:                                               ; preds = %37, %16
  %42 = load ptr, ptr %3, align 8, !tbaa !107
  %43 = icmp eq ptr %42, null
  br i1 %43, label %76, label %44

44:                                               ; preds = %41
  call void @BLI_gsqueue_push(ptr noundef %15, ptr noundef nonnull %3) #24
  %45 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %15) #24
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %73, %44
  br label %16

48:                                               ; preds = %44, %73
  call void @BLI_gsqueue_pop(ptr noundef %15, ptr noundef nonnull %2) #24
  %49 = load ptr, ptr %2, align 8, !tbaa !107
  %50 = getelementptr inbounds %struct.BevVert, ptr %49, i64 0, i32 6
  %51 = load i8, ptr %50, align 1, !tbaa !121
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  store i8 1, ptr %50, align 1, !tbaa !121
  call fastcc void @build_boundary(ptr noundef nonnull %0, ptr noundef nonnull %49, i8 noundef zeroext 0) #25
  %54 = load ptr, ptr %2, align 8, !tbaa !107
  %55 = getelementptr inbounds %struct.BevVert, ptr %54, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !86
  br label %57

57:                                               ; preds = %70, %53
  %58 = phi ptr [ %56, %53 ], [ %71, %70 ]
  %59 = call fastcc ptr @find_other_end_edge_half(ptr noundef nonnull %0, ptr noundef %58, ptr noundef nonnull %4) #25
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8, !tbaa !107
  %63 = getelementptr inbounds %struct.BevVert, ptr %62, i64 0, i32 6
  %64 = load i8, ptr %63, align 1, !tbaa !121
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = call fastcc zeroext i8 @edge_half_offset_changed(ptr noundef %58) #25, !range !76
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @BLI_gsqueue_push(ptr noundef %15, ptr noundef nonnull %4) #24
  br label %70

70:                                               ; preds = %57, %61, %66, %69
  %71 = load ptr, ptr %58, align 8, !tbaa !112
  %72 = icmp eq ptr %71, %56
  br i1 %72, label %73, label %57, !llvm.loop !146

73:                                               ; preds = %70, %48
  %74 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %15) #24
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %48, label %47, !llvm.loop !147

76:                                               ; preds = %41
  call void @BLI_gsqueue_free(ptr noundef %15) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bevvert(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !148 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = tail call ptr @BLI_ghash_lookup(ptr noundef %3, ptr noundef %1) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_vmesh(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !149 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  %9 = getelementptr inbounds %struct.VMesh, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !139
  %11 = getelementptr inbounds %struct.VMesh, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = sdiv i32 %12, 2
  %14 = add nsw i32 %13, 1
  %15 = add nsw i32 %12, 1
  %16 = mul i32 %15, %10
  %17 = mul i32 %16, %14
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 24
  %20 = tail call ptr @BLI_memarena_alloc(ptr noundef %6, i64 noundef %19) #24
  store ptr %20, ptr %8, align 8, !tbaa !150
  %21 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !83
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, ptr %9, align 8, !tbaa !139
  %26 = icmp eq i32 %25, 2
  br label %27

27:                                               ; preds = %24, %3
  %28 = phi i1 [ false, %3 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.VMesh, ptr %8, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !134
  br label %31

31:                                               ; preds = %51, %27
  %32 = phi ptr [ null, %27 ], [ %52, %51 ]
  %33 = phi ptr [ null, %27 ], [ %53, %51 ]
  %34 = phi ptr [ %30, %27 ], [ %54, %51 ]
  %35 = getelementptr inbounds %struct.BoundVert, ptr %34, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !151
  %37 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %8, i32 noundef %36, i32 noundef 0, i32 noundef 0) #25
  %38 = getelementptr inbounds %struct.NewVert, ptr %37, i64 0, i32 1
  %39 = getelementptr inbounds %struct.BoundVert, ptr %34, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BoundVert, ptr %34, i64 0, i32 2, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %40) #25
  %41 = load ptr, ptr %2, align 8, !tbaa !80
  tail call fastcc void @create_mesh_bmvert(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %36, i32 noundef 0, i32 noundef 0, ptr noundef %41) #25
  %42 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %8, i32 noundef %36, i32 noundef 0, i32 noundef 0) #25
  %43 = load ptr, ptr %42, align 8, !tbaa !152
  store ptr %43, ptr %39, align 8, !tbaa !153
  br i1 %28, label %44, label %51

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.BoundVert, ptr %34, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !125
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = icmp eq ptr %33, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call fastcc void @move_weld_profile_planes(ptr noundef nonnull %2, ptr noundef nonnull %33, ptr noundef nonnull %34) #25
  tail call fastcc void @calculate_profile(ptr noundef %0, ptr noundef nonnull %33) #25
  tail call fastcc void @calculate_profile(ptr noundef %0, ptr noundef nonnull %34) #25
  br label %51

51:                                               ; preds = %48, %31, %44, %50
  %52 = phi ptr [ %34, %50 ], [ %32, %44 ], [ %32, %31 ], [ %32, %48 ]
  %53 = phi ptr [ %33, %50 ], [ %33, %44 ], [ %33, %31 ], [ %34, %48 ]
  %54 = load ptr, ptr %34, align 8, !tbaa !137
  %55 = load ptr, ptr %29, align 8, !tbaa !134
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %31, !llvm.loop !154

57:                                               ; preds = %51
  %58 = icmp sgt i32 %12, 1
  %59 = getelementptr inbounds %struct.VMesh, ptr %8, i64 0, i32 4
  br label %60

60:                                               ; preds = %57, %85
  %61 = phi ptr [ %86, %85 ], [ %54, %57 ]
  %62 = getelementptr inbounds %struct.BoundVert, ptr %61, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !151
  %64 = load ptr, ptr %61, align 8, !tbaa !137
  %65 = getelementptr inbounds %struct.BoundVert, ptr %64, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !151
  tail call fastcc void @copy_mesh_vert(ptr noundef nonnull %8, i32 noundef %63, i32 noundef %12, i32 noundef %66, i32 noundef 0) #25
  br i1 %58, label %67, label %85

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.BoundVert, ptr %61, i64 0, i32 5
  %69 = getelementptr inbounds %struct.BoundVert, ptr %61, i64 0, i32 7
  br label %70

70:                                               ; preds = %67, %82
  %71 = phi i32 [ 1, %67 ], [ %83, %82 ]
  %72 = load ptr, ptr %68, align 8, !tbaa !125
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %59, align 8, !tbaa !133
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  call fastcc void @get_profile_point(ptr noundef %0, ptr noundef nonnull %69, i32 noundef %71, i32 noundef %12, ptr noundef nonnull %4) #25
  %78 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %8, i32 noundef %63, i32 noundef 0, i32 noundef %71) #25
  %79 = getelementptr inbounds %struct.NewVert, ptr %78, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %79, ptr noundef nonnull %4) #25
  br i1 %28, label %82, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %2, align 8, !tbaa !80
  tail call fastcc void @create_mesh_bmvert(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %63, i32 noundef 0, i32 noundef %71, ptr noundef %81) #25
  br label %82

82:                                               ; preds = %70, %74, %80, %77
  %83 = add nuw nsw i32 %71, 1
  %84 = icmp eq i32 %83, %12
  br i1 %84, label %85, label %70, !llvm.loop !155

85:                                               ; preds = %82, %60
  %86 = load ptr, ptr %61, align 8, !tbaa !137
  %87 = load ptr, ptr %29, align 8, !tbaa !134
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %60, !llvm.loop !156

89:                                               ; preds = %85
  br i1 %28, label %90, label %136

90:                                               ; preds = %89
  store i32 0, ptr %59, align 8, !tbaa !133
  br i1 %58, label %91, label %138

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.BoundVert, ptr %53, i64 0, i32 6
  %93 = getelementptr inbounds %struct.BoundVert, ptr %52, i64 0, i32 6
  %94 = getelementptr inbounds %struct.BoundVert, ptr %53, i64 0, i32 7
  %95 = getelementptr inbounds %struct.BoundVert, ptr %52, i64 0, i32 7
  br label %100

96:                                               ; preds = %121
  br i1 %58, label %97, label %136

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.BoundVert, ptr %52, i64 0, i32 6
  %99 = getelementptr inbounds %struct.BoundVert, ptr %53, i64 0, i32 6
  br label %129

100:                                              ; preds = %91, %121
  %101 = phi i32 [ 1, %91 ], [ %127, %121 ]
  %102 = load i32, ptr %92, align 8, !tbaa !151
  %103 = call fastcc ptr @mesh_vert(ptr noundef nonnull %8, i32 noundef %102, i32 noundef 0, i32 noundef %101) #25
  %104 = getelementptr inbounds %struct.NewVert, ptr %103, i64 0, i32 1
  %105 = load i32, ptr %93, align 8, !tbaa !151
  %106 = sub nsw i32 %12, %101
  %107 = call fastcc ptr @mesh_vert(ptr noundef nonnull %8, i32 noundef %105, i32 noundef 0, i32 noundef %106) #25
  %108 = getelementptr inbounds %struct.NewVert, ptr %107, i64 0, i32 1
  %109 = load float, ptr %94, align 8, !tbaa !157
  %110 = fcmp oeq float %109, 1.000000e+00
  %111 = load float, ptr %95, align 8, !tbaa !157
  %112 = fcmp une float %111, 1.000000e+00
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %108) #25
  br label %121

115:                                              ; preds = %100
  %116 = fcmp oeq float %111, 1.000000e+00
  %117 = fcmp une float %109, 1.000000e+00
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %104) #25
  br label %121

120:                                              ; preds = %115
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %104, ptr noundef nonnull %108) #24
  br label %121

121:                                              ; preds = %119, %120, %114
  %122 = load i32, ptr %92, align 8, !tbaa !151
  %123 = call fastcc ptr @mesh_vert(ptr noundef nonnull %8, i32 noundef %122, i32 noundef 0, i32 noundef %101) #25
  %124 = getelementptr inbounds %struct.NewVert, ptr %123, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %124, ptr noundef nonnull %4) #25
  %125 = load i32, ptr %92, align 8, !tbaa !151
  %126 = load ptr, ptr %2, align 8, !tbaa !80
  call fastcc void @create_mesh_bmvert(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %125, i32 noundef 0, i32 noundef %101, ptr noundef %126) #25
  %127 = add nuw nsw i32 %101, 1
  %128 = icmp eq i32 %127, %12
  br i1 %128, label %96, label %100, !llvm.loop !158

129:                                              ; preds = %97, %129
  %130 = phi i32 [ 1, %97 ], [ %134, %129 ]
  %131 = load i32, ptr %98, align 8, !tbaa !151
  %132 = sub nsw i32 %12, %130
  %133 = load i32, ptr %99, align 8, !tbaa !151
  call fastcc void @copy_mesh_vert(ptr noundef nonnull %8, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %130) #25
  %134 = add nuw nsw i32 %130, 1
  %135 = icmp eq i32 %134, %12
  br i1 %135, label %136, label %129, !llvm.loop !159

136:                                              ; preds = %129, %96, %89
  %137 = load i32, ptr %59, align 8, !tbaa !133
  switch i32 %137, label %150 [
    i32 0, label %138
    i32 1, label %145
    i32 2, label %147
    i32 3, label %148
    i32 4, label %149
  ]

138:                                              ; preds = %90, %136
  %139 = icmp eq i32 %10, 2
  br i1 %139, label %140, label %150

140:                                              ; preds = %138
  %141 = load ptr, ptr %2, align 8, !tbaa !80
  %142 = call i32 @BM_vert_face_count(ptr noundef %141) #24
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  call fastcc void @bevel_build_one_wire(ptr noundef %1, ptr noundef nonnull %2) #25
  br label %150

145:                                              ; preds = %136
  %146 = call fastcc ptr @bevel_build_poly(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #25
  br label %150

147:                                              ; preds = %136
  call fastcc void @bevel_build_rings(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #25
  br label %150

148:                                              ; preds = %136
  call fastcc void @bevel_build_trifan(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #25
  br label %150

149:                                              ; preds = %136
  call fastcc void @bevel_build_quadstrip(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #25
  br label %150

150:                                              ; preds = %138, %140, %144, %136, %149, %148, %147, %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_build_edge_polygons(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !160 {
  %4 = getelementptr inbounds %struct.BevelParams, ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !50
  %6 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %2) #25, !range !76
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %120, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = tail call fastcc ptr @find_bevvert(ptr noundef nonnull %1, ptr noundef %10) #25
  %12 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  %14 = tail call fastcc ptr @find_bevvert(ptr noundef nonnull %1, ptr noundef %13) #25
  %15 = tail call fastcc ptr @find_edge_half(ptr noundef %11, ptr noundef %2) #25
  %16 = tail call fastcc ptr @find_edge_half(ptr noundef %14, ptr noundef %2) #25
  %17 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !131
  %21 = getelementptr inbounds %struct.BoundVert, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !132
  %25 = getelementptr inbounds %struct.BoundVert, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !153
  %27 = getelementptr inbounds %struct.EdgeHalf, ptr %16, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !132
  %29 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !153
  %31 = getelementptr inbounds %struct.EdgeHalf, ptr %16, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !131
  %33 = getelementptr inbounds %struct.BoundVert, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !153
  %35 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  %39 = getelementptr inbounds %struct.BoundVert, ptr %20, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !151
  %41 = getelementptr inbounds %struct.BoundVert, ptr %32, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !151
  %43 = getelementptr inbounds %struct.BevVert, ptr %11, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  %45 = getelementptr inbounds %struct.BevVert, ptr %14, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !87
  %47 = icmp eq i32 %18, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %8
  %49 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 14
  %50 = load i8, ptr %49, align 2, !tbaa !116
  tail call fastcc void @bev_create_quad_straddle(ptr noundef %0, ptr noundef %22, ptr noundef %30, ptr noundef %34, ptr noundef %26, ptr noundef %36, ptr noundef %38, i32 noundef %5, i8 noundef zeroext %50) #25
  br label %90

51:                                               ; preds = %8
  %52 = srem i32 %18, 2
  %53 = sdiv i32 %18, 2
  %54 = icmp slt i32 %18, 1
  br i1 %54, label %79, label %55

55:                                               ; preds = %51
  %56 = icmp ne i32 %52, 0
  %57 = add nuw nsw i32 %53, 1
  %58 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 14
  br label %59

59:                                               ; preds = %55, %76
  %60 = phi ptr [ %22, %55 ], [ %64, %76 ]
  %61 = phi ptr [ %30, %55 ], [ %67, %76 ]
  %62 = phi i32 [ 1, %55 ], [ %77, %76 ]
  %63 = tail call fastcc ptr @mesh_vert(ptr noundef %44, i32 noundef %40, i32 noundef 0, i32 noundef %62) #25
  %64 = load ptr, ptr %63, align 8, !tbaa !152
  %65 = sub nsw i32 %18, %62
  %66 = tail call fastcc ptr @mesh_vert(ptr noundef %46, i32 noundef %42, i32 noundef 0, i32 noundef %65) #25
  %67 = load ptr, ptr %66, align 8, !tbaa !152
  %68 = icmp eq i32 %62, %57
  %69 = select i1 %56, i1 %68, i1 false
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i8, ptr %58, align 2, !tbaa !116
  tail call fastcc void @bev_create_quad_straddle(ptr noundef %0, ptr noundef %60, ptr noundef %61, ptr noundef %67, ptr noundef %64, ptr noundef %36, ptr noundef %38, i32 noundef %5, i8 noundef zeroext %71) #25
  br label %76

72:                                               ; preds = %59
  %73 = icmp sgt i32 %62, %53
  %74 = select i1 %73, ptr %38, ptr %36
  %75 = tail call fastcc ptr @bev_create_quad_tri(ptr noundef %0, ptr noundef %60, ptr noundef %61, ptr noundef %67, ptr noundef %64, ptr noundef %74, i32 noundef %5, i8 noundef zeroext 1) #25
  br label %76

76:                                               ; preds = %72, %70
  %77 = add nuw i32 %62, 1
  %78 = icmp eq i32 %62, %18
  br i1 %78, label %79, label %59, !llvm.loop !162

79:                                               ; preds = %76, %51
  %80 = icmp eq i32 %52, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 14
  %83 = load i8, ptr %82, align 2, !tbaa !116
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = tail call fastcc ptr @mesh_vert(ptr noundef %44, i32 noundef %40, i32 noundef 0, i32 noundef %53) #25
  %87 = load ptr, ptr %86, align 8, !tbaa !152
  tail call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %87) #25
  %88 = tail call fastcc ptr @mesh_vert(ptr noundef %46, i32 noundef %42, i32 noundef 0, i32 noundef %53) #25
  %89 = load ptr, ptr %88, align 8, !tbaa !152
  tail call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %89) #25
  br label %90

90:                                               ; preds = %79, %81, %85, %48
  %91 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 14
  %92 = load i8, ptr %91, align 2, !tbaa !116
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load ptr, ptr %43, align 8, !tbaa !87
  %96 = getelementptr inbounds %struct.VMesh, ptr %95, i64 0, i32 4
  %97 = load i32, ptr %96, align 8, !tbaa !133
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  tail call fastcc void @bev_merge_end_uvs(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %15) #25
  br label %100

100:                                              ; preds = %99, %94, %90
  %101 = getelementptr inbounds %struct.EdgeHalf, ptr %16, i64 0, i32 14
  %102 = load i8, ptr %101, align 2, !tbaa !116
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load ptr, ptr %45, align 8, !tbaa !87
  %106 = getelementptr inbounds %struct.VMesh, ptr %105, i64 0, i32 4
  %107 = load i32, ptr %106, align 8, !tbaa !133
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  tail call fastcc void @bev_merge_end_uvs(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %16) #25
  br label %110

110:                                              ; preds = %109, %104, %100
  %111 = tail call ptr @BM_edge_exists(ptr noundef %22, ptr noundef %30) #24
  %112 = tail call ptr @BM_edge_exists(ptr noundef %34, ptr noundef %26) #24
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %2, ptr noundef %111) #24
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %2, ptr noundef %112) #24
  %113 = tail call fastcc zeroext i8 @bevvert_is_weld_cross(ptr noundef %11) #25, !range !76
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  tail call fastcc void @weld_cross_attrs_copy(ptr noundef %0, ptr noundef %11, ptr noundef %44, i32 noundef %40, ptr noundef nonnull %15) #25
  br label %116

116:                                              ; preds = %115, %110
  %117 = tail call fastcc zeroext i8 @bevvert_is_weld_cross(ptr noundef %14) #25, !range !76
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  tail call fastcc void @weld_cross_attrs_copy(ptr noundef %0, ptr noundef %14, ptr noundef %46, i32 noundef %42, ptr noundef nonnull %16) #25
  br label %120

120:                                              ; preds = %116, %119, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_rebuild_existing_polygons(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !163 {
  %4 = alloca [16 x ptr], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %6 = call ptr @BM_iter_as_arrayN(ptr noundef %0, i8 noundef zeroext 5, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 16) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %5, align 4, !tbaa !108
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8, %18
  %12 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %13 = getelementptr inbounds ptr, ptr %6, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = call fastcc zeroext i8 @bev_rebuild_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %14) #25, !range !76
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  call void @BM_face_kill(ptr noundef %0, ptr noundef %14) #24
  br label %18

18:                                               ; preds = %17, %11
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %5, align 4, !tbaa !108
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !164

23:                                               ; preds = %18, %8
  %24 = icmp eq ptr %6, %4
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  call void %26(ptr noundef nonnull %6) #24
  br label %27

27:                                               ; preds = %23, %25, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_reattach_wires(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !165 {
  %4 = tail call fastcc ptr @find_bevvert(ptr noundef %1, ptr noundef %2) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %92, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BevVert, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !84
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %92, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BevVert, ptr %4, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp ne ptr %12, null
  %14 = icmp sgt i32 %8, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.BevVert, ptr %4, i64 0, i32 8
  br label %18

18:                                               ; preds = %16, %87
  %19 = phi i64 [ 0, %16 ], [ %88, %87 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !118
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !107
  %23 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %22, ptr noundef %2) #25
  %24 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %23, i8 noundef zeroext 16) #25, !range !53
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = tail call fastcc ptr @find_bevvert(ptr noundef %1, ptr noundef %23) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %92, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BevVert, ptr %27, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = icmp eq ptr %31, null
  br i1 %32, label %92, label %33

33:                                               ; preds = %29, %18
  %34 = phi ptr [ %27, %29 ], [ null, %18 ]
  %35 = load ptr, ptr %11, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.VMesh, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !134
  %38 = icmp eq ptr %34, null
  %39 = getelementptr inbounds %struct.BevVert, ptr %34, i64 0, i32 9
  %40 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  br label %41

41:                                               ; preds = %77, %33
  %42 = phi ptr [ null, %33 ], [ %78, %77 ]
  %43 = phi ptr [ null, %33 ], [ %79, %77 ]
  %44 = phi ptr [ %37, %33 ], [ %81, %77 ]
  %45 = phi float [ 0x47EFFFFFE0000000, %33 ], [ %80, %77 ]
  br i1 %38, label %70, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %39, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.VMesh, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !134
  %50 = getelementptr inbounds %struct.BoundVert, ptr %44, i64 0, i32 2, i32 1
  %51 = getelementptr inbounds %struct.BoundVert, ptr %44, i64 0, i32 2
  br label %52

52:                                               ; preds = %64, %46
  %53 = phi ptr [ %42, %46 ], [ %65, %64 ]
  %54 = phi ptr [ %43, %46 ], [ %66, %64 ]
  %55 = phi ptr [ %49, %46 ], [ %68, %64 ]
  %56 = phi float [ %45, %46 ], [ %67, %64 ]
  %57 = getelementptr inbounds %struct.BoundVert, ptr %55, i64 0, i32 2, i32 1
  %58 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %57, ptr noundef nonnull %50) #25
  %59 = fcmp olt float %58, %56
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.BoundVert, ptr %55, i64 0, i32 2
  %62 = load ptr, ptr %51, align 8, !tbaa !153
  %63 = load ptr, ptr %61, align 8, !tbaa !153
  br label %64

64:                                               ; preds = %52, %60
  %65 = phi ptr [ %63, %60 ], [ %53, %52 ]
  %66 = phi ptr [ %62, %60 ], [ %54, %52 ]
  %67 = phi float [ %58, %60 ], [ %56, %52 ]
  %68 = load ptr, ptr %55, align 8, !tbaa !137
  %69 = icmp eq ptr %68, %49
  br i1 %69, label %77, label %52, !llvm.loop !166

70:                                               ; preds = %41
  %71 = getelementptr inbounds %struct.BoundVert, ptr %44, i64 0, i32 2, i32 1
  %72 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %40, ptr noundef nonnull %71) #25
  %73 = fcmp olt float %72, %45
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.BoundVert, ptr %44, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !153
  br label %77

77:                                               ; preds = %64, %74, %70
  %78 = phi ptr [ %23, %74 ], [ %42, %70 ], [ %65, %64 ]
  %79 = phi ptr [ %76, %74 ], [ %43, %70 ], [ %66, %64 ]
  %80 = phi float [ %72, %74 ], [ %45, %70 ], [ %67, %64 ]
  %81 = load ptr, ptr %44, align 8, !tbaa !137
  %82 = icmp eq ptr %81, %37
  br i1 %82, label %83, label %41, !llvm.loop !167

83:                                               ; preds = %77
  %84 = icmp eq ptr %79, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %79, ptr noundef %78, ptr noundef %22, i32 noundef 2) #24
  br label %87

87:                                               ; preds = %83, %85
  %88 = add nuw nsw i64 %19, 1
  %89 = load i32, ptr %7, align 8, !tbaa !84
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %18, label %92, !llvm.loop !168

92:                                               ; preds = %29, %26, %87, %3, %6, %10
  ret void
}

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal fastcc void @find_even_superellipse_params(i32 noundef %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !PGOFuncName !169 {
  %4 = fcmp oeq float %1, 2.000000e+00
  %5 = fcmp oeq float %1, 1.000000e+00
  %6 = or i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = and i32 %0, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %62

10:                                               ; preds = %7
  %11 = fcmp oeq float %1, 0.000000e+00
  %12 = fcmp oeq float %1, 4.000000e+00
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10, %3
  %15 = icmp slt i32 %0, 0
  br i1 %15, label %177, label %16

16:                                               ; preds = %14
  %17 = add nuw i32 %0, 1
  %18 = zext i32 %17 to i64
  %19 = sitofp i32 %0 to float
  %20 = add nuw nsw i64 %18, 3
  %21 = and i64 %20, 8589934588
  %22 = add nsw i64 %18, -1
  %23 = insertelement <4 x i64> poison, i64 %22, i64 0
  %24 = shufflevector <4 x i64> %23, <4 x i64> poison, <4 x i32> zeroinitializer
  %25 = insertelement <4 x float> poison, float %19, i64 0
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  br label %27

27:                                               ; preds = %57, %16
  %28 = phi i64 [ 0, %16 ], [ %58, %57 ]
  %29 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %16 ], [ %59, %57 ]
  %30 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %16 ], [ %60, %57 ]
  %31 = icmp ule <4 x i64> %29, %24
  %32 = sitofp <4 x i32> %30 to <4 x float>
  %33 = fmul <4 x float> %32, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %34 = fdiv <4 x float> %33, %26
  %35 = extractelement <4 x i1> %31, i64 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = getelementptr inbounds float, ptr %2, i64 %28
  %38 = extractelement <4 x float> %34, i64 0
  store float %38, ptr %37, align 4, !tbaa !109
  br label %39

39:                                               ; preds = %36, %27
  %40 = extractelement <4 x i1> %31, i64 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = or disjoint i64 %28, 1
  %43 = getelementptr inbounds float, ptr %2, i64 %42
  %44 = extractelement <4 x float> %34, i64 1
  store float %44, ptr %43, align 4, !tbaa !109
  br label %45

45:                                               ; preds = %41, %39
  %46 = extractelement <4 x i1> %31, i64 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = or disjoint i64 %28, 2
  %49 = getelementptr inbounds float, ptr %2, i64 %48
  %50 = extractelement <4 x float> %34, i64 2
  store float %50, ptr %49, align 4, !tbaa !109
  br label %51

51:                                               ; preds = %47, %45
  %52 = extractelement <4 x i1> %31, i64 3
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = or disjoint i64 %28, 3
  %55 = getelementptr inbounds float, ptr %2, i64 %54
  %56 = extractelement <4 x float> %34, i64 3
  store float %56, ptr %55, align 4, !tbaa !109
  br label %57

57:                                               ; preds = %53, %51
  %58 = add i64 %28, 4
  %59 = add <4 x i64> %29, <i64 4, i64 4, i64 4, i64 4>
  %60 = add <4 x i32> %30, <i32 4, i32 4, i32 4, i32 4>
  %61 = icmp eq i64 %58, %21
  br i1 %61, label %177, label %27, !llvm.loop !170

62:                                               ; preds = %7, %10
  %63 = fcmp oeq float %1, 0.000000e+00
  %64 = fcmp oeq float %1, 4.000000e+00
  %65 = or i1 %63, %64
  %66 = icmp sgt i32 %0, 0
  %67 = and i1 %65, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %62
  %69 = lshr i32 %0, 1
  %70 = sitofp i32 %69 to float
  %71 = tail call float @llvm.fmuladd.f32(float %70, float 2.000000e+00, float 0xBFF6A09E60000000)
  %72 = fmul float %70, 2.000000e+00
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %70, float -1.000000e+00)
  %74 = fdiv float %71, %73
  %75 = zext nneg i32 %0 to i64
  %76 = add nuw nsw i64 %75, 3
  %77 = and i64 %76, 4294967292
  %78 = add nsw i64 %75, -1
  %79 = insertelement <4 x i64> poison, i64 %78, i64 0
  %80 = shufflevector <4 x i64> %79, <4 x i64> poison, <4 x i32> zeroinitializer
  %81 = insertelement <4 x float> poison, float %74, i64 0
  %82 = shufflevector <4 x float> %81, <4 x float> poison, <4 x i32> zeroinitializer
  br label %83

83:                                               ; preds = %112, %68
  %84 = phi i64 [ 0, %68 ], [ %113, %112 ]
  %85 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %68 ], [ %114, %112 ]
  %86 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %68 ], [ %115, %112 ]
  %87 = icmp ule <4 x i64> %85, %80
  %88 = sitofp <4 x i32> %86 to <4 x float>
  %89 = fmul <4 x float> %82, %88
  %90 = extractelement <4 x i1> %87, i64 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = getelementptr inbounds float, ptr %2, i64 %84
  %93 = extractelement <4 x float> %89, i64 0
  store float %93, ptr %92, align 4, !tbaa !109
  br label %94

94:                                               ; preds = %91, %83
  %95 = extractelement <4 x i1> %87, i64 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = or disjoint i64 %84, 1
  %98 = getelementptr inbounds float, ptr %2, i64 %97
  %99 = extractelement <4 x float> %89, i64 1
  store float %99, ptr %98, align 4, !tbaa !109
  br label %100

100:                                              ; preds = %96, %94
  %101 = extractelement <4 x i1> %87, i64 2
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = or disjoint i64 %84, 2
  %104 = getelementptr inbounds float, ptr %2, i64 %103
  %105 = extractelement <4 x float> %89, i64 2
  store float %105, ptr %104, align 4, !tbaa !109
  br label %106

106:                                              ; preds = %102, %100
  %107 = extractelement <4 x i1> %87, i64 3
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = or disjoint i64 %84, 3
  %110 = getelementptr inbounds float, ptr %2, i64 %109
  %111 = extractelement <4 x float> %89, i64 3
  store float %111, ptr %110, align 4, !tbaa !109
  br label %112

112:                                              ; preds = %108, %106
  %113 = add i64 %84, 4
  %114 = add <4 x i64> %85, <i64 4, i64 4, i64 4, i64 4>
  %115 = add <4 x i32> %86, <i32 4, i32 4, i32 4, i32 4>
  %116 = icmp eq i64 %113, %77
  br i1 %116, label %117, label %83, !llvm.loop !173

117:                                              ; preds = %112, %62
  %118 = mul nsw i32 %0, %0
  %119 = sitofp i32 %118 to float
  %120 = fdiv float 2.000000e+00, %119
  %121 = fmul float %120, 2.000000e+00
  %122 = add nsw i32 %0, -1
  %123 = icmp sgt i32 %0, 1
  %124 = fsub float %121, %120
  %125 = tail call float @llvm.fabs.f32(float %124)
  %126 = fcmp ogt float %125, 0x3EB0C6F7A0000000
  br i1 %126, label %131, label %162

127:                                              ; preds = %157
  %128 = fsub float %158, %159
  %129 = tail call float @llvm.fabs.f32(float %128)
  %130 = fcmp ogt float %129, 0x3EB0C6F7A0000000
  br i1 %130, label %131, label %162, !llvm.loop !174

131:                                              ; preds = %117, %127
  %132 = phi i32 [ %160, %127 ], [ 0, %117 ]
  %133 = phi float [ %158, %127 ], [ %121, %117 ]
  %134 = phi float [ %159, %127 ], [ %120, %117 ]
  %135 = fadd float %133, %134
  %136 = fmul float %135, 5.000000e-01
  br i1 %123, label %137, label %147

137:                                              ; preds = %131, %137
  %138 = phi float [ %140, %137 ], [ 0.000000e+00, %131 ]
  %139 = phi i32 [ %142, %137 ], [ 0, %131 ]
  %140 = tail call fastcc float @find_superellipse_chord_u(float noundef %138, float noundef %136, float noundef %1) #25
  %141 = fcmp une float %140, -1.000000e+00
  %142 = add nuw nsw i32 %139, 1
  %143 = icmp slt i32 %142, %122
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %137, label %145, !llvm.loop !175

145:                                              ; preds = %137
  %146 = fcmp oeq float %140, -1.000000e+00
  br i1 %146, label %157, label %147

147:                                              ; preds = %131, %145
  %148 = phi float [ %140, %145 ], [ 0.000000e+00, %131 ]
  %149 = tail call fastcc float @superellipse_chord_length_squared(float noundef %148, float noundef 2.000000e+00, float noundef %1) #25
  %150 = fsub float %149, %136
  %151 = tail call float @llvm.fabs.f32(float %150)
  %152 = fcmp ugt float %151, 0x3EB0C6F7A0000000
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = fcmp olt float %149, %136
  %155 = select i1 %154, float %136, float %133
  %156 = select i1 %154, float %134, float %136
  br label %157

157:                                              ; preds = %153, %145
  %158 = phi float [ %136, %145 ], [ %155, %153 ]
  %159 = phi float [ %134, %145 ], [ %156, %153 ]
  %160 = add nuw nsw i32 %132, 1
  %161 = icmp eq i32 %160, 40
  br i1 %161, label %162, label %127, !llvm.loop !174

162:                                              ; preds = %127, %147, %157, %117
  %163 = phi float [ undef, %117 ], [ %136, %157 ], [ %136, %147 ], [ %136, %127 ]
  %164 = icmp sgt i32 %0, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = zext nneg i32 %0 to i64
  br label %167

167:                                              ; preds = %165, %167
  %168 = phi i64 [ 0, %165 ], [ %172, %167 ]
  %169 = phi float [ 0.000000e+00, %165 ], [ %171, %167 ]
  %170 = getelementptr inbounds float, ptr %2, i64 %168
  store float %169, ptr %170, align 4, !tbaa !109
  %171 = tail call fastcc float @find_superellipse_chord_u(float noundef %169, float noundef %163, float noundef %1) #25
  %172 = add nuw nsw i64 %168, 1
  %173 = icmp eq i64 %172, %166
  br i1 %173, label %174, label %167, !llvm.loop !176

174:                                              ; preds = %167, %162
  %175 = sext i32 %0 to i64
  %176 = getelementptr inbounds float, ptr %2, i64 %175
  store float 2.000000e+00, ptr %176, align 4, !tbaa !109
  br label %177

177:                                              ; preds = %57, %14, %174
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @power_of_2_max_i(i32 noundef %0) unnamed_addr #6 !PGOFuncName !177 {
  %2 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #25, !range !178
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ %0, %1 ]
  %6 = add nsw i32 %5, -1
  %7 = and i32 %6, %5
  %8 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %7) #25, !range !178
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %4, label %10, !llvm.loop !179

10:                                               ; preds = %4
  %11 = shl nsw i32 %7, 1
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi i32 [ %11, %10 ], [ %0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal fastcc noundef float @find_superellipse_chord_u(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #5 !PGOFuncName !180 {
  %4 = fcmp oeq float %1, 0.000000e+00
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc float @superellipse_chord_length_squared(float noundef %0, float noundef 2.000000e+00, float noundef %2) #25
  %7 = fsub float %1, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ugt float %8, 0x3F1A36E2E0000000
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = fcmp ogt float %7, 0x3F1A36E2E0000000
  br i1 %11, label %28, label %12

12:                                               ; preds = %10, %21
  %13 = phi float [ %23, %21 ], [ 2.000000e+00, %10 ]
  %14 = phi float [ %24, %21 ], [ %0, %10 ]
  %15 = fadd float %13, %14
  %16 = fmul float %15, 5.000000e-01
  %17 = tail call fastcc float @superellipse_chord_length_squared(float noundef %0, float noundef %16, float noundef %2) #25
  %18 = fsub float %1, %17
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ugt float %19, 0x3F1A36E2E0000000
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = fcmp olt float %17, %1
  %23 = select i1 %22, float %13, float %16
  %24 = select i1 %22, float %16, float %14
  %25 = fsub float %23, %24
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ogt float %26, 0x3EB0C6F7A0000000
  br i1 %27, label %12, label %28, !llvm.loop !181

28:                                               ; preds = %21, %12, %10, %5, %3
  %29 = phi float [ %0, %3 ], [ 2.000000e+00, %5 ], [ -1.000000e+00, %10 ], [ %16, %12 ], [ %16, %21 ]
  ret float %29
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @superellipse_chord_length_squared(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #8 !PGOFuncName !182 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call fastcc void @superellipse_co(float noundef %0, float noundef %2, ptr noundef nonnull %4) #25
  call fastcc void @superellipse_co(float noundef %1, float noundef %2, ptr noundef nonnull %5) #25
  %6 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret float %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @superellipse_co(float noundef %0, float noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !PGOFuncName !183 {
  %4 = fcmp ugt float %0, 0.000000e+00
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !109
  br label %49

6:                                                ; preds = %3
  %7 = fcmp ult float %0, 2.000000e+00
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %2, align 4, !tbaa !109
  br label %49

9:                                                ; preds = %6
  %10 = fcmp oeq float %1, 1.000000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = fmul float %0, 5.000000e-01
  store float %12, ptr %2, align 4, !tbaa !109
  %13 = fsub float 1.000000e+00, %12
  %14 = getelementptr inbounds float, ptr %2, i64 1
  store float %13, ptr %14, align 4, !tbaa !109
  br label %49

15:                                               ; preds = %9
  %16 = fcmp oeq float %1, 0.000000e+00
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = fcmp olt float %0, 1.000000e+00
  %19 = getelementptr inbounds float, ptr %2, i64 1
  br i1 %18, label %20, label %22

20:                                               ; preds = %17
  store float 0.000000e+00, ptr %2, align 4, !tbaa !109
  %21 = fsub float 1.000000e+00, %0
  store float %21, ptr %19, align 4, !tbaa !109
  br label %49

22:                                               ; preds = %17
  %23 = fadd float %0, -1.000000e+00
  store float %23, ptr %2, align 4, !tbaa !109
  store float 0.000000e+00, ptr %19, align 4, !tbaa !109
  br label %49

24:                                               ; preds = %15
  %25 = fcmp oeq float %1, 4.000000e+00
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = fcmp olt float %0, 1.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  store float %0, ptr %2, align 4, !tbaa !109
  %29 = getelementptr inbounds float, ptr %2, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !109
  br label %49

30:                                               ; preds = %26
  store float 1.000000e+00, ptr %2, align 4, !tbaa !109
  %31 = fsub float 2.000000e+00, %0
  %32 = getelementptr inbounds float, ptr %2, i64 1
  store float %31, ptr %32, align 4, !tbaa !109
  br label %49

33:                                               ; preds = %24
  %34 = fmul float %0, 0x400921FB60000000
  %35 = fmul float %34, 2.500000e-01
  %36 = tail call float @sinf(float noundef %35) #24
  store float %36, ptr %2, align 4, !tbaa !109
  %37 = tail call float @cosf(float noundef %35) #24
  %38 = getelementptr inbounds float, ptr %2, i64 1
  store float %37, ptr %38, align 4, !tbaa !109
  %39 = load float, ptr %2, align 4, !tbaa !109
  %40 = fpext float %39 to double
  %41 = fdiv float 2.000000e+00, %1
  %42 = fpext float %41 to double
  %43 = tail call double @pow(double noundef %40, double noundef %42) #24
  %44 = fptrunc double %43 to float
  store float %44, ptr %2, align 4, !tbaa !109
  %45 = load float, ptr %38, align 4, !tbaa !109
  %46 = fpext float %45 to double
  %47 = tail call double @pow(double noundef %46, double noundef %42) #24
  %48 = fptrunc double %47 to float
  store float %48, ptr %38, align 4, !tbaa !109
  br label %49

49:                                               ; preds = %8, %22, %20, %33, %28, %30, %11, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !184 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !185 {
  %4 = load float, ptr %1, align 4, !tbaa !109
  %5 = load float, ptr %2, align 4, !tbaa !109
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !186 {
  %3 = load float, ptr %0, align 4, !tbaa !109
  %4 = load float, ptr %1, align 4, !tbaa !109
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @is_power_of_2_i(i32 noundef %0) unnamed_addr #12 !PGOFuncName !187 {
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !188
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !189 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !190 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !191
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !193
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !141
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !198
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !141
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !199
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !141
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !141
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !141
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !141
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !141
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !141
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !141
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !192
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !141
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !110
  tail call void %28(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !200 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !PGOFuncName !201 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !70
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !202 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !203
  ret i32 %3
}

; Function Attrs: optsize
declare float @BM_elem_float_data_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bev_ccw_test(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !204 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BM_face_edge_share_loop(ptr noundef nonnull %2, ptr noundef %0) #24
  %7 = tail call ptr @BM_face_edge_share_loop(ptr noundef nonnull %2, ptr noundef %1) #24
  %8 = icmp ne ptr %6, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = icmp eq ptr %13, %6
  %15 = select i1 %14, i32 1, i32 -1
  br label %16

16:                                               ; preds = %5, %3, %11
  %17 = phi i32 [ %15, %11 ], [ 0, %3 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @edge_face_angle(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4
  %11 = getelementptr inbounds %struct.BMFace, ptr %7, i64 0, i32 4
  %12 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #24
  %13 = fsub float 0x400921FB60000000, %12
  br label %14

14:                                               ; preds = %1, %5, %9
  %15 = phi float [ %13, %9 ], [ 0.000000e+00, %5 ], [ 0.000000e+00, %1 ]
  ret float %15
}

; Function Attrs: optsize
declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @contig_ldata_across_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !208 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !209
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %64, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = call zeroext i8 @BM_edge_loop_pair(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %64, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %5, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !210
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8, !tbaa !107
  store ptr %24, ptr %5, align 8, !tbaa !107
  store ptr %19, ptr %6, align 8, !tbaa !107
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !211
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call ptr @BM_face_other_edge_loop(ptr noundef %2, ptr noundef nonnull %1, ptr noundef %15) #24
  br label %34

32:                                               ; preds = %25
  %33 = call ptr @BM_face_other_edge_loop(ptr noundef %2, ptr noundef nonnull %1, ptr noundef %13) #24
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %31, %30 ], [ %26, %32 ]
  %36 = phi ptr [ %26, %30 ], [ %33, %32 ]
  %37 = load ptr, ptr %6, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = icmp eq ptr %39, %13
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call ptr @BM_face_other_edge_loop(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %15) #24
  br label %45

43:                                               ; preds = %34
  %44 = call ptr @BM_face_other_edge_loop(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %13) #24
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %37, %43 ]
  %47 = phi ptr [ %37, %41 ], [ %44, %43 ]
  %48 = load i32, ptr %8, align 4, !tbaa !209
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45, %60
  %51 = phi i32 [ %61, %60 ], [ 0, %45 ]
  %52 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %7, i32 noundef %51) #24
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = call fastcc zeroext i8 @contig_ldata_across_loops(ptr noundef nonnull %0, ptr noundef %36, ptr noundef %47, i32 noundef %51) #25
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = call fastcc zeroext i8 @contig_ldata_across_loops(ptr noundef nonnull %0, ptr noundef %35, ptr noundef %46, i32 noundef %51) #25
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %50, %57
  %61 = add nuw nsw i32 %51, 1
  %62 = load i32, ptr %8, align 4, !tbaa !209
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %50, label %64, !llvm.loop !212

64:                                               ; preds = %57, %54, %60, %45, %11, %4
  %65 = phi i8 [ 1, %4 ], [ 0, %11 ], [ 1, %45 ], [ 0, %57 ], [ 0, %54 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret i8 %65
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_face_other_edge_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @contig_ldata_across_loops(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !213 {
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %7, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !215
  %11 = load i32, ptr %8, align 8, !tbaa !217
  %12 = load ptr, ptr %1, align 8, !tbaa !218
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr %2, align 8, !tbaa !218
  %16 = getelementptr inbounds i8, ptr %15, i64 %13
  %17 = tail call zeroext i8 @CustomData_data_equals(i32 noundef %11, ptr noundef %14, ptr noundef %16) #24
  ret i8 %17
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_bev(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #14 !PGOFuncName !219 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !82
  %9 = sext i32 %8 to i64
  %10 = getelementptr %struct.EdgeHalf, ptr %6, i64 %9
  %11 = getelementptr %struct.EdgeHalf, ptr %10, i64 -1
  br label %12

12:                                               ; preds = %4, %2
  %13 = phi ptr [ %11, %4 ], [ %1, %2 ]
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %13, %12 ], [ %20, %19 ]
  %16 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 12
  %17 = load i8, ptr %16, align 4, !tbaa !97
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 8, !tbaa !112
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %22, label %14, !llvm.loop !220

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %15, %14 ], [ null, %19 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_other_end_edge_half(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 !PGOFuncName !221 {
  %4 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !100
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 3
  %11 = select i1 %6, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = tail call fastcc ptr @find_bevvert(ptr noundef %0, ptr noundef %12) #25
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %2, null
  br i1 %14, label %22, label %16

16:                                               ; preds = %3
  br i1 %15, label %18, label %17

17:                                               ; preds = %16
  store ptr %13, ptr %2, align 8, !tbaa !107
  br label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = tail call fastcc ptr @find_edge_half(ptr noundef nonnull %13, ptr noundef %20) #25
  br label %24

22:                                               ; preds = %3
  br i1 %15, label %24, label %23

23:                                               ; preds = %22
  store ptr null, ptr %2, align 8, !tbaa !107
  br label %24

24:                                               ; preds = %23, %22, %18
  %25 = phi ptr [ %21, %18 ], [ null, %22 ], [ null, %23 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @offset_in_plane(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #15 !PGOFuncName !222 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 13
  %9 = load i8, ptr %8, align 1, !tbaa !100
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %14 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %15 = select i1 %10, ptr %14, ptr %13
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %12, ptr noundef %16) #25
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %19) #25
  %20 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #25
  %21 = icmp eq ptr %1, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %1) #25
  br label %32

23:                                               ; preds = %4
  call fastcc void @zero_v3(ptr noundef nonnull %6) #25
  %24 = load <2 x float>, ptr %5, align 8, !tbaa !109
  %25 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %24)
  %26 = extractelement <2 x float> %25, i64 0
  %27 = extractelement <2 x float> %25, i64 1
  %28 = fcmp olt float %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store float 1.000000e+00, ptr %6, align 4, !tbaa !109
  br label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 1.000000e+00, ptr %31, align 4, !tbaa !109
  br label %32

32:                                               ; preds = %29, %30, %22
  %33 = icmp eq i8 %2, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  br label %36

35:                                               ; preds = %32
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #25
  br label %36

36:                                               ; preds = %35, %34
  %37 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #25
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %19) #25
  %38 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 8
  %39 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %40 = select i1 %33, ptr %39, ptr %38
  %41 = load float, ptr %40, align 4, !tbaa !109
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %7, float noundef %41) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_new_bound_vert(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !223 {
  %4 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef 176) #24
  %5 = getelementptr inbounds %struct.BoundVert, ptr %4, i64 0, i32 2, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %2) #25
  %6 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  store ptr %4, ptr %6, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.BoundVert, ptr %4, i64 0, i32 1
  br label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BoundVert, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !224
  %14 = getelementptr inbounds %struct.BoundVert, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !151
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.BoundVert, ptr %4, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !224
  store ptr %7, ptr %4, align 8, !tbaa !137
  br label %18

18:                                               ; preds = %11, %9
  %19 = phi ptr [ %13, %11 ], [ %10, %9 ]
  %20 = phi ptr [ %12, %11 ], [ %4, %9 ]
  %21 = phi i32 [ %16, %11 ], [ 0, %9 ]
  store ptr %4, ptr %19, align 8, !tbaa !107
  store ptr %4, ptr %20, align 8, !tbaa !107
  %22 = getelementptr inbounds %struct.BoundVert, ptr %4, i64 0, i32 6
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.BoundVert, ptr %4, i64 0, i32 7
  store float 1.000000e+00, ptr %23, align 8, !tbaa !157
  %24 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !139
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !139
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @adjust_bound_vert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !225 {
  %3 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 2, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @slide_dist(ptr nocapture noundef readonly %0, ptr noundef readonly %1, float noundef %2, ptr nocapture noundef %3) unnamed_addr #15 !PGOFuncName !226 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %8, ptr noundef %1) #25
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10) #25
  %11 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #25
  %12 = fcmp olt float %11, %2
  %13 = fadd float %11, 0xBF0A36E2E0000000
  %14 = select i1 %12, float %13, float %2
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %6) #25
  %15 = fneg float %14
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %5, float noundef %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_bound_vert_seams(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !227 {
  %2 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.VMesh, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  br label %6

6:                                                ; preds = %23, %1
  %7 = phi i8 [ 0, %1 ], [ %25, %23 ]
  %8 = phi ptr [ %5, %1 ], [ %26, %23 ]
  %9 = getelementptr inbounds %struct.BoundVert, ptr %8, i64 0, i32 8
  store i8 0, ptr %9, align 8, !tbaa !228
  %10 = getelementptr inbounds %struct.BoundVert, ptr %8, i64 0, i32 3
  %11 = getelementptr inbounds %struct.BoundVert, ptr %8, i64 0, i32 4
  br label %12

12:                                               ; preds = %17, %6
  %13 = phi i8 [ 0, %6 ], [ %20, %17 ]
  %14 = phi ptr [ %10, %6 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 14
  %19 = load i8, ptr %18, align 2, !tbaa !116
  %20 = or i8 %13, %19
  store i8 %20, ptr %9, align 8, !tbaa !228
  %21 = load ptr, ptr %11, align 8, !tbaa !129
  %22 = icmp eq ptr %15, %21
  br i1 %22, label %23, label %12, !llvm.loop !229

23:                                               ; preds = %17, %12
  %24 = phi i8 [ %20, %17 ], [ %13, %12 ]
  %25 = or i8 %7, %24
  %26 = load ptr, ptr %8, align 8, !tbaa !137
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %28, label %6, !llvm.loop !230

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 5
  store i8 %25, ptr %29, align 8, !tbaa !231
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_profile_params(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !232 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 2, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %9) #25
  %10 = load ptr, ptr %1, align 8, !tbaa !137
  %11 = getelementptr inbounds %struct.BoundVert, ptr %10, i64 0, i32 2, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %11) #25
  %12 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7
  %13 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 6
  %18 = load float, ptr %17, align 4, !tbaa !44
  store float %18, ptr %12, align 8, !tbaa !233
  %19 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6
  %20 = getelementptr inbounds %struct.EdgeHalf, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %24, ptr noundef nonnull %27) #25
  %28 = tail call fastcc float @normalize_v3(ptr noundef nonnull %19) #25
  %29 = load ptr, ptr %20, align 8, !tbaa !90
  %30 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2
  call fastcc void @project_to_edge(ptr noundef %29, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %30) #25
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %19) #25
  %31 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %32 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %31, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %30, ptr noundef nonnull %19) #24
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %3) #25
  br label %35

35:                                               ; preds = %34, %16
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #25
  %36 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %37 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %36, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %30, ptr noundef nonnull %19) #24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %4) #25
  br label %40

40:                                               ; preds = %39, %35
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %30, ptr noundef nonnull %3) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %4) #25
  %41 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #25
  %42 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #25
  %43 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %44 = call fastcc float @normalize_v3(ptr noundef nonnull %43) #25
  %45 = fcmp ugt float %44, 0x3F1A36E2E0000000
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %19) #25
  %47 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %6, ptr noundef nonnull %8) #25
  %48 = call fastcc float @normalize_v3(ptr noundef nonnull %43) #25
  %49 = fcmp ugt float %48, 0x3F1A36E2E0000000
  store float 1.000000e+00, ptr %12, align 8, !tbaa !233
  %50 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %50, ptr noundef nonnull %3) #25
  br i1 %49, label %60, label %51

51:                                               ; preds = %2, %46
  store float 1.000000e+00, ptr %12, align 8, !tbaa !233
  %52 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %3) #25
  %53 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %4) #25
  %54 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %54, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %55 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5
  call fastcc void @zero_v3(ptr noundef nonnull %55) #25
  %56 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4
  call fastcc void @zero_v3(ptr noundef nonnull %56) #25
  %57 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6
  call fastcc void @zero_v3(ptr noundef nonnull %57) #25
  br label %60

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %3) #25
  br label %60

60:                                               ; preds = %58, %51, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calculate_profile(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !234 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7
  %8 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %101, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = icmp ne i32 %9, %14
  %16 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !235
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = mul i32 %9, 3
  %23 = add i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr @BLI_memarena_alloc(ptr noundef %21, i64 noundef %25) #24
  store ptr %26, ptr %16, align 8, !tbaa !235
  br i1 %15, label %27, label %35

27:                                               ; preds = %19
  %28 = load ptr, ptr %20, align 8, !tbaa !52
  %29 = load i32, ptr %13, align 8, !tbaa !62
  %30 = mul i32 %29, 3
  %31 = add i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr @BLI_memarena_alloc(ptr noundef %28, i64 noundef %33) #24
  br label %35

35:                                               ; preds = %19, %27
  %36 = phi ptr [ %34, %27 ], [ %26, %19 ]
  %37 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 8
  store ptr %36, ptr %37, align 8, !tbaa !236
  br label %38

38:                                               ; preds = %35, %11
  %39 = load float, ptr %7, align 8, !tbaa !233
  %40 = fcmp oeq float %39, 1.000000e+00
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %43 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2
  %44 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %45 = call fastcc zeroext i8 @make_unit_square_map(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %6) #25, !range !76
  %46 = icmp eq i8 %45, 0
  br label %47

47:                                               ; preds = %38, %41
  %48 = phi i1 [ %46, %41 ], [ true, %38 ]
  %49 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 1
  %50 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 8
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %52 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %53 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %54 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6
  %55 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5
  %56 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4
  br label %57

57:                                               ; preds = %47, %100
  %58 = phi i1 [ true, %47 ], [ false, %100 ]
  %59 = select i1 %58, i1 true, i1 %15
  br i1 %59, label %60, label %101

60:                                               ; preds = %57
  %61 = select i1 %58, ptr %8, ptr %13
  %62 = select i1 %58, ptr %12, ptr %49
  %63 = select i1 %58, ptr %16, ptr %50
  %64 = load i32, ptr %61, align 8, !tbaa !108
  %65 = load ptr, ptr %62, align 8, !tbaa !107
  %66 = load ptr, ptr %63, align 8, !tbaa !107
  %67 = icmp slt i32 %64, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %60
  %69 = sitofp i32 %64 to float
  %70 = zext nneg i32 %64 to i64
  %71 = add nuw i32 %64, 1
  %72 = zext i32 %71 to i64
  br label %73

73:                                               ; preds = %68, %97
  %74 = phi i64 [ 0, %68 ], [ %98, %97 ]
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %52) #25
  br label %88

77:                                               ; preds = %73
  %78 = icmp eq i64 %74, %70
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %53) #25
  br label %88

80:                                               ; preds = %77
  br i1 %48, label %84, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds float, ptr %65, i64 %74
  %83 = load float, ptr %82, align 4, !tbaa !109
  call fastcc void @superellipse_co(float noundef %83, float noundef %39, ptr noundef nonnull %5) #25
  store float 0.000000e+00, ptr %51, align 4, !tbaa !109
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  br label %88

84:                                               ; preds = %80
  %85 = trunc i64 %74 to i32
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %86, %69
  call void @interp_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %52, ptr noundef nonnull %53, float noundef %87) #24
  br label %88

88:                                               ; preds = %79, %84, %81, %76
  %89 = mul nuw nsw i64 %74, 3
  %90 = getelementptr inbounds float, ptr %66, i64 %89
  %91 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %54) #25, !range !76
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %54) #25
  %94 = call zeroext i8 @isect_line_plane_v3(ptr noundef %90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %55, ptr noundef nonnull %56) #24
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %93
  call fastcc void @copy_v3_v3(ptr noundef %90, ptr noundef nonnull %3) #25
  br label %97

97:                                               ; preds = %96, %93
  %98 = add nuw nsw i64 %74, 1
  %99 = icmp eq i64 %98, %72
  br i1 %99, label %100, label %73, !llvm.loop !237

100:                                              ; preds = %97, %60
  br i1 %58, label %57, label %101, !llvm.loop !238

101:                                              ; preds = %57, %100, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @offset_meet(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !239 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #23
  %17 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %18 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %19, ptr noundef %2) #25
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %17, ptr noundef nonnull %21) #25
  %22 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %23, ptr noundef %2) #25
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %25, ptr noundef nonnull %17) #25
  %26 = call float @angle_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %27 = fcmp olt float %26, 0x3F1A36E2E0000000
  br i1 %27, label %28, label %45

28:                                               ; preds = %5
  %29 = icmp eq ptr %3, null
  %30 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  %31 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4
  %32 = select i1 %29, ptr %30, ptr %31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %32) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %8) #25
  %33 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %17) #25
  %34 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %35 = load float, ptr %34, align 8, !tbaa !122
  %36 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %37 = load float, ptr %36, align 4, !tbaa !123
  %38 = call fastcc float @max_ff(float noundef %35, float noundef %37) #25
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %11, ptr noundef nonnull %9, float noundef %38) #25
  %39 = fcmp une float %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store float %38, ptr %34, align 8, !tbaa !122
  br label %44

41:                                               ; preds = %28
  %42 = fcmp une float %37, %38
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  store float %38, ptr %36, align 4, !tbaa !123
  br label %44

44:                                               ; preds = %41, %43, %40
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %11) #25
  br label %112

45:                                               ; preds = %5
  %46 = fadd float %26, 0xC00921FB60000000
  %47 = call float @llvm.fabs.f32(float %46)
  %48 = fcmp olt float %47, 0x3F1A36E2E0000000
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %51 = load float, ptr %50, align 8, !tbaa !122
  %52 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %53 = load float, ptr %52, align 4, !tbaa !123
  %54 = call fastcc float @max_ff(float noundef %51, float noundef %53) #25
  call fastcc void @slide_dist(ptr noundef nonnull %1, ptr noundef %2, float noundef %54, ptr noundef %4) #25
  %55 = load float, ptr %50, align 8, !tbaa !122
  %56 = fcmp une float %55, %54
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store float %54, ptr %50, align 8, !tbaa !122
  br label %112

58:                                               ; preds = %49
  %59 = load float, ptr %52, align 4, !tbaa !123
  %60 = fcmp une float %59, %54
  br i1 %60, label %61, label %112

61:                                               ; preds = %58
  store float %54, ptr %52, align 4, !tbaa !123
  br label %112

62:                                               ; preds = %45
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #25
  %63 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #25
  %64 = icmp eq ptr %3, null
  %65 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4
  %66 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  %67 = select i1 %64, ptr %66, ptr %65
  %68 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %67) #25
  %69 = fcmp olt float %68, 0.000000e+00
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  call fastcc void @negate_v3(ptr noundef nonnull %8) #25
  br label %71

71:                                               ; preds = %70, %62
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %8) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %72 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #25
  %73 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %17) #25
  %74 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %75 = load float, ptr %74, align 8, !tbaa !122
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %11, ptr noundef nonnull %9, float noundef %75) #25
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %6) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %17) #25
  %76 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %77 = load float, ptr %76, align 4, !tbaa !123
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %13, ptr noundef nonnull %10, float noundef %77) #25
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %7) #25
  %78 = call i32 @isect_line_line_v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %4, ptr noundef nonnull %15) #24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %11) #25
  %81 = load ptr, ptr %22, align 8, !tbaa !90
  %82 = call fastcc ptr @BM_edge_other_vert(ptr noundef %81, ptr noundef %2) #25
  %83 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2
  %84 = call float @dist_to_line_v3(ptr noundef %4, ptr noundef nonnull %17, ptr noundef nonnull %83) #24
  %85 = load float, ptr %76, align 4, !tbaa !123
  %86 = fsub float %84, %85
  %87 = call float @llvm.fabs.f32(float %86)
  %88 = fcmp ogt float %87, 0x3EB0C6F7A0000000
  br i1 %88, label %89, label %112

89:                                               ; preds = %80
  store float %84, ptr %76, align 4, !tbaa !123
  br label %112

90:                                               ; preds = %71
  %91 = load float, ptr %74, align 8, !tbaa !122
  %92 = fcmp oeq float %91, 0.000000e+00
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = call fastcc zeroext i8 @is_outside_edge(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %16) #25, !range !76
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %16, align 8, !tbaa !107
  %98 = getelementptr inbounds %struct.BMVert, ptr %97, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %98) #25
  %99 = call fastcc float @len_v3v3(ptr noundef %4, ptr noundef nonnull %17) #25
  store float %99, ptr %76, align 4, !tbaa !123
  br label %102

100:                                              ; preds = %90, %93
  %101 = load float, ptr %76, align 4, !tbaa !123
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi float [ %101, %100 ], [ %99, %96 ]
  %104 = fcmp oeq float %103, 0.000000e+00
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = call fastcc zeroext i8 @is_outside_edge(ptr noundef nonnull %1, ptr noundef %4, ptr noundef nonnull %16) #25, !range !76
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %16, align 8, !tbaa !107
  %110 = getelementptr inbounds %struct.BMVert, ptr %109, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %110) #25
  %111 = call fastcc float @len_v3v3(ptr noundef %4, ptr noundef nonnull %17) #25
  store float %111, ptr %74, align 8, !tbaa !122
  br label %112

112:                                              ; preds = %58, %61, %57, %102, %105, %108, %80, %89, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @offset_in_two_planes(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !240 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #23
  %19 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %20 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %21, ptr noundef %4) #25
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %19, ptr noundef nonnull %23) #25
  %24 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %25, ptr noundef %4) #25
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %27, ptr noundef nonnull %19) #25
  %28 = getelementptr inbounds %struct.EdgeHalf, ptr %3, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  %30 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %29, ptr noundef %4) #25
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %31, ptr noundef nonnull %19) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %9, ptr noundef nonnull %7) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %9, ptr noundef nonnull %8) #25
  %32 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3
  %33 = call fastcc float @dot_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %32) #25
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  call fastcc void @negate_v3(ptr noundef nonnull %17) #25
  br label %36

36:                                               ; preds = %35, %6
  %37 = call fastcc float @dot_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %32) #25
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call fastcc void @negate_v3(ptr noundef nonnull %18) #25
  br label %40

40:                                               ; preds = %39, %36
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %17) #25
  %41 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %18) #25
  %42 = call fastcc float @normalize_v3(ptr noundef nonnull %11) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %19) #25
  %43 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 9
  %44 = load float, ptr %43, align 8, !tbaa !122
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %12, ptr noundef nonnull %10, float noundef %44) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %7) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %19) #25
  %45 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 8
  %46 = load float, ptr %45, align 4, !tbaa !123
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %14, ptr noundef nonnull %11, float noundef %46) #25
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %8) #25
  %47 = call float @angle_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  %48 = fcmp olt float %47, 0x3F1A36E2E0000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  call fastcc void @offset_on_edge_between(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #25
  br label %81

50:                                               ; preds = %40
  %51 = fadd float %47, 0xC00921FB60000000
  %52 = call float @llvm.fabs.f32(float %51)
  %53 = fcmp olt float %52, 0x3F1A36E2E0000000
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load float, ptr %45, align 4, !tbaa !123
  call fastcc void @slide_dist(ptr noundef nonnull %2, ptr noundef %4, float noundef %55, ptr noundef %5) #25
  %56 = load ptr, ptr %20, align 8, !tbaa !90
  %57 = call fastcc ptr @BM_edge_other_vert(ptr noundef %56, ptr noundef %4) #25
  %58 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  %59 = call float @dist_to_line_v3(ptr noundef %5, ptr noundef nonnull %19, ptr noundef nonnull %58) #24
  %60 = load float, ptr %43, align 8, !tbaa !122
  %61 = fsub float %59, %60
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = fcmp ogt float %62, 0x3EB0C6F7A0000000
  br i1 %63, label %64, label %81

64:                                               ; preds = %54
  store float %59, ptr %43, align 8, !tbaa !122
  br label %81

65:                                               ; preds = %50
  %66 = call i32 @isect_line_line_v3(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %5, ptr noundef nonnull %16) #24
  switch i32 %66, label %81 [
    i32 0, label %67
    i32 2, label %77
  ]

67:                                               ; preds = %65
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %12) #25
  %68 = load ptr, ptr %24, align 8, !tbaa !90
  %69 = call fastcc ptr @BM_edge_other_vert(ptr noundef %68, ptr noundef %4) #25
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2
  %71 = call float @dist_to_line_v3(ptr noundef %5, ptr noundef nonnull %19, ptr noundef nonnull %70) #24
  %72 = load float, ptr %45, align 4, !tbaa !123
  %73 = fsub float %71, %72
  %74 = call float @llvm.fabs.f32(float %73)
  %75 = fcmp ogt float %74, 0x3EB0C6F7A0000000
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  store float %71, ptr %45, align 4, !tbaa !123
  br label %81

77:                                               ; preds = %65
  %78 = call fastcc float @len_squared_v3v3(ptr noundef %5, ptr noundef nonnull %16) #25
  %79 = fcmp ogt float %78, 0x3DDB7CDFE0000000
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call fastcc void @offset_on_edge_between(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #25
  br label %81

81:                                               ; preds = %65, %64, %54, %80, %77, %67, %76, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @offset_on_edge_between(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !241 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  %11 = tail call fastcc zeroext i8 @other_edge_half_visited(ptr noundef %0, ptr noundef %1) #25
  %12 = tail call fastcc zeroext i8 @other_edge_half_visited(ptr noundef %0, ptr noundef %2) #25
  %13 = call fastcc zeroext i8 @offset_meet_edge(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %7) #25, !range !76
  %14 = call fastcc zeroext i8 @offset_meet_edge(ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %8) #25, !range !76
  %15 = icmp ne i8 %13, 0
  %16 = icmp ne i8 %14, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %6
  %19 = icmp eq i8 %11, 0
  %20 = icmp ne i8 %12, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %9) #25
  br label %44

23:                                               ; preds = %18
  %24 = select i1 %19, i1 %20, i1 false
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %10) #25
  br label %44

26:                                               ; preds = %23
  %27 = load float, ptr %7, align 4, !tbaa !109
  %28 = call float @sinf(float noundef %27) #24
  %29 = load float, ptr %8, align 4, !tbaa !109
  %30 = call float @sinf(float noundef %29) #24
  %31 = fmul float %30, %30
  %32 = call float @llvm.fmuladd.f32(float %28, float %28, float %31)
  %33 = fdiv float %31, %32
  call void @interp_v3_v3v3(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %33) #24
  br label %44

34:                                               ; preds = %6
  %35 = icmp eq i8 %13, 0
  %36 = or i1 %35, %16
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %9) #25
  br label %44

38:                                               ; preds = %34
  %39 = and i1 %35, %16
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %10) #25
  br label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 9
  %43 = load float, ptr %42, align 8, !tbaa !122
  call fastcc void @slide_dist(ptr noundef %3, ptr noundef %4, float noundef %43, ptr noundef %5) #25
  br label %44

44:                                               ; preds = %37, %41, %40, %22, %26, %25
  %45 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %46 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !90
  %48 = call fastcc ptr @BM_edge_other_vert(ptr noundef %47, ptr noundef %4) #25
  %49 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  %50 = call float @dist_to_line_v3(ptr noundef %5, ptr noundef nonnull %45, ptr noundef nonnull %49) #24
  %51 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !122
  %53 = fsub float %50, %52
  %54 = call float @llvm.fabs.f32(float %53)
  %55 = fcmp ogt float %54, 0x3EB0C6F7A0000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store float %50, ptr %51, align 8, !tbaa !122
  br label %57

57:                                               ; preds = %56, %44
  %58 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !90
  %60 = call fastcc ptr @BM_edge_other_vert(ptr noundef %59, ptr noundef %4) #25
  %61 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  %62 = call float @dist_to_line_v3(ptr noundef %5, ptr noundef nonnull %45, ptr noundef nonnull %61) #24
  %63 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 8
  %64 = load float, ptr %63, align 4, !tbaa !123
  %65 = fsub float %62, %64
  %66 = call float @llvm.fabs.f32(float %65)
  %67 = fcmp ogt float %66, 0x3EB0C6F7A0000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store float %62, ptr %63, align 4, !tbaa !123
  br label %69

69:                                               ; preds = %68, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !242 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @move_profile_plane(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #15 !PGOFuncName !243 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 7, i32 6
  %9 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %8) #25, !range !76
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %19) #25
  %20 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull %27) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8) #25
  %28 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #25
  %29 = fcmp ogt float %28, 0x3F1A36E2E0000000
  br i1 %29, label %30, label %41

30:                                               ; preds = %11
  %31 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #25
  %32 = fcmp ogt float %31, 0x3F1A36E2E0000000
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fadd float %35, -1.000000e+00
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fcmp ogt float %37, 0x3F1A36E2E0000000
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 7, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %6) #25
  br label %41

41:                                               ; preds = %11, %30, %39, %33, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_edge_half(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #14 !PGOFuncName !244 {
  %3 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = zext nneg i32 %4 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %20, label %13, !llvm.loop !245

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 0, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.EdgeHalf, ptr %8, i64 %14, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.EdgeHalf, ptr %8, i64 %14
  br label %20

20:                                               ; preds = %10, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ null, %10 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !246 {
  %4 = load float, ptr %1, align 4, !tbaa !109
  %5 = load float, ptr %2, align 4, !tbaa !109
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !109
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !109
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !109
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !247 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #25
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !248 {
  %3 = load float, ptr %1, align 4, !tbaa !109
  store float %3, ptr %0, align 4, !tbaa !109
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !109
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #17 !PGOFuncName !249 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !109
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !250 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !109
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !109
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !109
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !109
  %15 = load float, ptr %8, align 4, !tbaa !109
  %16 = load float, ptr %2, align 4, !tbaa !109
  %17 = load float, ptr %1, align 4, !tbaa !109
  %18 = load float, ptr %6, align 4, !tbaa !109
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !109
  %23 = load float, ptr %1, align 4, !tbaa !109
  %24 = load float, ptr %10, align 4, !tbaa !109
  %25 = load float, ptr %4, align 4, !tbaa !109
  %26 = load float, ptr %2, align 4, !tbaa !109
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !251 {
  %4 = load float, ptr %1, align 4, !tbaa !109
  %5 = load float, ptr %0, align 4, !tbaa !109
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !109
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !109
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !109
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !252 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #25
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #24
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #25
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #25
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !253 {
  %3 = load float, ptr %0, align 4, !tbaa !109
  %4 = load float, ptr %1, align 4, !tbaa !109
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !109
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !109
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !254 {
  %4 = load float, ptr %1, align 4, !tbaa !109
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !109
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !109
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !109
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_to_edge(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !255 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = call i32 @isect_line_line_v3(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load ptr, ptr %6, align 8, !tbaa !161
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %16) #25
  br label %17

17:                                               ; preds = %14, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !256 {
  %4 = load float, ptr %1, align 4, !tbaa !109
  %5 = load float, ptr %2, align 4, !tbaa !109
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !109
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !109
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !109
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_line_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @make_unit_square_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !257 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %0) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #25
  %10 = call float @angle_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  %11 = fadd float %10, 0xC00921FB60000000
  %12 = call float @llvm.fabs.f32(float %11)
  %13 = fcmp ogt float %12, 0x3F1A36E2E0000000
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %7) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %15 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #25
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9) #25
  call fastcc void @sub_v3_v3v3(ptr noundef %3, ptr noundef %1, ptr noundef %0) #25
  %16 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  store float 0.000000e+00, ptr %16, align 4, !tbaa !109
  %17 = getelementptr inbounds [4 x float], ptr %3, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef %1, ptr noundef %2) #25
  %18 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 3
  store float 0.000000e+00, ptr %18, align 4, !tbaa !109
  %19 = getelementptr inbounds [4 x float], ptr %3, i64 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %19, ptr noundef %1, ptr noundef nonnull %6) #25
  call fastcc void @sub_v3_v3(ptr noundef nonnull %19, ptr noundef %0) #25
  call fastcc void @sub_v3_v3(ptr noundef nonnull %19, ptr noundef %2) #25
  %20 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 3
  store float 0.000000e+00, ptr %20, align 4, !tbaa !109
  %21 = getelementptr inbounds [4 x float], ptr %3, i64 3
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %21, ptr noundef %0, ptr noundef %2) #25
  call fastcc void @sub_v3_v3(ptr noundef nonnull %21, ptr noundef %1) #25
  %22 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 3
  store float 1.000000e+00, ptr %22, align 4, !tbaa !109
  br label %23

23:                                               ; preds = %4, %14
  %24 = phi i8 [ 1, %14 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret i8 %24
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !258 {
  %2 = load float, ptr %0, align 4, !tbaa !109
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !109
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !259 {
  %3 = load float, ptr %1, align 4, !tbaa !109
  %4 = load float, ptr %0, align 4, !tbaa !109
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !109
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !109
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !109
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !109
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !109
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !260 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !261 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !109
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !109
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !109
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare float @dist_to_line_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_outside_edge(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !262 {
  %4 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = tail call float @dist_squared_to_line_segment_v3(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %11) #24
  %13 = fcmp ogt float %12, 0x3E45798EC0000000
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !161
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = tail call fastcc float @len_squared_v3v3(ptr noundef %1, ptr noundef nonnull %18) #25
  %20 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = tail call fastcc float @len_squared_v3v3(ptr noundef %1, ptr noundef nonnull %22) #25
  %24 = fcmp ogt float %19, %23
  %25 = select i1 %24, ptr %21, ptr %17
  store ptr %25, ptr %2, align 8, !tbaa !107
  br label %26

26:                                               ; preds = %3, %14
  %27 = phi i8 [ 1, %14 ], [ 0, %3 ]
  ret i8 %27
}

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !263 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @other_edge_half_visited(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !264 {
  %3 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 13
  %4 = load i8, ptr %3, align 1, !tbaa !100
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %10 = select i1 %5, ptr %9, ptr %8
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = tail call fastcc ptr @find_bevvert(ptr noundef %0, ptr noundef %11) #25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BevVert, ptr %12, i64 0, i32 6
  %16 = load i8, ptr %15, align 1, !tbaa !121
  br label %17

17:                                               ; preds = %2, %14
  %18 = phi i8 [ %16, %14 ], [ 0, %2 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @offset_meet_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3, ptr noundef writeonly %4) unnamed_addr #0 !PGOFuncName !265 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %10, ptr noundef %2) #25
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %13) #25
  %14 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %15, ptr noundef %2) #25
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %17, ptr noundef nonnull %13) #25
  %18 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #25
  %19 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #25
  %20 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %21 = fcmp olt float %20, 0x3EB0C6F7A0000000
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = icmp eq ptr %4, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %22
  store float 0.000000e+00, ptr %4, align 4, !tbaa !109
  br label %47

25:                                               ; preds = %5
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %26 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  %27 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %26) #25
  %28 = fcmp olt float %27, 0.000000e+00
  %29 = fsub float 0x401921FB60000000, %20
  %30 = select i1 %28, float %29, float %20
  %31 = icmp eq ptr %4, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store float %30, ptr %4, align 4, !tbaa !109
  br label %33

33:                                               ; preds = %32, %25
  %34 = fadd float %30, 0xC00921FB60000000
  %35 = fcmp ogt float %34, 0x3EB0C6F7A0000000
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = call float @sinf(float noundef %30) #24
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %13) #25
  %38 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %39 = load float, ptr %38, align 8, !tbaa !122
  %40 = fcmp oeq float %39, 0.000000e+00
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %43 = load float, ptr %42, align 4, !tbaa !123
  %44 = fdiv float %43, %37
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %6, float noundef %44) #25
  br label %47

45:                                               ; preds = %36
  %46 = fdiv float %39, %37
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %7, float noundef %46) #25
  br label %47

47:                                               ; preds = %41, %45, %33, %22, %24
  %48 = phi i8 [ 0, %24 ], [ 0, %22 ], [ 0, %33 ], [ 1, %45 ], [ 1, %41 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  ret i8 %48
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !266 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #25
  %3 = tail call float @sqrtf(float noundef %2) #24
  ret float %3
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !267 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #18 !PGOFuncName !270 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !271
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_gsqueue_new(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @any_edge_half_offset_changed(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !82
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = zext nneg i32 %3 to i64
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %8
  br i1 %11, label %17, label %12, !llvm.loop !274

12:                                               ; preds = %5, %9
  %13 = phi i64 [ 0, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.EdgeHalf, ptr %7, i64 %13
  %15 = tail call fastcc zeroext i8 @edge_half_offset_changed(ptr noundef %14) #25, !range !76
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %9, label %17

17:                                               ; preds = %12, %9, %1
  %18 = phi i8 [ 0, %1 ], [ 0, %9 ], [ 1, %12 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @BLI_gsqueue_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_gsqueue_is_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_gsqueue_pop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @edge_half_offset_changed(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !275 {
  %2 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 8
  %3 = load float, ptr %2, align 4, !tbaa !123
  %4 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !114
  %6 = fcmp une float %3, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %9 = load float, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 11
  %11 = load float, ptr %10, align 8, !tbaa !115
  %12 = fcmp une float %9, %11
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %7 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BLI_gsqueue_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mesh_vert(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !276 {
  %5 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !88
  %7 = sdiv i32 %6, 2
  %8 = add nsw i32 %7, 1
  %9 = add nsw i32 %6, 1
  %10 = load ptr, ptr %0, align 8, !tbaa !150
  %11 = mul i32 %8, %1
  %12 = add i32 %11, %2
  %13 = mul i32 %12, %9
  %14 = add i32 %13, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.NewVert, ptr %10, i64 %15
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_mesh_bmvert(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !277 {
  %7 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #25
  %8 = getelementptr inbounds %struct.NewVert, ptr %7, i64 0, i32 1
  %9 = tail call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %5, i32 noundef 0) #24
  store ptr %9, ptr %7, align 8, !tbaa !152
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %9, i8 noundef zeroext 16) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @move_weld_profile_planes(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #15 !PGOFuncName !278 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6
  %10 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %9) #25, !range !76
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.BoundVert, ptr %2, i64 0, i32 7, i32 6
  %14 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %13) #25, !range !76
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 2, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef nonnull %19) #25
  %20 = getelementptr inbounds %struct.BoundVert, ptr %2, i64 0, i32 2, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %20) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %21 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %9) #25
  %22 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #25
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %13) #25
  %23 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #25
  %24 = fcmp ogt float %21, 0x3EB0C6F7A0000000
  br i1 %24, label %25, label %45

25:                                               ; preds = %16
  %26 = fcmp ogt float %22, 0x3EB0C6F7A0000000
  %27 = fcmp ogt float %23, 0x3EB0C6F7A0000000
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #25
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = fadd float %31, -1.000000e+00
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fcmp ogt float %35, 0x3EB0C6F7A0000000
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %6) #25
  br label %39

39:                                               ; preds = %37, %29
  %40 = fadd float %33, -1.000000e+00
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = fcmp ogt float %41, 0x3EB0C6F7A0000000
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.BoundVert, ptr %2, i64 0, i32 7, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %44, ptr noundef nonnull %6) #25
  br label %45

45:                                               ; preds = %16, %25, %43, %39, %3, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copy_mesh_vert(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 !PGOFuncName !279 {
  %6 = tail call fastcc ptr @mesh_vert(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %2) #25
  %7 = tail call fastcc ptr @mesh_vert(ptr noundef %0, i32 noundef %3, i32 noundef 0, i32 noundef %4) #25
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  store ptr %8, ptr %6, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.NewVert, ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %struct.NewVert, ptr %7, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_profile_point(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #19 !PGOFuncName !280 {
  %6 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Profile, ptr %1, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %12) #25
  br label %33

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Profile, ptr %1, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %14) #25
  br label %33

15:                                               ; preds = %5
  %16 = icmp eq i32 %7, %3
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Profile, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !235
  %20 = mul nsw i32 %2, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %19, i64 %21
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef %22) #25
  br label %33

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !62
  %26 = sdiv i32 %25, %3
  %27 = getelementptr inbounds %struct.Profile, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !236
  %29 = mul nsw i32 %2, 3
  %30 = mul nsw i32 %29, %26
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %28, i64 %31
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef %32) #25
  br label %33

33:                                               ; preds = %17, %23, %11, %13
  ret void
}

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_build_one_wire(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !281 {
  %3 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call fastcc ptr @mesh_vert(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = tail call fastcc ptr @mesh_vert(ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0) #25
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.EdgeHalf, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %6, ptr noundef %8, ptr noundef %12, i32 noundef 2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bevel_build_poly(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !282 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [32 x ptr], align 16
  %7 = alloca [32 x ptr], align 16
  %8 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #23
  %10 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = tail call fastcc ptr @boundvert_rep_face(ptr noundef %11) #25
  %13 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 5
  br label %14

14:                                               ; preds = %151, %3
  %15 = phi i32 [ 0, %3 ], [ %152, %151 ]
  %16 = phi ptr [ %11, %3 ], [ %155, %151 ]
  %17 = phi i32 [ 0, %3 ], [ %153, %151 ]
  %18 = phi i32 [ 0, %3 ], [ %154, %151 ]
  %19 = load ptr, ptr %4, align 8
  %20 = icmp eq ptr %19, null
  %21 = add i32 %17, 1
  %22 = icmp ult i32 %21, 33
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store ptr %6, ptr %4, align 8, !tbaa !107
  br label %38

25:                                               ; preds = %14
  %26 = icmp eq ptr %19, %6
  %27 = or i1 %26, %20
  %28 = select i1 %26, i64 32, i64 0
  br i1 %27, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %31 = call i64 %30(ptr noundef nonnull %19) #24
  %32 = lshr i64 %31, 3
  br label %33

33:                                               ; preds = %25, %29
  %34 = phi i64 [ %28, %25 ], [ %32, %29 ]
  %35 = sext i32 %21 to i64
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 8, i32 noundef %17, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %38

38:                                               ; preds = %37, %33, %24
  %39 = getelementptr inbounds %struct.BoundVert, ptr %16, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !153
  %41 = load ptr, ptr %4, align 8, !tbaa !107
  %42 = sext i32 %17 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  store ptr %40, ptr %43, align 8, !tbaa !107
  %44 = load ptr, ptr %5, align 8
  %45 = icmp eq ptr %44, null
  %46 = add i32 %18, 1
  %47 = icmp ult i32 %46, 33
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store ptr %7, ptr %5, align 8, !tbaa !107
  br label %63

50:                                               ; preds = %38
  %51 = icmp eq ptr %44, %7
  %52 = or i1 %51, %45
  %53 = select i1 %51, i64 32, i64 0
  br i1 %52, label %58, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %56 = call i64 %55(ptr noundef nonnull %44) #24
  %57 = lshr i64 %56, 3
  br label %58

58:                                               ; preds = %50, %54
  %59 = phi i64 [ %53, %50 ], [ %57, %54 ]
  %60 = sext i32 %46 to i64
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 8, i32 noundef %18, i32 noundef 1, ptr noundef nonnull @.str.1) #24
  br label %63

63:                                               ; preds = %62, %58, %49
  %64 = load i8, ptr %13, align 8, !tbaa !231
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call fastcc ptr @boundvert_rep_face(ptr noundef nonnull %16) #25
  br label %68

68:                                               ; preds = %63, %66
  %69 = phi ptr [ %67, %66 ], [ %12, %63 ]
  %70 = load ptr, ptr %5, align 8, !tbaa !107
  %71 = sext i32 %18 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  store ptr %69, ptr %72, align 8, !tbaa !107
  %73 = add nsw i32 %15, 1
  %74 = getelementptr inbounds %struct.BoundVert, ptr %16, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !125
  %76 = icmp eq ptr %75, null
  br i1 %76, label %151, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.EdgeHalf, ptr %75, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !98
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %151

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.BoundVert, ptr %16, i64 0, i32 6
  %83 = sext i32 %46 to i64
  %84 = sext i32 %21 to i64
  br label %85

85:                                               ; preds = %81, %141
  %86 = phi i64 [ %84, %81 ], [ %92, %141 ]
  %87 = phi i64 [ %83, %81 ], [ %118, %141 ]
  %88 = phi i32 [ %73, %81 ], [ %145, %141 ]
  %89 = phi i32 [ 1, %81 ], [ %146, %141 ]
  %90 = load ptr, ptr %4, align 8
  %91 = icmp eq ptr %90, null
  %92 = add nsw i64 %86, 1
  %93 = trunc i64 %92 to i32
  %94 = icmp ult i32 %93, 33
  %95 = select i1 %91, i1 %94, i1 false
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  store ptr %6, ptr %4, align 8, !tbaa !107
  br label %110

97:                                               ; preds = %85
  %98 = icmp eq ptr %90, %6
  %99 = or i1 %98, %91
  %100 = select i1 %98, i64 32, i64 0
  br i1 %99, label %105, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %103 = call i64 %102(ptr noundef nonnull %90) #24
  %104 = lshr i64 %103, 3
  br label %105

105:                                              ; preds = %97, %101
  %106 = phi i64 [ %100, %97 ], [ %104, %101 ]
  %107 = icmp ult i64 %106, %92
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = trunc i64 %86 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 8, i32 noundef %109, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %110

110:                                              ; preds = %108, %105, %96
  %111 = load i32, ptr %82, align 8, !tbaa !151
  %112 = call fastcc ptr @mesh_vert(ptr noundef %9, i32 noundef %111, i32 noundef 0, i32 noundef %89) #25
  %113 = load ptr, ptr %112, align 8, !tbaa !152
  %114 = load ptr, ptr %4, align 8, !tbaa !107
  %115 = getelementptr inbounds ptr, ptr %114, i64 %86
  store ptr %113, ptr %115, align 8, !tbaa !107
  %116 = load ptr, ptr %5, align 8
  %117 = icmp eq ptr %116, null
  %118 = add nsw i64 %87, 1
  %119 = trunc i64 %118 to i32
  %120 = icmp ult i32 %119, 33
  %121 = select i1 %117, i1 %120, i1 false
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  store ptr %7, ptr %5, align 8, !tbaa !107
  br label %136

123:                                              ; preds = %110
  %124 = icmp eq ptr %116, %7
  %125 = or i1 %124, %117
  %126 = select i1 %124, i64 32, i64 0
  br i1 %125, label %131, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %129 = call i64 %128(ptr noundef nonnull %116) #24
  %130 = lshr i64 %129, 3
  br label %131

131:                                              ; preds = %123, %127
  %132 = phi i64 [ %126, %123 ], [ %130, %127 ]
  %133 = icmp ult i64 %132, %118
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = trunc i64 %87 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 8, i32 noundef %135, i32 noundef 1, ptr noundef nonnull @.str.1) #24
  br label %136

136:                                              ; preds = %134, %131, %122
  %137 = load i8, ptr %13, align 8, !tbaa !231
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call fastcc ptr @boundvert_rep_face(ptr noundef nonnull %16) #25
  br label %141

141:                                              ; preds = %136, %139
  %142 = phi ptr [ %140, %139 ], [ %12, %136 ]
  %143 = load ptr, ptr %5, align 8, !tbaa !107
  %144 = getelementptr inbounds ptr, ptr %143, i64 %87
  store ptr %142, ptr %144, align 8, !tbaa !107
  %145 = add nsw i32 %88, 1
  %146 = add nuw nsw i32 %89, 1
  %147 = load ptr, ptr %74, align 8, !tbaa !125
  %148 = getelementptr inbounds %struct.EdgeHalf, ptr %147, i64 0, i32 7
  %149 = load i32, ptr %148, align 8, !tbaa !98
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %85, label %151, !llvm.loop !283

151:                                              ; preds = %141, %68, %77
  %152 = phi i32 [ %73, %77 ], [ %73, %68 ], [ %145, %141 ]
  %153 = phi i32 [ %21, %77 ], [ %21, %68 ], [ %93, %141 ]
  %154 = phi i32 [ %46, %77 ], [ %46, %68 ], [ %119, %141 ]
  %155 = load ptr, ptr %16, align 8, !tbaa !137
  %156 = load ptr, ptr %10, align 8, !tbaa !134
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %158, label %14, !llvm.loop !284

158:                                              ; preds = %151
  %159 = icmp sgt i32 %152, 2
  br i1 %159, label %160, label %167

160:                                              ; preds = %158
  %161 = load ptr, ptr %4, align 8, !tbaa !107
  %162 = load ptr, ptr %5, align 8, !tbaa !107
  %163 = call fastcc ptr @boundvert_rep_face(ptr noundef %155) #25
  %164 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 13
  %165 = load i32, ptr %164, align 4, !tbaa !50
  %166 = call fastcc ptr @bev_create_ngon(ptr noundef %1, ptr noundef %161, i32 noundef %152, ptr noundef %162, ptr noundef %163, i32 noundef %165, i8 noundef zeroext 1) #25
  br label %167

167:                                              ; preds = %158, %160
  %168 = phi ptr [ %166, %160 ], [ null, %158 ]
  %169 = load ptr, ptr %4, align 8
  %170 = icmp ne ptr %169, null
  %171 = icmp ne ptr %169, %6
  %172 = and i1 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  call void %174(ptr noundef nonnull %169) #24
  br label %175

175:                                              ; preds = %173, %167
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret ptr %168
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_build_rings(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !285 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [32 x ptr], align 16
  %7 = alloca [32 x ptr], align 16
  %8 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = getelementptr inbounds %struct.VMesh, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.VMesh, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !88
  %16 = sdiv i32 %15, 2
  %17 = srem i32 %15, 2
  %18 = tail call fastcc ptr @pipe_test(ptr noundef %2) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = tail call fastcc ptr @pipe_adj_vmesh(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %18) #25
  br label %29

22:                                               ; preds = %3
  %23 = tail call fastcc zeroext i8 @tri_corner_test(ptr noundef nonnull %0, ptr noundef nonnull %2) #25, !range !76
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @tri_corner_adj_vmesh(ptr noundef nonnull %0, ptr noundef nonnull %2) #25
  br label %29

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @adj_vmesh(ptr noundef nonnull %0, ptr noundef nonnull %2) #25
  br label %29

29:                                               ; preds = %25, %27, %20
  %30 = phi ptr [ %21, %20 ], [ %26, %25 ], [ %28, %27 ]
  %31 = load ptr, ptr %10, align 8, !tbaa !87
  %32 = icmp sgt i32 %13, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = icmp slt i32 %15, -1
  %35 = icmp slt i32 %15, 0
  br label %36

36:                                               ; preds = %33, %63
  %37 = phi i32 [ 0, %33 ], [ %64, %63 ]
  br i1 %34, label %63, label %38

38:                                               ; preds = %36, %60
  %39 = phi i32 [ %61, %60 ], [ 0, %36 ]
  br i1 %35, label %60, label %40

40:                                               ; preds = %38
  %41 = icmp eq i32 %39, 0
  br label %42

42:                                               ; preds = %40, %57
  %43 = phi i32 [ 0, %40 ], [ %58, %57 ]
  br i1 %41, label %44, label %48

44:                                               ; preds = %42
  %45 = icmp eq i32 %43, 0
  %46 = icmp eq i32 %43, %15
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %44, %42
  %49 = tail call fastcc zeroext i8 @is_canon(ptr noundef %31, i32 noundef %37, i32 noundef %39, i32 noundef %43) #25, !range !76
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @mesh_vert(ptr noundef %31, i32 noundef %37, i32 noundef %39, i32 noundef %43) #25
  %53 = getelementptr inbounds %struct.NewVert, ptr %52, i64 0, i32 1
  %54 = tail call fastcc ptr @mesh_vert(ptr noundef %30, i32 noundef %37, i32 noundef %39, i32 noundef %43) #25
  %55 = getelementptr inbounds %struct.NewVert, ptr %54, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %55) #25
  %56 = load ptr, ptr %2, align 8, !tbaa !80
  tail call fastcc void @create_mesh_bmvert(ptr noundef %1, ptr noundef %31, i32 noundef %37, i32 noundef %39, i32 noundef %43, ptr noundef %56) #25
  br label %57

57:                                               ; preds = %48, %44, %51
  %58 = add nuw i32 %43, 1
  %59 = icmp eq i32 %43, %15
  br i1 %59, label %60, label %42, !llvm.loop !286

60:                                               ; preds = %57, %38
  %61 = add nuw nsw i32 %39, 1
  %62 = icmp eq i32 %39, %16
  br i1 %62, label %63, label %38, !llvm.loop !287

63:                                               ; preds = %60, %36
  %64 = add nuw nsw i32 %37, 1
  %65 = icmp eq i32 %64, %13
  br i1 %65, label %66, label %36, !llvm.loop !288

66:                                               ; preds = %63, %29
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %31) #25
  %67 = getelementptr inbounds %struct.VMesh, ptr %31, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !134
  %69 = icmp sgt i32 %15, 1
  %70 = add nsw i32 %16, %17
  %71 = icmp sgt i32 %70, 0
  %72 = icmp ne i32 %17, 0
  br label %73

73:                                               ; preds = %113, %66
  %74 = phi ptr [ %68, %66 ], [ %114, %113 ]
  %75 = phi ptr [ %68, %66 ], [ %115, %113 ]
  %76 = getelementptr inbounds %struct.BoundVert, ptr %75, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !151
  %78 = tail call fastcc ptr @boundvert_rep_face(ptr noundef %75) #25
  %79 = load ptr, ptr %75, align 8, !tbaa !137
  %80 = tail call fastcc ptr @boundvert_rep_face(ptr noundef %79) #25
  br i1 %69, label %81, label %113

81:                                               ; preds = %73
  %82 = icmp ne ptr %80, null
  %83 = getelementptr inbounds %struct.BoundVert, ptr %75, i64 0, i32 8
  br label %84

84:                                               ; preds = %81, %108
  %85 = phi i32 [ 0, %81 ], [ %86, %108 ]
  %86 = add nuw nsw i32 %85, 1
  br i1 %71, label %87, label %108

87:                                               ; preds = %84, %105
  %88 = phi i32 [ %91, %105 ], [ 0, %84 ]
  %89 = tail call fastcc ptr @mesh_vert(ptr noundef %31, i32 noundef %77, i32 noundef %85, i32 noundef %88) #25
  %90 = load ptr, ptr %89, align 8, !tbaa !152
  %91 = add nuw nsw i32 %88, 1
  %92 = tail call fastcc ptr @mesh_vert(ptr noundef %31, i32 noundef %77, i32 noundef %85, i32 noundef %91) #25
  %93 = load ptr, ptr %92, align 8, !tbaa !152
  %94 = tail call fastcc ptr @mesh_vert(ptr noundef %31, i32 noundef %77, i32 noundef %86, i32 noundef %91) #25
  %95 = load ptr, ptr %94, align 8, !tbaa !152
  %96 = tail call fastcc ptr @mesh_vert(ptr noundef %31, i32 noundef %77, i32 noundef %86, i32 noundef %88) #25
  %97 = load ptr, ptr %96, align 8, !tbaa !152
  %98 = icmp eq i32 %88, %16
  %99 = and i1 %72, %98
  %100 = select i1 %99, i1 %82, i1 false
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i8, ptr %83, align 8, !tbaa !228
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, ptr %80, ptr %78
  br label %105

105:                                              ; preds = %101, %87
  %106 = phi ptr [ %78, %87 ], [ %104, %101 ]
  tail call fastcc void @bev_create_quad_tri_ex(ptr noundef %1, ptr noundef %90, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %78, ptr noundef %106, ptr noundef %106, ptr noundef %78, i32 noundef %9) #25
  %107 = icmp eq i32 %91, %70
  br i1 %107, label %108, label %87, !llvm.loop !289

108:                                              ; preds = %105, %84
  %109 = icmp eq i32 %86, %16
  br i1 %109, label %110, label %84, !llvm.loop !290

110:                                              ; preds = %108
  %111 = load ptr, ptr %75, align 8, !tbaa !137
  %112 = load ptr, ptr %67, align 8, !tbaa !134
  br label %113

113:                                              ; preds = %110, %73
  %114 = phi ptr [ %112, %110 ], [ %74, %73 ]
  %115 = phi ptr [ %111, %110 ], [ %79, %73 ]
  %116 = icmp eq ptr %115, %114
  br i1 %116, label %117, label %73, !llvm.loop !291

117:                                              ; preds = %113
  %118 = icmp eq i32 %17, 0
  br i1 %118, label %119, label %153

119:                                              ; preds = %117
  %120 = icmp slt i32 %15, 4
  %121 = tail call i32 @llvm.smax.i32(i32 %16, i32 2)
  br label %122

122:                                              ; preds = %119, %142
  %123 = phi ptr [ %143, %142 ], [ %114, %119 ]
  %124 = phi ptr [ %144, %142 ], [ %114, %119 ]
  %125 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 6
  %126 = load i32, ptr %125, align 8, !tbaa !151
  %127 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 8
  %128 = load i8, ptr %127, align 8, !tbaa !228
  %129 = icmp ne i8 %128, 0
  %130 = select i1 %129, i1 true, i1 %120
  br i1 %130, label %142, label %131

131:                                              ; preds = %122, %137
  %132 = phi i32 [ %138, %137 ], [ 1, %122 ]
  %133 = tail call fastcc ptr @mesh_vert(ptr noundef %31, i32 noundef %126, i32 noundef %132, i32 noundef %16) #25
  %134 = load ptr, ptr %133, align 8, !tbaa !152
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  tail call fastcc void @bev_merge_uvs(ptr noundef %1, ptr noundef nonnull %134) #25
  br label %137

137:                                              ; preds = %136, %131
  %138 = add nuw nsw i32 %132, 1
  %139 = icmp eq i32 %138, %121
  br i1 %139, label %140, label %131, !llvm.loop !292

140:                                              ; preds = %137
  %141 = load ptr, ptr %67, align 8, !tbaa !134
  br label %142

142:                                              ; preds = %140, %122
  %143 = phi ptr [ %141, %140 ], [ %123, %122 ]
  %144 = load ptr, ptr %124, align 8, !tbaa !137
  %145 = icmp eq ptr %144, %143
  br i1 %145, label %146, label %122, !llvm.loop !293

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 5
  %148 = load i8, ptr %147, align 8, !tbaa !231
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %226

150:                                              ; preds = %146
  %151 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %31, i32 noundef 0, i32 noundef %16, i32 noundef %16) #25
  %152 = load ptr, ptr %151, align 8, !tbaa !152
  tail call fastcc void @bev_merge_uvs(ptr noundef %1, ptr noundef %152) #25
  br label %226

153:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #23
  br label %156

154:                                              ; preds = %206
  %155 = load ptr, ptr %4, align 8
  br label %156

156:                                              ; preds = %154, %153
  %157 = phi ptr [ %155, %154 ], [ null, %153 ]
  %158 = phi i64 [ %179, %154 ], [ 0, %153 ]
  %159 = phi ptr [ %210, %154 ], [ %114, %153 ]
  %160 = getelementptr inbounds %struct.BoundVert, ptr %159, i64 0, i32 6
  %161 = load i32, ptr %160, align 8, !tbaa !151
  %162 = icmp eq ptr %157, null
  %163 = icmp ult i64 %158, 32
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store ptr %6, ptr %4, align 8, !tbaa !107
  br label %178

166:                                              ; preds = %156
  %167 = icmp eq ptr %157, %6
  br i1 %167, label %173, label %168

168:                                              ; preds = %166
  br i1 %162, label %176, label %169

169:                                              ; preds = %168
  %170 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %171 = call i64 %170(ptr noundef nonnull %157) #24
  %172 = lshr i64 %171, 3
  br label %173

173:                                              ; preds = %169, %166
  %174 = phi i64 [ 32, %166 ], [ %172, %169 ]
  %175 = icmp ugt i64 %174, %158
  br i1 %175, label %178, label %176

176:                                              ; preds = %168, %173
  %177 = trunc i64 %158 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 8, i32 noundef %177, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %178

178:                                              ; preds = %176, %173, %165
  %179 = add nuw i64 %158, 1
  %180 = call fastcc ptr @mesh_vert(ptr noundef nonnull %31, i32 noundef %161, i32 noundef %16, i32 noundef %16) #25
  %181 = load ptr, ptr %180, align 8, !tbaa !152
  %182 = load ptr, ptr %4, align 8, !tbaa !107
  %183 = getelementptr inbounds ptr, ptr %182, i64 %158
  store ptr %181, ptr %183, align 8, !tbaa !107
  %184 = load ptr, ptr %5, align 8
  %185 = icmp eq ptr %184, null
  %186 = select i1 %185, i1 %163, i1 false
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  store ptr %7, ptr %5, align 8, !tbaa !107
  br label %200

188:                                              ; preds = %178
  %189 = icmp eq ptr %184, %7
  br i1 %189, label %195, label %190

190:                                              ; preds = %188
  br i1 %185, label %198, label %191

191:                                              ; preds = %190
  %192 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %193 = call i64 %192(ptr noundef nonnull %184) #24
  %194 = lshr i64 %193, 3
  br label %195

195:                                              ; preds = %191, %188
  %196 = phi i64 [ 32, %188 ], [ %194, %191 ]
  %197 = icmp ugt i64 %196, %158
  br i1 %197, label %200, label %198

198:                                              ; preds = %190, %195
  %199 = trunc i64 %158 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 8, i32 noundef %199, i32 noundef 1, ptr noundef nonnull @.str.1) #24
  br label %200

200:                                              ; preds = %198, %195, %187
  %201 = getelementptr inbounds %struct.BoundVert, ptr %159, i64 0, i32 8
  %202 = load i8, ptr %201, align 8, !tbaa !228
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call fastcc ptr @boundvert_rep_face(ptr noundef nonnull %159) #25
  br label %206

206:                                              ; preds = %200, %204
  %207 = phi ptr [ %205, %204 ], [ %78, %200 ]
  %208 = load ptr, ptr %5, align 8, !tbaa !107
  %209 = getelementptr inbounds ptr, ptr %208, i64 %158
  store ptr %207, ptr %209, align 8, !tbaa !107
  %210 = load ptr, ptr %159, align 8, !tbaa !137
  %211 = load ptr, ptr %67, align 8, !tbaa !134
  %212 = icmp eq ptr %210, %211
  br i1 %212, label %213, label %154, !llvm.loop !294

213:                                              ; preds = %206
  %214 = trunc i64 %179 to i32
  %215 = call fastcc ptr @boundvert_rep_face(ptr noundef %210) #25
  %216 = load ptr, ptr %4, align 8, !tbaa !107
  %217 = load ptr, ptr %5, align 8, !tbaa !107
  %218 = call fastcc ptr @bev_create_ngon(ptr noundef %1, ptr noundef %216, i32 noundef %214, ptr noundef %217, ptr noundef %215, i32 noundef %9, i8 noundef zeroext 1) #25
  %219 = load ptr, ptr %4, align 8
  %220 = icmp ne ptr %219, null
  %221 = icmp ne ptr %219, %6
  %222 = and i1 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %213
  %224 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  call void %224(ptr noundef nonnull %219) #24
  br label %225

225:                                              ; preds = %223, %213
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %226

226:                                              ; preds = %150, %146, %225
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_build_trifan(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !295 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @bevel_build_poly(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMFace, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !296
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !298
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  %14 = getelementptr inbounds %struct.BMFace, ptr %5, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !299
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %65

17:                                               ; preds = %7, %59
  %18 = phi ptr [ %62, %59 ], [ %14, %7 ]
  %19 = phi ptr [ %61, %59 ], [ %5, %7 ]
  %20 = phi ptr [ %60, %59 ], [ %11, %7 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !205
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !205
  %25 = call ptr @BM_face_split(ptr noundef %1, ptr noundef nonnull %19, ptr noundef %20, ptr noundef %24, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0) #24
  %26 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !299
  %28 = load i32, ptr %18, align 8, !tbaa !299
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %17
  %31 = load ptr, ptr %4, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !211
  %34 = icmp eq ptr %33, %13
  br i1 %34, label %59, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !205
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = icmp eq ptr %39, %13
  br i1 %40, label %59, label %50

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !211
  %44 = icmp eq ptr %43, %13
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %21, align 8, !tbaa !205
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !211
  %49 = icmp eq ptr %48, %13
  br i1 %49, label %59, label %50

50:                                               ; preds = %45, %35
  %51 = phi ptr [ %31, %35 ], [ %20, %45 ]
  %52 = phi ptr [ %25, %35 ], [ %19, %45 ]
  %53 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !298
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !211
  %57 = icmp eq ptr %56, %13
  %58 = select i1 %57, ptr %54, ptr %20
  br label %59

59:                                               ; preds = %50, %45, %35, %30, %41
  %60 = phi ptr [ %20, %41 ], [ %31, %30 ], [ %37, %35 ], [ %46, %45 ], [ %58, %50 ]
  %61 = phi ptr [ %19, %41 ], [ %25, %30 ], [ %25, %35 ], [ %19, %45 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %62 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !299
  %64 = icmp sgt i32 %63, 3
  br i1 %64, label %17, label %65, !llvm.loop !300

65:                                               ; preds = %59, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bevel_build_quadstrip(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !301 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @bevel_build_poly(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.BoundVert, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = tail call fastcc ptr @next_bev(ptr noundef %2, ptr noundef %14) #25
  %16 = getelementptr inbounds %struct.EdgeHalf, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !132
  %18 = getelementptr inbounds %struct.BoundVert, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = tail call ptr @BM_face_vert_share_loop(ptr noundef nonnull %5, ptr noundef %19) #24
  %21 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.BoundVert, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !153
  %25 = tail call ptr @BM_face_vert_share_loop(ptr noundef nonnull %5, ptr noundef %24) #24
  %26 = load ptr, ptr %8, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.VMesh, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !88
  %29 = getelementptr inbounds %struct.BMFace, ptr %5, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !299
  %31 = icmp sgt i32 %30, 4
  %32 = icmp sgt i32 %28, -1
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %71

34:                                               ; preds = %7
  %35 = add nuw nsw i32 %28, 1
  br label %36

36:                                               ; preds = %34, %57
  %37 = phi i32 [ %65, %57 ], [ %35, %34 ]
  %38 = phi ptr [ %62, %57 ], [ %25, %34 ]
  %39 = phi ptr [ %64, %57 ], [ %20, %34 ]
  %40 = phi ptr [ %58, %57 ], [ %5, %34 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %41 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !211
  %43 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !211
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !205
  %49 = icmp eq ptr %48, %38
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = call ptr @BM_face_split(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull %39, ptr noundef nonnull %38, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0) #24
  %52 = load ptr, ptr %4, align 8, !tbaa !107
  %53 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !210
  %55 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !205
  br label %57

57:                                               ; preds = %36, %46, %50
  %58 = phi ptr [ %54, %50 ], [ %40, %46 ], [ %40, %36 ]
  %59 = phi ptr [ %52, %50 ], [ %39, %46 ], [ %39, %36 ]
  %60 = phi ptr [ %56, %50 ], [ %38, %46 ], [ %38, %36 ]
  %61 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !205
  %63 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !298
  %65 = add nsw i32 %37, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %66 = getelementptr inbounds %struct.BMFace, ptr %58, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !299
  %68 = icmp sgt i32 %67, 4
  %69 = icmp sgt i32 %37, 1
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %36, label %71, !llvm.loop !302

71:                                               ; preds = %57, %7, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @boundvert_rep_face(ptr nocapture noundef readonly %0) unnamed_addr #18 !PGOFuncName !303 {
  %2 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct.EdgeHalf, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.EdgeHalf, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = icmp eq ptr %5, %9
  %11 = icmp eq ptr %5, null
  %12 = select i1 %11, ptr %9, ptr %5
  %13 = select i1 %10, ptr %5, ptr %12
  ret ptr %13
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !304 {
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #23
  %9 = tail call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #24
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %3, align 8, !tbaa !107
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %9, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %20, label %42

18:                                               ; preds = %7
  %19 = icmp eq ptr %9, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %4, %18 ], [ %14, %13 ]
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %9) #24
  %22 = icmp eq i8 %6, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %20
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %9) #25
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = icmp eq ptr %3, null
  br label %28

28:                                               ; preds = %26, %38
  %29 = phi i64 [ 0, %26 ], [ %39, %38 ]
  %30 = phi ptr [ %24, %26 ], [ %40, %38 ]
  br i1 %27, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds ptr, ptr %3, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  br label %34

34:                                               ; preds = %28, %31
  %35 = phi ptr [ %33, %31 ], [ %4, %28 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef nonnull %30, ptr noundef nonnull %35, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  br label %38

38:                                               ; preds = %37, %34
  %39 = add nuw i64 %29, 1
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #25
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !llvm.loop !305

42:                                               ; preds = %38, %13, %11
  %43 = icmp eq ptr %9, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %20, %23, %42
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %9, i8 noundef zeroext 16) #25
  br label %45

45:                                               ; preds = %18, %44, %42
  %46 = icmp sgt i32 %5, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = trunc i32 %5 to i16
  %49 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 5
  store i16 %48, ptr %49, align 8, !tbaa !306
  br label %50

50:                                               ; preds = %47, %45
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #23
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !PGOFuncName !307 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !70
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @pipe_test(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !308 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.VMesh, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !139
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, -2
  br i1 %9, label %81, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !83
  %13 = add i32 %12, -5
  %14 = icmp ult i32 %13, -2
  br i1 %14, label %81, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.VMesh, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !134
  br label %18

18:                                               ; preds = %53, %15
  %19 = phi ptr [ %17, %15 ], [ %54, %53 ]
  %20 = phi ptr [ %17, %15 ], [ %55, %53 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  %23 = getelementptr inbounds %struct.BoundVert, ptr %20, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.BoundVert, ptr %21, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !125
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BoundVert, ptr %22, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !125
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !80
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.EdgeHalf, ptr %24, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = call fastcc ptr @BM_edge_other_vert(ptr noundef %38, ptr noundef %35) #25
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %36, ptr noundef nonnull %40) #25
  %41 = load ptr, ptr %31, align 8, !tbaa !125
  %42 = getelementptr inbounds %struct.EdgeHalf, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = call fastcc ptr @BM_edge_other_vert(ptr noundef %43, ptr noundef %35) #25
  %45 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %45, ptr noundef nonnull %36) #25
  %46 = call fastcc float @normalize_v3(ptr noundef nonnull %2) #25
  %47 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #25
  %48 = call float @angle_normalized_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %49 = fcmp olt float %48, 0x3F1A36E2E0000000
  br i1 %49, label %57, label %50

50:                                               ; preds = %34
  %51 = load ptr, ptr %20, align 8, !tbaa !137
  %52 = load ptr, ptr %16, align 8, !tbaa !134
  br label %53

53:                                               ; preds = %50, %18, %26, %30
  %54 = phi ptr [ %52, %50 ], [ %19, %18 ], [ %19, %26 ], [ %19, %30 ]
  %55 = phi ptr [ %51, %50 ], [ %21, %18 ], [ %21, %26 ], [ %21, %30 ]
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %81, label %18, !llvm.loop !309

57:                                               ; preds = %34
  %58 = getelementptr inbounds %struct.BoundVert, ptr %20, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !125
  %60 = icmp eq ptr %59, null
  br i1 %60, label %81, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !82
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.EdgeHalf, ptr %63, i64 %66
  %68 = icmp eq i32 %65, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %61, %78
  %70 = phi ptr [ %79, %78 ], [ %63, %61 ]
  %71 = getelementptr inbounds %struct.EdgeHalf, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !96
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.BMFace, ptr %72, i64 0, i32 4
  %76 = call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %75) #25
  %77 = fcmp ogt float %76, 0x3EB0C6F7A0000000
  br i1 %77, label %81, label %78

78:                                               ; preds = %69, %74
  %79 = getelementptr inbounds %struct.EdgeHalf, ptr %70, i64 1
  %80 = icmp eq ptr %79, %67
  br i1 %80, label %81, label %69, !llvm.loop !310

81:                                               ; preds = %53, %74, %78, %61, %57, %1, %10
  %82 = phi ptr [ null, %10 ], [ null, %1 ], [ null, %57 ], [ %20, %61 ], [ null, %74 ], [ %20, %78 ], [ null, %53 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #23
  ret ptr %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pipe_adj_vmesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !311 {
  %4 = tail call fastcc ptr @adj_vmesh(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.VMesh, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.VMesh, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !88
  %11 = sdiv i32 %10, 2
  %12 = getelementptr inbounds %struct.BoundVert, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !151
  %14 = load ptr, ptr %2, align 8, !tbaa !137
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = getelementptr inbounds %struct.BoundVert, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !151
  %18 = icmp sgt i32 %8, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %3
  %20 = and i32 %10, 1
  %21 = icmp slt i32 %10, 2
  %22 = icmp slt i32 %10, -1
  %23 = icmp eq i32 %20, 0
  br label %24

24:                                               ; preds = %19, %54
  %25 = phi i32 [ 0, %19 ], [ %55, %54 ]
  br i1 %21, label %54, label %26

26:                                               ; preds = %24
  %27 = icmp eq i32 %25, 0
  %28 = icmp eq i32 %25, %13
  %29 = icmp eq i32 %25, %17
  br label %30

30:                                               ; preds = %26, %51
  %31 = phi i32 [ 1, %26 ], [ %52, %51 ]
  br i1 %22, label %51, label %32

32:                                               ; preds = %30
  %33 = icmp eq i32 %31, %11
  %34 = select i1 %27, i1 %33, i1 false
  %35 = select i1 %34, i1 true, i1 %28
  %36 = select i1 %35, i1 true, i1 %29
  br label %37

37:                                               ; preds = %32, %48
  %38 = phi i32 [ 0, %32 ], [ %49, %48 ]
  %39 = tail call fastcc zeroext i8 @is_canon(ptr noundef %4, i32 noundef %25, i32 noundef %31, i32 noundef %38) #25, !range !76
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, %11
  %43 = and i1 %23, %42
  %44 = select i1 %43, i1 %36, i1 false
  %45 = zext i1 %44 to i8
  %46 = tail call fastcc ptr @mesh_vert(ptr noundef %4, i32 noundef %25, i32 noundef %31, i32 noundef %38) #25
  %47 = getelementptr inbounds %struct.NewVert, ptr %46, i64 0, i32 1
  tail call fastcc void @snap_to_pipe_profile(ptr noundef nonnull %2, i8 noundef zeroext %45, ptr noundef nonnull %47) #25
  br label %48

48:                                               ; preds = %37, %41
  %49 = add nuw nsw i32 %38, 1
  %50 = icmp eq i32 %38, %11
  br i1 %50, label %51, label %37, !llvm.loop !312

51:                                               ; preds = %48, %30
  %52 = add nuw nsw i32 %31, 1
  %53 = icmp eq i32 %31, %11
  br i1 %53, label %54, label %30, !llvm.loop !313

54:                                               ; preds = %51, %24
  %55 = add nuw nsw i32 %25, 1
  %56 = icmp eq i32 %55, %8
  br i1 %56, label %57, label %24, !llvm.loop !314

57:                                               ; preds = %54, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tri_corner_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !315 {
  %3 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 7
  br label %12

12:                                               ; preds = %10, %22
  %13 = phi i64 [ 0, %10 ], [ %24, %22 ]
  %14 = phi float [ 0.000000e+00, %10 ], [ %23, %22 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !86
  %16 = getelementptr inbounds %struct.EdgeHalf, ptr %15, i64 %13, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  %18 = tail call float @BM_edge_calc_face_angle_signed_ex(ptr noundef %17, float noundef 0.000000e+00) #24
  %19 = fcmp ole float %18, 0x3FE921FB60000000
  %20 = fcmp oge float %18, 0x4002D97C80000000
  %21 = or i1 %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %12
  %23 = fadd float %14, %18
  %24 = add nuw nsw i64 %13, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %12, !llvm.loop !316

26:                                               ; preds = %22
  %27 = fadd float %23, 0xC012D97C80000000
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 6
  %30 = load float, ptr %29, align 4, !tbaa !44
  %31 = fcmp une float %30, 4.000000e+00
  %32 = fcmp ule float %28, 0x3FC921FB60000000
  %33 = select i1 %31, i1 true, i1 %32
  %34 = fcmp ule float %28, 0x3FE921FB60000000
  %35 = select i1 %33, i1 %34, i1 false
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %12, %26, %2, %6
  %38 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %36, %26 ], [ 0, %12 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tri_corner_adj_vmesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !317 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.BoundVert, ptr %11, i64 0, i32 2, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %12) #25
  %13 = load ptr, ptr %11, align 8, !tbaa !137
  %14 = getelementptr inbounds %struct.BoundVert, ptr %13, i64 0, i32 2, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %14) #25
  %15 = load ptr, ptr %13, align 8, !tbaa !137
  %16 = getelementptr inbounds %struct.BoundVert, ptr %15, i64 0, i32 2, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %16) #25
  %17 = load ptr, ptr %1, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  call fastcc void @make_unit_cube_map(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %6) #25
  %19 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !43
  %21 = sdiv i32 %20, 2
  %22 = tail call fastcc ptr @make_cube_corner_adj_vmesh(ptr noundef %0) #25
  %23 = icmp slt i32 %20, -1
  %24 = icmp slt i32 %20, 0
  %25 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  br label %26

26:                                               ; preds = %2, %41
  %27 = phi i32 [ 0, %2 ], [ %42, %41 ]
  br i1 %23, label %41, label %28

28:                                               ; preds = %26, %38
  %29 = phi i32 [ %39, %38 ], [ 0, %26 ]
  br i1 %24, label %38, label %30

30:                                               ; preds = %28, %30
  %31 = phi i32 [ %36, %30 ], [ 0, %28 ]
  %32 = call fastcc ptr @mesh_vert(ptr noundef %22, i32 noundef %27, i32 noundef %29, i32 noundef %31) #25
  %33 = getelementptr inbounds %struct.NewVert, ptr %32, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %33) #25
  store float 1.000000e+00, ptr %25, align 4, !tbaa !109
  call void @mul_m4_v4(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %34 = call fastcc ptr @mesh_vert(ptr noundef %22, i32 noundef %27, i32 noundef %29, i32 noundef %31) #25
  %35 = getelementptr inbounds %struct.NewVert, ptr %34, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %7) #25
  %36 = add nuw i32 %31, 1
  %37 = icmp eq i32 %31, %20
  br i1 %37, label %38, label %30, !llvm.loop !318

38:                                               ; preds = %30, %28
  %39 = add nuw nsw i32 %29, 1
  %40 = icmp eq i32 %29, %21
  br i1 %40, label %41, label %28, !llvm.loop !319

41:                                               ; preds = %38, %26
  %42 = add nuw nsw i32 %27, 1
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %26, !llvm.loop !320

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @adj_vmesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !321 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !88
  %14 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = tail call fastcc ptr @new_adj_vmesh(ptr noundef %7, i32 noundef %11, i32 noundef 2, ptr noundef %15) #25
  %17 = getelementptr inbounds %struct.VMesh, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  call fastcc void @zero_v3(ptr noundef nonnull %3) #25
  %19 = icmp sgt i32 %11, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2, %20
  %21 = phi i32 [ %30, %20 ], [ 0, %2 ]
  %22 = phi ptr [ %29, %20 ], [ %18, %2 ]
  %23 = tail call fastcc ptr @mesh_vert(ptr noundef %16, i32 noundef %21, i32 noundef 0, i32 noundef 0) #25
  %24 = getelementptr inbounds %struct.NewVert, ptr %23, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BoundVert, ptr %22, i64 0, i32 2, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %25) #25
  %26 = getelementptr inbounds %struct.BoundVert, ptr %22, i64 0, i32 7
  %27 = tail call fastcc ptr @mesh_vert(ptr noundef %16, i32 noundef %21, i32 noundef 0, i32 noundef 1) #25
  %28 = getelementptr inbounds %struct.NewVert, ptr %27, i64 0, i32 1
  tail call fastcc void @get_profile_point(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %28) #25
  call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %25) #25
  %29 = load ptr, ptr %22, align 8, !tbaa !137
  %30 = add nuw nsw i32 %21, 1
  %31 = icmp eq i32 %30, %11
  br i1 %31, label %32, label %20, !llvm.loop !322

32:                                               ; preds = %20, %2
  %33 = load ptr, ptr %1, align 8, !tbaa !80
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %34) #25
  %35 = sitofp i32 %11 to float
  %36 = fdiv float 1.000000e+00, %35
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %36) #25
  %37 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 6
  %38 = load float, ptr %37, align 4, !tbaa !44
  %39 = fcmp oeq float %38, 1.000000e+00
  br i1 %39, label %53, label %40

40:                                               ; preds = %32
  %41 = fcmp ogt float %38, 1.000000e+00
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 7
  %44 = load i8, ptr %43, align 8, !tbaa !45
  %45 = icmp eq i8 %44, 0
  %46 = fcmp oeq float %38, 4.000000e+00
  %47 = select i1 %46, float -2.000000e+00, float 5.000000e-01
  %48 = select i1 %45, float %47, float 2.500000e-01
  %49 = fdiv float %48, %38
  %50 = fsub float 1.000000e+00, %49
  br label %53

51:                                               ; preds = %40
  %52 = fadd float %38, -1.000000e+00
  br label %53

53:                                               ; preds = %32, %42, %51
  %54 = phi float [ %50, %42 ], [ %52, %51 ], [ 0.000000e+00, %32 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %55 = call fastcc float @len_squared_v3(ptr noundef nonnull %5) #25
  %56 = fcmp ogt float %55, 0x3D71979980000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %5, float noundef %54) #25
  br label %58

58:                                               ; preds = %57, %53
  %59 = tail call fastcc ptr @mesh_vert(ptr noundef %16, i32 noundef 0, i32 noundef 1, i32 noundef 1) #25
  %60 = getelementptr inbounds %struct.NewVert, ptr %59, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %3) #25
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %16) #25
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %16, %58 ], [ %63, %61 ]
  %63 = tail call fastcc ptr @cubic_subdiv(ptr noundef %0, ptr noundef %62) #25
  %64 = getelementptr inbounds %struct.VMesh, ptr %63, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !88
  %66 = icmp slt i32 %65, %13
  br i1 %66, label %61, label %67, !llvm.loop !323

67:                                               ; preds = %61
  %68 = icmp eq i32 %65, %13
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = tail call fastcc ptr @interp_vmesh(ptr noundef %0, ptr noundef nonnull %63, i32 noundef %13) #25
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %70, %69 ], [ %63, %67 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret ptr %72
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_canon(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !324 {
  %5 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !88
  %7 = sdiv i32 %6, 2
  %8 = and i32 %6, -2147483647
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = icmp sge i32 %7, %2
  %12 = icmp sge i32 %7, %3
  %13 = and i1 %11, %12
  br label %24

14:                                               ; preds = %4
  %15 = icmp sle i32 %7, %2
  %16 = icmp slt i32 %7, %3
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = icmp eq i32 %7, %2
  %20 = icmp eq i32 %7, %3
  %21 = and i1 %19, %20
  %22 = icmp eq i32 %1, 0
  %23 = and i1 %21, %22
  br label %24

24:                                               ; preds = %18, %14, %10
  %25 = phi i1 [ %13, %10 ], [ true, %14 ], [ %23, %18 ]
  %26 = zext i1 %25 to i8
  ret i8 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @vmesh_copy_equiv_verts(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !325 {
  %2 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !139
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !88
  %8 = sdiv i32 %7, 2
  %9 = icmp slt i32 %7, -1
  %10 = icmp slt i32 %7, 0
  br label %11

11:                                               ; preds = %5, %31
  %12 = phi i32 [ 0, %5 ], [ %32, %31 ]
  br i1 %9, label %31, label %13

13:                                               ; preds = %11, %28
  %14 = phi i32 [ %29, %28 ], [ 0, %11 ]
  br i1 %10, label %28, label %15

15:                                               ; preds = %13, %25
  %16 = phi i32 [ %26, %25 ], [ 0, %13 ]
  %17 = tail call fastcc zeroext i8 @is_canon(ptr noundef %0, i32 noundef %12, i32 noundef %14, i32 noundef %16) #25, !range !76
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @mesh_vert(ptr noundef %0, i32 noundef %12, i32 noundef %14, i32 noundef %16) #25
  %21 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %0, i32 noundef %12, i32 noundef %14, i32 noundef %16) #25
  %22 = getelementptr inbounds %struct.NewVert, ptr %20, i64 0, i32 1
  %23 = getelementptr inbounds %struct.NewVert, ptr %21, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %23) #25
  %24 = load ptr, ptr %21, align 8, !tbaa !152
  store ptr %24, ptr %20, align 8, !tbaa !152
  br label %25

25:                                               ; preds = %15, %19
  %26 = add nuw i32 %16, 1
  %27 = icmp eq i32 %16, %7
  br i1 %27, label %28, label %15, !llvm.loop !326

28:                                               ; preds = %25, %13
  %29 = add nuw nsw i32 %14, 1
  %30 = icmp eq i32 %14, %8
  br i1 %30, label %31, label %13, !llvm.loop !327

31:                                               ; preds = %28, %11
  %32 = add nuw nsw i32 %12, 1
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %34, label %11, !llvm.loop !328

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bev_create_quad_tri_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9) unnamed_addr #0 !PGOFuncName !329 {
  %11 = alloca [4 x ptr], align 16
  %12 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #23
  store ptr %1, ptr %11, align 16, !tbaa !107
  %13 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %2, ptr %13, align 8, !tbaa !107
  %14 = getelementptr inbounds ptr, ptr %11, i64 2
  store ptr %3, ptr %14, align 16, !tbaa !107
  %15 = getelementptr inbounds ptr, ptr %11, i64 3
  store ptr %4, ptr %15, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #23
  store ptr %5, ptr %12, align 16, !tbaa !107
  %16 = getelementptr inbounds ptr, ptr %12, i64 1
  store ptr %6, ptr %16, align 8, !tbaa !107
  %17 = getelementptr inbounds ptr, ptr %12, i64 2
  store ptr %7, ptr %17, align 16, !tbaa !107
  %18 = getelementptr inbounds ptr, ptr %12, i64 3
  store ptr %8, ptr %18, align 8, !tbaa !107
  %19 = icmp eq ptr %4, null
  %20 = select i1 %19, i32 3, i32 4
  %21 = call fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %20, ptr noundef nonnull %12, ptr noundef %5, i32 noundef %9, i8 noundef zeroext 1) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !330 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 16) #24
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  call fastcc void @zero_v2(ptr noundef nonnull %4) #25
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 6, ptr noundef %1) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = sext i32 %6 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ 0, %11 ], [ %18, %13 ]
  %15 = phi ptr [ %9, %11 ], [ %19, %13 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !218
  %17 = getelementptr inbounds i8, ptr %16, i64 %12
  call fastcc void @add_v2_v2(ptr noundef nonnull %4, ptr noundef %17) #25
  %18 = add nuw nsw i32 %14, 1
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !331

21:                                               ; preds = %13
  %22 = icmp eq i32 %14, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %21
  %24 = sitofp i32 %18 to float
  %25 = fdiv float 1.000000e+00, %24
  call fastcc void @mul_v2_fl(ptr noundef nonnull %4, float noundef %25) #25
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 6, ptr noundef %1) #25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = sext i32 %6 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi ptr [ %26, %28 ], [ %34, %30 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !218
  %33 = getelementptr inbounds i8, ptr %32, i64 %29
  call fastcc void @copy_v2_v2(ptr noundef %33, ptr noundef nonnull %4) #25
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30, !llvm.loop !332

36:                                               ; preds = %30, %8, %23, %21, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @snap_to_pipe_profile(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !333 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #23
  %15 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !125
  %18 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 7, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %18) #25
  %19 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 7, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %19) #25
  %20 = getelementptr inbounds %struct.EdgeHalf, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %24, ptr noundef nonnull %27) #25
  call void @plane_from_point_normal_v3(ptr noundef nonnull %10, ptr noundef %2, ptr noundef nonnull %6) #24
  call void @closest_to_plane_v3(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %4) #24
  call void @closest_to_plane_v3(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %5) #24
  %28 = getelementptr inbounds %struct.BoundVert, ptr %0, i64 0, i32 7, i32 2
  call void @closest_to_plane_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %28) #24
  %29 = call fastcc zeroext i8 @make_unit_square_map(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %11) #25, !range !76
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %11) #24
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  call void @mul_v3_m4v3(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef %2) #24
  %35 = load float, ptr %15, align 8, !tbaa !233
  call fastcc void @snap_to_superellipsoid(ptr noundef nonnull %13, float noundef %35, i8 noundef zeroext %1) #25
  call void @mul_v3_m4v3(ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %13) #24
  br label %37

36:                                               ; preds = %3
  call void @closest_to_line_segment_v3(ptr noundef nonnull %13, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi ptr [ %14, %34 ], [ %13, %36 ]
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %38) #25
  br label %39

39:                                               ; preds = %37, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @closest_to_plane_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @snap_to_superellipsoid(ptr nocapture noundef %0, float noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !PGOFuncName !334 {
  %4 = fcmp oeq float %1, 2.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call fastcc float @normalize_v3(ptr noundef %0) #25
  br label %78

7:                                                ; preds = %3
  %8 = load float, ptr %0, align 4, !tbaa !109
  %9 = tail call fastcc float @max_ff(float noundef 0.000000e+00, float noundef %8) #25
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !109
  %12 = tail call fastcc float @max_ff(float noundef 0.000000e+00, float noundef %11) #25
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !109
  %15 = tail call fastcc float @max_ff(float noundef 0.000000e+00, float noundef %14) #25
  %16 = fcmp oeq float %1, 4.000000e+00
  %17 = fcmp oeq float %1, 0.000000e+00
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %7
  %20 = tail call fastcc float @min_ff(float noundef %9) #25
  %21 = tail call fastcc float @min_ff(float noundef %12) #25
  br i1 %16, label %22, label %32

22:                                               ; preds = %19
  %23 = fsub float 1.000000e+00, %20
  %24 = fsub float 1.000000e+00, %21
  %25 = fcmp olt float %23, %24
  %26 = icmp eq i8 %2, 0
  br i1 %25, label %27, label %30

27:                                               ; preds = %22
  %28 = select i1 %26, float %21, float 1.000000e+00
  %29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %28, i64 0
  br label %75

30:                                               ; preds = %22
  %31 = select i1 %26, float %20, float 1.000000e+00
  br label %75

32:                                               ; preds = %19
  %33 = fcmp olt float %20, %21
  %34 = icmp eq i8 %2, 0
  br i1 %33, label %35, label %38

35:                                               ; preds = %32
  %36 = select i1 %34, float %21, float 0.000000e+00
  %37 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %36, i64 0
  br label %75

38:                                               ; preds = %32
  %39 = select i1 %34, float %20, float 0.000000e+00
  br label %75

40:                                               ; preds = %7
  %41 = fdiv float 1.000000e+00, %1
  %42 = fcmp oeq float %9, 0.000000e+00
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = fcmp oeq float %12, 0.000000e+00
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = tail call float @powf(float noundef %15, float noundef %41) #24
  %47 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %46, i64 1
  br label %75

48:                                               ; preds = %43
  %49 = fdiv float %15, %12
  %50 = tail call float @powf(float noundef %49, float noundef %1) #24
  %51 = fadd float %50, 1.000000e+00
  %52 = fdiv float 1.000000e+00, %51
  %53 = tail call float @powf(float noundef %52, float noundef %41) #24
  %54 = fmul float %15, %53
  %55 = fdiv float %54, %12
  %56 = insertelement <2 x float> poison, float %53, i64 0
  %57 = insertelement <2 x float> %56, float %55, i64 1
  br label %75

58:                                               ; preds = %40
  %59 = fdiv float %12, %9
  %60 = tail call float @powf(float noundef %59, float noundef %1) #24
  %61 = fadd float %60, 1.000000e+00
  %62 = fdiv float %15, %9
  %63 = tail call float @powf(float noundef %62, float noundef %1) #24
  %64 = fadd float %61, %63
  %65 = fdiv float 1.000000e+00, %64
  %66 = tail call float @powf(float noundef %65, float noundef %41) #24
  %67 = insertelement <2 x float> poison, float %12, i64 0
  %68 = insertelement <2 x float> %67, float %15, i64 1
  %69 = insertelement <2 x float> poison, float %66, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = fmul <2 x float> %68, %70
  %72 = insertelement <2 x float> poison, float %9, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = fdiv <2 x float> %71, %73
  br label %75

75:                                               ; preds = %58, %48, %45, %30, %27, %38, %35
  %76 = phi float [ 1.000000e+00, %27 ], [ %31, %30 ], [ 0.000000e+00, %35 ], [ %39, %38 ], [ 0.000000e+00, %45 ], [ 0.000000e+00, %48 ], [ %66, %58 ]
  %77 = phi <2 x float> [ %29, %27 ], [ <float 1.000000e+00, float 0.000000e+00>, %30 ], [ %37, %35 ], [ zeroinitializer, %38 ], [ %47, %45 ], [ %57, %48 ], [ %74, %58 ]
  store float %76, ptr %0, align 4, !tbaa !109
  store <2 x float> %77, ptr %10, align 4, !tbaa !109
  br label %78

78:                                               ; preds = %75, %5
  ret void
}

; Function Attrs: optsize
declare void @closest_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #12 !PGOFuncName !335 {
  %2 = fcmp ogt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare float @BM_edge_calc_face_angle_signed_ex(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @make_unit_cube_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #10 !PGOFuncName !336 {
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef %0) #25
  tail call fastcc void @sub_v3_v3(ptr noundef %4, ptr noundef %1) #25
  tail call fastcc void @sub_v3_v3(ptr noundef %4, ptr noundef %2) #25
  tail call fastcc void @add_v3_v3(ptr noundef %4, ptr noundef %3) #25
  tail call fastcc void @mul_v3_fl(ptr noundef %4, float noundef 5.000000e-01) #25
  %6 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 0.000000e+00, ptr %6, align 4, !tbaa !109
  %7 = getelementptr inbounds [4 x float], ptr %4, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #25
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef %0) #25
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef %2) #25
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef %3) #25
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef 5.000000e-01) #25
  %8 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 3
  store float 0.000000e+00, ptr %8, align 4, !tbaa !109
  %9 = getelementptr inbounds [4 x float], ptr %4, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %2) #25
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %9, ptr noundef %0) #25
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %9, ptr noundef %1) #25
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %3) #25
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef 5.000000e-01) #25
  %10 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 3
  store float 0.000000e+00, ptr %10, align 4, !tbaa !109
  %11 = getelementptr inbounds [4 x float], ptr %4, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %0) #25
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef %1) #25
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef %2) #25
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %11, ptr noundef %3) #25
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef 5.000000e-01) #25
  %12 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 3
  store float 1.000000e+00, ptr %12, align 4, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_cube_corner_adj_vmesh(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !337 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  %10 = fcmp oeq float %9, 4.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call fastcc ptr @make_cube_corner_straight(ptr noundef %5, i32 noundef %7) #25
  br label %103

13:                                               ; preds = %1
  %14 = tail call fastcc ptr @new_adj_vmesh(ptr noundef %5, i32 noundef 3, i32 noundef 2, ptr noundef null) #25
  %15 = getelementptr inbounds %struct.VMesh, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !139
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %20, %16 ]
  call fastcc void @zero_v3(ptr noundef nonnull %2) #25
  %18 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %17
  store float 1.000000e+00, ptr %18, align 4, !tbaa !109
  %19 = call fastcc ptr @add_new_bound_vert(ptr noundef %5, ptr noundef %14, ptr noundef nonnull %2) #25
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %16, !llvm.loop !338

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.VMesh, ptr %14, i64 0, i32 1
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %29, %24 ]
  %26 = phi ptr [ %23, %22 ], [ %27, %24 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %25
  store float 1.000000e+00, ptr %28, align 4, !tbaa !109
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, 3
  %31 = and i64 %29, 4294967295
  %32 = select i1 %30, i64 0, i64 %31
  %33 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %32
  store float 1.000000e+00, ptr %33, align 4, !tbaa !109
  %34 = icmp eq i64 %25, 0
  %35 = add nuw i64 %25, 4294967295
  %36 = and i64 %35, 4294967295
  %37 = select i1 %34, i64 2, i64 %36
  %38 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %37
  store float 0.000000e+00, ptr %38, align 4, !tbaa !109
  %39 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 7
  store float %9, ptr %39, align 8, !tbaa !157
  %40 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 7, i32 1
  %41 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 2, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %41) #25
  %42 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 7, i32 3
  %43 = load ptr, ptr %27, align 8, !tbaa !137
  %44 = getelementptr inbounds %struct.BoundVert, ptr %43, i64 0, i32 2, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %44) #25
  %45 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 7, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %3) #25
  %46 = trunc i64 %25 to i32
  %47 = tail call fastcc ptr @mesh_vert(ptr noundef %14, i32 noundef %46, i32 noundef 0, i32 noundef 0) #25
  %48 = getelementptr inbounds %struct.NewVert, ptr %47, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef nonnull %40) #25
  %49 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 7, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %40) #25
  %50 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 7, i32 4
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %40, ptr noundef nonnull %42) #25
  %51 = getelementptr inbounds %struct.BoundVert, ptr %27, i64 0, i32 7, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %51, ptr noundef nonnull %50) #25
  tail call fastcc void @calculate_profile(ptr noundef %0, ptr noundef nonnull %27) #25
  %52 = tail call fastcc ptr @mesh_vert(ptr noundef %14, i32 noundef %46, i32 noundef 0, i32 noundef 1) #25
  %53 = getelementptr inbounds %struct.NewVert, ptr %52, i64 0, i32 1
  tail call fastcc void @get_profile_point(ptr noundef %0, ptr noundef nonnull %39, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %53) #25
  %54 = icmp eq i64 %29, 3
  br i1 %54, label %55, label %24, !llvm.loop !339

55:                                               ; preds = %24
  store <2 x float> <float 0x3FE279A740000000, float 0x3FE279A740000000>, ptr %2, align 8, !tbaa !109
  %56 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x3FE279A740000000, ptr %56, align 8, !tbaa !109
  %57 = icmp sgt i32 %7, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = fcmp ogt float %9, 1.500000e+00
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = fcmp olt float %9, 7.500000e-01
  br i1 %61, label %62, label %64

62:                                               ; preds = %60, %58
  %63 = phi float [ 0x3FF6666660000000, %58 ], [ 0x3FE3333340000000, %60 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %2, float noundef %63) #25
  br label %64

64:                                               ; preds = %62, %60, %55
  %65 = tail call fastcc ptr @mesh_vert(ptr noundef %14, i32 noundef 0, i32 noundef 1, i32 noundef 1) #25
  %66 = getelementptr inbounds %struct.NewVert, ptr %65, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %66, ptr noundef nonnull %2) #25
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %14) #25
  %67 = getelementptr inbounds %struct.VMesh, ptr %14, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !88
  %69 = icmp slt i32 %68, %7
  br i1 %69, label %70, label %76

70:                                               ; preds = %64, %70
  %71 = phi ptr [ %72, %70 ], [ %14, %64 ]
  %72 = tail call fastcc ptr @cubic_subdiv(ptr noundef %0, ptr noundef nonnull %71) #25
  %73 = getelementptr inbounds %struct.VMesh, ptr %72, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !88
  %75 = icmp slt i32 %74, %7
  br i1 %75, label %70, label %76, !llvm.loop !340

76:                                               ; preds = %70, %64
  %77 = phi ptr [ %14, %64 ], [ %72, %70 ]
  %78 = phi i32 [ %68, %64 ], [ %74, %70 ]
  %79 = icmp eq i32 %78, %7
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call fastcc ptr @interp_vmesh(ptr noundef %0, ptr noundef nonnull %77, i32 noundef %7) #25
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi ptr [ %81, %80 ], [ %77, %76 ]
  %84 = sdiv i32 %7, 2
  %85 = icmp slt i32 %7, -1
  %86 = icmp slt i32 %7, 0
  br label %87

87:                                               ; preds = %82, %100
  %88 = phi i32 [ 0, %82 ], [ %101, %100 ]
  br i1 %85, label %100, label %89

89:                                               ; preds = %87, %97
  %90 = phi i32 [ %98, %97 ], [ 0, %87 ]
  br i1 %86, label %97, label %91

91:                                               ; preds = %89, %91
  %92 = phi i32 [ %95, %91 ], [ 0, %89 ]
  %93 = tail call fastcc ptr @mesh_vert(ptr noundef %83, i32 noundef %88, i32 noundef %90, i32 noundef %92) #25
  %94 = getelementptr inbounds %struct.NewVert, ptr %93, i64 0, i32 1
  tail call fastcc void @snap_to_superellipsoid(ptr noundef nonnull %94, float noundef %9, i8 noundef zeroext 0) #25
  %95 = add nuw i32 %92, 1
  %96 = icmp eq i32 %92, %7
  br i1 %96, label %97, label %91, !llvm.loop !341

97:                                               ; preds = %91, %89
  %98 = add nuw nsw i32 %90, 1
  %99 = icmp eq i32 %90, %84
  br i1 %99, label %100, label %89, !llvm.loop !342

100:                                              ; preds = %97, %87
  %101 = add nuw nsw i32 %88, 1
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %87, !llvm.loop !343

103:                                              ; preds = %100, %11
  %104 = phi ptr [ %12, %11 ], [ %83, %100 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #23
  ret ptr %104
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !344 {
  %3 = load float, ptr %1, align 4, !tbaa !109
  %4 = load float, ptr %0, align 4, !tbaa !109
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !109
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !109
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !109
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !109
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !109
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !345 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !109
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !109
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_cube_corner_straight(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !346 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  %4 = tail call fastcc ptr @new_adj_vmesh(ptr noundef %0, i32 noundef 3, i32 noundef %1, ptr noundef null) #25
  %5 = getelementptr inbounds %struct.VMesh, ptr %4, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !139
  br label %10

6:                                                ; preds = %10
  %7 = sdiv i32 %1, 2
  %8 = icmp slt i32 %1, -1
  %9 = sitofp i32 %1 to float
  br label %16

10:                                               ; preds = %2, %10
  %11 = phi i64 [ 0, %2 ], [ %14, %10 ]
  call fastcc void @zero_v3(ptr noundef nonnull %3) #25
  %12 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %11
  store float 1.000000e+00, ptr %12, align 4, !tbaa !109
  %13 = call fastcc ptr @add_new_bound_vert(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3) #25
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %6, label %10, !llvm.loop !347

16:                                               ; preds = %6, %54
  %17 = phi i64 [ 0, %6 ], [ %55, %54 ]
  br i1 %8, label %18, label %20

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %17, 1
  br label %54

20:                                               ; preds = %16
  %21 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %17
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, 3
  %24 = and i64 %22, 4294967295
  %25 = select i1 %23, i64 0, i64 %24
  %26 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %25
  %27 = trunc i64 %17 to i32
  %28 = add i32 %27, 2
  %29 = urem i32 %28, 3
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %30
  %32 = trunc i64 %17 to i32
  br label %33

33:                                               ; preds = %20, %51
  %34 = phi i32 [ 0, %20 ], [ %52, %51 ]
  %35 = sitofp i32 %34 to float
  %36 = fmul float %35, 2.000000e+00
  %37 = fdiv float %36, %9
  br label %38

38:                                               ; preds = %33, %48
  %39 = phi i32 [ 0, %33 ], [ %49, %48 ]
  %40 = tail call fastcc zeroext i8 @is_canon(ptr noundef %4, i32 noundef %32, i32 noundef %34, i32 noundef %39) #25, !range !76
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  store float 1.000000e+00, ptr %21, align 4, !tbaa !109
  %43 = sitofp i32 %39 to float
  %44 = fmul float %43, 2.000000e+00
  %45 = fdiv float %44, %9
  store float %45, ptr %26, align 4, !tbaa !109
  store float %37, ptr %31, align 4, !tbaa !109
  %46 = tail call fastcc ptr @mesh_vert(ptr noundef %4, i32 noundef %32, i32 noundef %34, i32 noundef %39) #25
  %47 = getelementptr inbounds %struct.NewVert, ptr %46, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %3) #25
  br label %48

48:                                               ; preds = %38, %42
  %49 = add nuw nsw i32 %39, 1
  %50 = icmp eq i32 %39, %7
  br i1 %50, label %51, label %38, !llvm.loop !348

51:                                               ; preds = %48
  %52 = add nuw nsw i32 %34, 1
  %53 = icmp eq i32 %34, %7
  br i1 %53, label %54, label %33, !llvm.loop !349

54:                                               ; preds = %51, %18
  %55 = phi i64 [ %19, %18 ], [ %22, %51 ]
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %16, !llvm.loop !350

57:                                               ; preds = %54
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %4) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_adj_vmesh(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !351 {
  %5 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef 32) #24
  %6 = getelementptr inbounds %struct.VMesh, ptr %5, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !139
  %7 = getelementptr inbounds %struct.VMesh, ptr %5, i64 0, i32 3
  store i32 %2, ptr %7, align 4, !tbaa !88
  %8 = getelementptr inbounds %struct.VMesh, ptr %5, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !134
  %9 = sdiv i32 %2, 2
  %10 = add nsw i32 %9, 1
  %11 = add nsw i32 %2, 1
  %12 = mul i32 %11, %1
  %13 = mul i32 %12, %10
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, 24
  %16 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef %15) #24
  store ptr %16, ptr %5, align 8, !tbaa !150
  %17 = getelementptr inbounds %struct.VMesh, ptr %5, i64 0, i32 4
  store i32 2, ptr %17, align 8, !tbaa !133
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cubic_subdiv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !352 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !88
  %11 = sdiv i32 %10, 2
  %12 = shl nsw i32 %10, 1
  %13 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  %17 = tail call fastcc ptr @new_adj_vmesh(ptr noundef %14, i32 noundef %8, i32 noundef %12, ptr noundef %16) #25
  %18 = icmp sgt i32 %8, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.VMesh, ptr %17, i64 0, i32 1
  br label %71

21:                                               ; preds = %2
  %22 = icmp sgt i32 %10, 1
  br label %23

23:                                               ; preds = %21, %43
  %24 = phi i32 [ 0, %21 ], [ %44, %43 ]
  %25 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %24, i32 noundef 0, i32 noundef 0) #25
  %26 = getelementptr inbounds %struct.NewVert, ptr %25, i64 0, i32 1
  %27 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %24, i32 noundef 0, i32 noundef 0) #25
  %28 = getelementptr inbounds %struct.NewVert, ptr %27, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %28) #25
  br i1 %22, label %29, label %43

29:                                               ; preds = %23, %29
  %30 = phi i32 [ %36, %29 ], [ 1, %23 ]
  %31 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %24, i32 noundef 0, i32 noundef %30) #25
  %32 = getelementptr inbounds %struct.NewVert, ptr %31, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %32) #25
  %33 = add nsw i32 %30, -1
  %34 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %24, i32 noundef 0, i32 noundef %33) #25
  %35 = getelementptr inbounds %struct.NewVert, ptr %34, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %35) #25
  %36 = add nuw nsw i32 %30, 1
  %37 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %24, i32 noundef 0, i32 noundef %36) #25
  %38 = getelementptr inbounds %struct.NewVert, ptr %37, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %38) #25
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %3, float noundef -2.000000e+00) #25
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %6, float noundef 0xBFC5555560000000) #25
  %39 = shl nuw nsw i32 %30, 1
  %40 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %24, i32 noundef 0, i32 noundef %39) #25
  %41 = getelementptr inbounds %struct.NewVert, ptr %40, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %3) #25
  %42 = icmp eq i32 %36, %10
  br i1 %42, label %43, label %29, !llvm.loop !353

43:                                               ; preds = %29, %23
  %44 = add nuw nsw i32 %24, 1
  %45 = icmp eq i32 %44, %8
  br i1 %45, label %46, label %23, !llvm.loop !354

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.VMesh, ptr %17, i64 0, i32 1
  br i1 %18, label %48, label %71

48:                                               ; preds = %46
  %49 = icmp sgt i32 %10, 0
  br label %50

50:                                               ; preds = %48, %68
  %51 = phi ptr [ %47, %48 ], [ %53, %68 ]
  %52 = phi i32 [ 0, %48 ], [ %69, %68 ]
  %53 = load ptr, ptr %51, align 8, !tbaa !107
  br i1 %49, label %54, label %68

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.BoundVert, ptr %53, i64 0, i32 7
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i32 [ 1, %54 ], [ %66, %56 ]
  call fastcc void @get_profile_point(ptr noundef %0, ptr noundef nonnull %55, i32 noundef %57, i32 noundef %12, ptr noundef nonnull %3) #25
  %58 = add nsw i32 %57, -1
  %59 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %52, i32 noundef 0, i32 noundef %58) #25
  %60 = getelementptr inbounds %struct.NewVert, ptr %59, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %60) #25
  %61 = add nuw nsw i32 %57, 1
  %62 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %52, i32 noundef 0, i32 noundef %61) #25
  %63 = getelementptr inbounds %struct.NewVert, ptr %62, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %63) #25
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %3, float noundef -2.000000e+00) #25
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %6, float noundef 0xBFC5555560000000) #25
  %64 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %52, i32 noundef 0, i32 noundef %57) #25
  %65 = getelementptr inbounds %struct.NewVert, ptr %64, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %65, ptr noundef nonnull %3) #25
  %66 = add nuw nsw i32 %57, 2
  %67 = icmp slt i32 %66, %12
  br i1 %67, label %56, label %68, !llvm.loop !355

68:                                               ; preds = %56, %50
  %69 = add nuw nsw i32 %52, 1
  %70 = icmp eq i32 %69, %8
  br i1 %70, label %73, label %50, !llvm.loop !356

71:                                               ; preds = %19, %46
  %72 = phi ptr [ %47, %46 ], [ %20, %19 ]
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %17) #25
  br label %90

73:                                               ; preds = %68
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %17) #25
  br i1 %18, label %74, label %90

74:                                               ; preds = %73
  %75 = icmp sgt i32 %10, 0
  br label %76

76:                                               ; preds = %74, %87
  %77 = phi i32 [ 0, %74 ], [ %88, %87 ]
  br i1 %75, label %78, label %87

78:                                               ; preds = %76, %78
  %79 = phi i32 [ %85, %78 ], [ 0, %76 ]
  %80 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %77, i32 noundef 0, i32 noundef %79) #25
  %81 = getelementptr inbounds %struct.NewVert, ptr %80, i64 0, i32 1
  %82 = shl nuw nsw i32 %79, 1
  %83 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %77, i32 noundef 0, i32 noundef %82) #25
  %84 = getelementptr inbounds %struct.NewVert, ptr %83, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %81, ptr noundef nonnull %84) #25
  %85 = add nuw nsw i32 %79, 1
  %86 = icmp eq i32 %85, %10
  br i1 %86, label %87, label %78, !llvm.loop !357

87:                                               ; preds = %78, %76
  %88 = add nuw nsw i32 %77, 1
  %89 = icmp eq i32 %88, %8
  br i1 %89, label %92, label %76, !llvm.loop !358

90:                                               ; preds = %71, %73
  %91 = phi ptr [ %47, %73 ], [ %72, %71 ]
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %1) #25
  br label %216

92:                                               ; preds = %87
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %1) #25
  br i1 %18, label %93, label %216

93:                                               ; preds = %92
  %94 = icmp sgt i32 %10, 1
  br label %95

95:                                               ; preds = %93, %120
  %96 = phi i32 [ 0, %93 ], [ %121, %120 ]
  br i1 %94, label %101, label %120

97:                                               ; preds = %120
  br i1 %18, label %98, label %216

98:                                               ; preds = %97
  %99 = icmp sgt i32 %10, 1
  %100 = icmp slt i32 %10, 2
  br label %123

101:                                              ; preds = %95, %118
  %102 = phi i32 [ %103, %118 ], [ 0, %95 ]
  %103 = add nuw nsw i32 %102, 1
  %104 = shl nuw nsw i32 %102, 1
  %105 = or disjoint i32 %104, 1
  br label %106

106:                                              ; preds = %101, %106
  %107 = phi i32 [ 0, %101 ], [ %109, %106 ]
  %108 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %96, i32 noundef %102, i32 noundef %107) #25
  %109 = add nuw nsw i32 %107, 1
  %110 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %96, i32 noundef %102, i32 noundef %109) #25
  %111 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %96, i32 noundef %103, i32 noundef %107) #25
  %112 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %96, i32 noundef %103, i32 noundef %109) #25
  call fastcc void @avg4(ptr noundef nonnull %3, ptr noundef %108, ptr noundef %110, ptr noundef %111, ptr noundef %112) #25
  %113 = shl nuw nsw i32 %107, 1
  %114 = or disjoint i32 %113, 1
  %115 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %96, i32 noundef %105, i32 noundef %114) #25
  %116 = getelementptr inbounds %struct.NewVert, ptr %115, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %116, ptr noundef nonnull %3) #25
  %117 = icmp eq i32 %109, %11
  br i1 %117, label %118, label %106, !llvm.loop !359

118:                                              ; preds = %106
  %119 = icmp eq i32 %103, %11
  br i1 %119, label %120, label %101, !llvm.loop !360

120:                                              ; preds = %118, %95
  %121 = add nuw nsw i32 %96, 1
  %122 = icmp eq i32 %121, %8
  br i1 %122, label %97, label %95, !llvm.loop !361

123:                                              ; preds = %98, %151
  %124 = phi i32 [ 0, %98 ], [ %152, %151 ]
  br i1 %99, label %130, label %151

125:                                              ; preds = %151
  br i1 %18, label %126, label %216

126:                                              ; preds = %125
  %127 = icmp sgt i32 %10, 3
  %128 = icmp sgt i32 %10, 1
  %129 = tail call i32 @llvm.smax.i32(i32 %11, i32 2)
  br label %154

130:                                              ; preds = %123, %149
  %131 = phi i32 [ %132, %149 ], [ 0, %123 ]
  %132 = add nuw nsw i32 %131, 1
  br i1 %100, label %149, label %133

133:                                              ; preds = %130
  %134 = shl nuw nsw i32 %131, 1
  %135 = or disjoint i32 %134, 1
  br label %136

136:                                              ; preds = %133, %136
  %137 = phi i32 [ 1, %133 ], [ %147, %136 ]
  %138 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %124, i32 noundef %131, i32 noundef %137) #25
  %139 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %124, i32 noundef %132, i32 noundef %137) #25
  %140 = shl nuw nsw i32 %137, 1
  %141 = add nsw i32 %140, -1
  %142 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %124, i32 noundef %135, i32 noundef %141) #25
  %143 = or disjoint i32 %140, 1
  %144 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %124, i32 noundef %135, i32 noundef %143) #25
  call fastcc void @avg4(ptr noundef nonnull %3, ptr noundef %138, ptr noundef %139, ptr noundef %142, ptr noundef %144) #25
  %145 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %124, i32 noundef %135, i32 noundef %140) #25
  %146 = getelementptr inbounds %struct.NewVert, ptr %145, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %146, ptr noundef nonnull %3) #25
  %147 = add nuw nsw i32 %137, 1
  %148 = icmp eq i32 %137, %11
  br i1 %148, label %149, label %136, !llvm.loop !362

149:                                              ; preds = %136, %130
  %150 = icmp eq i32 %132, %11
  br i1 %150, label %151, label %130, !llvm.loop !363

151:                                              ; preds = %149, %123
  %152 = add nuw nsw i32 %124, 1
  %153 = icmp eq i32 %152, %8
  br i1 %153, label %125, label %123, !llvm.loop !364

154:                                              ; preds = %126, %181
  %155 = phi i32 [ 0, %126 ], [ %182, %181 ]
  br i1 %127, label %160, label %181

156:                                              ; preds = %181
  br i1 %18, label %157, label %216

157:                                              ; preds = %156
  %158 = icmp sgt i32 %10, 3
  %159 = tail call i32 @llvm.smax.i32(i32 %11, i32 2)
  br label %184

160:                                              ; preds = %154, %178
  %161 = phi i32 [ %179, %178 ], [ 1, %154 ]
  br i1 %128, label %162, label %178

162:                                              ; preds = %160
  %163 = shl nuw nsw i32 %161, 1
  %164 = add nsw i32 %163, -1
  %165 = or disjoint i32 %163, 1
  br label %166

166:                                              ; preds = %162, %166
  %167 = phi i32 [ 0, %162 ], [ %169, %166 ]
  %168 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %155, i32 noundef %161, i32 noundef %167) #25
  %169 = add nuw nsw i32 %167, 1
  %170 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %155, i32 noundef %161, i32 noundef %169) #25
  %171 = shl nuw nsw i32 %167, 1
  %172 = or disjoint i32 %171, 1
  %173 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %155, i32 noundef %164, i32 noundef %172) #25
  %174 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %155, i32 noundef %165, i32 noundef %172) #25
  call fastcc void @avg4(ptr noundef nonnull %3, ptr noundef %168, ptr noundef %170, ptr noundef %173, ptr noundef %174) #25
  %175 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %155, i32 noundef %163, i32 noundef %172) #25
  %176 = getelementptr inbounds %struct.NewVert, ptr %175, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %176, ptr noundef nonnull %3) #25
  %177 = icmp eq i32 %169, %11
  br i1 %177, label %178, label %166, !llvm.loop !365

178:                                              ; preds = %166, %160
  %179 = add nuw nsw i32 %161, 1
  %180 = icmp eq i32 %179, %129
  br i1 %180, label %181, label %160, !llvm.loop !366

181:                                              ; preds = %178, %154
  %182 = add nuw nsw i32 %155, 1
  %183 = icmp eq i32 %182, %8
  br i1 %183, label %156, label %154, !llvm.loop !367

184:                                              ; preds = %157, %213
  %185 = phi i32 [ 0, %157 ], [ %214, %213 ]
  br i1 %158, label %186, label %213

186:                                              ; preds = %184, %210
  %187 = phi i32 [ %211, %210 ], [ 1, %184 ]
  %188 = shl nuw nsw i32 %187, 1
  %189 = add nsw i32 %188, -1
  %190 = or disjoint i32 %188, 1
  br label %191

191:                                              ; preds = %186, %191
  %192 = phi i32 [ 1, %186 ], [ %208, %191 ]
  %193 = shl nuw nsw i32 %192, 1
  %194 = add nsw i32 %193, -1
  %195 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %188, i32 noundef %194) #25
  %196 = or disjoint i32 %193, 1
  %197 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %188, i32 noundef %196) #25
  %198 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %189, i32 noundef %193) #25
  %199 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %190, i32 noundef %193) #25
  call fastcc void @avg4(ptr noundef nonnull %4, ptr noundef %195, ptr noundef %197, ptr noundef %198, ptr noundef %199) #25
  %200 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %189, i32 noundef %194) #25
  %201 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %190, i32 noundef %194) #25
  %202 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %189, i32 noundef %196) #25
  %203 = tail call fastcc ptr @mesh_vert_canon(ptr noundef %17, i32 noundef %185, i32 noundef %190, i32 noundef %196) #25
  call fastcc void @avg4(ptr noundef nonnull %5, ptr noundef %200, ptr noundef %201, ptr noundef %202, ptr noundef %203) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %5, float noundef -2.500000e-01) #25
  %204 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef %185, i32 noundef %187, i32 noundef %192) #25
  %205 = getelementptr inbounds %struct.NewVert, ptr %204, i64 0, i32 1
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %205, float noundef 2.500000e-01) #25
  %206 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %185, i32 noundef %188, i32 noundef %193) #25
  %207 = getelementptr inbounds %struct.NewVert, ptr %206, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %207, ptr noundef nonnull %3) #25
  %208 = add nuw nsw i32 %192, 1
  %209 = icmp eq i32 %192, %11
  br i1 %209, label %210, label %191, !llvm.loop !368

210:                                              ; preds = %191
  %211 = add nuw nsw i32 %187, 1
  %212 = icmp eq i32 %211, %159
  br i1 %212, label %213, label %186, !llvm.loop !369

213:                                              ; preds = %210, %184
  %214 = add nuw nsw i32 %185, 1
  %215 = icmp eq i32 %214, %8
  br i1 %215, label %216, label %184, !llvm.loop !370

216:                                              ; preds = %213, %92, %90, %97, %125, %156
  %217 = phi ptr [ %47, %156 ], [ %47, %125 ], [ %47, %97 ], [ %47, %92 ], [ %91, %90 ], [ %47, %213 ]
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %17) #25
  %218 = tail call fastcc float @sabin_gamma(i32 noundef %8) #25
  %219 = fneg float %218
  call fastcc void @zero_v3(ptr noundef nonnull %4) #25
  call fastcc void @zero_v3(ptr noundef nonnull %5) #25
  br i1 %18, label %220, label %275

220:                                              ; preds = %216
  %221 = add nsw i32 %10, -1
  %222 = add nsw i32 %10, 1
  br label %223

223:                                              ; preds = %220, %223
  %224 = phi i32 [ 0, %220 ], [ %231, %223 ]
  %225 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %224, i32 noundef %10, i32 noundef %221) #25
  %226 = getelementptr inbounds %struct.NewVert, ptr %225, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %226) #25
  %227 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %224, i32 noundef %221, i32 noundef %221) #25
  %228 = getelementptr inbounds %struct.NewVert, ptr %227, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %228) #25
  %229 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %224, i32 noundef %221, i32 noundef %222) #25
  %230 = getelementptr inbounds %struct.NewVert, ptr %229, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %230) #25
  %231 = add nuw nsw i32 %224, 1
  %232 = icmp eq i32 %231, %8
  br i1 %232, label %233, label %223, !llvm.loop !371

233:                                              ; preds = %223
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %234 = sitofp i32 %8 to float
  %235 = fdiv float 1.000000e+00, %234
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %235) #25
  %236 = fmul float %234, 2.000000e+00
  %237 = fdiv float %219, %236
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %5, float noundef %237) #25
  %238 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef 0, i32 noundef %11, i32 noundef %11) #25
  %239 = getelementptr inbounds %struct.NewVert, ptr %238, i64 0, i32 1
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %239, float noundef %218) #25
  br i1 %18, label %244, label %282

240:                                              ; preds = %244
  br i1 %18, label %241, label %282

241:                                              ; preds = %240
  %242 = icmp slt i32 %10, 0
  %243 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  br label %252

244:                                              ; preds = %233, %244
  %245 = phi i32 [ %248, %244 ], [ 0, %233 ]
  %246 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %245, i32 noundef %10, i32 noundef %10) #25
  %247 = getelementptr inbounds %struct.NewVert, ptr %246, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %247, ptr noundef nonnull %3) #25
  %248 = add nuw nsw i32 %245, 1
  %249 = icmp eq i32 %248, %8
  br i1 %249, label %240, label %244, !llvm.loop !372

250:                                              ; preds = %272, %252
  %251 = icmp eq i32 %256, %8
  br i1 %251, label %282, label %252, !llvm.loop !373

252:                                              ; preds = %241, %250
  %253 = phi ptr [ %217, %241 ], [ %255, %250 ]
  %254 = phi i32 [ 0, %241 ], [ %256, %250 ]
  %255 = load ptr, ptr %253, align 8, !tbaa !107
  %256 = add nuw nsw i32 %254, 1
  %257 = icmp eq i32 %256, %8
  %258 = select i1 %257, i32 0, i32 %256
  br i1 %242, label %250, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.BoundVert, ptr %255, i64 0, i32 7
  br label %261

261:                                              ; preds = %259, %272
  %262 = phi i32 [ 0, %259 ], [ %273, %272 ]
  call fastcc void @get_profile_point(ptr noundef %0, ptr noundef nonnull %260, i32 noundef %262, i32 noundef %12, ptr noundef nonnull %3) #25
  %263 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %254, i32 noundef 0, i32 noundef %262) #25
  %264 = getelementptr inbounds %struct.NewVert, ptr %263, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %264, ptr noundef nonnull %3) #25
  %265 = icmp sge i32 %262, %10
  %266 = icmp slt i32 %262, %12
  %267 = and i1 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %261
  %269 = sub nsw i32 %12, %262
  %270 = tail call fastcc ptr @mesh_vert(ptr noundef %17, i32 noundef %258, i32 noundef %269, i32 noundef 0) #25
  %271 = getelementptr inbounds %struct.NewVert, ptr %270, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %271, ptr noundef nonnull %3) #25
  br label %272

272:                                              ; preds = %261, %268
  %273 = add nuw nsw i32 %262, 1
  %274 = icmp eq i32 %262, %243
  br i1 %274, label %250, label %261, !llvm.loop !374

275:                                              ; preds = %216
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %276 = sitofp i32 %8 to float
  %277 = fdiv float 1.000000e+00, %276
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %277) #25
  %278 = fmul float %276, 2.000000e+00
  %279 = fdiv float %219, %278
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %5, float noundef %279) #25
  %280 = tail call fastcc ptr @mesh_vert(ptr noundef %1, i32 noundef 0, i32 noundef %11, i32 noundef %11) #25
  %281 = getelementptr inbounds %struct.NewVert, ptr %280, i64 0, i32 1
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %281, float noundef %218) #25
  br label %282

282:                                              ; preds = %250, %275, %233, %240
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interp_vmesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !375 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [4 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !139
  %11 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = sdiv i32 %2, 2
  %14 = srem i32 %2, 2
  %15 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  %19 = tail call fastcc ptr @new_adj_vmesh(ptr noundef %16, i32 noundef %10, i32 noundef %2, ptr noundef %18) #25
  %20 = add nsw i32 %12, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = alloca i8, i64 %22, align 16
  %24 = alloca i8, i64 %22, align 16
  %25 = add nsw i32 %2, 1
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = alloca i8, i64 %27, align 16
  %29 = alloca i8, i64 %27, align 16
  %30 = add nsw i32 %10, -1
  call fastcc void @fill_vmesh_fracs(ptr noundef %1, ptr noundef nonnull %23, i32 noundef %30) #25
  %31 = load ptr, ptr %17, align 8, !tbaa !134
  %32 = getelementptr inbounds %struct.BoundVert, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !224
  call fastcc void @fill_profile_fracs(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %29, i32 noundef %2) #25
  %34 = icmp sgt i32 %10, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %3
  %36 = add nsw i32 %13, -1
  %37 = add nsw i32 %36, %14
  %38 = icmp slt i32 %37, 0
  %39 = icmp slt i32 %2, -1
  %40 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %43 = add nsw i32 %13, 1
  %44 = sext i32 %2 to i64
  %45 = add nsw i32 %14, %13
  %46 = zext i32 %45 to i64
  %47 = zext i32 %43 to i64
  br label %48

48:                                               ; preds = %35, %96
  %49 = phi ptr [ %31, %35 ], [ %97, %96 ]
  %50 = phi i32 [ 0, %35 ], [ %98, %96 ]
  call fastcc void @fill_vmesh_fracs(ptr noundef %1, ptr noundef nonnull %24, i32 noundef %50) #25
  call fastcc void @fill_profile_fracs(ptr noundef %0, ptr noundef %49, ptr noundef nonnull %28, i32 noundef %2) #25
  br i1 %38, label %96, label %51

51:                                               ; preds = %48, %93
  %52 = phi i64 [ %94, %93 ], [ 0, %48 ]
  br i1 %39, label %93, label %53

53:                                               ; preds = %51
  %54 = sub nsw i64 %44, %52
  %55 = getelementptr inbounds float, ptr %29, i64 %54
  %56 = trunc i64 %52 to i32
  br label %57

57:                                               ; preds = %53, %87
  %58 = phi i64 [ 0, %53 ], [ %91, %87 ]
  %59 = getelementptr inbounds float, ptr %28, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !109
  %61 = call fastcc i32 @interp_range(ptr noundef nonnull %24, i32 noundef %12, float noundef %60, ptr noundef nonnull %4) #25
  %62 = load float, ptr %55, align 4, !tbaa !109
  %63 = call fastcc i32 @interp_range(ptr noundef nonnull %23, i32 noundef %12, float noundef %62, ptr noundef nonnull %5) #25
  %64 = sub nsw i32 %12, %63
  %65 = load float, ptr %5, align 4, !tbaa !109
  %66 = fcmp uge float %65, 0x3EB0C6F7A0000000
  %67 = fsub float 1.000000e+00, %65
  %68 = sext i1 %66 to i32
  %69 = add nsw i32 %64, %68
  %70 = select i1 %66, float %67, float 0.000000e+00
  %71 = fcmp olt float %70, 0x3EB0C6F7A0000000
  %72 = load float, ptr %4, align 4
  %73 = fcmp olt float %72, 0x3EB0C6F7A0000000
  %74 = select i1 %71, i1 %73, i1 false
  %75 = call fastcc ptr @mesh_vert_canon(ptr noundef %1, i32 noundef %50, i32 noundef %69, i32 noundef %61) #25
  %76 = getelementptr inbounds %struct.NewVert, ptr %75, i64 0, i32 1
  br i1 %74, label %77, label %78

77:                                               ; preds = %57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %76) #25
  br label %87

78:                                               ; preds = %57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %76) #25
  %79 = add nsw i32 %61, 1
  %80 = call fastcc ptr @mesh_vert_canon(ptr noundef %1, i32 noundef %50, i32 noundef %69, i32 noundef %79) #25
  %81 = getelementptr inbounds %struct.NewVert, ptr %80, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %81) #25
  %82 = add nsw i32 %69, 1
  %83 = call fastcc ptr @mesh_vert_canon(ptr noundef %1, i32 noundef %50, i32 noundef %82, i32 noundef %79) #25
  %84 = getelementptr inbounds %struct.NewVert, ptr %83, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %84) #25
  %85 = call fastcc ptr @mesh_vert_canon(ptr noundef %1, i32 noundef %50, i32 noundef %82, i32 noundef %61) #25
  %86 = getelementptr inbounds %struct.NewVert, ptr %85, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %86) #25
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %6, float noundef %72, float noundef %70, ptr noundef nonnull %7) #24
  br label %87

87:                                               ; preds = %78, %77
  %88 = trunc i64 %58 to i32
  %89 = call fastcc ptr @mesh_vert(ptr noundef %19, i32 noundef %50, i32 noundef %56, i32 noundef %88) #25
  %90 = getelementptr inbounds %struct.NewVert, ptr %89, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %90, ptr noundef nonnull %7) #25
  %91 = add nuw nsw i64 %58, 1
  %92 = icmp eq i64 %91, %47
  br i1 %92, label %93, label %57, !llvm.loop !376

93:                                               ; preds = %87, %51
  %94 = add nuw nsw i64 %52, 1
  %95 = icmp eq i64 %94, %46
  br i1 %95, label %96, label %51, !llvm.loop !377

96:                                               ; preds = %93, %48
  %97 = load ptr, ptr %49, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %23, ptr nonnull align 16 %24, i64 %22, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %29, ptr nonnull align 16 %28, i64 %27, i1 false)
  %98 = add nuw nsw i32 %50, 1
  %99 = icmp eq i32 %98, %10
  br i1 %99, label %100, label %48, !llvm.loop !378

100:                                              ; preds = %96, %3
  %101 = icmp eq i32 %14, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  call fastcc void @vmesh_center(ptr noundef %1, ptr noundef nonnull %8) #25
  %103 = call fastcc ptr @mesh_vert(ptr noundef %19, i32 noundef 0, i32 noundef %13, i32 noundef %13) #25
  %104 = getelementptr inbounds %struct.NewVert, ptr %103, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %104, ptr noundef nonnull %8) #25
  br label %105

105:                                              ; preds = %102, %100
  call fastcc void @vmesh_copy_equiv_verts(ptr noundef %19) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mesh_vert_canon(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !379 {
  %5 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !139
  %7 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !88
  %9 = sdiv i32 %8, 2
  %10 = srem i32 %8, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i32 %9, %2
  %13 = and i1 %11, %12
  %14 = icmp eq i32 %9, %3
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #25
  br label %38

18:                                               ; preds = %4
  %19 = add nsw i32 %9, -1
  %20 = add nsw i32 %19, %10
  %21 = icmp slt i32 %20, %2
  %22 = icmp slt i32 %9, %3
  %23 = or i1 %22, %21
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #25
  br label %38

26:                                               ; preds = %18
  br i1 %22, label %33, label %27

27:                                               ; preds = %26
  %28 = add i32 %1, -1
  %29 = add i32 %28, %6
  %30 = srem i32 %29, %6
  %31 = sub nsw i32 %8, %2
  %32 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %3, i32 noundef %31) #25
  br label %38

33:                                               ; preds = %26
  %34 = add nsw i32 %1, 1
  %35 = srem i32 %34, %6
  %36 = sub nsw i32 %8, %3
  %37 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %36, i32 noundef %2) #25
  br label %38

38:                                               ; preds = %24, %33, %27, %16
  %39 = phi ptr [ %25, %24 ], [ %32, %27 ], [ %37, %33 ], [ %17, %16 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @avg4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #10 !PGOFuncName !380 {
  %6 = getelementptr inbounds %struct.NewVert, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct.NewVert, ptr %2, i64 0, i32 1
  tail call fastcc void @add_v3_v3v3(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %8 = getelementptr inbounds %struct.NewVert, ptr %3, i64 0, i32 1
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %8) #25
  %9 = getelementptr inbounds %struct.NewVert, ptr %4, i64 0, i32 1
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %9) #25
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef 2.500000e-01) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sabin_gamma(i32 noundef %0) unnamed_addr #8 !PGOFuncName !381 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = add nsw i32 %0, -3
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = sitofp i32 %0 to double
  %8 = fdiv double 0x400921FB54442D18, %7
  %9 = tail call double @cos(double noundef %8) #24
  %10 = fmul double %9, %9
  %11 = fmul double %10, %10
  %12 = fmul double %10, %11
  %13 = fmul double %11, -1.440000e+02
  %14 = tail call double @llvm.fmuladd.f64(double %12, double 6.400000e+01, double %13)
  %15 = tail call double @llvm.fmuladd.f64(double %10, double 1.350000e+02, double %14)
  %16 = fadd double %15, -2.700000e+01
  %17 = tail call double @sqrt(double noundef %16) #24
  %18 = fmul double %9, 9.000000e+00
  %19 = tail call double @llvm.fmuladd.f64(double %17, double 0x3FFBB67AE8584CAA, double %18)
  %20 = tail call double @pow(double noundef %19, double noundef 0x3FD5555555555555) #24
  %21 = tail call double @llvm.fmuladd.f64(double %10, double 1.200000e+01, double -9.000000e+00)
  %22 = fmul double %21, 0xBFCD955AA4F104A0
  %23 = fdiv double %22, %20
  %24 = tail call double @llvm.fmuladd.f64(double %20, double 0x3FDEC49B0C1853F1, double %23)
  %25 = fmul double %10, 2.000000e+00
  %26 = tail call double @llvm.fmuladd.f64(double %9, double %24, double %25)
  %27 = fadd double %26, -1.000000e+00
  %28 = fmul double %24, %24
  %29 = tail call double @llvm.fmuladd.f64(double %9, double %24, double 1.000000e+00)
  %30 = fmul double %28, %29
  %31 = fdiv double %27, %30
  %32 = fptrunc double %31 to float
  br label %37

33:                                               ; preds = %3
  %34 = zext nneg i32 %4 to i64
  %35 = getelementptr inbounds [4 x float], ptr @switch.table.sabin_gamma, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  br label %37

37:                                               ; preds = %33, %6, %1
  %38 = phi float [ 0.000000e+00, %1 ], [ %32, %6 ], [ %36, %33 ]
  ret float %38
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @fill_vmesh_fracs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #20 !PGOFuncName !382 {
  %4 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !88
  store float 0.000000e+00, ptr %1, align 4, !tbaa !109
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = phi float [ 0.000000e+00, %7 ], [ %20, %9 ]
  %12 = trunc i64 %10 to i32
  %13 = tail call fastcc ptr @mesh_vert(ptr noundef %0, i32 noundef %2, i32 noundef 0, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct.NewVert, ptr %13, i64 0, i32 1
  %15 = add nuw nsw i64 %10, 1
  %16 = trunc i64 %15 to i32
  %17 = tail call fastcc ptr @mesh_vert(ptr noundef %0, i32 noundef %2, i32 noundef 0, i32 noundef %16) #25
  %18 = getelementptr inbounds %struct.NewVert, ptr %17, i64 0, i32 1
  %19 = tail call fastcc float @len_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %18) #25
  %20 = fadd float %11, %19
  %21 = getelementptr inbounds float, ptr %1, i64 %15
  store float %20, ptr %21, align 4, !tbaa !109
  %22 = icmp eq i64 %15, %8
  br i1 %22, label %23, label %9, !llvm.loop !383

23:                                               ; preds = %9
  %24 = fcmp ule float %20, 0x3EB0C6F7A0000000
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  %26 = add nuw i32 %5, 1
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 1, %25 ], [ %33, %28 ]
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !109
  %32 = fdiv float %31, %20
  store float %32, ptr %30, align 4, !tbaa !109
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %27
  br i1 %34, label %35, label %28, !llvm.loop !384

35:                                               ; preds = %28, %3, %23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @fill_profile_fracs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #20 !PGOFuncName !385 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  store float 0.000000e+00, ptr %2, align 4, !tbaa !109
  %7 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 2, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #25
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %15, %12 ]
  %14 = phi float [ 0.000000e+00, %9 ], [ %18, %12 ]
  %15 = add nuw nsw i64 %13, 1
  %16 = trunc i64 %15 to i32
  call fastcc void @get_profile_point(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %16, i32 noundef %3, ptr noundef nonnull %6) #25
  %17 = call fastcc float @len_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %18 = fadd float %14, %17
  %19 = getelementptr inbounds float, ptr %2, i64 %15
  store float %18, ptr %19, align 4, !tbaa !109
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %20 = icmp eq i64 %15, %11
  br i1 %20, label %21, label %12, !llvm.loop !386

21:                                               ; preds = %12
  %22 = fcmp ule float %18, 0x3EB0C6F7A0000000
  br i1 %22, label %33, label %23

23:                                               ; preds = %21
  %24 = add nuw i32 %3, 1
  %25 = zext i32 %24 to i64
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 1, %23 ], [ %31, %26 ]
  %28 = getelementptr inbounds float, ptr %2, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !109
  %30 = fdiv float %29, %18
  store float %30, ptr %28, align 4, !tbaa !109
  %31 = add nuw nsw i64 %27, 1
  %32 = icmp eq i64 %31, %25
  br i1 %32, label %33, label %26, !llvm.loop !387

33:                                               ; preds = %26, %4, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @interp_range(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #21 !PGOFuncName !388 {
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = zext nneg i32 %5 to i64
  br label %7

7:                                                ; preds = %10, %4
  %8 = phi i64 [ %11, %10 ], [ 0, %4 ]
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %8, 1
  %12 = getelementptr inbounds float, ptr %0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !109
  %14 = fcmp ult float %13, %2
  br i1 %14, label %7, label %15, !llvm.loop !389

15:                                               ; preds = %10
  %16 = trunc i64 %8 to i32
  %17 = and i64 %8, 4294967295
  %18 = getelementptr inbounds float, ptr %0, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !109
  %20 = fsub float %2, %19
  %21 = fcmp oeq float %20, 0.000000e+00
  %22 = fsub float %13, %19
  %23 = fdiv float %20, %22
  %24 = select i1 %21, float 0.000000e+00, float %23
  %25 = add nsw i32 %1, -1
  %26 = icmp eq i32 %25, %16
  %27 = fcmp oeq float %24, 1.000000e+00
  %28 = select i1 %26, i1 %27, i1 false
  %29 = select i1 %28, float 0.000000e+00, float %24
  store float %29, ptr %3, align 4
  %30 = select i1 %28, i32 %1, i32 %16
  br label %32

31:                                               ; preds = %7
  store float 0.000000e+00, ptr %3, align 4, !tbaa !109
  br label %32

32:                                               ; preds = %15, %31
  %33 = phi i32 [ %1, %31 ], [ %30, %15 ]
  ret i32 %33
}

; Function Attrs: optsize
declare void @interp_bilinear_quad_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @vmesh_center(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #16 !PGOFuncName !390 {
  %3 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !88
  %7 = sdiv i32 %6, 2
  %8 = and i32 %6, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %1) #25
  %11 = icmp sgt i32 %4, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %10 ]
  %14 = tail call fastcc ptr @mesh_vert(ptr noundef %0, i32 noundef %13, i32 noundef %7, i32 noundef %7) #25
  %15 = getelementptr inbounds %struct.NewVert, ptr %14, i64 0, i32 1
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %15) #25
  %16 = add nuw nsw i32 %13, 1
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %18, label %12, !llvm.loop !391

18:                                               ; preds = %12, %10
  %19 = sitofp i32 %4 to float
  %20 = fdiv float 1.000000e+00, %19
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %20) #25
  br label %24

21:                                               ; preds = %2
  %22 = tail call fastcc ptr @mesh_vert(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %7, i32 noundef %7) #25
  %23 = getelementptr inbounds %struct.NewVert, ptr %22, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %23) #25
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !392 {
  %2 = load float, ptr %0, align 4, !tbaa !109
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !109
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !109
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #17 !PGOFuncName !393 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !394 {
  %3 = load float, ptr %1, align 4, !tbaa !109
  %4 = load float, ptr %0, align 4, !tbaa !109
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !109
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !109
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !395 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !109
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !396 {
  %3 = load float, ptr %1, align 4, !tbaa !109
  store float %3, ptr %0, align 4, !tbaa !109
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !109
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #18 !PGOFuncName !397 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !398
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !398
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bev_create_quad_straddle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef zeroext %8) unnamed_addr #0 !PGOFuncName !399 {
  %10 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #23
  %11 = tail call fastcc ptr @bev_create_quad_tri(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %7, i8 noundef zeroext 0) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %9
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %11) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = icmp eq i8 %8, 0
  br label %18

18:                                               ; preds = %16, %31
  %19 = phi ptr [ %14, %16 ], [ %32, %31 ]
  br i1 %17, label %20, label %27

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !211
  %23 = icmp eq ptr %22, %1
  %24 = icmp eq ptr %22, %2
  %25 = or i1 %23, %24
  %26 = select i1 %25, ptr %5, ptr %6
  br label %27

27:                                               ; preds = %20, %18
  %28 = phi ptr [ %5, %18 ], [ %26, %20 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %28, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  br label %31

31:                                               ; preds = %27, %30
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #25
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !400

34:                                               ; preds = %31, %13, %9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bev_create_quad_tri(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !401 {
  %9 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #23
  store ptr %1, ptr %9, align 16, !tbaa !107
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %2, ptr %10, align 8, !tbaa !107
  %11 = getelementptr inbounds ptr, ptr %9, i64 2
  store ptr %3, ptr %11, align 16, !tbaa !107
  %12 = getelementptr inbounds ptr, ptr %9, i64 3
  store ptr %4, ptr %12, align 8, !tbaa !107
  %13 = icmp eq ptr %4, null
  %14 = select i1 %13, i32 3, i32 4
  %15 = call fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %14, ptr noundef null, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #23
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bev_merge_end_uvs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !402 {
  %4 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.BoundVert, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !151
  %12 = icmp sgt i32 %7, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 1, %3 ]
  %15 = tail call fastcc ptr @mesh_vert(ptr noundef %5, i32 noundef %11, i32 noundef 0, i32 noundef %14) #25
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  tail call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %16) #25
  %17 = add nuw nsw i32 %14, 1
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %13, !llvm.loop !403

19:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @bevvert_is_weld_cross(ptr nocapture noundef readonly %0) unnamed_addr #18 !PGOFuncName !404 {
  %2 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !82
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BevVert, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.EdgeHalf, ptr %11, i64 0, i32 12
  %13 = load i8, ptr %12, align 4, !tbaa !97
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.EdgeHalf, ptr %11, i64 2, i32 12
  %17 = load i8, ptr %16, align 4, !tbaa !97
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15, %9
  %20 = getelementptr inbounds %struct.EdgeHalf, ptr %11, i64 1, i32 12
  %21 = load i8, ptr %20, align 4, !tbaa !97
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.EdgeHalf, ptr %11, i64 3, i32 12
  %25 = load i8, ptr %24, align 4, !tbaa !97
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %15, %23, %19, %5, %1
  %29 = phi i8 [ 0, %5 ], [ 0, %1 ], [ 1, %15 ], [ 0, %19 ], [ %27, %23 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @weld_cross_attrs_copy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 !PGOFuncName !405 {
  %6 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  br label %8

8:                                                ; preds = %5, %21
  %9 = phi i64 [ 0, %5 ], [ %22, %21 ]
  %10 = getelementptr inbounds %struct.EdgeHalf, ptr %7, i64 %9
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = add nuw i64 %9, 3
  %14 = and i64 %13, 3
  %15 = getelementptr inbounds %struct.EdgeHalf, ptr %7, i64 %14, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  %17 = add nuw i64 %9, 1
  %18 = and i64 %17, 3
  %19 = getelementptr inbounds %struct.EdgeHalf, ptr %7, i64 %18, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  br label %24

21:                                               ; preds = %8
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %8, !llvm.loop !406

24:                                               ; preds = %21, %12
  %25 = phi ptr [ %20, %12 ], [ null, %21 ]
  %26 = phi ptr [ %16, %12 ], [ null, %21 ]
  %27 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %26, i8 noundef zeroext 4) #25, !range !53
  %28 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %25, i8 noundef zeroext 4) #25, !range !53
  %29 = icmp eq i8 %27, %28
  %30 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %26, i8 noundef zeroext 8) #25, !range !53
  %31 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %25, i8 noundef zeroext 8) #25, !range !53
  %32 = icmp eq i8 %30, %31
  %33 = getelementptr inbounds %struct.EdgeHalf, ptr %4, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !98
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %24, %47
  %37 = phi i32 [ %40, %47 ], [ 0, %24 ]
  %38 = tail call fastcc ptr @mesh_vert(ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef %37) #25
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = add nuw nsw i32 %37, 1
  %41 = tail call fastcc ptr @mesh_vert(ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef %40) #25
  %42 = load ptr, ptr %41, align 8, !tbaa !152
  %43 = tail call ptr @BM_edge_exists(ptr noundef %39, ptr noundef %42) #24
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %26, ptr noundef %43) #24
  br i1 %29, label %45, label %44

44:                                               ; preds = %36
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %43, i8 noundef zeroext 4) #25
  br label %45

45:                                               ; preds = %44, %36
  br i1 %32, label %47, label %46

46:                                               ; preds = %45
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %43, i8 noundef zeroext 8) #25
  br label %47

47:                                               ; preds = %45, %46
  %48 = icmp eq i32 %40, %34
  br i1 %48, label %49, label %36, !llvm.loop !407

49:                                               ; preds = %47, %24
  ret void
}

; Function Attrs: optsize
declare ptr @BM_iter_as_arrayN(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bev_rebuild_polygon(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !408 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [32 x ptr], align 16
  %9 = alloca [32 x ptr], align 16
  %10 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr null, ptr %6, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store ptr null, ptr %7, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #23
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %2) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %464, label %13

13:                                               ; preds = %3, %383
  %14 = phi i32 [ %387, %383 ], [ 0, %3 ]
  %15 = phi i32 [ %386, %383 ], [ 0, %3 ]
  %16 = phi i32 [ %385, %383 ], [ 0, %3 ]
  %17 = phi ptr [ %388, %383 ], [ %11, %3 ]
  %18 = phi i8 [ %384, %383 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !211
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %20, i8 noundef zeroext 16) #25, !range !53
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %333, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !298
  %26 = call fastcc ptr @find_bevvert(ptr noundef %1, ptr noundef %20) #25
  %27 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !409
  %29 = call fastcc ptr @find_edge_half(ptr noundef %26, ptr noundef %28) #25
  %30 = getelementptr inbounds %struct.EdgeHalf, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  %32 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !409
  %34 = call fastcc ptr @find_edge_half(ptr noundef %26, ptr noundef %33) #25
  %35 = getelementptr inbounds %struct.EdgeHalf, ptr %34, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  %37 = getelementptr inbounds %struct.EdgeHalf, ptr %29, i64 0, i32 12
  %38 = load i8, ptr %37, align 4, !tbaa !97
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.EdgeHalf, ptr %29, i64 0, i32 6
  %41 = getelementptr inbounds %struct.EdgeHalf, ptr %29, i64 0, i32 5
  %42 = select i1 %39, ptr %41, ptr %40
  %43 = load ptr, ptr %42, align 8, !tbaa !107
  %44 = getelementptr inbounds %struct.BevVert, ptr %26, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !87
  %46 = load ptr, ptr %5, align 8
  %47 = icmp eq ptr %46, null
  %48 = add nsw i32 %16, 1
  %49 = icmp ult i32 %48, 33
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52

51:                                               ; preds = %23
  store ptr %8, ptr %5, align 8, !tbaa !107
  br label %65

52:                                               ; preds = %23
  %53 = icmp eq ptr %46, %8
  %54 = or i1 %53, %47
  %55 = select i1 %53, i64 32, i64 0
  br i1 %54, label %60, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %58 = call i64 %57(ptr noundef nonnull %46) #24
  %59 = lshr i64 %58, 3
  br label %60

60:                                               ; preds = %52, %56
  %61 = phi i64 [ %55, %52 ], [ %59, %56 ]
  %62 = sext i32 %48 to i64
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %16, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %65

65:                                               ; preds = %64, %60, %51
  %66 = getelementptr inbounds %struct.BoundVert, ptr %36, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !153
  %68 = load ptr, ptr %5, align 8, !tbaa !107
  %69 = sext i32 %16 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  store ptr %67, ptr %70, align 8, !tbaa !107
  %71 = load ptr, ptr %7, align 8
  %72 = icmp eq ptr %71, null
  %73 = add nsw i32 %14, 1
  %74 = icmp ult i32 %73, 33
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store ptr %10, ptr %7, align 8, !tbaa !107
  br label %90

77:                                               ; preds = %65
  %78 = icmp eq ptr %71, %10
  %79 = or i1 %78, %72
  %80 = select i1 %78, i64 32, i64 0
  br i1 %79, label %85, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %83 = call i64 %82(ptr noundef nonnull %71) #24
  %84 = lshr i64 %83, 3
  br label %85

85:                                               ; preds = %77, %81
  %86 = phi i64 [ %80, %77 ], [ %84, %81 ]
  %87 = sext i32 %73 to i64
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %14, i32 noundef 1, ptr noundef nonnull @.str.2) #24
  br label %90

90:                                               ; preds = %89, %85, %76
  %91 = load ptr, ptr %7, align 8, !tbaa !107
  %92 = sext i32 %14 to i64
  %93 = getelementptr inbounds ptr, ptr %91, i64 %92
  store ptr %31, ptr %93, align 8, !tbaa !107
  %94 = icmp eq ptr %36, %43
  br i1 %94, label %383, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.VMesh, ptr %45, i64 0, i32 4
  %97 = getelementptr inbounds %struct.VMesh, ptr %45, i64 0, i32 3
  %98 = getelementptr inbounds %struct.EdgeHalf, ptr %34, i64 0, i32 12
  %99 = getelementptr inbounds %struct.BoundVert, ptr %43, i64 0, i32 6
  br label %100

100:                                              ; preds = %95, %328
  %101 = phi i32 [ %48, %95 ], [ %286, %328 ]
  %102 = phi i32 [ %73, %95 ], [ %311, %328 ]
  %103 = phi i32 [ %15, %95 ], [ %280, %328 ]
  %104 = phi ptr [ %36, %95 ], [ %283, %328 ]
  %105 = phi ptr [ %29, %95 ], [ %278, %328 ]
  %106 = load i32, ptr %96, align 8, !tbaa !133
  switch i32 %106, label %277 [
    i32 0, label %107
    i32 2, label %209
  ]

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.BoundVert, ptr %104, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !125
  %110 = icmp eq ptr %109, null
  br i1 %110, label %277, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.EdgeHalf, ptr %109, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !98
  %114 = icmp slt i32 %113, 2
  %115 = icmp eq ptr %109, %105
  %116 = select i1 %114, i1 true, i1 %115
  %117 = icmp eq ptr %109, %34
  %118 = or i1 %117, %116
  br i1 %118, label %277, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.BoundVert, ptr %104, i64 0, i32 6
  %121 = load i32, ptr %120, align 8, !tbaa !151
  %122 = getelementptr inbounds %struct.EdgeHalf, ptr %109, i64 0, i32 14
  %123 = sext i32 %102 to i64
  %124 = sext i32 %101 to i64
  br label %125

125:                                              ; preds = %119, %204
  %126 = phi i64 [ %124, %119 ], [ %134, %204 ]
  %127 = phi i64 [ %123, %119 ], [ %157, %204 ]
  %128 = phi i32 [ %103, %119 ], [ %205, %204 ]
  %129 = phi i32 [ 1, %119 ], [ %206, %204 ]
  %130 = call fastcc ptr @mesh_vert(ptr noundef %45, i32 noundef %121, i32 noundef 0, i32 noundef %129) #25
  %131 = load ptr, ptr %130, align 8, !tbaa !152
  %132 = load ptr, ptr %5, align 8
  %133 = icmp eq ptr %132, null
  %134 = add nsw i64 %126, 1
  %135 = trunc i64 %134 to i32
  %136 = icmp ult i32 %135, 33
  %137 = select i1 %133, i1 %136, i1 false
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  store ptr %8, ptr %5, align 8, !tbaa !107
  br label %152

139:                                              ; preds = %125
  %140 = icmp eq ptr %132, %8
  %141 = or i1 %140, %133
  %142 = select i1 %140, i64 32, i64 0
  br i1 %141, label %147, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %145 = call i64 %144(ptr noundef nonnull %132) #24
  %146 = lshr i64 %145, 3
  br label %147

147:                                              ; preds = %139, %143
  %148 = phi i64 [ %142, %139 ], [ %146, %143 ]
  %149 = icmp ult i64 %148, %134
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = trunc i64 %126 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %151, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %152

152:                                              ; preds = %150, %147, %138
  %153 = load ptr, ptr %5, align 8, !tbaa !107
  %154 = getelementptr inbounds ptr, ptr %153, i64 %126
  store ptr %131, ptr %154, align 8, !tbaa !107
  %155 = load ptr, ptr %7, align 8
  %156 = icmp eq ptr %155, null
  %157 = add nsw i64 %127, 1
  %158 = trunc i64 %157 to i32
  %159 = icmp ult i32 %158, 33
  %160 = select i1 %156, i1 %159, i1 false
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  store ptr %10, ptr %7, align 8, !tbaa !107
  br label %175

162:                                              ; preds = %152
  %163 = icmp eq ptr %155, %10
  %164 = or i1 %163, %156
  %165 = select i1 %163, i64 32, i64 0
  br i1 %164, label %170, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %168 = call i64 %167(ptr noundef nonnull %155) #24
  %169 = lshr i64 %168, 3
  br label %170

170:                                              ; preds = %162, %166
  %171 = phi i64 [ %165, %162 ], [ %169, %166 ]
  %172 = icmp ult i64 %171, %157
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = trunc i64 %127 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %174, i32 noundef 1, ptr noundef nonnull @.str.2) #24
  br label %175

175:                                              ; preds = %173, %170, %161
  %176 = load ptr, ptr %7, align 8, !tbaa !107
  %177 = getelementptr inbounds ptr, ptr %176, i64 %127
  store ptr %31, ptr %177, align 8, !tbaa !107
  %178 = load i8, ptr %122, align 2, !tbaa !116
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %175
  %181 = load ptr, ptr %6, align 8
  %182 = icmp eq ptr %181, null
  %183 = add nsw i32 %128, 1
  %184 = icmp ult i32 %183, 33
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store ptr %9, ptr %6, align 8, !tbaa !107
  br label %200

187:                                              ; preds = %180
  %188 = icmp eq ptr %181, %9
  %189 = or i1 %188, %182
  %190 = select i1 %188, i64 32, i64 0
  br i1 %189, label %195, label %191

191:                                              ; preds = %187
  %192 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %193 = call i64 %192(ptr noundef nonnull %181) #24
  %194 = lshr i64 %193, 3
  br label %195

195:                                              ; preds = %187, %191
  %196 = phi i64 [ %190, %187 ], [ %194, %191 ]
  %197 = sext i32 %183 to i64
  %198 = icmp ult i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef nonnull %9, i32 noundef 8, i32 noundef %128, i32 noundef 1, ptr noundef nonnull @.str.3) #24
  br label %200

200:                                              ; preds = %199, %195, %186
  %201 = load ptr, ptr %6, align 8, !tbaa !107
  %202 = sext i32 %128 to i64
  %203 = getelementptr inbounds ptr, ptr %201, i64 %202
  store ptr %131, ptr %203, align 8, !tbaa !107
  br label %204

204:                                              ; preds = %175, %200
  %205 = phi i32 [ %128, %175 ], [ %183, %200 ]
  %206 = add nuw nsw i32 %129, 1
  %207 = load i32, ptr %112, align 8, !tbaa !98
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %125, label %277, !llvm.loop !410

209:                                              ; preds = %100
  %210 = load i32, ptr %97, align 4, !tbaa !88
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %212, label %277

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.EdgeHalf, ptr %105, i64 0, i32 12
  %214 = load i8, ptr %213, align 4, !tbaa !97
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %277

216:                                              ; preds = %212
  %217 = load i8, ptr %98, align 4, !tbaa !97
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %277

219:                                              ; preds = %216
  %220 = load i32, ptr %99, align 8, !tbaa !151
  %221 = sext i32 %102 to i64
  %222 = sext i32 %101 to i64
  br label %223

223:                                              ; preds = %219, %273
  %224 = phi i64 [ %222, %219 ], [ %232, %273 ]
  %225 = phi i64 [ %221, %219 ], [ %255, %273 ]
  %226 = phi i32 [ %210, %219 ], [ %227, %273 ]
  %227 = add nsw i32 %226, -1
  %228 = call fastcc ptr @mesh_vert(ptr noundef %45, i32 noundef %220, i32 noundef 0, i32 noundef %227) #25
  %229 = load ptr, ptr %228, align 8, !tbaa !152
  %230 = load ptr, ptr %5, align 8
  %231 = icmp eq ptr %230, null
  %232 = add nsw i64 %224, 1
  %233 = trunc i64 %232 to i32
  %234 = icmp ult i32 %233, 33
  %235 = select i1 %231, i1 %234, i1 false
  br i1 %235, label %236, label %237

236:                                              ; preds = %223
  store ptr %8, ptr %5, align 8, !tbaa !107
  br label %250

237:                                              ; preds = %223
  %238 = icmp eq ptr %230, %8
  %239 = or i1 %238, %231
  %240 = select i1 %238, i64 32, i64 0
  br i1 %239, label %245, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %243 = call i64 %242(ptr noundef nonnull %230) #24
  %244 = lshr i64 %243, 3
  br label %245

245:                                              ; preds = %237, %241
  %246 = phi i64 [ %240, %237 ], [ %244, %241 ]
  %247 = icmp ult i64 %246, %232
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = trunc i64 %224 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %249, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %250

250:                                              ; preds = %248, %245, %236
  %251 = load ptr, ptr %5, align 8, !tbaa !107
  %252 = getelementptr inbounds ptr, ptr %251, i64 %224
  store ptr %229, ptr %252, align 8, !tbaa !107
  %253 = load ptr, ptr %7, align 8
  %254 = icmp eq ptr %253, null
  %255 = add nsw i64 %225, 1
  %256 = trunc i64 %255 to i32
  %257 = icmp ult i32 %256, 33
  %258 = select i1 %254, i1 %257, i1 false
  br i1 %258, label %259, label %260

259:                                              ; preds = %250
  store ptr %10, ptr %7, align 8, !tbaa !107
  br label %273

260:                                              ; preds = %250
  %261 = icmp eq ptr %253, %10
  %262 = or i1 %261, %254
  %263 = select i1 %261, i64 32, i64 0
  br i1 %262, label %268, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %266 = call i64 %265(ptr noundef nonnull %253) #24
  %267 = lshr i64 %266, 3
  br label %268

268:                                              ; preds = %260, %264
  %269 = phi i64 [ %263, %260 ], [ %267, %264 ]
  %270 = icmp ult i64 %269, %255
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = trunc i64 %225 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %272, i32 noundef 1, ptr noundef nonnull @.str.2) #24
  br label %273

273:                                              ; preds = %271, %268, %259
  %274 = load ptr, ptr %7, align 8, !tbaa !107
  %275 = getelementptr inbounds ptr, ptr %274, i64 %225
  store ptr %31, ptr %275, align 8, !tbaa !107
  %276 = icmp ugt i32 %226, 2
  br i1 %276, label %223, label %277, !llvm.loop !411

277:                                              ; preds = %273, %204, %100, %107, %111, %209, %212, %216
  %278 = phi ptr [ %105, %212 ], [ %105, %216 ], [ %105, %209 ], [ %105, %111 ], [ %105, %107 ], [ %105, %100 ], [ %109, %204 ], [ %105, %273 ]
  %279 = phi i32 [ %101, %212 ], [ %101, %216 ], [ %101, %209 ], [ %101, %111 ], [ %101, %107 ], [ %101, %100 ], [ %135, %204 ], [ %233, %273 ]
  %280 = phi i32 [ %103, %212 ], [ %103, %216 ], [ %103, %209 ], [ %103, %111 ], [ %103, %107 ], [ %103, %100 ], [ %205, %204 ], [ %103, %273 ]
  %281 = phi i32 [ %102, %212 ], [ %102, %216 ], [ %102, %209 ], [ %102, %111 ], [ %102, %107 ], [ %102, %100 ], [ %158, %204 ], [ %256, %273 ]
  %282 = getelementptr inbounds %struct.BoundVert, ptr %104, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !224
  %284 = load ptr, ptr %5, align 8
  %285 = icmp eq ptr %284, null
  %286 = add nsw i32 %279, 1
  %287 = icmp ult i32 %286, 33
  %288 = select i1 %285, i1 %287, i1 false
  br i1 %288, label %289, label %290

289:                                              ; preds = %277
  store ptr %8, ptr %5, align 8, !tbaa !107
  br label %303

290:                                              ; preds = %277
  %291 = icmp eq ptr %284, %8
  %292 = or i1 %291, %285
  %293 = select i1 %291, i64 32, i64 0
  br i1 %292, label %298, label %294

294:                                              ; preds = %290
  %295 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %296 = call i64 %295(ptr noundef nonnull %284) #24
  %297 = lshr i64 %296, 3
  br label %298

298:                                              ; preds = %290, %294
  %299 = phi i64 [ %293, %290 ], [ %297, %294 ]
  %300 = sext i32 %286 to i64
  %301 = icmp ult i64 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %279, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %303

303:                                              ; preds = %302, %298, %289
  %304 = getelementptr inbounds %struct.BoundVert, ptr %283, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !153
  %306 = load ptr, ptr %5, align 8, !tbaa !107
  %307 = sext i32 %279 to i64
  %308 = getelementptr inbounds ptr, ptr %306, i64 %307
  store ptr %305, ptr %308, align 8, !tbaa !107
  %309 = load ptr, ptr %7, align 8
  %310 = icmp eq ptr %309, null
  %311 = add nsw i32 %281, 1
  %312 = icmp ult i32 %311, 33
  %313 = select i1 %310, i1 %312, i1 false
  br i1 %313, label %314, label %315

314:                                              ; preds = %303
  store ptr %10, ptr %7, align 8, !tbaa !107
  br label %328

315:                                              ; preds = %303
  %316 = icmp eq ptr %309, %10
  %317 = or i1 %316, %310
  %318 = select i1 %316, i64 32, i64 0
  br i1 %317, label %323, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %321 = call i64 %320(ptr noundef nonnull %309) #24
  %322 = lshr i64 %321, 3
  br label %323

323:                                              ; preds = %315, %319
  %324 = phi i64 [ %318, %315 ], [ %322, %319 ]
  %325 = sext i32 %311 to i64
  %326 = icmp ult i64 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %281, i32 noundef 1, ptr noundef nonnull @.str.2) #24
  br label %328

328:                                              ; preds = %327, %323, %314
  %329 = load ptr, ptr %7, align 8, !tbaa !107
  %330 = sext i32 %281 to i64
  %331 = getelementptr inbounds ptr, ptr %329, i64 %330
  store ptr %31, ptr %331, align 8, !tbaa !107
  %332 = icmp eq ptr %283, %43
  br i1 %332, label %383, label %100, !llvm.loop !412

333:                                              ; preds = %13
  %334 = load ptr, ptr %5, align 8
  %335 = icmp eq ptr %334, null
  %336 = add nsw i32 %16, 1
  %337 = icmp ult i32 %336, 33
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %340

339:                                              ; preds = %333
  store ptr %8, ptr %5, align 8, !tbaa !107
  br label %353

340:                                              ; preds = %333
  %341 = icmp eq ptr %334, %8
  %342 = or i1 %341, %335
  %343 = select i1 %341, i64 32, i64 0
  br i1 %342, label %348, label %344

344:                                              ; preds = %340
  %345 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %346 = call i64 %345(ptr noundef nonnull %334) #24
  %347 = lshr i64 %346, 3
  br label %348

348:                                              ; preds = %340, %344
  %349 = phi i64 [ %343, %340 ], [ %347, %344 ]
  %350 = sext i32 %336 to i64
  %351 = icmp ult i64 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %16, i32 noundef 1, ptr noundef nonnull @.str) #24
  br label %353

353:                                              ; preds = %352, %348, %339
  %354 = load ptr, ptr %19, align 8, !tbaa !211
  %355 = load ptr, ptr %5, align 8, !tbaa !107
  %356 = sext i32 %16 to i64
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  store ptr %354, ptr %357, align 8, !tbaa !107
  %358 = load ptr, ptr %7, align 8
  %359 = icmp eq ptr %358, null
  %360 = add nsw i32 %14, 1
  %361 = icmp ult i32 %360, 33
  %362 = select i1 %359, i1 %361, i1 false
  br i1 %362, label %363, label %364

363:                                              ; preds = %353
  store ptr %10, ptr %7, align 8, !tbaa !107
  br label %377

364:                                              ; preds = %353
  %365 = icmp eq ptr %358, %10
  %366 = or i1 %365, %359
  %367 = select i1 %365, i64 32, i64 0
  br i1 %366, label %372, label %368

368:                                              ; preds = %364
  %369 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !107
  %370 = call i64 %369(ptr noundef nonnull %358) #24
  %371 = lshr i64 %370, 3
  br label %372

372:                                              ; preds = %364, %368
  %373 = phi i64 [ %367, %364 ], [ %371, %368 ]
  %374 = sext i32 %360 to i64
  %375 = icmp ult i64 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8, i32 noundef %14, i32 noundef 1, ptr noundef nonnull @.str.2) #24
  br label %377

377:                                              ; preds = %376, %372, %363
  %378 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !409
  %380 = load ptr, ptr %7, align 8, !tbaa !107
  %381 = sext i32 %14 to i64
  %382 = getelementptr inbounds ptr, ptr %380, i64 %381
  store ptr %379, ptr %382, align 8, !tbaa !107
  br label %383

383:                                              ; preds = %328, %90, %377
  %384 = phi i8 [ %18, %377 ], [ 1, %90 ], [ 1, %328 ]
  %385 = phi i32 [ %336, %377 ], [ %48, %90 ], [ %286, %328 ]
  %386 = phi i32 [ %15, %377 ], [ %15, %90 ], [ %280, %328 ]
  %387 = phi i32 [ %360, %377 ], [ %73, %90 ], [ %311, %328 ]
  %388 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #25
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %13, !llvm.loop !413

390:                                              ; preds = %383
  %391 = icmp eq i8 %384, 0
  br i1 %391, label %464, label %392

392:                                              ; preds = %390
  %393 = load ptr, ptr %5, align 8, !tbaa !107
  %394 = call fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef %393, i32 noundef %385, ptr noundef null, ptr noundef %2, i32 noundef -1, i8 noundef zeroext 1) #25
  %395 = icmp sgt i32 %386, 0
  br i1 %395, label %396, label %405

396:                                              ; preds = %392
  %397 = zext nneg i32 %386 to i64
  br label %398

398:                                              ; preds = %396, %398
  %399 = phi i64 [ 0, %396 ], [ %403, %398 ]
  %400 = load ptr, ptr %6, align 8, !tbaa !107
  %401 = getelementptr inbounds ptr, ptr %400, i64 %399
  %402 = load ptr, ptr %401, align 8, !tbaa !107
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %402) #25
  %403 = add nuw nsw i64 %399, 1
  %404 = icmp eq i64 %403, %397
  br i1 %404, label %405, label %398, !llvm.loop !414

405:                                              ; preds = %398, %392
  %406 = add nsw i32 %385, -1
  %407 = sext i32 %406 to i64
  %408 = icmp sgt i32 %385, 0
  br i1 %408, label %409, label %461

409:                                              ; preds = %405
  %410 = load ptr, ptr %7, align 8, !tbaa !107
  %411 = getelementptr inbounds ptr, ptr %410, i64 %407
  %412 = load ptr, ptr %411, align 8, !tbaa !107
  %413 = zext nneg i32 %385 to i64
  br label %414

414:                                              ; preds = %409, %458
  %415 = phi i64 [ 0, %409 ], [ %420, %458 ]
  %416 = phi ptr [ %412, %409 ], [ %459, %458 ]
  %417 = load ptr, ptr %5, align 8, !tbaa !107
  %418 = getelementptr inbounds ptr, ptr %417, i64 %415
  %419 = load ptr, ptr %418, align 8, !tbaa !107
  %420 = add nuw nsw i64 %415, 1
  %421 = icmp eq i64 %420, %413
  %422 = and i64 %420, 4294967295
  %423 = select i1 %421, i64 0, i64 %422
  %424 = getelementptr inbounds ptr, ptr %417, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !107
  %426 = call ptr @BM_edge_exists(ptr noundef %419, ptr noundef %425) #24
  %427 = load ptr, ptr %7, align 8, !tbaa !107
  %428 = getelementptr inbounds ptr, ptr %427, i64 %415
  %429 = load ptr, ptr %428, align 8, !tbaa !107
  %430 = icmp eq ptr %429, %426
  br i1 %430, label %458, label %431

431:                                              ; preds = %414
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %429, ptr noundef %426) #24
  %432 = icmp slt i64 %415, %407
  %433 = load ptr, ptr %7, align 8, !tbaa !107
  %434 = getelementptr inbounds ptr, ptr %433, i64 %415
  %435 = load ptr, ptr %434, align 8, !tbaa !107
  br i1 %432, label %436, label %458

436:                                              ; preds = %431
  %437 = getelementptr inbounds ptr, ptr %433, i64 %420
  %438 = load ptr, ptr %437, align 8, !tbaa !107
  %439 = icmp eq ptr %435, %438
  br i1 %439, label %440, label %458

440:                                              ; preds = %436
  %441 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %435, i8 noundef zeroext 4) #25, !range !53
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %450, label %443

443:                                              ; preds = %440
  %444 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %416, i8 noundef zeroext 4) #25, !range !53
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %443
  call fastcc void @_bm_elem_flag_disable(ptr noundef %426, i8 noundef zeroext 4) #25
  %447 = load ptr, ptr %7, align 8, !tbaa !107
  %448 = getelementptr inbounds ptr, ptr %447, i64 %415
  %449 = load ptr, ptr %448, align 8, !tbaa !107
  br label %450

450:                                              ; preds = %446, %443, %440
  %451 = phi ptr [ %449, %446 ], [ %435, %443 ], [ %435, %440 ]
  %452 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %451, i8 noundef zeroext 8) #25, !range !53
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %450
  %455 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %416, i8 noundef zeroext 8) #25, !range !53
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %458, label %457

457:                                              ; preds = %454
  call fastcc void @_bm_elem_flag_enable(ptr noundef %426, i8 noundef zeroext 8) #25
  br label %458

458:                                              ; preds = %431, %436, %414, %450, %454, %457
  %459 = phi ptr [ %416, %450 ], [ %416, %457 ], [ %416, %454 ], [ %416, %414 ], [ %435, %436 ], [ %435, %431 ]
  %460 = icmp eq i64 %420, %413
  br i1 %460, label %461, label %414, !llvm.loop !415

461:                                              ; preds = %458, %405
  %462 = icmp eq ptr %394, null
  br i1 %462, label %464, label %463

463:                                              ; preds = %461
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %394, i8 noundef zeroext 16) #25
  br label %464

464:                                              ; preds = %3, %461, %463, %390
  %465 = phi i8 [ %384, %461 ], [ %384, %463 ], [ 0, %390 ], [ 0, %3 ]
  %466 = load ptr, ptr %5, align 8
  %467 = icmp ne ptr %466, null
  %468 = icmp ne ptr %466, %8
  %469 = and i1 %467, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %464
  %471 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  call void %471(ptr noundef nonnull %466) #24
  br label %472

472:                                              ; preds = %470, %464
  %473 = load ptr, ptr %6, align 8
  %474 = icmp ne ptr %473, null
  %475 = icmp ne ptr %473, %9
  %476 = and i1 %474, %475
  br i1 %476, label %477, label %479

477:                                              ; preds = %472
  %478 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  call void %478(ptr noundef nonnull %473) #24
  br label %479

479:                                              ; preds = %477, %472
  %480 = load ptr, ptr %7, align 8
  %481 = icmp ne ptr %480, null
  %482 = icmp ne ptr %480, %10
  %483 = and i1 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %479
  %485 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  call void %485(ptr noundef nonnull %480) #24
  br label %486

486:                                              ; preds = %484, %479
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  ret i8 %465
}

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }

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
!34 = !{!35, !41, i64 40}
!35 = !{!"BevelParams", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !37, i64 56, !37, i64 57, !37, i64 58, !37, i64 59, !36, i64 64, !40, i64 72, !40, i64 76}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ProfileSpacing", !36, i64 0, !36, i64 8, !40, i64 16}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!35, !40, i64 44}
!43 = !{!35, !40, i64 48}
!44 = !{!35, !41, i64 52}
!45 = !{!35, !37, i64 56}
!46 = !{!35, !37, i64 57}
!47 = !{!35, !37, i64 59}
!48 = !{!35, !36, i64 64}
!49 = !{!35, !40, i64 72}
!50 = !{!35, !40, i64 76}
!51 = !{!35, !36, i64 0}
!52 = !{!35, !36, i64 8}
!53 = !{i8 0, i8 17}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !55}
!60 = !{!"bmesh_bevel.c:set_profile_spacing"}
!61 = !{!35, !36, i64 16}
!62 = !{!35, !40, i64 32}
!63 = !{!35, !36, i64 24}
!64 = !{!"bmesh_bevel.c:bevel_limit_offset"}
!65 = distinct !{!65, !55}
!66 = distinct !{!66, !55}
!67 = distinct !{!67, !55}
!68 = !{!"bmesh_bevel.c:BM_iter_new"}
!69 = !{!"bmesh_bevel.c:_bm_elem_flag_test"}
!70 = !{!71, !37, i64 13}
!71 = !{!"BMHeader", !36, i64 0, !40, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!72 = !{!"bmesh_bevel.c:bevel_vert_construct"}
!73 = !{!74, !37, i64 14}
!74 = !{!"BMEdge", !71, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!76 = !{i8 0, i8 2}
!77 = distinct !{!77, !55}
!78 = !{!79, !36, i64 48}
!79 = !{!"BMVert", !71, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!80 = !{!81, !36, i64 0}
!81 = !{!"BevVert", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !36, i64 32, !36, i64 40, !36, i64 48}
!82 = !{!81, !40, i64 8}
!83 = !{!81, !40, i64 12}
!84 = !{!81, !40, i64 16}
!85 = !{!81, !41, i64 20}
!86 = !{!81, !36, i64 32}
!87 = !{!81, !36, i64 48}
!88 = !{!89, !40, i64 20}
!89 = !{!"VMesh", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24}
!90 = !{!91, !36, i64 16}
!91 = !{!"EdgeHalf", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 76, !37, i64 77, !37, i64 78}
!92 = !{!74, !36, i64 40}
!93 = distinct !{!93, !55}
!94 = distinct !{!94, !55}
!95 = !{!91, !36, i64 24}
!96 = !{!91, !36, i64 32}
!97 = !{!91, !37, i64 76}
!98 = !{!91, !40, i64 56}
!99 = !{!74, !36, i64 32}
!100 = !{!91, !37, i64 77}
!101 = distinct !{!101, !55}
!102 = distinct !{!102, !55}
!103 = distinct !{!103, !55}
!104 = !{i32 -1, i32 2}
!105 = distinct !{!105, !55}
!106 = !{i64 0, i64 8, !107, i64 8, i64 8, !107, i64 16, i64 8, !107, i64 24, i64 8, !107, i64 32, i64 8, !107, i64 40, i64 8, !107, i64 48, i64 8, !107, i64 56, i64 4, !108, i64 60, i64 4, !109, i64 64, i64 4, !109, i64 68, i64 4, !109, i64 72, i64 4, !109, i64 76, i64 1, !110, i64 77, i64 1, !110, i64 78, i64 1, !110}
!107 = !{!36, !36, i64 0}
!108 = !{!40, !40, i64 0}
!109 = !{!41, !41, i64 0}
!110 = !{!37, !37, i64 0}
!111 = distinct !{!111, !55}
!112 = !{!91, !36, i64 0}
!113 = !{!91, !36, i64 8}
!114 = !{!91, !41, i64 68}
!115 = !{!91, !41, i64 72}
!116 = !{!91, !37, i64 78}
!117 = distinct !{!117, !55}
!118 = !{!81, !36, i64 40}
!119 = distinct !{!119, !55}
!120 = !{!"bmesh_bevel.c:build_boundary"}
!121 = !{!81, !37, i64 25}
!122 = !{!91, !41, i64 64}
!123 = !{!91, !41, i64 60}
!124 = distinct !{!124, !55}
!125 = !{!126, !36, i64 56}
!126 = !{!"BoundVert", !36, i64 0, !36, i64 8, !127, i64 16, !36, i64 40, !36, i64 48, !36, i64 56, !40, i64 64, !128, i64 72, !37, i64 168}
!127 = !{!"NewVert", !36, i64 0, !37, i64 8}
!128 = !{!"Profile", !41, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !36, i64 80, !36, i64 88}
!129 = !{!126, !36, i64 48}
!130 = !{!126, !36, i64 40}
!131 = !{!91, !36, i64 40}
!132 = !{!91, !36, i64 48}
!133 = !{!89, !40, i64 24}
!134 = !{!89, !36, i64 8}
!135 = !{!35, !37, i64 58}
!136 = distinct !{!136, !55}
!137 = !{!126, !36, i64 0}
!138 = distinct !{!138, !55}
!139 = !{!89, !40, i64 16}
!140 = !{!"bmesh_bevel.c:BM_iter_step"}
!141 = !{!142, !36, i64 48}
!142 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !40, i64 56, !37, i64 60}
!143 = !{!"bmesh_bevel.c:adjust_offsets"}
!144 = distinct !{!144, !55}
!145 = distinct !{!145, !55}
!146 = distinct !{!146, !55}
!147 = distinct !{!147, !55}
!148 = !{!"bmesh_bevel.c:find_bevvert"}
!149 = !{!"bmesh_bevel.c:build_vmesh"}
!150 = !{!89, !36, i64 0}
!151 = !{!126, !40, i64 64}
!152 = !{!127, !36, i64 0}
!153 = !{!126, !36, i64 16}
!154 = distinct !{!154, !55}
!155 = distinct !{!155, !55}
!156 = distinct !{!156, !55}
!157 = !{!126, !41, i64 72}
!158 = distinct !{!158, !55}
!159 = distinct !{!159, !55}
!160 = !{!"bmesh_bevel.c:bevel_build_edge_polygons"}
!161 = !{!74, !36, i64 24}
!162 = distinct !{!162, !55}
!163 = !{!"bmesh_bevel.c:bevel_rebuild_existing_polygons"}
!164 = distinct !{!164, !55}
!165 = !{!"bmesh_bevel.c:bevel_reattach_wires"}
!166 = distinct !{!166, !55}
!167 = distinct !{!167, !55}
!168 = distinct !{!168, !55}
!169 = !{!"bmesh_bevel.c:find_even_superellipse_params"}
!170 = distinct !{!170, !55, !171, !172}
!171 = !{!"llvm.loop.isvectorized", i32 1}
!172 = !{!"llvm.loop.unroll.runtime.disable"}
!173 = distinct !{!173, !55, !171, !172}
!174 = distinct !{!174, !55}
!175 = distinct !{!175, !55}
!176 = distinct !{!176, !55}
!177 = !{!"bmesh_bevel.c:power_of_2_max_i"}
!178 = !{i32 0, i32 2}
!179 = distinct !{!179, !55}
!180 = !{!"bmesh_bevel.c:find_superellipse_chord_u"}
!181 = distinct !{!181, !55}
!182 = !{!"bmesh_bevel.c:superellipse_chord_length_squared"}
!183 = !{!"bmesh_bevel.c:superellipse_co"}
!184 = !{!"bmesh_bevel.c:len_squared_v2v2"}
!185 = !{!"bmesh_bevel.c:sub_v2_v2v2"}
!186 = !{!"bmesh_bevel.c:dot_v2v2"}
!187 = !{!"bmesh_bevel.c:is_power_of_2_i"}
!188 = !{i32 0, i32 33}
!189 = !{!"bmesh_bevel.c:BM_edge_other_vert"}
!190 = !{!"bmesh_bevel.c:BM_iter_init"}
!191 = !{!142, !37, i64 60}
!192 = !{!142, !36, i64 40}
!193 = !{!194, !36, i64 32}
!194 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !40, i64 128, !36, i64 136, !195, i64 144, !195, i64 344, !195, i64 544, !195, i64 744, !196, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !197, i64 960, !36, i64 976, !197, i64 984, !36, i64 1000}
!195 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!196 = !{!"short", !37, i64 0}
!197 = !{!"ListBase", !36, i64 0, !36, i64 8}
!198 = !{!194, !36, i64 40}
!199 = !{!194, !36, i64 56}
!200 = !{!"bmesh_bevel.c:BM_edge_is_wire"}
!201 = !{!"bmesh_bevel.c:_bm_elem_flag_disable"}
!202 = !{!"bmesh_bevel.c:_bm_elem_index_get"}
!203 = !{!71, !40, i64 8}
!204 = !{!"bmesh_bevel.c:bev_ccw_test"}
!205 = !{!206, !36, i64 56}
!206 = !{!"BMLoop", !71, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!207 = !{!"bmesh_bevel.c:edge_face_angle"}
!208 = !{!"bmesh_bevel.c:contig_ldata_across_edge"}
!209 = !{!194, !40, i64 716}
!210 = !{!206, !36, i64 32}
!211 = !{!206, !36, i64 16}
!212 = distinct !{!212, !55}
!213 = !{!"bmesh_bevel.c:contig_ldata_across_loops"}
!214 = !{!194, !36, i64 544}
!215 = !{!216, !40, i64 4}
!216 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96}
!217 = !{!216, !40, i64 0}
!218 = !{!206, !36, i64 0}
!219 = !{!"bmesh_bevel.c:next_bev"}
!220 = distinct !{!220, !55}
!221 = !{!"bmesh_bevel.c:find_other_end_edge_half"}
!222 = !{!"bmesh_bevel.c:offset_in_plane"}
!223 = !{!"bmesh_bevel.c:add_new_bound_vert"}
!224 = !{!126, !36, i64 8}
!225 = !{!"bmesh_bevel.c:adjust_bound_vert"}
!226 = !{!"bmesh_bevel.c:slide_dist"}
!227 = !{!"bmesh_bevel.c:set_bound_vert_seams"}
!228 = !{!126, !37, i64 168}
!229 = distinct !{!229, !55}
!230 = distinct !{!230, !55}
!231 = !{!81, !37, i64 24}
!232 = !{!"bmesh_bevel.c:set_profile_params"}
!233 = !{!128, !41, i64 0}
!234 = !{!"bmesh_bevel.c:calculate_profile"}
!235 = !{!128, !36, i64 80}
!236 = !{!128, !36, i64 88}
!237 = distinct !{!237, !55}
!238 = distinct !{!238, !55}
!239 = !{!"bmesh_bevel.c:offset_meet"}
!240 = !{!"bmesh_bevel.c:offset_in_two_planes"}
!241 = !{!"bmesh_bevel.c:offset_on_edge_between"}
!242 = !{!"bmesh_bevel.c:len_v3v3"}
!243 = !{!"bmesh_bevel.c:move_profile_plane"}
!244 = !{!"bmesh_bevel.c:find_edge_half"}
!245 = distinct !{!245, !55}
!246 = !{!"bmesh_bevel.c:sub_v3_v3v3"}
!247 = !{!"bmesh_bevel.c:normalize_v3"}
!248 = !{!"bmesh_bevel.c:copy_v3_v3"}
!249 = !{!"bmesh_bevel.c:zero_v3"}
!250 = !{!"bmesh_bevel.c:cross_v3_v3v3"}
!251 = !{!"bmesh_bevel.c:madd_v3_v3fl"}
!252 = !{!"bmesh_bevel.c:normalize_v3_v3"}
!253 = !{!"bmesh_bevel.c:dot_v3v3"}
!254 = !{!"bmesh_bevel.c:mul_v3_v3fl"}
!255 = !{!"bmesh_bevel.c:project_to_edge"}
!256 = !{!"bmesh_bevel.c:add_v3_v3v3"}
!257 = !{!"bmesh_bevel.c:make_unit_square_map"}
!258 = !{!"bmesh_bevel.c:is_zero_v3"}
!259 = !{!"bmesh_bevel.c:sub_v3_v3"}
!260 = !{!"bmesh_bevel.c:max_ff"}
!261 = !{!"bmesh_bevel.c:negate_v3"}
!262 = !{!"bmesh_bevel.c:is_outside_edge"}
!263 = !{!"bmesh_bevel.c:len_squared_v3v3"}
!264 = !{!"bmesh_bevel.c:other_edge_half_visited"}
!265 = !{!"bmesh_bevel.c:offset_meet_edge"}
!266 = !{!"bmesh_bevel.c:len_v3"}
!267 = !{!"bmesh_bevel.c:BLI_ghashIterator_done"}
!268 = !{!269, !36, i64 8}
!269 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!270 = !{!"bmesh_bevel.c:BLI_ghashIterator_getValue"}
!271 = !{!272, !36, i64 16}
!272 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!273 = !{!"bmesh_bevel.c:any_edge_half_offset_changed"}
!274 = distinct !{!274, !55}
!275 = !{!"bmesh_bevel.c:edge_half_offset_changed"}
!276 = !{!"bmesh_bevel.c:mesh_vert"}
!277 = !{!"bmesh_bevel.c:create_mesh_bmvert"}
!278 = !{!"bmesh_bevel.c:move_weld_profile_planes"}
!279 = !{!"bmesh_bevel.c:copy_mesh_vert"}
!280 = !{!"bmesh_bevel.c:get_profile_point"}
!281 = !{!"bmesh_bevel.c:bevel_build_one_wire"}
!282 = !{!"bmesh_bevel.c:bevel_build_poly"}
!283 = distinct !{!283, !55}
!284 = distinct !{!284, !55}
!285 = !{!"bmesh_bevel.c:bevel_build_rings"}
!286 = distinct !{!286, !55}
!287 = distinct !{!287, !55}
!288 = distinct !{!288, !55}
!289 = distinct !{!289, !55}
!290 = distinct !{!290, !55}
!291 = distinct !{!291, !55}
!292 = distinct !{!292, !55}
!293 = distinct !{!293, !55}
!294 = distinct !{!294, !55}
!295 = !{!"bmesh_bevel.c:bevel_build_trifan"}
!296 = !{!297, !36, i64 24}
!297 = !{!"BMFace", !71, i64 0, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 36, !196, i64 48}
!298 = !{!206, !36, i64 64}
!299 = !{!297, !40, i64 32}
!300 = distinct !{!300, !55}
!301 = !{!"bmesh_bevel.c:bevel_build_quadstrip"}
!302 = distinct !{!302, !55}
!303 = !{!"bmesh_bevel.c:boundvert_rep_face"}
!304 = !{!"bmesh_bevel.c:bev_create_ngon"}
!305 = distinct !{!305, !55}
!306 = !{!297, !196, i64 48}
!307 = !{!"bmesh_bevel.c:_bm_elem_flag_enable"}
!308 = !{!"bmesh_bevel.c:pipe_test"}
!309 = distinct !{!309, !55}
!310 = distinct !{!310, !55}
!311 = !{!"bmesh_bevel.c:pipe_adj_vmesh"}
!312 = distinct !{!312, !55}
!313 = distinct !{!313, !55}
!314 = distinct !{!314, !55}
!315 = !{!"bmesh_bevel.c:tri_corner_test"}
!316 = distinct !{!316, !55}
!317 = !{!"bmesh_bevel.c:tri_corner_adj_vmesh"}
!318 = distinct !{!318, !55}
!319 = distinct !{!319, !55}
!320 = distinct !{!320, !55}
!321 = !{!"bmesh_bevel.c:adj_vmesh"}
!322 = distinct !{!322, !55}
!323 = distinct !{!323, !55}
!324 = !{!"bmesh_bevel.c:is_canon"}
!325 = !{!"bmesh_bevel.c:vmesh_copy_equiv_verts"}
!326 = distinct !{!326, !55}
!327 = distinct !{!327, !55}
!328 = distinct !{!328, !55}
!329 = !{!"bmesh_bevel.c:bev_create_quad_tri_ex"}
!330 = !{!"bmesh_bevel.c:bev_merge_uvs"}
!331 = distinct !{!331, !55}
!332 = distinct !{!332, !55}
!333 = !{!"bmesh_bevel.c:snap_to_pipe_profile"}
!334 = !{!"bmesh_bevel.c:snap_to_superellipsoid"}
!335 = !{!"bmesh_bevel.c:min_ff"}
!336 = !{!"bmesh_bevel.c:make_unit_cube_map"}
!337 = !{!"bmesh_bevel.c:make_cube_corner_adj_vmesh"}
!338 = distinct !{!338, !55}
!339 = distinct !{!339, !55}
!340 = distinct !{!340, !55}
!341 = distinct !{!341, !55}
!342 = distinct !{!342, !55}
!343 = distinct !{!343, !55}
!344 = !{!"bmesh_bevel.c:add_v3_v3"}
!345 = !{!"bmesh_bevel.c:mul_v3_fl"}
!346 = !{!"bmesh_bevel.c:make_cube_corner_straight"}
!347 = distinct !{!347, !55}
!348 = distinct !{!348, !55}
!349 = distinct !{!349, !55}
!350 = distinct !{!350, !55}
!351 = !{!"bmesh_bevel.c:new_adj_vmesh"}
!352 = !{!"bmesh_bevel.c:cubic_subdiv"}
!353 = distinct !{!353, !55}
!354 = distinct !{!354, !55}
!355 = distinct !{!355, !55}
!356 = distinct !{!356, !55}
!357 = distinct !{!357, !55}
!358 = distinct !{!358, !55}
!359 = distinct !{!359, !55}
!360 = distinct !{!360, !55}
!361 = distinct !{!361, !55}
!362 = distinct !{!362, !55}
!363 = distinct !{!363, !55}
!364 = distinct !{!364, !55}
!365 = distinct !{!365, !55}
!366 = distinct !{!366, !55}
!367 = distinct !{!367, !55}
!368 = distinct !{!368, !55}
!369 = distinct !{!369, !55}
!370 = distinct !{!370, !55}
!371 = distinct !{!371, !55}
!372 = distinct !{!372, !55}
!373 = distinct !{!373, !55}
!374 = distinct !{!374, !55}
!375 = !{!"bmesh_bevel.c:interp_vmesh"}
!376 = distinct !{!376, !55}
!377 = distinct !{!377, !55}
!378 = distinct !{!378, !55}
!379 = !{!"bmesh_bevel.c:mesh_vert_canon"}
!380 = !{!"bmesh_bevel.c:avg4"}
!381 = !{!"bmesh_bevel.c:sabin_gamma"}
!382 = !{!"bmesh_bevel.c:fill_vmesh_fracs"}
!383 = distinct !{!383, !55}
!384 = distinct !{!384, !55}
!385 = !{!"bmesh_bevel.c:fill_profile_fracs"}
!386 = distinct !{!386, !55}
!387 = distinct !{!387, !55}
!388 = !{!"bmesh_bevel.c:interp_range"}
!389 = distinct !{!389, !55}
!390 = !{!"bmesh_bevel.c:vmesh_center"}
!391 = distinct !{!391, !55}
!392 = !{!"bmesh_bevel.c:len_squared_v3"}
!393 = !{!"bmesh_bevel.c:zero_v2"}
!394 = !{!"bmesh_bevel.c:add_v2_v2"}
!395 = !{!"bmesh_bevel.c:mul_v2_fl"}
!396 = !{!"bmesh_bevel.c:copy_v2_v2"}
!397 = !{!"bmesh_bevel.c:BM_edge_is_manifold"}
!398 = !{!206, !36, i64 40}
!399 = !{!"bmesh_bevel.c:bev_create_quad_straddle"}
!400 = distinct !{!400, !55}
!401 = !{!"bmesh_bevel.c:bev_create_quad_tri"}
!402 = !{!"bmesh_bevel.c:bev_merge_end_uvs"}
!403 = distinct !{!403, !55}
!404 = !{!"bmesh_bevel.c:bevvert_is_weld_cross"}
!405 = !{!"bmesh_bevel.c:weld_cross_attrs_copy"}
!406 = distinct !{!406, !55}
!407 = distinct !{!407, !55}
!408 = !{!"bmesh_bevel.c:bev_rebuild_polygon"}
!409 = !{!206, !36, i64 24}
!410 = distinct !{!410, !55}
!411 = distinct !{!411, !55}
!412 = distinct !{!412, !55}
!413 = distinct !{!413, !55}
!414 = distinct !{!414, !55}
!415 = distinct !{!415, !55}
