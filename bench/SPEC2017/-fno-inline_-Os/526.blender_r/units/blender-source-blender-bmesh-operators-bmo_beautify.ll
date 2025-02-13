; ModuleID = 'blender/source/blender/bmesh/operators/bmo_beautify.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_beautify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [17 x i8] c"use_restrict_tag\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@__func__.bmo_beautify_fill_exec = private unnamed_addr constant [23 x i8] c"bmo_beautify_fill_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_beautify_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #5
  %5 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #6
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %7 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 8) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %17
  %10 = phi ptr [ %18, %17 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.BMFace, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BMFace, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %16) #7
  br label %17

17:                                               ; preds = %9, %14
  %18 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !43

20:                                               ; preds = %17, %2
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %25, %23 ], [ %21, %20 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %24) #7
  %25 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23, !llvm.loop !45

27:                                               ; preds = %23, %20
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %29 = call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = call ptr %28(i64 noundef %31, ptr noundef nonnull @__func__.bmo_beautify_fill_exec) #6
  %33 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 2) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %27, %62
  %36 = phi i32 [ %63, %62 ], [ 0, %27 ]
  %37 = phi ptr [ %64, %62 ], [ %33, %27 ]
  %38 = call zeroext i8 @BM_edge_rotate_check(ptr noundef nonnull %37) #6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.BMFace, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %46) #7
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.BMFace, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %55) #7
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = sext i32 %36 to i64
  %60 = getelementptr inbounds ptr, ptr %32, i64 %59
  store ptr %37, ptr %60, align 8, !tbaa !46
  %61 = add nsw i32 %36, 1
  br label %62

62:                                               ; preds = %35, %40, %49, %58
  %63 = phi i32 [ %61, %58 ], [ %36, %49 ], [ %36, %40 ], [ %36, %35 ]
  %64 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %35, !llvm.loop !53

66:                                               ; preds = %62, %27
  %67 = phi i32 [ 0, %27 ], [ %63, %62 ]
  %68 = trunc i32 %6 to i16
  %69 = icmp ne i8 %5, 0
  %70 = zext i1 %69 to i16
  call void @BM_mesh_beautify_fill(ptr noundef %0, ptr noundef %32, i32 noundef %67, i16 noundef signext %70, i16 noundef signext %68, i16 noundef signext 1, i16 noundef signext 3) #6
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %71(ptr noundef %32) #6
  %72 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %72, ptr noundef nonnull @.str.4, i8 noundef zeroext 10, i16 noundef signext 1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !59
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 2, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !61 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #7
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #7
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !63
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call ptr %3(ptr noundef %0) #6
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_rotate_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !67 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !59
  %9 = and i16 %8, 2
  ret i16 %9
}

; Function Attrs: optsize
declare void @BM_mesh_beautify_fill(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !69
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  store ptr %7, ptr %0, align 8, !tbaa !72
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!35, !37, i64 16}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!37, !37, i64 0}
!47 = !{!48, !37, i64 40}
!48 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !49, i64 48, !49, i64 64}
!49 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!50 = !{!51, !37, i64 32}
!51 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!52 = !{!51, !37, i64 40}
!53 = distinct !{!53, !44}
!54 = !{!"bmo_beautify.c:_bmo_elem_flag_enable"}
!55 = !{!56, !40, i64 128}
!56 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !57, i64 144, !57, i64 344, !57, i64 544, !57, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !58, i64 960, !37, i64 976, !58, i64 984, !37, i64 1000}
!57 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!58 = !{!"ListBase", !37, i64 0, !37, i64 8}
!59 = !{!60, !41, i64 0}
!60 = !{!"BMFlagLayer", !41, i64 0}
!61 = !{!"bmo_beautify.c:BM_iter_new"}
!62 = !{!"bmo_beautify.c:_bm_elem_flag_disable"}
!63 = !{!36, !38, i64 13}
!64 = !{!"bmo_beautify.c:BM_iter_step"}
!65 = !{!66, !37, i64 48}
!66 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!67 = !{!"bmo_beautify.c:_bmo_elem_flag_test"}
!68 = !{!"bmo_beautify.c:BM_iter_init"}
!69 = !{!66, !38, i64 60}
!70 = !{!66, !37, i64 40}
!71 = !{!56, !37, i64 40}
!72 = !{!38, !38, i64 0}
