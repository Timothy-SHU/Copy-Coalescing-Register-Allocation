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

$_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv = comdat any

$_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getLineNumberEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement15getColumnNumberEv = comdat any

$_ZNK11xalanc_1_1012ElemTemplate15getMatchPatternEv = comdat any

$_ZNK11xalanc_1_105XPath13getExpressionEv = comdat any

$_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isEmptyEv = comdat any

$_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1012XalanLocator15getUnknownValueEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv = comdat any

$_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv = comdat any

$_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv = comdat any

$_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZNK11xalanc_1_107XObject7getTypeEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

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

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefaultC2ERNS_11PrintWriterEbbbbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #1 align 2 !prof !53 {
  %8 = zext i1 %2 to i8
  %9 = zext i1 %3 to i8
  %10 = zext i1 %4 to i8
  %11 = zext i1 %5 to i8
  tail call void @_ZN11xalanc_1_1013TraceListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1020TraceListenerDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %12 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 2
  store i8 %8, ptr %13, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  store i8 %9, ptr %14, align 1, !tbaa !64
  %15 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 4
  store i8 %10, ptr %15, align 2, !tbaa !65
  %16 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 5
  store i8 %11, ptr %16, align 1, !tbaa !66
  %17 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  store ptr %6, ptr %17, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1013TraceListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1013TraceListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !53 {
  tail call void @_ZN11xalanc_1_1013TraceListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_1020TraceListenerDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault5traceERKNS_11TracerEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::TracerEvent", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %10) #7
  switch i32 %11, label %183 [
    i32 36, label %12
    i32 20, label %42
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !64, !range !69, !noundef !70
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %246, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 8, !tbaa !67
  tail call void @_ZN11xalanc_1_1020TraceListenerDefault13printNodeInfoERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(322) %17) #7
  %18 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds ptr, ptr %20, i64 13
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull @.str, i64 noundef 4294967295) #7
  %23 = load ptr, ptr %18, align 8, !tbaa !71
  %24 = load ptr, ptr %9, align 8, !tbaa !67
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(322) %24) #7
  %29 = load ptr, ptr %23, align 8, !tbaa !54
  %30 = getelementptr inbounds ptr, ptr %29, i64 18
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(36) %28) #7
  %32 = load ptr, ptr %18, align 8, !tbaa !71
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds ptr, ptr %33, i64 13
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull @.str.1, i64 noundef 4294967295) #7
  %36 = load ptr, ptr %9, align 8, !tbaa !67
  %37 = load ptr, ptr %18, align 8, !tbaa !71
  %38 = tail call noundef ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv(ptr noundef nonnull align 8 dereferenceable(340) %36) #7
  %39 = load ptr, ptr %37, align 8, !tbaa !54
  %40 = getelementptr inbounds ptr, ptr %39, i64 23
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef %38, i32 noundef -1) #7
  br label %246

42:                                               ; preds = %2
  %43 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 2
  %44 = load i8, ptr %43, align 8, !tbaa !60, !range !69, !noundef !70
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !range !69
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %45, i1 %48, i1 false
  br i1 %49, label %246, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %9, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %52 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %53) #7
  %54 = load ptr, ptr %9, align 8, !tbaa !67
  %55 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %54) #7
          to label %56 unwind label %103

56:                                               ; preds = %50
  %57 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %55, ptr noundef nonnull align 8 dereferenceable(36) %3) #7
          to label %58 unwind label %103

58:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %59 = load ptr, ptr %52, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %59) #7
          to label %60 unwind label %105

60:                                               ; preds = %58
  %61 = load ptr, ptr %9, align 8, !tbaa !67
  %62 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %61) #7
          to label %63 unwind label %107

63:                                               ; preds = %60
  %64 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %62, ptr noundef nonnull align 8 dereferenceable(36) %4) #7
          to label %65 unwind label %107

65:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %66 = load ptr, ptr %52, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %66) #7
          to label %67 unwind label %109

67:                                               ; preds = %65
  %68 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !71
  %70 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 89, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #7
          to label %71 unwind label %111

71:                                               ; preds = %67
  %72 = load ptr, ptr %69, align 8, !tbaa !54
  %73 = getelementptr inbounds ptr, ptr %72, i64 18
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(36) %70) #7
          to label %75 unwind label %111

75:                                               ; preds = %71
  %76 = load ptr, ptr %68, align 8, !tbaa !71
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = getelementptr inbounds ptr, ptr %77, i64 13
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull @.str, i64 noundef 4294967295) #7
          to label %80 unwind label %111

80:                                               ; preds = %75
  %81 = load ptr, ptr %68, align 8, !tbaa !71
  %82 = load ptr, ptr %9, align 8, !tbaa !67
  %83 = load ptr, ptr %82, align 8, !tbaa !54
  %84 = getelementptr inbounds ptr, ptr %83, i64 12
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef nonnull align 8 dereferenceable(36) ptr %85(ptr noundef nonnull align 8 dereferenceable(322) %82) #7
          to label %87 unwind label %111

87:                                               ; preds = %80
  %88 = load ptr, ptr %81, align 8, !tbaa !54
  %89 = getelementptr inbounds ptr, ptr %88, i64 18
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull align 8 dereferenceable(36) %86) #7
          to label %91 unwind label %111

