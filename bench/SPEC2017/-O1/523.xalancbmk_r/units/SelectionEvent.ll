; ModuleID = 'SelectionEvent.cpp'
source_filename = "SelectionEvent.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.0", i32, %"class.xalanc_1_10::XalanVector.1", i32, ptr, %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1014SelectionEventE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014SelectionEventE, ptr @_ZN11xalanc_1_1014SelectionEventD2Ev, ptr @_ZN11xalanc_1_1014SelectionEventD0Ev] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014SelectionEventE = dso_local constant [32 x i8] c"N11xalanc_1_1014SelectionEventE\00", align 1
@_ZTIN11xalanc_1_1014SelectionEventE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014SelectionEventE }, align 8

@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE
@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE
@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathEb
@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE
@_ZN11xalanc_1_1014SelectionEventD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014SelectionEventD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %5, ptr nocapture noundef readonly %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  store ptr %14, ptr %12, align 8, !tbaa !38
  %15 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  store ptr %16, ptr %15, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %16)
  %17 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %6, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 0, i32 3
  store i32 %20, ptr %17, align 8, !tbaa !54
  %21 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 0, ptr %21, align 4, !tbaa !55
  %22 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr null, ptr %22, align 8, !tbaa !56
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr nocapture noundef readonly %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  store ptr %5, ptr %12, align 8, !tbaa !38
  %13 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %6, align 8, !tbaa !53
  store ptr %14, ptr %13, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %14)
  %15 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, i32 0, i32 3
  store i32 %18, ptr %15, align 8, !tbaa !54
  %19 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 0, ptr %19, align 4, !tbaa !55
  %20 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr null, ptr %20, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 !prof !34 {
  %8 = zext i1 %6 to i8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %12, align 8, !tbaa !38
  %13 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  store ptr %15, ptr %13, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  store ptr null, ptr %16, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %17 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  store i32 1, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 %8, ptr %18, align 4, !tbaa !55
  %19 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr null, ptr %19, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  store ptr %14, ptr %12, align 8, !tbaa !38
  %15 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  store ptr null, ptr %15, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %16 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  store i32 2, ptr %16, align 8, !tbaa !54
  %17 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 0, ptr %17, align 4, !tbaa !55
  %18 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr %6, ptr %18, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3)
          to label %7 unwind label %4

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #5
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3)
          to label %7 unwind label %4

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #5
  unreachable

7:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %0) #6
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #5
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { builtin nounwind }
attributes #7 = { nounwind }

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
!41 = !{!42, !39, i64 16}
!42 = !{!"_ZTSN11xalanc_1_1014SelectionEventE", !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !43, i64 48, !44, i64 56, !45, i64 60, !39, i64 64}
!43 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !39, i64 0}
!44 = !{!"_ZTSN11xalanc_1_1014SelectionEvent14eSelectionTypeE", !40, i64 0}
!45 = !{!"bool", !40, i64 0}
!46 = !{!47, !39, i64 80}
!47 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !48, i64 0, !50, i64 32, !51, i64 40, !50, i64 72, !39, i64 80, !52, i64 88}
!48 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !39, i64 0, !49, i64 8, !49, i64 16, !39, i64 24}
!49 = !{!"long", !40, i64 0}
!50 = !{!"int", !40, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !39, i64 0, !49, i64 8, !49, i64 16, !39, i64 24}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !39, i64 0, !49, i64 8, !49, i64 16, !39, i64 24}
!53 = !{!43, !39, i64 0}
!54 = !{!42, !44, i64 56}
!55 = !{!42, !45, i64 60}
!56 = !{!42, !39, i64 64}
