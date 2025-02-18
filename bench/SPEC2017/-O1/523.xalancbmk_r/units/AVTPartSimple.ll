; ModuleID = 'AVTPartSimple.cpp'
source_filename = "AVTPartSimple.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::AVTPartSimple" = type <{ %"class.xalanc_1_10::AVTPart", ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::AVTPart" = type { ptr }

$_ZN11xalanc_1_1013AVTPartSimpleD0Ev = comdat any

@_ZTVN11xalanc_1_1013AVTPartSimpleE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1013AVTPartSimpleE, ptr @_ZN11xalanc_1_107AVTPartD2Ev, ptr @_ZN11xalanc_1_1013AVTPartSimpleD0Ev, ptr @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1013AVTPartSimpleE = dso_local constant [31 x i8] c"N11xalanc_1_1013AVTPartSimpleE\00", align 1
@_ZTIN11xalanc_1_107AVTPartE = external constant ptr
@_ZTIN11xalanc_1_1013AVTPartSimpleE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1013AVTPartSimpleE, ptr @_ZTIN11xalanc_1_107AVTPartE }, align 8

@_ZN11xalanc_1_1013AVTPartSimpleC1ERNS_29StylesheetConstructionContextEPKtj = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN11xalanc_1_1013AVTPartSimpleC2ERNS_29StylesheetConstructionContextEPKtj

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013AVTPartSimpleC2ERNS_29StylesheetConstructionContextEPKtj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_107AVTPartC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1013AVTPartSimpleE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 34
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
          to label %9 unwind label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 2
  store i32 %3, ptr %11, align 8, !tbaa !44
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107AVTPartD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  resume { ptr, i32 } %13
}

declare void @_ZN11xalanc_1_107AVTPartC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture readnone %2, ptr nocapture nonnull readnone align 8 %3, ptr nocapture nonnull readnone align 8 %4) unnamed_addr #1 align 2 !prof !34 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %7)
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %7, i32 noundef %14)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %6)
  br label %12

12:                                               ; preds = %4, %10
  %13 = phi i32 [ %11, %10 ], [ %8, %4 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %6, i32 noundef %13)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_107AVTPartD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013AVTPartSimpleD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_107AVTPartD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #5
  tail call void @_ZdlPv(ptr noundef %0) #6
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { builtin nounwind }

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
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1013AVTPartSimpleE", !40, i64 0, !41, i64 8, !43, i64 16}
!40 = !{!"_ZTSN11xalanc_1_107AVTPartE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!39, !43, i64 16}