91:                                               ; preds = %87
  %92 = call noundef ptr @_ZNK11xalanc_1_1012ElemTemplate15getMatchPatternEv(ptr noundef nonnull align 8 dereferenceable(360) %51) #7
  %93 = icmp eq ptr %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %68, align 8, !tbaa !71
  %96 = call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %92) #7
  %97 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %96) #7
  %98 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 113, ptr noundef nonnull align 8 dereferenceable(36) %97) #7
          to label %99 unwind label %113

99:                                               ; preds = %94
  %100 = load ptr, ptr %95, align 8, !tbaa !54
  %101 = getelementptr inbounds ptr, ptr %100, i64 18
  %102 = load ptr, ptr %101, align 8
  invoke void %102(ptr noundef nonnull align 8 dereferenceable(24) %95, ptr noundef nonnull align 8 dereferenceable(36) %98) #7
          to label %115 unwind label %113

103:                                              ; preds = %56, %50
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %181

105:                                              ; preds = %58
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %179

107:                                              ; preds = %63, %60
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %177

109:                                              ; preds = %65
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %175

111:                                              ; preds = %87, %80, %75, %71, %67
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %173

113:                                              ; preds = %99, %94
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %173

115:                                              ; preds = %99, %91
  %116 = load ptr, ptr %51, align 8, !tbaa !54
  %117 = getelementptr inbounds ptr, ptr %116, i64 13
  %118 = load ptr, ptr %117, align 8
  %119 = invoke noundef nonnull align 8 dereferenceable(8) ptr %118(ptr noundef nonnull align 8 dereferenceable(360) %51) #7
          to label %120 unwind label %148

120:                                              ; preds = %115
  %121 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %119) #7
          to label %122 unwind label %148

122:                                              ; preds = %120
  br i1 %121, label %167, label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %68, align 8, !tbaa !71
  %125 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 53) #7
          to label %126 unwind label %148

126:                                              ; preds = %123
  %127 = load ptr, ptr %124, align 8, !tbaa !54
  %128 = getelementptr inbounds ptr, ptr %127, i64 18
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(24) %124, ptr noundef nonnull align 8 dereferenceable(36) %125) #7
          to label %130 unwind label %148

130:                                              ; preds = %126
  %131 = load ptr, ptr %119, align 8, !tbaa !54
  %132 = getelementptr inbounds ptr, ptr %131, i64 3
  %133 = load ptr, ptr %132, align 8
  %134 = invoke noundef nonnull align 8 dereferenceable(36) ptr %133(ptr noundef nonnull align 8 dereferenceable(8) %119) #7
          to label %135 unwind label %150

135:                                              ; preds = %130
  %136 = invoke noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %134) #7
          to label %137 unwind label %150

137:                                              ; preds = %135
  br i1 %136, label %152, label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr %68, align 8, !tbaa !71
  %140 = load ptr, ptr %139, align 8, !tbaa !54
  %141 = getelementptr inbounds ptr, ptr %140, i64 18
  %142 = load ptr, ptr %141, align 8
  invoke void %142(ptr noundef nonnull align 8 dereferenceable(24) %139, ptr noundef nonnull align 8 dereferenceable(36) %134) #7
          to label %143 unwind label %150

143:                                              ; preds = %138
  %144 = load ptr, ptr %68, align 8, !tbaa !71
  %145 = load ptr, ptr %144, align 8, !tbaa !54
  %146 = getelementptr inbounds ptr, ptr %145, i64 16
  %147 = load ptr, ptr %146, align 8
  invoke void %147(ptr noundef nonnull align 8 dereferenceable(24) %144, i32 noundef 58) #7
          to label %152 unwind label %150

148:                                              ; preds = %167, %126, %123, %120, %115
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %173

150:                                              ; preds = %162, %158, %152, %143, %138, %135, %130
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %173

152:                                              ; preds = %143, %137
  %153 = load ptr, ptr %68, align 8, !tbaa !71
  %154 = load ptr, ptr %119, align 8, !tbaa !54
  %155 = getelementptr inbounds ptr, ptr %154, i64 2
  %156 = load ptr, ptr %155, align 8
  %157 = invoke noundef nonnull align 8 dereferenceable(36) ptr %156(ptr noundef nonnull align 8 dereferenceable(8) %119) #7
          to label %158 unwind label %150

158:                                              ; preds = %152
  %159 = load ptr, ptr %153, align 8, !tbaa !54
  %160 = getelementptr inbounds ptr, ptr %159, i64 18
  %161 = load ptr, ptr %160, align 8
  invoke void %161(ptr noundef nonnull align 8 dereferenceable(24) %153, ptr noundef nonnull align 8 dereferenceable(36) %157) #7
          to label %162 unwind label %150

162:                                              ; preds = %158
  %163 = load ptr, ptr %68, align 8, !tbaa !71
  %164 = load ptr, ptr %163, align 8, !tbaa !54
  %165 = getelementptr inbounds ptr, ptr %164, i64 13
  %166 = load ptr, ptr %165, align 8
  invoke void %166(ptr noundef nonnull align 8 dereferenceable(24) %163, ptr noundef nonnull @.str.2, i64 noundef 4294967295) #7
          to label %167 unwind label %150

167:                                              ; preds = %162, %122
  %168 = load ptr, ptr %68, align 8, !tbaa !71
  %169 = load ptr, ptr %168, align 8, !tbaa !54
  %170 = getelementptr inbounds ptr, ptr %169, i64 19
  %171 = load ptr, ptr %170, align 8
  invoke void %171(ptr noundef nonnull align 8 dereferenceable(24) %168) #7
          to label %172 unwind label %148

