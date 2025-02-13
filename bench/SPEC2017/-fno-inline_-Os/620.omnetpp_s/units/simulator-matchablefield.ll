; ModuleID = 'simulator/matchablefield.cc'
source_filename = "simulator/matchablefield.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.MatchableFieldAdapter = type <{ %"class.MatchExpression::Matchable", ptr, ptr, i32, [4 x i8] }>
%"class.MatchExpression::Matchable" = type { ptr }

$_ZN15MatchExpression9MatchableD2Ev = comdat any

$_ZN21MatchableFieldAdapterD0Ev = comdat any

$_ZN15MatchExpression9MatchableC2Ev = comdat any

$_ZN15MatchExpression9MatchableD0Ev = comdat any

$_ZTSN15MatchExpression9MatchableE = comdat any

$_ZTIN15MatchExpression9MatchableE = comdat any

$_ZTVN15MatchExpression9MatchableE = comdat any

@_ZTV21MatchableFieldAdapter = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI21MatchableFieldAdapter, ptr @_ZNK21MatchableFieldAdapter19getDefaultAttributeEv, ptr @_ZNK21MatchableFieldAdapter12getAttributeEPKc, ptr @_ZN15MatchExpression9MatchableD2Ev, ptr @_ZN21MatchableFieldAdapterD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS21MatchableFieldAdapter = dso_local constant [24 x i8] c"21MatchableFieldAdapter\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN15MatchExpression9MatchableE = linkonce_odr dso_local constant [30 x i8] c"N15MatchExpression9MatchableE\00", comdat, align 1
@_ZTIN15MatchExpression9MatchableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN15MatchExpression9MatchableE }, comdat, align 8
@_ZTI21MatchableFieldAdapter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21MatchableFieldAdapter, ptr @_ZTIN15MatchExpression9MatchableE }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN15MatchExpression9MatchableE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN15MatchExpression9MatchableE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN15MatchExpression9MatchableD2Ev, ptr @_ZN15MatchExpression9MatchableD0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"declaredOn\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_matchablefield.cc, ptr null }]

@_ZN21MatchableFieldAdapterC1EP7cObjecti = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN21MatchableFieldAdapterC2EP7cObjecti

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21MatchableFieldAdapter19getDefaultAttributeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0) unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = load ptr, ptr %3, align 8, !tbaa !45
  %9 = getelementptr inbounds ptr, ptr %8, i64 28
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %5, i32 noundef %7) #9
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK21MatchableFieldAdapter12getAttributeEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) unnamed_addr #0 align 2 !prof !35 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str, ptr noundef nonnull dereferenceable(1) %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.1, ptr noundef nonnull dereferenceable(1) %1) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.2, ptr noundef nonnull dereferenceable(1) %1) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8, %5, %2
  %12 = phi i64 [ 28, %2 ], [ 31, %5 ], [ 30, %8 ]
  %13 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  %15 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = load ptr, ptr %14, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef %16, i32 noundef %18) #9
  br label %23

23:                                               ; preds = %11, %8
  %24 = phi ptr [ null, %8 ], [ %22, %11 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN21MatchableFieldAdapterD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #9
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21MatchableFieldAdapterC2EP7cObjecti(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN15MatchExpression9MatchableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV21MatchableFieldAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN21MatchableFieldAdapter8setFieldEP7cObjecti(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) #9
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN15MatchExpression9MatchableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21MatchableFieldAdapter8setFieldEP7cObjecti(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !35 {
  %4 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  store i32 %2, ptr %5, align 8, !tbaa !44
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %9 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !36
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN21MatchableFieldAdapter8setFieldEP7cObjectPKc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 align 2 !prof !35 {
  %4 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !44
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %9 = getelementptr inbounds %class.MatchableFieldAdapter, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !36
  %10 = load ptr, ptr %8, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 27
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull %1) #9
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %26, %3
  ret void

16:                                               ; preds = %3, %26
  %17 = phi i32 [ %27, %26 ], [ 0, %3 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !36
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 28
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(88) %18, ptr noundef nonnull %1, i32 noundef %17) #9
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 %17, ptr %5, align 8, !tbaa !44
  br label %26

26:                                               ; preds = %16, %25
  %27 = add nuw nsw i32 %17, 1
  %28 = load ptr, ptr %9, align 8, !tbaa !36
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds ptr, ptr %29, i64 27
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(88) %28, ptr noundef nonnull %1) #9
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %16, label %15, !llvm.loop !47
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_matchablefield.cc() #2 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !39, i64 16}
!37 = !{!"_ZTS21MatchableFieldAdapter", !38, i64 0, !39, i64 8, !39, i64 16, !42, i64 24}
!38 = !{!"_ZTSN15MatchExpression9MatchableE"}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!37, !39, i64 8}
!44 = !{!37, !42, i64 24}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !41, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
