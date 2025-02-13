; ModuleID = 'blender/source/blender/bmesh/operators/bmo_removedoubles.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_removedoubles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.CDBlockBytes = type { [64 x i8] }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }

@.str = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vert_snap\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"merge_co\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"collapse_uvs edges=%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"BLI_array.edges\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"targetmap.out\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"find_doubles verts=%av keep_verts=%fv\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"BLI_array.blocks\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"keep_verts\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_weld_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str) #10
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %10 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %5, ptr noundef nonnull %9) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %14, i16 noundef signext 1) #11
  call fastcc void @_bm_elem_flag_merge(ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  br label %15

15:                                               ; preds = %8, %12
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !41

18:                                               ; preds = %15, %2
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %18 ]
  call fastcc void @remdoubles_splitface(ptr noundef nonnull %22, ptr noundef %0, ptr noundef %5) #11
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !43

25:                                               ; preds = %21, %18
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %25, %66
  %29 = phi ptr [ %67, %66 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %33) #11
  %35 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %38) #11
  %40 = icmp ne i8 %34, 0
  %41 = icmp ne i8 %39, 0
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %28
  %44 = icmp eq i8 %34, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %5, ptr noundef nonnull %31) #11
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi ptr [ %46, %45 ], [ %31, %43 ]
  %49 = icmp eq i8 %39, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %5, ptr noundef nonnull %36) #11
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi ptr [ %51, %50 ], [ %36, %47 ]
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %57, i16 noundef signext 2) #11
  br label %63

58:                                               ; preds = %52
  %59 = call ptr @BM_edge_exists(ptr noundef %48, ptr noundef %53) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %48, ptr noundef %53, ptr noundef nonnull %29, i32 noundef 2) #10
  br label %63

63:                                               ; preds = %58, %61, %55
  %64 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %65, i16 noundef signext 1) #11
  br label %66

66:                                               ; preds = %28, %63
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %28, !llvm.loop !49

69:                                               ; preds = %66, %25
  %70 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %104, label %72

72:                                               ; preds = %69, %101
  %73 = phi ptr [ %102, %101 ], [ %70, %69 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %73, i32 noundef 0) #11
  %74 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %73) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.BMFace, ptr %73, i64 0, i32 1
  br label %78

78:                                               ; preds = %76, %98
  %79 = phi ptr [ %74, %76 ], [ %99, %98 ]
  %80 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !50
  %82 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %83, i16 noundef signext 1) #11, !range !52
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = load ptr, ptr %77, align 8, !tbaa !53
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %87, i16 noundef signext 3) #11
  br label %88

88:                                               ; preds = %86, %78
  %89 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !56
  %91 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %92, i16 noundef signext 2) #11, !range !52
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %73) #11
  %97 = add nsw i32 %96, 1
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %73, i32 noundef %97) #11
  br label %98

98:                                               ; preds = %88, %95
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %78, !llvm.loop !57

101:                                              ; preds = %98, %72
  %102 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %72, !llvm.loop !58

104:                                              ; preds = %101, %69
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %106 = load i8, ptr %105, align 4, !tbaa !59
  %107 = or i8 %106, 12
  store i8 %107, ptr %105, align 4, !tbaa !59
  %108 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %127, label %110

110:                                              ; preds = %104, %124
  %111 = phi ptr [ %125, %124 ], [ %108, %104 ]
  %112 = getelementptr inbounds %struct.BMFace, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !53
  %114 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %113, i16 noundef signext 2) #11, !range !52
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.BMFace, ptr %111, i64 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !63
  %119 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %111) #11
  %120 = sub nsw i32 %118, %119
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %113, i16 noundef signext 1) #11
  br label %124

123:                                              ; preds = %116
  call fastcc void @remdoubles_createface(ptr noundef %0, ptr noundef nonnull %111, ptr noundef %5) #11
  br label %124

124:                                              ; preds = %110, %123, %122
  %125 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %110, !llvm.loop !64

