; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 !prof !38 {
  br label %1

1:                                                ; preds = %0, %26
  %2 = phi i32 [ 1, %0 ], [ %27, %26 ]
  %3 = icmp eq i32 %2, 10
  br label %14

4:                                                ; preds = %14
  %5 = add nsw i32 %17, -1
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %5, i32 %19, !prof !39
  %9 = select i1 %7, i32 %19, i32 %5, !prof !39
  %10 = icmp sgt i32 %8, 159
  %11 = select i1 %3, i1 %10, i1 false, !prof !40
  %12 = icmp slt i32 %9, 26
  %13 = select i1 %11, i1 %12, i1 false, !prof !41
  br i1 %13, label %21, label %14, !prof !42, !llvm.loop !43

14:                                               ; preds = %1, %4
  %15 = phi i32 [ 100, %1 ], [ %9, %4 ]
  %16 = phi i32 [ 100, %1 ], [ %8, %4 ]
  %17 = phi i32 [ 100, %1 ], [ %5, %4 ]
  %18 = phi i32 [ 100, %1 ], [ %19, %4 ]
  %19 = add nuw nsw i32 %18, 1
  %20 = icmp eq i32 %19, 200
  br i1 %20, label %21, label %4, !prof !46, !llvm.loop !43

21:                                               ; preds = %4, %14
  %22 = phi i32 [ %8, %4 ], [ %16, %14 ]
  %23 = phi i32 [ %9, %4 ], [ %15, %14 ]
  %24 = phi i32 [ 8, %4 ], [ 5, %14 ]
  %25 = icmp ult i32 %17, 2
  br i1 %25, label %26, label %29, !prof !47

26:                                               ; preds = %21
  %27 = add nuw nsw i32 %2, 1
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %29, label %1, !prof !48, !llvm.loop !49

29:                                               ; preds = %21, %26
  %30 = phi i32 [ %2, %21 ], [ 10, %26 ]
  %31 = phi i32 [ %24, %21 ], [ 2, %26 ]
  switch i32 %31, label %39 [
    i32 2, label %32
    i32 8, label %32
  ], !prof !50

32:                                               ; preds = %29, %29
  %33 = icmp sgt i32 %22, 170
  %34 = sext i1 %33 to i32
  %35 = shl i32 %22, 1
  %36 = add i32 %23, %30
  %37 = add i32 %36, %35
  %38 = add i32 %37, %34
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i32 [ 0, %29 ], [ %38, %32 ]
  ret i32 %40
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_test.cpp() #4 section ".text.startup" !prof !38 !PGOFuncName !51 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 3024}
!8 = !{!"MaxCount", i64 976}
!9 = !{!"MaxInternalCount", i64 976}
!10 = !{!"MaxFunctionCount", i64 1}
!11 = !{!"NumCounts", i64 12}
!12 = !{!"NumFunctions", i64 2}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 976, i32 1}
!18 = !{i32 100000, i64 976, i32 1}
!19 = !{i32 200000, i64 976, i32 1}
!20 = !{i32 300000, i64 976, i32 1}
!21 = !{i32 400000, i64 975, i32 2}
!22 = !{i32 500000, i64 975, i32 2}
!23 = !{i32 600000, i64 975, i32 2}
!24 = !{i32 700000, i64 488, i32 4}
!25 = !{i32 800000, i64 488, i32 4}
!26 = !{i32 900000, i64 488, i32 4}
!27 = !{i32 950000, i64 488, i32 4}
!28 = !{i32 990000, i64 76, i32 5}
!29 = !{i32 999000, i64 8, i32 7}
!30 = !{i32 999900, i64 1, i32 11}
!31 = !{i32 999990, i64 1, i32 11}
!32 = !{i32 999999, i64 1, i32 11}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_GLOBAL__sub_I_test.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_test.cpp, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!"branch_weights", i32 488, i32 488}
!40 = !{!"branch_weights", i32 76, i32 900}
!41 = !{!"branch_weights", i32 8, i32 968}
!42 = !{!"branch_weights", i32 1, i32 974}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!"branch_weights", i32 9, i32 967}
!47 = !{!"branch_weights", i32 9, i32 1}
!48 = !{!"branch_weights", i32 0, i32 10}
!49 = distinct !{!49, !44, !45}
!50 = !{!"branch_weights", i32 0, i32 0, i32 1}
!51 = !{!"test.cpp;_GLOBAL__sub_I_test.cpp"}
