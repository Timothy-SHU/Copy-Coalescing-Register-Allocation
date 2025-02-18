; ModuleID = 'Random.cpp'
source_filename = "Random.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Random = type { i32, i32, i32 }

@_ZN6Random5s_rngE = dso_local local_unnamed_addr global ptr null, align 8

@_ZN6RandomC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6RandomC2Ei

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZN6Random7get_RngEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = load ptr, ptr @_ZN6Random5s_rngE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7, !prof !42

3:                                                ; preds = %0
  %4 = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #6
  store i32 -743990375, ptr %4, align 4, !tbaa !43
  %5 = getelementptr inbounds %class.Random, ptr %4, i64 0, i32 1
  store i32 -229110875, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds %class.Random, ptr %4, i64 0, i32 2
  store i32 -1546396991, ptr %6, align 4, !tbaa !47
  store i32 -743990373, ptr %4, align 4, !tbaa !43
  store i32 -229110867, ptr %5, align 4, !tbaa !46
  store i32 -1546396975, ptr %6, align 4, !tbaa !47
  store ptr %4, ptr @_ZN6Random5s_rngE, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %3, %0
  %8 = load ptr, ptr @_ZN6Random5s_rngE, align 8, !tbaa !38
  ret ptr %8
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6RandomC2Ei(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(12) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !48 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %7, !prof !49

4:                                                ; preds = %2
  store i32 -743990375, ptr %0, align 4, !tbaa !43
  %5 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 1
  store i32 -229110875, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 2
  store i32 -1546396991, ptr %6, align 4, !tbaa !47
  store i32 -743990373, ptr %0, align 4, !tbaa !43
  store i32 -229110867, ptr %5, align 4, !tbaa !46
  store i32 -1546396975, ptr %6, align 4, !tbaa !47
  br label %17

7:                                                ; preds = %2
  %8 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %9 = mul i32 %8, 741103597
  store i32 %9, ptr %0, align 4, !tbaa !43
  %10 = mul i32 %8, -810880663
  %11 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !46
  %12 = mul i32 %8, -480760523
  %13 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !47
  %14 = or i32 %9, 2
  store i32 %14, ptr %0, align 4, !tbaa !43
  %15 = or i32 %10, 8
  store i32 %15, ptr %11, align 4, !tbaa !46
  %16 = or i32 %12, 16
  store i32 %16, ptr %13, align 4, !tbaa !47
  br label %17

17:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6Random10seedrandomEj(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !50 {
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %4 = mul i32 %3, 741103597
  store i32 %4, ptr %0, align 4, !tbaa !43
  %5 = mul i32 %3, -810880663
  %6 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !46
  %7 = mul i32 %3, -480760523
  %8 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !47
  %9 = or i32 %4, 2
  store i32 %9, ptr %0, align 4, !tbaa !43
  %10 = or i32 %5, 8
  store i32 %10, ptr %6, align 4, !tbaa !46
  %11 = or i32 %7, 16
  store i32 %11, ptr %8, align 4, !tbaa !47
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN6Random7randintEt(ptr nocapture noundef nonnull align 4 dereferenceable(12) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = load i32, ptr %0, align 4, !tbaa !43
  %4 = shl i32 %3, 13
  %5 = xor i32 %4, %3
  %6 = lshr i32 %5, 19
  %7 = shl i32 %3, 12
  %8 = and i32 %7, -8192
  %9 = or disjoint i32 %6, %8
  store i32 %9, ptr %0, align 4, !tbaa !43
  %10 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = shl i32 %11, 2
  %13 = xor i32 %12, %11
  %14 = lshr i32 %13, 25
  %15 = shl i32 %11, 4
  %16 = and i32 %15, -128
  %17 = or disjoint i32 %14, %16
  store i32 %17, ptr %10, align 4, !tbaa !46
  %18 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !47
  %20 = shl i32 %19, 3
  %21 = xor i32 %20, %19
  %22 = lshr i32 %21, 11
  %23 = shl i32 %19, 17
  %24 = and i32 %23, -2097152
  %25 = or disjoint i32 %22, %24
  store i32 %25, ptr %18, align 4, !tbaa !47
  %26 = xor i32 %15, %7
  %27 = xor i32 %26, %25
  %28 = lshr i32 %27, 16
  %29 = zext i16 %1 to i32
  %30 = mul nuw i32 %28, %29
  %31 = lshr i32 %30, 16
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN6Random6randomEv(ptr nocapture noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #4 align 2 !prof !51 {
  %2 = load i32, ptr %0, align 4, !tbaa !43
  %3 = shl i32 %2, 13
  %4 = xor i32 %3, %2
  %5 = lshr i32 %4, 19
  %6 = shl i32 %2, 12
  %7 = and i32 %6, -8192
  %8 = or disjoint i32 %5, %7
  store i32 %8, ptr %0, align 4, !tbaa !43
  %9 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = shl i32 %10, 2
  %12 = xor i32 %11, %10
  %13 = lshr i32 %12, 25
  %14 = shl i32 %10, 4
  %15 = and i32 %14, -128
  %16 = or disjoint i32 %13, %15
  store i32 %16, ptr %9, align 4, !tbaa !46
  %17 = getelementptr inbounds %class.Random, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !47
  %19 = shl i32 %18, 3
  %20 = xor i32 %19, %18
  %21 = lshr i32 %20, 11
  %22 = shl i32 %18, 17
  %23 = and i32 %22, -2097152
  %24 = or disjoint i32 %21, %23
  store i32 %24, ptr %17, align 4, !tbaa !47
  %25 = xor i32 %16, %8
  %26 = xor i32 %25, %24
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { builtin allocsize(0) }

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
!35 = !{ptr @_ZN6Random7get_RngEv, ptr @_Znwm, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 5190001289}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"branch_weights", i32 0, i32 -1699966652}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTS6Random", !45, i64 0, !45, i64 4, !45, i64 8}
!45 = !{!"int", !40, i64 0}
!46 = !{!44, !45, i64 4}
!47 = !{!44, !45, i64 8}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!"branch_weights", i32 0, i32 1}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!"function_entry_count", i64 7066}