127:                                              ; preds = %124, %104
  call void @BMO_mesh_delete_oflag_context(ptr noundef %0, i16 noundef signext 1, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !65 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #11
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_elem_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !66 {
  %3 = tail call fastcc ptr @BMO_slot_map_data_get(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !68 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_merge(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !73
  %5 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !73
  %7 = or i8 %6, %4
  store i8 %7, ptr %5, align 1, !tbaa !73
  store i8 %7, ptr %3, align 1, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remdoubles_splitface(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !77 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %0) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %2, ptr noundef %11) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = call ptr @BM_face_vert_share_loop(ptr noundef %0, ptr noundef nonnull %12) #10
  %16 = icmp eq ptr %15, null
  %17 = icmp eq ptr %15, %9
  %18 = or i1 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef nonnull %15, ptr noundef nonnull %9) #11, !range !78
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14, %8
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %8, !llvm.loop !79

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %26 = call ptr @BM_face_split(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 0) #10
  call fastcc void @remdoubles_splitface(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  call fastcc void @remdoubles_splitface(ptr noundef %26, ptr noundef %1, ptr noundef %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %27

27:                                               ; preds = %22, %3, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !70
  %9 = trunc i16 %8 to i8
  %10 = and i8 %9, 1
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !83 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !82
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remdoubles_createface(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !85 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = alloca i8, i64 %8, align 16
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %118, label %13

13:                                               ; preds = %3, %73
  %14 = phi ptr [ %76, %73 ], [ %11, %3 ]
  %15 = phi i32 [ %75, %73 ], [ 0, %3 ]
  %16 = phi i32 [ %74, %73 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %24) #11
  %26 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %27) #11
  %29 = icmp ne i8 %25, 0
  %30 = icmp ne i8 %28, 0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %13
  %33 = icmp eq i8 %25, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %2, ptr noundef nonnull %18) #11
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %35, %34 ], [ %18, %32 ]
  %38 = icmp eq i8 %28, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %2, ptr noundef nonnull %22) #11
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi ptr [ %40, %39 ], [ %22, %36 ]
  %43 = icmp eq ptr %37, %42
  br i1 %43, label %73, label %44

44:                                               ; preds = %41
  %45 = call ptr @BM_edge_exists(ptr noundef %37, ptr noundef %42) #10
  br label %49

46:                                               ; preds = %13
  %47 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi ptr [ %48, %46 ], [ %45, %44 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %73, label %52

52:                                               ; preds = %49
  %53 = icmp eq i32 %16, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %52, %60
  %55 = phi i32 [ %61, %60 ], [ 0, %52 ]
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %9, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !67
  %59 = icmp eq ptr %58, %50
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = add nuw i32 %55, 1
  %62 = icmp eq i32 %61, %16
  br i1 %62, label %66, label %54, !llvm.loop !87

63:                                               ; preds = %54, %52
  %64 = phi i32 [ 0, %52 ], [ %55, %54 ]
  %65 = icmp eq i32 %64, %16
  br i1 %65, label %66, label %73

66:                                               ; preds = %60, %63
  %67 = add i32 %16, 1
  %68 = zext i32 %16 to i64
  %69 = getelementptr inbounds ptr, ptr %9, i64 %68
  store ptr %50, ptr %69, align 8, !tbaa !67
  %70 = add i32 %15, 1
  %71 = zext i32 %15 to i64
  %72 = getelementptr inbounds ptr, ptr %10, i64 %71
  store ptr %14, ptr %72, align 8, !tbaa !67
  br label %73

73:                                               ; preds = %41, %66, %63, %49
  %74 = phi i32 [ %16, %49 ], [ %67, %66 ], [ %16, %63 ], [ %16, %41 ]
  %75 = phi i32 [ %15, %49 ], [ %70, %66 ], [ %15, %63 ], [ %15, %41 ]
  %76 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %13, !llvm.loop !88

78:                                               ; preds = %73
  %79 = icmp ugt i32 %74, 2
  br i1 %79, label %80, label %118

80:                                               ; preds = %78
  %81 = load ptr, ptr %10, align 16, !tbaa !67
  %82 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = getelementptr inbounds ptr, ptr %10, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !67
  %86 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct.BMVert, ptr %83, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !34
  %90 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %89, i16 noundef signext 1) #11, !range !52
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %80
  %93 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %2, ptr noundef nonnull %83) #11
  br label %94

94:                                               ; preds = %92, %80
  %95 = phi ptr [ %93, %92 ], [ %83, %80 ]
  %96 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %97, i16 noundef signext 1) #11, !range !52
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %2, ptr noundef nonnull %87) #11
  br label %102