172:                                              ; preds = %167
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %246

173:                                              ; preds = %113, %150, %148, %111
  %174 = phi { ptr, i32 } [ %112, %111 ], [ %114, %113 ], [ %149, %148 ], [ %151, %150 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  br label %175

175:                                              ; preds = %173, %109
  %176 = phi { ptr, i32 } [ %174, %173 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %177

177:                                              ; preds = %175, %107
  %178 = phi { ptr, i32 } [ %176, %175 ], [ %108, %107 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
  br label %179

179:                                              ; preds = %177, %105
  %180 = phi { ptr, i32 } [ %178, %177 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %181

181:                                              ; preds = %179, %103
  %182 = phi { ptr, i32 } [ %180, %179 ], [ %104, %103 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %247

183:                                              ; preds = %2
  %184 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 3
  %185 = load i8, ptr %184, align 1, !tbaa !64, !range !69, !noundef !70
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %246, label %187

187:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %188 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %189 = load ptr, ptr %188, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %189) #7
  %190 = load ptr, ptr %9, align 8, !tbaa !67
  %191 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %190) #7
          to label %192 unwind label %228

192:                                              ; preds = %187
  %193 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %191, ptr noundef nonnull align 8 dereferenceable(36) %6) #7
          to label %194 unwind label %228

194:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10
  %195 = load ptr, ptr %188, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %195) #7
          to label %196 unwind label %230

196:                                              ; preds = %194
  %197 = load ptr, ptr %9, align 8, !tbaa !67
  %198 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %197) #7
          to label %199 unwind label %232

199:                                              ; preds = %196
  %200 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %198, ptr noundef nonnull align 8 dereferenceable(36) %7) #7
          to label %201 unwind label %232

201:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  %202 = load ptr, ptr %188, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %202) #7
          to label %203 unwind label %234

203:                                              ; preds = %201
  %204 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !71
  %206 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 89, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7) #7
          to label %207 unwind label %236

207:                                              ; preds = %203
  %208 = load ptr, ptr %205, align 8, !tbaa !54
  %209 = getelementptr inbounds ptr, ptr %208, i64 18
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(24) %205, ptr noundef nonnull align 8 dereferenceable(36) %206) #7
          to label %211 unwind label %236

211:                                              ; preds = %207
  %212 = load ptr, ptr %204, align 8, !tbaa !71
  %213 = load ptr, ptr %212, align 8, !tbaa !54
  %214 = getelementptr inbounds ptr, ptr %213, i64 13
  %215 = load ptr, ptr %214, align 8
  invoke void %215(ptr noundef nonnull align 8 dereferenceable(24) %212, ptr noundef nonnull @.str, i64 noundef 4294967295) #7
          to label %216 unwind label %236

216:                                              ; preds = %211
  %217 = load ptr, ptr %204, align 8, !tbaa !71
  %218 = load ptr, ptr %9, align 8, !tbaa !67
  %219 = load ptr, ptr %218, align 8, !tbaa !54
  %220 = getelementptr inbounds ptr, ptr %219, i64 12
  %221 = load ptr, ptr %220, align 8
  %222 = invoke noundef nonnull align 8 dereferenceable(36) ptr %221(ptr noundef nonnull align 8 dereferenceable(322) %218) #7
          to label %223 unwind label %236

223:                                              ; preds = %216
  %224 = load ptr, ptr %217, align 8, !tbaa !54
  %225 = getelementptr inbounds ptr, ptr %224, i64 27
  %226 = load ptr, ptr %225, align 8
  invoke void %226(ptr noundef nonnull align 8 dereferenceable(24) %217, ptr noundef nonnull align 8 dereferenceable(36) %222) #7
          to label %227 unwind label %236

227:                                              ; preds = %223
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  br label %246

228:                                              ; preds = %192, %187
  %229 = landingpad { ptr, i32 }
          cleanup
  br label %244

230:                                              ; preds = %194
  %231 = landingpad { ptr, i32 }
          cleanup
  br label %242

232:                                              ; preds = %199, %196
  %233 = landingpad { ptr, i32 }
          cleanup
  br label %240

234:                                              ; preds = %201
  %235 = landingpad { ptr, i32 }
          cleanup
  br label %238

236:                                              ; preds = %223, %216, %211, %207, %203
  %237 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #8
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi { ptr, i32 } [ %237, %236 ], [ %235, %234 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  br label %240

240:                                              ; preds = %238, %232
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %233, %232 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #8
  br label %242

242:                                              ; preds = %240, %230
  %243 = phi { ptr, i32 } [ %241, %240 ], [ %231, %230 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  br label %244

244:                                              ; preds = %242, %228
  %245 = phi { ptr, i32 } [ %243, %242 ], [ %229, %228 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  br label %247

246:                                              ; preds = %42, %183, %227, %172, %12, %16
  ret void

247:                                              ; preds = %244, %181
  %248 = phi { ptr, i32 } [ %245, %244 ], [ %182, %181 ]
  resume { ptr, i32 } %248
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !74
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault13printNodeInfoERKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(322) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !54
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(322) %1) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %10 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %12 = load ptr, ptr %10, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
          to label %13 unwind label %50

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %14 = load ptr, ptr %10, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %14) #7
          to label %15 unwind label %52

15:                                               ; preds = %13
  %16 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %1) #7
          to label %17 unwind label %54

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(36) %4) #7
          to label %19 unwind label %54

