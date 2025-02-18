; ModuleID = 'TraceListenerDefault.cpp'
source_filename = "TraceListenerDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::TraceListenerDefault" = type { %"class.xalanc_1_10::TraceListener", ptr, i8, i8, i8, i8, ptr }
%"class.xalanc_1_10::TraceListener" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::TracerEvent" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::ElemTextLiteral" = type <{ %"class.xalanc_1_10::ElemTemplateElement.base", i8, [5 x i8], ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::ElemTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, double }
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.4", i32, %"class.xalanc_1_10::XalanVector.5", i32, ptr, %"class.xalanc_1_10::XalanVector.6" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.7", %"class.xalanc_1_10::XalanVector.8", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.9", i64, %"class.xalanc_1_10::XalanDeque", %"class.xalanc_1_10::XalanDeque.11", i8, %"class.xalanc_1_10::XalanMap.13", ptr, %"class.xalanc_1_10::XalanVector.18", %"class.xalanc_1_10::XalanMap.19", %"class.xalanc_1_10::XalanVector.24", double, %"class.xalanc_1_10::XalanMap.25", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.28", %"class.xalanc_1_10::XalanMap.25", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.28", %"class.xalanc_1_10::XalanVector.28", %"class.xalanc_1_10::XalanVector.28", %"class.xalanc_1_10::XalanVector.28", %"class.xalanc_1_10::XalanVector.28", %"class.xalanc_1_10::XalanVector.28", i64, %"class.xalanc_1_10::XalanVector.29", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.10", %"class.xalanc_1_10::XalanVector.10" }
%"class.xalanc_1_10::XalanVector.10" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.11" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.12", %"class.xalanc_1_10::XalanVector.12" }
%"class.xalanc_1_10::XalanVector.12" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.13" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.16", %"class.xalanc_1_10::XalanList.16", %"class.xalanc_1_10::XalanVector.17", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.16" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.17" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.18" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.19" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.20", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.22", %"class.xalanc_1_10::XalanList.22", %"class.xalanc_1_10::XalanVector.23", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to.20" = type { i8 }
%"class.xalanc_1_10::XalanList.22" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.23" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.24" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.25" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.26", %"class.xalanc_1_10::XalanList.26", %"class.xalanc_1_10::XalanVector.27", i64, i64 }
%"class.xalanc_1_10::XalanList.26" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.28" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.29" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::StylesheetRoot" = type { %"class.xalanc_1_10::Stylesheet", %"class.xalanc_1_10::XalanDOMString", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, %"class.xalanc_1_10::XalanVector.30", i8, %"class.xalanc_1_10::XalanVector.18", ptr, ptr, ptr, i8, i8, i32, i8, i64, %"class.xalanc_1_10::XalanMap.31" }
%"class.xalanc_1_10::XalanVector.30" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.31" = type { %"struct.xalanc_1_10::XalanHashMemberPointer", %"struct.xalanc_1_10::pointer_equal.32", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.34", %"class.xalanc_1_10::XalanList.34", %"class.xalanc_1_10::XalanVector.35", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberPointer" = type { i8 }
%"struct.xalanc_1_10::pointer_equal.32" = type { i8 }
%"class.xalanc_1_10::XalanList.34" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.35" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::GenerateEvent" = type { i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1020TraceListenerDefaultE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020TraceListenerDefaultE, ptr @_ZN11xalanc_1_1020TraceListenerDefaultD2Ev, ptr @_ZN11xalanc_1_1020TraceListenerDefaultD0Ev, ptr @_ZN11xalanc_1_1020TraceListenerDefault5traceERKNS_11TracerEventE, ptr @_ZN11xalanc_1_1020TraceListenerDefault8selectedERKNS_14SelectionEventE, ptr @_ZN11xalanc_1_1020TraceListenerDefault9generatedERKNS_13GenerateEventE] }, align 8
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE = external local_unnamed_addr constant ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\22: \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"STARTDOCUMENT\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ENDDOCUMENT\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"STARTELEMENT: \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"ENDELEMENT: \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"CHARACTERS: \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CDATA: \00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"COMMENT: \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PI: \00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"ENTITYREF: \00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"IGNORABLEWHITESPACE\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1020TraceListenerDefaultE = dso_local constant [38 x i8] c"N11xalanc_1_1020TraceListenerDefaultE\00", align 1
@_ZTIN11xalanc_1_1013TraceListenerE = external constant ptr
@_ZTIN11xalanc_1_1020TraceListenerDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020TraceListenerDefaultE, ptr @_ZTIN11xalanc_1_1013TraceListenerE }, align 8

@_ZN11xalanc_1_1020TraceListenerDefaultC1ERNS_11PrintWriterEbbbbRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, i1, i1, i1, ptr), ptr @_ZN11xalanc_1_1020TraceListenerDefaultC2ERNS_11PrintWriterEbbbbRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1020TraceListenerDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020TraceListenerDefaultD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefaultC2ERNS_11PrintWriterEbbbbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #1 align 2 !prof !34 {
  %8 = zext i1 %2 to i8
  %9 = zext i1 %3 to i8
  %10 = zext i1 %4 to i8
  %11 = zext i1 %5 to i8
  tail call void @_ZN11xalanc_1_1013TraceListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1020TraceListenerDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %12 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !38
  %13 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 2
  store i8 %8, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  store i8 %9, ptr %14, align 1, !tbaa !45
  %15 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 4
  store i8 %10, ptr %15, align 2, !tbaa !46
  %16 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 5
  store i8 %11, ptr %16, align 1, !tbaa !47
  %17 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  store ptr %6, ptr %17, align 8, !tbaa !38
  ret void
}

declare void @_ZN11xalanc_1_1013TraceListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1013TraceListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1013TraceListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1013TraceListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault5traceERKNS_11TracerEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::TracerEvent", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !50
  switch i32 %12, label %284 [
    i32 36, label %13
    i32 20, label %43
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !45, !range !69, !noundef !70
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %431, label %17

17:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1020TraceListenerDefault13printNodeInfoERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(322) %10)
  %18 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 13
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull @.str, i64 noundef 4294967295)
  %23 = load ptr, ptr %18, align 8, !tbaa !71
  %24 = load ptr, ptr %9, align 8, !tbaa !48
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(322) %24)
  %29 = load ptr, ptr %23, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 18
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(36) %28)
  %32 = load ptr, ptr %18, align 8, !tbaa !71
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 13
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull @.str.1, i64 noundef 4294967295)
  %36 = load ptr, ptr %9, align 8, !tbaa !48
  %37 = load ptr, ptr %18, align 8, !tbaa !71
  %38 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = load ptr, ptr %37, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 23
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef %39, i32 noundef -1)
  br label %431

43:                                               ; preds = %2
  %44 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 2
  %45 = load i8, ptr %44, align 8, !tbaa !41, !range !69, !noundef !70
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !range !69
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %46, i1 %49, i1 false
  br i1 %50, label %431, label %51

51:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  %52 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %54 = load ptr, ptr %9, align 8, !tbaa !48
  %55 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %54, i64 0, i32 9
  %56 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %55)
          to label %57 unwind label %106

57:                                               ; preds = %51
  %58 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %56, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %59 unwind label %106

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %60 = load ptr, ptr %52, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %61 unwind label %108

61:                                               ; preds = %59
  %62 = load ptr, ptr %9, align 8, !tbaa !48
  %63 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %62, i64 0, i32 9
  %64 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %65 unwind label %110

