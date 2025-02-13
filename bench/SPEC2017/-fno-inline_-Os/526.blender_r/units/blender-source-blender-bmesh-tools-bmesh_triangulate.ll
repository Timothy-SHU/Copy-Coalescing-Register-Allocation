; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_triangulate.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_triangulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }

@__func__.BM_mesh_triangulate = private unnamed_addr constant [20 x i8] c"BM_mesh_triangulate\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_triangulate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #4
  %8 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BM_mesh_triangulate) #5
  %9 = icmp eq ptr %5, null
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %0) #6
  %11 = icmp eq ptr %10, null
  br i1 %9, label %28, label %12

12:                                               ; preds = %6
  br i1 %11, label %44, label %13

13:                                               ; preds = %12
  %14 = icmp eq i8 %3, 0
  br label %15

15:                                               ; preds = %13, %25
  %16 = phi ptr [ %10, %13 ], [ %26, %25 ]
  %17 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp sgt i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  br i1 %14, label %24, label %21

21:                                               ; preds = %20
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %16) #6
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %20
  call fastcc void @bm_face_triangulate_mapping(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %8, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef nonnull %5) #6
  br label %25

25:                                               ; preds = %15, %24, %21
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %15, !llvm.loop !42

28:                                               ; preds = %6
  br i1 %11, label %44, label %29

29:                                               ; preds = %28
  %30 = icmp eq i8 %3, 0
  br label %31

31:                                               ; preds = %29, %41
  %32 = phi ptr [ %10, %29 ], [ %42, %41 ]
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !34
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  br i1 %30, label %40, label %37

37:                                               ; preds = %36
  %38 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %32) #6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %36
  call void @BM_face_triangulate(ptr noundef %0, ptr noundef nonnull %32, ptr noundef null, ptr noundef null, ptr noundef %8, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #5
  br label %41

41:                                               ; preds = %31, %40, %37
  %42 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !44

44:                                               ; preds = %25, %41, %12, %28
  call void @BLI_memarena_free(ptr noundef %8) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !45 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #6
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !46 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !47
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_triangulate_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !48 {
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  %10 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = add nsw i32 %11, -3
  store i32 %12, ptr %9, align 4, !tbaa !49
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = alloca i8, i64 %14, align 16
  call void @BM_face_triangulate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) #5
  %16 = load i32, ptr %9, align 4, !tbaa !49
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %8
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull %1) #6
  %19 = load i32, ptr %9, align 4, !tbaa !49
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %25, %21 ], [ 0, %18 ]
  %23 = getelementptr inbounds ptr, ptr %15, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef %6, ptr noundef %7, ptr noundef %24, ptr noundef %1) #6
  %25 = add nuw nsw i64 %22, 1
  %26 = load i32, ptr %9, align 4, !tbaa !49
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %21, label %29, !llvm.loop !51

29:                                               ; preds = %21, %18, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !52 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = tail call ptr %3(ptr noundef %0) #5
  ret ptr %4
}

; Function Attrs: optsize
declare void @BM_face_triangulate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 3, ptr %3, align 4, !tbaa !56
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  store ptr %7, ptr %0, align 8, !tbaa !62
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !63 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = !{!"bmesh_triangulate.c:BM_iter_new"}
!46 = !{!"bmesh_triangulate.c:_bm_elem_flag_test"}
!47 = !{!36, !38, i64 13}
!48 = !{!"bmesh_triangulate.c:bm_face_triangulate_mapping"}
!49 = !{!40, !40, i64 0}
!50 = !{!37, !37, i64 0}
!51 = distinct !{!51, !43}
!52 = !{!"bmesh_triangulate.c:BM_iter_step"}
!53 = !{!54, !37, i64 48}
!54 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!55 = !{!"bmesh_triangulate.c:BM_iter_init"}
!56 = !{!54, !38, i64 60}
!57 = !{!54, !37, i64 40}
!58 = !{!59, !37, i64 56}
!59 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !60, i64 144, !60, i64 344, !60, i64 544, !60, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !61, i64 960, !37, i64 976, !61, i64 984, !37, i64 1000}
!60 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!61 = !{!"ListBase", !37, i64 0, !37, i64 8}
!62 = !{!38, !38, i64 0}
!63 = !{!"bmesh_triangulate.c:BMO_slot_map_elem_insert"}
