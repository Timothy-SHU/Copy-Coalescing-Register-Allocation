; ModuleID = 'blender/source/blender/bmesh/operators/bmo_fill_edgeloop.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_fill_edgeloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_edgeloop_fill_exec = private unnamed_addr constant [23 x i8] c"bmo_edgeloop_fill_exec\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mat_nr\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@switch.table.BM_iter_init = private unnamed_addr constant [4 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin, ptr @bmiter__vert_of_edge_begin], align 8
@switch.table.BM_iter_init.4 = private unnamed_addr constant [4 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step, ptr @bmiter__vert_of_edge_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_edgeloop_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str) #5
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %8 = sext i32 %6 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @__func__.bmo_edgeloop_fill_exec) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  %11 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %12 = trunc i32 %11 to i16
  %13 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %14 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %2, %41
  %17 = phi ptr [ %43, %41 ], [ %14, %2 ]
  %18 = phi i32 [ %42, %41 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %19 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %20, i16 noundef signext 2) #7
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 7, ptr noundef nonnull %17) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %16, %36
  %24 = phi ptr [ %38, %36 ], [ %21, %16 ]
  %25 = phi i32 [ %37, %36 ], [ %18, %16 ]
  %26 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %27, i16 noundef signext 1) #7, !range !45
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = icmp eq i32 %25, %6
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %27, i16 noundef signext 1) #7
  %33 = add nsw i32 %25, 1
  %34 = sext i32 %25 to i64
  %35 = getelementptr inbounds ptr, ptr %10, i64 %34
  store ptr %24, ptr %35, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %23, %32
  %37 = phi i32 [ %33, %32 ], [ %25, %23 ]
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %23, !llvm.loop !46

40:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  br label %127

41:                                               ; preds = %36, %16
  %42 = phi i32 [ %18, %16 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %43 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %16, !llvm.loop !48

45:                                               ; preds = %41, %2
  %46 = phi i32 [ 0, %2 ], [ %42, %41 ]
  %47 = icmp eq i32 %46, %6
  br i1 %47, label %48, label %127

48:                                               ; preds = %45
  %49 = icmp sgt i32 %6, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %52 = call ptr %51(i64 noundef %9, ptr noundef nonnull @__func__.bmo_edgeloop_fill_exec) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  br label %123

53:                                               ; preds = %48
  %54 = zext nneg i32 %6 to i64
  br label %58

55:                                               ; preds = %58
  %56 = add nuw nsw i64 %59, 1
  %57 = icmp eq i64 %56, %54
  br i1 %57, label %64, label %58, !llvm.loop !49

58:                                               ; preds = %53, %55
  %59 = phi i64 [ 0, %53 ], [ %56, %55 ]
  %60 = getelementptr inbounds ptr, ptr %10, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef %61, i16 noundef signext 2, i8 noundef zeroext 1) #5
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %55, label %127

64:                                               ; preds = %55
  %65 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %66 = call ptr %65(i64 noundef %9, ptr noundef nonnull @__func__.bmo_edgeloop_fill_exec) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  br i1 %49, label %67, label %123

67:                                               ; preds = %64
  %68 = icmp eq i8 %13, 0
  br label %69

69:                                               ; preds = %121, %67
  %70 = phi i32 [ 0, %67 ], [ %106, %121 ]
  %71 = phi ptr [ null, %67 ], [ %102, %121 ]
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ 0, %69 ], [ %80, %72 ]
  %74 = getelementptr inbounds ptr, ptr %10, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !43
  %78 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %77, i16 noundef signext 1) #7, !range !45
  %79 = icmp eq i16 %78, 0
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp slt i64 %80, %8
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %72, label %83, !llvm.loop !50

83:                                               ; preds = %72, %101
  %84 = phi i64 [ %108, %101 ], [ 0, %72 ]
  %85 = phi ptr [ %102, %101 ], [ %71, %72 ]
  %86 = phi i32 [ %106, %101 ], [ %70, %72 ]
  %87 = phi ptr [ %107, %101 ], [ %75, %72 ]
  %88 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, i8 noundef zeroext 4, ptr noundef %87) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %83, %98
  %91 = phi ptr [ %99, %98 ], [ %88, %83 ]
  %92 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !38
  %94 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %93, i16 noundef signext 2) #7, !range !45
  %95 = icmp eq i16 %94, 0
  %96 = icmp eq ptr %91, %85
  %97 = or i1 %96, %95
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %90, !llvm.loop !51