65:                                               ; preds = %61
  %66 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %64, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %67 unwind label %110

67:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  %68 = load ptr, ptr %52, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %69 unwind label %112

69:                                               ; preds = %67
  %70 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !71
  %72 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 89, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %73 unwind label %114

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 8, !tbaa !35
  %75 = getelementptr inbounds ptr, ptr %74, i64 18
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(36) %72)
          to label %77 unwind label %114

77:                                               ; preds = %73
  %78 = load ptr, ptr %70, align 8, !tbaa !71
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 13
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull @.str, i64 noundef 4294967295)
          to label %82 unwind label %114

82:                                               ; preds = %77
  %83 = load ptr, ptr %70, align 8, !tbaa !71
  %84 = load ptr, ptr %9, align 8, !tbaa !48
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = getelementptr inbounds ptr, ptr %85, i64 12
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef nonnull align 8 dereferenceable(36) ptr %87(ptr noundef nonnull align 8 dereferenceable(322) %84)
          to label %89 unwind label %114

89:                                               ; preds = %82
  %90 = load ptr, ptr %83, align 8, !tbaa !35
  %91 = getelementptr inbounds ptr, ptr %90, i64 18
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(24) %83, ptr noundef nonnull align 8 dereferenceable(36) %88)
          to label %93 unwind label %114

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %10, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !75
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %70, align 8, !tbaa !71
  %99 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %95, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !78
  %101 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 113, ptr noundef nonnull align 8 dereferenceable(36) %100)
          to label %102 unwind label %116

102:                                              ; preds = %97
  %103 = load ptr, ptr %98, align 8, !tbaa !35
  %104 = getelementptr inbounds ptr, ptr %103, i64 18
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(24) %98, ptr noundef nonnull align 8 dereferenceable(36) %101)
          to label %118 unwind label %116

106:                                              ; preds = %51, %57
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %268

108:                                              ; preds = %59
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %266

110:                                              ; preds = %61, %65
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %251

112:                                              ; preds = %67
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %249

114:                                              ; preds = %89, %82, %77, %73, %69
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %234

116:                                              ; preds = %102, %97
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %234

118:                                              ; preds = %102, %93
  %119 = load ptr, ptr %10, align 8, !tbaa !35
  %120 = getelementptr inbounds ptr, ptr %119, i64 13
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef nonnull align 8 dereferenceable(8) ptr %121(ptr noundef nonnull align 8 dereferenceable(360) %10)
          to label %123 unwind label %167