19:                                               ; preds = %17
  %20 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %1) #7
          to label %21 unwind label %54

21:                                               ; preds = %19
  %22 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %20, ptr noundef nonnull align 8 dereferenceable(36) %5) #7
          to label %23 unwind label %54

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 112, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5) #7
          to label %27 unwind label %54

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !54
  %29 = getelementptr inbounds ptr, ptr %28, i64 18
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(36) %26) #7
          to label %31 unwind label %54

31:                                               ; preds = %27
  %32 = invoke noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %9) #7
          to label %33 unwind label %54

33:                                               ; preds = %31
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %24, align 8, !tbaa !71
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = getelementptr inbounds ptr, ptr %37, i64 13
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull @.str.20, i64 noundef 4294967295) #7
          to label %40 unwind label %54

40:                                               ; preds = %35
  %41 = load ptr, ptr %24, align 8, !tbaa !71
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = getelementptr inbounds ptr, ptr %42, i64 18
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(36) %9) #7
          to label %45 unwind label %54

45:                                               ; preds = %40
  %46 = load ptr, ptr %24, align 8, !tbaa !71
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = getelementptr inbounds ptr, ptr %47, i64 13
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull @.str.21, i64 noundef 4294967295) #7
          to label %56 unwind label %54

50:                                               ; preds = %2
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %59

52:                                               ; preds = %13
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %57

54:                                               ; preds = %45, %40, %35, %31, %27, %23, %21, %19, %17, %15
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  br label %57

56:                                               ; preds = %45, %33
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void

57:                                               ; preds = %54, %52
  %58 = phi { ptr, i32 } [ %55, %54 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv(ptr noundef nonnull align 8 dereferenceable(340) %0) local_unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #1 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  ret i64 %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #1 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  ret i64 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1012ElemTemplate15getMatchPatternEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #4 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #4 comdat align 2 !prof !99 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 comdat align 2 !prof !100 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !106 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %5) #7
  br i1 %6, label %7, label %13, !prof !107

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %12 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %11) #7
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  ret i1 %14
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !108 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 !prof !109 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault15processNodeListERKNS_15NodeRefListBaseE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %9 = load ptr, ptr %1, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %13 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %14) #7
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !tbaa !71
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 120) #7
          to label %19 unwind label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !54
  %21 = getelementptr inbounds ptr, ptr %20, i64 27
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(36) %18) #7
          to label %47 unwind label %23

23:                                               ; preds = %19, %16
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %48

25:                                               ; preds = %2, %42
  %26 = phi i32 [ %43, %42 ], [ 0, %2 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !71
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = getelementptr inbounds ptr, ptr %28, i64 13
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull @.str.3, i64 noundef 4294967295) #7
          to label %31 unwind label %45

31:                                               ; preds = %25
  %32 = load ptr, ptr %1, align 8, !tbaa !54
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %26) #7
          to label %36 unwind label %45

36:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(36) %3) #7
          to label %37 unwind label %45

37:                                               ; preds = %36
  %38 = load ptr, ptr %4, align 8, !tbaa !71
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = getelementptr inbounds ptr, ptr %39, i64 27
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(36) %3) #7
          to label %42 unwind label %45

42:                                               ; preds = %37
  %43 = add nuw i32 %26, 1
  %44 = icmp eq i32 %43, %12
  br i1 %44, label %47, label %25, !llvm.loop !110

45:                                               ; preds = %37, %36, %31, %25
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %48

47:                                               ; preds = %42, %19
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void

48:                                               ; preds = %45, %23
  %49 = phi { ptr, i32 } [ %24, %23 ], [ %46, %45 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  resume { ptr, i32 } %49
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault8selectedERKNS_14SelectionEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 1, !tbaa !66, !range !69, !noundef !70
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %167, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  %13 = tail call noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %12) #7
  %14 = tail call noundef i64 @_ZN11xalanc_1_1012XalanLocator15getUnknownValueEv() #7
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load ptr, ptr %12, align 8, !tbaa !54
  %18 = getelementptr inbounds ptr, ptr %17, i64 30
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(322) %12) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %21 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %22) #7
  %23 = call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %12) #7
  %24 = call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %23) #7
  %25 = call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %24) #7
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 122) #7
          to label %52 unwind label %31

31:                                               ; preds = %52, %48, %38, %27
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %165

33:                                               ; preds = %16
  %34 = call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %12) #7
  %35 = call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %34) #7
  %36 = call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %35) #7
  %37 = icmp eq ptr %20, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE, align 8, !tbaa !57
  %42 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 121, ptr noundef nonnull align 8 dereferenceable(36) %41) #7
          to label %52 unwind label %31

43:                                               ; preds = %33
  %44 = call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %12) #7
  %45 = call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %44) #7
  %46 = call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %45) #7
  %47 = icmp eq ptr %20, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 121, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef null) #7
          to label %52 unwind label %31

52:                                               ; preds = %48, %38, %27
  %53 = phi ptr [ %29, %27 ], [ %40, %38 ], [ %50, %48 ]
  %54 = phi ptr [ %30, %27 ], [ %42, %38 ], [ %51, %48 ]
  %55 = load ptr, ptr %53, align 8, !tbaa !54
  %56 = getelementptr inbounds ptr, ptr %55, i64 18
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(36) %54) #7
          to label %58 unwind label %31

58:                                               ; preds = %52, %43
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %94

59:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %60 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %61) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %62 = load ptr, ptr %60, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %62) #7
          to label %63 unwind label %84

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %64 = load ptr, ptr %60, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %64) #7
          to label %65 unwind label %86

65:                                               ; preds = %63
  %66 = load ptr, ptr %11, align 8, !tbaa !112
  %67 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %66) #7
          to label %68 unwind label %88

68:                                               ; preds = %65
  %69 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %67, ptr noundef nonnull align 8 dereferenceable(36) %5) #7
          to label %70 unwind label %88

70:                                               ; preds = %68
  %71 = load ptr, ptr %11, align 8, !tbaa !112
  %72 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(322) %71) #7
          to label %73 unwind label %88

73:                                               ; preds = %70
  %74 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %72, ptr noundef nonnull align 8 dereferenceable(36) %6) #7
          to label %75 unwind label %88

75:                                               ; preds = %73
  %76 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !71
  %78 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 112, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6) #7
          to label %79 unwind label %88

79:                                               ; preds = %75
  %80 = load ptr, ptr %77, align 8, !tbaa !54
  %81 = getelementptr inbounds ptr, ptr %80, i64 18
  %82 = load ptr, ptr %81, align 8
  invoke void %82(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(36) %78) #7
          to label %83 unwind label %88

83:                                               ; preds = %79
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %94

84:                                               ; preds = %59
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %92

86:                                               ; preds = %63
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %90

88:                                               ; preds = %79, %75, %73, %70, %68, %65
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %165

94:                                               ; preds = %83, %58
  %95 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !71
  %97 = load ptr, ptr %12, align 8, !tbaa !54
  %98 = getelementptr inbounds ptr, ptr %97, i64 12
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef nonnull align 8 dereferenceable(36) ptr %99(ptr noundef nonnull align 8 dereferenceable(322) %12) #7
  %101 = load ptr, ptr %96, align 8, !tbaa !54
  %102 = getelementptr inbounds ptr, ptr %101, i64 18
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(36) %100) #7
  %104 = load ptr, ptr %95, align 8, !tbaa !71
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = getelementptr inbounds ptr, ptr %105, i64 13
  %107 = load ptr, ptr %106, align 8
  call void %107(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull @.str.5, i64 noundef 4294967295) #7
  %108 = load ptr, ptr %95, align 8, !tbaa !71
  %109 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !116
  %111 = load ptr, ptr %108, align 8, !tbaa !54
  %112 = getelementptr inbounds ptr, ptr %111, i64 18
  %113 = load ptr, ptr %112, align 8
  call void %113(ptr noundef nonnull align 8 dereferenceable(24) %108, ptr noundef nonnull align 8 dereferenceable(36) %110) #7
  %114 = load ptr, ptr %95, align 8, !tbaa !71
  %115 = load ptr, ptr %114, align 8, !tbaa !54
  %116 = getelementptr inbounds ptr, ptr %115, i64 13
  %117 = load ptr, ptr %116, align 8
  call void %117(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull @.str.6, i64 noundef 4294967295) #7
  %118 = load ptr, ptr %95, align 8, !tbaa !71
  %119 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !117
  %121 = load ptr, ptr %118, align 8, !tbaa !54
  %122 = getelementptr inbounds ptr, ptr %121, i64 18
  %123 = load ptr, ptr %122, align 8
  call void %123(ptr noundef nonnull align 8 dereferenceable(24) %118, ptr noundef nonnull align 8 dereferenceable(36) %120) #7
  %124 = load ptr, ptr %95, align 8, !tbaa !71
  %125 = load ptr, ptr %124, align 8, !tbaa !54
  %126 = getelementptr inbounds ptr, ptr %125, i64 13
  %127 = load ptr, ptr %126, align 8
  call void %127(ptr noundef nonnull align 8 dereferenceable(24) %124, ptr noundef nonnull @.str.7, i64 noundef 4294967295) #7
  %128 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 6
  %129 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %128) #7
  br i1 %129, label %130, label %145

130:                                              ; preds = %94
  %131 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 7
  %132 = load i32, ptr %131, align 8, !tbaa !118
  switch i32 %132, label %167 [
    i32 1, label %133
    i32 2, label %142
  ]

133:                                              ; preds = %130
  %134 = load ptr, ptr %95, align 8, !tbaa !71
  %135 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 8
  %136 = load i8, ptr %135, align 4, !tbaa !119, !range !69, !noundef !70
  %137 = icmp eq i8 %136, 0
  %138 = select i1 %137, ptr @.str.9, ptr @.str.8
  %139 = load ptr, ptr %134, align 8, !tbaa !54
  %140 = getelementptr inbounds ptr, ptr %139, i64 22
  %141 = load ptr, ptr %140, align 8
  call void %141(ptr noundef nonnull align 8 dereferenceable(24) %134, ptr noundef nonnull %138, i64 noundef 4294967295) #7
  br label %167

142:                                              ; preds = %130
  %143 = getelementptr inbounds %"class.xalanc_1_10::SelectionEvent", ptr %1, i64 0, i32 9
  %144 = load ptr, ptr %143, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1020TraceListenerDefault15processNodeListERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %144) #7
  br label %167