102:                                              ; preds = %100, %94
  %103 = phi ptr [ %101, %100 ], [ %87, %94 ]
  %104 = call ptr @BM_face_create_ngon(ptr noundef %0, ptr noundef %95, ptr noundef %103, ptr noundef nonnull %9, i32 noundef %74, ptr noundef %1, i32 noundef 2) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %104) #11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %106, %109
  %110 = phi i32 [ %116, %109 ], [ 0, %106 ]
  %111 = phi ptr [ %115, %109 ], [ %107, %106 ]
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds ptr, ptr %10, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !67
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %114, ptr noundef nonnull %111) #10
  %115 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %116 = add i32 %110, 1
  %117 = icmp eq ptr %115, null
  br i1 %117, label %118, label %109, !llvm.loop !89

118:                                              ; preds = %109, %3, %106, %102, %78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare void @BMO_mesh_delete_oflag_context(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_pointmerge_facedata_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  %6 = tail call ptr @BMO_slot_buffer_get_single(ptr noundef %5) #10
  %7 = tail call i32 @BM_vert_face_count(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %2
  %10 = sitofp i32 %7 to float
  %11 = fdiv float 1.000000e+00, %10
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 6, ptr noundef %6) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  br label %17

17:                                               ; preds = %14, %45
  %18 = phi ptr [ %12, %14 ], [ %46, %45 ]
  %19 = phi ptr [ null, %14 ], [ %21, %45 ]
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %18, ptr %19
  %22 = load i32, ptr %16, align 4, !tbaa !90
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = icmp eq ptr %18, %21
  br label %26

26:                                               ; preds = %24, %40
  %27 = phi i64 [ 0, %24 ], [ %41, %40 ]
  %28 = trunc i64 %27 to i32
  %29 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %15, i32 noundef %28) #10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %15, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %32, i64 %27
  %34 = load i32, ptr %33, align 8, !tbaa !92
  %35 = load ptr, ptr %21, align 8, !tbaa !94
  %36 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %15, ptr noundef %35, i32 noundef %28) #10
  %37 = load ptr, ptr %18, align 8, !tbaa !94
  %38 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %15, ptr noundef %37, i32 noundef %28) #10
  call void @CustomData_data_multiply(i32 noundef %34, ptr noundef %38, float noundef %11) #10
  br i1 %25, label %40, label %39

39:                                               ; preds = %31
  call void @CustomData_data_add(i32 noundef %34, ptr noundef %36, ptr noundef %38) #10
  br label %40

40:                                               ; preds = %31, %39, %26
  %41 = add nuw nsw i64 %27, 1
  %42 = load i32, ptr %16, align 4, !tbaa !90
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %26, label %45, !llvm.loop !95

45:                                               ; preds = %40, %17
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %17, !llvm.loop !96

48:                                               ; preds = %45, %9
  %49 = phi ptr [ null, %9 ], [ %21, %45 ]
  %50 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %54

54:                                               ; preds = %52, %66
  %55 = phi ptr [ %50, %52 ], [ %67, %66 ]
  %56 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %55) #11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %54, %63
  %59 = phi ptr [ %64, %63 ], [ %56, %54 ]
  %60 = icmp eq ptr %59, %49
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !94
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %53, ptr noundef nonnull %53, ptr noundef %62, ptr noundef nonnull %59) #10
  br label %63

63:                                               ; preds = %58, %61
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %58, !llvm.loop !97

66:                                               ; preds = %63, %54
  %67 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %54, !llvm.loop !98

69:                                               ; preds = %66, %48, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_slot_buffer_get_single(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_layer_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_data_multiply(i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_data_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_average_vert_facedata_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.CDBlockBytes, align 1
  %6 = alloca %struct.CDBlockBytes, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !90
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %2, %51
  %12 = phi i64 [ %52, %51 ], [ 0, %2 ]
  %13 = trunc i64 %12 to i32
  %14 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %7, i32 noundef %13) #10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %51, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %12
  %19 = load i32, ptr %18, align 8, !tbaa !92
  call void @CustomData_data_initminmax(i32 noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %20 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %16, %32
  %23 = phi ptr [ %33, %32 ], [ %20, %16 ]
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %23) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %30, %26 ], [ %24, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %7, ptr noundef %28, i32 noundef %13) #10
  call void @CustomData_data_dominmax(i32 noundef %19, ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %26, !llvm.loop !99

32:                                               ; preds = %26, %22
  %33 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %22, !llvm.loop !100

35:                                               ; preds = %32, %16
  call void @CustomData_data_multiply(i32 noundef %19, ptr noundef nonnull %5, float noundef 5.000000e-01) #10
  call void @CustomData_data_multiply(i32 noundef %19, ptr noundef nonnull %6, float noundef 5.000000e-01) #10
  call void @CustomData_data_add(i32 noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %36 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35, %48
  %39 = phi ptr [ %49, %48 ], [ %36, %35 ]
  %40 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %39) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %46, %42 ], [ %40, %38 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !94
  %45 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %7, ptr noundef %44, i32 noundef %13) #10
  call void @CustomData_data_copy_value(i32 noundef %19, ptr noundef nonnull %5, ptr noundef %45) #10
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %42, !llvm.loop !101

