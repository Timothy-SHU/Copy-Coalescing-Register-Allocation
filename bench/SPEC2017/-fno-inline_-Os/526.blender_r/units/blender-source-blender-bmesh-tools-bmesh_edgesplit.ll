; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_edgesplit.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_edgesplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__func__.BM_mesh_edgesplit = private unnamed_addr constant [18 x i8] c"BM_mesh_edgesplit\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_edgesplit_validate_seams = private unnamed_addr constant [28 x i8] c"bm_edgesplit_validate_seams\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_edgesplit(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_edgesplit) #7
  %15 = load ptr, ptr %10, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.BMEditSelection, ptr %18, i64 0, i32 3
  %20 = load i8, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i8 %20, 8
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BMEditSelection, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  tail call void @BLI_ghash_insert(ptr noundef %14, ptr noundef %24, ptr noundef nonnull %18) #7
  br label %25

25:                                               ; preds = %17, %22
  %26 = load ptr, ptr %18, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !47

28:                                               ; preds = %25, %13, %9, %4
  %29 = phi ptr [ null, %9 ], [ null, %4 ], [ %14, %13 ], [ %14, %25 ]
  %30 = phi i1 [ true, %9 ], [ true, %4 ], [ false, %13 ], [ false, %25 ]
  %31 = icmp eq i8 %2, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = icmp ne i8 %1, 0
  %34 = zext i1 %33 to i8
  %35 = or disjoint i8 %34, 2
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %0, i8 noundef zeroext %35, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  br label %36

36:                                               ; preds = %32, %28
  %37 = icmp eq i8 %1, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %36
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %38, %57
  %42 = phi ptr [ %58, %57 ], [ %39, %38 ]
  %43 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %42) #8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %47) #8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !53
  %53 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %52) #8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  call fastcc void @_bm_elem_flag_enable(ptr noundef %47, i8 noundef zeroext 16) #8
  %56 = load ptr, ptr %51, align 8, !tbaa !53
  call fastcc void @_bm_elem_flag_enable(ptr noundef %56, i8 noundef zeroext 16) #8
  br label %57

57:                                               ; preds = %41, %55, %50, %45
  %58 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %41, !llvm.loop !54

60:                                               ; preds = %57, %38, %36
  call fastcc void @bm_edgesplit_validate_seams(ptr noundef %0) #8
  %61 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %91, label %63

63:                                               ; preds = %60, %88
  %64 = phi ptr [ %89, %88 ], [ %61, %60 ]
  %65 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %64) #8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %64, i8 noundef zeroext -128) #8
  %68 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %64) #8, !range !55
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 4
  br label %72

72:                                               ; preds = %70, %80
  %73 = load ptr, ptr %71, align 8, !tbaa !56
  call void @bmesh_edge_separate(ptr noundef %0, ptr noundef nonnull %64, ptr noundef %73, i8 noundef zeroext %3) #7
  br i1 %30, label %80, label %74

74:                                               ; preds = %72
  %75 = call ptr @BLI_ghash_lookup(ptr noundef %29, ptr noundef nonnull %64) #7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  call void @_bm_select_history_store_after_notest(ptr noundef %0, ptr noundef nonnull %75, ptr noundef %79) #7
  br label %80

80:                                               ; preds = %74, %77, %72
  %81 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %64) #8, !range !55
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %72, label %83, !llvm.loop !59

83:                                               ; preds = %80, %67
  %84 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  call fastcc void @_bm_elem_flag_enable(ptr noundef %85, i8 noundef zeroext 16) #8
  %86 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !53
  call fastcc void @_bm_elem_flag_enable(ptr noundef %87, i8 noundef zeroext 16) #8
  br label %88

88:                                               ; preds = %63, %83
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %63, !llvm.loop !60

91:                                               ; preds = %88, %60
  br i1 %37, label %111, label %92

92:                                               ; preds = %91
  %93 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %92, %108
  %96 = phi ptr [ %109, %108 ], [ %93, %92 ]
  %97 = getelementptr inbounds %struct.BMEdge, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !49
  %99 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %98) #8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  call fastcc void @_bm_elem_flag_disable(ptr noundef %98, i8 noundef zeroext 16) #8
  br label %102