145:                                              ; preds = %94
  %146 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %128) #7
  %147 = call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %146) #7
  %148 = icmp eq i32 %147, 5
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %128) #7
  %151 = load ptr, ptr %150, align 8, !tbaa !54
  %152 = getelementptr inbounds ptr, ptr %151, i64 13
  %153 = load ptr, ptr %152, align 8
  %154 = call noundef nonnull align 8 dereferenceable(8) ptr %153(ptr noundef nonnull align 8 dereferenceable(24) %150) #7
  call void @_ZN11xalanc_1_1020TraceListenerDefault15processNodeListERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %154) #7
  br label %167

155:                                              ; preds = %145
  %156 = load ptr, ptr %95, align 8, !tbaa !71
  %157 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %128) #7
  %158 = load ptr, ptr %157, align 8, !tbaa !54
  %159 = getelementptr inbounds ptr, ptr %158, i64 8
  %160 = load ptr, ptr %159, align 8
  %161 = call noundef nonnull align 8 dereferenceable(36) ptr %160(ptr noundef nonnull align 8 dereferenceable(24) %157) #7
  %162 = load ptr, ptr %156, align 8, !tbaa !54
  %163 = getelementptr inbounds ptr, ptr %162, i64 27
  %164 = load ptr, ptr %163, align 8
  call void %164(ptr noundef nonnull align 8 dereferenceable(24) %156, ptr noundef nonnull align 8 dereferenceable(36) %161) #7
  br label %167

165:                                              ; preds = %92, %31
  %166 = phi { ptr, i32 } [ %32, %31 ], [ %93, %92 ]
  resume { ptr, i32 } %166

167:                                              ; preds = %142, %133, %155, %149, %130, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1012XalanLocator15getUnknownValueEv() local_unnamed_addr #4 comdat align 2 !prof !121 {
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #4 comdat align 2 !prof !124 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !168 {
  %2 = load ptr, ptr %0, align 8, !tbaa !169
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !170 {
  %2 = load ptr, ptr %0, align 8, !tbaa !169
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !172
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020TraceListenerDefault9generatedERKNS_13GenerateEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !65, !range !69, !noundef !70
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %116, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !176
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
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 22
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull @.str.10, i64 noundef 4294967295) #7
  br label %116

14:                                               ; preds = %6
  %15 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds ptr, ptr %17, i64 19
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %16) #7
  %20 = load ptr, ptr %15, align 8, !tbaa !71
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds ptr, ptr %21, i64 22
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull @.str.11, i64 noundef 4294967295) #7
  br label %116

24:                                               ; preds = %6
  %25 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds ptr, ptr %27, i64 13
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull @.str.12, i64 noundef 4294967295) #7
  %30 = load ptr, ptr %25, align 8, !tbaa !71
  %31 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %32 = load ptr, ptr %30, align 8, !tbaa !54
  %33 = getelementptr inbounds ptr, ptr %32, i64 27
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(36) %31) #7
  br label %116

35:                                               ; preds = %6
  %36 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds ptr, ptr %38, i64 13
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull @.str.13, i64 noundef 4294967295) #7
  %41 = load ptr, ptr %36, align 8, !tbaa !71
  %42 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %43 = load ptr, ptr %41, align 8, !tbaa !54
  %44 = getelementptr inbounds ptr, ptr %43, i64 27
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(36) %42) #7
  br label %116

46:                                               ; preds = %6
  %47 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !71
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = getelementptr inbounds ptr, ptr %49, i64 13
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull @.str.14, i64 noundef 4294967295) #7
  %52 = load ptr, ptr %47, align 8, !tbaa !71
  %53 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 2
  %54 = load ptr, ptr %52, align 8, !tbaa !54
  %55 = getelementptr inbounds ptr, ptr %54, i64 27
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(36) %53) #7
  br label %116

57:                                               ; preds = %6
  %58 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = load ptr, ptr %59, align 8, !tbaa !54
  %61 = getelementptr inbounds ptr, ptr %60, i64 13
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull @.str.15, i64 noundef 4294967295) #7
  %63 = load ptr, ptr %58, align 8, !tbaa !71
  %64 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 2
  %65 = load ptr, ptr %63, align 8, !tbaa !54
  %66 = getelementptr inbounds ptr, ptr %65, i64 27
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(36) %64) #7
  br label %116

68:                                               ; preds = %6
  %69 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !71
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = getelementptr inbounds ptr, ptr %71, i64 13
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull @.str.16, i64 noundef 4294967295) #7
  %74 = load ptr, ptr %69, align 8, !tbaa !71
  %75 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 6
  %76 = load ptr, ptr %74, align 8, !tbaa !54
  %77 = getelementptr inbounds ptr, ptr %76, i64 27
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(36) %75) #7
  br label %116

79:                                               ; preds = %6
  %80 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = load ptr, ptr %81, align 8, !tbaa !54
  %83 = getelementptr inbounds ptr, ptr %82, i64 13
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull @.str.17, i64 noundef 4294967295) #7
  %85 = load ptr, ptr %80, align 8, !tbaa !71
  %86 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %87 = load ptr, ptr %85, align 8, !tbaa !54
  %88 = getelementptr inbounds ptr, ptr %87, i64 18
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(36) %86) #7
  %90 = load ptr, ptr %80, align 8, !tbaa !71
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = getelementptr inbounds ptr, ptr %91, i64 13
  %93 = load ptr, ptr %92, align 8
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull @.str.5, i64 noundef 4294967295) #7
  %94 = load ptr, ptr %80, align 8, !tbaa !71
  %95 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 6
  %96 = load ptr, ptr %94, align 8, !tbaa !54
  %97 = getelementptr inbounds ptr, ptr %96, i64 27
  %98 = load ptr, ptr %97, align 8
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(36) %95) #7
  br label %116