48:                                               ; preds = %42, %38
  %49 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %38, !llvm.loop !102

51:                                               ; preds = %48, %35, %11
  %52 = add nuw nsw i64 %12, 1
  %53 = load i32, ptr %8, align 4, !tbaa !90
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %11, label %56, !llvm.loop !103

56:                                               ; preds = %51, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare void @CustomData_data_initminmax(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_data_dominmax(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_data_copy_value(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_pointmerge_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #10
  %6 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !104
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %7, ptr noundef nonnull @.str.4) #10
  %8 = call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str) #10
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %2, %18
  %12 = phi ptr [ %20, %18 ], [ %9, %2 ]
  %13 = phi ptr [ %19, %18 ], [ null, %2 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %5) #11
  br label %18

17:                                               ; preds = %11
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef nonnull %3, ptr noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13) #11
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi ptr [ %13, %17 ], [ %12, %15 ]
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !106

22:                                               ; preds = %18, %2
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !107 {
  %3 = load float, ptr %1, align 4, !tbaa !108
  store float %3, ptr %0, align 4, !tbaa !108
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !108
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !108
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !108
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !110 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  ret void
}

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_collapse_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMWalker, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %10 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !104
  %12 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %11, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.6) #10
  %13 = load i32, ptr %10, align 8, !tbaa !104
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %13, ptr noundef nonnull @.str.4) #10
  %14 = call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str) #10
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.6, i8 noundef zeroext 2, i16 noundef signext 1) #10
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i32 noundef 0, i32 noundef 0) #10
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %97, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  br label %20

20:                                               ; preds = %17, %94
  %21 = phi ptr [ %15, %17 ], [ %95, %94 ]
  %22 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %23, i16 noundef signext 1) #11, !range !52
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %94, label %26

26:                                               ; preds = %20
  store float 0x46293E5940000000, ptr %18, align 8, !tbaa !108
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %7, align 8, !tbaa !108
  store float 0xC6293E5940000000, ptr %19, align 8, !tbaa !108
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %8, align 8, !tbaa !108
  %27 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef %28) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31

31:                                               ; preds = %26, %48
  %32 = phi ptr [ %61, %48 ], [ %29, %26 ]
  %33 = phi i32 [ %49, %48 ], [ 0, %26 ]
  %34 = phi i32 [ %62, %48 ], [ 0, %26 ]
  %35 = load ptr, ptr %6, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %33, 1
  br label %46

39:                                               ; preds = %31
  %40 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !67
  %41 = call i64 %40(ptr noundef nonnull %35) #10
  %42 = lshr i64 %41, 3
  %43 = add nuw nsw i32 %33, 1
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37, %39
  %47 = phi i32 [ %38, %37 ], [ %43, %39 ]
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef %33, i32 noundef 1, ptr noundef nonnull @.str.7) #10
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i32 [ %47, %46 ], [ %43, %39 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !67
  %51 = zext i32 %34 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr %32, ptr %52, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = getelementptr inbounds %struct.BMVert, ptr %54, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %55) #10
  %56 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %58) #10
  %59 = load ptr, ptr %53, align 8, !tbaa !44
  call fastcc void @_bm_elem_flag_disable(ptr noundef %59) #11
  %60 = load ptr, ptr %56, align 8, !tbaa !47
  call fastcc void @_bm_elem_flag_disable(ptr noundef %60) #11
  %61 = call ptr @BMW_step(ptr noundef nonnull %4) #10
  %62 = add i32 %34, 1
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %31, !llvm.loop !111

64:                                               ; preds = %48, %26
  %65 = phi i32 [ 0, %26 ], [ %62, %48 ]
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %66 = load ptr, ptr %6, align 8, !tbaa !67
  %67 = load ptr, ptr %66, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = icmp eq i32 %65, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %64
  %72 = zext i32 %65 to i64
  br label %73

