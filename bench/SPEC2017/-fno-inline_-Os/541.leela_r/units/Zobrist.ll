; ModuleID = 'Zobrist.cpp'
source_filename = "Zobrist.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::array" = type { [4 x %"class.boost::array.0"] }
%"class.boost::array.0" = type { [441 x i64] }
%"class.boost::array.1" = type { [2 x %"class.boost::array.2"] }
%"class.boost::array.2" = type { [882 x i64] }
%"class.boost::array.3" = type { [5 x i64] }

$_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm = comdat any

$_ZN5boost5arrayIyLm441EEixEm = comdat any

$_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm = comdat any

$_ZN5boost5arrayIyLm882EEixEm = comdat any

$_ZN5boost5arrayIyLm5EEixEm = comdat any

@_ZN7Zobrist7zobristE = dso_local global %"class.boost::array" zeroinitializer, align 8
@_ZN7Zobrist12zobrist_prisE = dso_local global %"class.boost::array.1" zeroinitializer, align 8
@_ZN7Zobrist12zobrist_passE = dso_local global %"class.boost::array.3" zeroinitializer, align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7Zobrist12init_zobristER6Random(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #0 align 2 !prof !42 {
  br label %2

2:                                                ; preds = %1, %4
  %3 = phi i64 [ 0, %1 ], [ %5, %4 ]
  br label %7

4:                                                ; preds = %7
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %19, label %2, !prof !43, !llvm.loop !44

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 0, %2 ], [ %17, %7 ]
  %9 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #3
  %10 = zext i32 %9 to i64
  %11 = shl nuw i64 %10, 32
  %12 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #3
  %13 = zext i32 %12 to i64
  %14 = or disjoint i64 %11, %13
  %15 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %3) #3
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %15, i64 noundef %8) #3
  store i64 %14, ptr %16, align 8, !tbaa !46
  %17 = add nuw nsw i64 %8, 1
  %18 = icmp eq i64 %17, 441
  br i1 %18, label %4, label %7, !prof !50, !llvm.loop !51

19:                                               ; preds = %4, %22
  %20 = phi i1 [ false, %22 ], [ true, %4 ]
  %21 = phi i64 [ 1, %22 ], [ 0, %4 ]
  br label %23

22:                                               ; preds = %23
  br i1 %20, label %19, label %36, !prof !52, !llvm.loop !53

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %33, %23 ]
  %25 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #3
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #3
  %29 = zext i32 %28 to i64
  %30 = or disjoint i64 %27, %29
  %31 = tail call noundef nonnull align 8 dereferenceable(7056) ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist12zobrist_prisE, i64 noundef %21) #3
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm882EEixEm(ptr noundef nonnull align 8 dereferenceable(7056) %31, i64 noundef %24) #3
  store i64 %30, ptr %32, align 8, !tbaa !46
  %33 = add nuw nsw i64 %24, 1
  %34 = icmp eq i64 %33, 882
  br i1 %34, label %22, label %23, !prof !54, !llvm.loop !55

35:                                               ; preds = %36
  ret void

36:                                               ; preds = %22, %36
  %37 = phi i64 [ %45, %36 ], [ 0, %22 ]
  %38 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #3
  %39 = zext i32 %38 to i64
  %40 = shl nuw i64 %39, 32
  %41 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #3
  %42 = zext i32 %41 to i64
  %43 = or disjoint i64 %40, %42
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm5EEixEm(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7Zobrist12zobrist_passE, i64 noundef %37) #3
  store i64 %43, ptr %44, align 8, !tbaa !46
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, 5
  br i1 %46, label %35, label %36, !prof !56, !llvm.loop !57
}

; Function Attrs: optsize
declare noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !58 {
  %3 = getelementptr inbounds [4 x %"class.boost::array.0"], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !58 {
  %3 = getelementptr inbounds [441 x i64], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(7056) ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !59 {
  %3 = getelementptr inbounds [2 x %"class.boost::array.2"], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm882EEixEm(ptr noundef nonnull align 8 dereferenceable(7056) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !59 {
  %3 = getelementptr inbounds [882 x i64], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm5EEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !60 {
  %3 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 %1
  ret ptr %3
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 747867958256}
!4 = !{!"MaxCount", i64 115183010216}
!5 = !{!"MaxInternalCount", i64 7835753190}
!6 = !{!"MaxFunctionCount", i64 115183010216}
!7 = !{!"NumCounts", i64 2640}
!8 = !{!"NumFunctions", i64 1541}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 115183010216, i32 1}
!14 = !{i32 100000, i64 115183010216, i32 1}
!15 = !{i32 200000, i64 99995171483, i32 2}
!16 = !{i32 300000, i64 88073131441, i32 3}
!17 = !{i32 400000, i64 88073131441, i32 3}
!18 = !{i32 500000, i64 32030604394, i32 5}
!19 = !{i32 600000, i64 11128423850, i32 9}
!20 = !{i32 700000, i64 5564211925, i32 21}
!21 = !{i32 800000, i64 3688044421, i32 36}
!22 = !{i32 900000, i64 1979964940, i32 64}
!23 = !{i32 950000, i64 877932300, i32 88}
!24 = !{i32 990000, i64 97283944, i32 151}
!25 = !{i32 999000, i64 10252442, i32 368}
!26 = !{i32 999900, i64 1381009, i32 513}
!27 = !{i32 999990, i64 126015, i32 686}
!28 = !{i32 999999, i64 12002, i32 815}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN7Zobrist12init_zobristER6Random, ptr @_ZN6Random6randomEv, i64 3536}
!36 = !{ptr @_ZN7Zobrist12init_zobristER6Random, ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm, i64 883}
!37 = !{ptr @_ZN7Zobrist12init_zobristER6Random, ptr @_ZN5boost5arrayIyLm441EEixEm, i64 883}
!38 = !{ptr @_ZN7Zobrist12init_zobristER6Random, ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm, i64 882}
!39 = !{ptr @_ZN7Zobrist12init_zobristER6Random, ptr @_ZN5boost5arrayIyLm882EEixEm, i64 882}
!40 = !{ptr @_ZN7Zobrist12init_zobristER6Random, ptr @_ZN5boost5arrayIyLm5EEixEm, i64 3}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 1}
!43 = !{!"branch_weights", i32 2, i32 3}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!47, !47, i64 0}
!47 = !{!"long long", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"branch_weights", i32 5, i32 1760}
!51 = distinct !{!51, !45}
!52 = !{!"branch_weights", i32 1, i32 2}
!53 = distinct !{!53, !45}
!54 = !{!"branch_weights", i32 3, i32 1762}
!55 = distinct !{!55, !45}
!56 = !{!"branch_weights", i32 2, i32 4}
!57 = distinct !{!57, !45}
!58 = !{!"function_entry_count", i64 154994076}
!59 = !{!"function_entry_count", i64 61945108}
!60 = !{!"function_entry_count", i64 5616943}