99:                                               ; preds = %6
  %100 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !71
  %102 = load ptr, ptr %101, align 8, !tbaa !54
  %103 = getelementptr inbounds ptr, ptr %102, i64 22
  %104 = load ptr, ptr %103, align 8
  tail call void %104(ptr noundef nonnull align 8 dereferenceable(24) %101, ptr noundef nonnull @.str.18, i64 noundef 4294967295) #7
  %105 = load ptr, ptr %100, align 8, !tbaa !71
  %106 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %1, i64 0, i32 5
  %107 = load ptr, ptr %105, align 8, !tbaa !54
  %108 = getelementptr inbounds ptr, ptr %107, i64 27
  %109 = load ptr, ptr %108, align 8
  tail call void %109(ptr noundef nonnull align 8 dereferenceable(24) %105, ptr noundef nonnull align 8 dereferenceable(36) %106) #7
  br label %116

110:                                              ; preds = %6
  %111 = getelementptr inbounds %"class.xalanc_1_10::TraceListenerDefault", ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !71
  %113 = load ptr, ptr %112, align 8, !tbaa !54
  %114 = getelementptr inbounds ptr, ptr %113, i64 22
  %115 = load ptr, ptr %114, align 8
  tail call void %115(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr noundef nonnull @.str.19, i64 noundef 4294967295) #7
  br label %116

116:                                              ; preds = %8, %14, %24, %35, %46, %57, %68, %79, %99, %110, %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !179 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  ret i32 %2
}