123:                                              ; preds = %118
  %124 = load ptr, ptr %122, align 8, !tbaa !35
  %125 = getelementptr inbounds ptr, ptr %124, i64 3
  %126 = load ptr, ptr %125, align 8
  %127 = invoke noundef nonnull align 8 dereferenceable(36) ptr %126(ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %128 unwind label %167

128:                                              ; preds = %123
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %127, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !83
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load ptr, ptr %122, align 8, !tbaa !35
  %134 = getelementptr inbounds ptr, ptr %133, i64 2
  %135 = load ptr, ptr %134, align 8
  %136 = invoke noundef nonnull align 8 dereferenceable(36) ptr %135(ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %137 unwind label %167

137:                                              ; preds = %132
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %136, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !83
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %186, label %141

141:                                              ; preds = %128, %137
  %142 = load ptr, ptr %70, align 8, !tbaa !71
  %143 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 53)
          to label %144 unwind label %167

144:                                              ; preds = %141
  %145 = load ptr, ptr %142, align 8, !tbaa !35
  %146 = getelementptr inbounds ptr, ptr %145, i64 18
  %147 = load ptr, ptr %146, align 8
  invoke void %147(ptr noundef nonnull align 8 dereferenceable(24) %142, ptr noundef nonnull align 8 dereferenceable(36) %143)
          to label %148 unwind label %167

148:                                              ; preds = %144
  %149 = load ptr, ptr %122, align 8, !tbaa !35
  %150 = getelementptr inbounds ptr, ptr %149, i64 3
  %151 = load ptr, ptr %150, align 8
  %152 = invoke noundef nonnull align 8 dereferenceable(36) ptr %151(ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %153 unwind label %169

153:                                              ; preds = %148
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %152, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !83
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %70, align 8, !tbaa !71
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = getelementptr inbounds ptr, ptr %159, i64 18
  %161 = load ptr, ptr %160, align 8
  invoke void %161(ptr noundef nonnull align 8 dereferenceable(24) %158, ptr noundef nonnull align 8 dereferenceable(36) %152)
          to label %162 unwind label %169

162:                                              ; preds = %157
  %163 = load ptr, ptr %70, align 8, !tbaa !71
  %164 = load ptr, ptr %163, align 8, !tbaa !35
  %165 = getelementptr inbounds ptr, ptr %164, i64 16
  %166 = load ptr, ptr %165, align 8
  invoke void %166(ptr noundef nonnull align 8 dereferenceable(24) %163, i32 noundef 58)
          to label %171 unwind label %169

167:                                              ; preds = %132, %123, %186, %144, %141, %118
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %234

169:                                              ; preds = %181, %177, %171, %162, %157, %148
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %234

171:                                              ; preds = %162, %153
  %172 = load ptr, ptr %70, align 8, !tbaa !71
  %173 = load ptr, ptr %122, align 8, !tbaa !35
  %174 = getelementptr inbounds ptr, ptr %173, i64 2
  %175 = load ptr, ptr %174, align 8
  %176 = invoke noundef nonnull align 8 dereferenceable(36) ptr %175(ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %177 unwind label %169

177:                                              ; preds = %171
  %178 = load ptr, ptr %172, align 8, !tbaa !35
  %179 = getelementptr inbounds ptr, ptr %178, i64 18
  %180 = load ptr, ptr %179, align 8
  invoke void %180(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr noundef nonnull align 8 dereferenceable(36) %176)
          to label %181 unwind label %169

181:                                              ; preds = %177
  %182 = load ptr, ptr %70, align 8, !tbaa !71
  %183 = load ptr, ptr %182, align 8, !tbaa !35
  %184 = getelementptr inbounds ptr, ptr %183, i64 13
  %185 = load ptr, ptr %184, align 8
  invoke void %185(ptr noundef nonnull align 8 dereferenceable(24) %182, ptr noundef nonnull @.str.2, i64 noundef 4294967295)
          to label %186 unwind label %169

186:                                              ; preds = %137, %181
  %187 = load ptr, ptr %70, align 8, !tbaa !71
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  %189 = getelementptr inbounds ptr, ptr %188, i64 19
  %190 = load ptr, ptr %189, align 8
  invoke void %190(ptr noundef nonnull align 8 dereferenceable(24) %187)
          to label %191 unwind label %167

191:                                              ; preds = %186
  %192 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %193 = load i64, ptr %192, align 8, !tbaa !86
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !87
  %198 = load ptr, ptr %5, align 8, !tbaa !88
  %199 = load ptr, ptr %198, align 8, !tbaa !35
  %200 = getelementptr inbounds ptr, ptr %199, i64 3
  %201 = load ptr, ptr %200, align 8
  invoke void %201(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef %197)
          to label %205 unwind label %202

202:                                              ; preds = %195
  %203 = landingpad { ptr, i32 }
          catch ptr null
  %204 = extractvalue { ptr, i32 } %203, 0
  call void @__clang_call_terminate(ptr %204) #9
  unreachable

205:                                              ; preds = %191, %195
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %206 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %207 = load i64, ptr %206, align 8, !tbaa !86
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !87
  %212 = load ptr, ptr %4, align 8, !tbaa !88
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  %214 = getelementptr inbounds ptr, ptr %213, i64 3
  %215 = load ptr, ptr %214, align 8
  invoke void %215(ptr noundef nonnull align 8 dereferenceable(8) %212, ptr noundef %211)
          to label %219 unwind label %216

216:                                              ; preds = %209
  %217 = landingpad { ptr, i32 }
          catch ptr null
  %218 = extractvalue { ptr, i32 } %217, 0
  call void @__clang_call_terminate(ptr %218) #9
  unreachable

219:                                              ; preds = %205, %209
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  %220 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %221 = load i64, ptr %220, align 8, !tbaa !86
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %233, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !87
  %226 = load ptr, ptr %3, align 8, !tbaa !88
  %227 = load ptr, ptr %226, align 8, !tbaa !35
  %228 = getelementptr inbounds ptr, ptr %227, i64 3
  %229 = load ptr, ptr %228, align 8
  invoke void %229(ptr noundef nonnull align 8 dereferenceable(8) %226, ptr noundef %225)
          to label %233 unwind label %230

230:                                              ; preds = %223
  %231 = landingpad { ptr, i32 }
          catch ptr null
  %232 = extractvalue { ptr, i32 } %231, 0
  call void @__clang_call_terminate(ptr %232) #9
  unreachable

233:                                              ; preds = %219, %223
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  br label %431

234:                                              ; preds = %116, %169, %167, %114
  %235 = phi { ptr, i32 } [ %115, %114 ], [ %117, %116 ], [ %168, %167 ], [ %170, %169 ]
  %236 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %237 = load i64, ptr %236, align 8, !tbaa !86
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %249, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !87
  %242 = load ptr, ptr %5, align 8, !tbaa !88
  %243 = load ptr, ptr %242, align 8, !tbaa !35
  %244 = getelementptr inbounds ptr, ptr %243, i64 3
  %245 = load ptr, ptr %244, align 8
  invoke void %245(ptr noundef nonnull align 8 dereferenceable(8) %242, ptr noundef %241)
          to label %249 unwind label %246

246:                                              ; preds = %239
  %247 = landingpad { ptr, i32 }
          catch ptr null
  %248 = extractvalue { ptr, i32 } %247, 0
  call void @__clang_call_terminate(ptr %248) #9
  unreachable

249:                                              ; preds = %239, %234, %112
  %250 = phi { ptr, i32 } [ %113, %112 ], [ %235, %234 ], [ %235, %239 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  br label %251

251:                                              ; preds = %249, %110
  %252 = phi { ptr, i32 } [ %250, %249 ], [ %111, %110 ]
  %253 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %254 = load i64, ptr %253, align 8, !tbaa !86
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %266, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !87
  %259 = load ptr, ptr %4, align 8, !tbaa !88
  %260 = load ptr, ptr %259, align 8, !tbaa !35
  %261 = getelementptr inbounds ptr, ptr %260, i64 3
  %262 = load ptr, ptr %261, align 8
  invoke void %262(ptr noundef nonnull align 8 dereferenceable(8) %259, ptr noundef %258)
          to label %266 unwind label %263

263:                                              ; preds = %256
  %264 = landingpad { ptr, i32 }
          catch ptr null
  %265 = extractvalue { ptr, i32 } %264, 0
  call void @__clang_call_terminate(ptr %265) #9
  unreachable

266:                                              ; preds = %256, %251, %108
  %267 = phi { ptr, i32 } [ %109, %108 ], [ %252, %251 ], [ %252, %256 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  br label %268

268:                                              ; preds = %266, %106
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %107, %106 ]
  %270 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %271 = load i64, ptr %270, align 8, !tbaa !86
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %268
  %274 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !87
  %276 = load ptr, ptr %3, align 8, !tbaa !88
  %277 = load ptr, ptr %276, align 8, !tbaa !35
  %278 = getelementptr inbounds ptr, ptr %277, i64 3
  %279 = load ptr, ptr %278, align 8
  invoke void %279(ptr noundef nonnull align 8 dereferenceable(8) %276, ptr noundef %275)
          to label %283 unwind label %280

280:                                              ; preds = %273
  %281 = landingpad { ptr, i32 }
          catch ptr null
  %282 = extractvalue { ptr, i32 } %281, 0
  call void @__clang_call_terminate(ptr %282) #9
  unreachable

283:                                              ; preds = %268, %273
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  br label %432

284:                                              ; preds = %2
  %285 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  %286 = load i8, ptr %285, align 1, !tbaa !45, !range !69, !noundef !70
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %431, label %288

288:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  %289 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %290 = load ptr, ptr %289, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %290)
  %291 = load ptr, ptr %9, align 8, !tbaa !48
  %292 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %291, i64 0, i32 9
  %293 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %292)
          to label %294 unwind label %373

294:                                              ; preds = %288
  %295 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %293, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %296 unwind label %373

296:                                              ; preds = %294
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7
  %297 = load ptr, ptr %289, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %297)
          to label %298 unwind label %375

298:                                              ; preds = %296
  %299 = load ptr, ptr %9, align 8, !tbaa !48
  %300 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %299, i64 0, i32 9
  %301 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %300)
          to label %302 unwind label %377

302:                                              ; preds = %298
  %303 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %301, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %304 unwind label %377

304:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #7
  %305 = load ptr, ptr %289, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %305)
          to label %306 unwind label %379

306:                                              ; preds = %304
  %307 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !71
  %309 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 89, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %310 unwind label %381

310:                                              ; preds = %306
  %311 = load ptr, ptr %308, align 8, !tbaa !35
  %312 = getelementptr inbounds ptr, ptr %311, i64 18
  %313 = load ptr, ptr %312, align 8
  invoke void %313(ptr noundef nonnull align 8 dereferenceable(24) %308, ptr noundef nonnull align 8 dereferenceable(36) %309)
          to label %314 unwind label %381

314:                                              ; preds = %310
  %315 = load ptr, ptr %307, align 8, !tbaa !71
  %316 = load ptr, ptr %315, align 8, !tbaa !35
  %317 = getelementptr inbounds ptr, ptr %316, i64 13
  %318 = load ptr, ptr %317, align 8
  invoke void %318(ptr noundef nonnull align 8 dereferenceable(24) %315, ptr noundef nonnull @.str, i64 noundef 4294967295)
          to label %319 unwind label %381

319:                                              ; preds = %314
  %320 = load ptr, ptr %307, align 8, !tbaa !71
  %321 = load ptr, ptr %9, align 8, !tbaa !48
  %322 = load ptr, ptr %321, align 8, !tbaa !35
  %323 = getelementptr inbounds ptr, ptr %322, i64 12
  %324 = load ptr, ptr %323, align 8
  %325 = invoke noundef nonnull align 8 dereferenceable(36) ptr %324(ptr noundef nonnull align 8 dereferenceable(322) %321)
          to label %326 unwind label %381

326:                                              ; preds = %319
  %327 = load ptr, ptr %320, align 8, !tbaa !35
  %328 = getelementptr inbounds ptr, ptr %327, i64 27
  %329 = load ptr, ptr %328, align 8
  invoke void %329(ptr noundef nonnull align 8 dereferenceable(24) %320, ptr noundef nonnull align 8 dereferenceable(36) %325)
          to label %330 unwind label %381

