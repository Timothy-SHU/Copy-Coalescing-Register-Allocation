; ModuleID = 'blender/source/blender/bmesh/operators/bmo_fill_attribute.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_fill_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"use_normals\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"use_data\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"faces_fail.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_face_attribute_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  %4 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  %5 = tail call fastcc i32 @bmesh_face_attribute_fill(ptr noundef %0, i8 noundef zeroext %3, i8 noundef zeroext %4) #8
  %6 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i8 noundef zeroext 16) #7
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bmesh_face_attribute_fill(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  store ptr null, ptr %4, align 8, !tbaa !35
  %7 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #7
  store ptr null, ptr %5, align 8, !tbaa !35
  %8 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #7
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %30, %3
  %12 = call i32 @BLI_mempool_count(ptr noundef %7) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %85, label %33

14:                                               ; preds = %3, %30
  %15 = phi ptr [ %31, %30 ], [ %9, %3 ]
  %16 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %26, %18
  %22 = phi ptr [ %20, %18 ], [ %28, %26 ]
  %23 = call fastcc zeroext i8 @bm_loop_is_all_radial_tag(ptr noundef %22) #8, !range !44
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %7) #7
  br label %26

26:                                               ; preds = %21, %25
  %27 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !47

30:                                               ; preds = %26, %14
  %31 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %11, label %14, !llvm.loop !49

33:                                               ; preds = %11, %79
  %34 = phi ptr [ %35, %79 ], [ %7, %11 ]
  %35 = phi ptr [ %34, %79 ], [ %8, %11 ]
  %36 = phi i32 [ %81, %79 ], [ 0, %11 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %79, label %39

39:                                               ; preds = %33, %75
  %40 = phi i32 [ %76, %75 ], [ %36, %33 ]
  %41 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %4, ptr noundef %34) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load ptr, ptr %4, align 8, !tbaa !35
  br label %79

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %47) #8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %45
  call fastcc void @_bm_elem_flag_disable(ptr noundef %47) #8
  %51 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  br label %53

53:                                               ; preds = %69, %50
  %54 = phi ptr [ %52, %50 ], [ %71, %69 ]
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  %57 = icmp eq ptr %56, %54
  br i1 %57, label %69, label %58

58:                                               ; preds = %53, %65
  %59 = phi ptr [ %67, %65 ], [ %56, %53 ]
  %60 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %61) #8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %5, ptr noundef nonnull %59, ptr noundef %35) #7
  br label %65

65:                                               ; preds = %58, %64
  %66 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !51
  %68 = icmp eq ptr %67, %54
  br i1 %68, label %69, label %58, !llvm.loop !52

69:                                               ; preds = %65, %53
  %70 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = icmp eq ptr %71, %41
  br i1 %72, label %73, label %53, !llvm.loop !53

73:                                               ; preds = %69
  call fastcc void @bm_face_copy_shared_all(ptr noundef %0, ptr noundef nonnull %41, i8 noundef zeroext %1, i8 noundef zeroext %2) #8
  %74 = add i32 %40, 1
  br label %75

75:                                               ; preds = %73, %45
  %76 = phi i32 [ %74, %73 ], [ %40, %45 ]
  %77 = load ptr, ptr %4, align 8, !tbaa !35
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %39, !llvm.loop !54

79:                                               ; preds = %75, %43, %33
  %80 = phi ptr [ null, %33 ], [ %44, %43 ], [ null, %75 ]
  %81 = phi i32 [ %36, %33 ], [ %40, %43 ], [ %76, %75 ]
  %82 = load ptr, ptr %5, align 8, !tbaa !35
  store ptr %82, ptr %4, align 8, !tbaa !35
  store ptr %80, ptr %5, align 8, !tbaa !35
  %83 = call i32 @BLI_mempool_count(ptr noundef %35) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %33, !llvm.loop !55

85:                                               ; preds = %79, %11
  %86 = phi i32 [ 0, %11 ], [ %81, %79 ]
  %87 = phi ptr [ %8, %11 ], [ %34, %79 ]
  %88 = phi ptr [ %7, %11 ], [ %35, %79 ]
  call void @BLI_mempool_destroy(ptr noundef %88) #7
  store ptr null, ptr %4, align 8, !tbaa !35
  call void @BLI_mempool_destroy(ptr noundef %87) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %86
}

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !56 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #8
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #8
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !57 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !58
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bm_loop_is_all_radial_tag(ptr noundef readonly %0) unnamed_addr #4 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %3, %1 ], [ %12, %10 ]
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %4, !llvm.loop !60

14:                                               ; preds = %10, %4
  %15 = phi i8 [ 0, %4 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !58
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_copy_shared_all(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !65 {
  %5 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %1, %4 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %12) #8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !66

15:                                               ; preds = %7
  %16 = icmp eq i8 %3, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %12, ptr noundef %6) #7
  tail call void @BM_face_copy_shared(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @bm_loop_is_face_untag, ptr noundef null) #7
  br label %18

18:                                               ; preds = %17, %15
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @BM_face_normal_flip(ptr noundef %0, ptr noundef %6) #7
  br label %27

27:                                               ; preds = %20, %26, %18
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 3, ptr %3, align 4, !tbaa !69
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  store ptr %7, ptr %0, align 8, !tbaa !75
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_copy_shared(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_loop_is_face_untag(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #6 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4) #8
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!34 = !{!"bmo_fill_attribute.c:bmesh_face_attribute_fill"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 24}
!40 = !{!"BMFace", !41, i64 0, !36, i64 16, !36, i64 24, !42, i64 32, !37, i64 36, !43, i64 48}
!41 = !{!"BMHeader", !36, i64 0, !42, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!42 = !{!"int", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{!46, !36, i64 56}
!46 = !{!"BMLoop", !41, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!46, !36, i64 32}
!51 = !{!46, !36, i64 40}
!52 = distinct !{!52, !48}
!53 = distinct !{!53, !48}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = !{!"bmo_fill_attribute.c:BM_iter_new"}
!57 = !{!"bmo_fill_attribute.c:_bm_elem_flag_test"}
!58 = !{!41, !37, i64 13}
!59 = !{!"bmo_fill_attribute.c:bm_loop_is_all_radial_tag"}
!60 = distinct !{!60, !48}
!61 = !{!"bmo_fill_attribute.c:BM_iter_step"}
!62 = !{!63, !36, i64 48}
!63 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !42, i64 56, !37, i64 60}
!64 = !{!"bmo_fill_attribute.c:_bm_elem_flag_disable"}
!65 = !{!"bmo_fill_attribute.c:bm_face_copy_shared_all"}
!66 = distinct !{!66, !48}
!67 = !{!46, !36, i64 16}
!68 = !{!"bmo_fill_attribute.c:BM_iter_init"}
!69 = !{!63, !37, i64 60}
!70 = !{!63, !36, i64 40}
!71 = !{!72, !36, i64 56}
!72 = !{!"BMesh", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !42, i64 88, !42, i64 92, !42, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 136, !73, i64 144, !73, i64 344, !73, i64 544, !73, i64 744, !43, i64 944, !42, i64 948, !42, i64 952, !42, i64 956, !74, i64 960, !36, i64 976, !74, i64 984, !36, i64 1000}
!73 = !{!"CustomData", !36, i64 0, !37, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !36, i64 184, !36, i64 192}
!74 = !{!"ListBase", !36, i64 0, !36, i64 8}
!75 = !{!37, !37, i64 0}
!76 = !{!"bmo_fill_attribute.c:bm_loop_is_face_untag"}