101:                                              ; preds = %98, %90, %83
  %102 = phi ptr [ %85, %83 ], [ %91, %90 ], [ %85, %98 ]
  %103 = getelementptr inbounds ptr, ptr %66, i64 %84
  store ptr %87, ptr %103, align 8, !tbaa !34
  %104 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !43
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %105) #7
  %106 = add nsw i32 %86, 1
  %107 = call fastcc ptr @BM_edge_other_vert(ptr noundef %102, ptr noundef %87) #7
  %108 = add nuw i64 %84, 1
  %109 = load ptr, ptr %66, align 8, !tbaa !34
  %110 = icmp eq ptr %107, %109
  br i1 %110, label %111, label %83, !llvm.loop !52

111:                                              ; preds = %101
  %112 = trunc i64 %108 to i32
  %113 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %66, i32 noundef %112, ptr noundef null) #5
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = call ptr @BM_face_create_ngon_verts(ptr noundef %0, ptr noundef nonnull %66, i32 noundef %112, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %117 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !53
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %118, i16 noundef signext 4) #7
  %119 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 5
  store i16 %12, ptr %119, align 8, !tbaa !56
  br i1 %68, label %121, label %120

120:                                              ; preds = %115
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %116) #7
  br label %121

121:                                              ; preds = %115, %120, %111
  %122 = icmp slt i32 %106, %6
  br i1 %122, label %69, label %123, !llvm.loop !57

123:                                              ; preds = %121, %50, %64
  %124 = phi ptr [ %52, %50 ], [ %66, %64 ], [ %66, %121 ]
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %125(ptr noundef %124) #5
  %126 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %126, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i16 noundef signext 4) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  br label %127

127:                                              ; preds = %58, %40, %123, %45
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %128(ptr noundef %10) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !58 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !63
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !65 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #7
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !66 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !63
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = tail call ptr %3(ptr noundef %0) #5
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_iter_elem_count_flag(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !63
  %9 = and i16 %8, -2
  store i16 %9, ptr %7, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_ngon_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !75
  %4 = or i8 %3, 8
  store i8 %4, ptr %2, align 1, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !76 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !77
  %5 = add nsw i8 %1, -4
  %6 = sext i8 %5 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i8 %5 to i64
  %10 = getelementptr inbounds [4 x ptr], ptr @switch.table.BM_iter_init.4, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %8, ptr %13, align 8, !tbaa !78
  store ptr %11, ptr %12, align 8, !tbaa !68
  store ptr %2, ptr %0, align 8, !tbaa !79
  tail call void %8(ptr noundef nonnull %0) #5
  ret void
}

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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !42, i64 48, !42, i64 64}
!40 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!41 = !{!"int", !36, i64 0}
!42 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!43 = !{!44, !35, i64 16}
!44 = !{!"BMVert", !40, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!45 = !{i16 0, i16 3}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
!53 = !{!54, !35, i64 16}
!54 = !{!"BMFace", !40, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !55, i64 48}
!55 = !{!"short", !36, i64 0}
!56 = !{!54, !55, i64 48}
!57 = distinct !{!57, !47}
!58 = !{!"bmo_fill_edgeloop.c:_bmo_elem_flag_enable"}
!59 = !{!60, !41, i64 128}
!60 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !61, i64 144, !61, i64 344, !61, i64 544, !61, i64 744, !55, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !62, i64 960, !35, i64 976, !62, i64 984, !35, i64 1000}
!61 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!62 = !{!"ListBase", !35, i64 0, !35, i64 8}
!63 = !{!64, !55, i64 0}
!64 = !{!"BMFlagLayer", !55, i64 0}
!65 = !{!"bmo_fill_edgeloop.c:BM_iter_new"}
!66 = !{!"bmo_fill_edgeloop.c:_bmo_elem_flag_test"}
!67 = !{!"bmo_fill_edgeloop.c:BM_iter_step"}
!68 = !{!69, !35, i64 48}
!69 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!70 = !{!"bmo_fill_edgeloop.c:_bmo_elem_flag_disable"}
!71 = !{!"bmo_fill_edgeloop.c:BM_edge_other_vert"}
!72 = !{!39, !35, i64 24}
!73 = !{!39, !35, i64 32}
!74 = !{!"bmo_fill_edgeloop.c:_bm_elem_flag_enable"}
!75 = !{!40, !36, i64 13}
!76 = !{!"bmo_fill_edgeloop.c:BM_iter_init"}
!77 = !{!69, !36, i64 60}
!78 = !{!69, !35, i64 40}
!79 = !{!36, !36, i64 0}