330:                                              ; preds = %326
  %331 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 2
  %332 = load i64, ptr %331, align 8, !tbaa !86
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %344, label %334

334:                                              ; preds = %330
  %335 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !87
  %337 = load ptr, ptr %8, align 8, !tbaa !88
  %338 = load ptr, ptr %337, align 8, !tbaa !35
  %339 = getelementptr inbounds ptr, ptr %338, i64 3
  %340 = load ptr, ptr %339, align 8
  invoke void %340(ptr noundef nonnull align 8 dereferenceable(8) %337, ptr noundef %336)
          to label %344 unwind label %341

341:                                              ; preds = %334
  %342 = landingpad { ptr, i32 }
          catch ptr null
  %343 = extractvalue { ptr, i32 } %342, 0
  call void @__clang_call_terminate(ptr %343) #9
  unreachable

344:                                              ; preds = %330, %334
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7
  %345 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %346 = load i64, ptr %345, align 8, !tbaa !86
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !87
  %351 = load ptr, ptr %7, align 8, !tbaa !88
  %352 = load ptr, ptr %351, align 8, !tbaa !35
  %353 = getelementptr inbounds ptr, ptr %352, i64 3
  %354 = load ptr, ptr %353, align 8
  invoke void %354(ptr noundef nonnull align 8 dereferenceable(8) %351, ptr noundef %350)
          to label %358 unwind label %355

355:                                              ; preds = %348
  %356 = landingpad { ptr, i32 }
          catch ptr null
  %357 = extractvalue { ptr, i32 } %356, 0
  call void @__clang_call_terminate(ptr %357) #9
  unreachable

358:                                              ; preds = %344, %348
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  %359 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %360 = load i64, ptr %359, align 8, !tbaa !86
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %372, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !87
  %365 = load ptr, ptr %6, align 8, !tbaa !88
  %366 = load ptr, ptr %365, align 8, !tbaa !35
  %367 = getelementptr inbounds ptr, ptr %366, i64 3
  %368 = load ptr, ptr %367, align 8
  invoke void %368(ptr noundef nonnull align 8 dereferenceable(8) %365, ptr noundef %364)
          to label %372 unwind label %369

369:                                              ; preds = %362
  %370 = landingpad { ptr, i32 }
          catch ptr null
  %371 = extractvalue { ptr, i32 } %370, 0
  call void @__clang_call_terminate(ptr %371) #9
  unreachable

372:                                              ; preds = %358, %362
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  br label %431

373:                                              ; preds = %288, %294
  %374 = landingpad { ptr, i32 }
          cleanup
  br label %415

375:                                              ; preds = %296
  %376 = landingpad { ptr, i32 }
          cleanup
  br label %413

377:                                              ; preds = %298, %302
  %378 = landingpad { ptr, i32 }
          cleanup
  br label %398

379:                                              ; preds = %304
  %380 = landingpad { ptr, i32 }
          cleanup
  br label %396

381:                                              ; preds = %326, %319, %314, %310, %306
  %382 = landingpad { ptr, i32 }
          cleanup
  %383 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 2
  %384 = load i64, ptr %383, align 8, !tbaa !86
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %396, label %386

386:                                              ; preds = %381
  %387 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !87
  %389 = load ptr, ptr %8, align 8, !tbaa !88
  %390 = load ptr, ptr %389, align 8, !tbaa !35
  %391 = getelementptr inbounds ptr, ptr %390, i64 3
  %392 = load ptr, ptr %391, align 8
  invoke void %392(ptr noundef nonnull align 8 dereferenceable(8) %389, ptr noundef %388)
          to label %396 unwind label %393

393:                                              ; preds = %386
  %394 = landingpad { ptr, i32 }
          catch ptr null
  %395 = extractvalue { ptr, i32 } %394, 0
  call void @__clang_call_terminate(ptr %395) #9
  unreachable

396:                                              ; preds = %386, %381, %379
  %397 = phi { ptr, i32 } [ %380, %379 ], [ %382, %381 ], [ %382, %386 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7
  br label %398

398:                                              ; preds = %396, %377
  %399 = phi { ptr, i32 } [ %397, %396 ], [ %378, %377 ]
  %400 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %401 = load i64, ptr %400, align 8, !tbaa !86
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %413, label %403

403:                                              ; preds = %398
  %404 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !87
  %406 = load ptr, ptr %7, align 8, !tbaa !88
  %407 = load ptr, ptr %406, align 8, !tbaa !35
  %408 = getelementptr inbounds ptr, ptr %407, i64 3
  %409 = load ptr, ptr %408, align 8
  invoke void %409(ptr noundef nonnull align 8 dereferenceable(8) %406, ptr noundef %405)
          to label %413 unwind label %410

410:                                              ; preds = %403
  %411 = landingpad { ptr, i32 }
          catch ptr null
  %412 = extractvalue { ptr, i32 } %411, 0
  call void @__clang_call_terminate(ptr %412) #9
  unreachable

413:                                              ; preds = %403, %398, %375
  %414 = phi { ptr, i32 } [ %376, %375 ], [ %399, %398 ], [ %399, %403 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  br label %415

415:                                              ; preds = %413, %373
  %416 = phi { ptr, i32 } [ %414, %413 ], [ %374, %373 ]
  %417 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %418 = load i64, ptr %417, align 8, !tbaa !86
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %430, label %420

420:                                              ; preds = %415
  %421 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !87
  %423 = load ptr, ptr %6, align 8, !tbaa !88
  %424 = load ptr, ptr %423, align 8, !tbaa !35
  %425 = getelementptr inbounds ptr, ptr %424, i64 3
  %426 = load ptr, ptr %425, align 8
  invoke void %426(ptr noundef nonnull align 8 dereferenceable(8) %423, ptr noundef %422)
          to label %430 unwind label %427

427:                                              ; preds = %420
  %428 = landingpad { ptr, i32 }
          catch ptr null
  %429 = extractvalue { ptr, i32 } %428, 0
  call void @__clang_call_terminate(ptr %429) #9
  unreachable

430:                                              ; preds = %415, %420
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  br label %432

431:                                              ; preds = %43, %284, %372, %233, %13, %17
  ret void

432:                                              ; preds = %430, %283
  %433 = phi { ptr, i32 } [ %416, %430 ], [ %269, %283 ]
  resume { ptr, i32 } %433
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault13printNodeInfoERKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(322) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(322) %1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  %10 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %12 = load ptr, ptr %10, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %51

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  %14 = load ptr, ptr %10, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %53

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %1, i64 0, i32 9
  %17 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %18 unwind label %55

18:                                               ; preds = %15
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %20 unwind label %55

20:                                               ; preds = %18
  %21 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %22 unwind label %55

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %21, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %24 unwind label %55

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 112, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %28 unwind label %55

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 18
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(36) %27)
          to label %32 unwind label %55

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !83
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %25, align 8, !tbaa !71
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 13
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull @.str.20, i64 noundef 4294967295)
          to label %41 unwind label %55

41:                                               ; preds = %36
  %42 = load ptr, ptr %25, align 8, !tbaa !71
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 18
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %46 unwind label %55

46:                                               ; preds = %41
  %47 = load ptr, ptr %25, align 8, !tbaa !71
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds ptr, ptr %48, i64 13
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull @.str.21, i64 noundef 4294967295)
          to label %70 unwind label %55

