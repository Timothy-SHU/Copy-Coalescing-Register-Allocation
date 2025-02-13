; ModuleID = 'Random.cpp'
source_filename = "Random.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Random = type { i32, i32, i32 }

@_ZN6Random5s_rngE = dso_local local_unnamed_addr global ptr null, align 8

@_ZN6RandomC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6RandomC2Ei

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN6Random7get_RngEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %1 = load ptr, ptr @_ZN6Random5s_rngE, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !46

3:                                                ; preds = %0
  %4 = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #5
  tail call void @_ZN6RandomC2Ei(ptr noundef nonnull align 4 dereferenceable(12) %4, i32 noundef -1) #6
  store ptr %4, ptr @_ZN6Random5s_rngE, align 8, !tbaa !42
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  ret ptr %6
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6RandomC2Ei(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(12) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !47 {
  %3 = icmp eq i32 %1, -1
  %4 = select i1 %3, i32 1245, i32 %1, !prof !48
  tail call void @_ZN6Random10seedrandomEj(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %4) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6Random10seedrandomEj(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !47 {
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %4 = mul i32 %3, 741103597
  %5 = mul i32 %3, -810880663
  %6 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 1
  %7 = mul i32 %3, -480760523
  %8 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 2
  %9 = or i32 %4, 2
  store i32 %9, ptr %0, align 4, !tbaa !49
  %10 = or i32 %5, 8
  store i32 %10, ptr %6, align 4, !tbaa !52
  %11 = or i32 %7, 16
  store i32 %11, ptr %8, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN6Random7randintEt(ptr nocapture noundef nonnull align 4 dereferenceable(12) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !41 {
  %3 = tail call noundef i32 @_ZN6Random6randomEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #6
  %4 = lshr i32 %3, 16
  %5 = zext i16 %1 to i32
  %6 = mul nuw i32 %4, %5
  %7 = lshr i32 %6, 16
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN6Random6randomEv(ptr nocapture noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #3 align 2 !prof !54 {
  %2 = load i32, ptr %0, align 4, !tbaa !49
  %3 = shl i32 %2, 13
  %4 = xor i32 %3, %2
  %5 = lshr i32 %4, 19
  %6 = shl i32 %2, 12
  %7 = and i32 %6, -8192
  %8 = or disjoint i32 %5, %7
  store i32 %8, ptr %0, align 4, !tbaa !49
  %9 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = shl i32 %10, 2
  %12 = xor i32 %11, %10
  %13 = lshr i32 %12, 25
  %14 = shl i32 %10, 4
  %15 = and i32 %14, -128
  %16 = or disjoint i32 %13, %15
  store i32 %16, ptr %9, align 4, !tbaa !52
  %17 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = shl i32 %18, 3
  %20 = xor i32 %19, %18
  %21 = lshr i32 %20, 11
  %22 = shl i32 %18, 17
  %23 = and i32 %22, -2097152
  %24 = or disjoint i32 %21, %23
  store i32 %24, ptr %17, align 4, !tbaa !53
  %25 = xor i32 %16, %8
  %26 = xor i32 %25, %24
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { builtin optsize allocsize(0) }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN6Random7get_RngEv, ptr @_Znwm, i64 2}
!37 = !{ptr @_ZN6Random7get_RngEv, ptr @_ZN6RandomC2Ei, i64 2}
!38 = !{ptr @_ZN6RandomC2Ei, ptr @_ZN6Random10seedrandomEj, i64 2}
!39 = !{ptr @_ZN6Random7randintEt, ptr @_ZN6Random6randomEv, i64 5190001289}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 5190001289}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"branch_weights", i32 1, i32 -1699966651}
!47 = !{!"function_entry_count", i64 2}
!48 = !{!"branch_weights", i32 2, i32 2}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTS6Random", !51, i64 0, !51, i64 4, !51, i64 8}
!51 = !{!"int", !44, i64 0}
!52 = !{!50, !51, i64 4}
!53 = !{!50, !51, i64 8}
!54 = !{!"function_entry_count", i64 5190008355}
