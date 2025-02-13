; ModuleID = 'blender/source/blender/bmesh/operators/bmo_bevel.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_bevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"offset_type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vertex_only\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"clamp_overlap\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_bevel_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %8 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  %9 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.5) #5
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.6) #5
  %11 = fcmp ogt float %4, 0.000000e+00
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #5
  %13 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 1) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %12 ]
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %16) #7
  %17 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !34

19:                                               ; preds = %15, %12
  %20 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 2) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %27
  %23 = phi ptr [ %28, %27 ], [ %20, %19 ]
  %24 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %23) #7, !range !36
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %23) #7
  br label %27

27:                                               ; preds = %22, %26
  %28 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !37

30:                                               ; preds = %27, %19
  %31 = sitofp i32 %6 to float
  call void @BM_mesh_bevel(ptr noundef %0, float noundef %4, i32 noundef %5, float noundef %31, float noundef %8, i8 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext %9, ptr noundef null, i32 noundef -1, i32 noundef %10) #5
  %32 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %32, ptr noundef nonnull @.str.8, i8 noundef zeroext 8, i8 noundef zeroext 16) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  br label %33

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !38 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !39
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !45 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BM_mesh_bevel(ptr noundef, float noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{i8 0, i8 2}
!37 = distinct !{!37, !35}
!38 = !{!"bmo_bevel.c:_bm_elem_flag_enable"}
!39 = !{!40, !42, i64 13}
!40 = !{!"BMHeader", !41, i64 0, !44, i64 8, !42, i64 12, !42, i64 13, !42, i64 14}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"int", !42, i64 0}
!45 = !{!"bmo_bevel.c:BM_edge_is_manifold"}
!46 = !{!47, !41, i64 40}
!47 = !{!"BMEdge", !40, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !48, i64 48, !48, i64 64}
!48 = !{!"BMDiskLink", !41, i64 0, !41, i64 8}
!49 = !{!50, !41, i64 40}
!50 = !{!"BMLoop", !40, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64}