51:                                               ; preds = %2
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %128

53:                                               ; preds = %13
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %113

55:                                               ; preds = %20, %15, %46, %41, %36, %28, %24, %22, %18
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !86
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %113, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !87
  %63 = load ptr, ptr %5, align 8, !tbaa !88
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %62)
          to label %113 unwind label %67

67:                                               ; preds = %60
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  call void @__clang_call_terminate(ptr %69) #9
  unreachable

70:                                               ; preds = %46, %32
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !86
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !87
  %77 = load ptr, ptr %5, align 8, !tbaa !88
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef %76)
          to label %84 unwind label %81

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #9
  unreachable

84:                                               ; preds = %70, %74
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !86
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !87
  %91 = load ptr, ptr %4, align 8, !tbaa !88
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef %90)
          to label %98 unwind label %95

95:                                               ; preds = %88
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  call void @__clang_call_terminate(ptr %97) #9
  unreachable

98:                                               ; preds = %84, %88
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  %99 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %100 = load i64, ptr %99, align 8, !tbaa !86
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  %105 = load ptr, ptr %3, align 8, !tbaa !88
  %106 = load ptr, ptr %105, align 8, !tbaa !35
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef %104)
          to label %112 unwind label %109

109:                                              ; preds = %102
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #9
  unreachable

112:                                              ; preds = %98, %102
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  ret void

113:                                              ; preds = %60, %55, %53
  %114 = phi { ptr, i32 } [ %54, %53 ], [ %56, %55 ], [ %56, %60 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !86
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !87
  %121 = load ptr, ptr %4, align 8, !tbaa !88
  %122 = load ptr, ptr %121, align 8, !tbaa !35
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef %120)
          to label %128 unwind label %125

125:                                              ; preds = %118
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  call void @__clang_call_terminate(ptr %127) #9
  unreachable

128:                                              ; preds = %118, %113, %51
  %129 = phi { ptr, i32 } [ %52, %51 ], [ %114, %113 ], [ %114, %118 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !86
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !87
  %136 = load ptr, ptr %3, align 8, !tbaa !88
  %137 = load ptr, ptr %136, align 8, !tbaa !35
  %138 = getelementptr inbounds ptr, ptr %137, i64 3
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef %135)
          to label %143 unwind label %140

140:                                              ; preds = %133
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  call void @__clang_call_terminate(ptr %142) #9
  unreachable

143:                                              ; preds = %128, %133
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  resume { ptr, i32 } %129
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault15processNodeListERKNS_15NodeRefListBaseE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  %13 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !tbaa !71
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 120)
          to label %19 unwind label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 27
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %47 unwind label %23

23:                                               ; preds = %19, %16
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %62

25:                                               ; preds = %2, %42
  %26 = phi i32 [ %43, %42 ], [ 0, %2 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !71
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 13
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull @.str.3, i64 noundef 4294967295)
          to label %31 unwind label %45

31:                                               ; preds = %25
  %32 = load ptr, ptr %1, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %26)
          to label %36 unwind label %45

36:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %37 unwind label %45

37:                                               ; preds = %36
  %38 = load ptr, ptr %4, align 8, !tbaa !71
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 27
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %42 unwind label %45

42:                                               ; preds = %37
  %43 = add nuw i32 %26, 1
  %44 = icmp eq i32 %43, %12
  br i1 %44, label %47, label %25, !llvm.loop !89

45:                                               ; preds = %37, %36, %31, %25
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %62

47:                                               ; preds = %42, %19
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !86
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !87
  %54 = load ptr, ptr %3, align 8, !tbaa !88
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %53)
          to label %61 unwind label %58

58:                                               ; preds = %51
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #9
  unreachable

61:                                               ; preds = %47, %51
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  ret void

62:                                               ; preds = %45, %23
  %63 = phi { ptr, i32 } [ %24, %23 ], [ %46, %45 ]
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !86
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !87
  %70 = load ptr, ptr %3, align 8, !tbaa !88
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %69)
          to label %77 unwind label %74

74:                                               ; preds = %67
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  call void @__clang_call_terminate(ptr %76) #9
  unreachable

77:                                               ; preds = %62, %67
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  resume { ptr, i32 } %63
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault8selectedERKNS_14SelectionEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 1, !tbaa !47, !range !69, !noundef !70
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %279, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %12, i64 0, i32 9
  %14 = tail call noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %13)
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %88

16:                                               ; preds = %10
  %17 = load ptr, ptr %12, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 30
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(322) %12)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  %21 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %22)
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %12, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %26, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !125
  %29 = icmp eq ptr %20, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %16
  %31 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 122)
          to label %67 unwind label %34

34:                                               ; preds = %67, %63, %54, %30
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !86
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = load ptr, ptr %3, align 8, !tbaa !88
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %41)
          to label %49 unwind label %46

46:                                               ; preds = %39
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #9
  unreachable

49:                                               ; preds = %34, %39
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  br label %277

50:                                               ; preds = %16
  %51 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %26, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !135
  %53 = icmp eq ptr %20, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  %57 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE, align 8, !tbaa !38
  %58 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 121, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %67 unwind label %34

59:                                               ; preds = %50
  %60 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %26, i64 0, i32 17
  %61 = load ptr, ptr %60, align 8, !tbaa !136
  %62 = icmp eq ptr %20, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !71
  %66 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 121, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %67 unwind label %34

67:                                               ; preds = %63, %54, %30
  %68 = phi ptr [ %32, %30 ], [ %56, %54 ], [ %65, %63 ]
  %69 = phi ptr [ %33, %30 ], [ %58, %54 ], [ %66, %63 ]
  %70 = load ptr, ptr %68, align 8, !tbaa !35
  %71 = getelementptr inbounds ptr, ptr %70, i64 18
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(36) %69)
          to label %73 unwind label %34

73:                                               ; preds = %67, %59
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !86
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !87
  %80 = load ptr, ptr %3, align 8, !tbaa !88
  %81 = load ptr, ptr %80, align 8, !tbaa !35
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %79)
          to label %87 unwind label %84

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #9
  unreachable

87:                                               ; preds = %73, %77
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  br label %207

88:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %89 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %90)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  %91 = load ptr, ptr %89, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %92 unwind label %157

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  %93 = load ptr, ptr %89, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %93)
          to label %94 unwind label %159

94:                                               ; preds = %92
  %95 = load ptr, ptr %11, align 8, !tbaa !92
  %96 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %95, i64 0, i32 9
  %97 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %96)
          to label %98 unwind label %161

98:                                               ; preds = %94
  %99 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %97, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %100 unwind label %161

100:                                              ; preds = %98
  %101 = load ptr, ptr %11, align 8, !tbaa !92
  %102 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %101, i64 0, i32 9
  %103 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %102)
          to label %104 unwind label %161

104:                                              ; preds = %100
  %105 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %103, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %106 unwind label %161

106:                                              ; preds = %104
  %107 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !71
  %109 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 112, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %110 unwind label %161

110:                                              ; preds = %106
  %111 = load ptr, ptr %108, align 8, !tbaa !35
  %112 = getelementptr inbounds ptr, ptr %111, i64 18
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(24) %108, ptr noundef nonnull align 8 dereferenceable(36) %109)
          to label %114 unwind label %161