102:                                              ; preds = %101, %95
  %103 = getelementptr inbounds %struct.BMEdge, ptr %96, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !53
  %105 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %104) #8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  call fastcc void @_bm_elem_flag_disable(ptr noundef %104, i8 noundef zeroext 16) #8
  br label %108

108:                                              ; preds = %102, %107
  %109 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %95, !llvm.loop !61

111:                                              ; preds = %108, %92, %91
  %112 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0) #8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %154, label %114

114:                                              ; preds = %111, %151
  %115 = phi ptr [ %152, %151 ], [ %112, %111 ]
  %116 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %115) #8
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %151, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.BMEdge, ptr %115, i64 0, i32 2
  br label %120

120:                                              ; preds = %118, %150
  %121 = phi i1 [ true, %118 ], [ false, %150 ]
  %122 = phi i64 [ 0, %118 ], [ 1, %150 ]
  %123 = getelementptr inbounds ptr, ptr %119, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !49
  %125 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %124) #8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %150, label %127

127:                                              ; preds = %120
  call fastcc void @_bm_elem_flag_disable(ptr noundef %124, i8 noundef zeroext 16) #8
  br i1 %30, label %149, label %128

128:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @bmesh_vert_separate(ptr noundef %0, ptr noundef %124, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %3) #7
  %129 = load i32, ptr %7, align 4, !tbaa !62
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = call ptr @BLI_ghash_lookup(ptr noundef %29, ptr noundef %124) #7
  %133 = icmp ne ptr %132, null
  %134 = load i32, ptr %7, align 4
  %135 = icmp sgt i32 %134, 1
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %146

137:                                              ; preds = %131, %137
  %138 = phi i64 [ %142, %137 ], [ 1, %131 ]
  %139 = load ptr, ptr %6, align 8, !tbaa !43
  %140 = getelementptr inbounds ptr, ptr %139, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !43
  call void @_bm_select_history_store_after_notest(ptr noundef %0, ptr noundef nonnull %132, ptr noundef %141) #7
  %142 = add nuw nsw i64 %138, 1
  %143 = load i32, ptr %7, align 4, !tbaa !62
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %142, %144
  br i1 %145, label %137, label %146, !llvm.loop !63

146:                                              ; preds = %137, %131, %128
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %148 = load ptr, ptr %6, align 8, !tbaa !43
  call void %147(ptr noundef %148) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br label %150

149:                                              ; preds = %127
  call void @bmesh_vert_separate(ptr noundef %0, ptr noundef %124, ptr noundef null, ptr noundef null, i8 noundef zeroext %3) #7
  br label %150

150:                                              ; preds = %146, %149, %120
  br i1 %121, label %120, label %151, !llvm.loop !64

151:                                              ; preds = %150, %114
  %152 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %114, !llvm.loop !65

154:                                              ; preds = %151, %111
  br i1 %30, label %156, label %155

155:                                              ; preds = %154
  call void @BLI_ghash_free(ptr noundef %29, ptr noundef null, ptr noundef null) #7
  br label %156

156:                                              ; preds = %155, %154
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !66 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #8
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #8
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !68
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !68
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edgesplit_validate_seams(ptr noundef %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #7
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %4 = load i32, ptr %0, align 8, !tbaa !74
  %5 = sext i32 %4 to i64
  %6 = tail call ptr %3(i64 noundef %5, ptr noundef nonnull @__func__.bm_edgesplit_validate_seams) #7
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %1, %38
  %10 = phi ptr [ %39, %38 ], [ %7, %1 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %10, i8 noundef zeroext -128) #8
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %10) #8, !range !55
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = call fastcc i32 @_bm_elem_index_get(ptr noundef %19) #8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %6, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !75
  %24 = icmp ult i8 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = add nuw nsw i8 %23, 1
  store i8 %26, ptr %22, align 1, !tbaa !75
  br label %27

27:                                               ; preds = %25, %17
  %28 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = call fastcc i32 @_bm_elem_index_get(ptr noundef %29) #8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %6, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !75
  %34 = icmp ult i8 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = add nuw nsw i8 %33, 1
  store i8 %36, ptr %32, align 1, !tbaa !75
  br label %37