73:                                               ; preds = %71, %91
  %74 = phi i64 [ 0, %71 ], [ %92, %91 ]
  br label %75

75:                                               ; preds = %73, %90
  %76 = phi i1 [ true, %73 ], [ false, %90 ]
  %77 = phi i64 [ 0, %73 ], [ 1, %90 ]
  %78 = load ptr, ptr %6, align 8, !tbaa !67
  %79 = getelementptr inbounds ptr, ptr %78, i64 %74
  %80 = load ptr, ptr %79, align 8, !tbaa !67
  %81 = getelementptr inbounds %struct.BMEdge, ptr %80, i64 0, i32 2
  %82 = getelementptr inbounds ptr, ptr %81, i64 %77
  %83 = load ptr, ptr %82, align 8, !tbaa !67
  %84 = getelementptr inbounds %struct.BMVert, ptr %83, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %84, ptr noundef nonnull %9) #11
  %85 = icmp eq ptr %83, %69
  br i1 %85, label %90, label %86

86:                                               ; preds = %75
  %87 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %83) #11
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call fastcc void @_bm_elem_flag_enable(ptr noundef %83) #11
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef nonnull %3, ptr noundef %14, ptr noundef %83, ptr noundef %69) #11
  br label %90

90:                                               ; preds = %89, %86, %75
  br i1 %76, label %75, label %91, !llvm.loop !112

91:                                               ; preds = %90
  %92 = add nuw nsw i64 %74, 1
  %93 = icmp eq i64 %92, %72
  br i1 %93, label %94, label %73, !llvm.loop !113

94:                                               ; preds = %91, %64, %20
  %95 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #11
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %20, !llvm.loop !114

97:                                               ; preds = %94, %2
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @BMW_end(ptr noundef nonnull %4) #10
  %98 = load ptr, ptr %6, align 8, !tbaa !67
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %101(ptr noundef nonnull %98) #10
  br label %102

102:                                              ; preds = %100, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !73
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !73
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !73
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @BMW_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_collapse_uvs_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %4 = tail call zeroext i8 @CustomData_has_math(ptr noundef nonnull %3) #10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.6, i8 noundef zeroext 2, i16 noundef signext 1) #10
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !90
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6, %15
  %11 = phi i32 [ %16, %15 ], [ 0, %6 ]
  %12 = tail call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %3, i32 noundef %11) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @bmo_collapsecon_do_layer(ptr noundef nonnull %0, i32 noundef %11) #11
  br label %15

15:                                               ; preds = %10, %14
  %16 = add nuw nsw i32 %11, 1
  %17 = load i32, ptr %7, align 4, !tbaa !90
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %10, label %19, !llvm.loop !118

19:                                               ; preds = %15, %6, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_collapsecon_do_layer(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMWalker, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.CDBlockBytes, align 1
  %8 = alloca %struct.CDBlockBytes, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !92
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 6, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i32 noundef 0, i32 noundef %1) #10
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %78, label %16

16:                                               ; preds = %2, %75
  %17 = phi ptr [ %76, %75 ], [ %14, %2 ]
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %20

20:                                               ; preds = %16, %72
  %21 = phi ptr [ %73, %72 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %25, i16 noundef signext 1) #11, !range !52
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %20
  call void @CustomData_data_initminmax(i32 noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %29 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef nonnull %21) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %72, label %31

31:                                               ; preds = %28, %48
  %32 = phi i64 [ %58, %48 ], [ 0, %28 ]
  %33 = phi i32 [ %49, %48 ], [ 0, %28 ]
  %34 = phi ptr [ %57, %48 ], [ %29, %28 ]
  %35 = load ptr, ptr %6, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %33, 1
  br label %46