114:                                              ; preds = %110
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !86
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !87
  %121 = load ptr, ptr %6, align 8, !tbaa !88
  %122 = load ptr, ptr %121, align 8, !tbaa !35
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef %120)
          to label %128 unwind label %125

125:                                              ; preds = %118
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  call void @__clang_call_terminate(ptr %127) #9
  unreachable

128:                                              ; preds = %114, %118
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %130 = load i64, ptr %129, align 8, !tbaa !86
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !87
  %135 = load ptr, ptr %5, align 8, !tbaa !88
  %136 = load ptr, ptr %135, align 8, !tbaa !35
  %137 = getelementptr inbounds ptr, ptr %136, i64 3
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef %134)
          to label %142 unwind label %139

139:                                              ; preds = %132
  %140 = landingpad { ptr, i32 }
          catch ptr null
  %141 = extractvalue { ptr, i32 } %140, 0
  call void @__clang_call_terminate(ptr %141) #9
  unreachable

142:                                              ; preds = %128, %132
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %144 = load i64, ptr %143, align 8, !tbaa !86
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !87
  %149 = load ptr, ptr %4, align 8, !tbaa !88
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  %151 = getelementptr inbounds ptr, ptr %150, i64 3
  %152 = load ptr, ptr %151, align 8
  invoke void %152(ptr noundef nonnull align 8 dereferenceable(8) %149, ptr noundef %148)
          to label %156 unwind label %153

153:                                              ; preds = %146
  %154 = landingpad { ptr, i32 }
          catch ptr null
  %155 = extractvalue { ptr, i32 } %154, 0
  call void @__clang_call_terminate(ptr %155) #9
  unreachable

156:                                              ; preds = %142, %146
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  br label %207

157:                                              ; preds = %88
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %191

159:                                              ; preds = %92
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %176

161:                                              ; preds = %100, %94, %110, %106, %104, %98
  %162 = landingpad { ptr, i32 }
          cleanup
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !86
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !87
  %169 = load ptr, ptr %6, align 8, !tbaa !88
  %170 = load ptr, ptr %169, align 8, !tbaa !35
  %171 = getelementptr inbounds ptr, ptr %170, i64 3
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef %168)
          to label %176 unwind label %173

173:                                              ; preds = %166
  %174 = landingpad { ptr, i32 }
          catch ptr null
  %175 = extractvalue { ptr, i32 } %174, 0
  call void @__clang_call_terminate(ptr %175) #9
  unreachable

176:                                              ; preds = %166, %161, %159
  %177 = phi { ptr, i32 } [ %160, %159 ], [ %162, %161 ], [ %162, %166 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  %178 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !86
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !87
  %184 = load ptr, ptr %5, align 8, !tbaa !88
  %185 = load ptr, ptr %184, align 8, !tbaa !35
  %186 = getelementptr inbounds ptr, ptr %185, i64 3
  %187 = load ptr, ptr %186, align 8
  invoke void %187(ptr noundef nonnull align 8 dereferenceable(8) %184, ptr noundef %183)
          to label %191 unwind label %188

188:                                              ; preds = %181
  %189 = landingpad { ptr, i32 }
          catch ptr null
  %190 = extractvalue { ptr, i32 } %189, 0
  call void @__clang_call_terminate(ptr %190) #9
  unreachable

191:                                              ; preds = %181, %176, %157
  %192 = phi { ptr, i32 } [ %158, %157 ], [ %177, %176 ], [ %177, %181 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %193 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %194 = load i64, ptr %193, align 8, !tbaa !86
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !87
  %199 = load ptr, ptr %4, align 8, !tbaa !88
  %200 = load ptr, ptr %199, align 8, !tbaa !35
  %201 = getelementptr inbounds ptr, ptr %200, i64 3
  %202 = load ptr, ptr %201, align 8
  invoke void %202(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef %198)
          to label %206 unwind label %203

203:                                              ; preds = %196
  %204 = landingpad { ptr, i32 }
          catch ptr null
  %205 = extractvalue { ptr, i32 } %204, 0
  call void @__clang_call_terminate(ptr %205) #9
  unreachable

206:                                              ; preds = %191, %196
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  br label %277

207:                                              ; preds = %156, %87
  %208 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !71
  %210 = load ptr, ptr %12, align 8, !tbaa !35
  %211 = getelementptr inbounds ptr, ptr %210, i64 12
  %212 = load ptr, ptr %211, align 8
  %213 = call noundef nonnull align 8 dereferenceable(36) ptr %212(ptr noundef nonnull align 8 dereferenceable(322) %12)
  %214 = load ptr, ptr %209, align 8, !tbaa !35
  %215 = getelementptr inbounds ptr, ptr %214, i64 18
  %216 = load ptr, ptr %215, align 8
  call void %216(ptr noundef nonnull align 8 dereferenceable(24) %209, ptr noundef nonnull align 8 dereferenceable(36) %213)
  %217 = load ptr, ptr %208, align 8, !tbaa !71
  %218 = load ptr, ptr %217, align 8, !tbaa !35
  %219 = getelementptr inbounds ptr, ptr %218, i64 13
  %220 = load ptr, ptr %219, align 8
  call void %220(ptr noundef nonnull align 8 dereferenceable(24) %217, ptr noundef nonnull @.str.5, i64 noundef 4294967295)
  %221 = load ptr, ptr %208, align 8, !tbaa !71
  %222 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 4
  %223 = load ptr, ptr %222, align 8, !tbaa !137
  %224 = load ptr, ptr %221, align 8, !tbaa !35
  %225 = getelementptr inbounds ptr, ptr %224, i64 18
  %226 = load ptr, ptr %225, align 8
  call void %226(ptr noundef nonnull align 8 dereferenceable(24) %221, ptr noundef nonnull align 8 dereferenceable(36) %223)
  %227 = load ptr, ptr %208, align 8, !tbaa !71
  %228 = load ptr, ptr %227, align 8, !tbaa !35
  %229 = getelementptr inbounds ptr, ptr %228, i64 13
  %230 = load ptr, ptr %229, align 8
  call void %230(ptr noundef nonnull align 8 dereferenceable(24) %227, ptr noundef nonnull @.str.6, i64 noundef 4294967295)
  %231 = load ptr, ptr %208, align 8, !tbaa !71
  %232 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 5
  %233 = load ptr, ptr %232, align 8, !tbaa !138
  %234 = load ptr, ptr %231, align 8, !tbaa !35
  %235 = getelementptr inbounds ptr, ptr %234, i64 18
  %236 = load ptr, ptr %235, align 8
  call void %236(ptr noundef nonnull align 8 dereferenceable(24) %231, ptr noundef nonnull align 8 dereferenceable(36) %233)
  %237 = load ptr, ptr %208, align 8, !tbaa !71
  %238 = load ptr, ptr %237, align 8, !tbaa !35
  %239 = getelementptr inbounds ptr, ptr %238, i64 13
  %240 = load ptr, ptr %239, align 8
  call void %240(ptr noundef nonnull align 8 dereferenceable(24) %237, ptr noundef nonnull @.str.7, i64 noundef 4294967295)
  %241 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 6
  %242 = load ptr, ptr %241, align 8, !tbaa !139
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %259

244:                                              ; preds = %207
  %245 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 7
  %246 = load i32, ptr %245, align 8, !tbaa !140
  switch i32 %246, label %279 [
    i32 1, label %247
    i32 2, label %256
  ]

247:                                              ; preds = %244
  %248 = load ptr, ptr %208, align 8, !tbaa !71
  %249 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 8
  %250 = load i8, ptr %249, align 4, !tbaa !141, !range !69, !noundef !70
  %251 = icmp eq i8 %250, 0
  %252 = select i1 %251, ptr @.str.9, ptr @.str.8
  %253 = load ptr, ptr %248, align 8, !tbaa !35
  %254 = getelementptr inbounds ptr, ptr %253, i64 22
  %255 = load ptr, ptr %254, align 8
  call void %255(ptr noundef nonnull align 8 dereferenceable(24) %248, ptr noundef nonnull %252, i64 noundef 4294967295)
  br label %279

256:                                              ; preds = %244
  %257 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 9
  %258 = load ptr, ptr %257, align 8, !tbaa !142
  call void @_ZN11xalanc_1_1020TraceListenerDefault15processNodeListERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %258)
  br label %279

259:                                              ; preds = %207
  %260 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %242, i64 0, i32 1
  %261 = load i32, ptr %260, align 4, !tbaa !143
  %262 = icmp eq i32 %261, 5
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load ptr, ptr %242, align 8, !tbaa !35
  %265 = getelementptr inbounds ptr, ptr %264, i64 13
  %266 = load ptr, ptr %265, align 8
  %267 = call noundef nonnull align 8 dereferenceable(8) ptr %266(ptr noundef nonnull align 8 dereferenceable(24) %242)
  call void @_ZN11xalanc_1_1020TraceListenerDefault15processNodeListERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %267)
  br label %279

