; ModuleID = 'simulator/matchablefield.cc'
source_filename = "simulator/matchablefield.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.MatchableFieldAdapter = type <{ %"class.MatchExpression::Matchable", ptr, ptr, i32, [4 x i8] }>
%"class.MatchExpression::Matchable" = type { ptr }

$_ZN15MatchExpression9MatchableD2Ev = comdat any

$_ZN21MatchableFieldAdapterD0Ev = comdat any

$_ZTSN15MatchExpression9MatchableE = comdat any

$_ZTIN15MatchExpression9MatchableE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV21MatchableFieldAdapter = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI21MatchableFieldAdapter, ptr @_ZNK21MatchableFieldAdapter19getDefaultAttributeEv, ptr @_ZNK21MatchableFieldAdapter12getAttributeEPKc, ptr @_ZN15MatchExpression9MatchableD2Ev, ptr @_ZN21MatchableFieldAdapterD0Ev] }, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"declaredOn\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS21MatchableFieldAdapter = dso_local constant [24 x i8] c"21MatchableFieldAdapter\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN15MatchExpression9MatchableE = linkonce_odr dso_local constant [30 x i8] c"N15MatchExpression9MatchableE\00", comdat, align 1
@_ZTIN15MatchExpression9MatchableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN15MatchExpression9MatchableE }, comdat, align 8
@_ZTI21MatchableFieldAdapter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21MatchableFieldAdapter, ptr @_ZTIN15MatchExpression9MatchableE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_matchablefield.cc, ptr null }]

@_ZN21MatchableFieldAdapterC1EP7cObjecti = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN21MatchableFieldAdapterC2EP7cObjecti

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21MatchableFieldAdapterC2EP7cObjecti(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV21MatchableFieldAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  store i32 %2, ptr %5, align 8, !tbaa !48
  %6 = load ptr, ptr %1, align 8, !tbaa !39
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21MatchableFieldAdapter8setFieldEP7cObjecti(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !38 {
  %4 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  store i32 %2, ptr %5, align 8, !tbaa !48
  %6 = load ptr, ptr %1, align 8, !tbaa !39
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !49
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21MatchableFieldAdapter8setFieldEP7cObjectPKc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 !prof !38 {
  %4 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !48
  %6 = load ptr, ptr %1, align 8, !tbaa !39
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !49
  %10 = load ptr, ptr %8, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 27
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull %1)
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %26, %3
  ret void

16:                                               ; preds = %3, %26
  %17 = phi i32 [ %27, %26 ], [ 0, %3 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !49
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 28
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(88) %18, ptr noundef nonnull %1, i32 noundef %17)
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 %17, ptr %5, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %16, %25
  %27 = add nuw nsw i32 %17, 1
  %28 = load ptr, ptr %9, align 8, !tbaa !49
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = getelementptr inbounds ptr, ptr %29, i64 27
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(88) %28, ptr noundef nonnull %1)
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %16, label %15, !llvm.loop !50
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK21MatchableFieldAdapter19getDefaultAttributeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0) unnamed_addr #3 align 2 !prof !38 {
  %2 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 28
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %5, i32 noundef %7)
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK21MatchableFieldAdapter12getAttributeEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) unnamed_addr #3 align 2 !prof !38 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str, ptr noundef nonnull dereferenceable(1) %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.1, ptr noundef nonnull dereferenceable(1) %1) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.2, ptr noundef nonnull dereferenceable(1) %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8, %5, %2
  %12 = phi i64 [ 28, %2 ], [ 31, %5 ], [ 30, %8 ]
  %13 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = load ptr, ptr %14, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef %16, i32 noundef %18)
  br label %23

23:                                               ; preds = %11, %8
  %24 = phi ptr [ null, %8 ], [ %22, %11 ]
  ret ptr %24
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21MatchableFieldAdapterD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_matchablefield.cc() #8 section ".text.startup" !prof !53 !PGOFuncName !54 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #11
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_GLOBAL__sub_I_matchablefield.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_matchablefield.cc, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 8}
!43 = !{!"_ZTS21MatchableFieldAdapter", !44, i64 0, !45, i64 8, !45, i64 16, !47, i64 24}
!44 = !{!"_ZTSN15MatchExpression9MatchableE"}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"int", !46, i64 0}
!48 = !{!43, !47, i64 24}
!49 = !{!43, !45, i64 16}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"function_entry_count", i64 1}
!54 = !{!"simulator/matchablefield.cc;_GLOBAL__sub_I_matchablefield.cc"}