39:                                               ; preds = %31
  %40 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !67
  %41 = call i64 %40(ptr noundef nonnull %35) #10
  %42 = lshr i64 %41, 3
  %43 = add nuw nsw i32 %33, 1
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37, %39
  %47 = phi i32 [ %38, %37 ], [ %43, %39 ]
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef %33, i32 noundef 1, ptr noundef nonnull @.str.11) #10
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i32 [ %47, %46 ], [ %43, %39 ]
  %50 = load ptr, ptr %34, align 8, !tbaa !94
  %51 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %9, ptr noundef %50, i32 noundef %1) #10
  %52 = load ptr, ptr %6, align 8, !tbaa !67
  %53 = getelementptr inbounds ptr, ptr %52, i64 %32
  store ptr %51, ptr %53, align 8, !tbaa !67
  %54 = load ptr, ptr %6, align 8, !tbaa !67
  %55 = getelementptr inbounds ptr, ptr %54, i64 %32
  %56 = load ptr, ptr %55, align 8, !tbaa !67
  call void @CustomData_data_dominmax(i32 noundef %13, ptr noundef %56, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %57 = call ptr @BMW_step(ptr noundef nonnull %5) #10
  %58 = add nuw i64 %32, 1
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %31, !llvm.loop !120

60:                                               ; preds = %48
  %61 = and i64 %58, 4294967295
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  call void @CustomData_data_multiply(i32 noundef %13, ptr noundef nonnull %7, float noundef 5.000000e-01) #10
  call void @CustomData_data_multiply(i32 noundef %13, ptr noundef nonnull %8, float noundef 5.000000e-01) #10
  call void @CustomData_data_add(i32 noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %64 = and i64 %58, 4294967295
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %70, %65 ]
  %67 = load ptr, ptr %6, align 8, !tbaa !67
  %68 = getelementptr inbounds ptr, ptr %67, i64 %66
  %69 = load ptr, ptr %68, align 8, !tbaa !67
  call void @CustomData_data_copy_value(i32 noundef %13, ptr noundef nonnull %7, ptr noundef %69) #10
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, %64
  br i1 %71, label %72, label %65, !llvm.loop !121

72:                                               ; preds = %65, %28, %20, %60
  %73 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %20, !llvm.loop !122

75:                                               ; preds = %72, %16
  %76 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %16, !llvm.loop !123

78:                                               ; preds = %75, %2
  call void @BMW_end(ptr noundef nonnull %5) #10
  %79 = load ptr, ptr %6, align 8, !tbaa !67
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %82(ptr noundef nonnull %79) #10
  br label %83

83:                                               ; preds = %81, %78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_remove_doubles_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !104
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull @.str.4) #10
  %6 = call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str) #10
  call fastcc void @bmesh_find_doubles_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %6) #11
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmesh_find_doubles_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !124 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %7 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.10) #10
  %8 = fmul float %7, %7
  %9 = fpext float %7 to double
  %10 = fmul double %9, 0x3FFBB6AF561E0CAA
  %11 = fptrunc double %10 to float
  %12 = tail call zeroext i8 @BMO_slot_exists(ptr noundef %1, ptr noundef nonnull @.str.12) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  %15 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 1) #10
  %16 = icmp eq ptr %15, null
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ %16, %14 ], [ true, %4 ]
  %19 = call ptr @BMO_slot_as_arrayN(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #10
  %20 = load i32, ptr %5, align 4, !tbaa !125
  %21 = sext i32 %20 to i64
  call void @qsort(ptr noundef %19, i64 noundef %21, i64 noundef 8, ptr noundef nonnull @vergaverco) #10
  br i1 %18, label %23, label %22

22:                                               ; preds = %17
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 1, i16 noundef signext 8) #10
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, ptr %5, align 4, !tbaa !125
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %23, %97
  %27 = phi i32 [ %98, %97 ], [ %24, %23 ]
  %28 = phi i64 [ %36, %97 ], [ 0, %23 ]
  %29 = phi i64 [ %101, %97 ], [ 1, %23 ]
  %30 = getelementptr inbounds ptr, ptr %19, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %33, i16 noundef signext 6) #11, !range !52
  %35 = icmp eq i16 %34, 0
  %36 = add nuw nsw i64 %28, 1
  %37 = sext i32 %27 to i64
  %38 = icmp slt i64 %36, %37
  %39 = select i1 %35, i1 %38, i1 false
  br i1 %39, label %40, label %97

40:                                               ; preds = %26, %90
  %41 = phi i32 [ %91, %90 ], [ %27, %26 ]
  %42 = phi i32 [ %92, %90 ], [ %27, %26 ]
  %43 = phi i64 [ %94, %90 ], [ %29, %26 ]
  %44 = phi ptr [ %93, %90 ], [ %31, %26 ]
  %45 = getelementptr inbounds ptr, ptr %19, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %48, i16 noundef signext 6) #11, !range !52
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %53 = load float, ptr %52, align 8, !tbaa !108
  %54 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !108
  %56 = fadd float %53, %55
  %57 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2, i64 2
  %58 = load float, ptr %57, align 8, !tbaa !108
  %59 = fadd float %56, %58
  %60 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  %61 = load float, ptr %60, align 8, !tbaa !108
  %62 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !108
  %64 = fadd float %61, %63
  %65 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 2
  %66 = load float, ptr %65, align 8, !tbaa !108
  %67 = fadd float %64, %66
  %68 = fsub float %59, %67
  %69 = fcmp ogt float %68, %11
  br i1 %69, label %97, label %70