268:                                              ; preds = %259
  %269 = load ptr, ptr %208, align 8, !tbaa !71
  %270 = load ptr, ptr %242, align 8, !tbaa !35
  %271 = getelementptr inbounds ptr, ptr %270, i64 8
  %272 = load ptr, ptr %271, align 8
  %273 = call noundef nonnull align 8 dereferenceable(36) ptr %272(ptr noundef nonnull align 8 dereferenceable(24) %242)
  %274 = load ptr, ptr %269, align 8, !tbaa !35
  %275 = getelementptr inbounds ptr, ptr %274, i64 27
  %276 = load ptr, ptr %275, align 8
  call void %276(ptr noundef nonnull align 8 dereferenceable(24) %269, ptr noundef nonnull align 8 dereferenceable(36) %273)
  br label %279

277:                                              ; preds = %206, %49
  %278 = phi { ptr, i32 } [ %35, %49 ], [ %192, %206 ]
  resume { ptr, i32 } %278

279:                                              ; preds = %256, %247, %268, %263, %244, %2
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault9generatedERKNS_13GenerateEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !46, !range !69, !noundef !70
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %116, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !147
  switch i32 %7, label %116 [
    i32 1, label %8
    i32 2, label %14
    i32 3, label %24
    i32 4, label %35
    i32 5, label %46
    i32 10, label %57
    i32 8, label %68
    i32 7, label %79
    i32 9, label %99
    i32 6, label %110
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 22
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull @.str.10, i64 noundef 4294967295)
  br label %116

14:                                               ; preds = %6
  %15 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 19
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %16)
  %20 = load ptr, ptr %15, align 8, !tbaa !71
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 22
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull @.str.11, i64 noundef 4294967295)
  br label %116

24:                                               ; preds = %6
  %25 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 13
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull @.str.12, i64 noundef 4294967295)
  %30 = load ptr, ptr %25, align 8, !tbaa !71
  %31 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %32 = load ptr, ptr %30, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 27
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(36) %31)
  br label %116

35:                                               ; preds = %6
  %36 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 13
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull @.str.13, i64 noundef 4294967295)
  %41 = load ptr, ptr %36, align 8, !tbaa !71
  %42 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %43 = load ptr, ptr %41, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 27
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(36) %42)
  br label %116

46:                                               ; preds = %6
  %47 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !71
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 13
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull @.str.14, i64 noundef 4294967295)
  %52 = load ptr, ptr %47, align 8, !tbaa !71
  %53 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 2
  %54 = load ptr, ptr %52, align 8, !tbaa !35
  %55 = getelementptr inbounds ptr, ptr %54, i64 27
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(36) %53)
  br label %116

57:                                               ; preds = %6
  %58 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = getelementptr inbounds ptr, ptr %60, i64 13
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull @.str.15, i64 noundef 4294967295)
  %63 = load ptr, ptr %58, align 8, !tbaa !71
  %64 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 2
  %65 = load ptr, ptr %63, align 8, !tbaa !35
  %66 = getelementptr inbounds ptr, ptr %65, i64 27
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(36) %64)
  br label %116

68:                                               ; preds = %6
  %69 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !71
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = getelementptr inbounds ptr, ptr %71, i64 13
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull @.str.16, i64 noundef 4294967295)
  %74 = load ptr, ptr %69, align 8, !tbaa !71
  %75 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 6
  %76 = load ptr, ptr %74, align 8, !tbaa !35
  %77 = getelementptr inbounds ptr, ptr %76, i64 27
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(36) %75)
  br label %116

79:                                               ; preds = %6
  %80 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = getelementptr inbounds ptr, ptr %82, i64 13
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull @.str.17, i64 noundef 4294967295)
  %85 = load ptr, ptr %80, align 8, !tbaa !71
  %86 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %87 = load ptr, ptr %85, align 8, !tbaa !35
  %88 = getelementptr inbounds ptr, ptr %87, i64 18
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(36) %86)
  %90 = load ptr, ptr %80, align 8, !tbaa !71
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = getelementptr inbounds ptr, ptr %91, i64 13
  %93 = load ptr, ptr %92, align 8
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull @.str.5, i64 noundef 4294967295)
  %94 = load ptr, ptr %80, align 8, !tbaa !71
  %95 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 6
  %96 = load ptr, ptr %94, align 8, !tbaa !35
  %97 = getelementptr inbounds ptr, ptr %96, i64 27
  %98 = load ptr, ptr %97, align 8
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(36) %95)
  br label %116

99:                                               ; preds = %6
  %100 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !71
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = getelementptr inbounds ptr, ptr %102, i64 22
  %104 = load ptr, ptr %103, align 8
  tail call void %104(ptr noundef nonnull align 8 dereferenceable(24) %101, ptr noundef nonnull @.str.18, i64 noundef 4294967295)
  %105 = load ptr, ptr %100, align 8, !tbaa !71
  %106 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %107 = load ptr, ptr %105, align 8, !tbaa !35
  %108 = getelementptr inbounds ptr, ptr %107, i64 27
  %109 = load ptr, ptr %108, align 8
  tail call void %109(ptr noundef nonnull align 8 dereferenceable(24) %105, ptr noundef nonnull align 8 dereferenceable(36) %106)
  br label %116

110:                                              ; preds = %6
  %111 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !71
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = getelementptr inbounds ptr, ptr %113, i64 22
  %115 = load ptr, ptr %114, align 8
  tail call void %115(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr noundef nonnull @.str.19, i64 noundef 4294967295)
  br label %116

116:                                              ; preds = %8, %14, %24, %35, %46, %57, %68, %79, %99, %110, %6, %2
  ret void
}