37:                                               ; preds = %27, %35, %9
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %10, i8 noundef zeroext 16) #8
  br label %38

38:                                               ; preds = %37, %14
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %9, !llvm.loop !76

41:                                               ; preds = %38, %1
  %42 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %71, label %44

44:                                               ; preds = %41, %68
  %45 = phi ptr [ %69, %68 ], [ %42, %41 ]
  %46 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %45) #8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = call fastcc i32 @_bm_elem_index_get(ptr noundef %50) #8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %6, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !75
  %55 = icmp ult i8 %54, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = add nuw nsw i8 %54, 1
  store i8 %57, ptr %53, align 1, !tbaa !75
  br label %58

58:                                               ; preds = %56, %48
  %59 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = call fastcc i32 @_bm_elem_index_get(ptr noundef %60) #8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %6, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !75
  %65 = icmp ult i8 %64, 2
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = add nuw nsw i8 %64, 1
  store i8 %67, ptr %63, align 1, !tbaa !75
  br label %68

68:                                               ; preds = %58, %66, %44
  %69 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %44, !llvm.loop !77

71:                                               ; preds = %68, %41
  %72 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %98, label %74

74:                                               ; preds = %71, %95
  %75 = phi ptr [ %96, %95 ], [ %72, %71 ]
  %76 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %75) #8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.BMEdge, ptr %75, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !49
  %81 = call fastcc i32 @_bm_elem_index_get(ptr noundef %80) #8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %6, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !75
  %85 = icmp eq i8 %84, 1
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.BMEdge, ptr %75, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !53
  %89 = call fastcc i32 @_bm_elem_index_get(ptr noundef %88) #8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %6, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !75
  %93 = icmp eq i8 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %75, i8 noundef zeroext 16) #8
  br label %95

95:                                               ; preds = %74, %94, %86, %78
  %96 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %74, !llvm.loop !78

98:                                               ; preds = %95, %71
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %99(ptr noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @bmesh_edge_separate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bm_select_history_store_after_notest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !81 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !68
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @bmesh_vert_separate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !83
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  store ptr %7, ptr %0, align 8, !tbaa !75
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !87
  ret i32 %3
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!34 = !{!35, !39, i64 960}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!39, !39, i64 0}
!44 = !{!45, !37, i64 24}
!45 = !{!"BMEditSelection", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24}
!46 = !{!45, !39, i64 16}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !39, i64 24}
!50 = !{!"BMEdge", !51, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !52, i64 48, !52, i64 64}
!51 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!52 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!53 = !{!50, !39, i64 32}
!54 = distinct !{!54, !48}
!55 = !{i8 0, i8 2}
!56 = !{!50, !39, i64 40}
!57 = !{!58, !39, i64 24}
!58 = !{!"BMLoop", !51, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = !{!"bmesh_edgesplit.c:BM_iter_new"}
!67 = !{!"bmesh_edgesplit.c:_bm_elem_flag_test"}
!68 = !{!51, !37, i64 13}
!69 = !{!"bmesh_edgesplit.c:_bm_elem_flag_enable"}
!70 = !{!"bmesh_edgesplit.c:BM_iter_step"}
!71 = !{!72, !39, i64 48}
!72 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!73 = !{!"bmesh_edgesplit.c:bm_edgesplit_validate_seams"}
!74 = !{!35, !36, i64 0}
!75 = !{!37, !37, i64 0}
!76 = distinct !{!76, !48}
!77 = distinct !{!77, !48}
!78 = distinct !{!78, !48}
!79 = !{!"bmesh_edgesplit.c:BM_edge_is_boundary"}
!80 = !{!58, !39, i64 40}
!81 = !{!"bmesh_edgesplit.c:_bm_elem_flag_disable"}
!82 = !{!"bmesh_edgesplit.c:BM_iter_init"}
!83 = !{!72, !37, i64 60}
!84 = !{!72, !39, i64 40}
!85 = !{!35, !39, i64 40}
!86 = !{!"bmesh_edgesplit.c:_bm_elem_index_get"}
!87 = !{!51, !36, i64 8}
