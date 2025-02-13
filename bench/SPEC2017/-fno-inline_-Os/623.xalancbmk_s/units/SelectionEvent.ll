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

$_ZNK11xalanc_1_105XPath13getExpressionEv = comdat any

$_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

@_ZTVN11xalanc_1_1014SelectionEventE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014SelectionEventE, ptr @_ZN11xalanc_1_1014SelectionEventD2Ev, ptr @_ZN11xalanc_1_1014SelectionEventD0Ev] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014SelectionEventE = dso_local constant [32 x i8] c"N11xalanc_1_1014SelectionEventE\00", align 1
@_ZTIN11xalanc_1_1014SelectionEventE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014SelectionEventE }, align 8

@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE
@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE
@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathEb
@_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE
@_ZN11xalanc_1_1014SelectionEventD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014SelectionEventD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1014SelectionEventD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #5
  tail call void @_ZdlPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(129) %5, ptr noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  %13 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %5) #7
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #7
  store ptr %14, ptr %12, align 8, !tbaa !45
  %15 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %16 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  %17 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %18 = select i1 %17, i32 0, i32 3
  store i32 %18, ptr %16, align 8, !tbaa !53
  %19 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 0, ptr %19, align 4, !tbaa !54
  %20 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr null, ptr %20, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #0 comdat align 2 !prof !56 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !65 {
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %3, ptr %0, align 8, !tbaa !66
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #7
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #8
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %6) unnamed_addr #1 align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  store ptr %5, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %14 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  %15 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %16 = select i1 %15, i32 0, i32 3
  store i32 %16, ptr %14, align 8, !tbaa !53
  %17 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 0, ptr %17, align 4, !tbaa !54
  %18 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr null, ptr %18, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(129) %5, i1 noundef zeroext %6) unnamed_addr #1 align 2 !prof !41 {
  %8 = zext i1 %6 to i8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  %14 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %5) #7
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %14) #7
  store ptr %15, ptr %13, align 8, !tbaa !45
  %16 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef null) #7
  %17 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  store i32 1, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 %8, ptr %18, align 4, !tbaa !54
  %19 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr null, ptr %19, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !69 {
  store ptr %1, ptr %0, align 8, !tbaa !66
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventC2ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(129) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #1 align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 5
  %13 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %5) #7
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #7
  store ptr %14, ptr %12, align 8, !tbaa !45
  %15 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef null) #7
  %16 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 7
  store i32 2, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 8
  store i8 0, ptr %17, align 4, !tbaa !54
  %18 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 9
  store ptr %6, ptr %18, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014SelectionEventD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1014SelectionEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #5
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { builtin nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!37 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!38 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!39 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !44, i64 0}
!48 = !{!49, !46, i64 16}
!49 = !{!"_ZTSN11xalanc_1_1014SelectionEventE", !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !50, i64 48, !51, i64 56, !52, i64 60, !46, i64 64}
!50 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !46, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1014SelectionEvent14eSelectionTypeE", !47, i64 0}
!52 = !{!"bool", !47, i64 0}
!53 = !{!49, !51, i64 56}
!54 = !{!49, !52, i64 60}
!55 = !{!49, !46, i64 64}
!56 = !{!"function_entry_count", i64 5050308}
!57 = !{!"function_entry_count", i64 24}
!58 = !{!59, !46, i64 80}
!59 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !60, i64 0, !62, i64 32, !63, i64 40, !62, i64 72, !46, i64 80, !64, i64 88}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !46, i64 0, !61, i64 8, !61, i64 16, !46, i64 24}
!61 = !{!"long", !47, i64 0}
!62 = !{!"int", !47, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !46, i64 0, !61, i64 8, !61, i64 16, !46, i64 24}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !46, i64 0, !61, i64 8, !61, i64 16, !46, i64 24}
!65 = !{!"function_entry_count", i64 717007216}
!66 = !{!50, !46, i64 0}
!67 = !{!"function_entry_count", i64 381195133}
!68 = !{!"function_entry_count", i64 1009440147}
!69 = !{!"function_entry_count", i64 292432932}
