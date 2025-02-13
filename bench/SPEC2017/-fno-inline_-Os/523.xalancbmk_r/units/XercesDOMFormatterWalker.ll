; ModuleID = 'XercesDOMFormatterWalker.cpp'
source_filename = "XercesDOMFormatterWalker.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDOMFormatterWalker" = type { %"class.xalanc_1_10::XercesDOMWalker", ptr }
%"class.xalanc_1_10::XercesDOMWalker" = type { ptr }
%"class.xalanc_1_10::XercesNamedNodeMapAttributeList" = type { %"class.xercesc_2_7::AttributeList", ptr, i64 }
%"class.xercesc_2_7::AttributeList" = type { ptr }

$_ZN11xalanc_1_106lengthEPKt = comdat any

@_ZTVN11xalanc_1_1024XercesDOMFormatterWalkerE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XercesDOMFormatterWalkerE, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD2Ev, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD0Ev, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalker9startNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalker7endNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1024XercesDOMFormatterWalkerE = dso_local constant [42 x i8] c"N11xalanc_1_1024XercesDOMFormatterWalkerE\00", align 1
@_ZTIN11xalanc_1_1015XercesDOMWalkerE = external constant ptr
@_ZTIN11xalanc_1_1024XercesDOMFormatterWalkerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XercesDOMFormatterWalkerE, ptr @_ZTIN11xalanc_1_1015XercesDOMWalkerE }, align 8

@_ZN11xalanc_1_1024XercesDOMFormatterWalkerC1ERNS_17FormatterListenerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerC2ERNS_17FormatterListenerE
@_ZN11xalanc_1_1024XercesDOMFormatterWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XercesDOMFormatterWalkerC2ERNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1024XercesDOMFormatterWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XercesDOMFormatterWalker9startNodeEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  switch i16 %7, label %88 [
    i16 8, label %8
    i16 5, label %78
    i16 9, label %18
    i16 1, label %24
    i16 7, label %42
    i16 4, label %56
    i16 3, label %67
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %15 = load ptr, ptr %10, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %14) #6
  br label %88

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %20) #6
  br label %88

24:                                               ; preds = %2
  %25 = load ptr, ptr %1, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 11
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListC1EPKN11xercesc_2_715DOMNamedNodeMapE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %28) #6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %35 unwind label %40

35:                                               ; preds = %24
  %36 = load ptr, ptr %30, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 10
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %39 unwind label %40

39:                                               ; preds = %35
  call void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %88

40:                                               ; preds = %35, %24
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  resume { ptr, i32 } %41

42:                                               ; preds = %2
  %43 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = load ptr, ptr %1, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %49 = load ptr, ptr %1, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %53 = load ptr, ptr %44, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 6
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef %48, ptr noundef %52) #6
  br label %88

56:                                               ; preds = %2
  %57 = load ptr, ptr %1, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %61 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %60) #6
  %64 = load ptr, ptr %62, align 8, !tbaa !35
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef %60, i32 noundef %63) #6
  br label %88

67:                                               ; preds = %2
  %68 = load ptr, ptr %1, align 8, !tbaa !35
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %72 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !41
  %74 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %71) #6
  %75 = load ptr, ptr %73, align 8, !tbaa !35
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef %71, i32 noundef %74) #6
  br label %88

78:                                               ; preds = %2
  %79 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = load ptr, ptr %1, align 8, !tbaa !35
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %85 = load ptr, ptr %80, align 8, !tbaa !35
  %86 = getelementptr inbounds ptr, ptr %85, i64 14
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef %84) #6
  br label %88

88:                                               ; preds = %2, %78, %67, %56, %42, %39, %18, %8
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListC1EPKN11xercesc_2_715DOMNamedNodeMapE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #3 comdat !prof !44 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !45
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !47, !llvm.loop !48

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XercesDOMFormatterWalker7endNodeEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  switch i16 %6, label %23 [
    i16 9, label %7
    i16 1, label %13
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9) #6
  br label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = load ptr, ptr %1, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %20 = load ptr, ptr %15, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %19) #6
  br label %23

23:                                               ; preds = %2, %13, %7
  ret i1 false
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !39, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1024XercesDOMFormatterWalkerE", !43, i64 0, !39, i64 8}
!43 = !{!"_ZTSN11xalanc_1_1015XercesDOMWalkerE"}
!44 = !{!"function_entry_count", i64 21552397}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !40, i64 0}
!47 = !{!"branch_weights", i32 21552398, i32 128560690}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