70:                                               ; preds = %51
  br i1 %18, label %77, label %71

71:                                               ; preds = %70
  %72 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %48, i16 noundef signext 8) #11, !range !52
  %73 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %74, i16 noundef signext 8) #11, !range !52
  %76 = icmp eq i16 %72, %75
  br i1 %76, label %90, label %77

77:                                               ; preds = %71, %70
  %78 = call fastcc zeroext i8 @compare_len_squared_v3v3(ptr noundef nonnull %60, ptr noundef nonnull %52, float noundef %8) #11, !range !78
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  %81 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %48, i16 noundef signext 8) #11, !range !52
  %82 = icmp eq i16 %81, 0
  %83 = select i1 %82, ptr %44, ptr %46
  %84 = select i1 %82, ptr %46, ptr %44
  %85 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %86, i16 noundef signext 2) #11
  %87 = getelementptr inbounds %struct.BMVert, ptr %83, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %88, i16 noundef signext 4) #11
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef %2, ptr noundef %3, ptr noundef %84, ptr noundef %83) #11
  %89 = load i32, ptr %5, align 4, !tbaa !125
  br label %90

90:                                               ; preds = %77, %80, %71, %40
  %91 = phi i32 [ %41, %40 ], [ %41, %71 ], [ %89, %80 ], [ %41, %77 ]
  %92 = phi i32 [ %42, %40 ], [ %42, %71 ], [ %89, %80 ], [ %42, %77 ]
  %93 = phi ptr [ %44, %40 ], [ %44, %71 ], [ %83, %80 ], [ %44, %77 ]
  %94 = add nuw nsw i64 %43, 1
  %95 = trunc i64 %94 to i32
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %40, label %97

97:                                               ; preds = %90, %51, %26
  %98 = phi i32 [ %27, %26 ], [ %91, %90 ], [ %41, %51 ]
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %36, %99
  %101 = add nuw nsw i64 %29, 1
  br i1 %100, label %26, label %102, !llvm.loop !126

102:                                              ; preds = %97, %23
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %103(ptr noundef %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_find_doubles_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %4 = tail call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #10
  tail call fastcc void @bmesh_find_doubles_common(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_automerge_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, i16 noundef signext 32) #10
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %11, i16 noundef signext 32) #11, !range !52
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %11, i16 noundef signext 8) #11
  br label %15

