; ModuleID = 'XercesDOMFormatterWalker.cpp'
source_filename = "XercesDOMFormatterWalker.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDOMFormatterWalker" = type { %"class.xalanc_1_10::XercesDOMWalker", ptr }
%"class.xalanc_1_10::XercesDOMWalker" = type { ptr }
%"class.xalanc_1_10::XercesNamedNodeMapAttributeList" = type { %"class.xercesc_2_7::AttributeList", ptr, i64 }
%"class.xercesc_2_7::AttributeList" = type { ptr }

@_ZTVN11xalanc_1_1024XercesDOMFormatterWalkerE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XercesDOMFormatterWalkerE, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD2Ev, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD0Ev, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalker9startNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalker7endNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1024XercesDOMFormatterWalkerE = dso_local constant [42 x i8] c"N11xalanc_1_1024XercesDOMFormatterWalkerE\00", align 1
@_ZTIN11xalanc_1_1015XercesDOMWalkerE = external constant ptr
@_ZTIN11xalanc_1_1024XercesDOMFormatterWalkerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XercesDOMFormatterWalkerE, ptr @_ZTIN11xalanc_1_1015XercesDOMWalkerE }, align 8

@_ZN11xalanc_1_1024XercesDOMFormatterWalkerC1ERNS_17FormatterListenerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerC2ERNS_17FormatterListenerE
@_ZN11xalanc_1_1024XercesDOMFormatterWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XercesDOMFormatterWalkerC2ERNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1024XercesDOMFormatterWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  ret void
}

declare void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024XercesDOMFormatterWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZdlPv(ptr noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XercesDOMFormatterWalker9startNodeEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %7, label %108 [
    i16 8, label %8
    i16 5, label %98
    i16 9, label %18
    i16 1, label %24
    i16 7, label %42
    i16 4, label %56
    i16 3, label %77
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = load ptr, ptr %10, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %14)
  br label %108

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %20)
  br label %108

24:                                               ; preds = %2
  %25 = load ptr, ptr %1, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 11
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListC1EPKN11xercesc_2_715DOMNamedNodeMapE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %28)
  %29 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %35 unwind label %40

35:                                               ; preds = %24
  %36 = load ptr, ptr %30, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 10
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %39 unwind label %40

39:                                               ; preds = %35
  call void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %108

40:                                               ; preds = %35, %24
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  resume { ptr, i32 } %41

42:                                               ; preds = %2
  %43 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = load ptr, ptr %1, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %49 = load ptr, ptr %1, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %53 = load ptr, ptr %44, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 6
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef %48, ptr noundef %52)
  br label %108

56:                                               ; preds = %2
  %57 = load ptr, ptr %1, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %61 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  br label %63

63:                                               ; preds = %63, %56
  %64 = phi ptr [ %60, %56 ], [ %67, %63 ]
  %65 = load i16, ptr %64, align 2, !tbaa !44
  %66 = icmp eq i16 %65, 0
  %67 = getelementptr inbounds i16, ptr %64, i64 1
  br i1 %66, label %68, label %63, !llvm.loop !46

68:                                               ; preds = %63
  %69 = ptrtoint ptr %64 to i64
  %70 = ptrtoint ptr %60 to i64
  %71 = sub i64 %69, %70
  %72 = lshr exact i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = load ptr, ptr %62, align 8, !tbaa !35
  %75 = getelementptr inbounds ptr, ptr %74, i64 13
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef %60, i32 noundef %73)
  br label %108

77:                                               ; preds = %2
  %78 = load ptr, ptr %1, align 8, !tbaa !35
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %82 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !41
  br label %84

84:                                               ; preds = %84, %77
  %85 = phi ptr [ %81, %77 ], [ %88, %84 ]
  %86 = load i16, ptr %85, align 2, !tbaa !44
  %87 = icmp eq i16 %86, 0
  %88 = getelementptr inbounds i16, ptr %85, i64 1
  br i1 %87, label %89, label %84, !llvm.loop !46

89:                                               ; preds = %84
  %90 = ptrtoint ptr %85 to i64
  %91 = ptrtoint ptr %81 to i64
  %92 = sub i64 %90, %91
  %93 = lshr exact i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = load ptr, ptr %83, align 8, !tbaa !35
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(24) %83, ptr noundef %81, i32 noundef %94)
  br label %108

98:                                               ; preds = %2
  %99 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !41
  %101 = load ptr, ptr %1, align 8, !tbaa !35
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %105 = load ptr, ptr %100, align 8, !tbaa !35
  %106 = getelementptr inbounds ptr, ptr %105, i64 14
  %107 = load ptr, ptr %106, align 8
  tail call void %107(ptr noundef nonnull align 8 dereferenceable(24) %100, ptr noundef %104)
  br label %108

108:                                              ; preds = %2, %98, %89, %68, %42, %39, %18, %8
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListC1EPKN11xercesc_2_715DOMNamedNodeMapE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XercesDOMFormatterWalker7endNodeEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
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
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMFormatterWalker", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = load ptr, ptr %1, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = load ptr, ptr %15, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %19)
  br label %23

23:                                               ; preds = %2, %13, %7
  ret i1 false
}

declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
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
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !40, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