; Function Attrs: optsize
declare noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: optsize
declare noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !180 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !181
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !182 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !183 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !184
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !185

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #7
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !186
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #7
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !187 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !188 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !189

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #7
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !190, !llvm.loop !191

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !192 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !193 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !188 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #4 comdat align 2 !prof !195 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !196 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !197
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !198 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !181
  ret i32 %3
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!52}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isEmptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 917611}
!36 = !{ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 3312604}
!37 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!51 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !56, i64 0}
!60 = !{!61, !63, i64 16}
!61 = !{!"_ZTSN11xalanc_1_1020TraceListenerDefaultE", !62, i64 0, !58, i64 8, !63, i64 16, !63, i64 17, !63, i64 18, !63, i64 19, !58, i64 24}
!62 = !{!"_ZTSN11xalanc_1_1013TraceListenerE"}
!63 = !{!"bool", !59, i64 0}
!64 = !{!61, !63, i64 17}
!65 = !{!61, !63, i64 18}
!66 = !{!61, !63, i64 19}
!67 = !{!68, !58, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1011TracerEventE", !58, i64 8, !58, i64 16}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!61, !58, i64 8}
!72 = !{!61, !58, i64 24}
!73 = !{!"function_entry_count", i64 46114577}
!74 = !{!75, !88, i64 248}
!75 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !76, i64 0, !58, i64 8, !77, i64 16, !88, i64 248, !58, i64 256, !58, i64 264, !58, i64 272, !59, i64 280, !89, i64 288, !92, i64 320}
!76 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!77 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !78, i64 0, !80, i64 32, !81, i64 64, !82, i64 96}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!79 = !{!"long", !59, i64 0}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!81 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!82 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !83, i64 0, !84, i64 1, !58, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !86, i64 40, !86, i64 64, !87, i64 88, !79, i64 120, !79, i64 128}
!83 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!84 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!85 = !{!"float", !59, i64 0}
!86 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!87 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!88 = !{!"int", !59, i64 0}
!89 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !90, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!90 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !91, i64 0}
!91 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!92 = !{!"short", !59, i64 0}
!93 = !{!94, !58, i64 328}
!94 = !{!"_ZTSN11xalanc_1_1015ElemTextLiteralE", !75, i64 0, !63, i64 322, !58, i64 328, !88, i64 336}
!95 = !{!"function_entry_count", i64 27}
!96 = !{!97, !58, i64 328}
!97 = !{!"_ZTSN11xalanc_1_1012ElemTemplateE", !75, i64 0, !58, i64 328, !58, i64 336, !58, i64 344, !98, i64 352}
!98 = !{!"double", !59, i64 0}
!99 = !{!"function_entry_count", i64 5050308}
!100 = !{!"function_entry_count", i64 24}
!101 = !{!102, !58, i64 80}
!102 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !103, i64 0, !88, i64 32, !104, i64 40, !88, i64 72, !58, i64 80, !105, i64 88}
!103 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!104 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!105 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!106 = !{!"function_entry_count", i64 458806}
!107 = !{!"branch_weights", i32 458807, i32 1}
!108 = !{!"function_entry_count", i64 3312604}
!109 = !{!"function_entry_count", i64 43398227}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!113, !58, i64 24}
!113 = !{!"_ZTSN11xalanc_1_1014SelectionEventE", !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !114, i64 48, !115, i64 56, !63, i64 60, !58, i64 64}
!114 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !58, i64 0}
!115 = !{!"_ZTSN11xalanc_1_1014SelectionEvent14eSelectionTypeE", !59, i64 0}
!116 = !{!113, !58, i64 32}
!117 = !{!113, !58, i64 40}
!118 = !{!113, !115, i64 56}
!119 = !{!113, !63, i64 60}
!120 = !{!113, !58, i64 64}
!121 = !{!"function_entry_count", i64 30}
!122 = !{!"function_entry_count", i64 962142}
!123 = !{!75, !58, i64 8}
!124 = !{!"function_entry_count", i64 961942}
!125 = !{!126, !58, i64 8}
!126 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !76, i64 0, !58, i64 8, !127, i64 16, !129, i64 56, !130, i64 88, !127, i64 120, !131, i64 160, !79, i64 192, !132, i64 200, !134, i64 280, !63, i64 360, !136, i64 368, !58, i64 504, !141, i64 512, !142, i64 544, !147, i64 680, !98, i64 712, !148, i64 720, !151, i64 856, !153, i64 864, !148, i64 896, !151, i64 1032, !153, i64 1040, !153, i64 1072, !153, i64 1104, !153, i64 1136, !153, i64 1168, !153, i64 1200, !79, i64 1232, !154, i64 1240, !77, i64 1272}
!127 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !128, i64 0, !88, i64 32}
!128 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!129 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!130 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!131 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!132 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !58, i64 0, !79, i64 8, !133, i64 16, !133, i64 48}
!133 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!134 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !58, i64 0, !79, i64 8, !135, i64 16, !135, i64 48}
!135 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!136 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !137, i64 0, !138, i64 1, !58, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !139, i64 40, !139, i64 64, !140, i64 88, !79, i64 120, !79, i64 128}
!137 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!138 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!139 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!140 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!141 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!142 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !143, i64 0, !144, i64 1, !58, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !145, i64 40, !145, i64 64, !146, i64 88, !79, i64 120, !79, i64 128}
!143 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!144 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!145 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!146 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!147 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!148 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !137, i64 0, !138, i64 1, !58, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !149, i64 40, !149, i64 64, !150, i64 88, !79, i64 120, !79, i64 128}
!149 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!150 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!151 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !152, i64 0}
!152 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !58, i64 0}
!153 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!154 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!155 = !{!156, !58, i64 1896}
!156 = !{!"_ZTSN11xalanc_1_1014StylesheetRootE", !126, i64 0, !127, i64 1504, !157, i64 1544, !127, i64 1552, !127, i64 1592, !127, i64 1632, !127, i64 1672, !63, i64 1712, !127, i64 1720, !127, i64 1760, !158, i64 1800, !159, i64 1808, !63, i64 1840, !141, i64 1848, !58, i64 1880, !58, i64 1888, !58, i64 1896, !63, i64 1904, !63, i64 1905, !88, i64 1908, !63, i64 1912, !79, i64 1920, !160, i64 1928}
!157 = !{!"_ZTSN11xalanc_1_1014StylesheetRoot11eIndentTypeE", !59, i64 0}
!158 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !59, i64 0}
!159 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!160 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !161, i64 0, !162, i64 1, !58, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !163, i64 40, !163, i64 64, !164, i64 88, !79, i64 120, !79, i64 128}
!161 = !{!"_ZTSN11xalanc_1_1022XalanHashMemberPointerINS_10XalanQNameEEE"}
!162 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_10XalanQNameEEE"}
!163 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!164 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_10XalanQNameENS0_IPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISF_E4NodeEEENS9_ISK_EEEENS_32ConstructWithMemoryManagerTraitsISM_EEEE", !58, i64 0, !79, i64 8, !79, i64 16, !58, i64 24}
!165 = !{!"function_entry_count", i64 564827}
!166 = !{!156, !58, i64 1880}
!167 = !{!156, !58, i64 1888}
!168 = !{!"function_entry_count", i64 381195133}
!169 = !{!114, !58, i64 0}
!170 = !{!"function_entry_count", i64 246321862}
!171 = !{!"function_entry_count", i64 44780017}
!172 = !{!173, !175, i64 12}
!173 = !{!"_ZTSN11xalanc_1_107XObjectE", !174, i64 0, !175, i64 12, !58, i64 16}
!174 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !88, i64 8}
!175 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !59, i64 0}
!176 = !{!177, !178, i64 0}
!177 = !{!"_ZTSN11xalanc_1_1013GenerateEventE", !178, i64 0, !127, i64 8, !88, i64 48, !88, i64 52, !127, i64 56, !127, i64 96, !58, i64 136}
!178 = !{!"_ZTSN11xalanc_1_1013GenerateEvent9EventTypeE", !59, i64 0}
!179 = !{!"function_entry_count", i64 230527004}
!180 = !{!"function_entry_count", i64 6299974}
!181 = !{!127, !88, i64 32}
!182 = !{!"function_entry_count", i64 3070433834}
!183 = !{!"function_entry_count", i64 128698679}
!184 = !{!128, !79, i64 16}
!185 = !{!"branch_weights", i32 43398290, i32 85300391}
!186 = !{!128, !58, i64 24}
!187 = !{!"function_entry_count", i64 6521798493}
!188 = !{!"function_entry_count", i64 85300390}
!189 = !{!"branch_weights", i32 1, i32 12185770}
!190 = !{!"branch_weights", i32 12185770, i32 -193930396}
!191 = distinct !{!191, !111}
!192 = !{!"function_entry_count", i64 227375739}
!193 = !{!"function_entry_count", i64 568333389}
!194 = !{!128, !58, i64 0}
!195 = !{!"function_entry_count", i64 30137156660}
!196 = !{!"function_entry_count", i64 825654971}
!197 = !{!128, !79, i64 8}
!198 = !{!"function_entry_count", i64 1414337980}
