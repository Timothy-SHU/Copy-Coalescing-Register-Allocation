; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_triangulate.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_triangulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }

@__func__.BM_mesh_triangulate = private unnamed_addr constant [20 x i8] c"BM_mesh_triangulate\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_triangulate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #3
  %8 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BM_mesh_triangulate) #3
  %9 = icmp eq ptr %5, null
  %10 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 3, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  store ptr %14, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #3
  %15 = load ptr, ptr %12, align 8, !tbaa !41
  %16 = call ptr %15(ptr noundef nonnull %7) #3
  %17 = icmp eq ptr %16, null
  br i1 %9, label %37, label %18

18:                                               ; preds = %6
  br i1 %17, label %56, label %19

19:                                               ; preds = %18
  %20 = icmp eq i8 %3, 0
  br label %21

21:                                               ; preds = %19, %33
  %22 = phi ptr [ %16, %19 ], [ %35, %33 ]
  %23 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !48
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  br i1 %20, label %32, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !51
  %30 = and i8 %29, 16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %26
  call fastcc void @bm_face_triangulate_mapping(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %8, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef nonnull %5)
  br label %33

33:                                               ; preds = %21, %32, %27
  %34 = load ptr, ptr %12, align 8, !tbaa !41
  %35 = call ptr %34(ptr noundef nonnull %7) #3
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %21, !llvm.loop !52

37:                                               ; preds = %6
  br i1 %17, label %56, label %38

38:                                               ; preds = %37
  %39 = icmp eq i8 %3, 0
  br label %40

40:                                               ; preds = %38, %52
  %41 = phi ptr [ %16, %38 ], [ %54, %52 ]
  %42 = getelementptr inbounds %struct.BMFace, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !48
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  br i1 %39, label %51, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !51
  %49 = and i8 %48, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46, %45
  call void @BM_face_triangulate(ptr noundef %0, ptr noundef nonnull %41, ptr noundef null, ptr noundef null, ptr noundef %8, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #3
  br label %52

52:                                               ; preds = %40, %51, %46
  %53 = load ptr, ptr %12, align 8, !tbaa !41
  %54 = call ptr %53(ptr noundef nonnull %7) #3
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %40, !llvm.loop !55

56:                                               ; preds = %33, %52, %18, %37
  call void @BLI_memarena_free(ptr noundef %8) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_face_triangulate_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  %10 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = add nsw i32 %11, -3
  store i32 %12, ptr %9, align 4, !tbaa !56
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = alloca i8, i64 %14, align 16
  call void @BM_face_triangulate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) #3
  %16 = load i32, ptr %9, align 4, !tbaa !56
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %8
  call void @BMO_slot_map_insert(ptr noundef %6, ptr noundef %7, ptr noundef %1, ptr noundef %1) #3
  %19 = load i32, ptr %9, align 4, !tbaa !56
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %25, %21 ], [ 0, %18 ]
  %23 = getelementptr inbounds ptr, ptr %15, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  call void @BMO_slot_map_insert(ptr noundef %6, ptr noundef %7, ptr noundef %24, ptr noundef %1) #3
  %25 = add nuw nsw i64 %22, 1
  %26 = load i32, ptr %9, align 4, !tbaa !56
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %21, label %29, !llvm.loop !58

29:                                               ; preds = %21, %18, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  ret void
}

declare void @BM_face_triangulate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 60}
!35 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!35, !38, i64 40}
!41 = !{!35, !38, i64 48}
!42 = !{!43, !38, i64 56}
!43 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !46, i64 960, !38, i64 976, !46, i64 984, !38, i64 1000}
!44 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !38, i64 0, !38, i64 8}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !39, i64 32}
!49 = !{!"BMFace", !50, i64 0, !38, i64 16, !38, i64 24, !39, i64 32, !36, i64 36, !45, i64 48}
!50 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!50, !36, i64 13}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = !{!39, !39, i64 0}
!57 = !{!38, !38, i64 0}
!58 = distinct !{!58, !53, !54}