declare noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }
attributes #9 = { noreturn nounwind }

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
!41 = !{!42, !44, i64 16}
!42 = !{!"_ZTSN11xalanc_1_1020TraceListenerDefaultE", !43, i64 0, !39, i64 8, !44, i64 16, !44, i64 17, !44, i64 18, !44, i64 19, !39, i64 24}
!43 = !{!"_ZTSN11xalanc_1_1013TraceListenerE"}
!44 = !{!"bool", !40, i64 0}
!45 = !{!42, !44, i64 17}
!46 = !{!42, !44, i64 18}
!47 = !{!42, !44, i64 19}
!48 = !{!49, !39, i64 16}
!49 = !{!"_ZTSN11xalanc_1_1011TracerEventE", !39, i64 8, !39, i64 16}
!50 = !{!51, !64, i64 248}
!51 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !52, i64 0, !39, i64 8, !53, i64 16, !64, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !40, i64 280, !65, i64 288, !68, i64 320}
!52 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!53 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !54, i64 0, !56, i64 32, !57, i64 64, !58, i64 96}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!55 = !{!"long", !40, i64 0}
!56 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!57 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!58 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !59, i64 0, !60, i64 1, !39, i64 8, !61, i64 16, !55, i64 24, !55, i64 32, !62, i64 40, !62, i64 64, !63, i64 88, !55, i64 120, !55, i64 128}
!59 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!60 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!61 = !{!"float", !40, i64 0}
!62 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !39, i64 0, !39, i64 8, !39, i64 16}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!64 = !{!"int", !40, i64 0}
!65 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !66, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!66 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !67, i64 0}
!67 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!68 = !{!"short", !40, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!42, !39, i64 8}
!72 = !{!73, !39, i64 328}
!73 = !{!"_ZTSN11xalanc_1_1015ElemTextLiteralE", !51, i64 0, !44, i64 322, !39, i64 328, !64, i64 336}
!74 = !{!42, !39, i64 24}
!75 = !{!76, !39, i64 328}
!76 = !{!"_ZTSN11xalanc_1_1012ElemTemplateE", !51, i64 0, !39, i64 328, !39, i64 336, !39, i64 344, !77, i64 352}
!77 = !{!"double", !40, i64 0}
!78 = !{!79, !39, i64 80}
!79 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !80, i64 0, !64, i64 32, !81, i64 40, !64, i64 72, !39, i64 80, !82, i64 88}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!81 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!82 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!83 = !{!84, !64, i64 32}
!84 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !85, i64 0, !64, i64 32}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!86 = !{!85, !55, i64 16}
!87 = !{!85, !39, i64 24}
!88 = !{!85, !39, i64 0}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!93, !39, i64 24}
!93 = !{!"_ZTSN11xalanc_1_1014SelectionEventE", !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !94, i64 48, !95, i64 56, !44, i64 60, !39, i64 64}
!94 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !39, i64 0}
!95 = !{!"_ZTSN11xalanc_1_1014SelectionEvent14eSelectionTypeE", !40, i64 0}
!96 = !{!51, !39, i64 8}
!97 = !{!98, !39, i64 8}
!98 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !52, i64 0, !39, i64 8, !84, i64 16, !99, i64 56, !100, i64 88, !84, i64 120, !101, i64 160, !55, i64 192, !102, i64 200, !104, i64 280, !44, i64 360, !106, i64 368, !39, i64 504, !111, i64 512, !112, i64 544, !117, i64 680, !77, i64 712, !118, i64 720, !121, i64 856, !123, i64 864, !118, i64 896, !121, i64 1032, !123, i64 1040, !123, i64 1072, !123, i64 1104, !123, i64 1136, !123, i64 1168, !123, i64 1200, !55, i64 1232, !124, i64 1240, !53, i64 1272}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!100 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!101 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!102 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !39, i64 0, !55, i64 8, !103, i64 16, !103, i64 48}
!103 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!104 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !39, i64 0, !55, i64 8, !105, i64 16, !105, i64 48}
!105 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!106 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !107, i64 0, !108, i64 1, !39, i64 8, !61, i64 16, !55, i64 24, !55, i64 32, !109, i64 40, !109, i64 64, !110, i64 88, !55, i64 120, !55, i64 128}
!107 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!108 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!109 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !39, i64 0, !39, i64 8, !39, i64 16}
!110 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!111 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!112 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !113, i64 0, !114, i64 1, !39, i64 8, !61, i64 16, !55, i64 24, !55, i64 32, !115, i64 40, !115, i64 64, !116, i64 88, !55, i64 120, !55, i64 128}
!113 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!114 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!115 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !39, i64 0, !39, i64 8, !39, i64 16}
!116 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!117 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!118 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !107, i64 0, !108, i64 1, !39, i64 8, !61, i64 16, !55, i64 24, !55, i64 32, !119, i64 40, !119, i64 64, !120, i64 88, !55, i64 120, !55, i64 128}
!119 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !39, i64 0, !39, i64 8, !39, i64 16}
!120 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!121 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !122, i64 0}
!122 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !39, i64 0}
!123 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!124 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!125 = !{!126, !39, i64 1896}
!126 = !{!"_ZTSN11xalanc_1_1014StylesheetRootE", !98, i64 0, !84, i64 1504, !127, i64 1544, !84, i64 1552, !84, i64 1592, !84, i64 1632, !84, i64 1672, !44, i64 1712, !84, i64 1720, !84, i64 1760, !128, i64 1800, !129, i64 1808, !44, i64 1840, !111, i64 1848, !39, i64 1880, !39, i64 1888, !39, i64 1896, !44, i64 1904, !44, i64 1905, !64, i64 1908, !44, i64 1912, !55, i64 1920, !130, i64 1928}
!127 = !{!"_ZTSN11xalanc_1_1014StylesheetRoot11eIndentTypeE", !40, i64 0}
!128 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !40, i64 0}
!129 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!130 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !131, i64 0, !132, i64 1, !39, i64 8, !61, i64 16, !55, i64 24, !55, i64 32, !133, i64 40, !133, i64 64, !134, i64 88, !55, i64 120, !55, i64 128}
!131 = !{!"_ZTSN11xalanc_1_1022XalanHashMemberPointerINS_10XalanQNameEEE"}
!132 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_10XalanQNameEEE"}
!133 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !39, i64 0, !39, i64 8, !39, i64 16}
!134 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_10XalanQNameENS0_IPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISF_E4NodeEEENS9_ISK_EEEENS_32ConstructWithMemoryManagerTraitsISM_EEEE", !39, i64 0, !55, i64 8, !55, i64 16, !39, i64 24}
!135 = !{!126, !39, i64 1880}
!136 = !{!126, !39, i64 1888}
!137 = !{!93, !39, i64 32}
!138 = !{!93, !39, i64 40}
!139 = !{!94, !39, i64 0}
!140 = !{!93, !95, i64 56}
!141 = !{!93, !44, i64 60}
!142 = !{!93, !39, i64 64}
!143 = !{!144, !146, i64 12}
!144 = !{!"_ZTSN11xalanc_1_107XObjectE", !145, i64 0, !146, i64 12, !39, i64 16}
!145 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !64, i64 8}
!146 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !40, i64 0}
!147 = !{!148, !149, i64 0}
!148 = !{!"_ZTSN11xalanc_1_1013GenerateEventE", !149, i64 0, !84, i64 8, !64, i64 48, !64, i64 52, !84, i64 56, !84, i64 96, !39, i64 136}
!149 = !{!"_ZTSN11xalanc_1_1013GenerateEvent9EventTypeE", !40, i64 0}
