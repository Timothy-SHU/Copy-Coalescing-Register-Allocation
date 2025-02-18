; ModuleID = 'Zobrist.cpp'
source_filename = "Zobrist.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::array" = type { [4 x %"class.boost::array.0"] }
%"class.boost::array.0" = type { [441 x i64] }
%"class.boost::array.1" = type { [2 x %"class.boost::array.2"] }
%"class.boost::array.2" = type { [882 x i64] }
%"class.boost::array.3" = type { [5 x i64] }

@_ZN7Zobrist7zobristE = dso_local local_unnamed_addr global %"class.boost::array" zeroinitializer, align 8
@_ZN7Zobrist12zobrist_prisE = dso_local local_unnamed_addr global %"class.boost::array.1" zeroinitializer, align 8
@_ZN7Zobrist12zobrist_passE = dso_local local_unnamed_addr global %"class.boost::array.3" zeroinitializer, align 8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7Zobrist12init_zobristER6Random(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #0 align 2 !prof !37 {
  br label %2

2:                                                ; preds = %1, %5
  %3 = phi i64 [ 0, %1 ], [ %6, %5 ]
  %4 = getelementptr inbounds [4 x %"class.boost::array.0"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %3
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %3, 1
  %7 = icmp eq i64 %6, 4
  br i1 %7, label %19, label %2, !prof !38, !llvm.loop !39

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %17, %8 ]
  %10 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0)
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0)
  %14 = zext i32 %13 to i64
  %15 = or disjoint i64 %12, %14
  %16 = getelementptr inbounds [441 x i64], ptr %4, i64 0, i64 %9
  store i64 %15, ptr %16, align 8, !tbaa !42
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, 441
  br i1 %18, label %5, label %8, !prof !46, !llvm.loop !47

19:                                               ; preds = %5, %22
  %20 = phi i64 [ %23, %22 ], [ 0, %5 ]
  %21 = getelementptr inbounds [2 x %"class.boost::array.2"], ptr @_ZN7Zobrist12zobrist_prisE, i64 0, i64 %20
  br label %25

22:                                               ; preds = %25
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %19, label %37, !prof !48, !llvm.loop !49

25:                                               ; preds = %19, %25
  %26 = phi i64 [ 0, %19 ], [ %34, %25 ]
  %27 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0)
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 %28, 32
  %30 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0)
  %31 = zext i32 %30 to i64
  %32 = or disjoint i64 %29, %31
  %33 = getelementptr inbounds [882 x i64], ptr %21, i64 0, i64 %26
  store i64 %32, ptr %33, align 8, !tbaa !42
  %34 = add nuw nsw i64 %26, 1
  %35 = icmp eq i64 %34, 882
  br i1 %35, label %22, label %25, !prof !50, !llvm.loop !51

36:                                               ; preds = %37
  ret void

37:                                               ; preds = %22, %37
  %38 = phi i64 [ %46, %37 ], [ 0, %22 ]
  %39 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0)
  %40 = zext i32 %39 to i64
  %41 = shl nuw i64 %40, 32
  %42 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0)
  %43 = zext i32 %42 to i64
  %44 = or disjoint i64 %41, %43
  %45 = getelementptr inbounds [5 x i64], ptr @_ZN7Zobrist12zobrist_passE, i64 0, i64 %38
  store i64 %44, ptr %45, align 8, !tbaa !42
  %46 = add nuw nsw i64 %38, 1
  %47 = icmp eq i64 %46, 5
  br i1 %47, label %36, label %37, !prof !52, !llvm.loop !53
}

declare noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 256142274181}
!8 = !{!"MaxCount", i64 7844141798}
!9 = !{!"MaxInternalCount", i64 7547852578}
!10 = !{!"MaxFunctionCount", i64 7844141798}
!11 = !{!"NumCounts", i64 2880}
!12 = !{!"NumFunctions", i64 415}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7844141798, i32 1}
!18 = !{i32 100000, i64 6538040572, i32 4}
!19 = !{i32 200000, i64 5601060928, i32 8}
!20 = !{i32 300000, i64 4731748263, i32 13}
!21 = !{i32 400000, i64 3429140892, i32 19}
!22 = !{i32 500000, i64 2689357797, i32 28}
!23 = !{i32 600000, i64 2030175252, i32 39}
!24 = !{i32 700000, i64 1513066108, i32 53}
!25 = !{i32 800000, i64 981329770, i32 73}
!26 = !{i32 900000, i64 723674647, i32 104}
!27 = !{i32 950000, i64 415336410, i32 129}
!28 = !{i32 990000, i64 64860573, i32 187}
!29 = !{i32 999000, i64 6034043, i32 304}
!30 = !{i32 999900, i64 678637, i32 400}
!31 = !{i32 999990, i64 50119, i32 498}
!32 = !{i32 999999, i64 5214, i32 613}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_ZN7Zobrist12init_zobristER6Random, ptr @_ZN6Random6randomEv, i64 7066}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 1}
!38 = !{!"branch_weights", i32 1, i32 3}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !43, i64 0}
!43 = !{!"long long", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"branch_weights", i32 4, i32 1760}
!47 = distinct !{!47, !40, !41}
!48 = !{!"branch_weights", i32 1, i32 1}
!49 = distinct !{!49, !40, !41}
!50 = !{!"branch_weights", i32 2, i32 1762}
!51 = distinct !{!51, !40, !41}
!52 = !{!"branch_weights", i32 1, i32 4}
!53 = distinct !{!53, !40, !41}
