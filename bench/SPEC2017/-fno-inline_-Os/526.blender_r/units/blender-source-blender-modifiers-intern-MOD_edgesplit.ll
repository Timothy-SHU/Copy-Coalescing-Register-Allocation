; ModuleID = 'blender/source/blender/modifiers/intern/MOD_edgesplit.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_edgesplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.EdgeSplitModifierData = type { %struct.ModifierData, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }

@modifierType_EdgeSplit = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"EdgeSplit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EdgeSplitModifierData\00\00\00\00\00\00\00\00\00\00\00", i32 120, i32 2, i32 31, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !36
  %7 = and i32 %6, 6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @doEdgeSplit(ptr noundef %2, ptr noundef nonnull %0) #9
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi ptr [ %10, %9 ], [ %2, %4 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !44 {
  %2 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %0, i64 0, i32 1
  store float 0x3FE0C15240000000, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %0, i64 0, i32 2
  store i32 6, ptr %3, align 4, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @doEdgeSplit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !46 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %1, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !45
  %6 = fadd float %5, 0x3E877CF440000000
  %7 = tail call float @cosf(float noundef %6) #8
  %8 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !36
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 1
  %12 = and i8 %11, 1
  %13 = tail call ptr @DM_to_bmesh(ptr noundef %0, i8 noundef zeroext %12) #8
  %14 = load i32, ptr %8, align 4, !tbaa !36
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %2
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %13) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %17, %43
  %21 = phi ptr [ %44, %43 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = icmp eq ptr %23, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.BMFace, ptr %35, i64 0, i32 4
  %37 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.BMFace, ptr %38, i64 0, i32 4
  %40 = call fastcc float @dot_v3v3(ptr noundef nonnull %36, ptr noundef nonnull %39) #9
  %41 = fcmp olt float %40, %7
  br i1 %41, label %42, label %43

42:                                               ; preds = %33, %29
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %21) #9
  br label %43

43:                                               ; preds = %33, %42, %25, %20
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %20, !llvm.loop !54

46:                                               ; preds = %43, %17, %2
  %47 = load i32, ptr %8, align 4, !tbaa !36
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %13) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %50, %66
  %54 = phi ptr [ %67, %66 ], [ %51, %50 ]
  %55 = getelementptr inbounds %struct.BMEdge, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !56
  %61 = icmp eq ptr %60, %56
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %54) #9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %54) #9
  br label %66

66:                                               ; preds = %53, %58, %65, %62
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %53, !llvm.loop !57

69:                                               ; preds = %66, %50, %46
  call void @BM_mesh_edgesplit(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %70 = call ptr @CDDM_from_bmesh(ptr noundef %13, i8 noundef zeroext 1) #8
  call void @BM_mesh_free(ptr noundef %13) #8
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %70, i64 0, i32 16
  %72 = load i32, ptr %71, align 8, !tbaa !58
  %73 = or i32 %72, 4
  store i32 %73, ptr %71, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret ptr %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !61 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #9
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !62 {
  %3 = load float, ptr %0, align 4, !tbaa !63
  %4 = load float, ptr %1, align 4, !tbaa !63
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !63
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !63
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !65
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !66 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call ptr %3(ptr noundef %0) #8
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !65
  %4 = and i8 %3, 8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_mesh_edgesplit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !71
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  store ptr %7, ptr %0, align 8, !tbaa !77
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!"MOD_edgesplit.c:copyData"}
!35 = !{!"MOD_edgesplit.c:applyModifier"}
!36 = !{!37, !42, i64 116}
!37 = !{!"EdgeSplitModifierData", !38, i64 0, !43, i64 112, !42, i64 116}
!38 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!"MOD_edgesplit.c:initData"}
!45 = !{!37, !43, i64 112}
!46 = !{!"MOD_edgesplit.c:doEdgeSplit"}
!47 = !{!48, !39, i64 40}
!48 = !{!"BMEdge", !49, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !50, i64 48, !50, i64 64}
!49 = !{!"BMHeader", !39, i64 0, !42, i64 8, !40, i64 12, !40, i64 13, !40, i64 14}
!50 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!51 = !{!52, !39, i64 40}
!52 = !{!"BMLoop", !49, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!53 = !{!52, !39, i64 32}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!52, !39, i64 56}
!57 = distinct !{!57, !55}
!58 = !{!59, !42, i64 1056}
!59 = !{!"DerivedMesh", !60, i64 0, !60, i64 200, !60, i64 400, !60, i64 600, !60, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!60 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!61 = !{!"MOD_edgesplit.c:BM_iter_new"}
!62 = !{!"MOD_edgesplit.c:dot_v3v3"}
!63 = !{!43, !43, i64 0}
!64 = !{!"MOD_edgesplit.c:_bm_elem_flag_enable"}
!65 = !{!49, !40, i64 13}
!66 = !{!"MOD_edgesplit.c:BM_iter_step"}
!67 = !{!68, !39, i64 48}
!68 = !{!"BMIter", !40, i64 0, !39, i64 40, !39, i64 48, !42, i64 56, !40, i64 60}
!69 = !{!"MOD_edgesplit.c:_bm_elem_flag_test"}
!70 = !{!"MOD_edgesplit.c:BM_iter_init"}
!71 = !{!68, !40, i64 60}
!72 = !{!68, !39, i64 40}
!73 = !{!74, !39, i64 40}
!74 = !{!"BMesh", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !40, i64 28, !40, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !42, i64 88, !42, i64 92, !42, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 136, !60, i64 144, !60, i64 344, !60, i64 544, !60, i64 744, !75, i64 944, !42, i64 948, !42, i64 952, !42, i64 956, !76, i64 960, !39, i64 976, !76, i64 984, !39, i64 1000}
!75 = !{!"short", !40, i64 0}
!76 = !{!"ListBase", !39, i64 0, !39, i64 8}
!77 = !{!40, !40, i64 0}