15:                                               ; preds = %8, %14
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !127

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !104
  %21 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %20, ptr noundef nonnull @.str.9, i32 noundef 8) #10
  %22 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %23) #10
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #10
  %24 = load i32, ptr %19, align 8, !tbaa !104
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %24, ptr noundef nonnull @.str.4) #10
  %25 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !128
  call void @_bmo_slot_copy(ptr noundef nonnull %25, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef %27) #10
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #10
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !129 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !130
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !75
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !75
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !75
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !75
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !131
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !75
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !135
  tail call void %28(ptr noundef nonnull %0) #10
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_data_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !136 {
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %4, ptr noundef %1) #10
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_loop_is_adjacent(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_ngon(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_as_arrayN(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @vergaverco(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !139 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = load ptr, ptr %1, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !108
  %9 = fadd float %6, %8
  %10 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 2
  %11 = load float, ptr %10, align 8, !tbaa !108
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !108
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 8, !tbaa !108
  %20 = fadd float %17, %19
  %21 = fcmp ogt float %12, %20
  %22 = fcmp olt float %12, %20
  %23 = sext i1 %22 to i32
  %24 = select i1 %21, i32 1, i32 %23
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @compare_len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !140 {
  %4 = load float, ptr %0, align 4, !tbaa !108
  %5 = load float, ptr %1, align 4, !tbaa !108
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !108
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !108
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !108
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !108
  %16 = fsub float %13, %15
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %18)
  %20 = fcmp ole float %19, %2
  %21 = zext i1 %20 to i8
  ret i8 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = !{!45, !37, i64 24}
!45 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !46, i64 48, !46, i64 64}
!46 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!47 = !{!45, !37, i64 32}
!48 = !{!45, !37, i64 16}
!49 = distinct !{!49, !42}
!50 = !{!51, !37, i64 16}
!51 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!52 = !{i16 0, i16 33}
!53 = !{!54, !37, i64 16}
!54 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !55, i64 48}
!55 = !{!"short", !38, i64 0}
!56 = !{!51, !37, i64 24}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = !{!60, !38, i64 28}
!60 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !61, i64 144, !61, i64 344, !61, i64 544, !61, i64 744, !55, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !62, i64 960, !37, i64 976, !62, i64 984, !37, i64 1000}
!61 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!62 = !{!"ListBase", !37, i64 0, !37, i64 8}
!63 = !{!54, !40, i64 32}
!64 = distinct !{!64, !42}
!65 = !{!"bmo_removedoubles.c:BM_iter_new"}
!66 = !{!"bmo_removedoubles.c:BMO_slot_map_elem_get"}
!67 = !{!37, !37, i64 0}
!68 = !{!"bmo_removedoubles.c:_bmo_elem_flag_enable"}
!69 = !{!60, !40, i64 128}
!70 = !{!71, !55, i64 0}
!71 = !{!"BMFlagLayer", !55, i64 0}
!72 = !{!"bmo_removedoubles.c:_bm_elem_flag_merge"}
!73 = !{!36, !38, i64 13}
!74 = !{!"bmo_removedoubles.c:BM_iter_step"}
!75 = !{!76, !37, i64 48}
!76 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!77 = !{!"bmo_removedoubles.c:remdoubles_splitface"}
!78 = !{i8 0, i8 2}
!79 = distinct !{!79, !42}
!80 = !{!"bmo_removedoubles.c:_bmo_elem_flag_test_bool"}
!81 = !{!"bmo_removedoubles.c:_bm_elem_index_set"}
!82 = !{!36, !40, i64 8}
!83 = !{!"bmo_removedoubles.c:_bmo_elem_flag_test"}
!84 = !{!"bmo_removedoubles.c:_bm_elem_index_get"}
!85 = !{!"bmo_removedoubles.c:remdoubles_createface"}
!86 = !{!51, !37, i64 56}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42}
!89 = distinct !{!89, !42}
!90 = !{!60, !40, i64 716}
!91 = !{!60, !37, i64 544}
!92 = !{!93, !40, i64 0}
!93 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96}
!94 = !{!51, !37, i64 0}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !42}
!102 = distinct !{!102, !42}
!103 = distinct !{!103, !42}
!104 = !{!105, !40, i64 1304}
!105 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!106 = distinct !{!106, !42}
!107 = !{!"bmo_removedoubles.c:copy_v3_v3"}
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !38, i64 0}
!110 = !{!"bmo_removedoubles.c:BMO_slot_map_elem_insert"}
!111 = distinct !{!111, !42}
!112 = distinct !{!112, !42}
!113 = distinct !{!113, !42}
!114 = distinct !{!114, !42}
!115 = !{!"bmo_removedoubles.c:_bm_elem_flag_disable"}
!116 = !{!"bmo_removedoubles.c:_bm_elem_flag_test"}
!117 = !{!"bmo_removedoubles.c:_bm_elem_flag_enable"}
!118 = distinct !{!118, !42}
!119 = !{!"bmo_removedoubles.c:bmo_collapsecon_do_layer"}
!120 = distinct !{!120, !42}
!121 = distinct !{!121, !42}
!122 = distinct !{!122, !42}
!123 = distinct !{!123, !42}
!124 = !{!"bmo_removedoubles.c:bmesh_find_doubles_common"}
!125 = !{!40, !40, i64 0}
!126 = distinct !{!126, !42}
!127 = distinct !{!127, !42}
!128 = !{!105, !37, i64 1288}
!129 = !{!"bmo_removedoubles.c:BM_iter_init"}
!130 = !{!76, !38, i64 60}
!131 = !{!76, !37, i64 40}
!132 = !{!60, !37, i64 32}
!133 = !{!60, !37, i64 40}
!134 = !{!60, !37, i64 56}
!135 = !{!38, !38, i64 0}
!136 = !{!"bmo_removedoubles.c:BMO_slot_map_data_get"}
!137 = !{!"bmo_removedoubles.c:BM_loop_is_adjacent"}
!138 = !{!51, !37, i64 64}
!139 = !{!"bmo_removedoubles.c:vergaverco"}
!140 = !{!"bmo_removedoubles.c:compare_len_squared_v3v3"}
